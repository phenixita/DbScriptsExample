 
CREATE TABLE [dbo].[WorkItem](
	[WorkItemId] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[WorkItemType] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[LastChangedOn] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[AssignmentId] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Latitude] [decimal](30, 14) NULL,
	[Longitude] [decimal](30, 14) NULL,
	[WorkItemPriority] [int] NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_WorkItem] PRIMARY KEY CLUSTERED 
(
	[WorkItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[WorkItem] ADD  CONSTRAINT [DF_WorkItem_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO

ALTER TABLE [dbo].[WorkItem] ADD  CONSTRAINT [DF_WorkItem_LastChangedOn]  DEFAULT (getdate()) FOR [LastChangedOn]
GO


