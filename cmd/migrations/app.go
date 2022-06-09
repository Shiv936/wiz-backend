package migrations

import (
	"database/sql"
	"embed"
	"fmt"
	"wizbackend/internal/configs"
	"wizbackend/pkg/logging"

	_ "github.com/jackc/pgx/v4/stdlib"
	"github.com/pressly/goose/v3"
)

func NewPgDbInstance(pgDbConfig configs.PgDbConfig) (*sql.DB, error) {
	var conninfo string = fmt.Sprintf(
		"host=%s port=%d user=%s password=%s dbname=%s sslmode=%s",
		pgDbConfig.Host,
		pgDbConfig.Port,
		pgDbConfig.Username,
		pgDbConfig.Password,
		pgDbConfig.Database,
		pgDbConfig.SSLMode,
	)
	db, err := sql.Open("pgx", conninfo)

	if err != nil {
		return db, err
	}

	db.SetMaxIdleConns(pgDbConfig.MaxIdle)
	db.SetMaxOpenConns(pgDbConfig.MaxConnections)

	return db, nil
}

func NewLogger(
	appName configs.AppName,
	logConfig configs.LogConfig,
) (logging.Logger, error) {
	switch logConfig.LogSink {
	case configs.CONSOLE:
		return logging.NewConsoleLogger(
			string(appName),
			logConfig.LogLevel,
		), nil
	case configs.STDOUT:
		return logging.NewStdOutLogger(
			string(appName),
			logConfig.LogLevel,
		), nil
	default:
		return nil, fmt.Errorf(
			"Invalid Log Sink: %v",
			logConfig.LogSink,
		)
	}
}

func Initialize(embedMigrations embed.FS, config configs.Config) {

	_, err := NewLogger(config.AppName, config.LogConfig)

	if err != nil {
		panic(err)
	}

	pgdbConn, err := NewPgDbInstance(config.PgDbConfig)

	if err != nil {
		panic(err)
	}

	// setup database
	goose.SetBaseFS(embedMigrations)

	if err := goose.SetDialect("postgres"); err != nil {
		panic(err)
	}

	if err := goose.Up(pgdbConn, "migrations"); err != nil {
		panic(err)
	}
}
