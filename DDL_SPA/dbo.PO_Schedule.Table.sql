USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[PO_Schedule]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO_Schedule](
	[EKET_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[EKET_UID] [uniqueidentifier] NULL,
	[HASH_PO_SCHEDULE] [binary](16) NULL,
	[HASH_PO_ITEM] [binary](16) NULL,
	[EKET_SYSID] [nvarchar](255) NULL,
	[EKET_MANDT] [nvarchar](255) NULL,
	[EKET_EBELN] [nvarchar](255) NULL,
	[EKET_EBELP] [nvarchar](255) NULL,
	[EKET_ETENR] [nvarchar](255) NULL,
	[EKET_ESTKZ] [nvarchar](255) NULL,
	[EKET_CHARG] [nvarchar](255) NULL,
	[EKET_LICHA] [nvarchar](255) NULL,
	[EKET_BEDAT] [datetime2](7) NULL,
	[EKET_EINDT] [datetime2](7) NULL,
	[EKET_SLFDT] [datetime2](7) NULL,
	[EKET_MENGE] [decimal](18, 3) NULL,
	[EKET_WEMNG] [decimal](18, 3) NULL,
	[EKET_DABMG] [decimal](18, 3) NULL,
	[EKET_BANFN] [nvarchar](255) NULL,
	[EKET_BNFPO] [nvarchar](255) NULL,
	[EKET_MAHNZ] [decimal](18, 2) NULL,
	[EKET_GLMNG] [decimal](18, 3) NULL,
	[EKET_AMENG] [decimal](18, 3) NULL,
	[EKET_WAMNG] [decimal](18, 3) NULL,
	[EKET_FIXKZ] [nvarchar](255) NULL,
	[EKET_ERUSERNAME] [nvarchar](255) NULL,
	[EKET_AEUSERNAME] [nvarchar](255) NULL,
	[EKET_UDATE] [datetime2](7) NULL,
	[EKET_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_PO_Schedule] PRIMARY KEY CLUSTERED 
(
	[EKET_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PO_Schedule] ADD  CONSTRAINT [DF__PO_Schedu__SSMA___2B0A656D]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
