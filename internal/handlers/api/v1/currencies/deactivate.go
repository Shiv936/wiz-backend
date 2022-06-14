package currencies

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func (h *Handler) Deactivate(ctx *gin.Context) {
	//ctx.String(http.StatusOK, "Hi there")
	var query deActivate
	query.isoCode = ctx.Param("id")
	isActive := false
	currency, err := h.currenciesService.Modify(
		query.isoCode,
		nil,
		nil,
		&isActive,
	)
	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	ctx.JSON(http.StatusOK, currency)

}
type deActivate struct {
	isoCode string `binding:"required"`
}
