-- 7.3.5 Create Additional Lists

-- List 1: Employee Information
SELECT * FROM salaries
ORDER BY to_date DESC;

-- Get employees born in 1952 to 1955, 
-- and hired between 1985 and 1988,
-- store into a temporary table 'emp_info'
DROP TABLE IF EXISTS emp_info;

SELECT e.emp_no,
e.first_name,
e.last_name,
e.gender,
s.salary,
de.to_date
INTO emp_info
FROM employees as e
INNER JOIN salaries as s
ON (e.emp_no = s.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_Date BETWEEN '1952-01-01' AND '1955-12-31')
AND (e.hire_Date BETWEEN '1985-01-01' AND '1988-12-31')
AND (de.to_date = '9999-01-01');

SELECT * FROM emp_info;

-- List 2: Management
SELECT dm.dept_no,
d.dept_name,
dm.emp_no,
ce.last_name,
ce.first_name,
dm.from_date,
dm.to_date
INTO manager_info
FROM dept_manager AS dm
INNER JOIN departments AS d
	ON dm.dept_no = d.dept_no
INNEr JOIN current_emp AS ce
	ON dm.emp_no = ce.emp_no;

-- List 3: Department Retirees
DROP TABLE IF EXISTS dept_info;

SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
INTO dept_info
FROM current_emp AS ce
INNER JOIN dept_emp AS de
	ON ce.emp_no = de.emp_no
INNER JOIN departments AS d
	ON de.dept_no = d.dept_no;

SELECT * FROM dept_info;
