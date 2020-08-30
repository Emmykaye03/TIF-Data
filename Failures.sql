CREATE TABLE [dbo].[Failures]
(
	 [FailID]      INT           IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (50) NULL,
    [Description]      NVARCHAR (50) NULL,
    [Date] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([FailID] ASC)
)