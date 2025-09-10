select first_name, last_name, salary
from employee_salary
where salary > 50000 and salary <=70000
order by salary desc;

select gender, avg(age)
from employee_demographics
group by gender;

select avg(age)
from employee_demographics;

select occupation, avg(salary)
from employee_salary
group by occupation
;

select gender, avg(age)
from employee_demographics
group by gender
having avg(age) < 40;

select first_name, last_name
from employee_demographics
where first_name like '%a%' and last_name like '%er' or last_name like '%e';

select first_name, last_name
from employee_demographics
where first_name like '%a%' and last_name like '%_____e%';

select *
from employee_demographics
where gender = 'female'
order by age desc
limit 3;


