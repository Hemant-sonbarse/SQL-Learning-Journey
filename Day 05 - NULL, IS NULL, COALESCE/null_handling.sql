
-- Example 1: Select employees where Salary is NULL
SELECT * FROM Employees
WHERE Salary IS NULL;

-- Example 2: Select employees where Department is NOT NULL
SELECT * FROM Employees
WHERE Department IS NOT NULL;

-- Example 3: Replace NULL salaries with default value using COALESCE
SELECT ID, FirstName, Salary, COALESCE(Salary, 30000) AS UpdatedSalary
FROM Employees;

-- Example 4: Use COALESCE for Department
SELECT FirstName, COALESCE(Department, 'Unassigned') AS Dept
FROM Employees;

-- Example 5: Insert sample employees with NULL values
INSERT INTO Employees (ID, FirstName, LastName, Department, Salary)
VALUES 
(201, 'Alice', 'Smith', 'HR', NULL),
(202, 'Bob', 'Johnson', NULL, 50000),
(203, 'Charlie', 'Williams', 'Finance', NULL);

-- Example 6: Use COALESCE to handle NULL salaries
SELECT FirstName, LastName, COALESCE(Salary, 0) AS Salary
FROM Employees;