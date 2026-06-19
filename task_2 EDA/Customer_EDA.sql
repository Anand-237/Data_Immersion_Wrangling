use customer_data;
select * from customer_data.customerdetails;
-- Descriptive Statistics
select round(avg(TotalSpent)) from customer_data.customerdetails;
select max(TotalSpent) as 'maximum Spent' from customer_data.customerdetails;
select min(TotalSpent) as 'minimum Spent' from customer_data.customerdetails;
select CustomerSegment,count(*) as 'customers'
from customer_data.customerdetails group by CustomerSegment;

-- Frequency Analysis

select State,count(*) as 'customers_count'
from customer_data.customerdetails group by State;
select Gender,count(*) as 'Total'
from customer_data.customerdetails group by Gender;
select IsActive,count(*) as 'Total'
from customer_data.customerdetails  group by IsActive order by  IsActive desc  ;

select CustomerId,FirstName,LastName,TotalSpent FROM customerdetails order by TotalSpent desc limit 10;
select Gender,round(avg(TotalSpent)) as 'Average_Spent'from customer_data.customerdetails group by Gender;
select State,round(sum(TotalSpent)) as 'Revenue' from customerdetails group by State order by Revenue desc;