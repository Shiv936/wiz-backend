package ports

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
	port, err := h.portsService.Modify(
		query.Code,
		query.Name,
		query.Type,
		query.CountryIsoCode,
		query.Latitude,
		query.Longitude,
		query.IsActive,
	)
	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	ctx.JSON(http.StatusOK, port)
}

type updateRequest struct {
	Code           string   `json:"iso" binding:"required"`
	Name           *string  `json:"nm" `
	Type           *string  `json:"ty" `
	CountryIsoCode *string  `json:"ciso" `
	Latitude       *float64 `json:"lat" `
	Longitude      *float64 `json:"lon" `
	IsActive       *bool    `json:"ia" `
}
