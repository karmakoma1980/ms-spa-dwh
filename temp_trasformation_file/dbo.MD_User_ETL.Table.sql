USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_User_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_User_ETL](
	[USR03_SYSID] [varchar](max) NULL,
	[USR03_MANDT] [varchar](max) NULL,
	[USR03_BNAME] [varchar](max) NULL,
	[USR03_NAME1] [varchar](max) NULL,
	[USR03_NAME2] [varchar](max) NULL,
	[USR03_NAME_TEXT] [varchar](max) NULL,
	[USR03_ABTLG] [varchar](max) NULL,
	[USR03_DEPARTMENT] [varchar](max) NULL,
	[USR03_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
	[USR03_DepartmentHarmonised] [varchar](max) NULL,
	[USR03_UserGroup] [varchar](max) NULL,
 CONSTRAINT [PK_MD_User_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_User_ETL] ADD  CONSTRAINT [DF__MD_user_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[MD_User_ETL] ADD  CONSTRAINT [DF_MD_user_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
