show databases;
use customer_data;
select database();
select * from  customer_data.customerdetails;
desc customer_data.customerdetails;
select firstName,LastName from customer_data.customerdetails
where DateOfBirth is null or Gender='' or Email=''or Phone='';
SET SQL_SAFE_UPDATES = 0;
update customer_data.customerdetails 
set DateOFBirth=null ,Gender='none',Email='none',Phone='none' 
where DateOfBirth is null or Gender='' or Email='' or Phone='' ;
select CustomerID,count(*) as 'Duplicate' from customer_data.customerdetails 
group by CustomerID
 having count(*)>1;
select * from customer_data.customerdetails
 where Email not like '%@%.%';
select * from customer_data.customerdetails
where LastPurchaseDate<JoinDate;
update customer_data.customerdetails set FirstName=lower(trim(FirstName));
update customer_data.customerdetails set LastName=lower(trim(LastName));
update customer_data.customerdetails set Email=lower(Email);
alter table customer_data.customerdetails 
add customer_age int;
update customer_data.customerdetails set customer_age=case
when DateOfBirth=null then null
else 
	timestampdiff(year,DateOfBirth,curdate())
end;
alter table customer_data.customerdetails 
add Avg_Spent decimal(10,2);
update customer_data.customerdetails set Avg_Spent=case
when TotalPurchases>0 then TotalSpent/TotalPurchases
else 
	null
end;
SELECT CustomerID,TotalSpent,
CASE
    WHEN TotalSpent <= 4000 THEN 'New'
    WHEN TotalSpent <= 13000 THEN 'Regular'
    WHEN TotalSpent <= 43000 THEN 'Premium'
    ELSE 'VIP'
END as 'category_segment'
from customer_data.customerdetails;



