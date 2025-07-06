-- INNER JOIN: Employees and Departments
SELECT E.FirstName, E.LastName, D.DeptName
FROM Employees E
INNER JOIN Departments D ON E.Department = D.DeptCode;

-- LEFT JOIN
SELECT E.FirstName, E.LastName, D.DeptName
FROM Employees E
LEFT JOIN Departments D ON E.Department = D.DeptCode;

-- RIGHT JOIN
SELECT E.FirstName, E.LastName, D.DeptName
FROM Employees E
RIGHT JOIN Departments D ON E.Department = D.DeptCode;

-- FULL JOIN
SELECT E.FirstName, E.LastName, D.DeptName
FROM Employees E
FULL JOIN Departments D ON E.Department = D.DeptCode;

-- SELF JOIN to show employees from same department
SELECT A.FirstName AS Emp1, B.FirstName AS Emp2, A.Department
FROM Employees A
JOIN Employees B ON A.Department = B.Department AND A.ID != B.ID;
