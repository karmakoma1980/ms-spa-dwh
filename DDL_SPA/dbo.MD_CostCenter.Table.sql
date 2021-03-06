USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_CostCenter]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_CostCenter](
	[CSKS_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[CSKS_UID] [uniqueidentifier] NULL,
	[HASH_COST_CENTER_UNIQUE] [binary](16) NULL,
	[HASH_COST_CENTER] [binary](16) NULL,
	[CSKS_SYSID] [nvarchar](255) NULL,
	[CSKS_MANDT] [nvarchar](255) NULL,
	[CSKS_KOKRS] [nvarchar](255) NULL,
	[CSKS_KOSTL] [nvarchar](255) NULL,
	[CSKS_SPRAS] [nvarchar](255) NULL,
	[CSKS_KTEXT] [nvarchar](255) NULL,
	[CSKS_LTEXT] [nvarchar](255) NULL,
	[CSKS_VERAK] [nvarchar](255) NULL,
	[CSKS_ABTEI] [nvarchar](255) NULL,
	[CSKS_RECID] [nvarchar](255) NULL,
	[CSKS_KHINR] [nvarchar](255) NULL,
	[CSKS_FUNC_AREA] [nvarchar](255) NULL,
	[CSKS_PRCTR] [nvarchar](255) NULL,
	[CSKS_DATAB] [datetime2](7) NULL,
	[CSKS_DATBI] [datetime2](7) NULL,
	[CSKS_ERSDA] [datetime2](7) NULL,
	[CSKS_UDATE] [datetime2](7) NULL,
	[CSKS_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
	[CSKS_ManagementUnit] [nvarchar](255) NULL,
	[CSKS_DepartmentHarmonised] [nvarchar](255) NULL,
	[CSKS_CarveOut] [nvarchar](255) NULL,
 CONSTRAINT [PK_MD_CostCenter] PRIMARY KEY CLUSTERED 
(
	[CSKS_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_CostCenter] ADD  CONSTRAINT [DF__MD_CostCe__SSMA___5070F446]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
