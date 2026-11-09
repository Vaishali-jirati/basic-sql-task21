# Basic SQL SELECT (Chinook Database, MySQL)

## Overview
10 simple SQL queries using SELECT, WHERE and ORDER BY on the Chinook sample database
(a digital music store) in MySQL Workbench.

## Files
- queries.sql: all 10 queries
- outputs: query1.png to query10.png screenshot of each query output

## Setup
- Database: Chinook (script Chinook_MySql_AutoIncrementPKs.sql, version 1.4.5)
- Tool: MySQL Workbench with MySQL 8.0
- 11 tables created (Customer, Invoice, Track, Artist, Album, Employee and others)

## Queries and results
| # | What it does | SQL used | Rows returned |
|---|---|---|---|
| 1 | All columns, first 10 customers | SELECT *, LIMIT | 10 |
| 2 | Selected columns from Customer | SELECT | 59 |
| 3 | Unique countries | DISTINCT, ORDER BY | 24 |
| 4 | Customers in Brazil | WHERE = | 5 |
| 5 | Tracks priced above 0.99 | WHERE >, ORDER BY, LIMIT | 20 |
| 6 | Tracks between 200000 and 250000 ms | BETWEEN, ORDER BY, LIMIT | 20 |
| 7 | Customers from USA, Canada or Brazil | IN, ORDER BY | 26 |
| 8 | Artists starting with A | LIKE | 26 |
| 9 | Employees sorted by last name | ORDER BY ASC | 8 |
| 10 | Invoices in 2023 | WHERE with dates, ORDER BY, LIMIT | 20 |

## Notes
- Queries 5, 6 and 10 use LIMIT 20 because the full result is large.
- The invoice dates in this version of Chinook are from 2021 to 2025, so query 10 uses 2023.

## What I learned
- SELECT chooses which columns to show
- WHERE filters rows, and ORDER BY sorts the result (ASC is the default, DESC is reverse)
