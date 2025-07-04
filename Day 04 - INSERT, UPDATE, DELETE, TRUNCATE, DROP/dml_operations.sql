-- INSERT a new employee
INSERT INTO Employees (ID, FirstName, LastName, Department, Salary)
VALUES (101, 'John', 'Doe', 'IT', 60000);

-- UPDATE employee salary
UPDATE Employees
SET Salary = 70000
WHERE ID = 101;

-- DELETE a specific employee
DELETE FROM Employees
WHERE ID = 101;

-- TRUNCATE the table (clears all data)
TRUNCATE TABLE Employees;

-- DROP the entire table
DROP TABLE Employees;
