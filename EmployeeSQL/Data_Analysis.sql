--List the employee number, last name, first name, sex, and salary of each employee.
select employee.emp_no as "employee number",employee.last_name as "last name", employee.first_name as "first name", employee.sex ,salaries.salary 
from employee
join salaries on employee.emp_no = salaries.emp_no
;

--List the first name, last name, and hire date for the employees who were hired in 1986.
select employee.last_name as "last name", employee.first_name as "first name", hire_date from employee
where date_part('year',hire_date)=1986;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
select employee.emp_no as "employee number",employee.last_name as "last name", employee.first_name as "first name" ,
dept_manager.dept_no,departements.dept_name
from employee
inner join dept_manager on employee.emp_no = dept_manager.emp_no
inner join departements on dept_manager.dept_no=departements.dept_no
;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

select employee.emp_no as "employee number",employee.last_name as "last name", employee.first_name as "first name" ,
dep_emp.dept_no,departements.dept_name
from employee
inner join dep_emp on employee.emp_no = dep_emp.emp_no
inner join departements on dep_emp.dept_no=departements.dept_no
;

--List first name, last name, and sex of each employee whose first name 
--is Hercules and whose last name begins with the letter B
select first_name, last_name, sex
from employee
where first_name='Hercules' and last_name like 'B%'


--List each employee in the Sales department, including their employee number,
--last name, and first name.
select employee.emp_no as "employee number",employee.last_name as "last name", employee.first_name as "first name" 
from employee
inner join dep_emp on employee.emp_no = dep_emp.emp_no
inner join departements on dep_emp.dept_no=departements.dept_no
where departements.dept_name='Sales' 
;

--List each employee in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.
select employee.emp_no as "employee number",employee.last_name as "last name", employee.first_name as "first name",
departements.dept_name
from employee
inner join dep_emp on employee.emp_no = dep_emp.emp_no
inner join departements on dep_emp.dept_no=departements.dept_no
where departements.dept_name='Sales' or departements.dept_name='Development'
;

--List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).
select last_name,count(last_name) as frequency from employee
group by last_name
order by frequency desc 







