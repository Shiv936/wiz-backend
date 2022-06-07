package currencies

import (
	"net/http"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"

	"github.com/gin-gonic/gin"
)

type update struct {
	logger            logging.Logger
	currenciesService ports.CurrenciesService
}

func NewUpdate(
	logger logging.Logger,
	currenciesService ports.CurrenciesService,
) *update {
	return &update{
		logger:            logger,
		currenciesService: currenciesService,
	}
}

func (h *update) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")
}
