CREATE DATABASE Prep

USE prep

-- Create the EMP table
CREATE TABLE EMP (
    EID INT PRIMARY KEY,
    EName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    JoiningDate DATE,
    City VARCHAR(50),
    Gender VARCHAR(10)
);

-- Insert data into the EMP table
INSERT INTO EMP (EID, EName, Department, Salary, JoiningDate, City, Gender)
VALUES
(101, 'Rahul', 'Admin', 56000, '1990-01-01', 'Rajkot', 'Male'),
(102, 'Hardik', 'IT', 18000, '1990-09-25', 'Ahmedabad', 'Male'),
(103, 'Bhavin', 'HR', 25000, '1991-05-14', 'Baroda', 'Male'),
(104, 'Bhoomi', 'Admin', 39000, '1991-02-08', 'Rajkot', 'Female'),
(105, 'Rohit', 'IT', 17000, '1990-07-23', 'Jamnagar', 'Male'),
(106, 'Priya', 'IT', 9000, '1990-10-18', 'Ahmedabad', 'Female'),
(107, 'Bhoomi', 'HR', 34000, '1991-12-25', 'Rajkot', 'Female'),
(108, 'Manish', 'IT', 22000, '1990-04-20', 'Baroda', 'Male'),
(109, 'Kavita', 'Admin', 35000, '1992-03-12', 'Ahmedabad', 'Female'),
(110, 'Suresh', 'HR', 28000, '1991-11-05', 'Jamnagar', 'Male'),
(111, 'Pooja', 'IT', 19000, '1991-01-30', 'Rajkot', 'Female'),
(112, 'Amit', 'Admin', 42000, '1990-08-19', 'Baroda', 'Male'),
(113, 'Rekha', 'HR', 31000, '1992-07-02', 'Ahmedabad', 'Female'),
(114, 'Vijay', 'IT', 20000, '1990-06-11', 'Rajkot', 'Male'),
(115, 'Meera', 'Admin', 38000, '1991-10-09', 'Jamnagar', 'Female');



-- Create the SALES_DATA table
CREATE TABLE SALES_DATA (
    Region VARCHAR(50),
    Product VARCHAR(50),
    Sales_Amount INT,
    Year INT
);

-- Insert data into the SALES_DATA table
INSERT INTO SALES_DATA (Region, Product, Sales_Amount, Year)
VALUES
('North America', 'Watch', 1500, 2023),
('Europe', 'Mobile', 1200, 2023),
('Asia', 'Watch', 1800, 2023),
('North America', 'TV', 900, 2024),
('Europe', 'Watch', 2000, 2024),
('Asia', 'Mobile', 1000, 2024),
('North America', 'Mobile', 1600, 2023),
('Europe', 'TV', 1500, 2023),
('Asia', 'TV', 1100, 2024),
('North America', 'Watch', 1700, 2024),
('Asia', 'Watch', 2200, 2024),
('Europe', 'Mobile', 1400, 2024),
('North America', 'TV', 1300, 2023),
('Asia', 'TV', 1000, 2023),
('Europe', 'Watch', 1800, 2023),
('North America', 'Mobile', 1100, 2024),
('Asia', 'Laptop', 3000, 2023),
('Europe', 'Laptop', 3500, 2024),
('North America', 'Laptop', 2800, 2024),
('Asia', 'Mobile', 1300, 2023);




-- Part – A : 


-- 1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively
SELECT MAX(Salary) AS Maximum, MIN(Salary) AS Minimum
FROM EMP


-- 2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively. 
SELECT SUM(Salary) AS Total_sal, AVG(Salary) AS Average_Sal
FROM EMP

-- 3. Find total number of employees of EMPLOYEE table
SELECT COUNT(EID) AS Total_emp
FROM EMP

-- 4. Find highest salary from Rajkot city.
SELECT City, MAX(Salary) AS Max_Sal
FROM EMP
WHERE City = 'Rajkot'
GROUP BY City

-- 5. Give maximum salary from IT department.
SELECT Department, MAX(Salary) AS Max_Sal
FROM EMP
WHERE Department = 'IT'
GROUP BY Department

-- 6. Count employee whose joining date is after 8-Feb-91.
SELECT COUNT(EID) AS Count_emp, JoiningDate
FROM EMP
Where JoiningDate > '1991-02-08'
Group By JoiningDate

