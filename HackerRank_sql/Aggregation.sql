# Revising Aggregations - The Count Function
select count(ID)
from CITY
where population > 100000;

# Revising Aggregations - The Sum Function
select sum(population)
from CITY
where District = 'California';

# Revising Aggregations - Averages
select avg(population)
from CITY
where District = 'California';

# Average Population
select floor(avg(population))
from CITY

#Japan Population
select sum(population)
from CITY
where COUNTRYCODE = 'JPN';

# Population Density Difference
select max(population)-min(population)
from CITY;

# The blunders
select 
 ceil(avg(salary)-avg(replace(salary,'0','')))
from EMPLOYEES;

# Top Earners
select max(months*salary), count(employee_id)
from Employee
where months*salary = (select max(months*salary) from employee);

#Weather Observation Station 2
select round(sum(LAT_N),2),
round(sum(LONG_W),2)
from STATION;
