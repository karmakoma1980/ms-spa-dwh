USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_CostCenter_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_CostCenter_ETL](
	[CSKS_SYSID] [varchar](max) NULL,
	[CSKS_MANDT] [varchar](max) NULL,
	[CSKS_KOKRS] [varchar](max) NULL,
	[CSKS_KOSTL] [varchar](max) NULL,
	[CSKS_SPRAS] [varchar](max) NULL,
	[CSKS_KTEXT] [varchar](max) NULL,
	[CSKS_LTEXT] [varchar](max) NULL,
	[CSKS_VERAK] [varchar](max) NULL,
	[CSKS_ABTEI] [varchar](max) NULL,
	[CSKS_RECID] [varchar](max) NULL,
	[CSKS_KHINR] [varchar](max) NULL,
	[CSKS_FUNC_AREA] [varchar](max) NULL,
	[CSKS_PRCTR] [varchar](max) NULL,
	[CSKS_DATAB] [varchar](max) NULL,
	[CSKS_DATBI] [varchar](max) NULL,
	[CSKS_ERSDA] [varchar](max) NULL,
	[CSKS_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_MD_costCenter_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_CostCenter_ETL] ADD  CONSTRAINT [DF__MD_costCenter_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[MD_CostCenter_ETL] ADD  CONSTRAINT [DF__MD_costCenter_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
