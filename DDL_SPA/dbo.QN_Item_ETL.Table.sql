USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[QN_Item_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QN_Item_ETL](
	[QMFE_SYSID] [varchar](max) NULL,
	[QMFE_MANDT] [varchar](max) NULL,
	[QMFE_QMNUM] [varchar](max) NULL,
	[QMFE_FENUM] [varchar](max) NULL,
	[QMFE_AEDAT] [varchar](max) NULL,
	[QMFE_AENAM] [varchar](max) NULL,
	[QMFE_AEZEIT] [varchar](max) NULL,
	[QMFE_ANZFEHLER] [varchar](max) NULL,
	[QMFE_ARBPL] [varchar](max) NULL,
	[QMFE_ARBPLWERK] [varchar](max) NULL,
	[QMFE_AUTKZ] [varchar](max) NULL,
	[QMFE_BAUTL] [varchar](max) NULL,
	[QMFE_CROBJTY] [varchar](max) NULL,
	[QMFE_EBORT] [varchar](max) NULL,
	[QMFE_EKORG] [varchar](max) NULL,
	[QMFE_EQUNR] [varchar](max) NULL,
	[QMFE_ERDAT] [varchar](max) NULL,
	[QMFE_ERNAM] [varchar](max) NULL,
	[QMFE_ERZEIT] [varchar](max) NULL,
	[QMFE_FCOAUFNR] [varchar](max) NULL,
	[QMFE_FEART] [varchar](max) NULL,
	[QMFE_FECOD] [varchar](max) NULL,
	[QMFE_FEGRP] [varchar](max) NULL,
	[QMFE_FEHLBEW] [varchar](max) NULL,
	[QMFE_FEKAT] [varchar](max) NULL,
	[QMFE_FENUMORG] [varchar](max) NULL,
	[QMFE_FEQKLAS] [varchar](max) NULL,
	[QMFE_FETXT] [varchar](max) NULL,
	[QMFE_FEVER] [varchar](max) NULL,
	[QMFE_FMGEIG] [varchar](max) NULL,
	[QMFE_FMGEIN] [varchar](max) NULL,
	[QMFE_FMGFRD] [varchar](max) NULL,
	[QMFE_HERPOS] [varchar](max) NULL,
	[QMFE_INDTX] [varchar](max) NULL,
	[QMFE_INFNR] [varchar](max) NULL,
	[QMFE_KOSTL] [varchar](max) NULL,
	[QMFE_KZLOESCH] [varchar](max) NULL,
	[QMFE_KZMLA] [varchar](max) NULL,
	[QMFE_KZORG] [varchar](max) NULL,
	[QMFE_KZSYSFE] [varchar](max) NULL,
	[QMFE_LSTAR] [varchar](max) NULL,
	[QMFE_MATNR] [varchar](max) NULL,
	[QMFE_MENGE] [varchar](max) NULL,
	[QMFE_MERKNR] [varchar](max) NULL,
	[QMFE_OTEIL] [varchar](max) NULL,
	[QMFE_OTGRP] [varchar](max) NULL,
	[QMFE_OTKAT] [varchar](max) NULL,
	[QMFE_OTVER] [varchar](max) NULL,
	[QMFE_PHYNR] [varchar](max) NULL,
	[QMFE_PNLKN] [varchar](max) NULL,
	[QMFE_POSNR] [varchar](max) NULL,
	[QMFE_PROBENR] [varchar](max) NULL,
	[QMFE_PRUEFLINR] [varchar](max) NULL,
	[QMFE_PRZNR] [varchar](max) NULL,
	[QMFE_TPLNR] [varchar](max) NULL,
	[QMFE_UNITFLBEW] [varchar](max) NULL,
	[QMFE_WDFEH] [varchar](max) NULL,
	[QMFE_WERKS] [varchar](max) NULL,
	[QMFE_ZZ_MVA] [varchar](max) NULL,
	[QMFE_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_qn_item_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[QN_Item_ETL] ADD  CONSTRAINT [DF__qn_item_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[QN_Item_ETL] ADD  CONSTRAINT [DF__qn_item_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
