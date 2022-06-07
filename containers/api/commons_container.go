package api

import (
	"fmt"
	"wizbackend/internal/configs"
	"wizbackend/pkg/logging"

	"database/sql"

	_ "github.com/jackc/pgx/v4/stdlib"

	"github.com/doug-martin/goqu/v9"

	_ "github.com/doug-martin/goqu/v9/dialect/postgres"
)

type commonsContainer struct {
	appName    string
	logConfig  configs.LogConfig
	pgDbConfig configs.PgDbConfig
}

func newCommonsContainer(
	appName string,
	logConfig configs.LogConfig,
	pgDbConfig configs.PgDbConfig,
) *commonsContainer {
	return &commonsContainer{
		appName:    appName,
		logConfig:  logConfig,
		pgDbConfig: pgDbConfig,
	}
}

func (c *commonsContainer) getDependencies() commons {

	logger, err := c.getLogger()

	if err != nil {
		fmt.Println(
			"Failed to Initialize the Logger in the application",
		)
		panic(err.Error())
	}

	pgDB, err := c.getPgDbInstance()

	if err != nil {
		logger.Critical(
			"DB_INITIALISATION_FAILED",
			"failed to initialize postgres connection",
			err,
			map[string]any{},
			map[string]any{
				"hostname":       c.pgDbConfig.Host,
				"port":           c.pgDbConfig.Port,
				"username":       c.pgDbConfig.Username,
				"maxIdle":        c.pgDbConfig.MaxIdle,
				"sslMode":        c.pgDbConfig.SSLMode,
				"maxConnections": c.pgDbConfig.MaxConnections,
			},
		)
		panic(err.Error())
	}

	goquDB := c.getGoquInstance(pgDB)

	return commons{
		Logger: logger,
		PgDB:   pgDB,
		GoquDB: goquDB,
	}

}

func (c *commonsContainer) getPgDbInstance() (*sql.DB, error) {
	var conninfo string = fmt.Sprintf(
		"host=%s port=%d user=%s password=%s dbname=%s sslmode=%s",
		c.pgDbConfig.Host,
		c.pgDbConfig.Port,
		c.pgDbConfig.Username,
		c.pgDbConfig.Password,
		c.pgDbConfig.Database,
		c.pgDbConfig.SSLMode,
	)
	db, err := sql.Open("pgx", conninfo)

	if err != nil {
		return db, err
	}

	db.SetMaxIdleConns(c.pgDbConfig.MaxIdle)
	db.SetMaxOpenConns(c.pgDbConfig.MaxConnections)

	return db, nil
}

func (c *commonsContainer) getGoquInstance(pgDB *sql.DB) *goqu.Database {
	dialect := goqu.Dialect("postgres")

	return dialect.DB(pgDB)

}

func (c *commonsContainer) getLogger() (logging.Logger, error) {
	switch c.logConfig.LogSink {
	case configs.CONSOLE:
		return logging.NewConsoleLogger(
			c.appName,
			c.logConfig.LogLevel,
		), nil
	case configs.STDOUT:
		return logging.NewConsoleLogger(
			c.appName,
			c.logConfig.LogLevel,
		), nil
	default:
		return nil, fmt.Errorf(
			"Invalid Log Sink: %v",
			c.logConfig.LogSink,
		)
	}
}

type commons struct {
	Logger logging.Logger
	PgDB   *sql.DB
	GoquDB *goqu.Database
}
