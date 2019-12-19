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
WHERE de.to_date = '9999-01-01' AND dept_name = 'Customer Service'
GROUP BY t.title;

show tables;
select * from departments;













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
