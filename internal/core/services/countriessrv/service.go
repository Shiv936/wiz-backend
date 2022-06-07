package countriessrv

import (
	"fmt"
	"wizbackend/internal/core/domain/repositories/rdbms"
	"wizbackend/internal/core/domain/services"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"
)

type service struct {
	logger              logging.Logger
	countriesRepository ports.RdbmsCountriesRepository
}

func New(
	logger logging.Logger,
	countriesRepository ports.RdbmsCountriesRepository,
) *service {
	return &service{
		logger:              logger,
		countriesRepository: countriesRepository,
	}
}

func (s *service) Fetch(isoCode string) (services.Country, bool, error) {
	return s.fetchOneCountry(isoCode)
}

func (s *service) FetchMany(
	pageNumber uint,
	itemsPerPage uint,
	searchTerm *string,
	sort *ports.CountriesSort,
	filters *ports.CountriesFilters,
) ([]services.Country, error) {
	if pageNumber == 0 {
		pageNumber = 1
	}

	offset := (itemsPerPage * (pageNumber - 1))

	sortBy := ports.CountriesSort{
		Field: ports.COUNTRY_NAME,
		Order: ports.SORT_ASCENDING,
	}

	if sort != nil {
		sortBy = *sort
	}

	search := ports.CountriesSearch{
		IsoCode: searchTerm,
		Name:    searchTerm,
	}

	dbFilters := ports.CountriesFilters{}

	if filters != nil {
		dbFilters = *filters
	}

	repoCountries, err := s.countriesRepository.SelectMany(
		itemsPerPage,
		offset,
		search,
		sortBy,
		dbFilters,
	)

	if err != nil {
		return []services.Country{}, err
	}

	countries := make([]services.Country, 0)

	for _, c := range repoCountries {
		countries = append(countries, s.mapRepoDomainToService(c))
	}

	return countries, nil
}
func (s *service) Create(
	isoCode string,
	name string,
	iso3 *string,
	callingCode uint,
	symbol string,
	isActive bool,
) (services.Country, error) {
	err := s.countriesRepository.InsertOne(
		isoCode,
		name,
		iso3,
		callingCode,
		isActive,
	)

	if err != nil {
		return services.Country{}, err
	}

	country, exists, err := s.fetchOneCountry(isoCode)

	if err != nil {
		return services.Country{}, err
	}

	if !exists {
		return services.Country{}, fmt.Errorf(
			"could not find the country just created with iso code: %s",
			isoCode,
		)
	}

	return country, nil
}

func (s *service) Modify(
	isoCode string,
	name *string,
	iso3 *string,
	callingCode *uint,
	isActive *bool,
) (services.Country, error) {
	_, err := s.countriesRepository.UpdateOne(
		isoCode,
		name,
		iso3,
		callingCode,
		isActive,
	)

	if err != nil {
		return services.Country{}, err
	}

	country, exists, err := s.fetchOneCountry(isoCode)

	if err != nil {
		return services.Country{}, err
	}

	if !exists {
		return services.Country{}, fmt.Errorf(
			"could not find the country just updated with iso code: %s",
			isoCode,
		)
	}

	return country, nil

}

func (s *service) Remove(
	isoCode string,
) error {
	return s.countriesRepository.DeleteOne(isoCode)
}

func (s *service) mapRepoDomainToService(
	c rdbms.Country,
) services.Country {
	var iso3 *string = nil
	if c.Iso3.Valid {
		iso3 = &c.Iso3.String
	}

	return services.Country{
		IsoCode:     c.IsoCode,
		Name:        c.Name,
		Iso3:        iso3,
		CallingCode: c.CallingCode,
	}
}

func (s *service) fetchOneCountry(
	isoCode string,
) (services.Country, bool, error) {
	repoCountry, exists, err := s.countriesRepository.SelectOne(isoCode)

	if err != nil {
		return services.Country{}, false, err
	}

	if !exists {
		return services.Country{}, false, nil
	}

	return s.mapRepoDomainToService(repoCountry), true, nil
}
