USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[QN_Header]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QN_Header](
	[QMEL_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[QMEL_UID] [uniqueidentifier] NULL,
	[HASH_QN_HEADER] [binary](16) NULL,
	[HASH_PO_ITEM] [binary](16) NULL,
	[HASH_GM_ITEM] [binary](16) NULL,
	[QMEL_SYSID] [nvarchar](255) NULL,
	[QMEL_MANDT] [nvarchar](255) NULL,
	[QMEL_QMNUM] [nvarchar](255) NULL,
	[QMEL_QMART] [nvarchar](255) NULL,
	[QMEL_QMTXT] [nvarchar](255) NULL,
	[QMEL_ERNAM] [nvarchar](255) NULL,
	[QMEL_ERDAT] [datetime2](7) NULL,
	[QMEL_AENAM] [nvarchar](255) NULL,
	[QMEL_AEDAT] [datetime2](7) NULL,
	[QMEL_QMDAT] [datetime2](7) NULL,
	[QMEL_QMNAM] [nvarchar](255) NULL,
	[QMEL_AUFNR] [nvarchar](255) NULL,
	[QMEL_VBELN] [nvarchar](255) NULL,
	[QMEL_MAWERK] [nvarchar](255) NULL,
	[QMEL_PRUEFLOS] [nvarchar](255) NULL,
	[QMEL_CHARG] [nvarchar](255) NULL,
	[QMEL_EMATNR] [nvarchar](255) NULL,
	[QMEL_EBELN] [nvarchar](255) NULL,
	[QMEL_EBELP] [nvarchar](255) NULL,
	[QMEL_MJAHR] [nvarchar](255) NULL,
	[QMEL_MBLNR] [nvarchar](255) NULL,
	[QMEL_MBLPO] [nvarchar](255) NULL,
	[QMEL_LS_KDAUF] [nvarchar](255) NULL,
	[QMEL_LS_KDPOS] [nvarchar](255) NULL,
	[QMEL_LS_VBELN] [nvarchar](255) NULL,
	[QMEL_LS_POSNR] [nvarchar](255) NULL,
	[QMEL_MGEIG] [decimal](18, 3) NULL,
	[QMEL_MGFRD] [decimal](18, 3) NULL,
	[QMEL_BZMNG] [decimal](18, 3) NULL,
	[QMEL_RKMNG] [decimal](18, 3) NULL,
	[QMEL_RGMNG] [decimal](18, 3) NULL,
	[QMEL_RKDAT] [datetime2](7) NULL,
	[QMEL_KDMAT] [nvarchar](255) NULL,
	[QMEL_IDNLF] [nvarchar](255) NULL,
	[QMEL_SERIALNR] [nvarchar](255) NULL,
	[QMEL_KZLOESCH] [nvarchar](255) NULL,
	[QMEL_ZZ_QFART] [nvarchar](255) NULL,
	[QMEL_ZZ_DELIVERY] [nvarchar](255) NULL,
	[QMEL_EKORG] [nvarchar](255) NULL,
	[QMEL_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_QN_Header] PRIMARY KEY CLUSTERED 
(
	[QMEL_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QN_Header] ADD  CONSTRAINT [DF__QN_Header__SSMA___4D5F7D71]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
