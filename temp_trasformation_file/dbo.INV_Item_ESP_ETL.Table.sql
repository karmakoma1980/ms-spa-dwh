USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[INV_Item_ESP_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INV_Item_ESP_ETL](
	[BSEG_SYSID] [varchar](max) NULL,
	[BSEG_MANDT] [varchar](max) NULL,
	[BSEG_GJAHR] [varchar](max) NULL,
	[BSEG_BELNR] [varchar](max) NULL,
	[BSEG_BUZEI] [varchar](max) NULL,
	[BSEG_BUZID] [varchar](max) NULL,
	[BSEG_BUKRS] [varchar](max) NULL,
	[BSEG_MENGE] [varchar](max) NULL,
	[BSEG_MEINS] [varchar](max) NULL,
	[BSEG_WRBTR] [varchar](max) NULL,
	[BSEG_DMBTR] [varchar](max) NULL,
	[BSEG_AMOUNTEUR] [varchar](max) NULL,
	[BSEG_LONGTEXT] [varchar](max) NULL,
	[BSEG_SGTXT] [varchar](max) NULL,
	[BSEG_MATNR] [varchar](max) NULL,
	[BSEG_LIFNR] [varchar](max) NULL,
	[BSEG_HKONT] [varchar](max) NULL,
	[BSEG_SAKNR] [varchar](max) NULL,
	[BSEG_WERKS] [varchar](max) NULL,
	[BSEG_KOSTL] [varchar](max) NULL,
	[BSEG_VERTN] [varchar](max) NULL,
	[BSEG_EBELN] [varchar](max) NULL,
	[BSEG_EBELP] [varchar](max) NULL,
	[BSEG_ZEKKN] [varchar](max) NULL,
	[BSEG_AUGDT] [varchar](max) NULL,
	[BSEG_ZUONR] [varchar](max) NULL,
	[BSEG_ZTERM] [varchar](max) NULL,
	[BSEG_BSCHL] [varchar](max) NULL,
	[BSEG_KOART] [varchar](max) NULL,
	[BSEG_SHKZG] [varchar](max) NULL,
	[BSEG_MWSKZ] [varchar](max) NULL,
	[BSEG_MWART] [varchar](max) NULL,
	[BSEG_KTOSL] [varchar](max) NULL,
	[BSEG_BEWAR] [varchar](max) NULL,
	[BSEG_XUMSW] [varchar](max) NULL,
	[BSEG_POSID] [varchar](max) NULL,
	[BSEG_NPLNR] [varchar](max) NULL,
	[BSEG_ZZBKZ] [varchar](max) NULL,
	[BSEG_PRCTR] [varchar](max) NULL,
	[BSEG_AUFNR] [varchar](max) NULL,
	[BSEG_VBEL2] [varchar](max) NULL,
	[BSEG_POSN2] [varchar](max) NULL,
	[BSEG_AUGGJ] [varchar](max) NULL,
	[BSEG_AUGBL] [varchar](max) NULL,
	[BSEG_AGZEI] [varchar](max) NULL,
	[BSEG_KOKRS] [varchar](max) NULL,
	[BSEG_PROJK] [varchar](max) NULL,
	[BSEG_ERUSERNAME] [varchar](max) NULL,
	[BSEG_ERDATE] [varchar](max) NULL,
	[BSEG_AEUSERNAME] [varchar](max) NULL,
	[BSEG_UDATE] [varchar](max) NULL,
	[BSEG_DATUM] [varchar](max) NULL,
	[HASH_INV_HEADER_UNIQUE] [binary](16) NULL,
	[HASH_INV_HEADER] [binary](16) NULL,
	[HASH_INV_ITEM_UNIQUE] [binary](16) NULL,
	[HASH_INV_ITEM] [binary](16) NULL,
	[HASH_PO_ITEM] [binary](16) NULL,
	[HASH_SUPPLIER_LFA1] [binary](16) NULL,
	[HASH_SUPPLIER_LFB1] [binary](16) NULL,
	[HASH_MD_ACCOUNT] [binary](16) NULL,
	[HASH_INV_FINANCE] [binary](16) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_INV_Item_ESP_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[INV_Item_ESP_ETL] ADD  CONSTRAINT [DF__INV_Item_ESP_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[INV_Item_ESP_ETL] ADD  CONSTRAINT [DF__INV_Item_ESP_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
