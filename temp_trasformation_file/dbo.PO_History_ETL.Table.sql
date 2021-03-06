USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[PO_History_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO_History_ETL](
	[EKBE_SYSID] [varchar](max) NULL,
	[EKBE_MANDT] [varchar](max) NULL,
	[EKBE_EBELN] [varchar](max) NULL,
	[EKBE_EBELP] [varchar](max) NULL,
	[EKBE_AREWB] [varchar](max) NULL,
	[EKBE_AREWR] [varchar](max) NULL,
	[EKBE_AREWR_POP] [varchar](max) NULL,
	[EKBE_AREWW] [varchar](max) NULL,
	[EKBE_BAMNG] [varchar](max) NULL,
	[EKBE_BEKKN] [varchar](max) NULL,
	[EKBE_BELNR] [varchar](max) NULL,
	[EKBE_BEWTP] [varchar](max) NULL,
	[EKBE_BLDAT] [varchar](max) NULL,
	[EKBE_BPMNG] [varchar](max) NULL,
	[EKBE_BPMNG_POP] [varchar](max) NULL,
	[EKBE_BPWEB] [varchar](max) NULL,
	[EKBE_BPWES] [varchar](max) NULL,
	[EKBE_BUDAT] [varchar](max) NULL,
	[EKBE_BUZEI] [varchar](max) NULL,
	[EKBE_BWART] [varchar](max) NULL,
	[EKBE_BWTAR] [varchar](max) NULL,
	[EKBE_CHARG] [varchar](max) NULL,
	[EKBE_CPUDT] [varchar](max) NULL,
	[EKBE_CPUTM] [varchar](max) NULL,
	[EKBE_DMBTR] [varchar](max) NULL,
	[EKBE_DMBTR_POP] [varchar](max) NULL,
	[EKBE_ELIKZ] [varchar](max) NULL,
	[EKBE_EMATN] [varchar](max) NULL,
	[EKBE_ERNAM] [varchar](max) NULL,
	[EKBE_ET_UPD] [varchar](max) NULL,
	[EKBE_ETENS] [varchar](max) NULL,
	[EKBE_EVERE] [varchar](max) NULL,
	[EKBE_GJAHR] [varchar](max) NULL,
	[EKBE_GRUND] [varchar](max) NULL,
	[EKBE_HSWAE] [varchar](max) NULL,
	[EKBE_INTROW] [varchar](max) NULL,
	[EKBE_KNUMV] [varchar](max) NULL,
	[EKBE_KUDIF] [varchar](max) NULL,
	[EKBE_LEMIN] [varchar](max) NULL,
	[EKBE_LFBNR] [varchar](max) NULL,
	[EKBE_LFGJA] [varchar](max) NULL,
	[EKBE_LFPOS] [varchar](max) NULL,
	[EKBE_LSMEH] [varchar](max) NULL,
	[EKBE_LSMNG] [varchar](max) NULL,
	[EKBE_MATNR] [varchar](max) NULL,
	[EKBE_MENGE] [varchar](max) NULL,
	[EKBE_MENGE_POP] [varchar](max) NULL,
	[EKBE_MWSKZ] [varchar](max) NULL,
	[EKBE_PACKNO] [varchar](max) NULL,
	[EKBE_REEWR] [varchar](max) NULL,
	[EKBE_REFWR] [varchar](max) NULL,
	[EKBE_RETAMT_FC] [varchar](max) NULL,
	[EKBE_RETAMT_LC] [varchar](max) NULL,
	[EKBE_RETAMTP_FC] [varchar](max) NULL,
	[EKBE_RETAMTP_LC] [varchar](max) NULL,
	[EKBE_REWRB] [varchar](max) NULL,
	[EKBE_SAPRL] [varchar](max) NULL,
	[EKBE_SHKZG] [varchar](max) NULL,
	[EKBE_SRVPOS] [varchar](max) NULL,
	[EKBE_VGABE] [varchar](max) NULL,
	[EKBE_WAERS] [varchar](max) NULL,
	[EKBE_WEORA] [varchar](max) NULL,
	[EKBE_WERKS] [varchar](max) NULL,
	[EKBE_WESBB] [varchar](max) NULL,
	[EKBE_WESBS] [varchar](max) NULL,
	[EKBE_WKURS] [varchar](max) NULL,
	[EKBE_WRBTR] [varchar](max) NULL,
	[EKBE_WRBTR_POP] [varchar](max) NULL,
	[EKBE_XBLNR] [varchar](max) NULL,
	[EKBE_XMACC] [varchar](max) NULL,
	[EKBE_XUNPL] [varchar](max) NULL,
	[EKBE_XWOFF] [varchar](max) NULL,
	[EKBE_XWSBR] [varchar](max) NULL,
	[EKBE_ZEKKN] [varchar](max) NULL,
	[EKBE_ERUSERNAME] [varchar](max) NULL,
	[EKBE_AEUSERNAME] [varchar](max) NULL,
	[EKBE_UDATE] [varchar](max) NULL,
	[EKBE_DATUM] [varchar](max) NULL,
	[HASH_PO_HISTORY] [binary](16) NULL,
	[HASH_PO_ITEM] [binary](16) NULL,
	[HASH_PO_CONFIRMATION] [binary](16) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_PO_history_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PO_History_ETL] ADD  CONSTRAINT [DF__PO_history_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[PO_History_ETL] ADD  CONSTRAINT [DF__PO_history_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
