package v1

import (
	"wizbackend/internal/handlers/api/v1/countries"
	"wizbackend/internal/handlers/api/v1/currencies"
	"wizbackend/internal/handlers/api/v1/ports"

	"github.com/gin-gonic/gin"
)

type GroupRoutes interface {
	Initialize(prefix string, r gin.IRouter)
}

type Routes struct {
	countryRoutes  countries.GroupRoutes
	currencyRoutes currencies.GroupRoutes
	portRoutes     ports.GroupRoutes
}

func New(
	countryRoutes countries.GroupRoutes,
	currencyRoutes currencies.GroupRoutes,
	portRoutes ports.GroupRoutes,
) *Routes {
	return &Routes{
		countryRoutes:  countryRoutes,
		currencyRoutes: currencyRoutes,
		portRoutes:     portRoutes,
	}
}

func (ro *Routes) Initialize(prefix string, r gin.IRouter) {

	v1 := r.Group(prefix)
	{
		ro.countryRoutes.Initialize("/countries", v1)
		ro.currencyRoutes.Initialize("/currencies", v1)
		ro.portRoutes.Initialize("/ports", v1)
	}
}
