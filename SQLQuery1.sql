USE ASMPRJ301

DROP TABLE Genealogy
DROP TABLE Person
DROP TABLE [User]

CREATE TABLE [User](
	Username VARCHAR(20) NOT NULL UNIQUE,
	[Password] VARCHAR(20) NOT NULL,
	EmailAddress VARCHAR(MAX),
);

CREATE TABLE Person (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Fullname NVARCHAR(255),
	DateOfBirth DATE,
	DateOfDeath DATE,
	Occupation NVARCHAR(MAX),    
    Address NVARCHAR(MAX),
    PhoneNumber NVARCHAR(MAX),
	[Description] NVARCHAR(MAX),
	ParentID INT,
	FOREIGN KEY (ParentID) REFERENCES Person(ID)
);

CREATE TABLE Genealogy(
	ID INT PRIMARY KEY IDENTITY(1,1),
	GenealogyTitle NVARCHAR(MAX),
	HeaderID INT,
	FOREIGN KEY (HeaderID) REFERENCES Person(ID)
);

