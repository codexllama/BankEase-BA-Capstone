# BankEase-BA-Capstone
# BankEase Financial Services
## Customer Retention & Churn Analysis

> **Business Analyst Portfolio Capstone Project**

---

## 📌 Project Overview

BankEase Financial Services is a fictional retail banking organization facing challenges in understanding and managing customer churn.

Although the organization continues to acquire customers, a portion of its customer base becomes inactive or leaves. Existing reporting provides limited visibility into the behavioral and service-related patterns associated with churn.

This project demonstrates how a Business Analyst can approach the problem from end to end:

**Business Problem → Stakeholder Analysis → Requirements → Process Analysis → Data Analysis → SQL → Power BI → Business Insights → Recommendations**

The project uses a **synthetic customer dataset** created specifically for portfolio and learning purposes.

> ⚠️ This is a fictional case study. The customer data and business results do not represent real BankEase customers or real banking statistics.

---

# 🎯 Business Problem

BankEase currently faces several challenges in understanding customer churn:

- Limited visibility into customer churn trends
- Reactive rather than proactive retention activities
- Fragmented customer information
- Limited behavioral customer segmentation
- Difficulty identifying potentially at-risk customers
- Customer complaint and satisfaction information not easily connected with behavioral data
- Inconsistent KPI definitions
- Data quality and validation concerns

Management needs a structured, data-driven approach to understand churn patterns and support customer retention decisions.

---

# 🎯 Business Objectives

The project aims to:

1. Analyze customer churn patterns.
2. Identify customer segments associated with higher observed churn.
3. Analyze behavioral indicators such as transaction frequency and activity recency.
4. Examine relationships between complaints, satisfaction, digital usage, products, and churn.
5. Identify potentially at-risk customer groups.
6. Build an interactive Power BI dashboard for management decision support.
7. Recommend a future-state customer retention process.
8. Establish standardized KPIs for ongoing monitoring.

---

# ❓ Key Business Questions

The analysis was designed to answer questions such as:

- Which customer segments have higher observed churn?
- Does activity recency vary between retained and churned customers?
- Is transaction frequency associated with churn?
- How does tenure relate to observed churn?
- Does mobile or internet banking usage differ across customer groups?
- Is complaint frequency associated with churn?
- How does satisfaction score relate to churn?
- Does the number of products held relate to churn?
- Which customers fall into high-risk categories?
- Which customer groups should be prioritized for retention analysis?
- What KPIs should management monitor?

---

# 👥 Stakeholder Analysis

## Key Stakeholders

| Stakeholder | Role | Primary Interest |
|---|---|---|
| Head of Retail Banking | Executive Sponsor | Churn visibility and business performance |
| Customer Success Manager | Process Owner | Customer retention |
| Marketing Manager | Business Stakeholder | Customer segmentation and campaigns |
| Customer Service Manager | Business Stakeholder | Complaints and satisfaction |
| Data Analyst | Technical/Data Stakeholder | Data quality and analysis |
| IT Manager | Technical Stakeholder | Data and system support |
| Business Analyst | Project Analyst | Requirements, analysis and documentation |
| Customers | End Users | Better customer experience |

### Power-Interest Analysis

**Manage Closely**
- Head of Retail Banking
- Customer Success Manager
- Data Analyst
- Business Analyst

**Keep Satisfied**
- Marketing Manager
- Customer Service Manager
- IT Manager

**Keep Informed**
- Customers

---

# 📋 Requirements Analysis

The project includes a structured requirements management process.

## Business Requirements

Examples include:

- Centralized churn visibility
- Churn trend analysis
- Customer segmentation
- Behavioral analysis
- Customer experience analysis
- At-risk customer identification
- Retention decision support
- KPI standardization
- Data quality validation
- Management reporting

## Functional Requirements

The project contains **20 functional requirements**, covering areas such as:

- Customer counting
- Churn calculation
- Churn trend analysis
- Customer segmentation
- Transaction analysis
- Digital usage analysis
- Tenure analysis
- Product usage analysis
- Complaint analysis
- Satisfaction analysis
- At-risk identification
- Risk prioritization
- Retention decision support
- KPI definition
- Data validation
- Customer ID validation
- Management dashboard

## Non-Functional Requirements

The project also defines requirements covering:

