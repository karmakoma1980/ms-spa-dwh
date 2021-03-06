USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_Network_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Network_ETL](
	[AUFK_SYSID] [varchar](max) NULL,
	[AUFK_MANDT] [varchar](max) NULL,
	[AUFK_AUFNR] [varchar](max) NULL,
	[AUFK_KTEXT] [varchar](max) NULL,
	[AUFK_LTEXT] [varchar](max) NULL,
	[AUFK_AUART] [varchar](max) NULL,
	[AUFK_AUTYP] [varchar](max) NULL,
	[AUFK_BUKRS] [varchar](max) NULL,
	[AUFK_WERKS] [varchar](max) NULL,
	[AUFK_WAERS] [varchar](max) NULL,
	[AUFK_PRCTR] [varchar](max) NULL,
	[AUFK_FUNC_AREA] [varchar](max) NULL,
	[AUFK_SCOPE] [varchar](max) NULL,
	[AUFK_PSPEL] [varchar](max) NULL,
	[AUFK_KDAUF] [varchar](max) NULL,
	[AUFK_KDPOS] [varchar](max) NULL,
	[AUFK_VERS] [varchar](max) NULL,
	[AUFK_ID_1] [varchar](max) NULL,
	[AUFK_ID_2] [varchar](max) NULL,
	[AUFK_ID_3] [varchar](max) NULL,
	[AUFK_SGE] [varchar](max) NULL,
	[AUFK_PMO] [varchar](max) NULL,
	[AUFK_VALID] [varchar](max) NULL,
	[AUFK_BEA_DAT] [varchar](max) NULL,
	[AUFK_ERNAM] [varchar](max) NULL,
	[AUFK_ERDAT] [varchar](max) NULL,
	[AUFK_AENAM] [varchar](max) NULL,
	[AUFK_AEDAT] [varchar](max) NULL,
	[AUFK_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_MD_network_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_Network_ETL] ADD  CONSTRAINT [DF__MD_network_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[MD_Network_ETL] ADD  CONSTRAINT [DF__MD_network_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
