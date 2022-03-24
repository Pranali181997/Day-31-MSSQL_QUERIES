--UC-1-CREATE DATA BASE
Create database Emp_Payroll_Service

--UC-2-CREATETABLE
Create table emp_Payroll(Emp_ID int identity(100,110),Emp_NAME varchar(20),SALARY int,STARTDATE date)

 --UC-3-CRUD OPERATION
Insert into emp_Payroll(Emp_NAME,SALARY,STARTDATE) 
values
 ('Bill', 150000, '2018-01-03'),
 ('Terisa', 200000, '2019-11-13'),
 ('Charlie', 500000, '2020-05-21')

 