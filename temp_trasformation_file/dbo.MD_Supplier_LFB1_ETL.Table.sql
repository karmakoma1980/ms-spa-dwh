USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_Supplier_LFB1_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Supplier_LFB1_ETL](
	[LFB1_SYSID] [varchar](max) NULL,
	[LFB1_MANDT] [varchar](max) NULL,
	[LFB1_LIFNR] [varchar](max) NULL,
	[LFB1_BUKRS] [varchar](max) NULL,
	[LFB1_ZTERM] [varchar](max) NULL,
	[LFB1_ZAHLS] [varchar](max) NULL,
	[LFB1_LOEVM] [varchar](max) NULL,
	[LFB1_SPERR] [varchar](max) NULL,
	[LFB1_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_MD_supplier_LFB1_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_Supplier_LFB1_ETL] ADD  CONSTRAINT [DF__MD_supplier_LFB1_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[MD_Supplier_LFB1_ETL] ADD  CONSTRAINT [DF__MD_supplier_LFB1_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
