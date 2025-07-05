-- Creating Employees Table
CREATE TABLE Employees (
    ID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

-- Insert sample employees
INSERT INTO Employees (ID, FirstName, LastName, Department, Salary)
VALUES 
(301, 'David', 'Lee', 'IT', 60000),
(302, 'Eva', 'Brown', 'HR', 50000),
(303, 'Frank', 'Clark', 'IT', 65000),
(304, 'Grace', 'Hall', 'HR', 55000),
(305, 'Henry', 'Adams', 'Finance', 70000),
(306, 'Irene', 'Taylor', 'Finance', 75000),
(307, 'Jake', 'White', 'IT', 62000);
