USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_CurrencyMap]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_CurrencyMap](
	[TCURC_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[TCURC_UID] [uniqueidentifier] NULL,
	[HASH_MD_CURRENCY] [binary](16) NULL,
	[HASH_MD_CURRENCY_LANG] [binary](16) NULL,
	[TCURC_SYSID] [nvarchar](255) NULL,
	[TCURC_MANDT] [nvarchar](255) NULL,
	[TCURC_WAERS] [nvarchar](255) NULL,
	[TCURC_ISOCD] [nvarchar](255) NULL,
	[TCURC_SPRAS] [nvarchar](255) NULL,
	[TCURC_LTEXT] [nvarchar](max) NULL,
	[TCURC_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
	[TCURC_StandardExchangeRate] [nvarchar](255) NULL,
	[T052_FinalPaymentTerm] [nvarchar](255) NULL,
	[T052_EOMTerm] [nvarchar](255) NULL,
 CONSTRAINT [PK_MD_Currency] PRIMARY KEY CLUSTERED 
(
	[TCURC_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_CurrencyMap] ADD  CONSTRAINT [DF__MD_Curren__SSMA___5535A963]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
