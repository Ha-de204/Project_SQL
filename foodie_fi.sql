use foodie_fi

-- 1. How many customers has Foodie-Fi ever had?

select count(distinct customer_id) as the_number_of_customers
from subscriptions;

-- 2. What is the monthly distribution of trial plan start_date values for our dataset - use the start of the month as the group by value

select datefromparts(year(s.start_date), month(s.start_date), 1) as month_start,
       count(*) as total_trials
from subscriptions s join plans p on s.plan_id = p.plan_id
where p.plan_name = 'trial'
group by datefromparts(year(s.start_date), month(s.start_date), 1) 
order by month_start;


-- 3. What plan start_date values occur after the year 2020 for our dataset? Show the breakdown by count of events for each plan_name

select p.plan_name, count(*) as count_of_event
from plans p join subscriptions s on p.plan_id = s.plan_id
where year(s.start_date) > 2020
group by p.plan_name;

-- 4. What is the customer count and percentage of customers who have churned rounded to 1 decimal place?

declare @count_cus int;
select @count_cus = count(distinct customer_id) from subscriptions;

with cte as(
    select customer_id, count(distinct plan_id) as count_change,
	       case when count(distinct plan_id) > 1 then 1 else 0 end as mark_change
	from subscriptions
	group by customer_id
)


select sum(case when mark_change = 1 then 1 else 0 end) as count_cus_change,
       cast(round(sum(case when mark_change = 1 then 1 else 0 end)*100.0 / @count_cus, 1) as decimal(10,1)) as percentage_of_cus_changed

from cte;
       

-- 5. How many customers have churned straight after their initial free trial - what percentage is this rounded to the nearest whole number?
------ thoi han dung thu la 7 ngay, vay de kiem tra xem customer co roi bo sau khi dung thu khong thi kiem tra sau 7 ngay ke tu ngay dk dung thu customer co dk plan_id nao khac 0 va khac 4 hay k,
------ neu khong thi customer da roi bo ngay sau lan dung thu dau tien

declare @total_cus int;
select @total_cus = count(distinct customer_id) from subscriptions;

-- lay ra danh sach khach hang va ngay bat dau dang ki goi khac sau khi dung thu 7 ngay
with cte1 as(
     select customer_id, dateadd(day, 7, min(start_date)) as start_register
	 from subscriptions
	 where plan_id = 0
	 group by customer_id
),

--lay ra danh sach khach hang va dem so luong goi dang ki sau khi dung thu 7 ngay
cte2 as(
    select c1.customer_id, count(s.plan_id) as quantity_plan_regist
	from  cte1 c1 left join subscriptions s on s.customer_id = c1.customer_id
                                            and s.start_date >= c1.start_register
											and s.plan_id not in (0, 4)
	group by c1.customer_id
)
-- dua ra ti le khach hang roi di sau khi su dung goi dung thu
select cast(round(sum(case when quantity_plan_regist = 0 then 1 else 0 end) * 100.0 / @total_cus, 0) as float) as percentage_cus_cancel
from cte2;


-- 6. What is the number and percentage of customer plans after their initial free trial?
----dua ra ti le dang ki cac goi de dua ra nhan dinh chung, cac danh gia tuong doi
----ve tinh hieu qua cua cac goi, tu do dua ra chien luoc hop ly de cai thien hieu qua 
----va tang loi nhuan cho du an

declare @total_regist int;

-- dung bang tam (bien bang)
declare @numCus table(
   plan_id int,
   number_of_cus int
);

-- dua du lieu vao bang tam
insert into @numCus (plan_id, number_of_cus)
select plan_id, count(*) as number_of_cus
from subscriptions
where plan_id <> 0
group by plan_id;

select @total_regist = sum(number_of_cus) from @numCus;

select plan_id, number_of_cus,
       cast(round(number_of_cus *100.0 / @total_regist, 2) as decimal(10,2)) as percentage_regist
from @numCus
order by plan_id;


