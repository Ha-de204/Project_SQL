use BalancedTree

--High Level Sales Analysis
-- 1.What was the total quantity sold for all products?
--- giup thong ke so luong san pham da ban ra thi truong, tu do xac dinh duoc doanh thu
--- dua ra chien luoc kinh doanh hop ly

select sum(qty) as So_luong_san_pham
from sales

-- 2.What is the total generated revenue for all products before discounts?
--- tong doanh thu truoc khi co discount, de xem luong discount da hop ly chua,
--- xac dinh doanh thu tiem nang toi da
--- so sanh voi doanh thu thuc te sau giam gia

select sum(price * qty) as tong_thu_nhap_truoc_giam_gia
from sales

-- 3.What was the total discount amount for all products?
--- do luong chi phi cua chien luoc khuyen mai nay
--- so sanh doanh thu truoc va sau giam gia
--- tong so tien ma cty da phai hy sinh de ap dung chien luoc kinh doanh nay

select sum(price * qty * discount *1.0 / 100) as tong_tien_giam_gia
from sales

-- Transaction Analysis
-- 1. How many unique transactions were there?
--- do luong so luong giao dich thuc te

 select count(distinct txn_id) as quantity_transaction
 from sales

-- 2. What is the average unique products purchased in each transaction?
--- giup hieu hanh vi nguoi dung
--- danh gia muc hoat dong on dinh cua du an
--- tu do dua ra chien luoc hoat dong hieu qua

with sp_khac_nhau_per_txn as (
    select txn_id,
	       count(distinct prod_id) as sp_khac_nhau
	from sales
	group by txn_id
)

select 
  cast(round(avg(sp_khac_nhau), 2) as decimal(10,2)) as  tb_so_sp_khac_nhau_trong_gd
from sp_khac_nhau_per_txn;

-- 3. What are the 25th, 50th and 75th percentile values for the revenue per transaction?

with cte as (
    select 
        txn_id, 
        sum(qty * (1 - discount * 1.0 / 100) * price) as tong_doanh_thu
    from sales
   group by txn_id
)
select top 1
    percentile_cont(0.25) within group (order by tong_doanh_thu) over () as p25,
    percentile_cont(0.50) within group  (order by  tong_doanh_thu) over () as p50,
    percentile_cont(0.75) within group  (order by  tong_doanh_thu) over () as p75
from cte;


-- 4. What is the average discount value per transaction?
--- danh gia chi phi giam gia tren moi giao dich
--- hieu tac dong tai chinh cua chuong trinh khuyen mai: neu tb moi giao dich giam qua nhieu thi cty co the dang
--- chiu lo, neu tb giao dich giam it nhung so luong giao dich tang thi co the danh gia day la chien luoc hieu qua

select
  txn_id AS ma_gd, 
  cast(round(sum(qty*price * 1.0*discount/100) / count(prod_id), 2) as decimal(10,2)) as  tb_giam_gia_trong_gd
from sales
group by txn_id;


-- 5. What is the percentage split of all transactions for members vs non-members?
--- danh gia xu huong nguoi dung / hanh vi mua hang cua khach hang theo loai/nhom
--- danh gia su hieu qua cua chuong trinh member
--- tu do dua ra chien luoc marketing hieu qua

select 
case when sum(case when member = 0 then 1 else 0 end) = 0 then null
else
cast(round(sum(case when member = 1 then 1 else 0 end)* 1.0 / sum(case when member = 0 then 1 else 0 end), 2)  as decimal(10,2))
end as rate_member
from sales;

-- 6. What is the average revenue for member transactions and non-member transactions?
--- so sanh gia tri don hang tb giua member va non-member
--- giup danh gia hieu qua chuong trinh member
--- dua ra chien luoc kinh doanh hop ly

with cte1 as (
    select 
        sum(qty * (1 - 1.0 * discount / 100) * price) as revenue1, 
        count(distinct txn_id) as so_gd1
    from sales
    where member = 1
),
cte2 as (
    select 
        sum(qty * (1 - 1.0 * discount / 100) * price) as revenue2, 
        count(distinct txn_id) as so_gd2
    from sales
    where member = 0
)

select
    cast(round(revenue1 / so_gd1, 2) as decimal(10,2)) as tb_doanh_thu_tvien,
    cast(round(revenue2 / so_gd2, 2) as decimal(10,2)) as tb_doanh_thu_khong_tvien
