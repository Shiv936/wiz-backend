package countries

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

type delete struct {
}

func NewDelete() *delete {
	return &delete{}
}

func (h *delete) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")
}
