USE employees;

SELECT d.dept_name, CONCAT(e.first_name, ' ' , e.last_name)
FROM departments AS d
JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
JOIN employees AS e
ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name, CONCAT(e.first_name, ' ' , e.last_name)
FROM departments AS d
JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
JOIN employees AS e
ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT t.title, count(*)
FROM titles as t
JOIN dept_emp as de
ON t.emp_no = de.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01'
AND dept_name = 'Customer Service'
AND t.to_date = '9999-01-01'
GROUP BY t.title;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name), s.salary
FROM departments AS d
JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
JOIN employees AS e
ON dm.emp_no = e.emp_no
JOIN salaries AS s
ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name), d.dept_name, CONCAT(em.first_name, ' ', em.last_name)
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
JOIN employees AS em
ON em.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND de.to_date = '9999-01-01'
ORDER BY CONCAT(e.first_name, ' ', e.last_name);




show tables;
select * from departments;
select * from salaries;
select * from dept_manager;















# SHOW tables;
# DESCRIBE users;
# DESCRIBE roles;
# INSERT INTO users (name, email, role_id) VALUES
# ('Dennis', 'theimplication@paddys.com', 2),
# ('Mac', 'ducktowel@paddys.com', 2),
# ('Charlie', 'pirate@paddys.com', null),
# ('Dee', 'bird@paddys.com', 2);
# SELECT users.name, roles.name
# FROM users
# JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
# LEFT JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
# RIGHT JOIN roles ON users.role_id = roles.id;
