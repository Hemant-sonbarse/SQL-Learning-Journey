-- RANK and DENSE_RANK
SELECT FirstName, Salary,
  RANK() OVER (ORDER BY Salary DESC) AS SalaryRank,
  DENSE_RANK() OVER (ORDER BY Salary DESC) AS DenseSalaryRank
FROM Employees;

-- ROW_NUMBER
SELECT FirstName, Salary,
  ROW_NUMBER() OVER (ORDER BY Salary DESC) AS RowNum
FROM Employees;

-- LAG and LEAD
SELECT FirstName, Salary,
  LAG(Salary) OVER (ORDER BY Salary) AS PrevSalary,
  LEAD(Salary) OVER (ORDER BY Salary) AS NextSalary
FROM Employees;

-- FIRST_VALUE and LAST_VALUE
SELECT FirstName, Salary,
  FIRST_VALUE(Salary) OVER (ORDER BY Salary) AS LowestSalary,
  LAST_VALUE(Salary) OVER (ORDER BY Salary ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS HighestSalary
FROM Employees;

-- Show rank of each employee within their department based on salary
SELECT 
  FirstName, LastName, Department, Salary,
  RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS DeptSalaryRank
FROM Employees;

-- Show cumulative salary (running total) within department
SELECT 
  FirstName, LastName, Department, Salary,
  SUM(Salary) OVER (PARTITION BY Department ORDER BY Salary DESC) AS RunningTotal
FROM Employees;

-- Find salary difference from previous employee (LAG)
SELECT 
  FirstName, LastName, Department, Salary,
  LAG(Salary, 1) OVER (PARTITION BY Department ORDER BY Salary DESC) AS PrevSalary,
  Salary - LAG(Salary, 1) OVER (PARTITION BY Department ORDER BY Salary DESC) AS SalaryDiff
FROM Employees;

-- Show first and last salary in department
SELECT 
  FirstName, LastName, Department, Salary,
  FIRST_VALUE(Salary) OVER (PARTITION BY Department ORDER BY Salary DESC) AS HighestInDept,
  LAST_VALUE(Salary) OVER (
    PARTITION BY Department ORDER BY Salary DESC 
    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
  ) AS LowestInDept
FROM Employees;

-- Use ROW_NUMBER to pick top 2 employees per department
WITH RankedEmployees AS (
  SELECT *,
    ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary DESC) AS RowNum
  FROM Employees
)
SELECT * FROM RankedEmployees
WHERE RowNum <= 2;
