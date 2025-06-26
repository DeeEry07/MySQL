SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name, 
last_name, 
birth_date,
age,
( age + 100 ) * 20 + 20
FROM parks_and_recreation.employee_demographics;
# PEMDAS


SELECT DISTINCT first_name, gender = 'male'
FROM parks_and_recreation.employee_demographics;


SELECT DISTINCT first_name, birth_date
FROM parks_and_recreation.employee_demographics;