from cte1, cte2;

-- Product Analysis
-- 1. What are the top 3 products by total revenue before discount?
--- dua ra top cac sp ban chay / duoc ua chuong nhat
--- hieu duoc hanh vi/so thich cua nguoi dung
--- dua ra cac chien luoc kinh doanh hop ly de thu hut khach hang, day cao hon nua loi nhuan cho du an

with cte3 as(
      select p.product_name, dense_rank() over (order by sum(s.price*s.qty) desc) as rnk
	  from sales s join product_detail p on s.prod_id = p.product_id and s.price = p.price
	  group by p.product_name
)   
select product_name
from cte3
where rnk <= 3

-- 2. What is the total quantity, revenue and discount for each segment?
--- phan tich hieu suat kinh doanh theo tung phan khuc khach hang
--- so sanh cac chi so chinh giua cac phan khuc
--- ho tro dua ra cac chien luoc marketing hop ly

with cte4 as(
    select p.product_id, p.segment_id, p.segment_name, s.prod_id, s.qty, s.price, s.discount
	from product_detail p join sales s on p.product_id = s.prod_id
)

select segment_id, segment_name, 
       sum(qty) as total_quantity,
	   cast(round(sum(qty * (1 - 1.0*discount/100) * price), 2) as decimal(10,2)) as revenue,
	   cast(round(sum(qty * price * 1.0 * discount/100), 2) as decimal(10,2)) as total_discount
from cte4
group by segment_id, segment_name

-- 3. What is the top selling product for each segment?
--- tim ra san pham ban chay nhat theo tung phan khuc khach hang
--- so sanh san pham yeu thich giua cac nhom k.hang

with cte5 as (
    select 
        p.segment_id,
        p.segment_name,
        p.product_id,
        p.product_name,
        sum(s.qty) as total_quantity_sold
    from 
        product_detail p
        join sales s on p.product_id = s.prod_id
    group by 
        p.segment_id, p.segment_name, p.product_id, p.product_name
),

ranked_products as (
    select *,
           row_number() over (partition by segment_id order by total_quantity_sold desc) as rnk
    from cte5
)

select 
    segment_id,
    segment_name,
    product_id,
    product_name,
    total_quantity_sold
from ranked_products
where rnk = 1
order by segment_id;


-- 4. What is the total quantity, revenue and discount for each category?
-- Đánh giá hiệu suất kinh doanh theo từng danh mục sản phẩm (category)
-- so sanh cac chi so quan trong giua cac danh muc voi nhau

with cte6 as(
    select p.product_id, p.category_id, p.category_name, s.prod_id, s.qty, s.price, s.discount
	from product_detail p join sales s on p.product_id = s.prod_id
)

select category_id, category_name, 
       sum(qty) as total_quantity,
	   cast(round(sum(qty * (1 - 1.0*discount/100) * price), 2) as decimal(10,2)) as revenue,
	   cast(round(sum(qty * price * 1.0 * discount/100), 2) as decimal(10,2)) as total_discount
from cte6
group by category_id, category_name

-- 5. What is the top selling product for each category?
--- dua ra san pham ban chay nhat theo tung danh muc
--- So sánh giữa các danh mục để biết sản phẩm chủ lực là gì

with cte7 as (
    select 
        p.category_id,
        p.category_name,
        p.product_id,
        p.product_name,
        sum(s.qty) as total_quantity_sold
    from 
        product_detail p
        join sales s on p.product_id = s.prod_id
    group by 
        p.category_id, p.category_name, p.product_id, p.product_name
),

ranked_products as (
    select *,
           row_number() over (partition by category_id order by total_quantity_sold desc) as rnk
    from cte7
)

select 
    category_id,
    category_name,
    product_id,
    product_name,
    total_quantity_sold
from ranked_products
where rnk = 1
order by category_id;

-- 6. What is the percentage split of revenue by product for each segment?
--- de biet duoc trong mỗi phân khúc khách hàng (segment), từng sản phẩm (prod_id) 
--- đóng góp bao nhiêu phần trăm vào doanh thu tổng của phân khúc đó.
--- so sanh muc do dong gop doanh thu cua cac sp giua cac nhom k.hang

