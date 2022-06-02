package api

import (
	"wizbackend/internal/configs"
	"wizbackend/internal/handlers"
	v1 "wizbackend/internal/handlers/api/v1"
	"wizbackend/internal/handlers/api/v1/countries"
	"wizbackend/internal/handlers/api/v1/currencies"
)

func Initialize(config configs.Config) Container {
	//Country Route Handlers
	activateCountries := countries.NewActivate()
	deactivateCountries := countries.NewDeactivate()
	createCountries := countries.NewCreate()
	updateCountries := countries.NewUpdate()
	deleteCountries := countries.NewDelete()
	listCountries := countries.NewList()
	readCountries := countries.NewRead()

	// Currency Route Handlers
	activateCurrencies := currencies.NewActivate()
	deactivateCurrencies := currencies.NewDeactivate()
	createCurrencies := currencies.NewCreate()
	updateCurrencies := currencies.NewUpdate()
	deleteCurrencies := currencies.NewDelete()
	listCurrencies := currencies.NewList()
	readCurrencies := currencies.NewRead()

	//Group Route Files

	countryRoutes := countries.New(
		activateCountries,
		deactivateCountries,
		createCountries,
		updateCountries,
		deleteCountries,
		listCountries,
		readCountries,
	)

	currencyRoutes := currencies.New(
		activateCurrencies,
		deactivateCurrencies,
		createCurrencies,
		updateCurrencies,
		deleteCurrencies,
		listCurrencies,
		readCurrencies,
	)

	v1Routes := v1.New(
		countryRoutes,
		currencyRoutes,
	)

	return Container{
		V1Routes: v1Routes,
	}
}

type Container struct {
	V1Routes handlers.GroupRoutes
}
