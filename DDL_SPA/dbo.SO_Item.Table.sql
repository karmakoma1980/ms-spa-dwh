USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[SO_Item]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SO_Item](
	[VBAP_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[VBAP_UID] [uniqueidentifier] NULL,
	[HASH_SALESORDER_ITEM] [binary](16) NULL,
	[HASH_SALESORDER_HEADER] [binary](16) NULL,
	[HASH_PRJ_ORDER] [binary](16) NULL,
	[VBAP_SYSID] [nvarchar](255) NULL,
	[VBAP_MANDT] [nvarchar](255) NULL,
	[VBAP_VBELN] [nvarchar](255) NULL,
	[VBAP_POSNR] [nvarchar](255) NULL,
	[VBAP_MATKL] [nvarchar](255) NULL,
	[VBAP_PSTYV] [nvarchar](255) NULL,
	[VBAP_POSAR] [nvarchar](255) NULL,
	[VBAP_ABGRU] [nvarchar](255) NULL,
	[VBAP_KLMENG] [decimal](18, 3) NULL,
	[VBAP_MEINS] [nvarchar](255) NULL,
	[VBAP_NETWR] [decimal](18, 2) NULL,
	[VBAP_WAERK] [nvarchar](255) NULL,
	[VBAP_WERKS] [nvarchar](255) NULL,
	[VBAP_AWAHR] [nvarchar](255) NULL,
	[VBAP_ERDAT] [datetime2](7) NULL,
	[VBAP_ERNAM] [nvarchar](255) NULL,
	[VBAP_AEDAT] [datetime2](7) NULL,
	[VBAP_PRCTR] [nvarchar](255) NULL,
	[VBAP_PS_PSP_PNR] [nvarchar](255) NULL,
	[VBAP_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_SO_Item] PRIMARY KEY CLUSTERED 
(
	[VBAP_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SO_Item] ADD  CONSTRAINT [DF__SO_Item__SSMA_Ti__65370702]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
