-- SQL Practice: Subqueries

-- Q5.1
-- Business Question:
-- Find all transactions above the overall average order value.

SELECT *
FROM Sales
WHERE TotalAmount > (
    SELECT AVG(TotalAmount)
    FROM Sales
);


-- Q5.2
-- Business Question:
-- For each country, find its top-spending customer.

SELECT
    Country,
    CustomerID,
    TotalSpent
FROM (
    SELECT
        Country,
        CustomerID,
        SUM(TotalAmount) AS TotalSpent,
        RANK() OVER (
            PARTITION BY Country
            ORDER BY SUM(TotalAmount) DESC
        ) AS rnk
    FROM Sales
    GROUP BY Country, CustomerID
) ranked
WHERE rnk = 1;
