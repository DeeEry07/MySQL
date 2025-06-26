 -- WHERE clause --
 
 Select *
 FROM parks_and_recreation.employee_salary
 WHERE first_name = 'Ron'
 ;
 
 Select *
 FROM parks_and_recreation.employee_salary
 WHERE last_name = 'Swanson'
 ;
 
 Select *
 FROM parks_and_recreation.employee_salary
 WHERE salary = 50000
 ;
 
 
 Select *
 FROM parks_and_recreation.employee_salary
 WHERE salary != 50000
 ;
 
 
 Select *
 FROM parks_and_recreation.employee_salary
 WHERE salary >= 70000
 ;
 
 
 
 Select *
 FROM parks_and_recreation.employee_demographics
 WHERE gender != 'female'
 ;
 
 
 
 Select *
 FROM parks_and_recreation.employee_demographics
 WHERE birth_date < '1985-01-01'
 ;
 
 
 -- AND or NOT -- Logical Operators
 
 Select *
 FROM parks_and_recreation.employee_demographics
 WHERE birth_date < '1985-01-01'
 AND gender = 'male'
 ;
 
 Select *
 FROM parks_and_recreation.employee_demographics
 WHERE birth_date < '1988-01-01'
 OR gender = 'Female'
 ;
 
 
 
 Select *
 FROM parks_and_recreation.employee_demographics
 WHERE (last_name = 'Dwyer' AND  age = 34) OR age > 45
 ;
 
 
 -- Like Statement --
-- % and _

SELECT *
FROM employee_demographics
WHERE last_name LIKE '%e%'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__'
;

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1985%'
;