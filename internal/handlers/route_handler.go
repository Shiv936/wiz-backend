package handlers

import "github.com/gin-gonic/gin"

type RouteHandler interface {
	Handle(ctx *gin.Context)
}
