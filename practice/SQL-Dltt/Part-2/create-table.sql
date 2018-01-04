CREATE TABLE Workers (
	[Login] nvarchar(32) PRIMARY KEY CLUSTERED NOT NULL,
	[Name] nvarchar(128) NOT NULL,
	[ManagerLogin] nvarchar(32) NULL,
);