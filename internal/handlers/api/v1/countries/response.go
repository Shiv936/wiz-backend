package countries

type country struct {
	IsoCode     string  `json:"iso_code"`
	Name        string  `json:"name"`
	Iso3        *string `json:"iso_3"`
	CallingCode uint    `json:"calling_code"`
	CreatedAt   string  `json:"created_at"`
	ModifiedAt  string  `json:"modified_at"`
}
