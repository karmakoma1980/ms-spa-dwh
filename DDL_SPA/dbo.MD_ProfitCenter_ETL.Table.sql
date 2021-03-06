USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_ProfitCenter_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_ProfitCenter_ETL](
	[CEPC_SYSID] [varchar](max) NULL,
	[CEPC_MANDT] [varchar](max) NULL,
	[CEPC_KOKRS] [varchar](max) NULL,
	[CEPC_PRCTR] [varchar](max) NULL,
	[CEPC_SPRAS] [varchar](max) NULL,
	[CEPC_KTEXT] [varchar](max) NULL,
	[CEPC_LTEXT] [varchar](max) NULL,
	[CEPC_VERAK] [varchar](max) NULL,
	[CEPC_ABTEI] [varchar](max) NULL,
	[CEPC_STATUS] [varchar](max) NULL,
	[CEPC_KHINR] [varchar](max) NULL,
	[CEPC_HITXT] [varchar](max) NULL,
	[CEPC_DATAB] [varchar](max) NULL,
	[CEPC_DATBI] [varchar](max) NULL,
	[CEPC_ERSDA] [varchar](max) NULL,
	[CEPC_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
	[CEPC_CarveOut] [varchar](max) NULL,
	[CEPC_DepartmentHarmonised] [varchar](max) NULL,
	[CEPC_ManagementUnit] [varchar](max) NULL,
 CONSTRAINT [PK_MD_profitCenter_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_ProfitCenter_ETL] ADD  CONSTRAINT [DF__MD_profitCenter_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[MD_ProfitCenter_ETL] ADD  CONSTRAINT [DF__MD_profitCenter_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
