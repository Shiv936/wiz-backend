package currencies

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

type read struct {
}

func NewRead() *read {
	return &read{}
}

func (h *read) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")
}
