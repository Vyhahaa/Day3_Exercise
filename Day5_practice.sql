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
