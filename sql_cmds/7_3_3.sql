-- Use Inner Join for Departments and dept-manager Tables

SELECT departments.dept_name,
dept_manager.emp_no,
dept_manager.from_date,
dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;