USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[QN_Action_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QN_Action_ETL](
	[QMMA_SYSID] [varchar](max) NULL,
	[QMMA_MANDT] [varchar](max) NULL,
	[QMMA_QMNUM] [varchar](max) NULL,
	[QMMA_FENUM] [varchar](max) NULL,
	[QMMA_AEDAT] [varchar](max) NULL,
	[QMMA_AENAM] [varchar](max) NULL,
	[QMMA_AEZEIT] [varchar](max) NULL,
	[QMMA_AUTKZ] [varchar](max) NULL,
	[QMMA_ERDAT] [varchar](max) NULL,
	[QMMA_ERNAM] [varchar](max) NULL,
	[QMMA_ERZEIT] [varchar](max) NULL,
	[QMMA_FUNKTION] [varchar](max) NULL,
	[QMMA_INDTX] [varchar](max) NULL,
	[QMMA_KLAKZ] [varchar](max) NULL,
	[QMMA_KZACTIONBOX] [varchar](max) NULL,
	[QMMA_KZLOESCH] [varchar](max) NULL,
	[QMMA_KZMLA] [varchar](max) NULL,
	[QMMA_MAKLS] [varchar](max) NULL,
	[QMMA_MANUM] [varchar](max) NULL,
	[QMMA_MATXT] [varchar](max) NULL,
	[QMMA_MNCOD] [varchar](max) NULL,
	[QMMA_MNGFA] [varchar](max) NULL,
	[QMMA_MNGRP] [varchar](max) NULL,
	[QMMA_MNKAT] [varchar](max) NULL,
	[QMMA_MNVER] [varchar](max) NULL,
	[QMMA_PETER] [varchar](max) NULL,
	[QMMA_PETUR] [varchar](max) NULL,
	[QMMA_PSTER] [varchar](max) NULL,
	[QMMA_PSTUR] [varchar](max) NULL,
	[QMMA_QMANUM] [varchar](max) NULL,
	[QMMA_URNUM] [varchar](max) NULL,
	[QMMA_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_qN_Action_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[QN_Action_ETL] ADD  CONSTRAINT [DF__qn_Action_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[QN_Action_ETL] ADD  CONSTRAINT [DF__qn_Action_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
