-- Window Functions -- 

Select *
From employee_demographics;


Select gender, AVG(salary) AS avg_salary
From employee_demographics dem
Join employee_salary sal
	On dem.employee_id = sal.employee_id
Group By gender;


Select gender, AVG(salary) OVER()
From employee_demographics dem
Join employee_salary sal
	On dem.employee_id = sal.employee_id
;


Select gender, AVG(salary) OVER(partition by gender)
From employee_demographics dem
Join employee_salary sal
	On dem.employee_id = sal.employee_id
;


Select dem.first_name, dem.last_name, gender, AVG(salary) OVER(partition by gender)
From employee_demographics dem
Join employee_salary sal
	On dem.employee_id = sal.employee_id
;


Select dem.first_name, dem.last_name, gender, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_Total
From employee_demographics dem
Join employee_salary sal
	On dem.employee_id = sal.employee_id
;


Select dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER()
From employee_demographics dem
Join employee_salary sal
	On dem.employee_id = sal.employee_id
;


Select dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION by gender ORDER by salary DESC)
From employee_demographics dem
Join employee_salary sal
	On dem.employee_id = sal.employee_id
;

Select dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS Row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num
From employee_demographics dem
Join employee_salary sal
	On dem.employee_id = sal.employee_id
;


Select dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS Row_num,
RANK() OVER(PARTITION BY gender ORDER by salary DESC) AS rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER by salary DESC) AS dense_rank_num
From employee_demographics dem
Join employee_salary sal
	On dem.employee_id = sal.employee_id
;