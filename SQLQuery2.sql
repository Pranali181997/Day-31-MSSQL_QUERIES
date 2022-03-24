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

 --UC-4-SELECT AND FETCH ALL THE DATA
Select * from emp_Payroll

--UC-5-USE WHERE,CAST,NOE,AND OPERATIONS
select SALARY from emp_Payroll where Emp_NAME='Bill'
Select * FROM emp_Payroll
WHERE STARTDATE BETWEEN CAST('2018-01-01' AS DATE) AND GETDATE()

--UC-6-Add Column
Alter Table emp_Payroll Add gender varchar(10)
update emp_Payroll set gender ='M' where Emp_ID=100;
update emp_Payroll set gender ='F' where Emp_ID=210;
update emp_Payroll set gender ='M' where Emp_ID=320;

--UC-7-SUM(),MAX(),MIN(),AVG(),COUNT()
Select SUM(SALARY) FROM emp_Payroll WHERE gender ='M'
Select MAX(SALARY) FROM emp_Payroll WHERE gender ='M'
Select AVG(SALARY) FROM emp_Payroll WHERE gender ='M'
Select COUNT(SALARY) FROM emp_Payroll WHERE gender ='M'

--UC8 Adding Employee Additional Information

ALTER TABLE emp_Payroll ADD PhoneNo BIGINT;
UPDATE emp_Payroll SET PhoneNo = 8956418356 WHERE Emp_ID = 320;
ALTER table emp_Payroll ADD EmployeeAddress VARCHAR(100) NOT NULL DEFAULT 'INDIA';
ALTER TABLE emp_Payroll ADD Department VARCHAR(30) NOT NULL DEFAULT 'Research';
UPDATE emp_Payroll SET Department = 'Science' WHERE Emp_ID = 210;
SELECT * FROM emp_Payroll
