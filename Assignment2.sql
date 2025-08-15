use assignment1;
-- create table employee
create table employee(EmpID int,EmpName varchar(20),deptID int,Salary int,HiringDate varchar(20));
Insert into employee values(101,'John',1,50000,'2018-02-12'),(102,'Alice',2,60000,'2019-07-10'),(103,'Bob',1,55000,'2020-05-05'),(104,'Carol',3,45000,'2017-09-20');
select * from employee;
-- create table dept
create table dept(deptID int,deptName varchar(20));
Insert into dept values(1,'HR'),(2,'IT'),(3,'Sales');
select * from dept;

-- display employees whose name start with 'A'
select * from employee where EmpName Like 'A%' or EmpName Like 'a%';

-- find employees whose salary is between 45000 and 60000
select * from employee where salary between 45000 and 60000;

-- show the department name of each employee
select e.EmpName,d.deptName from employee As e join dept AS d on e.deptID = d.deptID; 

-- find the number of employees in each department
 SELECT d.deptName, COUNT(e.EmpID) AS NumberOfEmployees FROM dept d LEFT JOIN employee e ON d.deptID = e.deptID GROUP BY d.deptName;

-- dispaly all employees,including those without a department
SELECT e.EmpID, e.EmpName, e.Salary, e.HiringDate, d.DeptName FROM employee e LEFT JOIN dept d ON e.DeptID = d.DeptID;
