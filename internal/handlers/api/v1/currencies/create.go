package currencies

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func (h *Handler) Create(ctx *gin.Context) {
	var query createRequest
	if err := ctx.ShouldBindJSON(&query); err != nil {
		ctx.JSON(http.StatusUnprocessableEntity, gin.H{"error": err})
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

	ctx.JSON(http.StatusOK, currency)
}

type createRequest struct {
	IsoCode  string `form:"iso" json:"iso" binding:"required,alpha"`
	Name     string `form:"nm" json:"nm" binding:"required,alpha"`
	Symbol   string `form:"sy" json:"sy" binding:"omitempty"`
	IsActive bool   `form:"ia" json:"ia" binding:"required"`
}
