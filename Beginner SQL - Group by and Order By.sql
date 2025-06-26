-- GROUP BY -- 
grouping columns and rows with the same values

SELECT *
FROM employee_demographics;


SELECT gender
FROM employee_demographics
GROUP BY gender
;

SELECT first_name, MAX(salary)
FROM employee_salary
GROUP BY first_name
;


SELECT last_name, MIN(salary)
FROM employee_salary
GROUP BY last_name
;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
;


SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

SELECT occupation
FROM employee_salary
GROUP BY occupation
;

-- Aggregated functions --

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

SELECT gender, MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;


-- ORDER BY -


SELECT *
FROM employee_demographics;


SELECT *
FROM employee_demographics
ORDER BY first_name DESC
;

SELECT *
FROM employee_demographics
ORDER BY gender, age ASC
;