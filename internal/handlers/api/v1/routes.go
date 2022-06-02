package v1

import (
	"wizbackend/internal/handlers"

	"github.com/gin-gonic/gin"
)

type routes struct {
	countryRoutes  handlers.GroupRoutes
	currencyRoutes handlers.GroupRoutes
}

func New(
	countryRoutes handlers.GroupRoutes,
	currencyRoutes handlers.GroupRoutes,
) *routes {
	return &routes{
		countryRoutes:  countryRoutes,
		currencyRoutes: currencyRoutes,
	}
}

func (ro *routes) Initialize(prefix string, r gin.IRouter) {

	v1 := r.Group(prefix)
	{
		ro.countryRoutes.Initialize("/countries", v1)
		ro.currencyRoutes.Initialize("/currencies", v1)
	}
}
