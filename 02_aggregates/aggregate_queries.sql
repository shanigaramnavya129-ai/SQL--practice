-- SQL Practice: Aggregate Functions

-- Q2.1
-- Business Question:
-- What is the total revenue, average order value,
-- and number of transactions overall?

SELECT
    SUM(TotalAmount) AS TotalRevenue,
    AVG(TotalAmount) AS AvgOrderValue,
    COUNT(InvoiceNo) AS TotalTransactions
FROM Sales;


-- Q2.2
-- Business Question:
-- What are the highest and lowest single transaction amounts,
-- and how far apart are they from the average?

SELECT
    MAX(TotalAmount) AS MaxOrder,
    MIN(TotalAmount) AS MinOrder,
    AVG(TotalAmount) AS AvgOrder,
    MAX(TotalAmount) - AVG(TotalAmount) AS GapAboveAvg
FROM Sales;
