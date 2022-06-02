package migrations

import (
	"database/sql"
	"wizbackend/internal/configs"

	_ "github.com/lib/pq"
)

func Initialize(config configs.Config) Container {
	var conninfo string = "host=localhost port=5432 user=postgres password=password dbname=wiz_freight sslmode=disable"
	db, err := sql.Open("postgres", conninfo)
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
