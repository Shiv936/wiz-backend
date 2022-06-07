package countries

import (
	"time"
	"wizbackend/internal/core/domain/services"
)

type country struct {
	IsoCode     string  `json:"iso_code"`
	Name        string  `json:"name"`
	Iso3        *string `json:"iso_3"`
	CallingCode uint    `json:"calling_code"`
	CreatedAt   string  `json:"created_at"`
	ModifiedAt  string  `json:"modified_at"`
}

type countriesResponse struct {
	CurrentPage  uint      `json:"current_page"`
	TotalResults uint64    `json:"total_results"`
	ItemsPerPage uint      `json:"items_per_page"`
	Countries    []country `json:"countries"`
}

func mapServiceDomainToResponse(
	c services.Country,
) country {
	return country{
		IsoCode:     c.IsoCode,
		Name:        c.Name,
		CallingCode: c.CallingCode,
		Iso3:        c.Iso3,
		CreatedAt:   c.CreatedAt.Format(time.RFC3339),
		ModifiedAt:  c.ModifiedAt.Format(time.RFC3339),
	}
}
