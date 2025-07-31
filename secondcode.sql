create database employee;
use employee;
create table em(employee_id int primary key,first_name varchar(255),last_name varchar(255),salary long,joining_date date,department varchar(255));
insert into em(employee_id,first_name,last_name,salary,joining_date,department)values(1,"Venkatesh","S",100000,"2015/08/28","banking"),
(2,"Ragavi","P",75000,"2014/01/29","business"),
(3,"Gopinath","C",50000,"2016/03/02","pharma"),
(4,"Dinesh", "G",50000,"2016/03/02","INSURANCE"),
(5,"Saibabu","E",40000,"2017/07/08","SOFTWARE"),
(6,"Hasan","S",29000,"2017/07/08","MANUFACTURING"),
(7,"Divya","P",33000,"2017/07/08","HEALTHCARE"),
(8,"Aravindan","R",40000,"2017/07/08","HEALTHCARE"),
(9,"Sathish","MD",45000,"2016/03/02","AUTOMOBILE"),
(10,"Prasanth","PKP",34000,"2016/03/02","INSURANCE"),
(11,"Vijay","R",25684,"2016/03/02","BUSINESS"),
(12,"Sivakumar","K",54789,"2016/03/02","SOFTWARE");
select*from em;
-- get first_name,last_name from employee table
select first_name,last_name from em;
-- Get First_Name from employee table using alias name “Employee Name”
select first_name as Employee_Name from em;
-- Get First_Name from employee table in upper case
select upper(first_name) from em;
-- Get First_Name from employee table in lower case
select lower(first_name) from em;
--  Get unique DEPARTMENT from employee table
select distinct department from em;
-- Select first 3 characters of FIRST_NAME from EMPLOYEE
select substring(first_name,1,3) from em;
-- Get position of 'a' in name 'ragavi' from employee table
select position("a" in "Ragavi");
--  Get FIRST_NAME from employee table after removing white spaces from right side
select ltrim(first_name) from em;
-- Get FIRST_NAME from employee table after removing white spaces from left side
select rtrim(first_name) from em;
-- Get length of FIRST_NAME from employee table
select length(first_name) from em;
-- Get First_Name from employee table after replacing 'a' with '$'
select replace(first_name,"a","$") from em;
-- Get First_Name and Last_Name as single column from employee table separated by a '_'
select concat(first_name,"_",last_name) from em;
-- Get FIRST_NAME ,Joining year,Joining Month and Joining Date from employee table
select first_name,year(joining_date),month(joining_date),day(joining_date) from em;
-- Get all employee details from the employee table order by First_Name Ascending
select * from em order by first_name asc;
-- Get all employee details from the employee table order by First_Name descending
select * from em order by first_name desc;
--  Get all employee details from the employee table order by First_Name Ascending and Salary descending
select * from em order by first_name asc,salary desc;
--  Get employee details from employee table whose employee name is “Dinesh”
select * from em where first_name = "Dinesh";
--  Get employee details from employee table whose employee name are “Dinesh” and “Roy”
select * from em where first_name="Dinesh" or first_name="Roy";
-- Get employee details from employee table whose employee name are not “Dinesh” and “Roy”
select * from em where not first_name="Dinesh" and not first_name="Roy";
-- Get all the details of the employee whose salary is greater than 60000.
select * from em where salary>=60000;
-- Get all the details of the employee whose salary is between 50000 to 70000
select * from em where salary>=50000 and salary<=70000;
-- Get first name and last name as single column separated by space of the employee whose salary is less than 50000
select concat(first_name,"_",last_name) from em where salary<=50000;
-- Get first name and salary, arrange it by salary in ascending order.
select first_name,salary from em order by salary;
-- Get all the details of the employee whose salary is between 50000 to 70000 and arrange them by their first name as ascending order.
select * from em where salary>=50000 and salary<=70000 order by first_name;
-- 30-07-2025
-- WILDCARD SEARCH
--  Get employee details from employee table whose first name starts with 's'
select first_name from em where first_name like "s%";
-- Get employee details from employee table whose first name contains 'v'
select first_name from em where first_name like "%v%";
-- Get employee details from employee table whose first name ends with 'n'
select first_name from em where first_name like"%n";
-- PATTERN MATCHING 
-- Get employee details from employee table whose first name ends with 'n' and name contains 4 letters
select * from em where first_name like "___n";
-- Get employee details from employee table whose first name starts with 'J' and name contains 4 letters
select * from em where first_name like "j___";
--  Get employee details from employee table who’s Salary greater than 60000
select * from em where salary>=60000;
-- Get employee details from employee table who’s Salary less than 80000
select first_name from em where salary<=80000;
--  Get employee details from employee table who’s Salary between 50000 and 80000
select * from em where salary>=50000 and salary<=80000;
-- Get employee details from employee table whose name is venkatesh and ragavi
select * from em where first_name="venkatesh" or first_name ="ragavi";
-- Queries Interview Questions and Answers on "SQL DATE Functions" - Examples
--  Get employee details from employee table whose joining year is “2015”
select *from em where year(joining_date)=2015;
-- Get employee details from employee table whose joining month is “January”
select * from em where month(joining_date)="1";
-- Get employee details from employee table who joined before January 1st 2017
select * from em where joining_date<"2017-01-01";
--  Get employee details from employee table who joined after January 31st 2016
select * from em where joining_date>"2016-01-31";
-- MATHAMATICAL FUNCTIONS
select sum(salary) from em;
select avg(salary) from em;
select max(salary) from em;
select count(salary) from em;
-- GROUP IMPLEMENTATION
-- Get department,total salary with respect to a department from employee table.
select department,sum(salary) from em group by department;
-- Get department,total salary with respect to a department from employee table order by total salary descending
select department,sum(salary) from em group by department order by  sum(salary) desc;
--  Get department,no of employees in a department,total salary with respect to a department from employee table order by total salary descending
select department,count(department),sum(salary) from em group by department order by sum(salary) desc;
-- Get department wise average salary from employee table order by salary ascending
select department,avg(salary) from em group by department order by avg(salary) asc;
-- Get department wise maximum salary from employee table order by salary ascending
select department,max(salary) from em group by department order by max(salary) asc;
-- Get department wise minimum salary from employee table order by salary ascending
select department,min(salary) from em group by department order by min(salary) asc;
-- Select no of employees joined with respect to year and month from employee table
select year(joining_date),month(joining_date),count(first_name) from em group by year(joining_date),month(joining_date);
-- Select department,total salary with respect to a department from employee table where total salary greater than 800000 order by Total_Salary descending
select department,sum(salary) from em group by department having sum(salary)>=800000 order by sum(salary) desc;
-- UPDATE
update em set first_name="yedukondalu",last_name="P" where first_name = "gopinath";
set sql_safe_updates =0;
-- DELETE
delete from em where employee_id=3;
select*from em;

