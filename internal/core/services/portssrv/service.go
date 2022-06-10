package portssrv

import (
	"fmt"
	"wizbackend/internal/core/domain/repositories/rdbms"
	"wizbackend/internal/core/domain/services"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"
)

type Service struct {
	logger    logging.Logger
	portsRepo ports.RdbmsPortsRepository
}

func New(
	portsRepo ports.RdbmsPortsRepository,
	logger logging.Logger,
) *Service {
	return &Service{
		portsRepo: portsRepo,
		logger:    logger,
	}
}

func (s *Service) Fetch(isoCode string) (services.Port, bool, error) {
	return s.fetchOnePort(isoCode)
}

func (s *Service) FetchMany(
	pageNumber uint,
	itemsPerPage uint,
	searchTerm *string,
	sort ports.PortsSort,
	filters ports.PortsFilters,
) (services.Ports, error) {
	if pageNumber == 0 {
		pageNumber = 1
	}
	offset := (pageNumber - 1) * itemsPerPage

	search := ports.PortsSearch{
		IsoCode: searchTerm,
		Name:    searchTerm,
	}

	portsChan := make(chan portListResult, 1)
	portsCountChan := make(chan portCountResult, 1)

	go s.fetchPortsViaChannel(
		itemsPerPage,
		offset,
		search,
		sort,
		filters,
		portsChan,
	)

	go s.fetchPortsCountViaChannel(
		search,
		filters,
		portsCountChan,
	)

	portsResult := <-portsChan

	if portsResult.err != nil {
		return services.Ports{}, portsResult.err
	}

	portsCountResult := <-portsCountChan

	if portsCountResult.err != nil {
		return services.Ports{}, portsCountResult.err
	}

	return services.Ports{
		Total: portsCountResult.count,
		Ports: portsResult.ports,
	}, nil
}
func (s *Service) Create(
	isoCode string,
	name string,
	ptype string,
	countryIsoCode string,
	latitude float64,
	longitude float64,
	isActive bool,
) (services.Port, error) {
	err := s.portsRepo.InsertOne(
		isoCode,
		name,
		ptype,
		countryIsoCode,
		latitude,
		longitude,
		isActive,
	)

	if err != nil {
		return services.Port{}, err
	}

	port, exists, err := s.fetchOnePort(isoCode)

	if err != nil {
		return services.Port{}, err
	}

	if !exists {
		return services.Port{}, fmt.Errorf("port with isoCode %s not found", isoCode)
	}

	return port, nil
}

func (s *Service) Modify(
	isoCode string,
	name *string,
	ptype *string,
	countryIsoCode *string,
	latitude *float64,
	longitude *float64,
	isActive *bool,
) (services.Port, error) {
	_, err := s.portsRepo.UpdateOne(
		isoCode,
		name,
		ptype,
		countryIsoCode,
		latitude,
		longitude,
		isActive,
	)

	if err != nil {
		return services.Port{}, err
	}

	port, exists, err := s.fetchOnePort(isoCode)

	if err != nil {
		return services.Port{}, err
	}

	if !exists {
		return services.Port{}, fmt.Errorf("port with isoCode %s not found", isoCode)
	}

	return port, nil
}

func (s *Service) Remove(
	isoCode string,
) error {
	return s.portsRepo.DeleteOne(isoCode)
}

func (s *Service) mapRepoDomainToService(
	c rdbms.Port,
) services.Port {
	return services.Port{
		IsoCode:        c.IsoCode,
		Name:           c.Name,
		Type:           c.Type,
		CountryIsoCode: c.CountryIsoCode,
		Latitude:       c.Latitude,
		Longitude:      c.Longitude,
		IsActive:       c.IsActive,
		CreatedAt:      c.CreatedAt,
		ModifiedAt:     c.ModifiedAt,
	}
}

func (s *Service) fetchOnePort(
	isoCode string,
) (services.Port, bool, error) {
	repoPort, exists, err := s.portsRepo.SelectOne(isoCode)

	if err != nil {
		return services.Port{}, false, err
	}

	if !exists {
		return services.Port{}, false, nil
	}

	return s.mapRepoDomainToService(repoPort), true, nil
}

type portListResult struct {
	ports []services.Port
	err   error
}

func (s *Service) fetchPortsViaChannel(
	itemsPerPage uint,
	offset uint,
	search ports.PortsSearch,
	sort ports.PortsSort,
	filters ports.PortsFilters,
	c chan portListResult,
) {
	defer close(c)
	repoPorts, err := s.portsRepo.SelectMany(
		itemsPerPage,
		offset,
		search,
		sort,
		filters,
	)
	if err != nil {
		c <- portListResult{err: err}
	}
	ports := make([]services.Port, 0)
	for _, c := range repoPorts {
		ports = append(ports, s.mapRepoDomainToService(c))
	}
	c <- portListResult{
		ports: ports,
	}
}

type portCountResult struct {
	count int64
	err   error
}

func (s *Service) fetchPortsCountViaChannel(
	search ports.PortsSearch,
	filters ports.PortsFilters,
	c chan portCountResult,
) {
	defer close(c)
	count, err := s.portsRepo.Count(search, filters)
	if err != nil {
		c <- portCountResult{err: err}
	}
	c <- portCountResult{
		count: count,
	}
}
