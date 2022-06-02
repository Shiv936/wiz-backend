package currencies

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

type create struct {
}

func NewCreate() *create {
	return &create{}
}

func (h *create) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")
}
