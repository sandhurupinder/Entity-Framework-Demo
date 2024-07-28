IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'EfDemo')
BEGIN
	CREATE DATABASE EfDemo;
END
GO

Use EfDemo;
GO

DROP TABLE IF EXISTS Products;
GO

CREATE TABLE Products 
(
	[Id] INT Identity(1, 1) PRIMARY KEY NOT NULL,
	[Name] VARCHAR(200) UNIQUE NOT NULL, 
	[Description] VARCHAR(MAX)
);
GO

INSERT INTO Products ([Name], [Description]) 
VALUES 
	  ( 'Blue Pen', 'Plastic blue pen' )
	, ( 'Eraser', 'White eraser with cat picture' )
	, ( 'Paper Clip', 'Metal paper clip' )
	, ( 'Notebook', '100 pages notebook with red cover' )
	, ( 'Electronic Tablet', 'Android tablet with 64GB of memory' )
	, ( 'Smart Phone', 'Android smart phone with 48GB of memory' )
	, ( 'Laptop', 'Laptop with 16GB of memory and 512GB of SSD' )
GO
