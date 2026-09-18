# SQL Practice — Business Questions & Answers

This repository contains my SQL practice based on business-oriented
questions using a Sales dataset.

The goal is to strengthen SQL problem-solving skills by solving practical
data-related problems rather than only practicing syntax.

## SQL Topics Covered

### 1. SELECT, WHERE & ORDER BY
- Retrieve specific transaction information
- Filter transactions based on business conditions
- Sort and limit results

### 2. Aggregate Functions
- SUM
- AVG
- COUNT
- MAX
- MIN

Used for revenue, transaction and order-value analysis.

### 3. GROUP BY & HAVING
- Group sales by country
- Analyze customer order activity
- Filter aggregated results

### 4. JOINs
- Combine sales and dimension/customer information
- Use INNER JOIN
- Use LEFT JOIN
- Identify customers with no purchases

### 5. Subqueries
- Find transactions above the overall average
- Find the top-spending customer for each country

### 6. CTEs
- Calculate product revenue
- Calculate revenue contribution percentages
- Break complex queries into readable steps

### 7. Window Functions
- DENSE_RANK()
- LAG()
- SUM() OVER()

Used for:
- Top products by country
- Month-over-month revenue growth
- Running revenue totals

## Repository Structure

```text
SQL--practice/
│
├── 01_select_where/
│   └── basic_queries.sql
│
├── 02_aggregates/
│   └── aggregate_queries.sql
│
├── 03_group_by_having/
│   └── group_by_queries.sql
│
├── 04_joins/
│   └── join_queries.sql
│
├── 05_subqueries/
│   └── subquery_queries.sql
│
├── 06_ctes/
│   └── cte_queries.sql
│
└── 07_window_functions/
    └── window_function_queries.sql
