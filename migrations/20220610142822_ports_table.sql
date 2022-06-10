-- +goose Up
-- +goose StatementBegin
CREATE TABLE IF NOT EXISTS ports (
    iso_code VARCHAR(128) PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    type VARCHAR(128) NOT NULL,
    country_iso_code VARCHAR(128) NOT NULL, 
    latitude DECIMAL(10,8) NOT NULL,
    longitude DECIMAL(11,8) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT (NOW() AT TIME ZONE 'UTC'),
    modified_at TIMESTAMPTZ NOT NULL DEFAULT (NOW() AT TIME ZONE 'UTC')
);
ALTER TABLE ports 
ADD CONSTRAINT country_iso_code_fkey 
FOREIGN KEY (country_iso_code) 
REFERENCES countries (iso_code);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP CONSTRAINT country_iso_code_fkey;
DROP TABLE IF EXISTS ports;
-- +goose StatementEnd
