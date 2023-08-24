Select *
from PredanSalaryScheme

--Subquery in select
SELECT EmployeeID , Salary, (select avg(Salary) FROM PredanSalaryScheme) as AVGSalary
from PredanSalaryScheme


--how to do it with partition by
select EmployeeID, Salary, avg(salary) over() as AVGSalary
from PredanSalaryScheme

--why groupby does not work 
SELECT EmployeeID,Salary, avg(Salary) as AVGSalary
from PredanSalaryScheme
GROUP BY EmployeeID, Salary
order by 1,2

--Subquery in from
SELECT EmployeeID, AVGSalary
FROM (select EmployeeID, Salary, avg(salary) over() as AVGSalary
from PredanSalaryScheme

--subquery in where
select employeeID, Salary
from PredanSalaryScheme
where EmployeeID IN (
        Select *
        from  PredanEventPayroll2023,
        WHERE Salary > 100000)