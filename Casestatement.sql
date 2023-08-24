SELECT EmployeeID, Salary, JobTitle,
CASE
WHEN SALARY > 100000 THEN 'SENIOR OFFICER'
ELSE 'JUNIOR OFFICER'
END
FROM PredanSalaryScheme
WHERE Salary is NOT NULL
ORDER BY SALARY

SELECT FirstName, LastName, Salary, JobTitle, Department,
CASE
WHEN JobTitle = 'FinanceOfficer' THEN Salary + (Salary * .5)
WHEN JobTitle = 'CommercialOfficer' THEN Salary + (Salary * .9)
END AS SalaryAfterRaise
FROM PredanSalaryScheme
join PredanEventPayroll2023
ON PredanSalaryScheme.EmployeeID = PredanEventPayroll2023.EmployeeID