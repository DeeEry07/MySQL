-- Having vs Where --

SELECT gender, AVG (age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;



SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation
;



SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;

SELECT *
FROM employee_demographics;


SELECT gender, AVG(age)
FROM employee_demographics
Where gender like 'female'
Group by gender
Having AVG(age) < 50
;


SELECT *
FROM employee_salary;


SELECT employee_id, AVG(salary)
FROM employee_salary
Where employee_id like 9
Group by employee_id
Having AVG(salary) = 70000
;