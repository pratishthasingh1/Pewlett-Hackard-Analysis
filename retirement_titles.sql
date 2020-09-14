-- Create new table for retiring employees
SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT departments.dept_name,
     dept_manager.emp_no,
     dept_manager.from_date,
     dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;
--shorten it out:
SELECT d.dept_name,
     dm.emp_no,
     dm.from_date,
     dm.to_date
	 FROM departments as d
	INNER JOIN dept_manager as dm
	ON d.dept_no = dm.dept_no;

-- Joining retirement_info and dept_emp tables
SELECT retirement_info.emp_no,
    retirement_info.first_name,
	retirement_info.last_name,
    dept_emp.to_date
	FROM retirement_info
	LEFT JOIN dept_emp
	ON retirement_info.emp_no = dept_emp.emp_no;
--shorten it out:
SELECT ri.emp_no,
    ri.first_name,
	ri.last_name,
    de.to_date
	INTO current_emp
	FROM retirement_info as ri
	LEFT JOIN dept_emp as de
	ON ri.emp_no = de.emp_no
	WHERE de.to_date = ('9999-01-01');

-- Check the table
SELECT * FROM retirement_info;

-- Number of employees retiring
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;

-- Create new table for retiring employees
SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- Check the table
SELECT * FROM retirement_info;


--drop a table 
DROP TABLE retirement_info;

---- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, 
titles.from_date, titles.to_date
	FROM employees
	INNER JOIN titles
	ON employees.emp_no = titles.emp_no
	ORDER BY emp_no, DESC
	
	
	
	
	
	
______

Deliverable 1 
--Retrieve the emp_no, first_name, and last_name columns from the Employees table.

SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date FROM employees AS e
INTO retirement_titles
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;