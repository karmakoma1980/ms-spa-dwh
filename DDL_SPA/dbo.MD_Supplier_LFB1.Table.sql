USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_Supplier_LFB1]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Supplier_LFB1](
	[LFB1_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[LFB1_UID] [uniqueidentifier] NULL,
	[HASH_SUPPLIER_LFB1] [binary](16) NULL,
	[HASH_SUPPLIER_LFA1] [binary](16) NULL,
	[LFB1_SYSID] [nvarchar](255) NULL,
	[LFB1_MANDT] [nvarchar](255) NULL,
	[LFB1_LIFNR] [nvarchar](255) NULL,
	[LFB1_BUKRS] [nvarchar](255) NULL,
	[LFB1_ZTERM] [nvarchar](255) NULL,
	[LFB1_ZAHLS] [nvarchar](255) NULL,
	[LFB1_LOEVM] [nvarchar](255) NULL,
	[LFB1_SPERR] [nvarchar](255) NULL,
	[LFB1_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_MD_Supplier_LFB1] PRIMARY KEY CLUSTERED 
(
	[LFB1_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_Supplier_LFB1] ADD  CONSTRAINT [DF__MD_Suppli__SSMA___00200768]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
