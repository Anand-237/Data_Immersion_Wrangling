use customer_data;
alter table customer_data.customerdetails  modify CustomerId varchar(20) primary key; 
alter table customer_data.customerdetails  modify DateOfBirth date not null ;
alter table customer_data.customerdetails  modify LastPurchaseDate date not null ;
alter table customer_data.customerdetails  modify DateOfBIrth date not null;
alter table customer_data.customerdetails  modify FirstName varchar(20) not null; 
alter table customer_data.customerdetails  modify LastName varchar(20) not null; 
alter table customer_data.customerdetails  modify Gender varchar(20) not null; 
alter table customer_data.customerdetails  modify Email varchar(50) not null; 
alter table customer_data.customerdetails  modify State varchar(20) not null; 
alter table customer_data.customerdetails  modify Country varchar(20) not null; 
alter table customer_data.customerdetails  modify City varchar(20) not null; 
alter table customer_data.customerdetails  modify JoinDate date not null; 
alter table customer_data.customerdetails  modify LastPurchaseDate date not null;
SET SQL_SAFE_UPDATES = 0

