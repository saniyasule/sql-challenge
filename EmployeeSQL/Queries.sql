--SQL Homework
---Analysis

--1. List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT employee.id, employee.last_name ,  employee.first_name , employee.gender , salaries.salary
from employee inner join salaries on employee.id = salaries.emp_no
order by id ;


--2. List employees who were hired in 1986.

SELECT * from employee;
SELECT first_name, last_name from employee
where hire_date between '1986-01-01' and '1987-01-01'
order by hire_date



--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

SELECT department.dep_id,  department.dept_name, dept_manager.emp_no ,  employee.last_name ,  employee.first_name ,dept_manager.from_date, dept_manager.to_date
from department inner join dept_manager on department.dep_id = dept_manager.dept_no inner join employee on dept_manager.emp_no= employee.id


--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT employee.id , employee.last_name ,  employee.first_name  , department.dept_name
from department inner join dept_employee on department.dep_id = dept_employee.dept_no inner join employee on dept_employee.emp_no= employee.id
order by employee.id 


--5. List all employees whose first name is "Hercules" and last names begin with "B."


SELECT * from employee
where first_name = 'Hercules' and last_name like 'B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT employee.id , employee.last_name ,  employee.first_name  , department.dept_name
from department inner join dept_employee on department.dep_id = dept_employee.dept_no inner join employee on dept_employee.emp_no= employee.id
where department.dept_name = 'Sales'
order by employee.id 

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT employee.id , employee.last_name ,  employee.first_name  , department.dept_name
from department inner join dept_employee on department.dep_id = dept_employee.dept_no inner join employee on dept_employee.emp_no= employee.id
where department.dept_name = 'Sales' or department.dept_name = 'Development'
order by employee.id 


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT count (*) , last_name 
from employee 
group by last_name 
order by last_name

















