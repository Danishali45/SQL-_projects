 create schema cars;
 use cars;
-- To Read Data--
Select * from car_dekho;
-- To Get a count of total records--
select count(*) from car_dekho; 
-- The Manager asked the employee how many cars will be  available in 2023?--
select count(*) from car_dekho where year=2023;
-- The Manager asked the employee how many cars are  available in 2020,2021,2022?--
select count(*) from car_dekho where year=2020;#74
select count(*) from car_dekho where year=2021;#7
select count(*) from car_dekho where year=2022;#7
-- Client asked me to print the total of all cars by year--
select year, count(*) from car_dekho group by year;
-- Client asked me to car dealer agent How many Diesel cars will there be in 2020?--
select count(*) from car_dekho where year = 2020 and fuel = "Diesel";
-- Client asked me to car dealer agent How many petrol cars will there be in 2020?--
select count(*) from car_dekho where year = 2020 and fuel = "petrol";
-- The manager told the employee to give a print all the fuel cars (petrol,Diesel,CNG,)come by all year.
select year ,count(*) from car_dekho where fuel="petrol" group by year;
select year ,count(*) from car_dekho where fuel="CNG" group by year;
select year ,count(*) from car_dekho where fuel="Diesel" group by year;
-- The manager said there were more cars in given year .which year had more than 100 cars?--
select year,count(*) from car_dekho group by year  having  count(*)>100;
select year,count(*) from car_dekho group by year  having  count(*)<50; 
-- The manager said to the employee all cars count detail between 2015 and  2023. we need a complete list.
select count(*) from car_dekho where year  between 2015 and 2023;
-- The manager said to the employee all cars  detail between 2015 and  2023. we need a complete list.
select *  from car_dekho where year  between 2015 and 2023;

-- End--

