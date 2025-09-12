with biggest_salary as
(
select first_name, last_name, salary
from employee_salary
where salary > 60000
order by salary desc
)
select *
from biggest_salary;

create temporary table thebiggest_salary
select *
from employee_salary
where salary >= 60000;

select first_name, last_name, salary
from thebiggest_salary
order by salary desc;

