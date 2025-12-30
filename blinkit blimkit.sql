

use blinkit

-- count the number of rows
select count(*) from blinkit_data as count_no_row
select * from blinkit_data

 

--data cleaning
update blinkit_data
set Item_Fat_Content=
case
when Item_Fat_Content in ('lf','low fat') then 'Low fat'
when Item_Fat_Content in ('reg','regular') then 'Regular'
else Item_Fat_Content
end

--distinct item_fat _comtent
select (item_fat_content) from blinkit_data

--task--
--sum of the total_sales to show millions
select cast(sum(total_sales)/1000000  as decimal(10,2)) as  total_sales_millions
from  blinkit_data

-- avg of the total_sales to show of the 
select cast(avg(total_sales) as decimal(10,0)) as  total_sales
from  blinkit_data


  -- numnber of items : the total count of different item solid
  select item_fat_content, count(Item_Fat_Content) as total_count from  blinkit_data
  group by Item_Fat_Content

  --average rating : the average customer rating for item solid
  select avg(rating ) as average_rating from blinkit_data 



  --total sales fat content ,average rating 
  select top 5 Item_Fat_Content ,cast(sum(total_sales)/100000 as decimal(10,2)) as total_sales,
  cast(avg(rating )  as decimal(10,2)) as average_rating ,
 count(Item_Fat_Content) as total_count from blinkit_data
 where outlet_establishment_year = 2022
  group by Item_Fat_Content
  order by item_fat_content desc
 
  --total sales by item type of  top 5 sales 
   select   top 5 item_type ,cast(sum(total_sales)/1000000 as decimal(10,2)) as total_sales,
  cast(avg(rating )  as decimal(10,2)) as average_rating ,
 count(Item_Fat_Content) as total_count from blinkit_data
 where outlet_establishment_year = 2022
  group by item_type
  order by item_type desc

 


--total sales by outlet_estblishment_year
select outlet_establishment_year,
cast(sum(total_sales)/1000000  as decimal(10,2)) as  total_sales_millions from blinkit_data
group by outlet_establishment_year
order by  outlet_establishment_year desc


--precentage  of sales by outlet_size
 select  Outlet_Size,
cast(
sum(total_sales) * 100.0/ sum(sum(total_sales))over()  as decimal(10,1)) precentage_total_sales from blinkit_data
group by outlet_size
order by  Outlet_Size desc

--sales by outlet location
select   Outlet_Location_Type ,cast(sum(total_sales) as decimal(10,2))  as total_sales from blinkit_data
group by Outlet_Location_Type
order by outlet_location_type desc

--all metrics by outlet type
select outlet_type,
cast(sum(total_sales) as decimal(10,2))  as total_sales,
 cast(avg(rating )  as decimal(10,2)) as average_rating ,
 cast(avg(total_sales) as decimal(10,0)) as  total_sales,
cast(avg(item_visibility) as decimal(10,2)) as avg_item_visibility
from blinkit_data
group by outlet_type



