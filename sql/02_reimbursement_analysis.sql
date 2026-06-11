-- Average Reimbursements by Fraud Status

SELECT
    PotentialFraud,
    ROUND(AVG(TotalInpatientReimbursement), 2) AS avg_total_inpatient_reimbursement,
    ROUND(AVG(TotalOutpatientReimbursement), 2) AS avg_total_outpatient_reimbursement,
    ROUND(AVG(AvgInpatientReimbursement), 2) AS avg_inpatient_reimbursement,
    ROUND(AVG(AvgOutpatientReimbursement), 2) AS avg_outpatient_reimbursement
FROM provider_fraud_modeling_dataset
GROUP BY PotentialFraud;


-- Top 10 Providers by Total Inpatient Reimbursement

SELECT
    Provider,
    PotentialFraud,
    TotalInpatientReimbursement
FROM provider_fraud_modeling_dataset
ORDER BY TotalInpatientReimbursement DESC
LIMIT 10;


-- Top 10 Providers by Total Outpatient Reimbursement

SELECT
    Provider,
    PotentialFraud,
    TotalOutpatientReimbursement
FROM provider_fraud_modeling_dataset
ORDER BY TotalOutpatientReimbursement DESC
LIMIT 10;


-- Average Reimbursement Difference

SELECT
    PotentialFraud,
    ROUND(AVG(TotalInpatientReimbursement), 2) AS avg_inpatient_reimbursement
FROM provider_fraud_modeling_dataset
GROUP BY PotentialFraud
ORDER BY avg_inpatient_reimbursement DESC;
