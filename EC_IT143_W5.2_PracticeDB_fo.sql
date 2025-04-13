use PracticeDB;
select * from [dbo].[Departments], [dbo].[Employees];

-- ============================================
-- EC_IT143 - Final Project 5.2: PracticeDB Community - Francis Osilo
-- Questions and Answers about Employees and Departments
-- ============================================

USE PracticeDB;
GO

-- ============================================
-- Question 1 (Created by Francis Osilo):
-- How many employees are in each department?
-- This helps understand the number of workers per department.
-- ============================================

SELECT d.DepartmentName, COUNT(e.EmployeeID) AS EmployeeCount
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName;
GO

-- ============================================
-- Question 2 (Created by Student Jane Doe):
-- What is the average salary for each department?
-- This helps evaluate salary trends in departments.
-- ============================================

SELECT d.DepartmentName, AVG(e.Salary) AS AvgSalary
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName;
GO

-- ============================================
-- Question 3 (Created by Francis Osilo):
-- Which employees earn more than 50,000 in salary?
-- Useful for identifying high earners.
-- ============================================

SELECT FirstName, LastName, Salary
FROM Employees
WHERE Salary > 50000;
GO

-- ============================================
-- Question 4 (Created by Francis Osilo):
-- Which departments have employees with salary below 30,000?
-- Helpful for analyzing departments with low-paying staff.
-- ============================================

SELECT DISTINCT d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE e.Salary < 30000;
GO
