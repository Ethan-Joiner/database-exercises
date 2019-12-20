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