with revenue_per_product as (
     select p.segment_id, p.segment_name, p.product_id, p.product_name, sum(s.qty*(1 - 1.0*s.discount/100)*s.price) as product_revenue
	 from product_detail p join sales s on p.product_id = s.prod_id
	 group by p.segment_id, p.segment_name, p.product_id, p.product_name
),

total_revenue_segment as(
     select segment_id, segment_name, sum (product_revenue) as total_revenue
     from revenue_per_product
	 group by  segment_id, segment_name
)

select r.segment_id, r.segment_name, r.product_id, r.product_name,
       cast(round(r.product_revenue*100.0 / total_revenue, 2) as decimal(10,2)) as percentage_split_revenue

from revenue_per_product r join total_revenue_segment t on r.segment_id = t.segment_id
order by r.segment_id, percentage_split_revenue desc


-- 7. What is the percentage split of revenue by segment for each category?
--- de biet duoc trong mỗi danh mục sản phẩm (category), doanh thu đến từ từng nhóm khách hàng (segment) 
--- chiếm bao nhiêu phần trăm.
--- xac dinh phan khuc k.hang chinh cua tung loai sp

with revenue_per_segment as (
     select p.category_id, p.category_name, p.segment_id, p.segment_name, sum(s.qty*(1 - 1.0*s.discount/100)*s.price) as segment_revenue
	 from product_detail p join sales s on p.product_id = s.prod_id
	 group by p.category_id, p.category_name, p.segment_id, p.segment_name
),

total_revenue_category as(
     select category_id, category_name, sum (segment_revenue) as total_revenue
     from revenue_per_segment
	 group by  category_id, category_name
)

select r.category_id, r.category_name, r.segment_id, r.segment_name,
       cast(round(r.segment_revenue*100.0 / total_revenue, 2) as decimal(10,2)) as percentage_split_revenue

from revenue_per_segment r join total_revenue_category t on r.category_id = t.category_id
order by r.category_id, percentage_split_revenue desc

-- 8. What is the percentage split of total revenue by category?
--- biet duoc moi danh muc dong gop bao nhieu phan tram trong tong doanh thu
--- xac dinh nhom sp tao ra doanh thu cao nhat

declare @total_revenue float;
select @total_revenue = sum(qty*price*(1-1.0*discount/100)) from sales;

with revenue_per_category as (
     select p.category_id, p.category_name, sum(s.qty* (1-1.0*s.discount/100)*s.price) as category_revenue
	 from product_detail p join sales s on p.product_id = s.prod_id
	 group by  p.category_id, p.category_name
)


select category_id, category_name, 
       cast(round(category_revenue *100.0 / @total_revenue, 2) as decimal(10,2)) as  percentage_split_revenue_category
from  revenue_per_category

-- 9. What is the total transaction “penetration” for each product? (hint: penetration = number of transactions where at least 1 quantity of a product was purchased divided by total number of transactions)

declare @total_transaction int
select @total_transaction = count(distinct txn_id) from sales

select prod_id, cast(round(count(distinct txn_id)*1.0/@total_transaction, 2) as decimal(10,2)) as transaction_penetration
from sales
group by prod_id
order by transaction_penetration desc;


-- 10. What is the most common combination of at least 1 quantity of any 3 products in a 1 single transaction?
--- tim bo 3 sp thuong duoc mua cung nhau trong 1 giao dich
--- tu do co the dua ra cac chuong trinh de tu hut k.hang nhu combo sp, chuong trinh k.mai nhom,...
--- hieu duoc hanh vi/so thich mua hang cua k.hang

-- Lấy các tổ hợp 3 sản phẩm trong cùng 1 giao dịch
with product_combinations as (
    select 
        s1.txn_id,
        s1.prod_id as prod1,
        s2.prod_id as prod2,
        s3.prod_id as prod3
    from sales s1
    join sales s2 on s1.txn_id = s2.txn_id and s1.prod_id < s2.prod_id
    join sales s3 on s1.txn_id = s3.txn_id and s2.prod_id < s3.prod_id
)

-- Đếm số lần xuất hiện mỗi tổ hợp 3 sản phẩm
select top 1
    prod1, prod2, prod3,
    count(*) as frequency
from product_combinations
group by prod1, prod2, prod3
order by frequency desc;

