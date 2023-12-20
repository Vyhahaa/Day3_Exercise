--Ex1
Select NAME from CITY
WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000;

--Ex2
select * from city
where countrycode = 'JPN';

--Ex3
select city, state from station;

--Ex4
select distinct city from station
where city like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or city like 'U%';

--Ex5
select distinct city from station
where city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u';

--Ex6 (phai co dau ngoac cho cau lenh ghep)
select distinct city from station
where not (city like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or city like 'U%');

--Ex7
select name from employee
order by name;

--Ex8
select name from employee
where salary > 2000 and months < 10
order by employee_id;

--Ex9
select product_id from products
where low_fats = 'Y' and recyclable = 'Y';

--Ex10 (null la 1 gia tri unknown, phai liet ke ca null thi sql moi hieu)
select name from customer
where referee_id <> 2 or referee_id is null;

--Ex11
select name, population, area from world
where area >= 3000000 or population >= 25000000;

--Ex12 (doi ten cot dung AS)
select distinct author_id as id from views
where author_id = viewer_id
order by author_id;

--Ex13
