USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[INV_Item]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INV_Item](
	[HASH_INV_HEADER_UNIQUE] [binary](16) NULL,
	[HASH_INV_HEADER] [binary](16) NULL,
	[HASH_INV_ITEM_UNIQUE] [binary](16) NULL,
	[HASH_INV_ITEM] [binary](16) NULL,
	[HASH_PO_ITEM] [binary](16) NULL,
	[HASH_SUPPLIER_LFA1] [binary](16) NULL,
	[HASH_SUPPLIER_LFB1] [binary](16) NULL,
	[HASH_MD_ACCOUNT] [binary](16) NULL,
	[HASH_INV_FINANCE] [binary](16) NULL,
	[BSEG_SYSID] [nvarchar](255) NULL,
	[BSEG_MANDT] [nvarchar](255) NULL,
	[BSEG_GJAHR] [nvarchar](255) NULL,
	[BSEG_BELNR] [nvarchar](255) NULL,
	[BSEG_BUZEI] [nvarchar](255) NULL,
	[BSEG_BUZID] [nvarchar](255) NULL,
	[BSEG_BUKRS] [nvarchar](255) NULL,
	[BSEG_MENGE] [decimal](18, 3) NULL,
	[BSEG_MEINS] [nvarchar](255) NULL,
	[BSEG_WRBTR] [decimal](18, 2) NULL,
	[BSEG_DMBTR] [decimal](18, 2) NULL,
	[BSEG_AMOUNTEUR] [decimal](18, 2) NULL,
	[BSEG_LONGTEXT] [nvarchar](max) NULL,
	[BSEG_SGTXT] [nvarchar](255) NULL,
	[BSEG_MATNR] [nvarchar](255) NULL,
	[BSEG_LIFNR] [nvarchar](255) NULL,
	[BSEG_HKONT] [nvarchar](255) NULL,
	[BSEG_SAKNR] [nvarchar](255) NULL,
	[BSEG_WERKS] [nvarchar](255) NULL,
	[BSEG_KOSTL] [nvarchar](255) NULL,
	[BSEG_VERTN] [nvarchar](255) NULL,
	[BSEG_EBELN] [nvarchar](255) NULL,
	[BSEG_EBELP] [nvarchar](255) NULL,
	[BSEG_ZEKKN] [nvarchar](255) NULL,
	[BSEG_AUGDT] [datetime2](7) NULL,
	[BSEG_ZUONR] [nvarchar](255) NULL,
	[BSEG_ZTERM] [nvarchar](255) NULL,
	[BSEG_BSCHL] [nvarchar](255) NULL,
	[BSEG_KOART] [nvarchar](255) NULL,
	[BSEG_SHKZG] [nvarchar](255) NULL,
	[BSEG_MWSKZ] [nvarchar](255) NULL,
	[BSEG_MWART] [nvarchar](255) NULL,
	[BSEG_KTOSL] [nvarchar](255) NULL,
	[BSEG_BEWAR] [nvarchar](255) NULL,
	[BSEG_XUMSW] [nvarchar](255) NULL,
	[BSEG_POSID] [nvarchar](255) NULL,
	[BSEG_NPLNR] [nvarchar](255) NULL,
	[BSEG_ZZBKZ] [nvarchar](255) NULL,
	[BSEG_PRCTR] [nvarchar](255) NULL,
	[BSEG_AUFNR] [nvarchar](255) NULL,
	[BSEG_VBEL2] [nvarchar](255) NULL,
	[BSEG_POSN2] [nvarchar](255) NULL,
	[BSEG_AUGGJ] [nvarchar](255) NULL,
	[BSEG_AUGBL] [nvarchar](255) NULL,
	[BSEG_AGZEI] [decimal](18, 2) NULL,
	[BSEG_ERUSERNAME] [nvarchar](255) NULL,
	[BSEG_UDATE] [datetime2](7) NULL,
	[BSEG_AEUSERNAME] [nvarchar](255) NULL,
	[BSEG_UDATE_2] [datetime2](7) NULL,
	[BSEG_DATUM] [datetime2](7) NULL,
	[BSEG_BUDAT] [datetime2](7) NULL,
	[BSEG_PROJK] [nvarchar](255) NULL,
	[BSEG_ERDATE] [datetime2](7) NULL,
	[BSEG_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[BSEG_UID] [uniqueidentifier] NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_INV_Item] PRIMARY KEY CLUSTERED 
(
	[BSEG_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[INV_Item] ADD  CONSTRAINT [DF__INV_Item__SSMA_T__38996AB5]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
