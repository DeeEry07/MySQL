-- CTEs --

Select gender, AVG(salary), MAX(salary), MIN(salary), COUNT(salary)
From employee_demographics dem
Join employee_salary sal
	On dem.employee_id = sal.employee_id
Group by gender;


#Basics of writing CTEs

With CTE_Example AS
(
SELECT gender, AVG(salary)avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	On dem.employee_id = sal.employee_id
Group by gender
)
Select *
From CTE_Example
;


With CTE_Example AS
(
SELECT gender, AVG(salary)avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	On dem.employee_id = sal.employee_id
Group by gender
)
Select AVG(avg_sal)
From CTE_Example
;




Select AVG(avg_sal)
From (Select gender, AVG(salary)avg_sal, MAx(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
From employee_demographics dem
Join employee_salary sal
	On dem.employee_id = sal.employee_id
Group by gender
) example_subquery
;


WITH CTE_Example AS
(
Select employee_id, gender, birth_date
From employee_demographics
Where birth_date > '1985-01-01'
),
CTE_Example2 AS
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
Select *
From CTE_Example
JOIN CTE_Example2
	On CTE_Example.employee_id = CTE_Example2.employee_id
;




With CTE_Example (Gender, AVG_Sal, MAX_Sal, MIN_Sal, COUNT_Sal)AS
(
SELECT gender, AVG(salary)avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	On dem.employee_id = sal.employee_id
Group by gender
)
Select *
From CTE_Example
;

