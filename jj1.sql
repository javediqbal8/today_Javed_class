#create database
Create database ibp_class_Newjaved;
#create table
create table ibp_class_Newjaved.sales_javed (
sale_price int,
age int,
cust_id int not null,
contact_num int,
cust_name varchar(255),
sale_date date
);

#insert values into table
insert into  ibp_class_Newjaved.sales_javed (sale_price, age, cust_id, contact_num, cust_name, sale_date)
values
(12, 36, 1, 0300, "javed", '2024-04-12'),
(13, 26, 3, 0301, " Nasir", '2024-04-13'),
(14, 38, 4, 0303, " tariq", '2024-04-13'),
(12, 36, 5, 0302, "nasir2", '2024-04-12'),
(02, 29, 6, 0301, " ali", '2024-04-13'),
(15, 26, 7, 0305, " qasim", '2024-04-13'),
(20, 40, 11, 0200, "javed", '2024-04-12'),
(19, 19, 15, 0201, " jazi", '2024-04-13'),
(11, 26, 13, 0405, " waqar", '2024-04-13'),
(10, 20, 18, 0705, " tariq", '2024-04-13');

#add primary key if not set before
alter table ibp_class_Newjaved.sales_javed
add primary key (cust_id);

#delete
delete from ibp_class_Newjaved.sales_javed
where cust_id=0;

#select
select * from ibp_class_Newjaved.sales_javed;
#select
select cust_id  from ibp_class_Newjaved.sales_javed;

#update
update ibp_class_Newjaved.sales_javed
set cust_id=10
where cust_id=0;

#add new column
alter table ibp_class_Newjaved.sales_javed
add new_col int;
select * from ibp_class_Newjaved.sales_javed;

#add values in new colum
update ibp_class_Newjaved.sales_javed
set new_col=2
where cust_id=7;
select * from ibp_class_Newjaved.sales_javed;
#select
select * from ibp_class_newjaved.walmart_sales;
alter table ibp_class_newjaved.walmart_sales
rename column `holiday_flag` to `Num_of_holidays`;


#check rows where fuel price is less
select weekly_sales from ibp_class_newjaved.walmart_sales
where fuel_price<3;