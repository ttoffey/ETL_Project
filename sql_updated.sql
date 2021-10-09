select count(*) from akc_table;  --190
SELECT count(*) from characteristics;  --147
SELECT COUNT(*) from nyc_table; --*102,009

SELECT COUNT(*), breed_name from nyc_table
group by breed_name
order by breed_name;   --298 breeds

SELECT COUNT(breed_name), breed_name from akc_table
group by breed_name
order by breed_name;   --190 breeds

SELECT COUNT(breed_name), breed_name from characteristics
group by breed_name
order by breed_name; --147 breeds

SELECT a.breed_name as akc_breed, c.breed_name as characteristics_breed
FROM akc_table as a 
join characteristics as c 
ON a.breed_name = c.breed_name
group by a.breed_name, c.breed_name
order by a.breed_name; --6 match

SELECT a.breed_name as akc_breed, c.breed_name as characteristics_breed
FROM akc_table as a 
join characteristics as c 
ON a.breed_name = c.breed_name
group by a.breed_name, c.breed_name
order by a.breed_name; --6 match

SELECT a.breed_name as akc_breed, n.breed_name as nyc_breed
FROM akc_table as a 
join nyc_table as n 
ON a.breed_name = n.breed_name
group by a.breed_name, n.breed_name
order by a.breed_name; --17 match

SELECT c.breed_name as characteristics_breed, n.breed_name as nyc_breed
FROM characteristics as c 
join nyc_table as n 
ON c.breed_name = n.breed_name
group by c.breed_name, n.breed_name
order by c.breed_name; --104 match


SELECT distinct(a.breed_name) as akc_breed, c.breed_name as characteristics_breed
FROM akc_table as a 
join characteristics as c 
ON a.breed_name LIKE c.breed_name
group by a.breed_name, c.breed_name
order by a.breed_name; --6 match

SELECT DISTINCT(breed_name) from characteristics;  --147
SELECT DISTINCT(breed_name) from akc_table; --190  's'
SELECT DISTINCT(breed_name) from nyc_table;

--Remove "s" from akc_table

SELECT * FROM akc_table
WHERE breed_name LIKE '%s';

SELECT distinct(breed_name)
FROM akc_table
WHERE RIGHT(breed_name, 1) = 's';  --143

update akc_table
set breed_name = 'Great Pyrenees'
WHERE breed_name = 'Great Pyrenee';

update characteristics
set breed_name = 'Scottish Terrier'
WHERE breed_name = 'Scottish Terrier Scottie';

update akc_table
set breed_name = substring(breed_name, 1, CHAR_Length(breed_name) -1)
where breed_name like '%s';

SELECT distinct(breed_name) FROM akc_table
order by breed_name;

SELECT distinct(breed_name)
FROM nyc_table
WHERE RIGHT(breed_name, 1) = 's';

SELECT distinct(breed_name)
FROM characteristics
WHERE RIGHT(breed_name, 1) = 's';

select * from nyc_table;
select * from characteristics;
select * from akc_table
ORDER BY breed_rank;
--QUERIES

SELECT n.borough, a.breed_name, count(a.breed_name) as breed_count, a.breed_rank, c.temperament, c.average_price
from nyc_table as n
left join akc_table as a on n.breed_name = a.breed_name
left join characteristics as c on a.breed_name = c.breed_name
group by n.borough, a.breed_name, a.breed_rank, c.temperament, c.average_price
order by breed_count desc, n.borough
LIMIT 150;


