create database DannysDinner
use DannysDinner

CREATE TABLE sales (
  customer_id VARCHAR(1),
  order_date DATE,
  product_id INT
);


INSERT INTO sales
  (customer_id, order_date, product_id)
VALUES
  ('A', '2021-01-01', '1'),
  ('A', '2021-01-01', '2'),
  ('A', '2021-01-07', '2'),
  ('A', '2021-01-10', '3'),
  ('A', '2021-01-11', '3'),
  ('A', '2021-01-11', '3'),
  ('B', '2021-01-01', '2'),
  ('B', '2021-01-02', '2'),
  ('B', '2021-01-04', '1'),
  ('B', '2021-01-11', '1'),
  ('B', '2021-01-16', '3'),
  ('B', '2021-02-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-07', '3');

  CREATE TABLE menu (
  product_id INT,
  product_name VARCHAR(5),
  price INT
);

INSERT INTO menu
  (product_id, product_name, price)
VALUES
  ('1', 'sushi', '10'),
  ('2', 'curry', '15'),
  ('3', 'ramen', '12');

  
CREATE TABLE members (
  customer_id VARCHAR(1),
  join_date DATE
);

INSERT INTO members
  (customer_id, join_date)
VALUES
  ('A', '2021-01-07'),
  ('B', '2021-01-09');

-- 1. What is the total amount each customer spent at the restaurant?

select s.customer_id, sum(m.price) as total_amount_per_customer
from sales s join menu m on s.product_id = m.product_id
group by s.customer_id;


-- 2. How many days has each customer visited the restaurant?

select customer_id, count(distinct order_date) as so_ngay_tham
from sales
group by customer_id;


-- 3. What was the first item from the menu purchased by each customer?

with cte1 as(
    select s.customer_id, m.product_name,
	dense_rank() over(partition by s.customer_id order by s.order_date) as rnk
	from sales s join menu m on s.product_id = m.product_id
)

select customer_id, product_name
from cte1
where rnk = 1;


-- 4. What is the most purchased item on the menu and how many times was it purchased by all customers?

with cte2 as (
    select  m.product_name, count(*) as so_luong_ban_ra,
	dense_rank() over(order by count(*) desc) as rnk
    from menu m join sales s on m.product_id = s.product_id
	group by m.product_name
)
select product_name, so_luong_ban_ra
from cte2
where rnk =1;

-- 5. Which item was the most popular for each customer?

with cte3 as (
    select s.customer_id, m.product_name, count(*) as so_luong_mua,
	       dense_rank() over (partition by s.customer_id order by count(*) desc) as rnk
	from  menu m join sales s on m.product_id = s.product_id
	group by s.customer_id, m.product_name
)

select  customer_id, product_name
from cte3
where rnk =1;

-- 6. Which item was purchased first by the customer after they became a member?

with cte4 as (
    select mb.customer_id, s.order_date, s.product_id, mb.join_date
    from members mb join sales s on mb.customer_id = s.customer_id 
),

cte5 as (
    select c.customer_id, m.product_name, c.order_date,
	       dense_rank() over(partition by c.customer_id order by c.order_date) as rnk
	from cte4 c join menu m on c.product_id = m.product_id
	where c.order_date >= c.join_date
)

select customer_id, product_name
from cte5
where rnk =1;

-- 7. Which item was purchased just before the customer became a member?

with cte6 as (
    select mb.customer_id, s.order_date, s.product_id, mb.join_date
    from members mb join sales s on mb.customer_id = s.customer_id 
),

cte7 as (
    select c.customer_id, m.product_name, c.order_date,
	       dense_rank() over(partition by c.customer_id order by c.order_date desc) as rnk
	from cte6 c join menu m on c.product_id = m.product_id
	where c.order_date < c.join_date
)

select customer_id, product_name
from cte7
where rnk =1;

-- 8. What is the total items and amount spent for each member before they became a member?


with cte8 as (
    select mb.customer_id, s.order_date, s.product_id, mb.join_date
    from members mb join sales s on mb.customer_id = s.customer_id 
),

cte9 as (
    select c.customer_id, count(*) as total_item, sum(m.price) as total_amount
	      
	from cte8 c join menu m on c.product_id = m.product_id
	where c.order_date < c.join_date
	group by c.customer_id
)

select *
from cte9;


-- 9. If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?

select s.customer_id, 
       sum( case when m.product_name = 'sushi' then m.price*10*2 else m.price*10 end) as total_point
	   
from sales s join menu m on s.product_id = m.product_id
group by  s.customer_id;

-- 10. In the first week after a customer joins the program (including their join date) they earn 2x points on all items, not just sushi - how many points do customer A and B have at the end of January?

with cte10 as(
    select customer_id, join_date as begin_day_program, dateadd(day, 6, join_date) as end_day_program
	from members
)

select s.customer_id, sum(m.price*10*2) as total_point
from sales s join menu m on s.product_id = m.product_id
             join cte10 c on s.customer_id = c.customer_id 
where s.order_date between c.begin_day_program and c.end_day_program and month(c.end_day_program) = 1
group by s.customer_id;