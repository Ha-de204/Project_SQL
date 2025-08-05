create database Pizza_Runner
	
use Pizza_Runner

DROP TABLE IF EXISTS runners;
CREATE TABLE runners (
  runner_id INT,
  registration_date DATE
);
INSERT INTO runners
  (runner_id, registration_date)
VALUES
  (1, '2021-01-01'),
  (2, '2021-01-03'),
  (3, '2021-01-08'),
  (4, '2021-01-15');

  DROP TABLE IF EXISTS customer_orders;
  CREATE TABLE customer_orders (
  order_id INT,
  customer_id INT,
  pizza_id INT,
  exclusions VARCHAR(4),
  extras VARCHAR(4),
  order_time DATETIME
);
INSERT INTO customer_orders
  (order_id, customer_id, pizza_id, exclusions, extras, order_time)
VALUES
  (1, 101, 1, '', '', '2020-01-01 18:05:02'),
  (2, 101, 1, '', '', '2020-01-01 19:00:52'),
  (3, 102, 1, '', '', '2020-01-02 23:51:23'),
  (3, 102, 2, '', NULL, '2020-01-02 23:51:23'),
  (4, 103, 1, '4', '', '2020-01-04 13:23:46'),
  (4, 103, 1, '4', '', '2020-01-04 13:23:46'),
  (4, 103, 2, '4', '', '2020-01-04 13:23:46'),
  (5, 104, 1, 'null', '1', '2020-01-08 21:00:29'),
  (6, 101, 2, 'null', 'null', '2020-01-08 21:03:13'),
  (7, 105, 2, 'null', '1', '2020-01-08 21:20:29'),
  (8, 102, 1, 'null', 'null', '2020-01-09 23:54:33'),
  (9, 103, 1, '4', '1, 5', '2020-01-10 11:22:59'),
  (10, 104, 1, 'null', 'null', '2020-01-11 18:34:49'),
  (10, 104, 1, '2, 6', '1, 4', '2020-01-11 18:34:49');

DROP TABLE IF EXISTS runner_orders;
CREATE TABLE runner_orders (
  order_id INT,
  runner_id INT,
  pickup_time VARCHAR(19),
  distance VARCHAR(7),
  duration VARCHAR(10),
  cancellation VARCHAR(23)
);
INSERT INTO runner_orders
  (order_id, runner_id, pickup_time, distance, duration, cancellation)
VALUES
  (1, 1, '2020-01-01 18:15:34', '20km', '32 minutes', ''),
  (2, 1, '2020-01-01 19:10:54', '20km', '27 minutes', ''),
  (3, 1, '2020-01-03 00:12:37', '13.4km', '20 mins', NULL),
  (4, 2, '2020-01-04 13:53:03', '23.4', '40', NULL),
  (5, 3, '2020-01-08 21:10:57', '10', '15', NULL),
  (6, 3, 'null', 'null', 'null', 'Restaurant Cancellation'),
  (7, 2, '2020-01-08 21:30:45', '25km', '25mins', 'null'),
  (8, 2, '2020-01-10 00:15:02', '23.4 km', '15 minute', 'null'),
  (9, 2, 'null', 'null', 'null', 'Customer Cancellation'),
  (10, 1, '2020-01-11 18:50:20', '10km', '10minutes', 'null');

DROP TABLE IF EXISTS pizza_names;
CREATE TABLE pizza_names (
  pizza_id INT,
  pizza_name TEXT
);
INSERT INTO pizza_names
  (pizza_id, pizza_name)
VALUES
  (1, 'Meatlovers'),
  (2, 'Vegetarian');

DROP TABLE IF EXISTS pizza_recipes;
CREATE TABLE pizza_recipes (
  pizza_id INT,
  toppings TEXT
);
INSERT INTO pizza_recipes
  (pizza_id, toppings)
VALUES
  (1, '1, 2, 3, 4, 5, 6, 8, 10'),
  (2, '4, 6, 7, 9, 11, 12');

DROP TABLE IF EXISTS pizza_toppings;
CREATE TABLE pizza_toppings (
  topping_id INT,
  topping_name TEXT
);
INSERT INTO pizza_toppings
  (topping_id, topping_name)
VALUES
  (1, 'Bacon'),
  (2, 'BBQ Sauce'),
  (3, 'Beef'),
  (4, 'Cheese'),
  (5, 'Chicken'),
  (6, 'Mushrooms'),
  (7, 'Onions'),
  (8, 'Pepperoni'),
  (9, 'Peppers'),
  (10, 'Salami'),
  (11, 'Tomatoes'),
  (12, 'Tomato Sauce');

-- A. Pizza Metrics
-- 1. How many pizzas were ordered?

select count(*) as quantity_pizza
from customer_orders;

-- 2. How many unique customer orders were made?

