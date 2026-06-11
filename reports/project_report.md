# Healthcare Claims Fraud Detection Using Machine Learning

## Project Report

### Author

Aadityaa Dava

### Tools & Technologies

Python, SQL, Pandas, NumPy, Scikit-Learn, Power BI, Plotly, Matplotlib, Seaborn

---

# 1. Executive Summary

Healthcare fraud remains one of the largest sources of financial waste in healthcare systems worldwide. Fraudulent healthcare providers often exhibit abnormal billing behavior, excessive reimbursements, unusually high claim volumes, and suspicious patient utilization patterns.

This project develops a machine learning-based fraud detection framework using healthcare claims data to identify potentially fraudulent healthcare providers. The solution integrates data engineering, exploratory data analysis, machine learning, SQL analytics, and business intelligence reporting to uncover fraud-related patterns and support investigative decision-making.

The final model achieved strong predictive performance, successfully distinguishing fraudulent providers from legitimate providers using provider-level healthcare utilization and reimbursement characteristics.

---

# 2. Business Problem

Healthcare organizations and insurance companies process millions of claims annually. Manual auditing of all providers is impractical and costly.

Fraudulent providers may engage in:

* Excessive claim submissions
* Inflated reimbursements
* Unnecessary procedures
* Billing irregularities
* Abnormal patient utilization

The primary objective of this project is to identify high-risk providers and assist healthcare organizations in prioritizing investigations.

---

# 3. Project Objectives

The project aims to:

* Detect potentially fraudulent healthcare providers.
* Analyze provider-level claim behavior.
* Identify key fraud indicators.
* Build predictive fraud detection models.
* Generate business recommendations.
* Develop interactive dashboards for fraud monitoring.

---

# 4. Dataset Description

The project utilizes healthcare provider claims data consisting of:

### Beneficiary Data

Contains patient demographic and chronic condition information.

### Inpatient Claims Data

Contains hospitalization details including:

* Admission dates
* Discharge dates
* Reimbursements
* Diagnoses

### Outpatient Claims Data

Contains outpatient service utilization information.

### Fraud Labels

Provider fraud status indicating whether a provider has been flagged as potentially fraudulent.

---

# 5. Data Preparation

## Data Cleaning

The following preprocessing steps were performed:

* Missing value assessment
* Duplicate record removal
* Data consistency validation
* Variable standardization

## Provider-Level Aggregation

Raw claims were aggregated to the provider level to create fraud modeling features.

---

# 6. Feature Engineering

Several provider-level metrics were engineered.

## Claims Features

* InpatientClaimCount
* OutpatientClaimCount
* TotalClaims

## Reimbursement Features

* AvgInpatientReimbursement
* TotalInpatientReimbursement
* AvgOutpatientReimbursement
* TotalOutpatientReimbursement

## Utilization Features

* UniqueInpatientBeneficiaries
* UniqueOutpatientBeneficiaries
* AvgPatientAge

## Clinical Features

* AvgDiagnosisCount
* AvgChronicConditionCount

## Hospital Stay Features

* AvgLengthOfStay
* MaxLengthOfStay

The final modeling dataset contained 17 engineered features.

---

# 7. Exploratory Data Analysis

EDA was conducted to identify differences between fraudulent and non-fraudulent providers.

## Fraud Distribution

* Total Providers: 5,410
* Fraud Providers: 506
* Fraud Rate: 9.35%

Fraud cases represented a relatively small portion of the dataset, creating a class imbalance challenge.

---

## Reimbursement Analysis

Fraudulent providers demonstrated significantly higher reimbursement amounts.

### Average Total Inpatient Reimbursement

| Provider Type |   Amount |
| ------------- | -------: |
| Fraud         | $476,855 |
| Non-Fraud     |  $34,056 |

Fraudulent providers received approximately 14 times higher inpatient reimbursements.

---

## Beneficiary Analysis

Fraudulent providers served substantially more beneficiaries.

### Average Unique Beneficiaries

| Provider Type | Beneficiaries |
| ------------- | ------------: |
| Fraud         |           242 |
| Non-Fraud     |            49 |

---

## Length of Stay Analysis

Hospital stay duration emerged as a major fraud indicator.

