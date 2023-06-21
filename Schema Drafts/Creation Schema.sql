-- Creation Schema for Tables

-- Titles
CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR NOT NULL
);

-- Departments
CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR NOT NULL
);

-- Employees
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR NOT NULL REFERENCES titles(title_id),
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL
);

-- Salaries
CREATE TABLE salaries (
    emp_no INT PRIMARY KEY REFERENCES employees(emp_no),
    salary INT NOT NULL
);

-- Department Employees
CREATE TABLE dept_emp (
    emp_no INT NOT NULL REFERENCES employees(emp_no),
    dept_no VARCHAR NOT NULL REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Department Managers
CREATE TABLE dept_manager (
    dept_no VARCHAR NOT NULL REFERENCES departments(dept_no),
    emp_no INT NOT NULL REFERENCES employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);
