package ports

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
	if query.PORT_ISO_CODE != nil {
		isoCode = *query.PORT_ISO_CODE
	}

	ports, found, err := h.portsService.Fetch(isoCode)

	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	if !found {
		ctx.JSON(http.StatusNotFound, gin.H{"error": "ports not found"})
	} else {
		ctx.JSON(http.StatusOK, ports)
	}
}

type readRequest struct {
	PORT_ISO_CODE *string `form:"piso" json:"iso" binding:"required"`
}
