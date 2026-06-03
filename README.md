# Blinkit Sales Data Analysis 
## problemn Satement
<br>Blinkit generates large volume of sales data.The goal of this project is to analyze sales performance,customer ratings,and product trends to support better business decision</br>
<br>##Dataset</br>

File Name:-**blinkit Grocery Data.Csv**
**Feature:**
﻿- **Item Fat Content**
- **Item Identifie**
- **Item Type** 
- **Outlet Establishment Year**
- **Outlet Identifier**
- **Outlet Location Type**
- **Outlet Size**
- **Outlet Type**
- **Item Visibility**
- **Item Weight** 
- **Total Sales**
- **Rating**
## Key Metrics
1. **Total Sales**
2. **Average Sales**
3. **Number of item sold**  --- change sql managemet because null values here
4. **Average Rating**
## Analysis
- **Total sales**
 select cast(sum(total_sales) as decimal(10,2))  as total_sales from blinkit_data
- **Average Sales**
 select cast(avg(total_sales) as decimal(10,0)) as  avg_sales  from blinkit_data
- **Average Rating**
select  cast(avg(rating )  as decimal(10,2)) as average_rating from blinkit_data