-- 7. Display average salary of Admin department.
SELECT Department, AVG(Salary) AS Max_Sal
FROM EMP
WHERE Department = 'Admin'
GROUP BY Department

-- 8. Display total salary of HR department. 
SELECT Department, SUM(Salary) AS Max_Sal
FROM EMP
WHERE Department = 'HR'
GROUP BY Department

-- 9. Count total number of cities of employee without duplication
SELECT DISTINCT COUNT(*) AS City
FROM EMP
GROUP BY City

-- 10. Count unique departments. 
SELECT DISTINCT COUNT(Department)
FROM EMP



-- 11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT City, MIN(Salary) AS min_sal
FROM EMP
WHERE City = 'Ahmedabad'
GROUP BY City

-- 12. Find city wise highest salary. 
SELECT City, MAX(Salary) AS max_salary
FROM EMP
GROUP BY City

-- 13. Find department wise lowest salary.
SELECT Department, MIN(Salary) AS min_sal
FROM EMP
GROUP BY Department

-- 14. Display city with the total number of employees belonging to each city.
SELECT City, COUNT(*) AS Count_emp
FROM EMP
GROUP BY City

-- 15. Give total salary of each department of EMP table.
SELECT Department, SUM(Salary) AS total_sal
FROM EMP
GROUP BY Department

-- 16. Give average salary of each department of EMP table without displaying the respective department name.
SELECT AVG(Salary) AS avg_sal
FROM EMP
GROUP BY Department

-- 17. Count the number of employees for each department in every city. 
SELECT Department, City, COUNT(*)
FROM EMP
GROUP BY Department, City

-- 18. Calculate the total salary distributed to male and female employees.
SELECT Gender, SUM(Salary) AS total_sal
FROM EMP
GROUP BY Gender

-- 19. Give city wise maximum and minimum salary of female employees. 
SELECT City, MAX(Salary) AS max_sal, MIN(Salary) AS min_sal
FROM EMP
WHERE Gender = 'Female'
GROUP BY City

-- 20. Calculate department, city, and gender wise average salary.
SELECT Department, City, Gender , AVG(Salary) AS avg_sal
FROM EMP
GROUP BY Department, City, Gender




-- Part – B :


-- 1. Count the number of employees living in Rajkot.
SELECT COUNT(*) AS no_emp
FROM EMP
WHERE City = 'Rajkot'
GROUP BY City

-- 2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT (MAX(Salary) - MIN(Salary)) AS DIFFERENCE
FROM EMP

-- 3. Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(*) AS no_emp
FROM EMP
WHERE JoiningDate < '1991-01-01'



-- Part – C :


-- 1. Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(*) AS no_emp
FROM EMP
WHERE City IN ('Rajkot', 'Baroda')

-- 2. Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT(*) AS no_emp
FROM EMP
WHERE JoiningDate < '1991-01-01' AND Department = 'IT'

-- 3. Find the Joining Date wise Total Salaries.
SELECT JoiningDate, SUM(Salary) AS total_sal
FROM EMP
GROUP BY JoiningDate

-- 4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT Department, City, MAX(Salary) AS max_sal
FROM EMP
WHERE City LIKE 'R%'
GROUP BY Department, City





-- Queries on SALES_DATA Table :

-- Part – A :


-- 1. Display Total Sales Amount by Region.
SELECT Region, SUM(Sales_Amount)
FROM SALES_DATA
GROUP BY Region

-- 2. Display Average Sales Amount by Product. 
SELECT Product, AVG(Sales_Amount)
FROM SALES_DATA
GROUP BY Product

-- 3. Display Maximum Sales Amount by Year.
SELECT Year, MAX(Sales_Amount)
FROM SALES_DATA
GROUP BY Year

-- 4. Display Minimum Sales Amount by Region and Year. 
SELECT Region,Year, MAX(Sales_Amount)
FROM SALES_DATA
GROUP BY Region, Year

-- 5. Count of Products Sold by Region. 
SELECT Region, COUNT(*)
FROM SALES_DATA
GROUP BY Region

-- 6. Display Sales Amount by Year and Product. 
SELECT Year, Product, SUM(Sales_Amount)
FROM SALES_DATA
GROUP BY Year, Product

-- 7. Display Regions with Total Sales Greater Than 5000. 
SELECT Region, SUM(Sales_Amount)
FROM SALES_DATA
GROUP BY Region
HAVING SUM(Sales_Amount) > 5000

