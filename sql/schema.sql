CREATE TABLE air_quality_measurements (
    record_id SERIAL PRIMARY KEY,
    city VARCHAR(50),
    measurement_date DATE,
    pollutant VARCHAR(20),
    value FLOAT,
    unit VARCHAR(20)
);
