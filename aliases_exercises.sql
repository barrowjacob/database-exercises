USE employees;
SELECT CONCAT(emp_no, '- ', last_name, ', ', first_name) AS 'full_name', birth_date AS 'DOB' FROM employees
GROUP BY birth_date, full_name
LIMIT 10;