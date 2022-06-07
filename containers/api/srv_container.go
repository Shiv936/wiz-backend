package api

import (
	"wizbackend/internal/core/ports"
	"wizbackend/internal/core/services/countriessrv"
	"wizbackend/internal/core/services/currenciessrv"
	"wizbackend/pkg/logging"
)

type srvContainer struct {
	logger logging.Logger
	repos  repos
}

func newSrvContainer(logger logging.Logger, repos repos) *srvContainer {
	return &srvContainer{
		logger: logger,
		repos:  repos,
	}
}

func (c *srvContainer) getDependencies() services {
	return services{
		countriesService: countriessrv.New(
			c.logger,
			c.repos.pgdb.countriesRepository,
		),
		currenciesService: currenciessrv.New(
			c.logger,
			c.repos.pgdb.currenciesRepository,
		),
	}
}

type services struct {
	countriesService  ports.CountriesService
	currenciesService ports.CurrenciesService
}
