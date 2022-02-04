SELECT employees.first_name, employees.last_name, employees.employee_id, Job_history.start_date, Job_history.end_date
FROM employees  
INNER JOIN job_history  
ON employees.employee_id = job_history.employee_id;

SELECT E.first_name, E.employee_id, J.start_date, J.end_date
FROM employees  E
INNER JOIN job_history  J
ON E.employee_id = J.employee_id
WHERE E.employee_id > 120
ORDER BY E.employee_id ASC;

SELECT E.first_name, E.employee_id, J.start_date, J.end_date
FROM employees  E
LEFT JOIN job_history  J
ON E.employee_id = J.employee_id;

SELECT d.manager_id, d.department_name, D.manager_id, E.first_name
FROM departments  D
RIGHT JOIN employees  E
ON D.manager_id = E.manager_id;

SELECT d.department_id, d.department_name, E.manager_id, E.first_name
FROM departments  D
FULL OUTER JOIN employees  E
ON D.department_id = E.department_id;

SELECT e1.*, e2.*
FROM employees e1, employees e2

SELECT E1.first_name ||' works for '|| E2.first_name "Employees and Their Managers"
FROM employees E1, employees E2
WHERE E1.manager_id = E2.employee_id;

SELECT * 
FROM employees
WHERE employee_id > 200
UNION
SELECT * 
FROM employees
WHERE employee_id < 220

SELECT * 
FROM employees
WHERE employee_id > 200
UNION ALL
SELECT * 
FROM employees
WHERE employee_id < 220

SELECT * 
FROM employees
WHERE employee_id > 200
INTERSECT
SELECT * 
FROM employees
WHERE employee_id < 220

SELECT * 
FROM employees
WHERE employee_id > 200
MINUS
SELECT * 
FROM employees
WHERE employee_id < 220











