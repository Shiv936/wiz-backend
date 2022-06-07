package countries

import (
	"net/http"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"

	"github.com/gin-gonic/gin"
)

type read struct {
	logger           logging.Logger
	countriesService ports.CountriesService
}

func NewRead(
	logger logging.Logger,
	countriesService ports.CountriesService,
) *read {
	return &read{
		logger:           logger,
		countriesService: countriesService,
	}
}

func (h *read) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")
}
