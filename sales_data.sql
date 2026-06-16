use customer_data;
select * from sales_data ;
alter table sales_data
modify Order_Date Date;
SET SQL_SAFE_UPDATES = 0;
UPDATE sales_data
SET City='Unknown'
WHERE City='';
SELECT COUNT(*) AS Total_Records
FROM sales_data;
DESC sales_data;
SELECT COUNT(*) AS Missing_Age
FROM sales_data
WHERE Age IS NULL;
SELECT
SUM(Age IS NULL) AS Missing_Age,
SUM(City IS NULL) AS Missing_City,
SUM(Customer_Name IS NULL) AS Missing_Name
FROM sales_data;
SELECT DISTINCT Gender
FROM sales_data;
UPDATE sales_data
SET Age = (
    SELECT AvgAge
    FROM (
        SELECT ROUND(AVG(Age)) AS AvgAge
        FROM sales_data
        WHERE Age IS NOT NULL
    ) t
)
WHERE Age IS NULL;