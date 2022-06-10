package ports

import (
	corePorts "wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"

	"github.com/gin-gonic/gin"
)

type RoutesHandler interface {
	List(ctx *gin.Context)
	Read(ctx *gin.Context)
	Create(ctx *gin.Context)
	Update(ctx *gin.Context)
	Delete(ctx *gin.Context)
	Activate(ctx *gin.Context)
	Deactivate(ctx *gin.Context)
}

type Handler struct {
	logger       logging.Logger
	portsService corePorts.PortsService
}

func NewHandler(
	logger logging.Logger,
	portsService corePorts.PortsService,
) *Handler {
	return &Handler{
		logger:       logger,
		portsService: portsService,
	}
}
