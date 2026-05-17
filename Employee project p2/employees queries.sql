--Employees p2 queries
--SECTION A- Filtering and Sorting

--Show all employees earning more than 4500.
select (first_name||' '||last_name)as full_name,
		salary
from employees
WHERE salary > 4500;

--show employees ordered by salary from highest to lowest
select * from employees
ORDER BY salary DESC
--show the two youngest employees
select *
from employees
ORDER BY age ASC
LIMIT 2

--SECTION B- AGGREGATIONS
--Find the average salary of all employees
select avg(salary) from employees

--Find the highest salary
select max(salary) 
from employees

--COUNT THE TOTAL EMPLOYEES
select count(employee_id) from employees

--SECTION C
--Show employee names with their department names
select * from employees
select * from departments

select (first_name||' '||last_name)as full_name,
		department_name
from employees e
LEFT JOIN departments d on e.department_id=d.department_id
		
		
--Show employees working in the finance department
select * 
from employees e
join departments d on e.department_id = d.department_id
WHERE department_name = 'Finance';


--SECTION D
--Show each department and the number of employees in it
select * from employees
select * from departments
select department_name, count(employee_id)
from departments d
join employees e on d.department_id=e.employee_id
GROUP BY department_name


--Show employee names and classify salaries:
salary>5000 = high
salary between 4000 and 4999=medium
below 4000= low

select * from employees
select * from departments

select (first_name||' '||last_name) as full_name,
		salary,
		CASE WHEN salary > 5000 THEN 'High'
			WHEN salary between 4000 and 4999 THEN 'Medium'
			WHEN salary < 4000 THEN 'Low'
		End as salary_catg
from employees;













