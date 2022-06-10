package ports

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func (h *Handler) List(ctx *gin.Context) {

	ctx.JSON(http.StatusOK, "Hi There")
}
