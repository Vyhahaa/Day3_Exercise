--Ex1: Mod function returns the remainder of a number divided by another number => Mod (ID,2) = 0 [even]
select distinct city from station
where mod(id,2) = 0;

--Ex2
select (count (city) - count (distinct city)) from station;

--Ex3
SELECT ROUND(AVG(salary)-AVG(REPLACE(salary,'0','')),0) FROM EMPLOYEES;

--Ex4
SELECT sum(item_count*order_occurrences) / sum(item_count)
FROM items_per_order;
