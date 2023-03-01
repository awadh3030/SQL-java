create table Department(
dep_id INTEGER primary key,
dep_name VARCHAR(20),
dep_location VARCHAR(15)
);
create table salary_grade(
grade INTEGER,
min_salary INTEGER,
max_salary INTEGER
);
create table Employees(
emp_id INTEGER,
emp_name VARCHAR(15),
job_name VARCHAR(10),
manager_id INTEGER,
hire_date DATE,
salary DECIMAL(10, 2),
commission DECIMAL(7,2),
dep_id INTEGER foreign key REFERENCES Department(dep_id)
);



INSERT INTO Employees( emp_id , emp_name , job_name  , manager_id , hire_date  , salary  , commission , dep_id)
		VALUES  
		(68319 , 'KAYLING'  , 'PRESIDENT' ,  NULL  , '1991-11-18', 6000.00 , NULL , 1001),
	   (66928 , 'BLAZE'    , 'MANAGER'   , 68319  , '1991-05-01', 2750.00  , NULL , 3001),
	   (67832 , 'CLARE'    , 'MANAGER'   , 68319  , '1991-06-09', 2550.00 , NULL , 1001),
	   (65646 , 'JONAS'    , 'MANAGER'   , 68319  , '1991-04-02', 2957.00 , NULL , 2001),
	   (67858 , 'SCARLET'  , 'ANALYST'   , 65646  , '1997-04-1' , 3100.00 , NULL , 2001),
	   (69062 , 'FRANK'    , 'ANALYST'   , 65646  , '1991-12-03', 3100.00 , NULL , 2001),
	   (63679 , 'SANDRINE' , 'CLERK'     , 69062  , '1990-12-18', 900.00  , NULL , 2001),
	   (64989 , 'ADELYN'   , 'SALESMAN'  , 66928  , '1991-02-20', 1700.00 , 400.00  , 3001),
	   (65271 , 'WADE'     , 'SALESMAN'  , 66928  , '1991-02-22', 1350.00 , 600.00  , 3001),
	   (66564 , 'MADDEN'   , 'SALESMAN'  , 66928  , '1991-09-28', 1350.00 , 1500.00  , 3001),
	   (68454 , 'TUCKER'   , 'SALESMAN'  , 66928  , '1991-09-08', 1600.00 , 0.00  , 3001),
	   (68736 , 'ADNRES'   , 'CLERK'     , 67858  , '1997-05-23', 1200.00 , NULL , 2001),
	   (69000 , 'JULIUS'   , 'CLERK'     , 66928  , '1991-12-03', 1050.00 , NULL , 3001),
	   (69324 , 'MARKER'   , 'CLERK'     , 67832  , '1992-01-23', 1400.00 , NULL , 1001);

	   select * from Employees

	   INSERT INTO   salary_grade ( grade,min_salary,max_salary)

	   VALUES   (1, 800, 1300),
    (2, 1301, 1500),
    (3, 1501, 2100),
    (4, 2101, 3100),
    (5, 3101, 9999);
	
	select * from salary_grade

	  INSERT INTO Department (dep_id,dep_name,dep_location)

VALUES (1001, 'FINANCE', 'SYDNEY'),
(2001, 'AUDIT', 'MELBOURNE'),
(3001, 'MARKETING', 'PERTH'),
(4001, 'PRODUCTION', 'BRISBANE')


select * from Department



select DISTINCT job_name from Employees


SELECT emp_name, salary * 1.15 AS new_salary
FROM employees;


SELECT CONCAT(emp_name, ' & ', job_name) AS "Employee & Job"
FROM employees;

SELECT emp_id, emp_name, salary, TO_CHAR(hire_date, 'Month DD, YYYY') AS hire_date
FROM employees;


SELECT COUNT(*)
FROM Employees
WHERE salary + COALESCE(salary, 0) > 2200;



SELECT DISTINCT job_name, emp_id
FROM employees;


SELECT *
FROM employees
WHERE dep_id != 2001;


SELECT *
FROM employees
WHERE year(hire_date) < 1991;




