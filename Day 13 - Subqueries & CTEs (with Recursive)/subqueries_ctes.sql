-- Subquery in WHERE
SELECT * FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);

-- Subquery in SELECT
SELECT FirstName, Salary,
  (SELECT MAX(Salary) FROM Employees) AS MaxSalary
FROM Employees;

-- CTE to get high earners
WITH HighEarners AS (
    SELECT FirstName, Salary FROM Employees
    WHERE Salary > 50000
)
SELECT * FROM HighEarners;

-- Recursive CTE example
WITH RECURSIVE Numbers AS (
    SELECT 1 AS Num
    UNION ALL
    SELECT Num + 1 FROM Numbers WHERE Num < 5
)
SELECT * FROM Numbers;

-- Correlated Subquery
SELECT FirstName, Salary
FROM Employees E1
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees E2
    WHERE E1.DepartmentID = E2.DepartmentID
);


