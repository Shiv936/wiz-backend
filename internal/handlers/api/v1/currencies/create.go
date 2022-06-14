package currencies

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func (h *Handler) Create(ctx *gin.Context) {
	var query createCurrency
	if err := ctx.BindJSON(&query); err != nil {
		ctx.JSON(http.StatusUnprocessableEntity, gin.H{"error": err.Error()})
		return
	}

	currency, err := h.currenciesService.Create(
		query.IsoCode,
		query.Name,
		query.Symbol,
		query.IsActive,
	)

	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	response := createCurrency{
		IsoCode:  currency.IsoCode,
		Name:     currency.Name,
		Symbol:   currency.Symbol,
		IsActive: currency.IsActive,
	}

	ctx.JSON(http.StatusOK, response)
}

type createCurrency struct {
	IsoCode  string `json:"ic" binding:"required"`
	Name     string `json:"n" binding:"required"`
	Symbol   string `json:"sym" binding:"required"`
	IsActive bool   `json:"ia" binding:"required"`
}

