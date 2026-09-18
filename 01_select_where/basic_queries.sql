-- SQL Practice: SELECT, WHERE, ORDER BY

-- Q1.1
-- Business Question:
-- List the 10 most recent transactions.

SELECT TOP 10
    InvoiceNo,
    InvoiceDate,
    CustomerID,
    TotalAmount
FROM Sales
ORDER BY InvoiceDate DESC;


-- Q1.2
-- Business Question:
-- Find all transactions from the UK with a total amount greater than 500.

SELECT *
FROM Sales
WHERE Country = 'United Kingdom'
  AND TotalAmount > 500
ORDER BY TotalAmount DESC;
