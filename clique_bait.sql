create database clique_bait
use clique_bait

create table users (
    user_id int,
	cookie_id varchar(6),
	start_date date
);

insert into users (user_id, cookie_id, start_date)
values
(1, 'A1B2C3', '2020-01-01'),
(2, 'D4E5F6', '2020-01-03'),
(3, 'G7H8I9', '2020-01-05'),
(4, 'J1K2L3', '2020-01-06'),
(5, 'M4N5O6', '2020-01-07'),
(6, 'P7Q8R9', '2020-01-08'),
(7, 'S1T2U3', '2020-01-09'),
(8, 'V4W5X6', '2020-01-10'),
(9, 'Y7Z8A9', '2020-01-11'),
(10, 'B1C2D3', '2020-01-12');


create table events (
    visit_id varchar(6),
	cookie_id varchar(6),
	page_id int,
	event_type int,
	sequence_number int,
	event_time date
);

insert into events (visit_id, cookie_id, page_id, event_type, sequence_number, event_time) 
values
('V001', 'A1B2C3', 1, 1, 1, '2020-01-01'),
('V001', 'A1B2C3', 2, 2, 2, '2020-01-01'),
('V001', 'A1B2C3', 2, 4, 3, '2020-01-01'),

('V002', 'D4E5F6', 1, 1, 1, '2020-01-03'),
('V002', 'D4E5F6', 3, 2, 2, '2020-01-03'),
('V002', 'D4E5F6', 3, 3, 3, '2020-01-03'),
('V002', 'D4E5F6', 3, 4, 4, '2020-01-03'),

('V003', 'G7H8I9', 1, 1, 1, '2020-01-05'),
('V003', 'G7H8I9', 4, 2, 2, '2020-01-05'),

('V004', 'J1K2L3', 1, 1, 1, '2020-01-06'),
('V004', 'J1K2L3', 4, 2, 2, '2020-01-06'),
('V004', 'J1K2L3', 4, 3, 3, '2020-01-06'),

('V005', 'M4N5O6', 1, 1, 1, '2020-01-07'),
('V005', 'M4N5O6', 2, 2, 2, '2020-01-07'),

('V006', 'P7Q8R9', 1, 1, 1, '2020-01-08'),
('V006', 'P7Q8R9', 2, 2, 2, '2020-01-08'),
('V006', 'P7Q8R9', 2, 3, 3, '2020-01-08'),
('V006', 'P7Q8R9', 2, 4, 4, '2020-01-08');


create table event_identifier (
    event_type int,
	event_name varchar(13)
);

insert into event_identifier (event_type, event_name)
values
(1, 'Page View'),
(2, 'Add to Cart'),
(3, 'Checkout'),
(4, 'Purchase');


create table campaign_identifier (
    campaign_id int,
	products varchar(3),
	campaign_name varchar(33),
	start_date date,
	end_date date
);

insert into campaign_identifier (campaign_id, products, campaign_name, start_date, end_date) 
values
(100, 'AAA', 'New Year Campaign', '2019-12-30', '2020-01-05'),
(101, 'BBB', 'Winter Sale', '2020-01-03', '2020-01-10'),
(102, 'CCC', 'Flash Deal', '2020-01-05', '2020-01-08'),
(103, 'AAA', 'Clearance AAA', '2020-01-07', '2020-01-15'),
(104, 'BBB', 'Final BBB Offer', '2020-01-10', '2020-01-15');


create table page_hierarchy (
    page_id int,
	page_name varchar(14),
	product_category varchar(9),
	product_id int
);

insert into page_hierarchy (page_id, page_name, product_category, product_id) 
values
(1, 'Home Page', 'Generic', 0),
(2, 'Product AAA', 'AAA', 101),
(3, 'Product BBB', 'BBB', 102),
(4, 'Product CCC', 'CCC', 103),
(5, 'Product DDD', 'DDD', 104);

---------------------------------------------------------------------------------------------------------
--Truy van
-- I. Digital Analysis
-- 1. How many users are there?

select count(distinct user_id) as num_users
from users;

-- 2. How many cookies does each user have on average?

select cast(round(count(distinct cookie_id) * 1.0 / count(distinct user_id), 2) as decimal(10, 2)) as avg_cookie
from users;

-- 3. What is the unique number of visits by all users per month?

select format(event_time, 'yyyy-MM') as month,
       count(distinct visit_id) as num_of_visit
from events
group by format(event_time, 'yyyy-MM')
order by month;

-- 4. What is the number of events for each event type?

select e.event_type,ei.event_name,  count(*) as num_of_event
from events e join event_identifier ei 
              on e.event_type = ei.event_type 
group by e.event_type, ei.event_name;

-- 5. What is the percentage of visits which have a purchase event?

declare @total_visit int;
select @total_visit = count(visit_id) from events;

with purchase_event as(
     select sum(case when ei.event_name = 'purchase' then 1 else 0 end) as num_purchase
	 from events e join event_identifier ei on e.event_type = ei.event_type
)
select cast(round(num_purchase * 100.0 / @total_visit, 2) as decimal(10, 2)) as pct_purchase
from purchase_event;

-- 6. What is the percentage of visits which view the checkout page but do not have a purchase event?

WITH visits_with_checkout AS (
    SELECT DISTINCT visit_id
    FROM events
    WHERE page_id = 12  
),
visits_with_purchase AS (
    SELECT DISTINCT visit_id
    FROM events
    WHERE event_type = 3  
),
checkout_but_no_purchase AS (
    SELECT vc.visit_id
    FROM visits_with_checkout vc
    LEFT JOIN visits_with_purchase vp ON vc.visit_id = vp.visit_id
    WHERE vp.visit_id IS NULL
)

SELECT 
    ROUND(COUNT(cbnp.visit_id) * 100.0 / NULLIF(COUNT(vwc.visit_id), 0), 2) AS percent_checkout_no_purchase
FROM visits_with_checkout vwc
LEFT JOIN checkout_but_no_purchase cbnp ON vwc.visit_id = cbnp.visit_id;


-- 7. What are the top 3 pages by number of views?

with view_of_page as (
    select e.page_id, ph.page_name, count(e.visit_id) as visit_count
	from events e join page_hierarchy ph on e.page_id = ph.page_id
	group by  e.page_id, ph.page_name
	
),
rank_page as(
   select page_id, page_name, visit_count,
          dense_rank() over (order by visit_count desc) as rn
   from view_of_page
)

select page_name
from rank_page
where rn <= 3;

-- 8. What is the number of views and cart adds for each product category?
-- 9. What are the top 3 products by purchases?
-- II. Product Funnel Analysis
-- 1. Using a single SQL query - create a new output table which has the following details:
      -- How many times was each product viewed?
      -- How many times was each product added to cart?
      -- How many times was each product added to a cart but not purchased (abandoned)?
      -- How many times was each product purchased?