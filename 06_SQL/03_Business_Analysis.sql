-- =========================================================
-- BankEase Financial Services
-- Customer Retention & Churn Analysis
-- File: 03_Business_Analysis.sql
-- Purpose: Answer key business questions using SQL
-- =========================================================


-- =========================================================
-- 1. OVERALL CUSTOMER SUMMARY
-- =========================================================

SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) AS churned_customers,
    SUM(CASE WHEN churn_flag = 0 THEN 1 ELSE 0 END) AS active_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM bankease_customers;


-- =========================================================
-- 2. CHURN BY ACCOUNT TYPE
-- =========================================================

SELECT
    account_type,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM bankease_customers
GROUP BY account_type
ORDER BY churn_rate_percentage DESC;


-- =========================================================
-- 3. CHURN BY AGE GROUP
-- =========================================================

SELECT
    CASE
        WHEN age < 25 THEN '18-24'
        WHEN age BETWEEN 25 AND 34 THEN '25-34'
        WHEN age BETWEEN 35 AND 44 THEN '35-44'
        WHEN age BETWEEN 45 AND 54 THEN '45-54'
        WHEN age >= 55 THEN '55+'
    END AS age_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM bankease_customers
GROUP BY age_group
ORDER BY churn_rate_percentage DESC;


-- =========================================================
-- 4. CHURN BY TENURE
-- =========================================================

SELECT
    CASE
        WHEN tenure_years < 2 THEN 'Less than 2 years'
        WHEN tenure_years BETWEEN 2 AND 5 THEN '2-5 years'
        WHEN tenure_years BETWEEN 5 AND 10 THEN '5-10 years'
        ELSE '10+ years'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM bankease_customers
GROUP BY tenure_group
ORDER BY churn_rate_percentage DESC;


-- =========================================================
-- 5. CHURN BY TRANSACTION ACTIVITY
-- =========================================================

SELECT
    CASE
        WHEN monthly_transactions < 5 THEN 'Low Activity'
        WHEN monthly_transactions BETWEEN 5 AND 15 THEN 'Medium Activity'
        ELSE 'High Activity'
    END AS transaction_activity_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_percentage,
    ROUND(AVG(monthly_transactions), 2) AS avg_monthly_transactions
FROM bankease_customers
GROUP BY transaction_activity_group
ORDER BY churn_rate_percentage DESC;


-- =========================================================
-- 6. CHURN BY MOBILE BANKING USAGE
-- =========================================================

SELECT
    CASE
        WHEN mobile_banking_usage = 1 THEN 'Uses Mobile Banking'
        ELSE 'Does Not Use Mobile Banking'
    END AS mobile_banking_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM bankease_customers
GROUP BY mobile_banking_usage
ORDER BY churn_rate_percentage DESC;


-- =========================================================
-- 7. CHURN BY INTERNET BANKING USAGE
-- =========================================================

SELECT
    CASE
        WHEN internet_banking_usage = 1 THEN 'Uses Internet Banking'
        ELSE 'Does Not Use Internet Banking'
    END AS internet_banking_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM bankease_customers
GROUP BY internet_banking_usage
ORDER BY churn_rate_percentage DESC;


-- =========================================================
-- 8. CHURN BY NUMBER OF PRODUCTS
-- =========================================================

SELECT
    number_of_products,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM bankease_customers
GROUP BY number_of_products
ORDER BY number_of_products;


-- =========================================================
-- 9. CHURN BY COMPLAINTS
-- =========================================================

SELECT
    CASE
        WHEN complaints_count = 0 THEN 'No Complaints'
        WHEN complaints_count = 1 THEN '1 Complaint'
        ELSE '2+ Complaints'
    END AS complaint_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM bankease_customers
GROUP BY complaint_group
ORDER BY churn_rate_percentage DESC;


-- =========================================================
-- 10. CHURN BY SATISFACTION SCORE
-- =========================================================

SELECT
    CASE
        WHEN satisfaction_score < 2.5 THEN 'Low Satisfaction'
        WHEN satisfaction_score < 4 THEN 'Medium Satisfaction'
        ELSE 'High Satisfaction'
    END AS satisfaction_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM bankease_customers
