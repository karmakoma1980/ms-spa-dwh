USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[ProdOrder_Item_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdOrder_Item_ETL](
	[AFPO_SYSID] [varchar](max) NULL,
	[AFPO_MANDT] [varchar](max) NULL,
	[AFPO_AUFNR] [varchar](max) NULL,
	[AFPO_POSNR] [varchar](max) NULL,
	[AFPO_SOBES] [varchar](max) NULL,
	[AFPO_PROJN] [varchar](max) NULL,
	[AFPO_KDAUF] [varchar](max) NULL,
	[AFPO_KDPOS] [varchar](max) NULL,
	[AFPO_PSAMG] [varchar](max) NULL,
	[AFPO_PSMNG] [varchar](max) NULL,
	[AFPO_WEMNG] [varchar](max) NULL,
	[AFPO_IAMNG] [varchar](max) NULL,
	[AFPO_MEINS] [varchar](max) NULL,
	[AFPO_MATNR] [varchar](max) NULL,
	[AFPO_LTRMI] [varchar](max) NULL,
	[AFPO_DWERK] [varchar](max) NULL,
	[AFPO_DAUTY] [varchar](max) NULL,
	[AFPO_DAUAT] [varchar](max) NULL,
	[AFPO_DGLTP] [varchar](max) NULL,
	[AFPO_DGLTS] [varchar](max) NULL,
	[AFPO_SERNP] [varchar](max) NULL,
	[AFPO_XLOEK] [varchar](max) NULL,
	[AFPO_ERDATE] [varchar](max) NULL,
	[AFPO_UDATE] [varchar](max) NULL,
	[AFPO_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_ProdOrder_item_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProdOrder_Item_ETL] ADD  CONSTRAINT [DF__prodOrder_Item_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[ProdOrder_Item_ETL] ADD  CONSTRAINT [DF__prodOrder_Item_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
