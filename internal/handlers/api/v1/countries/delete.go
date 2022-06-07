package countries

import (
	"net/http"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"

	"github.com/gin-gonic/gin"
)

type delete struct {
	logger           logging.Logger
	countriesService ports.CountriesService
}

func NewDelete(
	logger logging.Logger,
	countriesService ports.CountriesService,
) *delete {
	return &delete{
		logger:           logger,
		countriesService: countriesService,
	}
}

func (h *delete) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")
}
