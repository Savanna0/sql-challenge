CREATE TABLE departments(
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR,
	PRIMARY KEY(dept_no)
);
SELECT * FROM departments;


CREATE TABLE employees(
	emp_no INT NOT NULL,
    emp_title_id VARCHAR NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date date NOT NULL,
	CONSTRAINT pk_employees PRIMARY KEY(emp_no)
);
SELECT * FROM employees LIMIT 10;


CREATE TABLE titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	CONSTRAINT pk_titles PRIMARY KEY (title_id)
);
SELECT * FROM titles;


CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no,dept_no)	
);
SELECT * FROM dept_emp LIMIT 10;


CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no,emp_no)
);
SELECT * FROM dept_manager;
	

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT NOT NULL,
	PRIMARY KEY (emp_no)
);
SELECT * FROM salaries LIMIT 10;




	