-- 8. Display Products with Average Sales Less Than 10000.
SELECT Product, AVG(Sales_Amount)
FROM SALES_DATA
GROUP BY Product
HAVING AVG(Sales_Amount) < 10000

-- 9. Display Years with Maximum Sales Exceeding 500.
SELECT Year, MAX(Sales_Amount)
FROM SALES_DATA
GROUP BY Year
HAVING MAX(Sales_Amount) > 500

-- 10. Display Regions with at Least 3 Distinct Products Sold.


-- 11. Display Years with Minimum Sales Less Than 1000. 
SELECT Year, MIN(Sales_Amount)
FROM SALES_DATA
GROUP BY Year
HAVING MIN(Sales_Amount) < 1000

-- 12. Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount. 
SELECT Region, SUM(Sales_Amount)
FROM SALES_DATA
WHERE Year = 2023
GROUP BY Region
ORDER BY SUM(Sales_Amount) DESC  

-- 13. Find the Region Where 'Mobile' Had the Lowest Total Sales Across All Years.
SELECT TOP 1 Region, SUM(Sales_Amount)
FROM SALES_DATA
WHERE Product = 'Mobile'
GROUP BY Region
ORDER BY SUM(Sales_Amount)

-- 14. Find the Product with the Highest Sales Across All Regions in 2023. 
SELECT TOP 1 Product, SUM(Sales_Amount)
FROM SALES_DATA
WHERE Year = 2023
GROUP BY Product
ORDER BY SUM(Sales_Amount) DESC

-- 15. Find Regions Where 'TV' Sales in 2023 Were Greater Than 1000.
SELECT Region, SUM(Sales_Amount)
FROM SALES_DATA
WHERE Product = 'TV' AND Year = 2023
GROUP BY Region
HAVING SUM(Sales_Amount) > 1000




-- Part – B  :


-- 1. Display Count of Orders by Year and Region, Sorted by Year and Region.
SELECT Year, Region, COUNT(Product)
FROM SALES_DATA
GROUP BY Year, Region
ORDER BY Year, Region

-- 2. Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region.
SELECT Region, MAX(Sales_Amount)
FROM SALES_DATA
GROUP BY Region
HAVING MAX(Sales_Amount) > 1000
ORDER BY Region

-- 3. Display Years with Total Sales Amount Less Than 10000, Sorted by Year Descending. 
SELECT Year, SUM(Sales_Amount)
FROM SALES_DATA
GROUP BY Year
HAVING SUM(Sales_Amount) < 10000
ORDER BY Year DESC

-- 4. Display Top 3 Regions by Total Sales Amount in Year 2024.
SELECT TOP 3 Region, SUM(Sales_Amount)
FROM SALES_DATA
WHERE Year = 2024
GROUP BY Region

-- 5. Find the Year with the Lowest Total Sales Across All Regions.
SELECT TOP 1 Year, SUM(Sales_Amount)
FROM SALES_DATA
GROUP BY Year
ORDER BY SUM(Sales_Amount) 


-- LAB-2 :

-- Create the DEPT table first, as PERSON depends on it
CREATE TABLE DEPT (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE,
    DepartmentCode VARCHAR(50) NOT NULL UNIQUE,
    Location VARCHAR(50) NOT NULL
);

-- Create the PERSON table with a Foreign Key
CREATE TABLE PERSON (
    PersonID INT PRIMARY KEY,
    PersonName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    Salary DECIMAL(8, 2) NOT NULL,
    JoiningDate DATE NOT NULL,
    City VARCHAR(100) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES DEPT(DepartmentID)
);

-- Insert data into the DEPT table
INSERT INTO DEPT (DepartmentID, DepartmentName, DepartmentCode, Location)
VALUES
(1, 'Admin', 'Adm', 'A-Block'),
(2, 'Computer', 'CE', 'C-Block'),
(3, 'Civil', 'CI', 'G-Block'),
(4, 'Electrical', 'EE', 'E-Block'),
(5, 'Mechanical', 'ME', 'B-Block'),
(6, 'Marketing', 'Mkt', 'F-Block'),
(7, 'Accounts', 'Acc', 'A-Block');

