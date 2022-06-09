-- *********Employee_Database_Challenge**********

-- Deliverable 1: Query the number of retiring employees by title.

-- Query retirement titles table for employees who are born between January 1, 1952 and December 31, 1955.
SELECT e.emp_no,
    e.first_name,
	e.last_name,
    t.title,
	t.from_date,
    t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no, rt.last_name DESC;


-- Query number of employees by their most recent job title who are about to retire.
SELECT COUNT(ut.title), 
	ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY ut.count DESC;


-- Deliverable 2: Employees Eligible for the Mentorship Program

-- Query current employees who were born between January 1, 1965 and December 31, 1965 to create a mentorship eligibility table who were born between January 1, 1965 and December 31, 1965.
SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

-- Query current employees who were born between January 1, 1965 and December 31, 1965 to create a mentorship eligibility table who were born between January 1, 1965 and December 31, 1965 and excludes senior level employees.

SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO current_mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (t.title <> 'Senior Staff')
AND (t.title <> 'Senior Engineer')
ORDER BY e.emp_no;