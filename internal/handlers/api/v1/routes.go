package v1

import (
	"wizbackend/internal/handlers/api/v1/countries"
	"wizbackend/internal/handlers/api/v1/currencies"

	"github.com/gin-gonic/gin"
)

type GroupRoutes interface {
	Initialize(prefix string, r gin.IRouter)
}

type Routes struct {
	countryRoutes  countries.GroupRoutes
	currencyRoutes currencies.GroupRoutes
}

func New(
	countryRoutes countries.GroupRoutes,
	currencyRoutes currencies.GroupRoutes,
) *Routes {
	return &Routes{
		countryRoutes:  countryRoutes,
		currencyRoutes: currencyRoutes,
	}
}

func (ro *Routes) Initialize(prefix string, r gin.IRouter) {

	v1 := r.Group(prefix)
	{
		ro.countryRoutes.Initialize("/countries", v1)
		ro.currencyRoutes.Initialize("/currencies", v1)
	}
}
