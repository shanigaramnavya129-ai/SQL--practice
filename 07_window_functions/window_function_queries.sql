-- SQL Practice: Window Functions


-- Q7.1
-- Business Question:
-- Find the top 3 products by revenue in each country.

WITH RankedProducts AS (
    SELECT
        Country,
        StockCode,
        SUM(TotalAmount) AS Revenue,
        DENSE_RANK() OVER (
            PARTITION BY Country
            ORDER BY SUM(TotalAmount) DESC
        ) AS rnk
    FROM Sales
    GROUP BY Country, StockCode
)
SELECT *
FROM RankedProducts
WHERE rnk <= 3
ORDER BY Country, rnk;


-- Q7.2
-- Business Question:
-- Calculate month-over-month revenue growth.

WITH MonthlyRevenue AS (
    SELECT
        FORMAT(InvoiceDate, 'yyyy-MM') AS YearMonth,
        SUM(TotalAmount) AS Revenue
    FROM Sales
    GROUP BY FORMAT(InvoiceDate, 'yyyy-MM')
),
RevenueWithPrevious AS (
    SELECT
        YearMonth,
        Revenue,
        LAG(Revenue) OVER (
            ORDER BY YearMonth
        ) AS PreviousRevenue
    FROM MonthlyRevenue
)
SELECT
    YearMonth,
    Revenue,
    PreviousRevenue,
    ROUND(
        (Revenue - PreviousRevenue) * 100.0
        / NULLIF(PreviousRevenue, 0),
        2
    ) AS PctGrowth
FROM RevenueWithPrevious
ORDER BY YearMonth;


-- Q7.3
-- Business Question:
-- Calculate the running total of revenue by month.

WITH MonthlyRevenue AS (
    SELECT
        FORMAT(InvoiceDate, 'yyyy-MM') AS YearMonth,
        SUM(TotalAmount) AS Revenue
    FROM Sales
    GROUP BY FORMAT(InvoiceDate, 'yyyy-MM')
)
SELECT
    YearMonth,
    Revenue,
    SUM(Revenue) OVER (
        ORDER BY YearMonth
    ) AS RunningTotal
FROM MonthlyRevenue
ORDER BY YearMonth;
