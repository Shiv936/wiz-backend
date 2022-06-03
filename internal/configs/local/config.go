package local

import (
	"fmt"
	"os"
	"strconv"
	"wizbackend/internal/configs"
	"wizbackend/pkg/logging"
)

func GetConfig(appName string) configs.Config {

	pg_port, err := strconv.Atoi(os.Getenv("PG_PORT"))
	if err != nil {
		// handle error
		fmt.Println(err)
		os.Exit(2)
	}

	return configs.Config{
		AppName:   appName,
		Port:      8080,
		EnableAPM: false,
		LogConfig: configs.LogConfig{
			LogSink:  configs.CONSOLE,
			LogLevel: logging.INFO,
		},
		PgDbConfig: configs.PgDbConfig{
			Host:           os.Getenv("PG_HOST"),
			Port:           pg_port,
			Username:       os.Getenv("PG_USERNAME"),
			Password:       os.Getenv("PG_PASSWORD"),
			Database:       os.Getenv("PG_DATABASE"),
			DatabasePrefix: os.Getenv("PG_DATABASE_PREFIX"),
			MaxConnections: 5,
			MaxIdle:        1,
			SSLMode:        configs.SSL_MODE_DISABLED,
		},
	}
}
