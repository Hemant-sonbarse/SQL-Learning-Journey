-- Create Employees table
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

-- Insert sample data
INSERT INTO Employees (ID, Name, Department, Salary) VALUES
(1, 'John', 'IT', 90000),
(2, 'Sarah', 'HR', 48000),
(3, 'Michael', 'IT', 65000),
(4, 'Emma', 'Finance', 72000),
(5, 'David', 'IT', 55000),
(6, 'Sophia', 'HR', 40000),
(7, 'James', 'Finance', 85000),
(8, 'Olivia', 'IT', 60000),
(9, 'Daniel', 'Admin', 50000),
(10, 'Mia', 'Admin', 47000);