### Average Length of Stay

| Provider Type | Days |
| ------------- | ---: |
| Fraud         | 5.32 |
| Non-Fraud     | 1.87 |

### Maximum Length of Stay

| Provider Type |  Days |
| ------------- | ----: |
| Fraud         | 23.75 |
| Non-Fraud     |  4.48 |

Fraudulent providers exhibited significantly longer patient stays.

---

## Claims Volume Analysis

Fraudulent providers submitted considerably more healthcare claims.

### Average Inpatient Claims

| Provider Type | Claims |
| ------------- | -----: |
| Fraud         |  46.25 |
| Non-Fraud     |   3.48 |

This suggests abnormal utilization and billing behavior.

---

# 8. Machine Learning Modeling

## Data Preprocessing

Before model training:

* Features were selected.
* Train-test split was performed.
* Numerical features were standardized.
* SMOTE was applied to address class imbalance.

---

## Models Developed

### Logistic Regression

A baseline interpretable classification model.

### Random Forest Classifier

An ensemble learning model capable of capturing complex relationships.

---

# 9. Model Evaluation

## Performance Comparison

| Metric    | Logistic Regression | Random Forest |
| --------- | ------------------: | ------------: |
| Accuracy  |              90.57% |        92.33% |
| Precision |              49.73% |        56.08% |
| Recall    |              91.09% |        82.18% |
| F1 Score  |              64.34% |        66.67% |
| ROC-AUC   |              96.99% |        96.12% |

---

## Selected Model

### Logistic Regression

The Logistic Regression model was selected because:

* Highest Recall
* Highest ROC-AUC
* Better fraud identification capability

In healthcare fraud detection, recall is prioritized because missing fraudulent providers may lead to substantial financial losses.

---

# 10. Key Fraud Indicators

The most influential variables included:

1. MaxLengthOfStay
2. InpatientClaimCount
3. TotalInpatientReimbursement
4. UniqueInpatientBeneficiaries
5. TotalOutpatientReimbursement

These variables consistently differentiated fraudulent providers from legitimate providers.

---

# 11. SQL Analytics

Three SQL scripts were developed to support fraud analysis.

## provider_analysis.sql

Provides:

* Provider counts
* Fraud rates
* Provider segmentation

## reimbursement_analysis.sql

Provides:

* Reimbursement comparisons
* High-cost provider analysis
* Financial anomaly detection

## fraud_metrics.sql

Provides:

* Claims volume metrics
* Beneficiary utilization metrics
* Risk indicators

---

# 12. Power BI Dashboard

An interactive Power BI dashboard was developed for business users.

## Executive Overview

Provides:

* Total Providers
* Fraud Providers
* Fraud Distribution
* Reimbursement Analysis
* Beneficiary Analysis
* Claims Volume Analysis

## Provider Risk Indicators

Provides:

* Claims Volume Risk Indicators
* Reimbursement Risk Indicators
* Length of Stay Risk Indicators
* Fraud Characteristics Summary

---

# 13. Business Recommendations

Based on the analysis:

### Recommendation 1

Prioritize providers with unusually high inpatient reimbursement amounts for investigation.

### Recommendation 2

Monitor providers exhibiting extended patient stay durations.

### Recommendation 3

Implement provider-level fraud risk scoring systems.

### Recommendation 4

Establish automated monitoring dashboards for early fraud detection.

### Recommendation 5

Use machine learning predictions to prioritize audit resources.

---

# 14. Business Impact

This solution enables healthcare organizations to:

* Detect suspicious providers earlier.
* Reduce fraud-related financial losses.
* Improve audit efficiency.
* Focus investigations on high-risk providers.
* Support data-driven fraud prevention strategies.

---

# 15. Conclusion

This project demonstrates how healthcare claims data, machine learning, SQL analytics, and business intelligence tools can be integrated into a comprehensive fraud detection framework.

The analysis identified clear behavioral differences between fraudulent and non-fraudulent providers, particularly in reimbursement patterns, beneficiary utilization, claim volumes, and hospital stay durations.

The resulting machine learning model achieved strong predictive performance and provides a practical foundation for healthcare fraud monitoring and investigation.
