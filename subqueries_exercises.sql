USE employees;

SELECT CONCAT(employees.first_name, ' ', last_name), employees.hire_date FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
    );


SELECT title FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );

SELECT CONCAT(first_name, ' ', last_name) AS 'name' FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date IN (
        SELECT to_date
        FROM dept_manager
        WHERE gender = 'F'
        )
      AND to_date > now()
);

### BONUS TIME ###
# Find all the department names that currently have female managers.

SELECT dept_name FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
        )
      AND to_date > now()
    );

#Find the first and last name of the employee with the highest salary.

SELECT CONCAT(first_name, ' ', last_name) AS 'name'
FROM employees
WHERE emp_no = (
    SELECT emp_no
    FROM salaries
    ORDER BY salary DESC
    LIMIT 1
);
