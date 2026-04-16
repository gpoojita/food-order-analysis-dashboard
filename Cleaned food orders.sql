CREATE TABLE clean_food_orders(
    age INT,
    city VARCHAR(250),
    order_time VARCHAR(250),
    day_type varchar(250),
    cuisine varchar(250),
    meal_type varchar(250),
    restaurant_type VARCHAR(250),
    order_value INT,
    discount_applied  VARCHAR(50),
    delivery_fee int,
    time_taken_to_order int,
    mood varchar(50),
    hunger_level varchar(50),
    company varchar(50),
    rating_given varchar(50),
    is_repeat_order VARCHAR(50),
    rainy_weather VARCHAR(50),
    Age_group VARCHAR(50),
    Spend_ratio VARCHAR(50)
);

SELECT * FROM clean_food_orders;

-- Total revenue

select sum(order_value) from clean_food_orders

--Avg order age

select avg(age) from clean_food_orders

--Avg order value

select avg(order_value) from clean_food_orders

-- Orders by City

select city,count(*) as total_orders
from clean_food_orders
group by city 
order by total_orders Asc

-- Orders by meal type
select meal_type,count(*) as type_orders
from clean_food_orders
group by meal_type 
order by type_orders Asc
--Avg delivery fee
select avg(delivery_fee) from clean_food_orders

--People preference
SELECT restaurant_type,count(*) as ppl_preference
from clean_food_orders
group by restaurant_type
order by ppl_preference asc 

--Avg order value by age
SELECT age_group,avg(order_value) as avg_order_value_age
FROM clean_food_orders
group by age_group
order by avg_order_value_age asc

--Avg time taken to order
SELECT age_group,avg(time_taken_to_or) as avg_time_age
FROM clean_food_orders
group by age_group
order by avg_time_age asc

--Rating count
select rating_given,count(*) as rating
from clean_food_orders
group by rating_given
order by rating