package countries

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func (h *Handler) Deactivate(ctx *gin.Context) {
	var query deactivateRequest
	if err := ctx.ShouldBindJSON(&query); err != nil {
		ctx.JSON(http.StatusUnprocessableEntity, gin.H{"error": err.Error()})
		return
	}

	var isoCode string = ""
	if query.IsoCode != nil {
		isoCode = *query.IsoCode
	}

	var IsActive bool = false

	country, err := h.countriesService.Modify(
		isoCode,
		nil,
		nil,
		nil,
		&IsActive,
	)

	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	ctx.JSON(http.StatusOK, country)
}

type deactivateRequest struct {
	IsoCode     *string `form:"iso" json:"iso" binding:"required,alpha"`
}
