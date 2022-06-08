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
	sort ports.CountriesSort,
	filters ports.CountriesFilters,
) (services.Countries, error) {
	if pageNumber == 0 {
		pageNumber = 1
	}

	offset := (itemsPerPage * (pageNumber - 1))

	search := ports.CountriesSearch{
		IsoCode: searchTerm,
		Name:    searchTerm,
	}

	countriesChan := make(chan countryListResult, 1)
	countriesCountChan := make(chan countryCountResult, 1)

	go s.fetchCountriesViaChannel(
		itemsPerPage,
		offset,
		search,
		sort,
		filters,
		countriesChan,
	)

	go s.fetchCountriesCountViaChannel(
		search,
		filters,
		countriesCountChan,
	)

	countriesResult := <-countriesChan

	if countriesResult.err != nil {
		return services.Countries{}, countriesResult.err
	}

	countriesCountResult := <-countriesCountChan

	if countriesCountResult.err != nil {
		return services.Countries{}, countriesCountResult.err
	}

	return services.Countries{
		Total:     countriesCountResult.count,
		Countries: countriesResult.countries,
	}, nil
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
		IsActive:    c.IsActive,
		CreatedAt:   c.CreatedAt,
		ModifiedAt:  c.ModifiedAt,
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

type countryListResult struct {
	countries []services.Country
	err       error
}

func (s *service) fetchCountriesViaChannel(
	itemsPerPage uint,
	offset uint,
	search ports.CountriesSearch,
	sortBy ports.CountriesSort,
	filters ports.CountriesFilters,
	c chan countryListResult,
) {
	defer close(c)
	repoCountries, err := s.countriesRepository.SelectMany(
		itemsPerPage,
		offset,
		search,
		sortBy,
		filters,
	)

	if err != nil {
		c <- countryListResult{err: err}
	}

	countries := make([]services.Country, 0)

	for _, c := range repoCountries {
		countries = append(countries, s.mapRepoDomainToService(c))
	}

	c <- countryListResult{
		countries: countries,
	}
}

type countryCountResult struct {
	count int64
	err   error
}

func (s *service) fetchCountriesCountViaChannel(
	search ports.CountriesSearch,
	filters ports.CountriesFilters,
	c chan countryCountResult,
) {
	defer close(c)
	count, err := s.countriesRepository.Count(
		search,
		filters,
	)

	if err != nil {
		c <- countryCountResult{err: err}
	}

	c <- countryCountResult{
		count: count,
	}
}
