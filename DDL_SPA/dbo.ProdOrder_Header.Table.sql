USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[ProdOrder_Header]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdOrder_Header](
	[AFKO_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[AFKO_UID] [uniqueidentifier] NULL,
	[HASH_PRODORDER_HEADER] [binary](16) NULL,
	[HASH_PRJ_ORDER] [binary](16) NULL,
	[AFKO_SYSID] [nvarchar](255) NULL,
	[AFKO_MANDT] [nvarchar](255) NULL,
	[AFKO_AUFNR] [nvarchar](255) NULL,
	[AFKO_GSTRP] [datetime2](7) NULL,
	[AFKO_GLTRP] [datetime2](7) NULL,
	[AFKO_GSTRS] [datetime2](7) NULL,
	[AFKO_FTRMS] [datetime2](7) NULL,
	[AFKO_GLTRS] [datetime2](7) NULL,
	[AFKO_GSTRI] [datetime2](7) NULL,
	[AFKO_FTRMI] [datetime2](7) NULL,
	[AFKO_GETRI] [datetime2](7) NULL,
	[AFKO_GLTRI] [datetime2](7) NULL,
	[AFKO_RSNUM] [nvarchar](255) NULL,
	[AFKO_PLNNR] [nvarchar](255) NULL,
	[AFKO_PLNAW] [nvarchar](255) NULL,
	[AFKO_AUFPL] [nvarchar](255) NULL,
	[AFKO_PRONR] [nvarchar](255) NULL,
	[AFKO_NTZUE] [nvarchar](255) NULL,
	[AFKO_RMANR] [nvarchar](255) NULL,
	[AFKO_ERDATE] [datetime2](7) NULL,
	[AFKO_UDATE] [datetime2](7) NULL,
	[AFKO_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_ProdOrder_Header] PRIMARY KEY CLUSTERED 
(
	[AFKO_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProdOrder_Header] ADD  CONSTRAINT [DF__ProdOrder__SSMA___395884C4]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
