package apiserver

import (
	"fmt"
	"wizbackend/containers/api"
	"wizbackend/internal/configs"
	hapi "wizbackend/internal/handlers/api"
)

func Init(config configs.Config) {
	container := api.Initialize(config)

	hapi.Initialize(
		config.Port,
		container.V1Routes,
	)

	fmt.Printf("Run Http Service on Port :%d", config.Port)
}