- Performance
- Usability
- Reliability
- Data quality
- Security
- Maintainability
- Scalability
- Compatibility

## User Stories

15 user stories were created to translate business needs into user-focused requirements.

Example:

> **As a** Customer Success Manager  
> **I want** to identify potentially high-risk customers  
> **So that** I can prioritize retention activities.

## Requirements Traceability Matrix

An RTM was created to connect:

**Business Need → Business Requirement → Functional Requirement → User Story → Acceptance Criteria**

This provides traceability throughout the requirements lifecycle.

---

# 🔄 Process Analysis

## As-Is Process

The existing process was modeled as:

```text
Customer Activity
       ↓
Data Collection
       ↓
Periodic Reporting
       ↓
Manual Analysis
       ↓
Identify Possible Churn
       ↓
Customer Contact
       ↓
Customer Response
       ↓
Outcome Recorded

# BankEase Financial Services
## Customer Retention & Churn Analysis

> **Business Analyst Portfolio Capstone Project**

---

## 📌 Project Overview

BankEase Financial Services is a fictional retail banking organization facing challenges in understanding and managing customer churn.

Although the organization continues to acquire customers, a portion of its customer base becomes inactive or leaves. Existing reporting provides limited visibility into the behavioral and service-related patterns associated with churn.

This project demonstrates how a Business Analyst can approach the problem from end to end:

**Business Problem → Stakeholder Analysis → Requirements → Process Analysis → Data Analysis → SQL → Power BI → Business Insights → Recommendations**

The project uses a **synthetic customer dataset** created specifically for portfolio and learning purposes.

> ⚠️ This is a fictional case study. The customer data and business results do not represent real BankEase customers or real banking statistics.

---

# 🎯 Business Problem

BankEase currently faces several challenges in understanding customer churn:

- Limited visibility into customer churn trends
- Reactive rather than proactive retention activities
- Fragmented customer information
- Limited behavioral customer segmentation
- Difficulty identifying potentially at-risk customers
- Customer complaint and satisfaction information not easily connected with behavioral data
- Inconsistent KPI definitions
- Data quality and validation concerns

Management needs a structured, data-driven approach to understand churn patterns and support customer retention decisions.

---

# 🎯 Business Objectives

The project aims to:

1. Analyze customer churn patterns.
2. Identify customer segments associated with higher observed churn.
3. Analyze behavioral indicators such as transaction frequency and activity recency.
4. Examine relationships between complaints, satisfaction, digital usage, products, and churn.
5. Identify potentially at-risk customer groups.
6. Build an interactive Power BI dashboard for management decision support.
7. Recommend a future-state customer retention process.
8. Establish standardized KPIs for ongoing monitoring.

---

# ❓ Key Business Questions

The analysis was designed to answer questions such as:

- Which customer segments have higher observed churn?
- Does activity recency vary between retained and churned customers?
- Is transaction frequency associated with churn?
- How does tenure relate to observed churn?
- Does mobile or internet banking usage differ across customer groups?
- Is complaint frequency associated with churn?
- How does satisfaction score relate to churn?
- Does the number of products held relate to churn?
- Which customers fall into high-risk categories?
- Which customer groups should be prioritized for retention analysis?
- What KPIs should management monitor?

---

# 👥 Stakeholder Analysis

## Key Stakeholders

| Stakeholder | Role | Primary Interest |
|---|---|---|
| Head of Retail Banking | Executive Sponsor | Churn visibility and business performance |
| Customer Success Manager | Process Owner | Customer retention |
| Marketing Manager | Business Stakeholder | Customer segmentation and campaigns |
| Customer Service Manager | Business Stakeholder | Complaints and satisfaction |
| Data Analyst | Technical/Data Stakeholder | Data quality and analysis |
| IT Manager | Technical Stakeholder | Data and system support |
| Business Analyst | Project Analyst | Requirements, analysis and documentation |
| Customers | End Users | Better customer experience |

### Power-Interest Analysis

**Manage Closely**
- Head of Retail Banking
- Customer Success Manager
- Data Analyst
- Business Analyst

**Keep Satisfied**
- Marketing Manager
- Customer Service Manager
- IT Manager

**Keep Informed**
- Customers

---

# 📋 Requirements Analysis

The project includes a structured requirements management process.

## Business Requirements

Examples include:

- Centralized churn visibility
- Churn trend analysis
- Customer segmentation
- Behavioral analysis
- Customer experience analysis
- At-risk customer identification
- Retention decision support
- KPI standardization
- Data quality validation
- Management reporting

## Functional Requirements

The project contains **20 functional requirements**, covering areas such as:

- Customer counting
- Churn calculation
- Churn trend analysis
- Customer segmentation
- Transaction analysis
- Digital usage analysis
- Tenure analysis
- Product usage analysis
- Complaint analysis
- Satisfaction analysis
- At-risk identification
- Risk prioritization
- Retention decision support
- KPI definition
- Data validation
- Customer ID validation
- Management dashboard

## Non-Functional Requirements

The project also defines requirements covering:

- Performance
- Usability
- Reliability
- Data quality
- Security
- Maintainability
- Scalability
- Compatibility

## User Stories

15 user stories were created to translate business needs into user-focused requirements.

Example:

> **As a** Customer Success Manager  
> **I want** to identify potentially high-risk customers  
> **So that** I can prioritize retention activities.

## Requirements Traceability Matrix

An RTM was created to connect:

**Business Need → Business Requirement → Functional Requirement → User Story → Acceptance Criteria**

This provides traceability throughout the requirements lifecycle.

---

# 🔄 Process Analysis

## As-Is Process

The existing process was modeled as:

```text
Customer Activity
       ↓
