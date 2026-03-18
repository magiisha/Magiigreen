create database company_db;
use company_db;
create table skills(skill_id int auto_increment,skill_name varchar(50) not null, category varchar(50),primary key(skill_id));
show tables;
create table employee(name varchar(50),id int,email varchar(50));
rename table employee to staff;
select *from staff;
select *from staff;

alter table staff add hire_date date;
alter table staff add salary float;
alter table staff add gender char;
select *from staff;
insert into staff(name,id,email,hire_date,salary,gender)
values('Alice Green',4,'alice.green@company.com','2024-01-10',62000.00,'f');


create table project (project_name varchar(50),bubget float,dept_id int);
insert into project(project_name,bubget,dept_id)
values('Mobile App',60000.00,2),
('Training Program',25000.00,1);
select *from project;

create table department(department_name varchar(50),location varchar(50));
insert into department(department_name,location)
values('Sales','Boston');
select * from department;
create table emp (first_name varchar(50),email varchar(50),id int);
insert into emp(first_name,email,id) values('maha','maha@company.com',1),('tom','tm@company.com',null);
select * from employee;
select name as Name,id as 'Employee ID',email as 'Email Address',salary from staff;
SELECT *
FROM employees
WHERE hire_date > '2023-01-01';

SELECT *
FROM project
WHERE bubget > 40000
ORDER BY bubget DESC;

SELECT DISTINCT location
FROM department;
ALTER TABLE employee
ADD phone_number VARCHAR(15)
AFTER email;
UPDATE employee
SET salary = 65000.00
WHERE name = 'John Doe';
UPDATE employee
SET gender = 'Other'
WHERE dept_id = 2;
ALTER TABLE employee
DROP COLUMN phone_number;
SELECT *
FROM employee
WHERE salary BETWEEN 60000 AND 80000;
SELECT *
FROM employee
WHERE first_name LIKE 'J%';
SELECT *
FROM projects
WHERE dept_id = 1 OR dept_id = 2;
SELECT *
FROM employee
WHERE email IS NOT NULL;

SELECT *
FROM department
WHERE location NOT IN ('New York', 'Chicago');
SELECT *
FROM employee
WHERE hire_date BETWEEN '2023-01-01' AND '2023-12-31';
SELECT SUM(salary) AS total_salary
FROM employee;
SELECT AVG(budget) AS average_budget
FROM projects;
SELECT MAX(salary) AS highest_salary
FROM employee;
SELECT COUNT(*) AS total_employees
FROM employee
WHERE dept_id = 2;
SELECT MIN(budget) AS minimum_budget
FROM projects;
SELECT e.*, d.dept_name
FROM employee e
JOIN department d
ON e.dept_id = d.dept_id;
SELECT d.dept_id, d.dept_name, COUNT(e.id) AS employee_count
FROM department d
LEFT JOIN employee e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;
SELECT p.*, d.dept_name
FROM projects p
JOIN department d
ON p.dept_id = d.dept_id;
SELECT e.*
FROM employee e
JOIN department d
ON e.dept_id = d.dept_id
WHERE d.location = 'San Francisco';
SELECT d.dept_id, d.dept_name
FROM department d
LEFT JOIN projects p
ON d.dept_id = p.dept_id
WHERE p.dept_id IS NULL;
SELECT CONCAT(first_name, ' ', last_name) AS `Full Name`
FROM employee;
SELECT UPPER(dept_name) AS dept_name
FROM department;
SELECT SUBSTRING(email, 1, 3) AS first_three_chars
FROM employee;
SELECT ABS(-50000);
SELECT ROUND(AVG(salary), 2) AS avg_salary
FROM employee;
SELECT *
FROM employee
ORDER BY hire_date DESC
LIMIT 3;
SELECT *
FROM employee
ORDER BY emp_id
LIMIT 3 OFFSET 3;
SELECT name, salary,
IF(salary >= 70000, 'High', 'Low') AS salary_category
FROM employee;
SELECT project_name, budget,
CASE
    WHEN budget >= 60000 THEN 'Large'
    WHEN budget >= 40000 THEN 'Medium'
    ELSE 'Small'
END AS budget_category
FROM projects;
SELECT dept_id, SUM(budget) AS total_budget
FROM projects
GROUP BY dept_id;
SELECT *
FROM employee

ORDER BY LENGTH(first_name) DESC
LIMIT 1;
SELECT *
FROM employee
WHERE hire_date >= CURDATE() - INTERVAL 90 DAY;
DELETE FROM employee
WHERE salary < 60000;
DROP TABLE projects;
RESTORE DATABASE MyDB
FROM DISK = 'C:\Backup\MyDB.bak'
WITH REPLACE;
