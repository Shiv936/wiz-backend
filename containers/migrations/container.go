package migrations

import (
	"database/sql"
	"fmt"
	"wizbackend/internal/configs"

	_ "github.com/jackc/pgx/v4/stdlib"
)

func Initialize(config configs.Config) Container {
	var conninfo string = fmt.Sprintf(
		"host=%s port=%d user=%s password=%s dbname=%s sslmode=%s",
		config.PgDbConfig.Host,
		config.PgDbConfig.Port,
		config.PgDbConfig.Username,
		config.PgDbConfig.Password,
		config.PgDbConfig.Database,
		config.PgDbConfig.SSLMode,
	)
	db, err := sql.Open("pgx", conninfo)
	if err != nil {
		panic(err)
	}

	return Container{
		DB: db,
	}
}

type Container struct {
	DB *sql.DB
}
