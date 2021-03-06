USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[CFT_Header]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CFT_Header](
	[EKKOA_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[EKKOA_UID] [uniqueidentifier] NULL,
	[HASH_PO_HEADER] [binary](16) NULL,
	[HASH_MD_PGROUP] [binary](16) NULL,
	[HASH_SUPPLIER_LFA1] [binary](16) NULL,
	[HASH_SUPPLIER_LFB1] [binary](16) NULL,
	[HASH_SUPPLIER_LFM1] [binary](16) NULL,
	[EKKOA_SYSID] [nvarchar](max) NULL,
	[EKKOA_MANDT] [nvarchar](max) NULL,
	[EKKOA_BUKRS] [nvarchar](max) NULL,
	[EKKOA_EBELN] [nvarchar](max) NULL,
	[EKKOA_LOEKZ] [nvarchar](max) NULL,
	[EKKOA_AEDAT] [datetime2](7) NULL,
	[EKKOA_BEDAT] [datetime2](7) NULL,
	[EKKOA_WAERS] [nvarchar](max) NULL,
	[EKKOA_WKURS] [decimal](18, 5) NULL,
	[EKKOA_KUFIX] [nvarchar](max) NULL,
	[EKKOA_CWAERS] [nvarchar](max) NULL,
	[EKKOA_LONGTEXT] [nvarchar](max) NULL,
	[EKKOA_LIFNR] [nvarchar](max) NULL,
	[EKKOA_BSTYP] [nvarchar](max) NULL,
	[EKKOA_BSART] [nvarchar](max) NULL,
	[EKKOA_INCO1] [nvarchar](max) NULL,
	[EKKOA_INCO2] [nvarchar](max) NULL,
	[EKKOA_ZTERM] [nvarchar](max) NULL,
	[EKKOA_EKORG] [nvarchar](max) NULL,
	[EKKOA_EKGRP] [nvarchar](max) NULL,
	[EKKOA_IHREZ] [nvarchar](max) NULL,
	[EKKOA_UNSEZ] [nvarchar](max) NULL,
	[EKKOA_KDATB] [datetime2](7) NULL,
	[EKKOA_KDATE] [datetime2](7) NULL,
	[EKKOA_KONNR] [nvarchar](max) NULL,
	[EKKOA_ANGNR] [nvarchar](max) NULL,
	[EKKOA_IHRAN] [datetime2](7) NULL,
	[EKKOA_SUBMI] [nvarchar](max) NULL,
	[EKKOA_STCEG] [nvarchar](max) NULL,
	[EKKOA_EKGSM] [nvarchar](max) NULL,
	[EKKOA_UEBDT] [datetime2](7) NULL,
	[EKKOA_ERNAM] [nvarchar](max) NULL,
	[EKKOA_AEUSERNAME] [nvarchar](max) NULL,
	[EKKOA_UDATE] [datetime2](7) NULL,
	[EKKOA_DATUM] [datetime2](7) NULL,
	[SSMA_TS] [datetime2](7) NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_CFT_Header] PRIMARY KEY CLUSTERED 
(
	[EKKOA_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[CFT_Header] ADD  CONSTRAINT [DF__CFT_Heade__SSMA___09A971A2]  DEFAULT (getdate()) FOR [SSMA_TS]
GO
