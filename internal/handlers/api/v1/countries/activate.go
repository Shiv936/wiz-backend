package countries

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

type activate struct {
}

func NewActivate() *activate {
	return &activate{}
}

func (h *activate) Handle(ctx *gin.Context) {
	ctx.String(http.StatusOK, "Hi there")
}
