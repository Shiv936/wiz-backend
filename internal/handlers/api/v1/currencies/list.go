package currencies

import (
	"net/http"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"

	"github.com/gin-gonic/gin"
)

type list struct {
	logger            logging.Logger
	currenciesService ports.CurrenciesService
}

func NewList(
	logger logging.Logger,
	currenciesService ports.CurrenciesService,
) *list {
	return &list{
		logger:            logger,
		currenciesService: currenciesService,
	}
}

func (h *list) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")
}
