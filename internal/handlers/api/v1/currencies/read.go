package currencies

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func (h *Handler) Read(ctx *gin.Context) {
	var query readRequest
	if err := ctx.ShouldBindJSON(&query); err != nil {
		ctx.JSON(http.StatusUnprocessableEntity, gin.H{"error": err.Error()})
		return
	}
	currency, found, err := h.currenciesService.Fetch(query.IsoCode)
	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	if !found {
		ctx.JSON(http.StatusNotFound, gin.H{"error": "country not found"})
	} else {
		ctx.JSON(http.StatusOK, currency)
	}
}

type readRequest struct {
	IsoCode string `json:"iso_code" binding:"required,alpha"`
}
