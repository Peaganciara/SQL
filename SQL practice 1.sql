select *
from employees
where salary = '17000'

select *
from employees
where last_name like 'M%'
order by salary;

select employee_id, last_name, first_name
from employees

select *
from employees
order by last_name desc

select job_id, last_name
from employees

select *
from employees
where employee_id < 120 or employee_id = 120 

select *
from employees
where employee_id = 120 or last_name like 'M%'

select *
from employees
where not last_name like 'M%'

select *
from employees
where employee_id < 120
order by employee_id asc

select *
from employees
where employee_id < 120
order by employee_id desc

Select *
from employees
where manager_id is null

Select *
from employees
where commission_pct is  not null

select *
from employees
where rownum < 6

select min(salary)
from employees

select max(salary)
from employees

select avg(salary)
from employees

select count(*)
from employees

select count (*)
from employees
where first_name = 'Max'

select count (distinct first_name)
from employees

select sum (salary)
from employees

select count (employee_id), max(salary), min(salary), Avg(salary)
from employees

select round(avg(salary),1)
from employees

select max(salary)+min(salary)
from employees

select sum(salary)/count(employee_id)
from employees

select avg(salary)*10
from employees

select *
from employees
where first_name like '%a'

select *
from employees 
where last_name like '_a%'

select *
from employees 
where first_name like '%er%'

select *
from employees
where first_name in ('Peter', 'Steven')

select *
from employees
where first_name not in ('Peter', 'Steven')

select *
from employees
where salary between 1000 and 9000

select *
from employees
where department_id between 80 and 100

select employee_id as ID, department_id
from employees

-- alias' only exist for duration of query




