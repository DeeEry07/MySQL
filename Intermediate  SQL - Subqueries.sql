-- Subqueries --

Select *
From employee_demographics;

Select *
From employee_salary;

Select *
From employee_demographics
WHERE employee_id IN 
					(Select employee_id
						From employee_salary
                        WHERE dept_id = 1)
;


Select *
From employee_salary;

Select first_name, salary, AVG(salary)
From employee_salary
GROUP BY first_name, salary;

-- This is what we want to see --

Select first_name, salary,
			( Select AVG(salary)
					From employee_salary)
From employee_salary;

Select *
From employee_demographics;

Select gender, AVG(age), MAx(age), MIN(age), COUNT(age)
From employee_demographics
GROUP BY gender;


Select *
From
(Select gender, AVG(age), MAx(age), MIN(age), COUNT(age)
From employee_demographics
GROUP BY gender) AS Agg_table 
;


Select gender, AVG(`MAx(age)`)
From
(Select gender, AVG(age), MAx(age), MIN(age), COUNT(age)
From employee_demographics
GROUP BY gender) AS Agg_table 
Group by gender
;

Select AVG(`MAx(age)`)
From
(Select gender, AVG(age), MAx(age), MIN(age), COUNT(age)
From employee_demographics
GROUP BY gender) AS Agg_table 
;


Select AVG(max_age)
From
(Select gender, 
AVG(age) AS avg_age, 
MAx(age)as max_age, 
MIN(age) as min_age, 
COUNT(age) as count_age
From employee_demographics
GROUP BY gender) AS Agg_table 
;