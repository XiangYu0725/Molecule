CREATE TABLE [dbo].Student
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Name] CHAR(10) NOT NULL,
	[Gender] CHAR(1) NOT NULL, 
    [Birthday] DATE NOT NULL, 
    [Father] INT NULL, 
    [Mother] INT NULL, 
    [Grade] INT NOT NULL, 
    [Class] INT NOT NULL,

)
