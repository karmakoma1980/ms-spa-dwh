USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[PR]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR](
	[EBAN_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[EBAN_UID] [uniqueidentifier] NULL,
	[HASH_PR] [binary](16) NULL,
	[HASH_MD_PGROUP] [binary](16) NULL,
	[HASH_SUPPLIER_LFA1] [binary](16) NULL,
	[HASH_SUPPLIER_LFM1] [binary](16) NULL,
	[HASH_PRJ] [binary](16) NULL,
	[EBAN_SYSID] [nvarchar](255) NULL,
	[EBAN_MANDT] [nvarchar](255) NULL,
	[EBAN_BANFN] [nvarchar](255) NULL,
	[EBAN_BNFPO] [nvarchar](255) NULL,
	[EBAN_BSART] [nvarchar](255) NULL,
	[EBAN_PSTYP] [nvarchar](255) NULL,
	[EBAN_LOEKZ] [nvarchar](255) NULL,
	[EBAN_WERKS] [nvarchar](255) NULL,
	[EBAN_BADAT] [datetime2](7) NULL,
	[EBAN_FRGDT] [datetime2](7) NULL,
	[EBAN_MENGE] [decimal](18, 3) NULL,
	[EBAN_MEINS] [nvarchar](255) NULL,
	[EBAN_PREIS] [decimal](18, 2) NULL,
	[EBAN_AMOUNT] [decimal](18, 2) NULL,
	[EBAN_RLWRT] [decimal](18, 2) NULL,
	[EBAN_WAERS] [nvarchar](255) NULL,
	[EBAN_RATE] [decimal](18, 5) NULL,
	[EBAN_EURAMOUNT] [decimal](18, 2) NULL,
	[EBAN_TXZ01] [nvarchar](255) NULL,
	[EBAN_MATKL] [nvarchar](255) NULL,
	[EBAN_MATNR] [nvarchar](255) NULL,
	[EBAN_REVLV] [nvarchar](255) NULL,
	[EBAN_KONNR] [nvarchar](255) NULL,
	[EBAN_KTPNR] [nvarchar](255) NULL,
	[EBAN_LIFNR] [nvarchar](255) NULL,
	[EBAN_FLIEF] [nvarchar](255) NULL,
	[EBAN_POSID] [nvarchar](255) NULL,
	[EBAN_ZZBKZ] [nvarchar](255) NULL,
	[EBAN_PRCTR] [nvarchar](255) NULL,
	[EBAN_AFNAM] [nvarchar](255) NULL,
	[EBAN_ESTKZ] [nvarchar](255) NULL,
	[EBAN_STATU] [nvarchar](255) NULL,
	[EBAN_DISPO] [nvarchar](255) NULL,
	[EBAN_FRGKZ] [nvarchar](255) NULL,
	[EBAN_FRGZU] [nvarchar](255) NULL,
	[EBAN_FRGST] [nvarchar](255) NULL,
	[EBAN_KNTTP] [nvarchar](255) NULL,
	[EBAN_EKORG] [nvarchar](255) NULL,
	[EBAN_EKGRP] [nvarchar](255) NULL,
	[EBAN_ERNAM] [nvarchar](255) NULL,
	[EBAN_ERUSERNAME] [nvarchar](255) NULL,
	[EBAN_ERDAT] [datetime2](7) NULL,
	[EBAN_DATUM] [datetime2](7) NULL,
	[EBAN_PEINH] [decimal](18, 2) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_PR] PRIMARY KEY CLUSTERED 
(
	[EBAN_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PR] ADD  CONSTRAINT [DF__PR__SSMA_TimeSta__2FCF1A8A]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
