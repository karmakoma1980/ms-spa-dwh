USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_Commodity_Type]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Commodity_Type](
	[MD_Commodity_Type_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[MD_Commodity_Type_UID] [uniqueidentifier] NULL,
	[HASH_ADCCS] [binary](16) NULL,
	[SourceSystem] [nvarchar](255) NULL,
	[SystemID] [nvarchar](255) NULL,
	[ClientID] [nvarchar](255) NULL,
	[ComodityCode] [nvarchar](255) NULL,
	[ADCCS] [nvarchar](255) NULL,
	[CommodityFamily] [nvarchar](255) NULL,
	[Non-EGP] [nvarchar](255) NULL,
	[CommodityType] [nvarchar](255) NULL,
	[SystemIDClientIDADCCS] [nvarchar](255) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_MD_Commodity_Type] PRIMARY KEY CLUSTERED 
(
	[MD_Commodity_Type_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_Commodity_Type] ADD  CONSTRAINT [DF__MD_Comm_type__SSMA___4AB81AF0]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
