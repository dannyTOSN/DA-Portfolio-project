 WITH CTE_Employee AS
 (SELECT FirstName, LastName, Gender, Salary
 ,COUNT (Gender) over (PARTITION BY Gender) as TotalGender
 ,AVG(Salary) over (PARTITION BY Gender) as AvgSalary
 FROM PredanSalaryScheme
 JOIN PredanEventPayroll2023
 ON PredanSalaryScheme.EmployeeID = PredanEventPayroll2023.EmployeeID
 WHERE Salary > '100000'
 )

 SELECT FirstName, lastName, Gender, AvgSalary
 FROM CTE_Employee