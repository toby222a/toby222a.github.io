USE [oluwatoby]
GO

SELECT *
  FROM [dbo].['Employee Info$']


---question 1 Write a query to fetch the EmpFname from the EmployeeInfo table in the upper case and use the ALIAS name as EmpName.
select upper ([EmpFname]) as EmpName
from [dbo].['Employee Info$']


SELECT *
  FROM [dbo].['Employee Info$']

--- question 2 Write a query to fetch the number of employees working in the department ‘HR’.

select  count (*) as number_of_employee_in_HR

from [dbo].['Employee Info$']
where Department = 'HR'

--- question 3 get the current date
select GETDATE() as cureentdate

---question 4 Write a query to retrieve the first four characters of  EmpLname from the EmployeeInfo table.

select *, SUBSTRING([EmpLname], 1, 4) as first_4character
from[dbo].['Employee Info$']

  ---question 5
  -- Write a query to fetch only the place name(string before brackets)
  ---from the Address column of EmployeeInfo table.

  select [Address],
  substring([Address],1, charindex('(',[Address])-1) As names_from_address
  from[dbo].['Employee Info$'];

  ---question6 
  -----Write a query to create a new table that consists of data and structure copied 
  ---from the other table.

  select *
  into new_data_table 
  from [dbo].['Employee Info$']
 

  

 ---question 7 Write a query to find the names of employees that begin with ‘S’

 select *
 from [dbo].['Employee Info$']
 where [EmpFname] like ('s%')

   select *
  from[dbo].['Employee Info$'];

  ---question 8 Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. The first name and the last name must be separated with space.


  select  *, [EmpFname] + ' ' + [EmpLname] as full_name
  from [dbo].['Employee Info$']

  select *, concat ([EmpFname], ' ', [EmpLname]) as full_name
  from [dbo].['Employee Info$']

  ---question 9 Write a query find number of employees whose DOB is between 02/05/1970 to 31/12/1995 
  ---and are grouped according to gender


  select [Gender], count (*) as group_genderbased_DOB
  from [dbo].['Employee Info$']
  where [DOB] between '1970/05/02' and '1995/12/31' 
  group by [Gender]
 
 --- question 10 Write a query to fetch all the records from the EmployeeInfo table ordered by EmpLname 
 ---in descending order and Department in the ascending order.

 select *
 from [dbo].['Employee Info$']
 order by [EmpLname] desc, [Department] asc

  select *
  from[dbo].['Employee Info$'];

 --question 11 Write a query to fetch details of employees whose EmpLname ends 
 ---with an alphabet ‘A’ and contains five alphabets.


 select *
 from [dbo].['Employee Info$']
 where [EmpLname] like '____%a' 

 ---question 12 Write a query to fetch details of all employees excluding the employees with first names, 
 ---“Sanjay” and “Sonia” from the EmployeeInfo table.


 select *
 from [dbo].['Employee Info$']
 where [EmpFname] not like 'sanjay' and [EmpFname] not like 'sonia'

 ---question 13 Write a query to fetch details of employees with the address as “DELHI(DEL)”

 
 select * 
 from [dbo].['Employee Info$']
 where  [Address] like 'Delhi(DEL)'

 
 ---question 14 Write a query to fetch the department-wise count of employees 
 ---sorted by department’s count in ascending order


 select [Department], COUNT(*) as emplyee_count
 from [dbo].['Employee Info$']
 group by [Department]
 order by emplyee_count asc

 --question 15 Write a query to fecth Male employees in HR department

 select *
 from [dbo].['Employee Info$']
 where [Gender] = 'M'

 and  [Department] = 'HR'

 ----question 16  Write a SQL query to retrieve employee details from EmployeeInfo 
 ---table who have a date of joining in the EmployeePosition table


 select *
 from [dbo].['Employee Info$']as i
 left join [dbo].['Employee position$'] as p
 on i.[EmpID]=p.[EmpID]
 where [DateOfJoining] is not null

   --- question 17 join all the records on both table together

SELECT I.[EmpID]
      ,[EmpFname]
      ,[EmpLname]
      ,[Department]
      ,[Project]
      ,[Address]
      ,[DOB]
      ,[Gender]
	  ,[EmpPosition]
	  ,[DateOfJoining]
	  ,[Salary]
  FROM [dbo].['Employee Info$'] as I
  left join 
[dbo].['Employee position$'] as P
on
I.[EmpID]=p.[EmpID]

 
