USE chinook_autoincrement;
SHOW TABLES;

# 1.All columns, first 10 rows
SELECT * FROM Customer LIMIT 10;

-- 2. Selected columns
SELECT FirstName, LastName, Country, Email FROM Customer;

-- 3. Unique countries
SELECT DISTINCT Country FROM Customer ORDER BY Country;

-- 4. WHERE: customers in Brazil
SELECT FirstName, LastName, City FROM Customer WHERE Country = 'Brazil';

-- 5. WHERE + ORDER BY: tracks above 0.99
SELECT Name, UnitPrice FROM Track WHERE UnitPrice > 0.99 ORDER BY Name LIMIT 20;

-- 6. BETWEEN: tracks 200000 to 250000 milliseconds long
SELECT Name, Milliseconds FROM Track WHERE Milliseconds BETWEEN 200000 AND 250000 ORDER BY Milliseconds LIMIT 20;

-- 7. IN: customers from three countries
SELECT FirstName, LastName, Country FROM Customer WHERE Country IN ('USA', 'Canada', 'Brazil') ORDER BY Country, LastName;

-- 8. LIKE: artists starting with A
SELECT Name FROM Artist WHERE Name LIKE 'A%' ORDER BY Name;

-- 9. ORDER BY ASC: employees by last name
SELECT FirstName, LastName, Title FROM Employee ORDER BY LastName ASC;

-- 10. Date filter: invoices in 2023
SELECT InvoiceId, CustomerId, InvoiceDate, Total FROM Invoice
WHERE InvoiceDate >= '2023-01-01' AND InvoiceDate < '2024-01-01'
ORDER BY InvoiceDate LIMIT 20;
