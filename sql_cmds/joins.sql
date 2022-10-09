DROP TABLE retirement_info

-- Joining departments and dept_manager tables
SELECT departments.dept_name,
dept_manager.emp_no,
dept_manager.from_date,
dept_manager.to_date
INTO retirement_info
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;

SELECT * FROM retirement_info;

-- Left off at 7.3.3: Use Left Join to Capture retirement-info Table