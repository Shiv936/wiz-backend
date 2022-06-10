package ports

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func (h *Handler) Update(ctx *gin.Context) {

	ctx.JSON(http.StatusOK, "Hi There")
}
