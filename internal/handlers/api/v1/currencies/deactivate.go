package currencies

import (
	"net/http"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"

	"github.com/gin-gonic/gin"
)

type deactivate struct {
	logger            logging.Logger
	currenciesService ports.CurrenciesService
}

func NewDeactivate(
	logger logging.Logger,
	currenciesService ports.CurrenciesService,
) *deactivate {
	return &deactivate{
		logger:            logger,
		currenciesService: currenciesService,
	}
}

func (h *deactivate) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")

}
