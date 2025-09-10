-- WHERE Clause

select *
from employee_salary
where first_name = 'Leslie'
;

select *
from employee_salary
where salary <= 50000
;

select *
from employee_demographics
where gender != 'Female'
;

select *
from employee_demographics
where birth_date > '1985-01-01'
;


-- AND OR NOT -- lOGICAL OPERATORS
select *
from employee_demographics
where birth_date > '1985-01-01'
or not gender = 'male'
;

select *
from employee_demographics
where (first_name = 'Leslie' and age = 44) or age > 55
;


-- LIKE STATEMENT
-- % and _
select *
from employee_demographics
where first_name like 'a%'
;

select *
from employee_demographics
where first_name like 'a___%'
;

select *
from employee_demographics
where birth_date like '1989%'
;