package currencies

import (
	"net/http"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"

	"github.com/gin-gonic/gin"
)

type read struct {
	logger            logging.Logger
	currenciesService ports.CurrenciesService
}

func NewRead(
	logger logging.Logger,
	currenciesService ports.CurrenciesService,
) *read {
	return &read{
		logger:            logger,
		currenciesService: currenciesService,
	}
}

func (h *read) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")
}
