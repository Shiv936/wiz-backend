package ports

import (
	"time"
	"wizbackend/internal/core/domain/services"
)

type port struct {
	Code           string  `json:"iso_code"`
	Name           string  `json:"name"`
	Type           string  `json:"type"`
	CountryIsoCode string  `json:"country_iso_code"`
	Latitude       float64 `json:"latitude"`
	Longitude      float64 `json:"longitude"`
	IsActive       bool    `json:"is_active"`
	CreatedAt      string  `json:"created_at"`
	ModifiedAt     string  `json:"modified_at"`
}

type portsResponse struct {
	CurrentPage  uint   `json:"current_page"`
	TotalResults int64  `json:"total_results"`
	ItemsPerPage uint   `json:"items_per_page"`
	Ports        []port `json:"ports"`
}

func mapServiceDomainToResponse(
	c services.Port,
) port {
	return port{
		Code:           c.Code,
		Name:           c.Name,
		Type:           c.Type,
		CountryIsoCode: c.CountryIsoCode,
		Latitude:       c.Latitude,
		Longitude:      c.Longitude,
		IsActive:       c.IsActive,
		CreatedAt:      c.CreatedAt.Format(time.RFC3339),
		ModifiedAt:     c.ModifiedAt.Format(time.RFC3339),
	}
}
