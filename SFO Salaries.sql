use data;
-- show all the columns and rows in the table.
SELECT * FROM salaries;
-- show EmployeeName and JobTitle columns.
SELECT EmployeeName, JobTitle FROM salaries;
-- Number of employees in the table.
SELECT count(*) FROM salaries;
-- Show Unique Job Title in the table.
SELECT distinct Jobtitle FROM salaries;
-- Show Job Title with overtime pay in the table with overtime pay greater than 50000
SELECT Jobtitle, OvertimePay FROM salaries where OvertimePay > 50000;
-- Show the AVG pay.
SELECT AVG(BasePay) as "Average Base Pay" FROM salaries;
-- Show the top 10 highest paid employees.
SELECT EmployeeName, TotalPay FROM salaries order by TotalPay desc limit 10;
-- Show the Avg of BasePay, OvertimePay, and OtherPay for each employee.
SELECT EmployeeName, (BasePay + OvertimePay + OtherPay)/3 as "AVG OF ALL PAYS" 
FROM salaries;
-- Show all Employees who have the word Manager in there Jobtitle.
SELECT EmployeeName,Jobtitle FROM salaries where Jobtitle LIKE '%MANAGER%';
-- Show all Employees not equal to Manager.
SELECT EmployeeName,Jobtitle FROM salaries where Jobtitle != 'MANAGER';
-- Show all employees total pay between 50,000 and 70,000.
SELECT EmployeeName, Totalpay FROM salaries where Totalpay between 50000 and 70000
order by Totalpay asc ;
-- Show all Employees with basepay less than 50,000 or a total pay greater than 100,000.
SELECT * FROM salaries where Basepay < 50000 or Totalpay > 100000;
-- Show all the Employees with a total pay benefits value 
-- between 1,25,000 and 1,50,000 and a job title having 'Director'.
SELECT * FROM salaries where TotalpayBenefits between 125000 and 150000
and JobTitle like '%DIRECTOR%';
-- Show all employees ordered by their total pay benefits in descending order.
SELECT * FROM salaries order by TotalPayBenefits desc;
-- Show all job titles with an average base pay of at least 1,00,000 and 
-- order them by the average base pay in descending order.
SELECT JobTitle, AVG(BasePay) as "avgbasepay" FROM salaries group by Jobtitle
having  avg(BasePay) >= 100000 order by avgbasepay desc;
-- Delete the Notes Column.
SELECT * FROM salaries;

Alter table salaries
drop column Notes;
SELECT * FROM salaries;




