-- =========================================================
-- BankEase Financial Services
-- Customer Retention & Churn Analysis
-- File: 01_Create_Table.sql
-- Purpose: Create the customer analysis table
-- =========================================================

CREATE TABLE bankease_customers (
    Customer_ID INTEGER PRIMARY KEY,
    Age INTEGER,
    Gender VARCHAR(20),
    City VARCHAR(100),
    Account_Type VARCHAR(50),
    Tenure_Years DECIMAL(5,2),
    Number_of_Products INTEGER,
    Credit_Card INTEGER,
    Personal_Loan INTEGER,
    Home_Loan INTEGER,
    Mobile_Banking_Usage INTEGER,
    Internet_Banking_Usage INTEGER,
    Monthly_Transactions INTEGER,
    Avg_Monthly_Balance DECIMAL(12,2),
    Last_Transaction_Days INTEGER,
    Complaints_Count INTEGER,
    Avg_Complaint_Resolution_Days DECIMAL(6,2),
    Satisfaction_Score DECIMAL(3,2),
    Campaign_Response INTEGER,
    Customer_Status VARCHAR(20),
    Churn_Flag INTEGER,
    Churn_Date DATE,
    Risk_Level VARCHAR(20),
    Risk_Score DECIMAL(5,2),
    Last_Contact_Date DATE
);