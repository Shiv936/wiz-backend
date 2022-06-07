package api

import (
	"database/sql"
	"wizbackend/internal/core/ports"
	"wizbackend/internal/repositories/pgdb/countriesrepo"
	"wizbackend/internal/repositories/pgdb/currenciesrepo"
	"wizbackend/pkg/logging"

	"github.com/doug-martin/goqu/v9"
)

type reposContainer struct {
	Logger logging.Logger
	PgDB   *sql.DB
	GoquDB *goqu.Database
}

func newReposContainer(
	logger logging.Logger,
	pgDB *sql.DB,
	goquDB *goqu.Database,
) *reposContainer {
	return &reposContainer{
		Logger: logger,
		PgDB:   pgDB,
		GoquDB: goquDB,
	}
}

func (c *reposContainer) getDependencies() repos {
	return repos{
		pgdb: c.getPgDBRepos(),
	}
}

func (c *reposContainer) getPgDBRepos() pgdb {
	return pgdb{
		countriesRepository:  countriesrepo.New(c.Logger, c.GoquDB),
		currenciesRepository: currenciesrepo.New(c.Logger, c.GoquDB),
	}
}

type repos struct {
	pgdb pgdb
}

type pgdb struct {
	countriesRepository  ports.RdbmsCountriesRepository
	currenciesRepository ports.RdbmsCurrenciesRepository
}
