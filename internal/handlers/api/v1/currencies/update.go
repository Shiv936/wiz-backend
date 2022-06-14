package currencies

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func (h *Handler) Update(ctx *gin.Context) {
	//ctx.String(http.StatusOK, "Hi there")
	var query updateCurrency
	//query.isoCode = ctx.Param("id")
	if err := ctx.BindJSON(&query); err != nil {
		ctx.JSON(http.StatusUnprocessableEntity, gin.H{"error": err.Error()})
		return
	}

	currencies, err := h.currenciesService.Modify(query.IsoCode, query.Name, query.Symbol, query.IsActive)
	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	ctx.JSON(http.StatusOK, currencies)

}

type updateCurrency struct {
	IsoCode  string  `json:"iso_code" binding:"required"`
	Name     *string `json:"name" `
	Symbol   *string `json:"symbol" `
	IsActive *bool   `json:"is_active"`
}
