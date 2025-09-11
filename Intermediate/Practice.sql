select *
from employee_demographics;

select *
from employee_salary;

select dem.employee_id, dem.first_name, dem.last_name, salary
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

select
rank() over(partition by gender order by salary desc) as ranks,
row_number() over(order by (select null)) as list,
dem.*, sal.salary,
case 
	when age > 50 then 'Senior'
    when age <=50 then 'Middle'
end as Type
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

SELECT first_name, last_name, 'Old Man' as Label
from employee_demographics
where age > 40 and gender = 'Male'
union
SELECT first_name, last_name, 'Old Lady' as Label
from employee_demographics
where age > 40 and gender = 'Female'
union
SELECT first_name, last_name, 'Highly Paid Employee' as Label
from employee_salary
where salary > 70000
order by first_name, last_name
;