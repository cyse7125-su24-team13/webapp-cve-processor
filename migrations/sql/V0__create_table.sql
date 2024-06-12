CREATE TABLE IF NOT EXISTS cve_records (
    id SERIAL PRIMARY KEY,
    cve_id VARCHAR(50) NOT NULL,
    json_data JSONB NOT NULL,
    date_published TIMESTAMP NOT NULL,
    date_updated TIMESTAMP NOT NULL,
    UNIQUE(cve_id, date_updated)
);

CREATE INDEX IF NOT EXISTS idx_cve_id ON cve_records (cve_id);

CREATE INDEX IF NOT EXISTS idx_date_updated ON cve_records (date_updated);
