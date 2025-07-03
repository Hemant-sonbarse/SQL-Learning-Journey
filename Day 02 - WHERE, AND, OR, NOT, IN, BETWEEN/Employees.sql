CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO Employees (ID, FirstName, LastName, Department, Salary) VALUES
(1, 'Alice', 'Smith', 'HR', 55000),
(2, 'Bob', 'Johnson', 'IT', 72000),
(3, 'Charlie', 'Lee', 'IT', 72000),
(4, 'David', 'Kim', 'Finance', 60000),
(5, 'Eve', 'Williams', 'HR', 55000),
(6, 'Frank', 'Brown', 'Marketing', 50000),
(7, 'Grace', 'Davis', 'Finance', 60000);
