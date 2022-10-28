# Revising the Select Query 1
select *
from CITY
where COUNTRYCODE = 'USA' AND POPULATION > 100000


#Revising the Select Query II
SELECT NAME
FROM CITY
WHERE COUNTRYCODE='USA' AND POPULATION > 120000


#Select All
select *
from CITY


#Select By ID
SELECT *
FROM CITY
WHERE ID = 1661


#Japanese Cities' Attributes
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN'


#Japanese Cities' Names
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN'


#Weather Observation Station 1
SELECT CITY, STATE
FROM STATION


#Weather Observation Station 3
select CITY
FROM STATION
WHERE ID%2=0
GROUP BY CITY


#Weather Observation Station 4
select COUNT(CITY)- COUNT(DISTINCT CITY)
FROM STATION


# weather observation station 5
select city, length(city)
from station
where length(city)<= all(select length(city) from station)
order by city
limit 1;

select city, length(city)
from station
where length(city)>= all(select length(city) from station)
order by city
limit 1;