select sum (quantity_order) as total_unique_order
from (
    select count(*) as quantity_order, customer_id
	from customer_orders
	group by customer_id
	having count(*) = 1
) t;

-- 3. How many successful orders were delivered by each runner?

select runner_id, 
       sum(case when pickup_time like 'null' then 0 else 1 end) as total_order_success_per_runner
from runner_orders
group by runner_id;

-- 4. How many of each type of pizza was delivered?

select count(distinct c.pizza_id) as total_type_pizza
from customer_orders c join runner_orders r on c.order_id = r.order_id
where r.pickup_time not like 'null';

-- 5. How many Vegetarian and Meatlovers were ordered by each customer?

select customer_id, 
        sum(case when pizza_id = 1 then 1 else 0 end) as total_Meatlovers_per_cus,
		sum(case when pizza_id = 2 then 1 else 0 end) as total_Vegetarian_per_cus
from customer_orders
group by customer_id;
		
-- 6. What was the maximum number of pizzas delivered in a single order?

select top 1 count(*) as max_num_pizza_per_order
from customer_orders
group by order_id
order by count(*) desc;

-- 7. For each customer, how many delivered pizzas had at least 1 change and how many had no changes?

select c.customer_id, 
       sum(case when (c.exclusions in ('', 'null') or c.exclusions is null) and (c.extras in ('', 'null', 'NaN') or c.extras is null) then 1 else 0 end) as quantity_no_change,
	   sum(case when not (c.exclusions in ('', 'null') or c.exclusions is null) and (c.extras in ('', 'null', 'NaN') or c.extras is null) then 1 else 0 end) as quantity_change
from customer_orders c join runner_orders r on c.order_id = r.order_id
where r.pickup_time is not null
group by c.customer_id;

-- 8. How many pizzas were delivered that had both exclusions and extras?

select count(*) as total_deliv_pizza_both_exclusions_and_extras
from customer_orders c join runner_orders r on c.order_id = r.order_id
where r.pickup_time is not null and c.exclusions not in('', 'null') and c.extras not in('', 'null', 'NaN')

-- 9. What was the total volume of pizzas ordered for each hour of the day?

select datepart(hour, order_time) as order_hour,
       count(*) as total_pizza_per_hour
from customer_orders
group by datepart(hour, order_time)
order by order_hour;

-- 10. What was the volume of orders for each day of the week?

set datefirst 1;
select datename(weekday, order_time) as day_of_week,
       count(*) as total_pizza_per_day
from customer_orders
group by datename(weekday, order_time), datepart(weekday, order_time)
order by datepart(weekday, order_time);

-- B. Runner and Customer Experience
-- 1. How many runners signed up for each 1 week period? (i.e. week starts 2021-01-01)

set datefirst 1;
select datepart(week, registration_date) as order_week, count(*) as quantity_sign_up
from runners
group by datepart(week, registration_date);

-- 2. What was the average time in minutes it took for each runner to arrive at the Pizza Runner HQ to pickup the order?

select runner_id, 
     avg(
         try_cast(
		     replace(replace(replace(replace(duration, 'minutes', ''), 'minute', ''), 'mins', ''), 'min', '')
			 as int
		 )
     ) as time_average
from runner_orders
where duration is not null
group by runner_id;

-- 3. Is there any relationship between the number of pizzas and how long the order takes to prepare?

with cte1 as (
     select order_id, count(*) as quantity_pizza_per_order
	 from customer_orders
	 group by order_id
),

cte2 as(
     select order_id, 
        sum(
            try_cast(
		        replace(replace(replace(replace(duration, 'minutes', ''), 'minute', ''), 'mins', ''), 'min', '')
			    as int
		    )
        ) as total_time_prepare
     from runner_orders
     where duration not like 'null'
     group by order_id
)

select c1.order_id, cast(round(c1.quantity_pizza_per_order*1.0/c2.total_time_prepare, 2) as decimal(10,2)) as rate_time_prepare
from cte1 c1 join cte2 c2 on c1.order_id = c2.order_id;


-- 4. What was the average distance travelled for each customer?

with cte3 as(
     select c.customer_id, 
            try_cast(
		        replace(r.distance, 'km', '')
			    as float
		    ) as clean_distance
        
     from runner_orders r join customer_orders c on r.order_id = c.order_id
     where r.distance is not null and r.distance <> 'null'
)
select customer_id, 
	   cast(round(avg(clean_distance), 2) as decimal(10,2)) as avg_distance_km
from cte3
group by customer_id;


-- 5. What was the difference between the longest and shortest delivery times for all orders?

with cte4 as(
   select  try_cast(
		 replace(replace(replace(replace(duration, 'minutes', ''), 'minute', ''), 'mins', ''), 'min', '')
			 as int
	) as clean_duration
    from runner_orders
    where duration is not null and duration <> 'null'
) 
select max(clean_duration) - min(clean_duration) as do_chenh_lenh_time_trans 
from cte4;

