-- GROUP BY
select film_id, title,
max (replacement_cost) as max_cost,
min (replacement_cost) as min_cost,
round(avg (replacement_cost),2) as avg_cost,
sum (replacement_cost) as total_cost
from film
group by film_id, title

-- HAVING: mệnh đề điều kiện sau khi tổng hợp dữ liệu, luôn đi sau GROUP BY. Trong khi WHERE là mệnh đề điều kiện cho dữ liệu có sẵn, chưa qua tổng hợp
select customer_id,
sum (amount) as total_amount
from payment
group by customer_id
having sum (amount) > 100

-- HAVING challenge & solution
select customer_id, date(payment_date),
round(avg (amount),2) as avg_amount,
count (payment_id) as number_of_payment
from payment
where date(payment_date) in ('2020-04-28','2020-04-29','2020-04-30')
group by customer_id, date(payment_date)
having count(payment_id) > 1
order by avg_amount desc


-- THỨ TỰ THỰC HIỆN CÂU LỆNH: SELECT - AGGEGRATION SYNTAX - FROM - WHERE - GROUP BY - HAVING - ORDER BY - LIMIT
select customer_id, 
count(*) as total_record
from payment
where payment_date >= '2020-01-30'
group by customer_id
having count (*) <= 15
order by total_record desc
limit (5)
