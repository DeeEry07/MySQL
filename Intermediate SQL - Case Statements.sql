-- Case Statements --

Select *
From employee_demographics;

Select first_name,
last_name,
age,
Case
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Old'
    WHEN age >= 50 THEN "On Death's Door"
End AS Age_Bracket
From employee_demographics;


Select *
From employee_salary;

-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus

Select first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
END as New_salary
From employee_salary;

OR


Select first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END as New_salary
From employee_salary;


Select first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
END as New_salary
From employee_salary;

Select first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
END as New_salary,
CASE
	WHEN dept_id = 6 THEN salary * .10
END AS Bonus
From employee_salary;

Select *
From employee_salary;
Select *
From parks_departments;

 