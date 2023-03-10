//go:build wireinject
// +build wireinject

// The build tag makes sure the stub is not built in the final build.

package api

import (
	"wizbackend/internal/configs"
	"wizbackend/internal/core/ports"
	"wizbackend/internal/core/services/countriessrv"
	"wizbackend/internal/core/services/currenciessrv"
	v1 "wizbackend/internal/handlers/api/v1"
	"wizbackend/internal/handlers/api/v1/countries"
	"wizbackend/internal/handlers/api/v1/currencies"
	"wizbackend/internal/repositories/pgdb/countriesrepo"
	"wizbackend/internal/repositories/pgdb/currenciesrepo"

	"github.com/google/wire"
)

func InitializeApp(
	appName configs.AppName,
	pgDbConfig configs.PgDbConfig,
	logConfig configs.LogConfig,
) (*app, error) {
	wire.Build(
		NewLogger,
		NewPgDbInstance,
		NewGoquInstance,

		//Repositories
		countriesrepo.New,
		currenciesrepo.New,

		//Repo Bindings
		wire.Bind(new(ports.RdbmsCountriesRepository), new(*countriesrepo.Repository)),
		wire.Bind(new(ports.RdbmsCurrenciesRepository), new(*currenciesrepo.Repository)),

		//Services
		countriessrv.New,
		currenciessrv.New,

		//Service Bindings
		wire.Bind(new(ports.CountriesService), new(*countriessrv.Service)),
		wire.Bind(new(ports.CurrenciesService), new(*currenciessrv.Service)),

		//RouteHandlers
		countries.NewHandler,
		currencies.NewHandler,

		//RouteHandlerBindings
		wire.Bind(new(countries.RoutesHandler), new(*countries.Handler)),
		wire.Bind(new(currencies.RoutesHandler), new(*currencies.Handler)),

		//Group Routes
		countries.New,
		currencies.New,
		v1.New,

		//Group Route Bindings
		wire.Bind(new(countries.GroupRoutes), new(*countries.Routes)),
		wire.Bind(new(currencies.GroupRoutes), new(*currencies.Routes)),
		wire.Bind(new(v1.GroupRoutes), new(*v1.Routes)),

		NewHttpEngine,
		NewApp,
	)
	return &app{}, nil
}
