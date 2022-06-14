package services

import "time"

type Port struct {
	Code        string
	Name           string
	Type           string
	CountryIsoCode string
	Latitude       float64
	Longitude      float64
	IsActive       bool
	CreatedAt      time.Time
	ModifiedAt     time.Time
}

type Ports struct {
	Total int64
	Ports []Port
}