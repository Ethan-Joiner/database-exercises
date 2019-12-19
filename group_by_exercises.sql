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
SELECT title, count(*)
FROM titles
GROUP BY title
ORDER BY count(*) DESC
LIMIT 3;
# what is the most common 'from date' for job titles? for staff only?
# what is the highest employee number for an engineer?
# what is the most common birthday?
# what is the most common female birthday? male?
# what is the most common hire date for female and male employees?
# what is the longest last name of someone born on March 8, 1952?
# what is the lowest employee number for the first senior engineers in the company?

