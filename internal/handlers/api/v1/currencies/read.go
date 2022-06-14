package currencies

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func (h *Handler) Read(ctx *gin.Context) {
	var isoCode = ctx.Param("id")
	readOne, exists, err := h.currenciesService.Fetch(isoCode)
	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	if !exists {
		ctx.JSON(http.StatusNotFound, gin.H{})
		return
	}
	response := readCurrency{
		IsoCode:  readOne.IsoCode,
		Name:     &readOne.Name,
		Symbol:   &readOne.Symbol,
		IsActive: &readOne.IsActive,
	}
	ctx.JSON(http.StatusOK, response)

}

type readCurrency struct {
	IsoCode  string  `json:"iso_code" binding:"required"`
	Name     *string `json:"name" `
	Symbol   *string `json:"symbol" `
	IsActive *bool   `json:"is_active"`
}
