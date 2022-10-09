create table salaries(
	emp_no int not null,
	salary int not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references employees (emp_no),
	PRIMARY KEY (emp_no)
);

create table managers (
	dept_no varchar,
	emp_no int,
	from_date date,
	to_date date,
	PRIMARY KEY (emp_no),
	foreign key (dept_no) references departments (dept_no)
);

select * from departments;