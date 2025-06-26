-- UNIONS -- 

Select *
From employee_demographics;

Select first_name, last_name
From employee_demographics
Union
Select first_name, last_name
From employee_salary;


Select first_name, last_name
From employee_demographics
Union distinct
Select first_name, last_name
From employee_salary;


Select first_name, last_name
From employee_demographics
Union all
Select first_name, last_name
From employee_salary;


Select first_name, last_name
From employee_demographics
Where age > 50;


Select first_name, last_name, 'OLD' as label
From employee_demographics
Where age > 50
Union
Select first_name, last_name, 'Highly Paid' as label
From employee_salary
Where salary > 70000
;


Select first_name, last_name, 'Old Man' as label
From employee_demographics
Where age > 40 and gender = 'Male'
Union
Select first_name, last_name, 'Old lady' as label
From employee_demographics
Where age > 40 and gender = 'female'
Union
Select first_name, last_name, 'Highly Paid Employee' as label
From employee_salary
Where salary > 70000
;


Select first_name, last_name, 'Old Man' as label
From employee_demographics
Where age > 40 and gender = 'Male'
Union
Select first_name, last_name, 'Old lady' as label
From employee_demographics
Where age > 40 and gender = 'female'
Union
Select first_name, last_name, 'Highly Paid Employee' as label
From employee_salary
Where salary > 70000
Order by first_name, last_name
;