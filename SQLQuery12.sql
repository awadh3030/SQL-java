USE [Practice]
GO

INSERT INTO [dbo].[salary_grade]
           ([grade]
           ,[min_salary]
           ,[max_salary])
     VALUES
                      (1, 800, 1300),
    (2, 1301, 1500),
    (3, 1501, 2100),
    (4, 2101, 3100),
    (5, 3101, 9999);
GO