-- 6. What was the average speed for each runner for each delivery and do you notice any trend for these values?

with cte5 as (
     select order_id, runner_id,
	       try_cast(
		        replace(distance, 'km', '')
			    as float
		    ) as clean_distance,
			try_cast(
		         replace(replace(replace(replace(duration, 'minutes', ''), 'minute', ''), 'mins', ''), 'min', '')
			    as int
	        ) as clean_duration
	  from runner_orders
	  where duration is not null and duration <> 'null' and distance is not null and distance <> 'null'
)

select runner_id, order_id, cast(round(clean_distance * 1.0 / clean_duration, 2) as decimal(10,2)) as avg_speed_km_per_min
from cte5;

-- 7. What is the successful delivery percentage for each runner?

with cte6 as(
      select runner_id, count(*) as total_trans_for_runner
	  from runner_orders
	  group by runner_id
),

 cte7 as(
      select runner_id, count(*) as total_trans_success_for_runner
	  from runner_orders
	  where pickup_time <> 'null' 
	  group by runner_id
 )

 select c6.runner_id, cast(round(c7.total_trans_success_for_runner *100.0 / c6.total_trans_for_runner, 2) as decimal(10,2)) as percentage_success_delivery
 from cte6 c6 join cte7 c7 on c6.runner_id = c7.runner_id;

-- C. Ingredient Optimisation
-- 1. What are the standard ingredients for each pizza?

select 
    cast(pn.pizza_name as varchar(max)) as pizza_name,
    string_agg(cast(pt.topping_name as varchar(max)), ', ') as standard_ingredients
from (
    select pizza_id, cast(toppings as varchar(max)) as toppings
    from pizza_recipes
) pr
join pizza_names pn on pr.pizza_id = pn.pizza_id
cross apply string_split(pr.toppings, ',') as split_topping
join pizza_toppings pt on pt.topping_id = try_cast(split_topping.value as int)
group by cast(pn.pizza_name as varchar(max));

-- 2. What was the most commonly added extra?

select top 1
    cast(pt.topping_name as varchar(max)) as topping_name,
    count(*) as times_added
from (
    select cast(extras as varchar(max)) as extras
    from customer_orders
    where extras is not null and extras != '' and extras <> 'NaN'
) t
cross apply string_split(t.extras, ',') as split_extra
join pizza_toppings pt on pt.topping_id = try_cast(split_extra.value as int)
group by cast(pt.topping_name as varchar(max))
order by count(*) desc;


-- 3. What was the most common exclusion?

select top 1
    cast(pt.topping_name as varchar(max)) as topping_name,
    count(*) as times_excepted
from (
    select cast(exclusions as varchar(max)) as exclusions
    from customer_orders
    where exclusions is not null and exclusions != ''
) t
cross apply string_split(t.exclusions, ',') as split_exclusion
join pizza_toppings pt on pt.topping_id = try_cast(split_exclusion.value as int)
group by cast(pt.topping_name as varchar(max))
order by count(*) desc;

-- 4. Generate an order item for each record in the customers_orders table in the format of one of the following:
--------Meat Lovers
--------Meat Lovers - Exclude Beef
--------Meat Lovers - Extra Bacon
--------Meat Lovers - Exclude Cheese, Bacon - Extra Mushroom, Peppers

select 
    co.order_id,
    cast(pn.pizza_name as varchar(max))
    + 
    case 
        when co.exclusions is not null and co.exclusions != ''
        then ' - Exclude ' + (
            select string_agg(cast(pt.topping_name as varchar(max)), ', ')
            from string_split(cast(co.exclusions as varchar(max)), ',') as ex
            join pizza_toppings pt on pt.topping_id = try_cast(ex.value as int)
        )
        else ''
    end
    +
    case 
        when co.extras is not null and co.extras != ''
        then ' - Extra ' + (
            select string_agg(cast(pt.topping_name as varchar(max)), ', ')
            from string_split(cast(co.extras as varchar(max)), ',') as ex
            join pizza_toppings pt on pt.topping_id = try_cast(ex.value as int)
        )
        else ''
    end as order_item
from customer_orders co
join pizza_names pn on co.pizza_id = pn.pizza_id;


-- 5. Generate an alphabetically ordered comma separated ingredient list for each pizza order from the customer_orders table and add a 2x in front of any relevant ingredients
--------For example: "Meat Lovers: 2xBacon, Beef, ... , Salami"

-- 6. What is the total quantity of each ingredient used in all delivered pizzas sorted by most frequent first?

-- D. Pricing and Ratings
-- 1. If a Meat Lovers pizza costs $12 and Vegetarian costs $10 and there were no charges for changes - how much money has Pizza Runner made so far if there are no delivery fees?

