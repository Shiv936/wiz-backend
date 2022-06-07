package currencies

import (
	"net/http"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"

	"github.com/gin-gonic/gin"
)

type activate struct {
	logger            logging.Logger
	currenciesService ports.CurrenciesService
}

func NewActivate(
	logger logging.Logger,
	currenciesService ports.CurrenciesService,
) *activate {
	return &activate{
		logger:            logger,
		currenciesService: currenciesService,
	}
}

func (h *activate) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")
}