Data Collection
       ↓
Periodic Reporting
       ↓
Manual Analysis
       ↓
Identify Possible Churn
       ↓
Customer Contact
       ↓
Customer Response
       ↓
Outcome Recorded

Gap Analysis

The analysis identified 10 major gaps:

Reactive retention process
Fragmented customer information
Retrospective reporting
Limited customer segmentation
Transaction behavior not linked effectively to churn analysis
Complaints and satisfaction disconnected from behavioral analysis
Inconsistent at-risk identification
Inconsistent KPI definitions
Data quality issues
Limited retention feedback loop

To-Be Process

The proposed future-state process is:

Customer Activity
       ↓
Data Integration
       ↓
Data Quality Validation
       ↓
Centralized Analysis
       ↓
Churn & Risk Analysis
       ↓
Prioritize At-Risk Customers
       ↓
Targeted Retention Action
       ↓
Track Outcome
       ↓
Management Dashboard
       ↺
Continuous Improvement
Expected Process Improvements
Centralized customer information
Standardized data validation
Behavioral segmentation
Earlier identification of potentially at-risk customers
Targeted retention activities
Outcome tracking
Continuous feedback into analysis

SQL Analysis

PostgreSQL was used for structured data analysis.

Database
Database: bankease_ba
Table: public.bankease_customers

The dataset was imported into PostgreSQL and validated before analysis.

Example Analysis Areas

SQL was used to analyze:

Customer counts
Churn rates
Activity recency
Account types
Tenure
Complaints
Satisfaction
Product ownership
Risk levels
Customer behavior
Example Finding
Activity Recency	Customers	Churned	Observed Churn Rate
0–7 Days	2,085	35	1.68%
8–30 Days	4,070	120	2.95%
31–60 Days	2,325	110	4.73%
60+ Days	1,520	326	21.45%

Customers with longer periods since their last transaction showed higher observed churn rates in this synthetic dataset.

Important: This represents an observed association in the dataset and does not establish that inactivity causes churn.

Power BI Dashboard

Power BI was used to create an interactive customer retention and churn dashboard.

Dashboard Pages
Page 1 — Executive Overview

Includes:

Total Customers
Churn Rate
Retention Rate
High-Risk Customers
Average Satisfaction
Churned Customers by Account Type
Churned Customers by Activity Recency
Churned Customers by Tenure
Churned Customers by Mobile Banking Usage
Churned Customers by Complaint Level
Account Type slicer
Risk Level slicer
Page 2 — Churn Analysis

Includes:

Churn Rate by Account Type
Churn Rate by Activity Recency
Churn Rate by Tenure
Churn Rate by Satisfaction Score
Churn Rate by Number of Products
Churn Rate by Complaint Level
Page 3 — Customer Risk & Retention

Includes:

