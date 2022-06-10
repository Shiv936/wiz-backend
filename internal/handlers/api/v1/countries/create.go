package countries

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func (h *Handler) Create(ctx *gin.Context) {
	var query createRequest
	if err := ctx.ShouldBindJSON(&query); err != nil {
		ctx.JSON(http.StatusUnprocessableEntity, gin.H{"error": err.Error()})
		return
	}

	var isoCode string = ""
	if query.IsoCode != nil {
		isoCode = *query.IsoCode
	}

	country, err := h.countriesService.Create(
		isoCode,
		query.Name,
		query.Iso3,
		query.CallingCode,
		query.Symbol,
		query.IsActive,
	)
	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	ctx.JSON(http.StatusOK, country)
}

type createRequest struct {
	IsoCode     *string `form:"iso" json:"iso" binding:"required,alpha"`
	Name        string  `form:"nm" json:"nm" binding:"required,alpha"`
	Iso3        *string `form:"iso3" json:"iso3" binding:"required,alpha"`
	CallingCode uint    `form:"cc" json:"cc" binding:"required,numeric"`
	Symbol      string  `form:"sy" json:"sy" binding:"omitempty"`
	IsActive    bool    `form:"ia" json:"ia" binding:"required"`
}
