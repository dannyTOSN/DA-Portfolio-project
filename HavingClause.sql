SELECT JobTitle, COUNT(JobTitle) as Officersperdepartment,avg(Salary/2) as AvgSalary 
FROM PredanSalaryScheme
JOIN PredanEventPayroll2023
ON PredanSalaryScheme.EmployeeID = PredanEventPayroll2023.EmployeeID
GROUP BY JobTitle

SELECT JobTitle, COUNT(JobTitle), Max(Salary)
FROM PredanSalaryScheme
JOIN PredanEventPayroll2023
ON PredanSalaryScheme.EmployeeID = PredanEventPayroll2023.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle)>48

SELECT JobTitle, count(jobtitle) as Officerperdepartment,AVG(Salary/2) as AvgSalary
FROM PredanSalaryScheme
JOIN PredanEventPayroll2023
ON PredanSalaryScheme.EmployeeID = PredanEventPayroll2023.EmployeeID
GROUP BY JobTitle
ORDER BY AVG(Salary)

SELECT JobTitle, AVG(Salary)
FROM PredanSalaryScheme
JOIN PredanEventPayroll2023
ON PredanSalaryScheme.EmployeeID = PredanEventPayroll2023.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) < 100000
ORDER BY AVG(Salary)
