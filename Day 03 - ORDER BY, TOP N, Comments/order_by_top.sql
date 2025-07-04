-- Sort employees by salary ascending
SELECT * FROM Employees
ORDER BY Salary;

-- Sort employees by salary descending
SELECT * FROM Employees
ORDER BY Salary DESC;

-- Get top 3 highest paid employees (SQL Server)
SELECT TOP 3 * FROM Employees
ORDER BY Salary DESC;

-- MySQL/PostgreSQL
SELECT * FROM Employees
ORDER BY Salary DESC
LIMIT 3;

-- Oracle
SELECT * FROM Employees
ORDER BY Salary DESC
FETCH FIRST 3 ROWS ONLY;

-- Using comments
/* Fetch employees in IT department, sorted by LastName */
SELECT * FROM Employees
WHERE Department = 'IT'
ORDER BY LastName;
