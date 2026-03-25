CREATE DATABASE IF NOT EXISTS Oath;

USE Oath;

SHOW TABLES;

# first Query : Total rows in accounts
SELECT COUNT(*) as total_rows FROM accounts;

## second  Query : Total sales
SELECT SUM(total_amt_usd) as total_sales FROM orders;

## Third Query : Earliest order
SELECT MIN(occurred_at) as earliest_order FROM orders;

## Forth Query : Account names and order dates
SELECT accounts.name, orders.occurred_at
FROM accounts
JOIN orders ON accounts.id = orders.account_id
ORDER BY orders.occurred_at;
