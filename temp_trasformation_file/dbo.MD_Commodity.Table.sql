USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_Commodity]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Commodity](
	[T023T_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[T023T_UID] [uniqueidentifier] NULL,
	[HASH_ADCCS] [binary](16) NULL,
	[HASH_ADCCS_LANG] [binary](16) NULL,
	[T023T_SYSID] [nvarchar](255) NULL,
	[T023T_MANDT] [nvarchar](255) NULL,
	[T023T_SPRAS] [nvarchar](255) NULL,
	[T023T_MATKL] [nvarchar](255) NULL,
	[T023T_WGBEZ] [nvarchar](255) NULL,
	[T023T_WGBEZ60] [nvarchar](255) NULL,
	[T023T_DATUM] [datetime2](7) NULL,
	[T023T_ADCCS] [nvarchar](255) NULL,
	[T023T_Family] [nvarchar](255) NULL,
	[T023T_Non_GP] [nvarchar](255) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_MD_Commodity] PRIMARY KEY CLUSTERED 
(
	[T023T_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_Commodity] ADD  CONSTRAINT [DF__MD_Commod__SSMA___4AB81AF0]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
