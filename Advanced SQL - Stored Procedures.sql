-- Stored Procedures --

SELECT *
FROM employee_salary;

SELECT *
FROM employee_salary
WHERE salary >= 50000;


CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;


Call large_salaries();


CREATE PROCEDURE large_salaries2()
SELECT *
FROM employee_salary
WHERE salary >= 50000;
SELECT *
FROM employee_salary
WHERE salary >= 10000;


DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries3();


# parameter

DELIMITER $$
CREATE PROCEDURE large_salaries4(employee_id INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = employee_id
	;
END $$
DELIMITER ;

#example
DELIMITER $$
CREATE PROCEDURE large_salaries4(huggymuffin INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = huggymuffin
	;
END $$
DELIMITER ;


#naming conventions for parameter
employee_id_param OR p_employee_id

DELIMITER $$
CREATE PROCEDURE large_salaries4(p_employee_id_ INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = p_employee_id
	;
END $$
DELIMITER ;

CALL large_salaries4(2);