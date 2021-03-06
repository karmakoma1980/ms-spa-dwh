USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[PO_Header]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO_Header](
	[EKKO_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[EKKO_UID] [uniqueidentifier] NULL,
	[HASH_PO_HEADER] [binary](16) NULL,
	[HASH_MD_PGROUP] [binary](16) NULL,
	[HASH_SUPPLIER_LFA1] [binary](16) NULL,
	[HASH_SUPPLIER_LFB1] [binary](16) NULL,
	[HASH_SUPPLIER_LFM1] [binary](16) NULL,
	[EKKO_SYSID] [nvarchar](255) NULL,
	[EKKO_MANDT] [nvarchar](255) NULL,
	[EKKO_BUKRS] [nvarchar](255) NULL,
	[EKKO_EBELN] [nvarchar](255) NULL,
	[EKKO_LOEKZ] [nvarchar](255) NULL,
	[EKKO_AEDAT] [datetime2](7) NULL,
	[EKKO_BEDAT] [datetime2](7) NULL,
	[EKKO_WAERS] [nvarchar](255) NULL,
	[EKKO_WKURS] [decimal](18, 5) NULL,
	[EKKO_KUFIX] [nvarchar](255) NULL,
	[EKKO_CWAERS] [nvarchar](255) NULL,
	[EKKO_LONGTEXT] [text] NULL,
	[EKKO_LIFNR] [nvarchar](255) NULL,
	[EKKO_BSTYP] [nvarchar](255) NULL,
	[EKKO_BSART] [nvarchar](255) NULL,
	[EKKO_INCO1] [nvarchar](255) NULL,
	[EKKO_INCO2] [nvarchar](255) NULL,
	[EKKO_ZTERM] [nvarchar](255) NULL,
	[EKKO_EKORG] [nvarchar](255) NULL,
	[EKKO_EKGRP] [nvarchar](255) NULL,
	[EKKO_IHREZ] [nvarchar](255) NULL,
	[EKKO_UNSEZ] [nvarchar](255) NULL,
	[EKKO_KDATB] [datetime2](7) NULL,
	[EKKO_KDATE] [datetime2](7) NULL,
	[EKKO_KONNR] [nvarchar](255) NULL,
	[EKKO_ANGNR] [nvarchar](255) NULL,
	[EKKO_IHRAN] [datetime2](7) NULL,
	[EKKO_SUBMI] [nvarchar](255) NULL,
	[EKKO_STCEG] [nvarchar](255) NULL,
	[EKKO_EKGSM] [nvarchar](255) NULL,
	[EKKO_UEBDT] [datetime2](7) NULL,
	[EKKO_ERNAM] [nvarchar](255) NULL,
	[EKKO_AEUSERNAME] [nvarchar](255) NULL,
	[EKKO_UDATE] [datetime2](7) NULL,
	[EKKO_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_PO_Header] PRIMARY KEY CLUSTERED 
(
	[EKKO_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PO_Header] ADD  CONSTRAINT [DF__PO_Header__SSMA___1CBC4616]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
