--List the employee number, last name, first name, sex, 
--and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s
ON (e.emp_no = s.emp_no);

--List the first name, last name, and hire date for the 
--employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE hire_date >= '1986/1/1'
AND hire_date <= '1986/12/31';

--List the manager of each department along with their department
--number, department name, employee number, last name, and first name.
SELECT d.dept_no, e.last_name, e.first_name
FROM






