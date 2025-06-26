-- Limit and Aliasing --

-- LIMIT --

Select *
From employee_demographics
Limit 3;


Select *
From employee_demographics
Order by age ASC
Limit 5;

Select *
From employee_demographics
Order by age ASC
Limit 5, 2;



-- Aliasing -- 

Select *
From employee_demographics;


Select gender, AVG(age) as avg_age
From employee_demographics
Group By gender
Having avg_age > 40
;

# it can also work without AS, ex

Select gender, AVG(age) avg_age
From employee_demographics
Group By gender
Having avg_age > 40
;