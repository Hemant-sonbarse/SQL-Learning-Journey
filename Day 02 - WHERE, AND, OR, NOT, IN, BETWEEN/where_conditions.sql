-- 1. Get all employees from IT department
SELECT * FROM Employees
WHERE Department = 'IT';

-- 2. Get employees from HR or Finance
SELECT * FROM Employees
WHERE Department = 'HR' OR Department = 'Finance';

-- 3. Get employees from IT department with salary > 60000
SELECT * FROM Employees
WHERE Department = 'IT' AND Salary > 60000;

-- 4. Get employees who are not in Finance department
SELECT * FROM Employees
WHERE NOT Department = 'Finance';

-- 5. Use IN to match multiple departments
SELECT * FROM Employees
WHERE Department IN ('IT', 'HR');

-- 6. Use BETWEEN to find salary range
SELECT * FROM Employees
WHERE Salary BETWEEN 50000 AND 70000;
