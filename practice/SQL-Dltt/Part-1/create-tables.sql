CREATE TABLE User_A (
	[Login] nvarchar(32) PRIMARY KEY CLUSTERED NOT NULL,
	[Name] nvarchar(128) NOT NULL,
	[Lastlogin] datetime2(7) NULL,
);

CREATE TABLE User_B (
	[Login_ID] nvarchar(64) PRIMARY KEY CLUSTERED NOT NULL,
	[Full_name] nvarchar(96) NOT NULL,
	[LoginDate] datetime NULL,
);