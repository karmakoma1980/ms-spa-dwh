USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[GM_Header_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GM_Header_ETL](
	[MKPF_SYSID] [varchar](max) NULL,
	[MKPF_MANDT] [varchar](max) NULL,
	[MKPF_MBLNR] [varchar](max) NULL,
	[MKPF_MJAHR] [varchar](max) NULL,
	[MKPF_VGART] [varchar](max) NULL,
	[MKPF_BLART] [varchar](max) NULL,
	[MKPF_BLDAT] [varchar](max) NULL,
	[MKPF_BUDAT] [varchar](max) NULL,
	[MKPF_CPUDT] [varchar](max) NULL,
	[MKPF_ZZBARCODE] [varchar](max) NULL,
	[MKPF_BKTXT] [varchar](max) NULL,
	[MKPF_XBLNR] [varchar](max) NULL,
	[MKPF_USNAM] [varchar](max) NULL,
	[MKPF_AEDAT] [varchar](max) NULL,
	[MKPF_DATUM] [varchar](max) NULL,
	[HASH_GM_HEADER] [binary](16) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_GM_header_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[GM_Header_ETL] ADD  CONSTRAINT [DF__GM_header_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[GM_Header_ETL] ADD  CONSTRAINT [DF__GM_header_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
