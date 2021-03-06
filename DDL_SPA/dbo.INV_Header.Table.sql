USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[INV_Header]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INV_Header](
	[BKPF_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[BKPF_UID] [uniqueidentifier] NULL,
	[HASH_INV_HEADER_UNIQUE] [binary](16) NULL,
	[HASH_INV_HEADER] [binary](16) NULL,
	[BKPF_SYSID] [nvarchar](255) NULL,
	[BKPF_MANDT] [nvarchar](255) NULL,
	[BKPF_GJAHR] [nvarchar](255) NULL,
	[BKPF_BELNR] [nvarchar](255) NULL,
	[BKPF_BUKRS] [nvarchar](255) NULL,
	[BKPF_BUDAT] [datetime2](7) NULL,
	[BKPF_CPUDT] [datetime2](7) NULL,
	[BKPF_BLDAT] [datetime2](7) NULL,
	[BKPF_WAERS] [nvarchar](255) NULL,
	[BKPF_KURSF] [decimal](18, 5) NULL,
	[BKPF_WWERT] [datetime2](7) NULL,
	[BKPF_HWAER] [nvarchar](255) NULL,
	[BKPF_BKTXT] [nvarchar](255) NULL,
	[BKPF_BLART] [nvarchar](255) NULL,
	[BKPF_XBLNR] [nvarchar](255) NULL,
	[BKPF_BSTAT] [nvarchar](255) NULL,
	[BKPF_STJAH] [nvarchar](255) NULL,
	[BKPF_STBLG] [nvarchar](255) NULL,
	[BKPF_XREVERSAL] [nvarchar](255) NULL,
	[BKPF_ERUSERNAME] [nvarchar](255) NULL,
	[BKPF_AEUSERNAME] [nvarchar](255) NULL,
	[BKPF_AEDAT] [datetime2](7) NULL,
	[BKPF_DATUM] [datetime2](7) NULL,
	[BKPF_AUSBK] [nvarchar](255) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_INV_Header] PRIMARY KEY CLUSTERED 
(
	[BKPF_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[INV_Header] ADD  CONSTRAINT [DF__INV_Heade__SSMA___2D27B809]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
