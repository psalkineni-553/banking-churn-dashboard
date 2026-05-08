-- Banking Customer Churn & Retention Analytics
-- SQL Analysis Queries

-- 1. Overall churn rate
SELECT
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate_percent
FROM banking_churn;


-- 2. Churn rate by geography
SELECT
    Geography,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate_percent
FROM banking_churn
GROUP BY Geography
ORDER BY churn_rate_percent DESC;


-- 3. Churn rate by gender
SELECT
    Gender,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate_percent
FROM banking_churn
GROUP BY Gender
ORDER BY churn_rate_percent DESC;


-- 4. Churn rate by active membership
SELECT
    IsActiveMember,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate_percent
FROM banking_churn
GROUP BY IsActiveMember
ORDER BY churn_rate_percent DESC;


-- 5. Churn rate by number of products
SELECT
    NumOfProducts,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate_percent
FROM banking_churn
GROUP BY NumOfProducts
ORDER BY NumOfProducts;


-- 6. Churn rate by age group
SELECT
    CASE
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 40 THEN '30-40'
        WHEN Age BETWEEN 41 AND 50 THEN '41-50'
        WHEN Age BETWEEN 51 AND 60 THEN '51-60'
        ELSE '60+'
    END AS age_group,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate_percent
FROM banking_churn
GROUP BY age_group
ORDER BY churn_rate_percent DESC;


-- 7. Churn rate by balance group
SELECT
    CASE
        WHEN Balance = 0 THEN 'Zero Balance'
        WHEN Balance > 0 AND Balance <= 50000 THEN '1-50K'
        WHEN Balance > 50000 AND Balance <= 100000 THEN '50K-100K'
        WHEN Balance > 100000 AND Balance <= 150000 THEN '100K-150K'
        ELSE '150K+'
    END AS balance_group,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate_percent
FROM banking_churn
GROUP BY balance_group
ORDER BY churn_rate_percent DESC;


-- 8. Churn rate by tenure
SELECT
    Tenure,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate_percent
FROM banking_churn
GROUP BY Tenure
ORDER BY Tenure;


-- 9. High-risk customer segment example
SELECT
    CustomerId,
    Geography,
    Gender,
    Age,
    NumOfProducts,
    IsActiveMember,
    Balance,
    EstimatedSalary
FROM banking_churn
WHERE Exited = 1
  AND IsActiveMember = 0
  AND Age BETWEEN 41 AND 60
ORDER BY Balance DESC
LIMIT 20;


-- 10. Retention opportunity segment
SELECT
    CustomerId,
    Geography,
    Gender,
    Age,
    NumOfProducts,
    IsActiveMember,
    Balance,
    EstimatedSalary
FROM banking_churn
WHERE Exited = 0
  AND IsActiveMember = 0
  AND Balance > 100000
ORDER BY Balance DESC
LIMIT 20;