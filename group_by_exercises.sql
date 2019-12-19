USE employees;

SELECT DISTINCT title FROM titles;

SELECT first_name, last_name, count(*)
FROM employees
WHERE last_name
LIKE 'E%' AND last_name
LIKE '%E'
GROUP BY first_name, last_name
ORDER BY count(*);

SELECT last_name, count(*)
FROM employees
WHERE last_name
LIKE '%q%'
AND last_name
NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY count(*);

SELECT gender, count(*)
FROM employees
WHERE first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name= 'Maya'
GROUP BY gender;

# Bonuses
# what are the names of the 10 most recently hired females in the company? the first 10? (no group by needed)
SELECT first_name, last_name, hire_date
FROM employees
WHERE gender = 'F'
ORDER BY hire_date DESC
LIMIT 10;
# what are the top three most common job titles?
SELECT title
FROM titles
GROUP BY title
ORDER BY count(*) DESC
LIMIT 3;
# what is the most common 'from date' for job titles? for staff only?
SELECT from_date
FROM titles
WHERE title = 'staff'
GROUP BY from_date
ORDER BY count(*) DESC
LIMIT 1;
# what is the highest employee number for an engineer?
SELECT MAX(emp_no)
FROM titles
WHERE title = 'engineer';
# what is the most common birthday?
SELECT birth_date
FROM employees
GROUP BY birth_date
ORDER BY count(birth_date) DESC
LIMIT 1;
# what is the most common female birthday? male?
SELECT birth_date
FROM employees
WHERE gender = 'F'
GROUP BY birth_date
ORDER BY count(birth_date) DESC
LIMIT 1;
# what is the most common hire date for female and male employees?
SELECT hire_date
FROM employees
WHERE gender = 'M'
GROUP BY hire_date
ORDER BY count(hire_date) DESC
LIMIT 1;
# what is the longest last name of someone born on March 8, 1952?
SELECT last_name
FROM employees
WHERE birth_date = '1952-03-08'
GROUP BY last_name
ORDER BY MAX(LENGTH(last_name)) DESC
LIMIT 1;
# what is the lowest employee number for the first senior engineers in the company?
SELECT MIN(emp_no)
FROM titles
WHERE title = 'Senior Engineer';