SELECT AVG(salary)
FROM Employees
WHERE job_name = 'Analyst';


SELECT *
FROM employees
WHERE emp_name LIKE 'B%' OR emp_name LIKE '%E';



SELECT *
FROM Department ,employees
WHERE dep_name LIKE 'B%' OR dep_name LIKE '%E';


SELECT *
FROM Department
WHERE dep_location LIKE 'F%' OR dep_location LIKE '%N';


SELECT *
FROM employees, Department
WHERE commission > salary;


SELECT *
FROM employees
WHERE salary < '3500'


SELECT *
FROM employees
WHERE EXTRACT(MONTH FROM hire_date) =1;



SELECT  CONCAT(emp_name, ' works for ', manager_id) AS 'employees and their managers'
FROM employees


SELECT * 
FROM employees
WHERE job_name ='CLERK'


SELECT *
FROM employees
WHERE hire_date < '1997'





SELECT job_name, emp_name,salary
FROM employees
WHERE job_name = 'Analyst';



SELECT *
FROM employees
WHERE hire_date < '1992' 


SELECT *
FROM employees
WHERE hire_date > ' 1992-01-23' 




SELECT *
FROM employees
WHERE manager_id is null



SELECT *
FROM employees
WHERE hire_date = 1991-05-1 or hire_date = 1991-05-23



SELECT emp_id, emp_name,salary,hire_date
FROM employees
WHERE manager_id= 68319



SELECT emp_id, emp_name,salary,hire_date
FROM employees
WHERE salary > 3000


SELECT *
FROM employees
where salary % 2 = 0;



SELECT *
FROM employees
where salary < 999



SELECT *
FROM employees
where hire_date = 1997-04-1 and hire_date = 1997-04-1


SELECT *
FROM employees 
where dep_id= 1001 or dep_id= 2001  





SELECT *
FROM employees 
where job_name = 'CLERK' or job_name =' MANAGER'



SELECT *
FROM employees
WHERE year(hire_date) = 1991;


SELECT *
FROM employees
WHERE hire_date = 1991-05-1 or hire_date = 1991-02-20 or  hire_date =  1991-12-03

SELECT *
FROM employees
WHERE manager_id =63679 or manager_id =68319 or manager_id =66564 or manager_id =69000




SELECT * 
FROM employees
WHERE job_name ='CLERK' and dep_id=2001


SELECT *
FROM employees 
where job_name = 'CLERK' or job_name =' MANAGER'



SELECT *
FROM employees 
where month(hire_date)=2 

SELECT *
FROM employees 
where month(hire_date)=6 and YEAR(hire_date)=1991 


SELECT *
FROM Employees 
WHERE 12*salary BETWEEN 24000 AND 50000


SELECT DISTINCT * FROM Employees
WHERE DAY(hire_date)=1 AND month(hire_date)=5 or DAY(hire_date)=20 AND month(hire_date)=2 or DAY(hire_date)=3 AND month(hire_date)=12 and YEAR(hire_date)=1991


SELECT *
FROM employees 
WHERE YEAR(hire_date)=1990

SELECT *
FROM employees 
where month(hire_date)=2 and salary BETWEEN 1001 AND 2000

SELECT *
FROM employees ,Department



SELECT *
FROM employees 
WHERE salary*12 > 60000

SELECT emp_name,dep_id,salary,commission
FROM employees, Department
WHERE salary BETWEEN 2000 AND 5000 and dep_location ='PERTH'

SELECT salary ,emp_name
FROM employees 
WHERE emp_name= 'FRANK' 




SELECT *
FROM employees
WHERE manager_id is null



SELECT *
FROM salary_grade ,employees
WHERE grade =4



SELECT *
FROM  employees
 WHERE YEAR(hire_date)> 1991 AND emp_name<>'MARKER' OR emp_name<>'ADELYN' AND dep_id= 2001 OR dep_id=4001



  SELECT salary,emp_name
  FROM employees
  ORDER BY salary,emp_name



  
SELECT *
FROM  employees
ORDER BY dep_id ASC,job_name DESC;



















