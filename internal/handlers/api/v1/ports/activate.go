package ports

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func (h *Handler) Activate(ctx *gin.Context) {

	ctx.JSON(http.StatusOK, "Hi There")
}
