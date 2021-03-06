USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[PO_InfRecGE]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO_InfRecGE](
	[EINA_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[EINA_UID] [uniqueidentifier] NULL,
	[HASH_GE_INFNR] [binary](16) NULL,
	[HASH_SUPPLIER_LFA1] [binary](16) NULL,
	[EINA_SYSID] [nvarchar](255) NULL,
	[EINA_MANDT] [nvarchar](255) NULL,
	[EINA_INFNR] [nvarchar](255) NULL,
	[EINA_ANZPU] [decimal](18, 3) NULL,
	[EINA_ERDAT] [datetime2](7) NULL,
	[EINA_ERNAM] [nvarchar](255) NULL,
	[EINA_IDNLF] [nvarchar](255) NULL,
	[EINA_KOLIF] [nvarchar](255) NULL,
	[EINA_LIFAB] [datetime2](7) NULL,
	[EINA_LIFBI] [datetime2](7) NULL,
	[EINA_LIFNR] [nvarchar](255) NULL,
	[EINA_LMEIN] [nvarchar](255) NULL,
	[EINA_LOEKZ] [nvarchar](255) NULL,
	[EINA_LTSNR] [nvarchar](255) NULL,
	[EINA_LTSSF] [nvarchar](255) NULL,
	[EINA_MAHN1] [decimal](18, 2) NULL,
	[EINA_MAHN2] [decimal](18, 2) NULL,
	[EINA_MAHN3] [decimal](18, 2) NULL,
	[EINA_MATKL] [nvarchar](255) NULL,
	[EINA_MATNR] [nvarchar](255) NULL,
	[EINA_MEINS] [nvarchar](255) NULL,
	[EINA_MFRNR] [nvarchar](255) NULL,
	[EINA_PUNEI] [nvarchar](255) NULL,
	[EINA_REGIO] [nvarchar](255) NULL,
	[EINA_RELIF] [nvarchar](255) NULL,
	[EINA_RUECK] [nvarchar](255) NULL,
	[EINA_SORTL] [nvarchar](255) NULL,
	[EINA_TELF1] [nvarchar](255) NULL,
	[EINA_TXZ01] [nvarchar](255) NULL,
	[EINA_UMREN] [decimal](18, 2) NULL,
	[EINA_UMREZ] [decimal](18, 2) NULL,
	[EINA_URZDT] [datetime2](7) NULL,
	[EINA_URZLA] [nvarchar](255) NULL,
	[EINA_URZNR] [nvarchar](255) NULL,
	[EINA_URZTP] [nvarchar](255) NULL,
	[EINA_URZZT] [nvarchar](255) NULL,
	[EINA_VABME] [nvarchar](255) NULL,
	[EINA_VERKF] [nvarchar](255) NULL,
	[EINA_WGLIF] [nvarchar](255) NULL,
	[EINA_ERUSERNAME] [nvarchar](255) NULL,
	[EINA_AEUSERNAME] [nvarchar](255) NULL,
	[EINA_UDATE] [datetime2](7) NULL,
	[EINA_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_PO_InfoRecord_GE] PRIMARY KEY CLUSTERED 
(
	[EINA_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PO_InfRecGE] ADD  CONSTRAINT [DF__PO_InfRecGE_SSMA___2180FB33]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
