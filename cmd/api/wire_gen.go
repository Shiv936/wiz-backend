// Code generated by Wire. DO NOT EDIT.

//go:generate go run github.com/google/wire/cmd/wire
//go:build !wireinject
// +build !wireinject

package api

import (
	"wizbackend/internal/configs"
	"wizbackend/internal/core/services/countriessrv"
	"wizbackend/internal/core/services/currenciessrv"
	"wizbackend/internal/handlers/api/v1"
	"wizbackend/internal/handlers/api/v1/countries"
	"wizbackend/internal/handlers/api/v1/currencies"
	"wizbackend/internal/repositories/pgdb/countriesrepo"
	"wizbackend/internal/repositories/pgdb/currenciesrepo"
)

import (
	_ "github.com/doug-martin/goqu/v9/dialect/postgres"
	_ "github.com/jackc/pgx/v4/stdlib"
)

// Injectors from wire.go:

func InitializeApp(appName configs.AppName, pgDbConfig configs.PgDbConfig, logConfig configs.LogConfig) (*app, error) {
	logger, err := NewLogger(appName, logConfig)
	if err != nil {
		return nil, err
	}
	db, err := NewPgDbInstance(pgDbConfig)
	if err != nil {
		return nil, err
	}
	database := NewGoquInstance(db)
	repository := countriesrepo.New(logger, database)
	service := countriessrv.New(logger, repository)
	handler := countries.NewHandler(logger, service)
	routes := countries.New(handler)
	currenciesrepoRepository := currenciesrepo.New(logger, database)
	currenciessrvService := currenciessrv.New(logger, currenciesrepoRepository)
	currenciesHandler := currencies.NewHandler(logger, currenciessrvService)
	currenciesRoutes := currencies.New(currenciesHandler)
	v1Routes := v1.New(routes, currenciesRoutes)
	engine := NewHttpEngine(v1Routes)
	apiApp := NewApp(engine)
	return apiApp, nil
}