Customers by Risk Level
Churn Rate by Risk Level
Average Risk Score by Account Type
High-Risk Customers by Account Type
📌 Key Dashboard KPIs
KPI	Result
Total Customers	10,000
Observed Churn Rate	5.91%
Observed Retention Rate	94.09%
High-Risk Customers	125
Average Satisfaction	4.0 / 5

These values are calculated from the synthetic portfolio dataset.

Key Business Findings
1. Activity Recency

Customers with longer periods since their last transaction showed substantially higher observed churn rates.

The synthetic dataset showed:

0–7 days: 1.68%
8–30 days: 2.95%
31–60 days: 4.73%
60+ days: 21.45%
Business Interpretation

Transaction recency can be considered as an indicator for identifying potentially at-risk customers.

📞 2. Complaint Frequency

Observed churn varied by complaint frequency.

Complaint Level	Observed Churn
0 Complaints	4.18%
1 Complaint	~5–6%
2+ Complaints	15.00%

Customers with 2+ complaints showed a higher observed churn rate than customers with no complaints.

Business Interpretation

Complaint frequency can be incorporated into retention prioritization and customer experience monitoring.

⚠️ 3. Risk Level

Observed churn varied substantially across the synthetic risk groups.

Risk Level	Observed Churn
Low	3.62%
Medium	24.61%
High	68.90%
Business Interpretation

The risk classification can provide a structured way to prioritize customers for further retention analysis.

The risk score in this portfolio project is based on the synthetic dataset's defined scoring logic and would require validation before being used in a real banking environment.

💡 Business Recommendations
Recommendation 1 — Monitor Activity Recency

Introduce activity-recency monitoring to identify customers showing prolonged periods without transactions.

Potential approach:

Normal Activity
      ↓
Reduced Activity
      ↓
Extended Inactivity
      ↓
Retention Review
Recommendation 2 — Prioritize High-Risk Customers

Use the existing risk classification as an analytical prioritization mechanism.

Customers can be reviewed based on:

Risk level
Activity recency
Transaction frequency
Complaints
Satisfaction
Product ownership
Digital engagement
Recommendation 3 — Introduce Complaint-Based Retention Triggers

Customers with repeated complaints can be prioritized for service recovery analysis.

For example:

Complaint Received
        ↓
Complaint Count Updated
        ↓
Customer Risk Reviewed
        ↓
Retention Priority Evaluated
        ↓
Appropriate Follow-Up
Recommendation 4 — Establish a Closed Feedback Loop

Retention outcomes should be recorded and fed back into future analysis.

Identify At-Risk Customer
        ↓
Retention Action
        ↓
Customer Response
        ↓
Outcome Recorded
        ↓
Analysis Updated
        ↓
Process Improved
Recommendation 5 — Standardize KPIs

Management should use consistent definitions for metrics such as:

Churn Rate
Retention Rate
Active Customer Rate
High-Risk Customer Count
Complaint Rate
Average Satisfaction
Transaction Frequency

A KPI dictionary should be maintained so that different teams do not calculate the same metric differently.

📅 Implementation Roadmap
Phase 1 — Data Foundation
Validate customer data
Standardize Customer ID
Establish data-quality rules
Define KPI calculations
Phase 2 — Analytics
Build SQL analysis
Create customer segmentation
Analyze churn patterns
Establish risk indicators
Phase 3 — Dashboard
Develop Power BI dashboard
Add management KPIs
Add interactive filtering
Validate dashboard numbers against SQL
Phase 4 — Retention Process
Define at-risk review process
Introduce retention prioritization
Track customer outcomes
Phase 5 — Continuous Improvement
Monitor retention KPIs
Review campaign outcomes
Analyze changing churn patterns
Improve segmentation and retention rules
📦 BA Deliverables

The project contains the following deliverables:

01_Business_Analysis
│
└── Project Charter

02_Stakeholder_Analysis
│
├── Stakeholder Register
├── Stakeholder Interviews
└── Stakeholder Pain Points

03_Requirements
│
├── Business Requirements Document
├── Functional Requirements
├── Non-Functional Requirements
├── User Stories
└── Requirements Traceability Matrix

04_Process_Analysis
│
├── As-Is Process Map
├── Gap Analysis
└── To-Be Process Map

05_Data
│
├── Data Dictionary
├── Customer Dataset
└── Data Quality Report

06_SQL
│
├── Create Table
├── Data Validation
├── Business Analysis
└── KPI Queries

