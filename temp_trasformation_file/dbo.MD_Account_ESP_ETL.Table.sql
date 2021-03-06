USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_Account_ESP_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Account_ESP_ETL](
	[SKA1_SYSID] [varchar](max) NULL,
	[SKA1_MANDT] [varchar](max) NULL,
	[SKA1_BUKRS] [varchar](max) NULL,
	[SKA1_SAKNR] [varchar](max) NULL,
	[SKA1_TXT50] [varchar](max) NULL,
	[SKA1_KTOPL] [varchar](max) NULL,
	[SKA1_SPRAS] [varchar](max) NULL,
	[SKA1_KTPLT] [varchar](max) NULL,
	[SKA1_SKB1_ERDAT] [varchar](max) NULL,
	[SKA1_ERDAT] [varchar](max) NULL,
	[SKA1_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
	[SKA1_CATEG] [varchar](max) NULL,
	[SKA1_GPINC] [varchar](max) NULL,
	[SKA1_HIEL1] [varchar](max) NULL,
	[SKA1_HIEL2] [varchar](max) NULL,
	[SKA1_HIEL3] [varchar](max) NULL,
	[SKA1_NOREP] [varchar](max) NULL,
	[SKA1_NOSIT] [varchar](max) NULL,
	[SKA1_CTYPE] [varchar](max) NULL,
 CONSTRAINT [PK_MD_Account_ESP_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_Account_ESP_ETL] ADD  CONSTRAINT [DF__MD_Account_ESP_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[MD_Account_ESP_ETL] ADD  CONSTRAINT [DF__MD_Account_ESP_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
