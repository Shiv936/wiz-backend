package handlers

import "github.com/gin-gonic/gin"

type GroupRoutes interface {
	Initialize(prefix string, r gin.IRouter)
}
