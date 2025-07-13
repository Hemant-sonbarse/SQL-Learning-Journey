-- Starts with 'A'
SELECT * FROM Customers WHERE Name LIKE 'A%';

-- Ends with 'e'
SELECT * FROM Customers WHERE Name LIKE '%e';

-- Contains 'ar'
SELECT * FROM Customers WHERE Name LIKE '%ar%';

-- Name is exactly 5 characters long
SELECT * FROM Customers WHERE Name LIKE '_____';

-- Email domain is 'gmail.com'
SELECT * FROM Customers WHERE Email LIKE '%@gmail.com';

-- Names with 'a' as second letter
SELECT * FROM Customers WHERE Name LIKE '_a%';

-- Emails that do NOT contain 'example'
SELECT * FROM Customers WHERE Email NOT LIKE '%example%';

-- Emails with only 3 characters before @
SELECT * FROM Customers WHERE Email LIKE '___%@%';

-- Case: names ending in 'e' or 'y'
SELECT * FROM Customers WHERE Name LIKE '%e' OR Name LIKE '%y';

-- Customers with emails ending in '.com'
SELECT * FROM Customers WHERE Email LIKE '%.com';

-- Names that contain 'li'
SELECT * FROM Customers WHERE Name LIKE '%li%';
