-- car price ---
create database sql_project ;
-- create table 


    

select * from car_prices;
select count(*) from car_prices;

-- Data cleaning ---

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

--  data exploration ---
-- 1]Total Number of Cars Sold?--
select count(*) as total_car_sold from car_prices;
-- 2. Average Selling Price--
select avg(sellingprice) as avg_selling_price from car_prices;
-- 3. Top 5 Most Common Car Makes--
select make, count(*) as total
from car_prices
group by make
order by total desc
limit 5;
-- 4. Top 5 States by Car Sales--
select state, count(*) as total_sales
from car_prices
group by state
order by total_sales desc
limit 6;
-- 5. Average Selling Price by Car Make--
select make, round(avg(sellingprice),2) as avg_price
from car_prices
group by make
order by avg_price desc;
-- 6. Find the Newest and Oldest Cars Sold
select min(year)as oldest_year,max(year) as newest_year
from car_prices;

-- 7. Most Popular Body Type
select body, count(*) as count
from car_prices
group by body
order by count desc
limit 5; 

-- 8. Cars with the Highest Condition Rating
select make,model,'condition'
from car_prices
order by 'condition' desc
limit 10;

-- 9. Top 5 Sellers by Volume--
select seller,count(*) as car_sold
from car_prices
group by seller
order by car_sold desc
limit 4;

-- 10. Average Odometer Reading by Year
select year, ROUND(AVG(odometer), 2) AS avg_odometer
FROM car_prices
GROUP BY year
ORDER BY year DESC;

-- 11. Price Difference Between MMR and Selling Price
select make, model, (sellingprice - mmr) AS price_diff
FROM car_prices
ORDER BY price_diff DESC
LIMIT 10;
s



