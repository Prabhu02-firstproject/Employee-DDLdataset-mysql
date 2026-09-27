Create database employee;
use employee;

## create tables departments,location and employees

create table departments(
department_id int,department_name varchar(100));

create table location(
location_id int,location varchar(30));

create table employees(employess_id int,
employee_name varchar(50),
gender enum('M','F'),
age int,
hire_date date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2));

## Table alteration

Alter table Employees
add email varchar(50);

alter table employees
modify designation varchar(150);


alter table employees
drop age;

alter table employees
rename column hire_date to date_of_joining;

##Table renaming

rename table departments to departments_info;

rename table location to locations;

drop database employee;

create database employee;

use employee;

create table departments(department_id int primary key,department_name varchar(100) unique not null);

create table location(location_id int auto_increment primary key,location_name varchar(100) unique not null);

create table employees
(employee_id int auto_increment primary key,
employee_name varchar(100) not null,
gender enum('M','F'),
age int check(age>=18),
hire_date date,
department_id int,
location_id int,
salary decimal(10,2),

foreign key (department_id)
references departments(department_id),

foreign key(location_id)
references location(location_id)
);