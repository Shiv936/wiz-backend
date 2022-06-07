package api

import (
	"wizbackend/internal/handlers"
	v1 "wizbackend/internal/handlers/api/v1"
	"wizbackend/internal/handlers/api/v1/countries"
	"wizbackend/internal/handlers/api/v1/currencies"
)

type routesContainer struct {
	routeHandlers routeHandlers
}

func newRoutesContainer(
	routeHandlers routeHandlers,
) *routesContainer {
	return &routesContainer{
		routeHandlers: routeHandlers,
	}
}

func (c *routesContainer) getDependencies() *routes {
	countryRoutes := countries.New(
		c.routeHandlers.countries.activate,
		c.routeHandlers.countries.deactivate,
		c.routeHandlers.countries.create,
		c.routeHandlers.countries.update,
		c.routeHandlers.countries.delete,
		c.routeHandlers.countries.list,
		c.routeHandlers.countries.read,
	)

	currencyRoutes := currencies.New(
		c.routeHandlers.currencies.activate,
		c.routeHandlers.currencies.deactivate,
		c.routeHandlers.currencies.create,
		c.routeHandlers.currencies.update,
		c.routeHandlers.currencies.delete,
		c.routeHandlers.currencies.list,
		c.routeHandlers.currencies.read,
	)

	return &routes{
		V1Routes: v1.New(
			countryRoutes,
			currencyRoutes,
		),
	}
}

type routes struct {
	V1Routes handlers.GroupRoutes
}
