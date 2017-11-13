CREATE TABLE [dbo].[UserData] (
    [Id]       INT  IDENTITY(1,1) PRIMARY KEY ,
    [UserName] VARCHAR (20) NULL,
	[First_name] VARCHAR(20) NULL,
	[Last_name] VARCHAR (20) NULL,
	[CNP] INT NULL,
	[Birth_Date]  INT  NULL,
	[Birth_Month]  INT  NULL,
	[Birth_Year]  INT  NULL,
	[Gender]  VARCHAR(20) NULL,
	[Address] VARCHAR (20) NULL,
	[Phone] INT  NULL,
    [Email]   VARCHAR (50) NULL,
    [Password] INT NULL,
    [Country]  VARCHAR (20) NULL,
	[Status] VARCHAR (20) NULL,
	[Tip] VARCHAR (20) NULL

);
