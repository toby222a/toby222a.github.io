USE [oluwatoby]
GO

SELECT [Name]
      ,[year]
      ,[selling_price]
      ,[km_driven]
      ,[fuel]
      ,[seller_type]
      ,[transmission]
      ,[owner]
      ,[mileage]
      ,[engine]
      ,[max_power]
      ,[torque]
      ,[seats]
  FROM [dbo].[Sheet1$]

GO
select *
from [dbo].[Sheet1$]

--question 1 Read Cars Data

select *
from [dbo].[Sheet1$]

---question 2 Total Cars and Get a count of total records

with [total cars] as (

select 
		[Name]
		,count(*) as [count of Total cars]
from [dbo].[Sheet1$]
group by [Name]
)
select
		sum([count of Total cars])
from [total cars]

--qustion 3 How many cars will be available in 2023?

select *
from [dbo].[Sheet1$]
where year=2023

----question 4 How many cars are available in 2020, 2021, and 2022?
select *
from [dbo].[Sheet1$]
where year between 2020 and 2022
order by year asc

----another way to solve it 
select *
from [dbo].[Sheet1$]
where year in (2020,2021,2022)
 order by year

----question 5 Print the total of all cars by year
select 
		year
		,count(*) as [total cars yearly]

from [dbo].[Sheet1$]
group by year
order by year asc

---question 6 How many diesel cars will there be in 2020?
select count (*) as [total number of diesel cars]
		

from [dbo].[Sheet1$]

where year = 2020 and fuel = 'diesel'

---question 7 How many petrol cars will there be in 2020 and 2021

select count (*)
from [dbo].[Sheet1$]
where year in (2020,2021) and fuel = 'petrol'

---question 8 Print all the fuel cars (Petrol, Diesel, and CNG) by year
select year,fuel, count (*) as [total number of cars]
from [dbo].[Sheet1$]
where fuel in ('diesel','petrol','cng')
group by year,fuel
order by year, fuel 

---question 9 Which years had more than 100 cars?

with [total car yearly] as (
select year, count(*) as total_car
from [dbo].[Sheet1$]
group by year 
)
select year,total_car
from [total car yearly]
where total_car>100
order by year

---question 10: All car count details between 2015 and 2023
select year,count (*) as total_cars
from [dbo].[Sheet1$]
where year between 2015 and 2023
group by year
order by year

--question 11: All car details between 2015 and 2023
select *
from [dbo].[Sheet1$]
where year between 2015 and 2023
order by year 
---question 12 write a query to bring out cars where it has first owner, 
------distance driven is less than 10000,mileage is not null and have more than 5 seats

select *
from [dbo].[Sheet1$]
where owner = 'first owner' and km_driven<10000 and mileage<>'null' and seats>5
order by year;
