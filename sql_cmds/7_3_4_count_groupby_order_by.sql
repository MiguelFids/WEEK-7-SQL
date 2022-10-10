-- 7.3.4 Use Count, Group By, and Order By
-- Employee count by dept no
SELECT COUNT(ce.emp_no), 
de.dept_no
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;
