/* 
A sub query is a select query that is enclosed inside another query.
The inner select query used ti determine the results of the outer select query.
*/
show databases;
use sql_intro;
show tables;

select * from employees;

select * from emp_details;

-- Question: find the employee name who gets maximum salary

select Emp_name, salary
from employees
where salary = (select max(salary) from employees);

select emp_name, dept, salary
from employees
where salary < (select avg(salary) from employees);

select emp_name, city, dept, salary
from employees
where salary > (select avg(salary) from employees);








