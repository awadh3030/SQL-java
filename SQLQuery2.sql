CREATE PROCEDURE even_numbers
AS
BEGIN
    DECLARE @counter INT
    SET @counter = 0

    WHILE @counter < 100
    BEGIN
        SET @counter = @counter + 2
        PRINT @counter
    END
END



EXEC even_numbers




CREATE PROCEDURE odd_number
AS
BEGIN
DECLARE @counter INT
 SET @counter = 0
  WHILE @counter < 100
  BEGIN
  SET @counter = @counter + 1
PRINT @counter
   END
END

EXEC odd_number


CREATE PROCEDURE prime
AS
BEGIN
DECLARE @counter INT
WHILE @counter < 100
BEGIN
SET @counter = @counter / @counter 
PRINT @counter
END
END

EXEC prime


