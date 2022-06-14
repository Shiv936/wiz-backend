package currencies

import(
	"time"
	"wizbackend/internal/core/domain/services"
)

type currency struct{
		IsoCode    string    `json:"iso_code"`
		Name       string    `json:"name"`
		Symbol     string    `json:"symbol"`
		IsActive   bool      `json:"is_active"`
		CreatedAt  string `json:"created_at"`
		ModifiedAt string `json:"modified_at"`

}

type currenciesResponse struct {
	CurrentPage  uint      `json:"current_page"`
	TotalResults int64     `json:"total_results"`
	ItemsPerPage uint      `json:"items_per_page"`
	Currencies    []currency `json:"currencies"`
}

func mapServiceDomainToResponse(
	c services.Currency,
) currency {
	return currency{
		IsoCode:     c.IsoCode,
		Name:        c.Name,
		Symbol: 	c.Symbol,
		IsActive:    c.IsActive,
		CreatedAt:   c.CreatedAt.Format(time.RFC3339),
		ModifiedAt:  c.ModifiedAt.Format(time.RFC3339),
	}
}
