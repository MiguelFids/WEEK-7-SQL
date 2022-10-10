--7.3.6 Create a Tailored List

-- Create a query that will return only
-- the information relevant to the Sales team. 
-- The requested list includes:
--     Employee numbers
--     Employee first name
--     Employee last name
--     Employee department name

SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_no
INTO sales_close_to_retirement
FROM current_emp AS ce
INNER JOIN dept_emp AS de
	ON ce.emp_no = de.emp_no
INNER JOIN departments AS d
	ON de.dept_no = d.dept_no;
	
-- Create another query that will return the following 
-- information for the Sales and Development teams:
--     Employee numbers
--     Employee first name
--     Employee last name
--     Employee department name

SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
FROM current_emp AS ce
INNER JOIN dept_emp AS de
	ON ce.emp_no = de.emp_no
INNER JOIN departments AS d
	ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales');