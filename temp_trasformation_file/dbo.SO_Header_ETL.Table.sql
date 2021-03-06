USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[SO_Header_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SO_Header_ETL](
	[VBAK_SYSID] [varchar](max) NULL,
	[VBAK_MANDT] [varchar](max) NULL,
	[VBAK_VBELN] [varchar](max) NULL,
	[VBAK_ERDAT] [varchar](max) NULL,
	[VBAK_ERNAM] [varchar](max) NULL,
	[VBAK_AUDAT] [varchar](max) NULL,
	[VBAK_VBTYP] [varchar](max) NULL,
	[VBAK_TRVOG] [varchar](max) NULL,
	[VBAK_AUART] [varchar](max) NULL,
	[VBAK_AUGRU] [varchar](max) NULL,
	[VBAK_NETWR] [varchar](max) NULL,
	[VBAK_WAERK] [varchar](max) NULL,
	[VBAK_VKBUR] [varchar](max) NULL,
	[VBAK_VDATU] [varchar](max) NULL,
	[VBAK_AWAHR] [varchar](max) NULL,
	[VBAK_BSTDK] [varchar](max) NULL,
	[VBAK_KUNNR] [varchar](max) NULL,
	[VBAK_AEDAT] [varchar](max) NULL,
	[VBAK_PS_PSP_PNR] [varchar](max) NULL,
	[VBAK_VMBDAT] [varchar](max) NULL,
	[VBAK_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_so_Header_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SO_Header_ETL] ADD  CONSTRAINT [DF__so_Header_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[SO_Header_ETL] ADD  CONSTRAINT [DF__so_Header_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
