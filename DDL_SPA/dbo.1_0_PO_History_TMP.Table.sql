USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[1_0_PO_History_TMP]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[1_0_PO_History_TMP](
	[EKBE_SYSID] [varchar](max) NULL,
	[EKBE_MANDT] [varchar](max) NULL,
	[NOT_APPLICABLE] [varchar](max) NULL,
	[EKBE_EBELN] [varchar](max) NULL,
	[EKBE_EBELP] [varchar](max) NULL,
	[EKBE_ZEKKN] [varchar](max) NULL,
	[EKBE_VGABE] [varchar](max) NULL,
	[EKBE_LFGJA] [varchar](max) NULL,
	[EKBE_BELNR] [varchar](max) NULL,
	[EKBE_BUZEI] [varchar](max) NULL,
	[EKBE_BAMNG] [varchar](max) NULL,
	[EKBE_BUDAT] [varchar](max) NULL,
	[EKBE_BLDAT] [varchar](max) NULL,
	[EKBE_CPUDT] [varchar](max) NULL,
	[EKBE_XMACC] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
