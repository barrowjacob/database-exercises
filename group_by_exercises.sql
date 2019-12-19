USE employees;
SELECT DISTINCT title FROM titles;

SELECT DISTINCT first_name, last_name FROM employees
WHERE last_name LIKE '%E'
  AND last_name LIKE 'E%'
ORDER BY last_name;

SELECT last_name, COUNT(*) AS 'COUNT' FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(*) DESC;

SELECT gender, COUNT(*) AS 'COUNT' FROM employees
WHERE   first_name = 'Irena'
        OR first_name = 'Maya'
        OR first_name = 'Vidya'
GROUP BY gender;

/*****************/
##    BONUSES   ##
/*****************/

# what are the names of the 10 most recently hired females in the company? the first 10? (no group by needed)

SELECT CONCAT(first_name, ' ', last_name), gender, hire_date FROM employees
WHERE gender = 'F'
ORDER BY hire_date DESC
LIMIT 10;

# what are the top three most common job titles?

SELECT title, COUNT(*) AS 'COUNT' FROM titles
GROUP BY title
ORDER BY COUNT(*) DESC
LIMIT 3;

# what is the most common 'from date' for job titles? for staff only?

SELECT title, from_date, COUNT(*) AS 'COUNT' FROM titles
WHERE title = 'Staff'
GROUP BY from_date
ORDER BY COUNT(*) DESC;

# what is the highest employee number for an engineer?

SELECT title, emp_no FROM titles
WHERE title = 'Engineer'
ORDER BY emp_no DESC;

# what is the most common birthday?

SELECT birth_date, COUNT(*) AS 'COUNT' FROM employees
GROUP BY birth_date
ORDER BY COUNT(*) DESC;

# what is the most common female birthday? male?

SELECT birth_date, gender, COUNT(*) AS 'COUNT' FROM employees
GROUP BY  birth_date, gender
ORDER BY COUNT(*) DESC;

# what is the most common hire date for female and male employees?

SELECT hire_date, gender, COUNT(*) AS 'COUNT' FROM employees
GROUP BY hire_date, gender
ORDER BY COUNT(*) DESC;

# what is the longest last name of someone born on March 8, 1952?

SELECT last_name, birth_date FROM employees
WHERE birth_date = '1952-03-08'
ORDER BY char_length(last_name) DESC;


# what is the lowest employee number for the first senior engineers in the company?

SELECT emp_no, from_date, title FROM titles
WHERE title = 'Senior Engineer'
ORDER BY from_date, emp_no
LIMIT 1;
