package api

import (
	"wizbackend/internal/handlers"
	"wizbackend/internal/handlers/api/v1/countries"
	"wizbackend/internal/handlers/api/v1/currencies"
	"wizbackend/pkg/logging"
)

type routeHandlersContainer struct {
	logger   logging.Logger
	services services
}

func newRouteHandlersContainer(
	logger logging.Logger,
	services services,
) *routeHandlersContainer {
	return &routeHandlersContainer{
		logger:   logger,
		services: services,
	}
}

func (c *routeHandlersContainer) getDependencies() routeHandlers {
	return routeHandlers{
		countries:  c.getCountriesRouteHandlers(),
		currencies: c.getCurrencyRouteHandlers(),
	}
}

func (c *routeHandlersContainer) getCountriesRouteHandlers() countriesRouteHandlers {
	return countriesRouteHandlers{
		activate: countries.NewActivate(
			c.logger,
			c.services.countriesService,
		),
		deactivate: countries.NewDeactivate(
			c.logger,
			c.services.countriesService,
		),
		create: countries.NewCreate(
			c.logger,
			c.services.countriesService,
		),
		update: countries.NewUpdate(
			c.logger,
			c.services.countriesService,
		),
		read: countries.NewRead(
			c.logger,
			c.services.countriesService,
		),
		list: countries.NewList(
			c.logger,
			c.services.countriesService,
		),
		delete: countries.NewDelete(
			c.logger,
			c.services.countriesService,
		),
	}
}

func (c *routeHandlersContainer) getCurrencyRouteHandlers() currenciesRouteHandlers {
	return currenciesRouteHandlers{
		activate: currencies.NewActivate(
			c.logger,
			c.services.currenciesService,
		),
		deactivate: currencies.NewDeactivate(
			c.logger,
			c.services.currenciesService,
		),
		create: currencies.NewCreate(
			c.logger,
			c.services.currenciesService,
		),
		update: currencies.NewUpdate(
			c.logger,
			c.services.currenciesService,
		),
		read: currencies.NewRead(
			c.logger,
			c.services.currenciesService,
		),
		list: currencies.NewList(
			c.logger,
			c.services.currenciesService,
		),
		delete: currencies.NewDelete(
			c.logger,
			c.services.currenciesService,
		),
	}

}

type routeHandlers struct {
	countries  countriesRouteHandlers
	currencies currenciesRouteHandlers
}

type countriesRouteHandlers struct {
	list       handlers.RouteHandler
	read       handlers.RouteHandler
	create     handlers.RouteHandler
	update     handlers.RouteHandler
	delete     handlers.RouteHandler
	activate   handlers.RouteHandler
	deactivate handlers.RouteHandler
}

type currenciesRouteHandlers struct {
	list       handlers.RouteHandler
	read       handlers.RouteHandler
	create     handlers.RouteHandler
	update     handlers.RouteHandler
	delete     handlers.RouteHandler
	activate   handlers.RouteHandler
	deactivate handlers.RouteHandler
}
