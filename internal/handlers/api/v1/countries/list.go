package countries

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

type list struct {
}

func NewList() *list {
	return &list{}
}

func (h *list) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")
}
