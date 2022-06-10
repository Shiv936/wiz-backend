package countries

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

	var isoCode string = ""
	if query.IsoCode != nil {
		isoCode = *query.IsoCode
	}

	country, found, err := h.countriesService.Fetch(isoCode)

	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	if !found {
		ctx.JSON(http.StatusNotFound, gin.H{"error": "country not found"})
	} else {
		ctx.JSON(http.StatusOK, country)
	}
}

type readRequest struct {
	IsoCode *string `form:"iso" json:"iso" binding:"required,alpha"`
}
