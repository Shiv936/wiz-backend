package ports

import (
	"log"
	"net/http"

	"github.com/gin-gonic/gin"
)


func (h *Handler) Create(ctx *gin.Context) {
	var query createRequest
	if err := ctx.ShouldBindJSON(&query); err != nil {
		ctx.JSON(http.StatusUnprocessableEntity, gin.H{"error": err})
	}

	port, err := h.portsService.Create(
		query.IsoCode,
		query.Name,
		query.Type,
		query.CountryIsoCode,
		query.Latitude,
		query.Longitude,
		query.IsActive,
	)

	if err == nil {
		log.Println(err)
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	ctx.JSON(http.StatusOK, port)
}

type createRequest struct {
	IsoCode  string `form:"iso" json:"iso" binding:"required,alpha"`
	Name     string `form:"nm" json:"nm" binding:"required,alpha"`
	Type     string `form:"ty" json:"ty" binding:"required,alpha"`
	CountryIsoCode string `form:"ciso" json:"ciso" binding:"required,alpha"`
	Latitude float64 `form:"lat" json:"lat" binding:"required,numeric"`
	Longitude float64 `form:"lon" json:"lon" binding:"required,numeric"`
	IsActive bool   `form:"ia" json:"ia" binding:"required"`
}