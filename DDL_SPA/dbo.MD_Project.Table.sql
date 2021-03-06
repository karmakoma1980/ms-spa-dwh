USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_Project]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Project](
	[PROJ_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[PROJ_UID] [uniqueidentifier] NULL,
	[HASH_PRJ_UNIQUE] [binary](16) NULL,
	[HASH_PRJ] [binary](16) NULL,
	[HASH_PRJ_PSPID] [binary](16) NULL,
	[HASH_PRJ_POSID] [binary](16) NULL,
	[HASH_PRJ_ORDER] [binary](16) NULL,
	[PROJ_SYSID] [nvarchar](255) NULL,
	[PROJ_MANDT] [nvarchar](255) NULL,
	[PROJ_VBUKR] [nvarchar](255) NULL,
	[PROJ_PSPID] [nvarchar](255) NULL,
	[PROJ_POST1] [nvarchar](255) NULL,
	[PROJ_PLFAZ] [datetime2](7) NULL,
	[PROJ_PLSEZ] [datetime2](7) NULL,
	[PROJ_VERNA] [nvarchar](255) NULL,
	[PROJ_ASTNA] [nvarchar](255) NULL,
	[PROJ_ISTAT] [nvarchar](255) NULL,
	[PROJ_SPRAS] [nvarchar](255) NULL,
	[PROJ_TXT30] [nvarchar](255) NULL,
	[PROJ_PRCTR] [nvarchar](255) NULL,
	[PROJ_POSID] [nvarchar](255) NULL,
	[PROJ_PSPNR] [nvarchar](255) NULL,
	[PROJ_PRPS_POST1] [nvarchar](255) NULL,
	[PROJ_ERDAT] [datetime2](7) NULL,
	[PROJ_AEDAT] [datetime2](7) NULL,
	[PROJ_DATUM] [datetime2](7) NULL,
	[PROJ_ZZBKZ] [nvarchar](255) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_MD_Project] PRIMARY KEY CLUSTERED 
(
	[PROJ_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_Project] ADD  CONSTRAINT [DF__MD_Projec__SSMA___71D1E811]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
