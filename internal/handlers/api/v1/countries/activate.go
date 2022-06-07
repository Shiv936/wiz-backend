package countries

import (
	"net/http"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"

	"github.com/gin-gonic/gin"
)

type activate struct {
	logger           logging.Logger
	countriesService ports.CountriesService
}

func NewActivate(
	logger logging.Logger,
	countriesService ports.CountriesService,
) *activate {
	return &activate{
		logger:           logger,
		countriesService: countriesService,
	}
}

func (h *activate) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")
}
