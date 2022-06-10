package ports

import (
	"wizbackend/internal/core/domain/repositories/rdbms"
	"wizbackend/internal/core/domain/services"
)

type RdbmsPortsRepository interface {
	SelectOne(isoCode string) (rdbms.Port, bool, error)
	SelectMany(
		limit uint,
		offset uint,
		search PortsSearch,
		sort PortsSort,
		filters PortsFilters,

	) ([]rdbms.Port, error)
	InsertOne(
		isoCode string,
		name string,
		ptype string,
		countryIsoCode string,
		latitude float64,
		longitude float64,
		isActive bool,
	) error
	UpdateOne(
		isoCode string,
		name *string,
		ptype *string,
		countryIsoCode *string,
		latitude *float64,
		longitude *float64,
		isActive *bool,
	) (int64, error)
	DeleteOne(
		isoCode string,
	) error
	Count(
		search PortsSearch,
		filters PortsFilters,
	) (int64, error)
}

type PortsService interface {
	Fetch(isoCode string) (services.Port, bool, error)
	FetchMany(
		pageNumber uint,
		itemsPerPage uint,
		searchTerm *string,
		sort PortsSort,
		filters PortsFilters,
	) (services.Ports, error)
	Create(
		isoCode string,
		name string,
		ptype string,
		countryIsoCode string,
		latitude float64,
		longitude float64,
		isActive bool,
	) (services.Port, error)
	Modify(
		isoCode string,
		name *string,
		ptype *string,
		countryIsoCode *string,
		latitude *float64,
		longitude *float64,
		isActive *bool,
	) (services.Port, error)
	Remove(
		isoCode string,
	) error
}

type PortsSortField int

const (
	PORT_CREATED_AT       PortsSortField = iota
	PORT_MODIFIED_AT      PortsSortField = iota
	PORT_NAME             PortsSortField = iota
	PORT_ISO_CODE         PortsSortField = iota
	PORT_TYPE             PortsSortField = iota
	PORT_COUNTRY_ISO_CODE PortsSortField = iota
)

type PortsSort struct {
	Field PortsSortField
	Order SortOrder
}

type PortsSearch struct {
	IsoCode *string
	Name    *string
}

type PortsFilters struct {
	IsActive *bool
	Type     *string
}
