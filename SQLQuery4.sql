CREATE TABLE Registration (
    AcNo INTEGER PRIMARY KEY,
    Fname VARCHAR(15)  NOT NULL,
    Lname VARCHAR(15)  NOT NULL,
    DOB DATE,
    RegDate DATE DEFAULT CONVERT(DATE, GETDATE()),
    CivilId INTEGER  NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('m', 'M', 'f', 'F')),
    GSM VARCHAR(8) UNIQUE CHECK (GSM LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    Openbal INTEGER CHECK (Openbal >= 50)
	);
CREATE TABLE Deposits (
    DNo INT PRIMARY KEY,
    AcNo int FOREIGN KEY REFERENCES Registration(AcNo),
    DDate DATE DEFAULT GETDATE(),
    DAmount INT NOT NULL,
    DLocation VARCHAR(10) NOT NULL
);
CREATE TABLE Withdrawals (
    WNo int PRIMARY KEY,
    AcNo int FOREIGN KEY REFERENCES Registration(AcNo),
    WDate DATE DEFAULT GETDATE(),
    WAmount int NOT NULL,
    WLocation VARCHAR(10) NOT NULL
);


CREATE PROCEDURE Reg_Add_Record
(

	@AcNo  INTEGER ,
	@FName varchar(15) ,
	@LName varchar(15),
	@DOB DATE,
	@CivilID integer ,
	@Gender CHAR(1),
	@GSM integer,
	@OpenBal integer
	 

	)
AS
BEGIN
   declare @RegDate DATE = CONVERT(DATE, GETDATE())
    INSERT INTO Registration (AcNo, FName, LName, DOB,RegDate, CivilID, Gender, GSM, OpenBal)
    VALUES (@AcNo, @FName, @LName, @DOB,@RegDate, @CivilID, @Gender, @GSM, @OpenBal);
	
END ;

EXEC Reg_Add_Record 12,'John','Doe','1990-01-01', 12345, 'M', '55512534',90
EXEC Reg_Add_Record 14,'John','Doe','1990-01-01', 12345, 'M', '58912534',90


select * from Registration

	CREATE PROCEDURE Reg_Update_OpenGSM (
      @AcNo INT,
    @GSM VARCHAR(20)
	)
AS
BEGIN
    UPDATE Registration
    SET GSM = @GSM
    WHERE AcNo = @AcNo
END

EXEC Reg_Update_OpenGSM 12345, '5551234'



CREATE PROCEDURE Reg_Del_Record
    @AcNo INT
AS
BEGIN
    DELETE FROM Registration
    WHERE AcNo = @AcNo
END

EXEC Reg_Del_Record 12345





CREATE PROCEDURE Deposit_Amt
  @DNo INT,
  @AcNo INT,
  @DDate DATE,
  @DAmount VARCHAR,
  @DLocation VARCHAR(10)
AS
BEGIN

 UPDATE Deposits
    SET DAmount = DAmount + @DAmount
    WHERE AcNo = @AcNo


  INSERT INTO Deposits (DNo, AcNo, DDate, DAmount, DLocation)
  VALUES (@DNo, @AcNo, @DDate, @DAmount, @DLocation)
END

EXEC Deposit_Amt 1001, 12345, '2023-02-26', 500.00, 'Branch A'


CREATE PROCEDURE Withdraw_Amt
  @WNo INT,
  @AcNo INT,
  @WDate DATE,
  @WAmount VARCHAR,
  @WLocation VARCHAR(10)
AS
BEGIN

UPDATE Withdrawals
        SET WAmount = WAmount - @WAmount
        WHERE AcNo = @AcNo


  INSERT INTO Withdrawals (WNo, AcNo, WDate, WAmount, WLocation)
  VALUES (@WNo, @AcNo, @WDate, @WAmount, @WLocation)
END


EXEC Withdraw_Amt 1, 12345, '2023-02-26', 300.00, 'ATM'






CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name


















