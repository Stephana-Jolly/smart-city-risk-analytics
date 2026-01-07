-- Average pollution level by city
SELECT
    city,
    pollutant,
    AVG(value) AS avg_pollution
FROM air_quality_measurements
GROUP BY city, pollutant;

-- High-risk days (above threshold)
SELECT
    city,
    COUNT(DISTINCT measurement_date) AS high_risk_days
FROM air_quality_measurements
WHERE value > 100
GROUP BY city;

-- Monthly trend
SELECT
    city,
    DATE_TRUNC('month', measurement_date) AS month,
    AVG(value) AS avg_monthly_pollution
FROM air_quality_measurements
GROUP BY city, month;
