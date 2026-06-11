-- Average Claim Volume by Fraud Status

SELECT
    PotentialFraud,
    ROUND(AVG(InpatientClaimCount), 2) AS avg_inpatient_claims,
    ROUND(AVG(OutpatientClaimCount), 2) AS avg_outpatient_claims
FROM provider_fraud_modeling_dataset
GROUP BY PotentialFraud;


-- Average Beneficiary Volume by Fraud Status

SELECT
    PotentialFraud,
    ROUND(AVG(UniqueBeneficiaries), 2) AS avg_unique_beneficiaries
FROM provider_fraud_modeling_dataset
GROUP BY PotentialFraud;


-- Length of Stay Analysis

SELECT
    PotentialFraud,
    ROUND(AVG(AvgLengthOfStay), 2) AS avg_length_of_stay,
    ROUND(AVG(MaxLengthOfStay), 2) AS avg_max_length_of_stay
FROM provider_fraud_modeling_dataset
GROUP BY PotentialFraud;


-- Top Providers by Claim Volume

SELECT
    Provider,
    PotentialFraud,
    InpatientClaimCount,
    OutpatientClaimCount
FROM provider_fraud_modeling_dataset
ORDER BY InpatientClaimCount DESC
LIMIT 10;