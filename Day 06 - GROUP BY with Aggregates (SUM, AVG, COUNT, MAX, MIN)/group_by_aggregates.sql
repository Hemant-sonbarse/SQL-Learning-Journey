-- Example 1: Count employees by Department
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department;

-- Example 2: Average Salary by Department
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;

-- Example 3: Maximum and Minimum Salaries
SELECT Department, MAX(Salary) AS Highest, MIN(Salary) AS Lowest
FROM Employees
GROUP BY Department;

-- Example 4: Total Salary payout per Department
SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Department;

-- Example 5: Department with more than 2 employees
SELECT Department, COUNT(*) AS EmpCount
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 2;