07_PowerBI
│
└── BankEase Churn Dashboard

08_Reports
│
└── Business Insights & Recommendations

09_Presentation
│
└── BankEase Customer Retention Case Study
🛠️ Tools & Technologies
Tool	Purpose
Microsoft Word	Business documentation
Microsoft Excel	Stakeholder and requirements analysis
Draw.io	Process mapping
PostgreSQL	Data storage and SQL analysis
SQL	Data validation and business analysis
Power BI	Interactive dashboard and visualization
PowerPoint	Business presentation
GitHub	Portfolio and project version control
👨‍💼 Business Analyst Skills Demonstrated

This project demonstrates practical exposure to:

Business Analysis
Problem definition
Business objective identification
Business question formulation
Business insights
Recommendation development
Stakeholder Management
Stakeholder identification
Stakeholder interviews
Power-Interest analysis
Stakeholder pain-point analysis
Requirements Engineering
Business requirements
Functional requirements
Non-functional requirements
User stories
Acceptance criteria
Requirements Traceability Matrix
Process Analysis
As-Is process mapping
Gap analysis
To-Be process design
Process improvement
Data Analysis
Data dictionary creation
Data quality validation
SQL analysis
KPI development
Customer segmentation
Visualization & Reporting
Power BI dashboards
Interactive filtering
KPI visualization
Business reporting
Management presentations
Decision Support
Churn analysis
Risk prioritization
Retention recommendations
KPI monitoring framework
⚠️ Project Limitations

This project is a portfolio case study and has several limitations.

Synthetic Data

The dataset is artificially generated and does not represent real BankEase customers.

Association vs Causation

Observed relationships between variables and churn should not automatically be interpreted as causal relationships.

Risk Model

The risk score is based on a predefined synthetic scoring approach and has not been validated against real-world customer outcomes.

Portfolio Scope

The project demonstrates the Business Analyst workflow but does not represent a production banking system.

Real-World Implementation

A real banking implementation would require additional considerations including:

Data privacy
Access control
Regulatory requirements
Model validation
Data governance
Security
Production data pipelines
Monitoring and auditability
📊 Expected Business Benefits

If implemented and validated in a real environment, the proposed approach could support:

Better visibility into customer churn
More structured customer segmentation
Earlier identification of potentially at-risk customers
Better coordination between customer service and retention teams
More consistent KPI reporting
Improved management decision support
More measurable retention activities

These are expected potential benefits, not measured outcomes from this synthetic project.

🎓 Project Outcome

The BankEase case study demonstrates an end-to-end Business Analyst approach to a customer retention problem.

The project moves beyond dashboard creation by connecting:

Business Problem
      ↓
Stakeholders
      ↓
Requirements
      ↓
Process Analysis
      ↓
Data
      ↓
SQL
      ↓
Power BI
      ↓
Business Insights
      ↓
Recommendations
      ↓
Future-State Process

The key focus of the project is not simply analyzing data, but translating business problems into structured requirements, analyzing evidence, and converting findings into actionable business decision support.

📁 Repository Structure
BankEase-BA-Capstone/
│
├── 01_Business_Analysis/
├── 02_Stakeholder_Analysis/
├── 03_Requirements/
├── 04_Process_Analysis/
├── 05_Data/
├── 06_SQL/
├── 07_PowerBI/
├── 08_Reports/
├── 09_Presentation/
└── README.md
👤 Role

Business Analyst

Primary Responsibilities Demonstrated
Business problem analysis
Stakeholder analysis
Requirements elicitation and documentation
Process analysis
Gap analysis
Data dictionary development
Data quality analysis
SQL-based business analysis
Power BI dashboard development
Business insight generation
Recommendation development
Management reporting
📌 Final Summary

BankEase Financial Services — Customer Retention & Churn Analysis is a fictional Business Analyst portfolio project demonstrating how structured business analysis and data analytics can be combined to investigate customer churn and support retention decisions.

The project demonstrates the complete BA lifecycle from understanding the business problem through requirements, process analysis, data analysis, visualization, insights and recommendations.

Dataset: Synthetic
Project Type: Business Analyst Portfolio Case Study
Industry: Retail Banking / FinTech
Primary Tools: Excel, SQL, PostgreSQL, Power BI, Draw.io, PowerPoint, GitHub
