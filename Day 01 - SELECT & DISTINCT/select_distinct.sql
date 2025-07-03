-- Day 01: SELECT Statement Basics

-- 1. Select all columns from the table
SELECT * FROM Employees;

-- 2. Select specific columns
SELECT FirstName, LastName FROM Employees;

-- 3. Rename columns using AS (alias)
SELECT FirstName AS 'First Name', LastName AS 'Last Name' FROM Employees;

-- 4. Select DISTINCT values from a column
SELECT DISTINCT Department FROM Employees;

-- 5. Add a literal column
SELECT FirstName, 'India' AS Country FROM Employees;

-- 6. Use expressions in SELECT
SELECT FirstName, Salary, Salary * 1.10 AS 'Updated Salary' FROM Employees;

-- 7. Order by SELECTed columns (basic preview of ORDER BY)
SELECT * FROM Employees ORDER BY FirstName;

-- Dummy data assumed: ID, FirstName, LastName, Department, Salary
