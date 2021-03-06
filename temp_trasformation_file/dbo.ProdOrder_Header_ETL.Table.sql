USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[ProdOrder_Header_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdOrder_Header_ETL](
	[AFKO_SYSID] [varchar](max) NULL,
	[AFKO_MANDT] [varchar](max) NULL,
	[AFKO_AUFNR] [varchar](max) NULL,
	[AFKO_GSTRP] [varchar](max) NULL,
	[AFKO_GLTRP] [varchar](max) NULL,
	[AFKO_GSTRS] [varchar](max) NULL,
	[AFKO_FTRMS] [varchar](max) NULL,
	[AFKO_GLTRS] [varchar](max) NULL,
	[AFKO_GSTRI] [varchar](max) NULL,
	[AFKO_FTRMI] [varchar](max) NULL,
	[AFKO_GETRI] [varchar](max) NULL,
	[AFKO_GLTRI] [varchar](max) NULL,
	[AFKO_RSNUM] [varchar](max) NULL,
	[AFKO_PLNNR] [varchar](max) NULL,
	[AFKO_PLNAW] [varchar](max) NULL,
	[AFKO_AUFPL] [varchar](max) NULL,
	[AFKO_PRONR] [varchar](max) NULL,
	[AFKO_NTZUE] [varchar](max) NULL,
	[AFKO_RMANR] [varchar](max) NULL,
	[AFKO_ERDATE] [varchar](max) NULL,
	[AFKO_UDATE] [varchar](max) NULL,
	[AFKO_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_prodOrder_Header_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProdOrder_Header_ETL] ADD  CONSTRAINT [DF__prodOrder_Header_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[ProdOrder_Header_ETL] ADD  CONSTRAINT [DF__prodOrder_Header_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
