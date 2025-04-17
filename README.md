#CAR PRICES SQL Project
#Project Overview
#Project Title: Car Prices
#Level: Beginner


This project is designed to demonstrate SQL skills and techniques typically used by data analysts to explore, 
clean, and analyze car prces. The project involves setting up a  database, pcar price erforming exploratory data analysis (EDA),
and answering specific business questions through SQL queries. This project is ideal for those who are starting their journey in data analysis
and want to build a solid foundation in SQL.

#Objectives
Set up a car price database: Create and populate a retail sales database with the provided sales data.
Data Cleaning: Identify and remove any records with missing or null values.
Exploratory Data Analysis (EDA): Perform basic exploratory data analysis to understand the dataset.
Business Analysis: Use SQL to answer specific business questions and derive insights from the sales data.
Project Structure

1. Database Setup
Database sql project

CREATE TABLE car_price (
    year INT,
    make VARCHAR(100),
    model VARCHAR(50),
    trim VARCHAR(100),
    body VARCHAR(30),
    transmission VARCHAR(19),
    vin VARCHAR(49) PRIMARY KEY,
    state CHAR(2),
    condition FLOAT,
    odometer FLOAT,
    color VARCHAR(30),
    interior VARCHAR(19),
    seller VARCHAR(29),
    mmr VARCHAR(100),
    sellingprice FLOAT,
    saledate DATETIME
);


- Data cleaning ---

select * from car_prices
where
year is null
or
make is null
or
model is null 
or
trim is null
or
body is null
or
vin is null
or
state is null 
or
`condition` is null
or
odometer is null
or
interior is null
or
seller is null
or
mmr is null
or
sellingprice is null
or
saledate is null;

#--- data exploration
-- how many models we have ?
select count(*) as model from car_prices;

#---- how many uniuque make we have?
select count(distinct model) as make from car_prices;


#1]Total Number of Cars Sold?--

select count(*) as total_car_sold from car_prices;

#-- 2. Average Selling Price--

select avg(sellingprice) as avg_selling_price from car_prices;
#-- 3. Top 5 Most Common Car Makes--

select make, count(*) as total
from car_prices
group by make
order by total desc
limit 5;

#-- 4. Top 5 States by Car Sales--

select state, count(*) as total_sales
from car_prices
group by state
order by total_sales desc
limit 6;

#-- 5. Average Selling Price by Car Make--

select make, round(avg(sellingprice),2) as avg_price
from car_prices
group by make
order by avg_price desc;

#-- 6. Find the Newest and Oldest Cars Sold

select min(year)as oldest_year,max(year) as newest_year
from car_prices;

#-- 7. Most Popular Body Type

select body, count(*) as count
from car_prices
group by body
order by count desc
limit 5; 

#-- 8. Cars with the Highest Condition Rating

select make,model,'condition'
from car_prices
order by 'condition' desc
limit 10;

#-- 9. Top 5 Sellers by Volume--

select seller,count(*) as car_sold
from car_prices
group by seller
order by car_sold desc
limit 4;

#-- 10. Average Odometer Reading by Year

select year, ROUND(AVG(odometer), 2) AS avg_odometer
FROM car_prices
GROUP BY year
ORDER BY year DESC;

#-- 11. Price Difference Between MMR and Selling Price

select make, model, (sellingprice - mmr) AS price_diff
FROM car_prices
ORDER BY price_diff DESC
LIMIT 10;






