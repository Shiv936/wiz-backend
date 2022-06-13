package portsrepo

import (
	"strings"
	"wizbackend/internal/core/domain/repositories/rdbms"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"

	"github.com/doug-martin/goqu/v9"
	"github.com/doug-martin/goqu/v9/exp"
)

type Repository struct {
	logger logging.Logger
	goquDB *goqu.Database
}

func New(
	logger logging.Logger,
	goquDB *goqu.Database,
) *Repository {
	return &Repository{
		logger: logger,
		goquDB: goquDB,
	}
}

func (r *Repository) SelectOne(
	isoCode string,
) (rdbms.Port, bool, error) {
	var port rdbms.Port

	exists, err := r.goquDB.From(
		TABLE,
	).Prepared(true).Select(
		PORTS_CODE,
		NAME,
		TYPE,
		COUNTRY_ISO_CODE,
		LATITUDE,
		LONGITUDE,
		IS_ACTIVE,
		CREATED_AT,
		MODIFIED_AT,
	).Where(
		goqu.C(PORTS_CODE).Eq(isoCode),
	).ScanStruct(&port)

	if err != nil {
		return rdbms.Port{}, false, err
	}

	return port, exists, nil
}

func (r *Repository) SelectMany(
	limit uint,
	offset uint,
	search ports.PortsSearch,
	sort ports.PortsSort,
	filters ports.PortsFilters,
) ([]rdbms.Port, error) {
	var ports []rdbms.Port

	w := []exp.Expression{}

	if filters.IsActive != nil {
		w = append(w, goqu.C(IS_ACTIVE).Eq(*filters.IsActive))
	}

	searchClauses := r.buildSearchWhereClauses(search)

	if len(searchClauses) > 1 {
		w = append(w, goqu.And(searchClauses...))
	} else if len(searchClauses) == 1 {
		w = append(w, searchClauses[0])
	}

	query := r.goquDB.From(
		TABLE,
	).Prepared(true).Select(
		PORTS_CODE,
		NAME,
		TYPE,
		COUNTRY_ISO_CODE,
		LATITUDE,
		LONGITUDE,
		IS_ACTIVE,
		CREATED_AT,
		MODIFIED_AT,
	).Where(w...).Order(
		r.getOrderedExpression(sort),
	).Limit(
		limit,
	).Offset(
		offset,
	)

	err := query.ScanStructs(&ports)

	if err != nil {
		return []rdbms.Port{}, err
	}

	return ports, nil
}

func (r *Repository) InsertOne(
	isoCode string,
	name string,
	ptype string,
	countryIsoCode string,
	latitude float64,
	longitude float64,
	isActive bool,
) error {

	_, err := r.goquDB.Insert(TABLE).Prepared(true).Rows(
		goqu.Record{
			PORTS_CODE:         isoCode,
			NAME:             name,
			TYPE:             ptype,
			COUNTRY_ISO_CODE: countryIsoCode,
			LATITUDE:         latitude,
			LONGITUDE:        longitude,
			IS_ACTIVE:        isActive,
		},
	).Executor().Exec()

	return err
}

func (r *Repository) UpdateOne(
	isoCode string,
	name *string,
	ptype *string,
	countryIsoCode *string,
	latitude *float64,
	longitude *float64,
	isActive *bool,
) (int64, error) {
	updates := goqu.Record{}

	if name != nil {
		updates[NAME] = *name
	}

	if ptype != nil {
		updates[TYPE] = *ptype
	}

	if latitude != nil {
		updates[LATITUDE] = *latitude
	}

	if longitude != nil {
		updates[LONGITUDE] = *longitude
	}

	if isActive != nil {
		updates[IS_ACTIVE] = *isActive
	}

	if len(updates) == 0 {
		return 0, nil
	}

	result, err := r.goquDB.Update(TABLE).Prepared(true).Set(updates).Where(
		goqu.C(PORTS_CODE).Eq(isoCode),
	).Executor().Exec()

	if err != nil {
		r.logger.Error(
			"PORT_UPDATE_FAILED",
			"there was an error updating the port",
			err,
			map[string]any{
				"isoCode": isoCode,
			},
			map[string]any{
				"isoCode":   isoCode,
				"name":      *name,
				"ptype":     *ptype,
				"latitude":  *latitude,
				"longitude": *longitude,
				"isActive":  *isActive,
			},
		)
		return 0, err
	}

	rowsAffected, err := result.RowsAffected()

	if err != nil {
		r.logger.Warn(
			"ROWS_AFFECTED_ERROR",
			"there was an issue when trying to fetch number of affected rows post update",
			&err,
			map[string]any{
				"isoCode": isoCode,
			},
			map[string]any{
				"isoCode":   isoCode,
				"name":      *name,
				"ptype":     *ptype,
				"latitude":  *latitude,
				"longitude": *longitude,
				"isActive":  *isActive,
			},
		)
		return 0, nil
	}

	return rowsAffected, err
}

func (r *Repository) DeleteOne(
	isoCode string,
) error {
	_, err := r.goquDB.Delete(TABLE).Prepared(true).Where(
		goqu.C(PORTS_CODE).Eq(isoCode),
	).Executor().Exec()

	return err
}

func (r *Repository) Count(
	search ports.PortsSearch,
	filters ports.PortsFilters,
) (int64, error) {
	w := []exp.Expression{}

	if filters.IsActive != nil {
		w = append(w, goqu.C(IS_ACTIVE).Eq(*filters.IsActive))
	}

	searchClauses := r.buildSearchWhereClauses(search)

	if len(searchClauses) > 1 {
		w = append(w, goqu.And(searchClauses...))
	} else if len(searchClauses) == 1 {
		w = append(w, searchClauses[0])
	}

	count, err := r.goquDB.From(TABLE).Prepared(true).Where(w...).Count()

	if err != nil {
		return 0, err
	}

	return count, nil
}

func (r *Repository) getOrderedExpression(
	sort ports.PortsSort,
) exp.OrderedExpression {
	var columnName string

	switch sort.Field {
	case ports.PORT_CREATED_AT:
		columnName = CREATED_AT
	case ports.PORT_MODIFIED_AT:
		columnName = MODIFIED_AT
	case ports.PORT_NAME:
		columnName = NAME
	case ports.PORT_TYPE:
		columnName = TYPE
	case ports.PORT_COUNTRY_ISO_CODE:
		columnName = COUNTRY_ISO_CODE
	default:
		columnName = PORTS_CODE
	}

	if sort.Order == ports.SORT_ASCENDING {
		return goqu.I(columnName).Asc()
	} else {
		return goqu.I(columnName).Desc()
	}

}

func (r *Repository) buildSearchWhereClauses(
	search ports.PortsSearch,
) []exp.Expression {
	searchExpressions := []exp.Expression{}

	if search.IsoCode != nil && len(strings.TrimSpace(*search.IsoCode)) > 0 {
		searchExpressions = append(
			searchExpressions,
			goqu.C(PORTS_CODE).Eq(
				strings.ToUpper(strings.TrimSpace(*search.IsoCode)),
			),
		)
	}

	if search.Name != nil && len(strings.TrimSpace(*search.Name)) > 0 {
		searchExpressions = append(
			searchExpressions,
			goqu.C(NAME).Eq(
				goqu.C(NAME).ILike("%"+strings.ToLower(strings.TrimSpace(*search.Name))+"%"),
			),
		)
	}

	return searchExpressions
}
