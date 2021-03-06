USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[GM_Header]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GM_Header](
	[MKPF_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[MKPF_UID] [uniqueidentifier] NULL,
	[HASH_GM_HEADER] [binary](16) NULL,
	[MKPF_SYSID] [nvarchar](255) NULL,
	[MKPF_MANDT] [nvarchar](255) NULL,
	[MKPF_MBLNR] [nvarchar](255) NULL,
	[MKPF_MJAHR] [nvarchar](255) NULL,
	[MKPF_VGART] [nvarchar](255) NULL,
	[MKPF_BLART] [nvarchar](255) NULL,
	[MKPF_BLDAT] [datetime2](7) NULL,
	[MKPF_BUDAT] [datetime2](7) NULL,
	[MKPF_CPUDT] [datetime2](7) NULL,
	[MKPF_ZZBARCODE] [nvarchar](255) NULL,
	[MKPF_BKTXT] [nvarchar](255) NULL,
	[MKPF_XBLNR] [nvarchar](255) NULL,
	[MKPF_USNAM] [nvarchar](255) NULL,
	[MKPF_AEDAT] [datetime2](7) NULL,
	[MKPF_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_GM_Header] PRIMARY KEY CLUSTERED 
(
	[MKPF_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GM_Header] ADD  CONSTRAINT [DF__GM_Header__SSMA___239E4DCF]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
