-- Creating Employees Table
CREATE TABLE Employees (
    ID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

-- Insert sample employees with NULL values
INSERT INTO Employees (ID, FirstName, LastName, Department, Salary)
VALUES 
(201, 'Alice', 'Smith', 'HR', NULL),
(202, 'Bob', 'Johnson', NULL, 50000),
(203, 'Charlie', 'Williams', 'Finance', NULL),
(204, 'Diana', 'Parker', 'IT', 60000),
(205, 'Edward', 'King', NULL, NULL);