package currencies

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

type deactivate struct {
}

func NewDeactivate() *deactivate {
	return &deactivate{}
}

func (h *deactivate) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")

}
