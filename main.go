package main

import (
	"embed"
	"flag"
	"os"
	"wizbackend/cmd/api"
	"wizbackend/cmd/migrations"
	"wizbackend/internal/configs"
	"wizbackend/internal/configs/local"
	"wizbackend/internal/configs/preprod"
	"wizbackend/internal/configs/production"
	"wizbackend/internal/configs/sit"
	"wizbackend/internal/configs/staging"
)

//go:embed migrations/*.sql
var embedMigrations embed.FS

const (
	API        configs.AppName = "wiz-backend-http-api"
	MIGRATIONS configs.AppName = "wiz-backend-migrations"
)

func main() {

	program := flag.String("program", "", "The Program that needs to run")
	envTier := os.Getenv("TIER")

	flag.Parse()

	switch *program {
	case "migrations":
		config := getConfig(envTier, MIGRATIONS)
		migrations.Initialize(embedMigrations, config)
	case "http-api":
		config := getConfig(envTier, API)

		api.Initialize(config)
	default:
		panic("could not understand the program that needed to be run")
	}
}

func getConfig(
	envTier string,
	appName configs.AppName,
) configs.Config {
	var config configs.Config

	switch envTier {
	case string(configs.LOCAL):
		config = local.GetConfig(appName)
	case string(configs.STAGING):
		config = staging.GetConfig(appName)
	case string(configs.SIT):
		config = sit.GetConfig(appName)
	case string(configs.PREPROD):
		config = preprod.GetConfig(appName)
	case string(configs.PRODUCTION):
		config = production.GetConfig(appName)
	default:
		panic("invalid tier was not understood by the system")
	}

	return config
}