create table incentive(employee_ref_id int,incentive_date date,incentive_amount long);
insert into incentive(employee_ref_id,incentive_date,incentive_amount) values(1,"2016-02-01",5000),
(2,"2016-02-01",3000),
(3,"2017-02-01",4000),
(1,"2017-01-01",4500),
(2,"2017-01-01",3500);
Alter table  insective rename to incentive;
show tables;
select * from incentive;
-- IT IS JOIN METHOD
select e.first_name,(e.salary+sum(i.incentive_amount)) from em e join incentive i where e.employee_id = i.employee_ref_id group by e.first_name,e.salary; 
-- IT IS LEFT JOIN METHOD
select e.first_name,(e.salary+ifnull(sum(i.incentive_amount),0)) from em e left join incentive i on e.employee_id = i.employee_ref_id group by e.first_name,e.salary;
-- IT IS RIGHT JOIN METHOD
select e.first_name,(e.salary+ifnull(sum(i.incentive_amount),0)) from em e right join incentive i on e.employee_id = i.employee_ref_id group by e.first_name,e.salary;
-- Select first_name, incentive amount from employee and incentives table for those employees who have incentives
select e.first_name,i.incentive_amount from em e join incentive i where e.employee_id = i.employee_ref_id ;
-- Select first_name, incentive amount from employee and incentives table for those employees who have incentives and incentive amount greater than 3000
select e.first_name,i.incentive_amount from em e join incentive i where e.employee_id = i.employee_ref_id order by i.incentive_amount>3000;
-- Select first_name, incentive amount from employee and incentives table for all employes even if they didn't get incentives
select e.first_name,i.incentive_amount from em e join incentive i on e.employee_id = i.employee_ref_id;
-- Select first_name, incentive amount from employee and incentives table for all employees even if they didn't get incentives and set incentive amount as 0 for those employees who didn't get incentives.
select e.first_name,(ifnull(i.incentive_amount,0)) from em e left join incentive i on e.employee_id = i.employee_ref_id;
--  Select first_name, incentive amount from employee and incentives table for all employees who got incentives using left join
select e.first_name,i.incentive_amount from em e left join incentive i on e.employee_id = i.employee_ref_id;
-- Select max incentive with respect to employee from employee and incentives table using sub query
select e.first_name,max(i.incentive_amount) from em e join incentive i on e.employee_id = i.employee_ref_id group by e.first_name;



