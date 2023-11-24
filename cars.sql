create schema cars;
use cars;
-- Read Data  
select * FROM cars.car_dekho;
-- To get count of total records 
select count(*) from car_dekho;
-- to check the avilanility of the cars in 2023
select count(*) from car_dekho where year = 2023;
-- to check how many cars are available in year 2020,2021,2023
select count(*) from car_dekho where year in ( 2020,2021,2023)
group by year;
-- to check the total count of cars by year 
select year, count(*) from car_dekho group by year;
-- to check how many Diesel cars are there in 2020
select count(*)  from car_dekho where year = 2020 and fuel = "Diesel";
-- to check how many Petrol cars are there in 2020
select count(*)  from car_dekho where year = 2020 and fuel = "petrol";
-- to give print of all fuel cars (petrol, diesel , CNG ) all come by year 
select year , count(fuel)  from car_dekho where fuel = "petrol" group by year;
select year , count(fuel)  from car_dekho where fuel = "Diesel" group by year;
select year , count(fuel)  from car_dekho where fuel = "CNG"  group by year;
-- To check whsich year has got more than 100 cars 
select year, count(year) from car_dekho group by year having count(year) > 100;
-- to check the count of cars from 2015 to 2023
select count(year) from car_dekho where year between 2015 and 2023;
-- to check all cars detail from 2019 to 2023
select *  from car_dekho where year between 2019 and 2021;
