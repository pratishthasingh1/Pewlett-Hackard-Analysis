-- Creating tables for PH-EmployeeDB
CREATE "departments" (
    "dept_no" varchar(6)   NOT NULL,
    "dept_name" varchar(30)   NOT NULL,
    PRIMARY KEY ("dept_no"), UNIQUE ("dept_name")
); 
ALTER TABLE "departments" 
	alter column "dept_name"
	type varchar(40);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar (30)   NOT NULL,
    "last_name" varchar (30)  NOT NULL,
    "gender" varchar (10)   NOT NULL,
    "hire_date" date   NOT NULL,
    PRIMARY KEY ("emp_no")
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" VARCHAR (6)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
	FOREIGN KEY ("emp_no") references employees("emp_no"), 
	FOREIGN KEY ("dept_no") references departments("dept_no"),
	PRIMARY KEY ("emp_no", "dept_no")
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(6)   NOT NULL,
    "emp_no" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    FOREIGN KEY ("emp_no") references employees ("emp_no"), 
	FOREIGN KEY ("dept_no") references departments ("dept_no"),
	PRIMARY KEY ("dept_no", "emp_no")
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    FOREIGN KEY ("emp_no") references employees ("emp_no"),
	PRIMARY KEY ("emp_no")
);

CREATE TABLE "titles" 
    "emp_no" int   NOT NULL,
    "title" varchar (40)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    FOREIGN KEY ("emp_no") references employees("emp_no");
);
ALTER TABLE "titles" 
	alter column "title"
	type varchar(40);