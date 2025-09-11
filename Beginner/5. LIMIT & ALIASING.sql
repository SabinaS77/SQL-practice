-- Limit & Aliasing

select *
from employee_demographics
order by age desc
limit 2, 1
;

-- Aliasing (changing the name of the column)

select gender, avg(age) as avg_age
from employee_demographics
group by gender
having avg_age > 40
;