-- 7. What is the customer count and percentage breakdown of all 5 plan_name values at 2020-12-31?
----- hieu suat dk cac goi vao ngay 31-12-2020 ngay cuoi nam

declare @total_regist int;

select @total_regist = count(plan_id)
from subscriptions
where start_date = '2020-12-31';

with numRes as(
    select plan_id, count(*) as num_Resgist
	from subscriptions
	where start_date = '2020-12-31'
	group by plan_id
)

select plan_id, num_Resgist, cast(round(num_Resgist * 100.0 / @total_regist, 2) as decimal(10, 2)) as percentage_res_of_plan
from numRes;

-- 8. How many customers have upgraded to an annual plan in 2020?

select count(distinct s.customer_id) as num_cus_upgraded
from subscriptions s join plans p on s.plan_id = p.plan_id
where p.plan_name = 'pro annual' and year(s.start_date) = 2020;


-- 9. How many days on average does it take for a customer to an annual plan from the day they join Foodie-Fi?

with joined_date as(
      select customer_id, min(start_date) as join_date
	  from subscriptions 
	  group by customer_id
),

annual_date as(
     select customer_id, min(start_date) as annual_start
	 from subscriptions
	 where plan_id = 3
	 group by customer_id
),

date_diff as(
     select j.customer_id, datediff(day, j.join_date, a.annual_start) as days_to_annual
	 from joined_date j join annual_date a on j.customer_id = a.customer_id
)

select round(avg(cast(days_to_annual as float)), 2) as average_day_to_annual
from date_diff;

-- 10. Can you further breakdown this average value into 30 day periods (i.e. 0-30 days, 31-60 days etc)

declare @bucket_size int = 30;

with trial_start as(
      select customer_id, min(start_date) as trial_start_date
	  from subscriptions 
	  group by customer_id
),

annual_date as(
     select customer_id, min(start_date) as annual_start
	 from subscriptions
	 where plan_id = 3
	 group by customer_id
),

date_diff as(
     select t.customer_id, datediff(day, t.trial_start_date, a.annual_start) as days_to_annual
	 from trial_start t join annual_date a on t.customer_id = a.customer_id
),

buckets as(
     select customer_id, days_to_annual, ((days_to_annual - 1) / @bucket_size) as bucket_idx
     from date_diff
)

select concat(bucket_idx * @bucket_size + 1, '-', (bucket_idx + 1)* @bucket_size, 'days') as day_range, count(*) as num_cus
from buckets
group by bucket_idx
order by bucket_idx;

-- 11. How many customers downgraded from a pro monthly to a basic monthly plan in 2020?
-----ban dau huong suy nghi sai khi chi so sanh start_date cua plan_id = 2 có nho hon start_date 
-----cua plan_id = 1, nhung nhu the la sai vi khach hang co the dk tuy y vi du 1->4->1 do do
-----khong the so sanh don thuan nhu vay duoc
-----huong giai quyet: sd lead de kiem tra

with subscription_sequence as (
    select 
        customer_id,
        plan_id,
        start_date,
        lead(plan_id) over (partition by customer_id order by start_date) as next_plan_id,
        lead(start_date) over (partition by customer_id order by start_date) as next_start_date
    from subscriptions
    where year(start_date) = 2020
)
select count(distinct customer_id) as total_cus_downgraded
from subscription_sequence
where plan_id = 2 and next_plan_id = 1;

-- Outside The Box Questions
-- 1. How would you calculate the rate of growth for Foodie-Fi?

-- tu bang du lieu payment truy xuat ra doanh thu hoac so luong khach hang hang thang (hoac theo quy) trong nam, 
-- tu do se co 1 line chi ra mot cai nhin tong the ve su tang truong cung nhu doanh
-- thu (so luong khach hang) trong nam
-- de tinh ti le tang truong thi co the tinh bang cong thuc:
-- (gia tri hien tai - gia tri truoc do) / gia tri truoc do * 100%

