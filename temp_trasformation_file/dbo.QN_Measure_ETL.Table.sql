USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[QN_Measure_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QN_Measure_ETL](
	[QMSM_SYSID] [varchar](max) NULL,
	[QMSM_MANDT] [varchar](max) NULL,
	[QMSM_QMNUM] [varchar](max) NULL,
	[QMSM_MANUM] [varchar](max) NULL,
	[QMSM_MNKAT] [varchar](max) NULL,
	[QMSM_MNGRP] [varchar](max) NULL,
	[QMSM_MNCOD] [varchar](max) NULL,
	[QMSM_MNVER] [varchar](max) NULL,
	[QMSM_FOLGEACT] [varchar](max) NULL,
	[QMSM_FOLACTPROT] [varchar](max) NULL,
	[QMSM_MATXT] [varchar](max) NULL,
	[QMSM_ERNAM] [varchar](max) NULL,
	[QMSM_ERDAT] [varchar](max) NULL,
	[QMSM_AENAM] [varchar](max) NULL,
	[QMSM_AEDAT] [varchar](max) NULL,
	[QMSM_PSTER] [varchar](max) NULL,
	[QMSM_PETER] [varchar](max) NULL,
	[QMSM_OBJNR] [varchar](max) NULL,
	[QMSM_INDTX] [varchar](max) NULL,
	[QMSM_KZMLA] [varchar](max) NULL,
	[QMSM_PSTUR] [varchar](max) NULL,
	[QMSM_PETUR] [varchar](max) NULL,
	[QMSM_ERLNAM] [varchar](max) NULL,
	[QMSM_ERLDAT] [varchar](max) NULL,
	[QMSM_ERLZEIT] [varchar](max) NULL,
	[QMSM_WDVDAT] [varchar](max) NULL,
	[QMSM_FENUM] [varchar](max) NULL,
	[QMSM_URNUM] [varchar](max) NULL,
	[QMSM_ERZEIT] [varchar](max) NULL,
	[QMSM_AEZEIT] [varchar](max) NULL,
	[QMSM_PARVW] [varchar](max) NULL,
	[QMSM_PARNR] [varchar](max) NULL,
	[QMSM_MMENGE] [varchar](max) NULL,
	[QMSM_MMGEIN] [varchar](max) NULL,
	[QMSM_BAUTL] [varchar](max) NULL,
	[QMSM_KZLOESCH] [varchar](max) NULL,
	[QMSM_QSMNUM] [varchar](max) NULL,
	[QMSM_AUTKZ] [varchar](max) NULL,
	[QMSM_HANDLE] [varchar](max) NULL,
	[QMSM_TSEGFL] [varchar](max) NULL,
	[QMSM_TSEGTP] [varchar](max) NULL,
	[QMSM_TZONSO] [varchar](max) NULL,
	[QMSM_TZONSM] [varchar](max) NULL,
	[QMSM_TZONID] [varchar](max) NULL,
	[QMSM_KZACTIONBOX] [varchar](max) NULL,
	[QMSM_FUNKTION] [varchar](max) NULL,
	[QMSM_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_qn_Measure_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[QN_Measure_ETL] ADD  CONSTRAINT [DF__qn_Measure_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[QN_Measure_ETL] ADD  CONSTRAINT [DF__qn_Measure_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