with cte as(
    select co.order_id, co.pizza_id
	from customer_orders co join runner_orders ro on co.order_id = ro.order_id
	where ro.pickup_time <> 'null'
)

select sum(case when pizza_id = 1 then 12 else 10 end) as total_money
from cte;

-- 2. What if there was an additional $1 charge for any pizza extras?
---------Add cheese is $1 extra

with cte1 as(
    select co.order_id, co.pizza_id, co.extras,
	       case when  extras like 'null' or ltrim(rtrim(cast(extras as varchar(max)))) = ''
		                                 or ltrim(rtrim(cast(extras as varchar(max)))) = 'NaN'
				then 0 
				else (
				    select count(*)
					from string_split(cast(extras as varchar(max)), ',')
					where ltrim(rtrim(value)) <> ''
				) 
			end as extra_fee
	from customer_orders co join runner_orders ro on co.order_id = ro.order_id
	where ro.pickup_time <> 'null'
)
select sum(case when pizza_id = 1 then 12 else 10 end) + sum(extra_fee) as total_money
from cte1;


-- 3. The Pizza Runner team now wants to add an additional ratings system
--that allows customers to rate their runner, how would you design an additional
--table for this new dataset - generate a schema for this new table and insert 
--your own data for ratings for each successful customer order between 1 to 5.

create table runner_ratings (
    rating_id int identity(1,1),           
    order_id int not null,                           
    runner_id int not null,                        
    rating int check (rating between 1 and 5),        
    comments varchar(255),                            
    rating_date datetime default getdate()       
);

INSERT INTO runner_ratings (order_id, runner_id, rating, comments, rating_date)
VALUES 
(1, 1, 5, 'Giao hàng nhanh và thân thiện', '2025-07-01 10:15:00'),
(2, 2, 4, 'Đúng giờ, lịch sự', '2025-07-02 14:30:00'),
(3, 3, 3, 'Chậm hơn dự kiến nhưng chấp nhận được', '2025-07-03 18:00:00'),
(4, 1, 2, 'Không gọi điện trước khi giao', '2025-07-04 12:00:00'),
(5, 2, 5, 'Phục vụ tốt, hài lòng', '2025-07-05 09:45:00'),
(6, 3, 1, 'Hàng đến muộn và không đúng vị trí', '2025-07-06 16:20:00'),
(7, 4, 4, 'Ổn, không có gì đặc biệt', '2025-07-07 11:30:00'),
(8, 2, 5, 'Dịch vụ tuyệt vời', '2025-07-08 13:15:00'),
(9, 4, 3, 'Cần cải thiện thái độ', '2025-07-09 17:10:00'),
(10, 4, 4, 'Giao hàng nhanh, đóng gói cẩn thận', '2025-07-10 08:50:00');


-- 4. Using your newly generated table - can you join all of the information together to form a table which has the following information for successful deliveries?
----------customer_id
----------order_id
----------runner_id
----------rating
----------order_time
----------pickup_time
----------Time between order and pickup
----------Delivery duration
----------Average speed
----------Total number of pizzas

select 
    co.customer_id,
    co.order_id,
    ro.runner_id,
    rr.rating,
    co.order_time,
    ro.pickup_time,

    datediff(minute, co.order_time, ro.pickup_time) as time_between_order_and_pickup,

    try_cast(replace(ro.duration, 'minutes', '') as int) as delivery_duration_minutes,

    round(
        try_cast(replace(ro.distance, 'km', '') as float) / 
        (nullif(try_cast(replace(ro.duration, 'minutes', '') as float), 0) / 60.0),
        2
    ) as average_speed_kmph,

    count(*) as total_pizzas

from customer_orders co
join runner_orders ro on co.order_id = ro.order_id
join runner_ratings rr on co.order_id = rr.order_id

where ro.pickup_time is not null and ro.cancellation is null

group by 
    co.customer_id, co.order_id, ro.runner_id, rr.rating,
    co.order_time, ro.pickup_time, ro.duration, ro.distance

order by co.order_id;


-- 5. If a Meat Lovers pizza was $12 and Vegetarian $10 fixed prices with no cost for extras
--and each runner is paid $0.30 per kilometre traveled - how much money does Pizza 
--Runner have left over after these deliveries?

with cte6 as (
     select order_id, runner_id,
	       try_cast(
		        replace(distance, 'km', '')
			    as float
		    ) as clean_distance
			
	  from runner_orders
	  where distance is not null and distance <> 'null'
),
cte7 as (
    select order_id, 
	sum( case when pizza_id = 1 then 12 else 10 end) as total_cost_per_order
	from customer_orders
	group by order_id
)

select c6.order_id, (c7.total_cost_per_order - 0.3*c6.clean_distance) as income_per_order
from cte6 c6 left join cte7 c7 on c6.order_id = c7.order_id
