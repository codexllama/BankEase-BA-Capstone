-- =========================================================
-- BankEase Financial Services
-- Customer Retention & Churn Analysis
-- File: 04_KPI_Queries.sql
-- Purpose: Calculate management KPIs
-- =========================================================


-- KPI-01: Total Customers

SELECT
    COUNT(*) AS total_customers
FROM bankease_customers;


-- KPI-02: Churned Customers

SELECT
    COUNT(*) AS churned_customers
FROM bankease_customers
WHERE churn_flag = 1;


-- KPI-03: Active Customers

SELECT
    COUNT(*) AS active_customers
FROM bankease_customers
WHERE churn_flag = 0;


-- KPI-04: Customer Churn Rate

SELECT
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM bankease_customers;


-- KPI-05: Customer Retention Rate

SELECT
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 0 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS retention_rate_percentage
FROM bankease_customers;


-- KPI-06: Active Customer Rate

SELECT
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 0 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS active_customer_rate_percentage
FROM bankease_customers;


-- KPI-07: High-Risk Customer Count

SELECT
    COUNT(*) AS high_risk_customer_count
FROM bankease_customers
WHERE risk_level = 'High';


-- KPI-08: Medium-Risk Customer Count

SELECT
    COUNT(*) AS medium_risk_customer_count
FROM bankease_customers
WHERE risk_level = 'Medium';


-- KPI-09: Low-Risk Customer Count

SELECT
    COUNT(*) AS low_risk_customer_count
FROM bankease_customers
WHERE risk_level = 'Low';


-- KPI-10: Average Transaction Frequency

SELECT
    ROUND(AVG(monthly_transactions), 2)
        AS average_monthly_transactions
FROM bankease_customers;


-- KPI-11: Average Complaint Rate

SELECT
    ROUND(
        100.0 * COUNT(*) FILTER (WHERE complaints_count > 0)
        / COUNT(*),
        2
    ) AS complaint_rate_percentage
FROM bankease_customers;


-- KPI-12: Average Satisfaction Score

SELECT
    ROUND(AVG(satisfaction_score), 2)
        AS average_satisfaction_score
FROM bankease_customers;


-- KPI-13: Average Risk Score

SELECT
    ROUND(AVG(risk_score), 2)
        AS average_risk_score
FROM bankease_customers;


-- KPI-14: Customers With No Recent Activity
-- Customers whose last transaction was more than 60 days ago

SELECT
    COUNT(*) AS customers_inactive_60_plus_days
FROM bankease_customers
WHERE last_transaction_days > 60;


-- KPI-15: High-Risk Customers Who Have Not Churned

SELECT
    COUNT(*) AS high_risk_active_customers
FROM bankease_customers
WHERE risk_level = 'High'
  AND churn_flag = 0;


-- KPI-16: Churn Rate Among Customers With Complaints

SELECT
    ROUND(
        100.0 *
        SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_with_complaints
FROM bankease_customers
WHERE complaints_count > 0;


-- KPI-17: Churn Rate Among Customers Without Complaints

SELECT
    ROUND(
        100.0 *
        SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_without_complaints
FROM bankease_customers
WHERE complaints_count = 0;


-- KPI-18: Digital Banking Adoption Rate

SELECT
    ROUND(
        100.0 *
        COUNT(*) FILTER (
            WHERE mobile_banking_usage = 1
               OR internet_banking_usage = 1
        )
        / COUNT(*),
        2
    ) AS digital_banking_adoption_percentage
FROM bankease_customers;


-- KPI-19: Campaign Response Rate

SELECT
    ROUND(
        100.0 *
        COUNT(*) FILTER (WHERE campaign_response = 1)
        / COUNT(*),
        2
    ) AS campaign_response_rate_percentage
FROM bankease_customers;


-- KPI-20: Overall Management KPI Summary

SELECT
    COUNT(*) AS total_customers,

    SUM(
        CASE WHEN churn_flag = 1
        THEN 1 ELSE 0 END
    ) AS churned_customers,

    SUM(
        CASE WHEN churn_flag = 0
        THEN 1 ELSE 0 END
    ) AS active_customers,

    ROUND(
        100.0 *
        SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_percentage,

    ROUND(
        100.0 *
        SUM(CASE WHEN churn_flag = 0 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS retention_rate_percentage,

    COUNT(*) FILTER (
        WHERE risk_level = 'High'
    ) AS high_risk_customers,

    ROUND(
        AVG(monthly_transactions),
        2
    ) AS avg_monthly_transactions,

    ROUND(
        AVG(satisfaction_score),
        2
    ) AS avg_satisfaction_score,

    ROUND(
        AVG(risk_score),
        2
    ) AS avg_risk_score

FROM bankease_customers;


-- =========================================================
-- END OF KPI QUERIES
-- =========================================================