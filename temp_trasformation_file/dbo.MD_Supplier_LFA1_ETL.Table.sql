USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_Supplier_LFA1_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Supplier_LFA1_ETL](
	[LFA1_SYSID] [varchar](max) NULL,
	[LFA1_MANDT] [varchar](max) NULL,
	[LFA1_LIFNR] [varchar](max) NULL,
	[LFA1_KRAUS] [varchar](max) NULL,
	[LFA1_NAME1] [varchar](max) NULL,
	[LFA1_NAME2] [varchar](max) NULL,
	[LFA1_NAME3] [varchar](max) NULL,
	[LFA1_NAME4] [varchar](max) NULL,
	[LFA1_STRAS] [varchar](max) NULL,
	[LFA1_PSTLZ] [varchar](max) NULL,
	[LFA1_ORT01] [varchar](max) NULL,
	[LFA1_REGIO] [varchar](max) NULL,
	[LFA1_LAND1] [varchar](max) NULL,
	[LFA1_PFACH] [varchar](max) NULL,
	[LFA1_KTOKK] [varchar](max) NULL,
	[LFA1_CONTACTFIRSTNAME] [varchar](max) NULL,
	[LFA1_CONTACTLASTNAME] [varchar](max) NULL,
	[LFA1_TELF1] [varchar](max) NULL,
	[LFA1_TELF2] [varchar](max) NULL,
	[LFA1_TELTX] [varchar](max) NULL,
	[LFA1_TELFX] [varchar](max) NULL,
	[LFA1_SPRAS] [varchar](max) NULL,
	[LFA1_ZWWLS] [varchar](max) NULL,
	[LFA1_SPERR] [varchar](max) NULL,
	[LFA1_SPERM] [varchar](max) NULL,
	[LFA1_SPERZ] [varchar](max) NULL,
	[LFA1_SPERQ] [varchar](max) NULL,
	[LFA1_NODEL] [varchar](max) NULL,
	[LFA1_ERDAT] [varchar](max) NULL,
	[LFA1_LOEVM] [varchar](max) NULL,
	[LFA1_STCD1] [varchar](max) NULL,
	[LFA1_STCD2] [varchar](max) NULL,
	[LFA1_STCEG] [varchar](max) NULL,
	[LFA1_VBUND] [varchar](max) NULL,
	[LFA1_SORTL] [varchar](max) NULL,
	[LFA1_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
	[LFA1_Blacklist] [varchar](max) NULL,
	[LFA1_CertificateDBNumber] [varchar](max) NULL,
	[LFA1_DUNS] [varchar](max) NULL,
	[LFA1_DUNSDirectMother] [varchar](max) NULL,
	[LFA1_DUNSGlobalMother] [varchar](max) NULL,
	[LFA1_ExceptionList] [varchar](max) NULL,
	[LFA1_Inter_Intra] [varchar](max) NULL,
	[LFA1_InternalFocalPoint] [varchar](max) NULL,
	[LFA1_MainBusinessArea] [varchar](max) NULL,
	[LFA1_MDG_ID] [varchar](max) NULL,
	[LFA1_NameGlobal] [varchar](max) NULL,
	[LFA1_NameHarmonised] [varchar](max) NULL,
	[LFA1_NATO_CAGE_Code] [varchar](max) NULL,
	[LFA1_Non_GP] [varchar](max) NULL,
	[LFA1_Non_Reporting] [varchar](max) NULL,
	[LFA1_Non_SourceIT] [varchar](max) NULL,
	[LFA1_REACH_Classification] [varchar](max) NULL,
	[LFA1_SME] [varchar](max) NULL,
	[LFA1_SpecialPayment] [varchar](max) NULL,
	[LFA1_StrategicSupplier] [varchar](max) NULL,
	[LFA1_TransportSupplier] [varchar](max) NULL,
 CONSTRAINT [PK_MD_supplier_LFA1_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_Supplier_LFA1_ETL] ADD  CONSTRAINT [DF__MD_supplier_LFA1_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[MD_Supplier_LFA1_ETL] ADD  CONSTRAINT [DF__MD_supplier_LFA1_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
