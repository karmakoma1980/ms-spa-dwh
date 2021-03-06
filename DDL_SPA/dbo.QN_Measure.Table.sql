USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[QN_Measure]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QN_Measure](
	[QMSM_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[QMSM_UID] [uniqueidentifier] NULL,
	[HASH_QN_MEASURE] [binary](16) NULL,
	[HASH_QN_HEADER] [binary](16) NULL,
	[HASH_QN_ITEM] [binary](16) NULL,
	[QMSM_SYSID] [nvarchar](255) NULL,
	[QMSM_MANDT] [nvarchar](255) NULL,
	[QMSM_QMNUM] [nvarchar](255) NULL,
	[QMSM_MANUM] [nvarchar](255) NULL,
	[QMSM_MNKAT] [nvarchar](255) NULL,
	[QMSM_MNGRP] [nvarchar](255) NULL,
	[QMSM_MNCOD] [nvarchar](255) NULL,
	[QMSM_MNVER] [nvarchar](255) NULL,
	[QMSM_FOLGEACT] [nvarchar](255) NULL,
	[QMSM_FOLACTPROT] [nvarchar](255) NULL,
	[QMSM_MATXT] [nvarchar](255) NULL,
	[QMSM_ERNAM] [nvarchar](255) NULL,
	[QMSM_ERDAT] [datetime2](7) NULL,
	[QMSM_AENAM] [nvarchar](255) NULL,
	[QMSM_AEDAT] [datetime2](7) NULL,
	[QMSM_PSTER] [datetime2](7) NULL,
	[QMSM_PETER] [datetime2](7) NULL,
	[QMSM_OBJNR] [nvarchar](255) NULL,
	[QMSM_INDTX] [nvarchar](255) NULL,
	[QMSM_KZMLA] [nvarchar](255) NULL,
	[QMSM_PSTUR] [nvarchar](255) NULL,
	[QMSM_PETUR] [nvarchar](255) NULL,
	[QMSM_ERLNAM] [nvarchar](255) NULL,
	[QMSM_ERLDAT] [datetime2](7) NULL,
	[QMSM_ERLZEIT] [nvarchar](255) NULL,
	[QMSM_WDVDAT] [datetime2](7) NULL,
	[QMSM_FENUM] [nvarchar](255) NULL,
	[QMSM_URNUM] [nvarchar](255) NULL,
	[QMSM_ERZEIT] [nvarchar](255) NULL,
	[QMSM_AEZEIT] [nvarchar](255) NULL,
	[QMSM_PARVW] [nvarchar](255) NULL,
	[QMSM_PARNR] [nvarchar](255) NULL,
	[QMSM_MMENGE] [decimal](18, 3) NULL,
	[QMSM_MMGEIN] [nvarchar](255) NULL,
	[QMSM_BAUTL] [nvarchar](255) NULL,
	[QMSM_KZLOESCH] [nvarchar](255) NULL,
	[QMSM_QSMNUM] [nvarchar](255) NULL,
	[QMSM_AUTKZ] [nvarchar](255) NULL,
	[QMSM_HANDLE] [nvarchar](255) NULL,
	[QMSM_TSEGFL] [nvarchar](255) NULL,
	[QMSM_TSEGTP] [nvarchar](255) NULL,
	[QMSM_TZONSO] [nvarchar](255) NULL,
	[QMSM_TZONSM] [nvarchar](255) NULL,
	[QMSM_TZONID] [nvarchar](255) NULL,
	[QMSM_KZACTIONBOX] [nvarchar](255) NULL,
	[QMSM_FUNKTION] [nvarchar](255) NULL,
	[QMSM_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_QN_Measure] PRIMARY KEY CLUSTERED 
(
	[QMSM_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QN_Measure] ADD  CONSTRAINT [DF__QN_Measur__SSMA___56E8E7AB]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