-- 2. What key metrics would you recommend Foodie-Fi management to track over time to assess performance of their overall business?

     -- a. Customer Metrics (Chi so khach hang)
        -- Ty le thu hut khach hang moi: co the thong ke theo thang hoac quy
		-- Ty le khach hang roi bo: khach hang ngung su dung dich vu 
		-- Tong gia tri trung binh  ma mot khach hang dem lai trong suot time su dung dv
	 -- b. Revenue Metrics (chi so doanh thu)
	    -- Doanh thu trung binh tu moi nguoi dung dang hoat dong
		-- Doanh thu on dinh hang thang tu cac goi tra phi
		-- Ty le nguoi dung chuyen tu goi dung thu sang goi tra phi
	 -- c. Product & Usage Metrics (Chi so su dung dich vu)
	    -- Phan bo goi dich vu: ti le nguoi dung su dung cac goi
		-- Xu huong nang cap/ha cap goi
	 

-- 3. What are some key customer journeys or experiences that you would analyse further to improve customer retention?

     -- Hanh trinh chuyen doi tu goi dung thu sang goi tra phi
	    -- can dua ra cac cau hoi nhu: co bn nguoi dung ket thuc goi dung thu ma khong dk tiep, nhung ai chuyen sang goi nao,...
		---- Muc tieu: hieu duoc tai sao nguoi dung khong tiep tuc su dung -> tu do dieu chinh noi dung gioi thieu san pham, 
		---- trai ngiem thu ngiem, cung nhu cac chinh sach khuyen mai phu hop
	 -- Hanh vi cua khach hang huy dich vu
	    -- can dua ra cac cau hoi phan tich: nguoi dung huy sau khi su dung goi nao, nguoi dung huy sau bao lau, co canh bao truoc khi huy khong (chuyen xuong goi thap hon)
		---- Muc tieu: xac dinh duoc cac dau hieu, nguyen nhan roi bo de can thiep xu ly som nhu giam gia...
	 -- Time khach hang gan bo lau nhat voi goi nao
	    -- goi nao giu chan khach lau nhat...
		---- Muc tieu: toi uu hanh trinh onboarding de uong nguoi dung den goi co gia tri cao va giu chan tot
	 -- Xu huong nang/ha cap goi
	    -- nhom khach hang hay nang cap len goi annual, nhom khach hang thuong ha cap tu Bro xuong Basic
		---- Muc tieu: tim hieu ly do khach hang nang/ha cap de cai thien gia tri cac goi

-- 4. If the Foodie-Fi team were to create an exit survey shown to customers who wish to cancel their subscription, what questions would you include in the survey?

	 -- Ban danh gia trai nghiem cua minh voi Foodie_Fi nhu the nao? (thang 1-5)
	 -- Dieu gi ban thich nhat ki su dung dich vu cua chung toi?
	 -- Nhung diem ban chua hai long khi trai nghiem dv? 
	 -- Dv can cai thien nhung diem nao?
	 -- Ban co can nhac quay lai sd Foodie_Fi trong tuong lai khong?

-- 5. What business levers could the Foodie-Fi team use to reduce the customer churn rate? How would you validate the effectiveness of your ideas?

     -- Uu dai dung thoi diem: gui uu dai (giam gia, qua tang,...) cho nguoi dung sap huy hoac it hoat dong hoac de xuat goi re hon neu k.hang dang ngan
	 -- ngai chi tra
	 -- Xac thuc bang cach do hieu qua uu dai qua ty le khach doi y khong huy dich vu

	 -- Tang tinh linh hoat trong goi dang ky: cho phep tam dung dv thay vi huy han
	 -- Xac thuc: theo doi so luong nguoi chon pause so voi cancel sau khi trien khai tuy chon tam dung

	 -- Tang su tuong tac va muc do gan ket: tao chuong trinh tich diem hoac tang thuong cho nguoi gioi thieu ban be...
	 -- Xac thuc: So sanh ty le churn giua nguoi dung tham gia chuong trinh tuong tac va nhom con lai