-- Create Customers table
CREATE TABLE Customers (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    Country VARCHAR(50)
);

-- Insert sample data
INSERT INTO Customers (ID, Name, Email, Country) VALUES
(1, 'Alice', 'alice@example.com', 'USA'),
(2, 'Bob', 'bob123@gmail.com', 'UK'),
(3, 'Charlie', 'charlie@outlook.com', 'India'),
(4, 'David', 'david@yahoo.com', 'USA'),
(5, 'Eve', 'eve_smith@gmail.com', 'Canada'),
(6, 'Frank', 'frank@example.com', 'Germany'),
(7, 'Grace', 'gracey@live.com', 'India'),
(8, 'Hannah', 'hannah_w@example.com', 'USA'),
(9, 'Ivy', 'ivy@domain.com', 'France'),
(10, 'Jack', 'jackie_boy@gmail.com', 'Australia');
