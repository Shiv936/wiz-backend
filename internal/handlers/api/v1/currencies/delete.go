package currencies

import (
	"net/http"

	"github.com/gin-gonic/gin"
)


func (h *Handler) Delete(ctx *gin.Context) {
	//ctx.String(http.StatusOK, "Hi there")

	var query deleteCurrency
	query.isoCode = ctx.Param("id")
	err := h.currenciesService.Remove(query.isoCode)
	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	ctx.JSON(http.StatusOK, gin.H{})
}

type deleteCurrency struct {
	isoCode string `binding:"required"`
}

