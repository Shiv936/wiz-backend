package rdbms

import (
	"time"
)

type Port struct{
	IsoCode string `db:"iso_code"`
	Name string `db:"name"`
	Type string `db:"type"`
	CountryIsoCode string `db:"country_id"`
	Latitude  float64 `db:"latitude"`
	Longitude float64 `db:"longitude"`
	IsActive bool `db:"is_active"`
	CreatedAt time.Time `db:"created_at"`
	ModifiedAt time.Time `db:"modified_at"`
} 