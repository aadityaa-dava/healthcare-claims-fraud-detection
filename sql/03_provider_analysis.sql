-- Total Providers

SELECT COUNT(*) AS total_providers
FROM provider_fraud_modeling_dataset;


-- Fraud vs Non-Fraud Providers

SELECT
    PotentialFraud,
    COUNT(*) AS provider_count
FROM provider_fraud_modeling_dataset
GROUP BY PotentialFraud;


-- Fraud Rate

SELECT
    ROUND(
        100.0 * SUM(CASE WHEN PotentialFraud = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS fraud_rate_percent
FROM provider_fraud_modeling_dataset;