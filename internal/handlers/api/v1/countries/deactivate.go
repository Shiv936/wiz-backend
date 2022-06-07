package countries

import (
	"net/http"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"

	"github.com/gin-gonic/gin"
)

type deactivate struct {
	logger           logging.Logger
	countriesService ports.CountriesService
}

func NewDeactivate(
	logger logging.Logger,
	countriesService ports.CountriesService,
) *deactivate {
	return &deactivate{
		logger:           logger,
		countriesService: countriesService,
	}
}

func (h *deactivate) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")

}
