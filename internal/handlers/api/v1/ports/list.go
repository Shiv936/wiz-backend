package ports

import (
	"net/http"
	"wizbackend/internal/core/ports"

	"github.com/gin-gonic/gin"
)

func (h *Handler) List(ctx *gin.Context) {
	var query portsListRequest
	if err := ctx.ShouldBindQuery(&query); err != nil {
		ctx.JSON(http.StatusUnprocessableEntity, gin.H{"error": err.Error()})
		return
	}

	var sortField ports.PortsSortField = ports.PORT_ISO_CODE

	if query.SortField != nil {
		switch *query.SortField {
		case "iso":
			sortField = ports.PORT_ISO_CODE
		case "createdat":
			sortField = ports.PORT_CREATED_AT
		case "modifiedat":
			sortField = ports.PORT_MODIFIED_AT
		case "name":
			sortField = ports.PORT_NAME
		case "type":
			sortField = ports.PORT_TYPE
		case "countryiso":
			sortField = ports.PORT_COUNTRY_ISO_CODE
		}
	}

	var sortOrder ports.SortOrder = ports.SORT_ASCENDING

	if query.SortOrder != nil {
		switch *query.SortOrder {
		case "asc":
			sortOrder = ports.SORT_ASCENDING
		case "desc":
			sortOrder = ports.SORT_DESCENDING
		}
	}

	var filters ports.PortsFilters

	if !query.ShowDisabled {
		isActive := true
		filters = ports.PortsFilters{
			IsActive: &isActive,
		}
	}

	if query.Type != "" {
		filters.Type = &query.Type
	}

	var pageNumber uint = 1
	if query.PageNumber != nil {
		pageNumber = *query.PageNumber
	}

	var itemsPerPage uint = 1
	if query.ItemsPerPage != nil {
		itemsPerPage = *query.ItemsPerPage
	}

	ports, err := h.portsService.FetchMany(
		pageNumber,
		itemsPerPage,
		query.SearchTerm,
		ports.PortsSort{
			Field: sortField,
			Order: sortOrder,
		},
		filters,
	)

	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	rc := make([]port, 0)

	for _, c := range ports.Ports {
		rc = append(rc, mapServiceDomainToResponse(c))
	}

	// log.Println("rc--------->", rc)
	// log.Println("ports results--------->", ports)

	response := portsResponse{
		CurrentPage:  pageNumber,
		ItemsPerPage: itemsPerPage,
		TotalResults: ports.Total,
		Ports:        rc,
	}

	ctx.JSON(http.StatusOK, response)

}

type portsListRequest struct {
	PageNumber   *uint   `form:"pn" json:"pn" binding:"omitempty,numeric"`
	ItemsPerPage *uint   `form:"ipp" json:"ipp" binding:"omitempty,numeric"`
	SortField    *string `form:"sf" json:"sf" binding:"omitempty,alpha,oneof=iso createdat modifiedat name type countryiso"`
	SortOrder    *string `form:"so" json:"so" binding:"omitempty,alpha,oneof=asc desc"`
	SearchTerm   *string `form:"s" json:"s"`
	ShowDisabled bool    `form:"sd" json:"sd" binding:"omitempty"`
	Type         string  `form:"ty" json:"ty" binding:"omitempty"`
}
