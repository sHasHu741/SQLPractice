-- CASE STATEMENTS

SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 30 THEN 'YOUNG'
    WHEN age BETWEEN 31 and 50 THEN 'OLD'
    WHEN age>=50 THEN 'On deaths door'
END AS Age_Bracket    
FROM employee_demographics
;

-- PAY INCREASE AND BONUS
-- < 50000 =5%
-- > 50000 =10%
-- FINANCE 10% BONUS

SELECT first_name,last_name,salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
END AS New_Salary,  
CASE
	WHEN dept_id = 6 THEN salary + (salary * 0.1)
END AS BONUS    
FROM employee_salary;