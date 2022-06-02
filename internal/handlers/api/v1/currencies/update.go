package currencies

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

type update struct {
}

func NewUpdate() *update {
	return &update{}
}

func (h *update) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")
}
