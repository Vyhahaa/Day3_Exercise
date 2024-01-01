-- LOWER, UPPER, LENGTH : sau select là aggregation function luôn cũng được, không cần phải select trường thông tin
select 
lower (first_name) as first_name,
lower (last_name) as last_name
from customer
where length (first_name) > 10 or length (last_name) > 10
