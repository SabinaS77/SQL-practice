-- Case Statements

SELECT first_name,
last_name,
age,
case
	when age <= 30 then 'Young'
    when age between 31 and 50 then 'Old'
    when age >= 50 then "On Death's door"
end as age_bracket
from employee_demographics;


-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus

select first_name, last_name, salary,
Case
	when salary < 50000 then salary + (salary * 0.05)
    when salary > 50000 then salary + (salary * 0.07)
end as New_Salary,
case
	when dept_id = 6 then salary * .10
end as Bonus
from employee_salary;