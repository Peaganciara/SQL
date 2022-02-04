--1. List all the employees' first and last name with their salary in the employees table.
select last_name, first_name, salary
from employees

--2. List the full names of all employees ( fullname: FirstName Lastname).
SELECT first_name || '  ' || last_name AS "Full Name"
from employees

--3. List all the different region_ids in the countries table.
select distinct (region_id)
from countries

--4. Count the total numbers of the departments in the departments table.
select count (department_id)
from employees

--5. How many employees have salaries less than 5000?
select *
from employees 
where salary < 5000

--6. How many employees have salaries between 6000 and 7000?
select count (employee_id)
from employees
where salary between 6000 and 7000

--7. Display the salary of the employee Grant Douglas (lastName: Grant,  firstName: Douglas)
select salary
from employees
where last_name = 'Grant' and first_name = 'Douglas'

--8. Display the minimum, the maximum and the average salary in the employees table.
select min(salary), max(salary), avg(salary)
from employees

--9. List all jobs history and sort the start_date in descending order in the job_history's table.
select *
from job_history
order by start_date desc

--10. List all jobs history and sort the start_date in ascending order in the job_history's table.
select *
from job_history
order by start_date asc

--11. List all the employees whose first name starts with 'A'.
select first_name, last_name
from employees
where first_name like 'A%'
order by first_name asc

--12. List all the employees whose job_ID contains 'IT'.
select *
from employees
where job_id like '%IT%'

--13. List all the employees whose department id in 50, 80, 100.
select *
from employees
where department_id in (50,80,100)
order by department_id asc

--14. List all employees who do not work in any one of these departments id 60, 90, 100, 120, 130.
select *
from employees
where department_id not in (60,90,100, 120, 130)
order by department_id asc

--15. Display full addresses from locations table in a single column 
--(full address: Street_Address,  CityName,  State, postal_code, country ID)
select *
from locations

select street_address, postal_code, city, state_province, Country_id
from locations

--16. Display employees' full email addresses and full names (assume that the domain of the email is @gmail)
select *
from employees

select email||'@gmail.com' as Email, first_name||' '||last_name as Fullname
from employees

--17. List the initials of all the employees (hint: substr(first_name, 0, 1) will give you the initial of first name).
select substr(first_name,0,1), last_name
from employees
order by last_name asc


