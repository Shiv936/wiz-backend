package api

import (
	"wizbackend/internal/configs"
	"wizbackend/internal/handlers"
)

func Initialize(config configs.Config) Container {
	commons := newCommonsContainer(
		config.AppName,
		config.LogConfig,
		config.PgDbConfig,
	).getDependencies()

	repos := newReposContainer(
		commons.Logger,
		commons.PgDB,
		commons.GoquDB,
	).getDependencies()

	services := newSrvContainer(
		commons.Logger,
		repos,
	).getDependencies()

	routeHandlers := newRouteHandlersContainer(
		commons.Logger,
		services,
	).getDependencies()

	routes := newRoutesContainer(routeHandlers).getDependencies()

	return Container{
		V1Routes: routes.V1Routes,
	}
}

type Container struct {
	V1Routes handlers.GroupRoutes
}
