package countries

import (
	"net/http"
	"wizbackend/internal/core/ports"
	"wizbackend/pkg/logging"

	"github.com/gin-gonic/gin"
	"github.com/sanity-io/litter"
)

type list struct {
	logger           logging.Logger
	countriesService ports.CountriesService
}

func NewList(
	logger logging.Logger,
	countriesService ports.CountriesService,
) *list {
	return &list{
		logger:           logger,
		countriesService: countriesService,
	}
}

func (h *list) Handle(ctx *gin.Context) {
	var query listRequest
	if err := ctx.ShouldBindQuery(&query); err != nil {
		ctx.JSON(http.StatusUnprocessableEntity, gin.H{"error": err.Error()})
		return
	}

	litter.Dump(query)

	ctx.String(http.StatusOK, "Hi there")
}

type listRequest struct {
	PageNumber   *uint   `form:"pn" binding:"omitempty,numeric"`
	ItemsPerPage *uint   `form:"ipp" binding:"omitempty,numeric"`
	SortField    *string `form:"sf" binding:"omitempty,alpha,oneof=iso created_at modified_at name"`
	SortOrder    *string `form:"so" binding:"omitempty,alpha,oneof=asc desc"`
	SearchTerm   *string `form:"s"`
}
