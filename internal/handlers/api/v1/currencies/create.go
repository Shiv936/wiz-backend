package currencies

import (
	"net/http"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"

	"github.com/gin-gonic/gin"
)

type create struct {
	logger            logging.Logger
	currenciesService ports.CurrenciesService
}

func NewCreate(
	logger logging.Logger,
	currenciesService ports.CurrenciesService,
) *create {
	return &create{
		logger:            logger,
		currenciesService: currenciesService,
	}
}

func (h *create) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")
}
