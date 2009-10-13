use [gorilla]
GO

PRINT 'Creating table FOO'
CREATE TABLE [dbo].[Foo](
	[ID] [bigint] IDENTITY (1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Age]  [int] NOT NULL,	        
	[Version] [bigint] DEFAULT 1 NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Foo] WITH NOCHECK ADD
	CONSTRAINT [PK_FOO] PRIMARY KEY CLUSTERED
	(
		[ID]
	) ON [PRIMARY]
GO
