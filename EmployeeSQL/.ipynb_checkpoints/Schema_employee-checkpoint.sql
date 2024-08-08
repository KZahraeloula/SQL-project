
--Drop table if it exists
drop table titles

--table crations
create table titles (
	title_id varchar(5) primary key,
	title varchar(255)
);

create table departements(
	dept_no varchar(4) primary key,
	dept_name varchar(255)
);

create table employee(
	emp_no int primary key,
	emp_title_id varchar(5),
	birth_date date,
	first_name varchar(255),
	last_name varchar (255),
	sex varchar(1),
	hire_date date,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

select * from employee

create table salaries (
	emp_no int primary key,
	salary float
);

select * from salaries

create table dep_emp(
	emp_no int,
	dept_no varchar(4),
	FOREIGN KEY(emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departements(dept_no)
);

select * from dep_emp

create table dept_manager(
	dept_no varchar(4),
	emp_no int,
	FOREIGN KEY(dept_no) REFERENCES departements(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employee(emp_no)
);

select * from dept_manager;