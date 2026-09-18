-- SQL Practice: CTEs

-- Q6.1
-- Business Question:
-- Find the top 5 products by revenue.

WITH ProductRevenue AS (
    SELECT
        StockCode,
        Description,
        SUM(TotalAmount) AS Revenue
    FROM Sales
    GROUP BY StockCode, Description
)
SELECT TOP 5 *
FROM ProductRevenue
ORDER BY Revenue DESC;


-- Q6.2
-- Business Question:
-- Find each category's revenue and its percentage of total revenue.

WITH CategoryRevenue AS (
    SELECT
        Category,
        SUM(TotalAmount) AS Revenue
    FROM Sales
    GROUP BY Category
)
SELECT
    Category,
    Revenue,
    ROUND(
        Revenue * 100.0 / SUM(Revenue) OVER (),
        2
    ) AS PctOfTotal
FROM CategoryRevenue
ORDER BY Revenue DESC;
