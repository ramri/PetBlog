USE [BlogDB]
GO

/****** Object:  Table [dbo].[Users]    Script Date: 2013.08.10. 12:45:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
-- Check if the table already exists
IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Articles'))
	BEGIN
		PRINT 'ERROR: Articles already exists'
	END
ELSE
	BEGIN

		CREATE TABLE [dbo].[Users]
		(
			 [ID]	INT				IDENTITY(1,1)	NOT NULL
			,[Name]	NVARCHAR(50)					NOT NULL
			,CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
			(
				[ID] ASC
			)
			WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) 
		ON [PRIMARY]
	END
GO


