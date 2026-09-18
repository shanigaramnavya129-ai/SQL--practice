-- SQL Practice: GROUP BY and HAVING

-- Q3.1
-- Business Question:
-- Which countries generate more than 10,000 in total revenue?

SELECT
    Country,
    SUM(TotalAmount) AS Revenue
FROM Sales
GROUP BY Country
HAVING SUM(TotalAmount) > 10000
ORDER BY Revenue DESC;


-- Q3.2
-- Business Question:
-- Which customers have placed more than 5 orders,
-- and what is their average order value?

SELECT
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS OrderCount,
    AVG(TotalAmount) AS AvgOrderValue
FROM Sales
GROUP BY CustomerID
HAVING COUNT(DISTINCT InvoiceNo) > 5
ORDER BY OrderCount DESC;
