package api

import (
	"fmt"
	"net/http"
	"wizbackend/internal/handlers"

	"github.com/gin-gonic/gin"
)

func Initialize(
	port int,
	v1Routes handlers.GroupRoutes,
) {

	r := gin.New()
	r.RedirectTrailingSlash = true
	// Recovery middleware recovers from any panics and writes a 500 if there was one.
	r.Use(gin.CustomRecovery(func(c *gin.Context, recovered any) {
		if err, ok := recovered.(string); ok {
			c.String(http.StatusInternalServerError, fmt.Sprintf("error: %s", err))
		}
		c.AbortWithStatus(http.StatusInternalServerError)
	}))

	r.GET("/ping", func(c *gin.Context) { c.JSON(200, gin.H{"message": "pong"}) })

	v1Routes.Initialize("/v1", r)

	r.Run(fmt.Sprintf(":%d", port))
}
