USE [airDB]
GO
/****** Object:  Table [dbo].[user_]    Script Date: 03/16/2018 10:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[uname] [nchar](10) NULL,
	[uloginname] [nchar](10) NULL,
	[utel] [nchar](12) NULL,
	[umoney] [decimal](7, 2) NULL,
	[upass] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rebook]    Script Date: 03/16/2018 10:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rebook](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[bid] [nchar](10) NULL,
	[rtime] [nchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manager]    Script Date: 03/16/2018 10:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manager](
	[mid] [nchar](10) NOT NULL,
	[mname] [nchar](10) NULL,
	[mloginname] [nchar](10) NULL,
	[mpass] [nchar](20) NULL,
 CONSTRAINT [PK_manager] PRIMARY KEY CLUSTERED 
(
	[mid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[flight]    Script Date: 03/16/2018 10:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[flight](
	[fid] [nchar](10) NULL,
	[fname] [nchar](10) NULL,
	[fstartplace] [nchar](10) NULL,
	[fendplace] [nchar](10) NULL,
	[fstarttime] [nchar](15) NULL,
	[fendtime] [nchar](15) NULL,
	[fseat] [int] NULL,
	[fprice] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book]    Script Date: 03/16/2018 10:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book](
	[bid] [int] IDENTITY(1,1) NOT NULL,
	[uid] [nchar](10) NULL,
	[fid] [nchar](10) NULL,
	[btime] [nchar](15) NULL,
	[fdate] [nchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[bid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
