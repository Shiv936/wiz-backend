package countries

import (
	"wizbackend/internal/handlers"

	"github.com/gin-gonic/gin"
)

type routes struct {
	activate   handlers.RouteHandler
	deactivate handlers.RouteHandler
	create     handlers.RouteHandler
	update     handlers.RouteHandler
	delete     handlers.RouteHandler
	list       handlers.RouteHandler
	read       handlers.RouteHandler
}

func New(
	activate *activate,
	deactivate *deactivate,
	create *create,
	update *update,
	delete *delete,
	list *list,
	read *read,
) *routes {
	return &routes{
		activate:   activate,
		deactivate: deactivate,
		create:     create,
		delete:     delete,
		update:     update,
		list:       list,
		read:       read,
	}
}

func (ro *routes) Initialize(prefix string, r gin.IRouter) {

	g := r.Group(prefix)
	{
		g.GET("", ro.list.Handle)
		g.GET("/:id", ro.read.Handle)
		g.POST("", ro.create.Handle)
		g.PATCH("/:id", ro.update.Handle)
		g.PATCH("/:id/activate", ro.activate.Handle)
		g.PATCH("/:id/deactivate", ro.deactivate.Handle)
		g.DELETE("/:id", ro.delete.Handle)
	}
}
