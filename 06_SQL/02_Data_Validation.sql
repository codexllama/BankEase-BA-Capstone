-- =========================================================
-- BankEase Financial Services
-- Customer Retention & Churn Analysis
-- File: 02_Data_Validation.sql
-- Purpose: Validate imported customer data
-- =========================================================


-- DQ-01: Check total number of records
SELECT COUNT(*) AS total_records
FROM bankease_customers;


-- DQ-02: Check for missing Customer IDs
SELECT COUNT(*) AS missing_customer_ids
FROM bankease_customers
WHERE customer_id IS NULL;


-- DQ-03: Check for duplicate Customer IDs
SELECT customer_id, COUNT(*) AS duplicate_count
FROM bankease_customers
GROUP BY customer_id
HAVING COUNT(*) > 1;


-- DQ-04: Check for invalid ages
SELECT COUNT(*) AS invalid_ages
FROM bankease_customers
WHERE age < 18 OR age > 100;


-- DQ-05: Check for negative tenure
SELECT COUNT(*) AS invalid_tenure
FROM bankease_customers
WHERE tenure_years < 0;


-- DQ-06: Check satisfaction score range
SELECT COUNT(*) AS invalid_satisfaction_scores
FROM bankease_customers
WHERE satisfaction_score < 1
   OR satisfaction_score > 5;


-- DQ-07: Check Churn_Flag values
SELECT DISTINCT churn_flag
FROM bankease_customers
ORDER BY churn_flag;


-- DQ-08: Check Customer_Status values
SELECT DISTINCT customer_status
FROM bankease_customers
ORDER BY customer_status;


-- DQ-09: Check Risk_Level values
SELECT DISTINCT risk_level
FROM bankease_customers
ORDER BY risk_level;


-- DQ-10: Check Risk_Score range
SELECT COUNT(*) AS invalid_risk_scores
FROM bankease_customers
WHERE risk_score < 0
   OR risk_score > 100;


-- DQ-11: Check binary fields
SELECT COUNT(*) AS invalid_binary_values
FROM bankease_customers
WHERE credit_card NOT IN (0, 1)
   OR personal_loan NOT IN (0, 1)
   OR home_loan NOT IN (0, 1)
   OR mobile_banking_usage NOT IN (0, 1)
   OR internet_banking_usage NOT IN (0, 1)
   OR campaign_response NOT IN (0, 1)
   OR churn_flag NOT IN (0, 1);


-- DQ-12: Check Churn_Flag and Customer_Status consistency
SELECT COUNT(*) AS inconsistent_churn_status
FROM bankease_customers
WHERE (churn_flag = 1 AND customer_status <> 'Churned')
   OR (churn_flag = 0 AND customer_status <> 'Active');


-- DQ-13: Check churn dates
SELECT COUNT(*) AS missing_churn_dates
FROM bankease_customers
WHERE churn_flag = 1
  AND churn_date IS NULL;


-- DQ-14: Check for negative activity values
SELECT COUNT(*) AS invalid_activity_values
FROM bankease_customers
WHERE monthly_transactions < 0
   OR avg_monthly_balance < 0
   OR last_transaction_days < 0
   OR complaints_count < 0
   OR avg_complaint_resolution_days < 0;


-- DQ-15: Check missing values in important fields
SELECT
    COUNT(*) FILTER (WHERE customer_id IS NULL) AS missing_customer_id,
    COUNT(*) FILTER (WHERE age IS NULL) AS missing_age,
    COUNT(*) FILTER (WHERE account_type IS NULL) AS missing_account_type,
    COUNT(*) FILTER (WHERE tenure_years IS NULL) AS missing_tenure,
    COUNT(*) FILTER (WHERE monthly_transactions IS NULL) AS missing_transactions,
    COUNT(*) FILTER (WHERE satisfaction_score IS NULL) AS missing_satisfaction,
    COUNT(*) FILTER (WHERE customer_status IS NULL) AS missing_status
FROM bankease_customers;