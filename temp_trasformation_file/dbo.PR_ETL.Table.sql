USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[PR_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR_ETL](
	[EBAN_SYSID] [varchar](max) NULL,
	[EBAN_MANDT] [varchar](max) NULL,
	[EBAN_BANFN] [varchar](max) NULL,
	[EBAN_BNFPO] [varchar](max) NULL,
	[EBAN_BSART] [varchar](max) NULL,
	[EBAN_PSTYP] [varchar](max) NULL,
	[EBAN_LOEKZ] [varchar](max) NULL,
	[EBAN_WERKS] [varchar](max) NULL,
	[EBAN_BADAT] [varchar](max) NULL,
	[EBAN_FRGDT] [varchar](max) NULL,
	[EBAN_MENGE] [varchar](max) NULL,
	[EBAN_MEINS] [varchar](max) NULL,
	[EBAN_PREIS] [varchar](max) NULL,
	[EBAN_AMOUNT] [varchar](max) NULL,
	[EBAN_RLWRT] [varchar](max) NULL,
	[EBAN_WAERS] [varchar](max) NULL,
	[EBAN_RATE] [varchar](max) NULL,
	[EBAN_EURAMOUNT] [varchar](max) NULL,
	[EBAN_TXZ01] [varchar](max) NULL,
	[EBAN_MATKL] [varchar](max) NULL,
	[EBAN_MATNR] [varchar](max) NULL,
	[EBAN_REVLV] [varchar](max) NULL,
	[EBAN_KONNR] [varchar](max) NULL,
	[EBAN_KTPNR] [varchar](max) NULL,
	[EBAN_LIFNR] [varchar](max) NULL,
	[EBAN_FLIEF] [varchar](max) NULL,
	[EBAN_POSID] [varchar](max) NULL,
	[EBAN_ZZBKZ] [varchar](max) NULL,
	[EBAN_PRCTR] [varchar](max) NULL,
	[EBAN_AFNAM] [varchar](max) NULL,
	[EBAN_ESTKZ] [varchar](max) NULL,
	[EBAN_STATU] [varchar](max) NULL,
	[EBAN_DISPO] [varchar](max) NULL,
	[EBAN_FRGKZ] [varchar](max) NULL,
	[EBAN_FRGZU] [varchar](max) NULL,
	[EBAN_FRGST] [varchar](max) NULL,
	[EBAN_KNTTP] [varchar](max) NULL,
	[EBAN_EKORG] [varchar](max) NULL,
	[EBAN_EKGRP] [varchar](max) NULL,
	[EBAN_ERNAM] [varchar](max) NULL,
	[EBAN_ERUSERNAME] [varchar](max) NULL,
	[EBAN_ERDAT] [varchar](max) NULL,
	[EBAN_DATUM] [varchar](max) NULL,
	[EBAN_PEINH] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_pr_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PR_ETL] ADD  CONSTRAINT [DF__pr_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[PR_ETL] ADD  CONSTRAINT [DF__pr_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
