-- String Functions --

Select Length('skyfall');

Select *
From employee_demographics;

Select first_name, Length(first_name)
From employee_demographics;

Select first_name, Length(first_name)
From employee_demographics
Order by 2;

Select Upper('sky');
Select Lower('SKY');

Select first_name, upper(first_name)
From employee_demographics;

Select first_name, Lower(first_name)
From employee_demographics;

Select trim('         sky          ');
Select ('             sky              ');
Select Ltrim('            sky            ');
Select Rtrim('            sky            ');


Select *
From employee_demographics;


# Substring

Select first_name,
Left(first_name, 4),
Right(first_name, 4),
From employee_demographics;


Select first_name,
Left(first_name, 4),
Right(first_name, 4),
Substring(first_name,3,2),
birth_date,
Substring(birth_date,6,2) AS birth_month
From employee_demographics;


Select first_name, Replace(first_name, 'a','z')
From employee_demographics;

Select LOCATE('y','Deeery');

Select first_name, Locate('An',first_name)
From employee_demographics;

Select first_name, last_name,
Concat(first_name,' ',last_name) as full_name
From employee_demographics;

