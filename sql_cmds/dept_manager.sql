create table dept_manager(

	dept_no varchar(4),
	emp_no int,
	from_date date,
	to_date date,
	primary key (emp_no),
	foreign key (dept_no) references departments (dept_no)

);

alter table dept_manager
alter column dept_no type varchar,
alter column emp_no type integer;

select * from dept_manager;