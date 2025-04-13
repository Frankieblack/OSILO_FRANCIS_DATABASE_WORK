USE EC_IT143_KampalaDB;
GO
select * from tbl_vendor_counts;

/*
Script Name: EC_IT143_W5.2_Kampala_fo.sql
Author: Francis Osilo
Date: 2025-04-13
Dataset: Kampala
Description: Answering 4 questions from the Kampala community dataset
*/

-- Question 1 (by: Francis Osilo)
-- How many vendors are operating in each market location?
SELECT location, COUNT(*) AS vendor_count
FROM market_data
GROUP BY location;

-- Question 2 (by: Francis Osilo)
-- Which product is sold by the most vendors?
SELECT product, COUNT(*) AS vendor_count
FROM market_data
GROUP BY product
ORDER BY vendor_count DESC;

-- Question 3 (by: Francis Osilo)
-- How many vendors joined the market in each month?
SELECT FORMAT(join_date, 'yyyy-MM') AS join_month, COUNT(*) AS vendor_count
FROM market_data
GROUP BY FORMAT(join_date, 'yyyy-MM')
ORDER BY join_month;

-- Question 4 (by: [Classmate's Name])
-- Which market location has the earliest and latest joining vendors?
SELECT location, MIN(join_date) AS first_vendor_joined, MAX(join_date) AS last_vendor_joined
FROM market_data
GROUP BY location;
