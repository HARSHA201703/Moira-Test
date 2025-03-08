Use Udemy

select * from Sales_data

--count of rows
select count(*) as Count_of_Rows
from Sales_data

--sales by region
select round(sum(Total_Sales),2) as Total_Sales
from Sales_data
group by region

--sales
select round(sum(Total_sales)/count(*),2) as Avg_sales_Per_Trasnc
from Sales_data

--Check for duplicates
select * from(
select OrderId, 
COUNT(OrderId) OVER (PARTITION BY OrderId) AS NoEntries
FROM sales_data) as sales_data
where NoEntries>1

