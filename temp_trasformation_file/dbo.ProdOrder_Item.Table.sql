USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[ProdOrder_Item]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdOrder_Item](
	[AFPO_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[AFPO_UID] [uniqueidentifier] NULL,
	[HASH_PRODORDER_ITEM] [binary](16) NULL,
	[HASH_PRODORDER_HEADER] [binary](16) NULL,
	[HASH_SALESORDER_ITEM] [binary](16) NULL,
	[AFPO_SYSID] [nvarchar](255) NULL,
	[AFPO_MANDT] [nvarchar](255) NULL,
	[AFPO_AUFNR] [nvarchar](255) NULL,
	[AFPO_POSNR] [nvarchar](255) NULL,
	[AFPO_SOBES] [nvarchar](255) NULL,
	[AFPO_PROJN] [nvarchar](255) NULL,
	[AFPO_KDAUF] [nvarchar](255) NULL,
	[AFPO_KDPOS] [nvarchar](255) NULL,
	[AFPO_PSAMG] [decimal](18, 3) NULL,
	[AFPO_PSMNG] [decimal](18, 3) NULL,
	[AFPO_WEMNG] [decimal](18, 3) NULL,
	[AFPO_IAMNG] [decimal](18, 3) NULL,
	[AFPO_MEINS] [nvarchar](255) NULL,
	[AFPO_MATNR] [nvarchar](255) NULL,
	[AFPO_LTRMI] [datetime2](7) NULL,
	[AFPO_DWERK] [nvarchar](255) NULL,
	[AFPO_DAUTY] [nvarchar](255) NULL,
	[AFPO_DAUAT] [nvarchar](255) NULL,
	[AFPO_DGLTP] [datetime2](7) NULL,
	[AFPO_DGLTS] [datetime2](7) NULL,
	[AFPO_SERNP] [nvarchar](255) NULL,
	[AFPO_XLOEK] [nvarchar](255) NULL,
	[AFPO_ERDATE] [datetime2](7) NULL,
	[AFPO_UDATE] [datetime2](7) NULL,
	[AFPO_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_ProdOrder_Item] PRIMARY KEY CLUSTERED 
(
	[AFPO_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProdOrder_Item] ADD  CONSTRAINT [DF__ProdOrder__SSMA___3E1D39E1]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
