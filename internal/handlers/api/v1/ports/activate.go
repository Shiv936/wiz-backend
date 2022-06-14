package ports

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func (h *Handler) Activate(ctx *gin.Context) {
	var query = ctx.Param("id")

	var IsActive bool = true

	port, err := h.portsService.Modify(
		query,
		nil,
		nil,
		nil,
		nil,
		nil,
		&IsActive,
	)

	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	ctx.JSON(http.StatusOK, port)
}

