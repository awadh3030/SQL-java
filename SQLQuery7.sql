USE [Practice]
GO

INSERT INTO [dbo].[employees]
           ([emp_id]
           ,[emp_name]
           ,[job_name]
           ,[manager_id]
           ,[hire_date]
           ,[salary]
           ,[commission]
           ,[dep_id])
		 VALUES (68319 , 'KAYLING'  , 'PRESIDENT' ,  NULL  , '1991-11-18', 6000.00 , NULL , 1001),
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










GO


