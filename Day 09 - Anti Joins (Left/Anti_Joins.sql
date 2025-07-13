-- ✅ Example 1: Employees not assigned to any department (Left Anti Join)
SELECT e.*
FROM Employees e
LEFT JOIN Departments d ON e.Department = d.DepartmentName
WHERE d.DepartmentName IS NULL;

-- ✅ Example 2: Departments that have no employees (Right Anti Join)
SELECT d.*
FROM Employees e
RIGHT JOIN Departments d ON e.Department = d.DepartmentName
WHERE e.ID IS NULL;

-- ✅ Example 3: Using NOT IN to simulate Left Anti Join
SELECT *
FROM Employees
WHERE Department NOT IN (
    SELECT DepartmentName FROM Departments
);

-- ✅ Example 4: Using NOT EXISTS
SELECT *
FROM Employees e
WHERE NOT EXISTS (
    SELECT 1
    FROM Departments d
    WHERE d.DepartmentName = e.Department
);


-- Assuming a Departments table:
-- Departments(DepartmentID, DepartmentName)
