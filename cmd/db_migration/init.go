package dbmigration

import (
	"embed"
	"wizbackend/containers/migrations"
	"wizbackend/internal/configs"

	"github.com/pressly/goose/v3"
)

func Init(embedMigrations embed.FS, config configs.Config) {
	container := migrations.Initialize(config)

	// setup database
	goose.SetBaseFS(embedMigrations)

	if err := goose.SetDialect("postgres"); err != nil {
		panic(err)
	}

	if err := goose.Up(container.DB, "migrations"); err != nil {
		panic(err)
	}

}
