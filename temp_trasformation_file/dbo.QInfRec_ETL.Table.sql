USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[QInfRec_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QInfRec_ETL](
	[QINF_SYSID] [varchar](max) NULL,
	[QINF_MANDT] [varchar](max) NULL,
	[QINF_MATNR] [varchar](max) NULL,
	[QINF_ZAEHL] [varchar](max) NULL,
	[QINF_REVLV] [varchar](max) NULL,
	[QINF_AENDERDAT] [varchar](max) NULL,
	[QINF_AENDERER] [varchar](max) NULL,
	[QINF_BEST_MG] [varchar](max) NULL,
	[QINF_CERTCONTROL] [varchar](max) NULL,
	[QINF_DAT_RUECK] [varchar](max) NULL,
	[QINF_ERSTELLDAT] [varchar](max) NULL,
	[QINF_ERSTELLER] [varchar](max) NULL,
	[QINF_FREI_DAT] [varchar](max) NULL,
	[QINF_FREI_MGKZ] [varchar](max) NULL,
	[QINF_FREI_MNG] [varchar](max) NULL,
	[QINF_LIEFERANT] [varchar](max) NULL,
	[QINF_LOEKZ] [varchar](max) NULL,
	[QINF_LTEXTKZ] [varchar](max) NULL,
	[QINF_ME] [varchar](max) NULL,
	[QINF_NOINSP] [varchar](max) NULL,
	[QINF_NOINSPABN] [varchar](max) NULL,
	[QINF_OBJNR] [varchar](max) NULL,
	[QINF_PLOS] [varchar](max) NULL,
	[QINF_PLOS2] [varchar](max) NULL,
	[QINF_QSSYSDAT] [varchar](max) NULL,
	[QINF_QSSYSFAM] [varchar](max) NULL,
	[QINF_QVVORH] [varchar](max) NULL,
	[QINF_SPERRFKT] [varchar](max) NULL,
	[QINF_SPERRGRUND] [varchar](max) NULL,
	[QINF_SPRACHE] [varchar](max) NULL,
	[QINF_SPRAS] [varchar](max) NULL,
	[QINF_STSMA] [varchar](max) NULL,
	[QINF_VARIABNAHM] [varchar](max) NULL,
	[QINF_VORLABN] [varchar](max) NULL,
	[QINF_WERK] [varchar](max) NULL,
	[QINF_LFA1_SPERQ] [varchar](max) NULL,
	[QINF_LFA1_QSSYS] [varchar](max) NULL,
	[QINF_LFA1_QSSYSDAT] [varchar](max) NULL,
	[QINF_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
	[QINF_VAP] [varchar](max) NULL,
 CONSTRAINT [PK_qInfRec_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[QInfRec_ETL] ADD  CONSTRAINT [DF__qInfRec_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[QInfRec_ETL] ADD  CONSTRAINT [DF__qInfRec_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