-- Insert data into the PERSON table
INSERT INTO PERSON (PersonID, PersonName, DepartmentID, Salary, JoiningDate, City)
VALUES
(101, 'Rahul Tripathi', 2, 56000.00, '2000-01-01', 'Rajkot'),
(102, 'Hardik Pandya', 3, 18000.00, '2001-09-25', 'Ahmedabad'),
(103, 'Bhavin Kanani', 4, 25000.00, '2000-05-14', 'Baroda'),
(104, 'Bhoomi Vaishnav', 1, 39000.00, '2005-02-08', 'Rajkot'),
(105, 'Rohit Topiya', 2, 17000.00, '2001-07-23', 'Jamnagar'),
(106, 'Priya Menpara', NULL, 9000.00, '2000-10-18', 'Ahmedabad'),
(107, 'Neha Sharma', 2, 34000.00, '2002-12-25', 'Rajkot'),
(108, 'Nayan Goswami', 3, 25000.00, '2001-07-01', 'Rajkot'),
(109, 'Mehul Bhundiya', 4, 13500.00, '2005-01-09', 'Baroda'),
(110, 'Mohit Maru', 5, 14000.00, '2000-05-25', 'Jamnagar'),
(111, 'Alok Nath', 2, 36000.00, '2003-03-15', 'Ahmedabad'),
(112, 'Seema Jain', 3, 28000.00, '2002-06-18', 'Baroda'),
(113, 'Karan Singh', 1, 41000.00, '2004-11-30', 'Rajkot'),
(114, 'Riya Gupta', 5, 16000.00, '2001-02-12', 'Ahmedabad'),
(115, 'Suresh Patel', 7, 32000.00, '2003-08-20', 'Jamnagar'),
(116, 'Meena Kumari', 7, 30000.00, '2004-01-01', 'Rajkot'),
(117, 'Vikram Batra', NULL, 11000.00, '2005-04-05', 'Baroda');




-- Part - A :

-- 1. Combine information from Person and Department table using cross join or Cartesian product.
SELECT P.PersonName, D.DepartmentName
FROM PERSON P
CROSS JOIN DEPT D

-- 2. Find all persons with their department name. 
SELECT P.PersonName, D.DepartmentName
FROM Person P
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID

-- 3. Find all persons with their department name & code.
SELECT P.PersonName, D.DepartmentName, D.DepartmentCode
FROM Person P
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID

-- 4. Find all persons with their department code and location. 
SELECT P.PersonName, D.DepartmentCode, D.Location
FROM Person P
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID

-- 5. Find the detail of the person who belongs to Mechanical department.
SELECT P.*, D.DepartmentName
FROM Person P
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'Mechanical'

-- 6. Final person’s name, department code and salary who lives in Ahmedabad city. 
SELECT P.PersonName, D.DepartmentCode, P.Salary
FROM Person P
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE P.City = 'Ahmedabad'

-- 7. Find the person's name whose department is in C-Block.
SELECT P.PersonName
FROM Person P
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE D.Location = 'C-Block'

-- 8. Retrieve person name, salary & department name who belongs to Jamnagar city. 
SELECT P.PersonName, P.Salary, D.DepartmentCode
FROM Person P
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE P.City = 'Jamnagar'

-- 9. Retrieve person’s detail who joined the Civil department after 1-Aug-2001.
SELECT P.*
FROM Person P
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE P.JoiningDate > '2001-08-01' AND D.DepartmentName = 'Civil'

-- 10. Display all the person's name with the department whose joining date difference with the current date is more than 365 days. 
SELECT P.PersonName, D.DepartmentName
FROM Person P
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE DATEDIFF(DAY, P.JoiningDate, GETDATE()) > 365

-- 11. Find department wise person counts.
SELECT D.DepartmentName, COUNT(P.PersonID)
FROM Person P
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentName

-- 12. Give department wise maximum & minimum salary with department name.
SELECT D.DepartmentName, MAX(P.Salary), MIN(P.Salary)
FROM Person P
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentName

-- 13. Find city wise total, average, maximum and minimum salary.
SELECT P.City, SUM(P.Salary) AS total_sal, MAX(P.Salary) AS max_sal, MIN(P.Salary) AS min_sal
FROM Person P
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
GROUP BY P.City

-- 14. Find the average salary of a person who belongs to Ahmedabad city.
SELECT AVG(Salary)
FROM Person
WHERE City = 'Ahmedabad'

-- 15. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In single column)
SELECT P.PersonName + ' lives in ' + P.City + ' and works in ' + D.DepartmentName + ' Department.'
FROM Person P
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
