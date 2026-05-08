# Banking Customer Churn & Retention Analytics Dashboard

## Project Purpose

Banks lose revenue when valuable customers leave. This project analyzes customer churn patterns to identify which customer groups are more likely to exit, what factors are associated with churn, and what retention actions the bank could take.

## Dataset

The dataset contains 10,000 banking customers and 14 columns, including customer demographics, credit score, account balance, product usage, active membership status, estimated salary, and churn status.

Target column:

- `Exited`
  - `1` = customer left the bank
  - `0` = customer stayed

## Tools Used

- Python
- pandas
- Jupyter Notebook
- CSV outputs
- Power BI planned
- SQL planned

## Key KPI

Overall churn rate: 20.37%

## Key Insights

1. Germany has the highest churn rate at 32.44%.
2. Female customers show higher churn than male customers.
3. Inactive customers churn much more than active customers.
4. Customers aged 51–60 have the highest churn rate at 56.21%.
5. Customers with 3 or 4 products show extremely high churn and need further investigation.
6. Credit card ownership alone does not appear to be a major churn driver.
7. Customers with 100K–150K balance show a meaningful churn rate of 25.77%.
8. Tenure varies but does not show the strongest churn pattern.

## Business Recommendations

- Prioritize reactivation campaigns for inactive customers.
- Investigate Germany-specific churn drivers such as service experience, fees, or product fit.
- Review product bundling and satisfaction for customers with 3–4 products.
- Create targeted retention offers for customers aged 41–60.
- Monitor high-balance customers because churn in this group may affect business value.

## Project Status

Current version completed:

- Dataset inspection
- Churn KPI calculation
- Segment-level churn analysis
- Insights summary CSV
- Cleaned dashboard-ready CSV

Next version:

- SQL analysis queries
- Power BI dashboard
- Dashboard screenshots
- GitHub README
- Portfolio case study page