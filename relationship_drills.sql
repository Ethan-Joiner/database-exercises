USE employees;

# RELATIONSHIP DRILLS
-- concat the max salaries of the first two employees
SELECT CONCAT((
    SELECT MAX(salary)
    FROM salaries
    GROUP BY emp_no
    ORDER BY emp_no
    LIMIT 1
    ), ' ',
    (SELECT MAX(salary)
    FROM salaries
    GROUP BY emp_no
    ORDER BY emp_no
    LIMIT 1 OFFSET 1));


-- get current manager name of Sales department (use subqueries)
SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE emp_no = (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW() AND dept_no = (
        SELECT dept_no
        FROM departments
        WHERE dept_name = 'Sales'
        )
    );

SELECT * FROM departments;
-- get all senior engineers in customer service department
SELECT * FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_emp
    WHERE dept_no IN (
        SELECT dept_no
        FROM departments
        WHERE dept_name = 'Customer Service'
        ) AND emp_no IN (
            SELECT emp_no
            FROM titles
            WHERE title = 'Senior Engineer'
        )

          );
-- get all first and last names of current Sales department employees
SELECT first_name,  last_name FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_emp
    WHERE dept_no IN (
        SELECT dept_no
        FROM departments
        WHERE dept_name = 'Sales'
        ) AND to_date > NOW()
    );
-- get the name of the employee with the highest salary
SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE emp_no = (
    SELECT emp_no
    FROM salaries
    WHERE salary = (
        SELECT salary
        FROM salaries
        ORDER BY salary DESC
        LIMIT 1
        )
    );

SELECT * FROM salaries ORDER BY salary DESC LIMIT 1;
SELECT * FROM employees WHERE emp_no = '43624';

================================= RELATIONSHIP BONUSES
-- what is the most common birthday in the company? least common?
-- what is the average salary of managers by department?
-- how many employees currently work in each department?
-- what is the average salary for each department?
-- what was the average salary in the 80s? By department?
-- how many times (on average) do employees switch titles?
-- how many times (on average) do employees get a raise?
-- what is the highest paying job title historically for women and men? For women only? For men only?
-- does the older halve of current employees make more or less than the younger halve?
-- list the oldest current employees by title in each department
-- list the 5 historically lowest paid managers
-- EXTRA HARD BONUS --
-- what employees were hired during the year Nevermind was released and after?
# (you will need to use the codeup_test_db and employees db)
