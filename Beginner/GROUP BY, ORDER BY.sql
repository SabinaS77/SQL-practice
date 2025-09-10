-- Group By

select *
from employee_demographics;

select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender
;

select occupation, salary
from employee_salary
group by occupation, salary
;


-- ORDER BY

select *
from employee_demographics
order by gender, age desc
;

select *
from employee_demographics
order by age, gender
;

select *
from employee_demographics
order by 5, 4
;