GROUP BY satisfaction_group
ORDER BY churn_rate_percentage DESC;


-- =========================================================
-- 11. CHURN BY RISK LEVEL
-- =========================================================

SELECT
    risk_level,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_percentage,
    ROUND(AVG(risk_score), 2) AS average_risk_score
FROM bankease_customers
GROUP BY risk_level
ORDER BY average_risk_score DESC;


-- =========================================================
-- 12. HIGH-RISK CUSTOMER PROFILE
-- =========================================================

SELECT
    COUNT(*) AS high_risk_customers,
    ROUND(AVG(age), 2) AS average_age,
    ROUND(AVG(tenure_years), 2) AS average_tenure,
    ROUND(AVG(monthly_transactions), 2) AS average_monthly_transactions,
    ROUND(AVG(complaints_count), 2) AS average_complaints,
    ROUND(AVG(satisfaction_score), 2) AS average_satisfaction,
    ROUND(AVG(risk_score), 2) AS average_risk_score
FROM bankease_customers
WHERE risk_level = 'High';


-- =========================================================
-- 13. CAMPAIGN RESPONSE VS CHURN
-- =========================================================

SELECT
    CASE
        WHEN campaign_response = 1 THEN 'Responded'
        ELSE 'Did Not Respond'
    END AS campaign_response_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM bankease_customers
GROUP BY campaign_response
ORDER BY churn_rate_percentage DESC;


-- =========================================================
-- 14. CITY-LEVEL CHURN ANALYSIS
-- =========================================================

SELECT
    city,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM bankease_customers
GROUP BY city
ORDER BY churn_rate_percentage DESC;


-- =========================================================
-- 15. POTENTIALLY AT-RISK CUSTOMER SEGMENTS
-- =========================================================

SELECT
    account_type,
    risk_level,
    COUNT(*) AS customer_count,
    ROUND(AVG(risk_score), 2) AS average_risk_score,
    ROUND(AVG(monthly_transactions), 2) AS average_transactions,
    ROUND(AVG(satisfaction_score), 2) AS average_satisfaction
FROM bankease_customers
WHERE risk_level IN ('High', 'Medium')
GROUP BY account_type, risk_level
ORDER BY average_risk_score DESC;


-- =========================================================
-- 16. CUSTOMER BEHAVIOR: ACTIVE VS CHURNED
-- =========================================================

SELECT
    customer_status,
    COUNT(*) AS customer_count,
    ROUND(AVG(tenure_years), 2) AS avg_tenure,
    ROUND(AVG(number_of_products), 2) AS avg_products,
    ROUND(AVG(monthly_transactions), 2) AS avg_monthly_transactions,
    ROUND(AVG(avg_monthly_balance), 2) AS avg_monthly_balance,
    ROUND(AVG(last_transaction_days), 2) AS avg_days_since_transaction,
    ROUND(AVG(complaints_count), 2) AS avg_complaints,
    ROUND(AVG(satisfaction_score), 2) AS avg_satisfaction
FROM bankease_customers
GROUP BY customer_status;


-- =========================================================
-- 17. DIGITAL ENGAGEMENT AND CHURN
-- =========================================================

SELECT
    CASE
        WHEN mobile_banking_usage = 1
         AND internet_banking_usage = 1
            THEN 'Both Digital Channels'
        WHEN mobile_banking_usage = 1
            THEN 'Mobile Only'
        WHEN internet_banking_usage = 1
            THEN 'Internet Only'
        ELSE 'No Digital Banking'
    END AS digital_engagement_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM bankease_customers
GROUP BY digital_engagement_group
ORDER BY churn_rate_percentage DESC;


-- =========================================================
-- 18. RECENCY OF CUSTOMER ACTIVITY
-- =========================================================

SELECT
    CASE
        WHEN last_transaction_days <= 7 THEN '0-7 Days'
        WHEN last_transaction_days <= 30 THEN '8-30 Days'
        WHEN last_transaction_days <= 60 THEN '31-60 Days'
        ELSE '60+ Days'
    END AS activity_recency_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM bankease_customers
GROUP BY activity_recency_group
ORDER BY churn_rate_percentage DESC;


-- =========================================================
-- END OF BUSINESS ANALYSIS
-- =========================================================