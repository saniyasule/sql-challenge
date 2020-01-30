--SQL Homework

---Create Tables

CREATE TABLE employee ( ID INT PRIMARY KEY  NOT NULL ,
  birth_date DATE ,
  first_name VARCHAR(30) NOT NULL , 
	last_name VARCHAR(30) NOT NULL ,
	gender VARCHAR(10) NOT NULL,
	hire_date DATE);
	
select * from employee;

CREATE TABLE Department ( Dep_ID VARCHAR PRIMARY KEY NOT NULL ,
dept_name VARCHAR(50) NOT NULL );

select * from Department;

CREATE TABLE dept_employee ( ID SERIAL PRIMARY KEY  NOT NULL ,
 emp_no INTEGER NOT NULL, FOREIGN KEY (emp_no) REFERENCES employee(id),
   dept_no VARCHAR NOT NULL , FOREIGN KEY (dept_no) REFERENCES department(dep_id),
	from_date DATE,	to_date
 DATE);

select * from dept_employee;

CREATE TABLE dept_manager ( ID SERIAL PRIMARY KEY  NOT NULL ,
   dept_no VARCHAR NOT NULL , FOREIGN KEY (dept_no) REFERENCES department(dep_id),
emp_no INTEGER NOT NULL, FOREIGN KEY (emp_no) REFERENCES employee(id),
	from_date DATE,	to_date
 DATE);

select * from dept_manager;


CREATE TABLE Salaries ( ID SERIAL PRIMARY KEY  NOT NULL ,
emp_no INTEGER NOT NULL, FOREIGN KEY (emp_no) REFERENCES employee(id),
Salary INT,
	from_date DATE,	to_date
 DATE);

select * from Salaries;

CREATE TABLE Titles ( ID SERIAL PRIMARY KEY  NOT NULL ,
emp_no INTEGER NOT NULL, FOREIGN KEY (emp_no) REFERENCES employee(id),
Titles VARCHAR(50) NOT NULL,
	from_date DATE,	to_date
 DATE);

select * from Titles;

