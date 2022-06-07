package countries

import (
	"net/http"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"

	"github.com/gin-gonic/gin"
)

type update struct {
	logger           logging.Logger
	countriesService ports.CountriesService
}

func NewUpdate(
	logger logging.Logger,
	countriesService ports.CountriesService,
) *update {
	return &update{
		logger:           logger,
		countriesService: countriesService,
	}
}

func (h *update) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")
}
