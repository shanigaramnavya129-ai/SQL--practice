-- SQL Practice: JOINs

-- Q4.1
-- Business Question:
-- List each sale with its full date details
-- (year, month, day name) by joining to DimDate.

SELECT
    s.InvoiceNo,
    s.TotalAmount,
    d.Year,
    d.MonthName,
    d.DayName
FROM Sales s
INNER JOIN DimDate d
    ON s.InvoiceDate = d.Date;


-- Q4.2
-- Business Question:
-- Find customers who have never made a purchase
-- using a LEFT JOIN.

SELECT
    c.CustomerID,
    c.CustomerName
FROM Customers c
LEFT JOIN Sales s
    ON c.CustomerID = s.CustomerID
WHERE s.InvoiceNo IS NULL;
