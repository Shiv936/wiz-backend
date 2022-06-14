package currencies

import (
	"net/http"
	"wizbackend/internal/core/ports"

	"github.com/gin-gonic/gin"
)

func (h *Handler) List(ctx *gin.Context) {
	//ctx.String(http.StatusOK, "Hi there")
	var query listRequest
	if err := ctx.ShouldBindQuery(&query); err != nil {
		ctx.JSON(http.StatusUnprocessableEntity, gin.H{"error": err.Error()})
		return
	}

	var sortField ports.CurrenciesSortField = ports.CURRENCY_ISO

	if query.SortField != nil {
		switch *query.SortField {
		case "iso":
			sortField = ports.CURRENCY_ISO
		case "createdat":
			sortField = ports.CURRENCY_CREATED_AT
		case "modifiedat":
			sortField = ports.CURRENCY_MODIFIED_AT
		case "name":
			sortField = ports.CURRENCY_NAME
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

	var filters ports.CurrenciesFilters
	if !query.ShowDisabled {
		isActive := true
		filters = ports.CurrenciesFilters{
			IsActive: &isActive,
		}
	}

	var pageNumber uint = 1
	if query.PageNumber != nil {
		pageNumber = *query.PageNumber
	}

	var itemsPerPage uint = 1
	if query.ItemsPerPage != nil {
		itemsPerPage = *query.ItemsPerPage
	}

	currencies, err := h.currenciesService.FetchMany(
		pageNumber,
		itemsPerPage,
		query.SearchTerm,
		ports.CurrenciesSort{
			Field: sortField,
			Order: sortOrder,
		},
		filters,
	)
	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	rc := make([]currency, 0)
	for _, c := range currencies.Currencies {
		rc = append(rc, mapServiceDomainToResponse(c))
	}

	response := currenciesResponse{
		CurrentPage:  pageNumber,
		ItemsPerPage: itemsPerPage,
		TotalResults: currencies.Total,
		Currencies:   rc,
	}

	ctx.JSON(http.StatusOK, response)

}

type listRequest struct {
	PageNumber   *uint   `form:"pn" binding:"omitempty,numeric"`
	ItemsPerPage *uint   `form:"ipp" binding:"omitempty,numeric"`
	SortField    *string `form:"sf" binding:"omitempty,alpha,oneof=iso createdat modifiedat name"`
	SortOrder    *string `form:"so" binding:"omitempty,alpha,oneof=asc desc"`
	SearchTerm   *string `form:"s"`
	ShowDisabled bool    `form:"sd" binding:"omitempty"`
}

