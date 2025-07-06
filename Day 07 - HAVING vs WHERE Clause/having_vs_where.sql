-- WHERE filters individual records
SELECT *
FROM Employees
WHERE Department = 'IT';

-- HAVING filters aggregated groups
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 2;

-- Combined WHERE and HAVING
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
WHERE Salary > 40000
GROUP BY Department
HAVING AVG(Salary) > 50000;
 
