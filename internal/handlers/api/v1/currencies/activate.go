package currencies

import (
	"net/http"

	"github.com/gin-gonic/gin"
)


func (h *Handler) Activate(ctx *gin.Context) {
	//ctx.String(http.StatusOK, "Hi there")
	var query reActivate
	query.isoCode = ctx.Param("id")
	isActive := true
	currencies, err := h.currenciesService.Modify(
		query.isoCode,
		nil,
		nil,
		&isActive,
	)
	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	ctx.JSON(http.StatusOK, currencies)
}
type reActivate struct {
	isoCode string `binding:"required"`
}
