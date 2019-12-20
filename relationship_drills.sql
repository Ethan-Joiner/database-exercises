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

SELECT MAX(salary) FROM salaries GROUP BY emp_no ORDER BY emp_no LIMIT 2;
SELECT MAX(salary) FROM salaries WHERE emp_no = '100002'
SELECT MAX(salary)
FROM salaries
GROUP BY emp_no
ORDER BY emp_no
LIMIT 1 OFFSET 1;
-- get current manager name of Sales department (use subqueries)
-- get all senior engineers in customer service department
-- get all first and last names of current Sales department employees
-- get the name of the employee with the highest salary
