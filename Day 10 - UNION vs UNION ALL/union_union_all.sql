-- ✅ Example 1: Get all employees and temporary employees (no duplicates)
SELECT FirstName, LastName, Department
FROM Employees

UNION

SELECT FirstName, LastName, Department
FROM TemporaryEmployees;

-- ✅ Example 2: Get all records including duplicates
SELECT FirstName, LastName, Department
FROM Employees

UNION ALL

SELECT FirstName, LastName, Department
FROM TemporaryEmployees;

-- ✅ Example 3: Combine employees from two different cities
SELECT FirstName, LastName, 'New York' AS City
FROM Employees_NY

UNION

SELECT FirstName, LastName, 'Los Angeles' AS City
FROM Employees_LA;

-- ✅ Example 4: Get all unique department names from two sources
SELECT Department FROM Employees
UNION
SELECT DepartmentName FROM Departments;
