package countries

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func (h *Handler) Update(ctx *gin.Context) {
	var query updateRequest
	if err := ctx.ShouldBindJSON(&query); err != nil {
		ctx.JSON(http.StatusUnprocessableEntity, gin.H{"error": err.Error()})
		return
	}

	var isoCode string = ""
	if query.IsoCode != nil {
		isoCode = *query.IsoCode
	}

	var name string = ""
	if query.Name != nil {
		name = *query.Name
	}

	var callingCode uint = 1
	if query.CallingCode != nil {
		callingCode = *query.CallingCode
	}

	var isActive bool = true
	if query.IsActive != nil {
		isActive = *query.IsActive
	}
	country, err := h.countriesService.Modify(
		isoCode,
		&name,
		query.Iso3,
		&callingCode,
		&isActive,
	)

	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	ctx.JSON(http.StatusOK, country)
}

type updateRequest struct {
	IsoCode     *string `form:"iso" json:"iso" binding:"required,alpha"`
	Name        *string `form:"nm" json:"nm" binding:"omitempty,alpha"`
	Iso3        *string `form:"iso3" json:"iso3" binding:"omitempty,alpha"`
	CallingCode *uint   `form:"cc" json:"cc" binding:"omitempty,numeric"`
	IsActive    *bool   `form:"ia" json:"ia" binding:"omitempty"`
}
