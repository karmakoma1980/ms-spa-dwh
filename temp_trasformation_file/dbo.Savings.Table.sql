USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[Savings]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Savings](
	[SAV_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[SAV_UID] [uniqueidentifier] NULL,
	[HASH_SAVINGS] [binary](16) NULL,
	[SAV_SYSID] [nvarchar](255) NULL,
	[SAV_MANDT] [nvarchar](255) NULL,
	[SAV_BUKRS] [nvarchar](255) NULL,
	[SAV_WERKS] [nvarchar](255) NULL,
	[SAV_PFUID] [nvarchar](255) NULL,
	[SAV_CREA_DATE] [datetime2](7) NULL,
	[SAV_CREA_TIME] [nvarchar](255) NULL,
	[SAV_PFU_CREATOR] [nvarchar](255) NULL,
	[SAV_UPDA_DATE] [datetime2](7) NULL,
	[SAV_UPDA_TIME] [nvarchar](255) NULL,
	[SAV_PFU_MODIFIER] [nvarchar](255) NULL,
	[SAV_STATUS] [nvarchar](255) NULL,
	[SAV_TITLE] [nvarchar](255) NULL,
	[SAV_BGID] [nvarchar](255) NULL,
	[SAV_BGNAME] [nvarchar](255) NULL,
	[SAV_BUSINESS_ADMIN] [nvarchar](255) NULL,
	[SAV_SC1] [nvarchar](255) NULL,
	[SAV_SC2] [nvarchar](255) NULL,
	[SAV_SC3] [nvarchar](255) NULL,
	[SAV_SC1_DESC] [nvarchar](255) NULL,
	[SAV_SC2_DESC] [nvarchar](255) NULL,
	[SAV_SC3_DESC] [nvarchar](255) NULL,
	[SAV_COMM_CODE] [nvarchar](255) NULL,
	[SAV_SUPPLIER_ID] [nvarchar](255) NULL,
	[SAV_SUPPLIER_NAME] [nvarchar](255) NULL,
	[SAV_PROJECT_ID] [nvarchar](255) NULL,
	[SAV_PROJECT_NAME] [nvarchar](255) NULL,
	[SAV_CLASS] [nvarchar](255) NULL,
	[SAV_BU] [nvarchar](255) NULL,
	[SAV_LOB] [nvarchar](255) NULL,
	[SAV_YEAR] [nvarchar](255) NULL,
	[SAV_BUDGET_PLANNED] [decimal](18, 2) NULL,
	[SAV_TARGET_PLANNED] [decimal](18, 2) NULL,
	[SAV_FINAL_CONTRACT] [decimal](18, 2) NULL,
	[SAV_SAVINGS_SECURED] [decimal](18, 2) NULL,
	[SAV_NRC] [decimal](18, 2) NULL,
	[SAV_NET_SAVINGS_SEC] [decimal](18, 2) NULL,
	[SAV_NET_SAVINGS_ACT] [decimal](18, 2) NULL,
	[SAV_COST_TO_MARKET] [decimal](18, 2) NULL,
	[SAV_PROFIT_IMPACT] [decimal](18, 2) NULL,
	[SAV_PROJECT_MANAGER] [nvarchar](255) NULL,
	[SAV_SUB_PROJECT_ID] [nvarchar](255) NULL,
	[SAV_SUB_PROJECT_NAME] [nvarchar](255) NULL,
	[SAV_REFERENCE] [nvarchar](255) NULL,
	[SAV_SEARCH_ITEM] [nvarchar](255) NULL,
	[SAV_POID] [nvarchar](255) NULL,
	[SAV_EXTRACT_DATE] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_Savings] PRIMARY KEY CLUSTERED 
(
	[SAV_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Savings] ADD  CONSTRAINT [DF__Savings__SSMA_Ti__5BAD9CC8]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
