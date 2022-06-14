package currenciessrv

import (
	"fmt"
	"wizbackend/internal/core/domain/repositories/rdbms"
	"wizbackend/internal/core/domain/services"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"
)

type Service struct {
	logger               logging.Logger
	currenciesRepository ports.RdbmsCurrenciesRepository
}

func New(
	logger logging.Logger,
	currenciesRepository ports.RdbmsCurrenciesRepository,
) *Service {
	return &Service{
		logger:               logger,
		currenciesRepository: currenciesRepository,
	}
}

func (s *Service) Fetch(isoCode string) (services.Currency, bool, error) {
	return s.fetchOneCurrency(isoCode)
}

func (s *Service) FetchMany(
	pageNumber uint,
	itemsPerPage uint,
	searchTerm *string,
	sort ports.CurrenciesSort,
	filters ports.CurrenciesFilters,
) (services.Currencies, error) {
	if pageNumber == 0 {
		pageNumber = 1
	}

	offset := (itemsPerPage * (pageNumber - 1))

	search := ports.CurrenciesSearch{
		IsoCode: searchTerm,
		Name:    searchTerm,
	}

	currenciesChan := make(chan currencyListResult, 1)
	currenciesCountChan := make(chan currencyCountResult, 1)

	go s.fetchCurrenciesViaChannel(
		itemsPerPage,
		offset,
		search,
		sort,
		filters,
		currenciesChan,
	)

	go s.fetchCurrenciesCountViaChannel(
		search,
		filters,
		currenciesCountChan,
	)

	currenciesResult := <-currenciesChan

	if currenciesResult.err != nil {
		return services.Currencies{}, currenciesResult.err
	}

	currenciesCountResult := <-currenciesCountChan
	if currenciesCountResult.err != nil {
		return services.Currencies{}, currenciesResult.err
	}

	return services.Currencies{
		Total:      currenciesCountResult.count,
		Currencies: currenciesResult.currencies,
	}, nil

}

func (s *Service) Create(
	isoCode string,
	name string,
	symbol string,
	isActive bool,
) (services.Currency, error) {
	err := s.currenciesRepository.InsertOne(
		isoCode,
		name,
		symbol,
		isActive,
	)

	if err != nil {
		return services.Currency{}, err
	}

	currency, exists, err := s.fetchOneCurrency(isoCode)

	if err != nil {
		return services.Currency{}, err
	}

	if !exists {
		return services.Currency{}, fmt.Errorf(
			"could not find the currency just created with iso code: %s",
			isoCode,
		)
	}

	return currency, nil

}

func (s *Service) Modify(
	isoCode string,
	name *string,
	symbol *string,
	isActive *bool,
) (services.Currency, error) {
	_, err := s.currenciesRepository.UpdateOne(
		isoCode,
		name,
		symbol,
		isActive,
	)

	if err != nil {
		return services.Currency{}, err
	}

	currency, exists, err := s.fetchOneCurrency(isoCode)

	if err != nil {
		return services.Currency{}, err
	}

	if !exists {
		return services.Currency{}, fmt.Errorf(
			"could not find the currency just updated with iso code: %s",
			isoCode,
		)
	}

	return currency, nil
}

func (s *Service) Remove(
	isoCode string,
) error {
	err := s.currenciesRepository.DeleteOne(isoCode)

	return err
}

func (s *Service) mapRepoDomainToService(
	c rdbms.Currency,
) services.Currency {
	return services.Currency{
		IsoCode:    c.IsoCode,
		Name:       c.Name,
		Symbol:     c.Symbol,
		IsActive:   c.IsActive,
		CreatedAt:  c.CreatedAt,
		ModifiedAt: c.ModifiedAt,
	}
}

func (s *Service) fetchOneCurrency(isoCode string) (services.Currency, bool, error) {
	repoCurrency, exists, err := s.currenciesRepository.SelectOne(isoCode)

	if err != nil {
		return services.Currency{}, false, err
	}

	if !exists {
		return services.Currency{}, false, nil
	}

	return s.mapRepoDomainToService(repoCurrency), true, nil
}

type currencyListResult struct {
	currencies []services.Currency
	err        error
}

func (s *Service) fetchCurrenciesViaChannel(
	itemsPerPage uint,
	offset uint,
	search ports.CurrenciesSearch,
	sortBy ports.CurrenciesSort,
	filters ports.CurrenciesFilters,
	c chan currencyListResult,
) {
	defer close(c)
	repoCurrencies, err := s.currenciesRepository.SelectMany(
		itemsPerPage,
		offset,
		search,
		sortBy,
		filters,
	)

	if err != nil {
		c <- currencyListResult{err: err}
	}

	currencies := make([]services.Currency, 0)

	for _, c := range repoCurrencies {
		currencies = append(currencies, s.mapRepoDomainToService(c))
	}

	c <- currencyListResult{
		currencies: currencies,
	}
}

type currencyCountResult struct {
	count int64
	err   error
}

func (s *Service) fetchCurrenciesCountViaChannel(
	search ports.CurrenciesSearch,
	filters ports.CurrenciesFilters,
	c chan currencyCountResult,
) {
	defer close(c)
	count, err := s.currenciesRepository.Count(
		search,
		filters,
	)

	if err != nil {
		c <- currencyCountResult{err: err}
	}

	c <- currencyCountResult{
		count: count,
	}
}
