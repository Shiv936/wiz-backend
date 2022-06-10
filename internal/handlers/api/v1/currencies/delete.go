package currencies

import (
	"net/http"

	"github.com/gin-gonic/gin"
)


func (h *Handler) Delete(ctx *gin.Context) {
	var query deleteRequest
	if err := ctx.ShouldBindJSON(&query); err != nil {
		ctx.JSON(http.StatusUnprocessableEntity, gin.H{"error": err.Error()})
		return
	}
	err := h.currenciesService.Remove(query.IsoCode)
	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	ctx.JSON(http.StatusOK, gin.H{})
}

type deleteRequest struct {
	IsoCode string `json:"iso_code" binding:"required,alpha"`
}
