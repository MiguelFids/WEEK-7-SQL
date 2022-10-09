-- Retirement Eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- How many people are ready to retire?
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Save the selected data into a new table
DROP TABLE retirement_info;

-- Join departments and dept_manager tables
SELECT e.emp_no,
e.first_name, 
e.last_name,
d.from_date,
d.to_date
INTO retirement_info
FROM employees as e
INNER JOIN dept_emp as d
ON e.emp_no = d.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_Date BETWEEN '1985-01-01' AND '1988-12-31');

-- Join table retirement_info and dept_emp tables
SELECT r.emp_no,
r.first_name,
r.last_name,
d.to_date
FROM retirement_info as r
LEFT JOIN dept_emp as d
ON r.emp_no = d.emp_no
ORDER BY d.to_date;

-- Use Left Join for retirement_info and dept_emp tables
SELECT ri.emp_no,
ri.first_name,
ri.last_name,
de.to_date
INTO current_emp
FROM retirement_info as ri
LEFT JOIN dept_emp as de
ON ri.emp_no = de.emp_no
WHERE de.to_date = ('9999-01-01');

-- View current_emp table
SELECT * FROM current_emp;