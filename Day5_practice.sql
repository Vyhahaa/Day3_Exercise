--Ex1: Mod function returns the remainder of a number divided by another number => Mod (ID,2) = 0 [even]
select distinct city from station
where mod(id,2) = 0;

--Ex2
select (count (city) - count (distinct city)) from station;

--Ex3
SELECT ROUND(AVG(salary)-AVG(REPLACE(salary,'0','')),0) FROM EMPLOYEES;

--Ex4: CAST function converts a value (of any type) into a specified datatype
SELECT round(cast(sum(item_count*order_occurrences) / sum(order_occurrences) as decimal),1)
FROM items_per_order;

--Ex5
SELECT candidate_id from candidates
where skill in ('Python','Tableau','PostgreSQL')
group by candidate_id
having count(skill)=3;

--Ex6
SELECT user_id,
max (date(post_date)) - min(date(post_date)) as number_of_days
from posts
where post_date < '01/01/2022'
group by user_id
having (max (date(post_date)) - min(date(post_date))) <>0

--Ex7
SELECT card_name, 
max(issued_amount) - min(issued_amount) as variance
from monthly_cards_issued
group by (card_name)
order by variance desc

--Ex8
SELECT manufacturer,
count (drug) as drug_count,
abs(sum(total_sales - cogs)) as total_losses
from pharmacy_sales
where total_sales < cogs
group by manufacturer
order by total_losses desc

--Ex9
select * from cinema
where mod(id,2) <>0 and description not like 'boring'
order by rating desc

--Ex10
select teacher_id,
count(distinct subject_id) as cnt
from teacher
group by teacher_id

--Ex11
select user_id,
count(follower_id) as followers_count
from followers
group by user_id
order by user_id

--Ex12: nếu select - count - from thì result sẽ tạo thêm 1 cột count
select class from courses
group by class
having count(student) >=5






