# Task-6
Sure! Here’s a clean, professional README description you can use for your GitHub repo related to the **online\_sales** table and the query you’re working with:

---

# Online Sales Data Analysis

This repository contains SQL scripts and queries for analyzing online sales data stored in the `online_sales` table. The dataset tracks transactions including product details, sales revenue, and other key metrics useful for business insights.

## Table Schema

The `online_sales` table includes the following columns:

* `transaction_id` (INT): Unique identifier for each transaction.
* `date` (DATE): Date of the transaction.
* `product_category` (VARCHAR): Category of the product sold.
* `product_name` (VARCHAR): Name of the product.
* `units_sold` (INT): Number of units sold.
* `unit_price` (DECIMAL): Price per unit.
* `total_revenue` (DECIMAL): Total revenue generated from the transaction.
* `region` (VARCHAR): Sales region.
* `payment_method` (VARCHAR): Payment method used.

## SQL Queries

The repository includes SQL queries that:

* Calculate monthly total revenue and transaction volume grouped by year and month.
* Support filtering by specific date ranges.

Example query to get monthly revenue and volume:

```sql
SELECT
  YEAR(date) AS order_year,
  EXTRACT(MONTH FROM date) AS order_month,
  SUM(total_revenue) AS total_revenue,
  COUNT(DISTINCT transaction_id) AS transaction_volume
FROM
  online_sales
GROUP BY
  order_year,
  order_month
ORDER BY
  order_year,
  order_month;
```
![{1387D11F-468C-4FB6-ADE5-17A486738793}](https://github.com/user-attachments/assets/12d5b453-ecdd-437c-9023-8824ec884334)
![{F2A33982-A53E-4A75-B467-04D964109162}](https://github.com/user-attachments/assets/f7b92d7c-039a-43d4-ac66-c2684859b410)

## Usage

Use these queries to generate monthly sales reports, track trends, and support business decision-making processes.

---


