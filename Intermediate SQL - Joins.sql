-- Joins -- 


Select *
From employee_demographics
;

Select *
From employee_salary
;

Select *
From employee_demographics 
Inner Join employee_salary 
	On employee_demographics.employee_id = employee_salary.employee_id
    ;
    
# or you can use

Select *
From employee_demographics as dem
Inner Join employee_salary as sal
	On dem.employee_id = sal.employee_id
    ;
    
Select dem.employee_id, age, occupation
From employee_demographics as dem
Inner Join employee_salary as sal
	On dem.employee_id = sal.employee_id
    ;
    
    -- Outer Joins -- 
    # Left Join or Left outer join
    
    
Select *
From employee_demographics as dem
Left Join employee_salary as sal
	On dem.employee_id = sal.employee_id
;
    
    # Right Join or Right outer join
    
Select *
From employee_demographics as dem
Right Join employee_salary as sal
	On dem.employee_id = sal.employee_id
;
    
    -- Self Join
    
Select *
From employee_salary emp1
Join employee_salary emp2
	On emp1.employee_id = emp2.employee_id
;
    
    
Select *
From employee_salary emp1
Join employee_salary emp2
	On emp1.employee_id + 1 = emp2.employee_id
;
    
Select emp1.employee_id AS emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_santa,
emp2.last_name as last_name_santa
From employee_salary emp1
Join employee_salary emp2
	On emp1.employee_id + 1 = emp2.employee_id
    ;
    
    
    -- Joing multiple tables together --

Select *
From employee_demographics as dem
Inner Join employee_salary as sal
	On dem.employee_id = sal.employee_id
Inner Join parks_departments pd
	On sal.dept_id = pd.department_id
;


  Select *
    From parks_departments;