# Banking Customer Churn & Retention Analytics Dashboard

## Overview

This project analyzes banking customer churn to identify which customer groups are more likely to leave and what retention actions a bank could take. The goal is to turn raw customer data into business-ready insights using Python analysis, dashboard-ready outputs, and future Power BI reporting.

## Business Problem

Banks lose revenue when customers leave. By analyzing churn patterns across customer demographics, geography, account activity, product usage, and balance groups, this project helps identify high-risk customer segments and possible retention opportunities.

## Dataset

The dataset contains 10,000 banking customers and 14 columns.

Target column:

- `Exited`
  - `1` = customer left the bank
  - `0` = customer stayed

## Tools Used

- Python
- pandas
- Jupyter Notebook
- CSV
- Power BI planned
- SQL planned

## Key KPI

- Overall churn rate: **20.37%**

## Key Insights

- Germany has the highest churn rate at **32.44%**.
- Inactive customers churn more than active customers: **26.85% vs 14.27%**.
- Customers aged **51–60** have the highest churn rate at **56.21%**.
- Customers with **3 or 4 products** show extremely high churn and need further investigation.
- Customers with **100K–150K balance** show a meaningful churn rate of **25.77%**.
- Credit card ownership alone does not appear to be a major churn driver.

## Business Recommendations

- Prioritize reactivation campaigns for inactive customers.
- Investigate Germany-specific churn drivers such as service experience, fees, product fit, or competition.
- Review product bundling and satisfaction for customers with 3–4 products.
- Create targeted retention offers for customers aged 41–60.
- Monitor high-balance customers because churn in this group may affect business value.

## Project Structure

```text
banking-churn-dashboard
├── Data
│   └── Churn_Modelling.csv
├── Notebook
│   └── 1_notebook_inspection.ipynb
├── docs
│   └── project_notes.md
├── outputs
│   ├── banking_churn_cleaned.csv
│   └── insights_summary.csv
├── powerbi
├── sql
└── README.md