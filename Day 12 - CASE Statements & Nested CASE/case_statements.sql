-- Salary level using CASE
SELECT Name, Salary,
  CASE
    WHEN Salary >= 80000 THEN 'High'
    WHEN Salary >= 50000 THEN 'Medium'
    ELSE 'Low'
  END AS SalaryLevel
FROM Employees;

-- Nested CASE example
SELECT Name, Department, Salary,
  CASE Department
    WHEN 'IT' THEN 
      CASE 
        WHEN Salary > 80000 THEN 'Lead'
        ELSE 'Developer'
      END
    WHEN 'HR' THEN 'HR Executive'
    ELSE 'Staff'
  END AS Role
FROM Employees;

-- Nested CASE to assign role
SELECT Name, Department, Salary,
  CASE Department
    WHEN 'IT' THEN 
      CASE 
        WHEN Salary > 80000 THEN 'Lead Developer'
        WHEN Salary > 60000 THEN 'Senior Developer'
        ELSE 'Junior Developer'
      END
    WHEN 'HR' THEN 
      CASE 
        WHEN Salary > 45000 THEN 'HR Manager'
        ELSE 'HR Assistant'
      END
    WHEN 'Finance' THEN 'Finance Officer'
    ELSE 'Other Staff'
  END AS Designation
FROM Employees;

-- Using CASE in ORDER BY to sort by salary level
SELECT Name, Salary
FROM Employees
ORDER BY 
  CASE 
    WHEN Salary >= 80000 THEN 1
    WHEN Salary >= 50000 THEN 2
    ELSE 3
  END;

-- CASE in WHERE clause
SELECT * FROM Employees
WHERE 
  CASE 
    WHEN Department = 'IT' THEN Salary > 60000
    ELSE TRUE
  END;

-- Using CASE in SELECT to show bonus eligibility
SELECT Name, Department, Salary,
  CASE 
    WHEN Salary > 85000 THEN 'Eligible for 15% bonus'
    WHEN Salary > 60000 THEN 'Eligible for 10% bonus'
    ELSE 'Eligible for 5% bonus'
  END AS BonusStatus
FROM Employees;