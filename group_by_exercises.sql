USE employees;
SELECT DISTINCT title FROM titles;

SELECT DISTINCT first_name, last_name FROM employees
WHERE last_name LIKE '%E'
  AND last_name LIKE 'E%'
ORDER BY last_name;

SELECT last_name, COUNT(*) FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(*) DESC;

SELECT gender, COUNT(*) FROM employees
WHERE   first_name = 'Irena'
        OR first_name = 'Maya'
        OR first_name = 'Vidya'
GROUP BY gender;