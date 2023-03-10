package local

import (
	"fmt"
	"os"
	"strconv"
	"wizbackend/internal/configs"
	"wizbackend/pkg/logging"
)

func GetConfig(appName configs.AppName) configs.Config {

	pgPort, err := strconv.Atoi(os.Getenv("PG_PORT"))
	if err != nil {
		// handle error
		fmt.Println(err)
		os.Exit(2)
	}

	var apiPort int = 8080
	if len(os.Getenv("PORT")) > 0 {
		p, err := strconv.Atoi(os.Getenv("PORT"))

		if err != nil {
			// handle error
			fmt.Println(err)
			os.Exit(2)
		} else {
			apiPort = p
		}
	}

	return configs.Config{
		AppName:   appName,
		Port:      apiPort,
		EnableAPM: false,
		LogConfig: configs.LogConfig{
			LogSink:  configs.CONSOLE,
			LogLevel: logging.INFO,
		},
		PgDbConfig: configs.PgDbConfig{
			Host:           os.Getenv("PG_HOST"),
			Port:           pgPort,
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
