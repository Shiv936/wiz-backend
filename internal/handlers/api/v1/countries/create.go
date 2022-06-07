package countries

import (
	"net/http"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"

	"github.com/gin-gonic/gin"
)

type create struct {
	logger           logging.Logger
	countriesService ports.CountriesService
}

func NewCreate(
	logger logging.Logger,
	countriesService ports.CountriesService,
) *create {
	return &create{
		logger:           logger,
		countriesService: countriesService,
	}
}

func (h *create) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")
}
