package currencies

import (
	"net/http"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"

	"github.com/gin-gonic/gin"
)

type delete struct {
	logger            logging.Logger
	currenciesService ports.CurrenciesService
}

func NewDelete(
	logger logging.Logger,
	currenciesService ports.CurrenciesService,
) *delete {
	return &delete{
		logger:            logger,
		currenciesService: currenciesService,
	}
}

func (h *delete) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")
}
