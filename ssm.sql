USE [master]
GO
/****** Object:  Database [ssm]    Script Date: 2019/1/11 19:44:08 ******/
CREATE DATABASE [ssm]
GO
ALTER DATABASE [ssm] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ssm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ssm] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ssm] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ssm] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ssm] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ssm] SET ARITHABORT OFF 
GO
ALTER DATABASE [ssm] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ssm] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ssm] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ssm] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ssm] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ssm] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ssm] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ssm] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ssm] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ssm] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ssm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ssm] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ssm] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ssm] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ssm] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ssm] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ssm] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ssm] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ssm] SET  MULTI_USER 
GO
ALTER DATABASE [ssm] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ssm] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ssm] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ssm] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ssm] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ssm]
GO
/****** Object:  Table [dbo].[tbl_ shopcart]    Script Date: 2019/1/11 19:44:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ shopcart](
	[shopcartID] [int] IDENTITY(1,1) NOT NULL,
	[customerName] [varchar](11) NOT NULL,
	[goodsID] [int] NOT NULL,
	[goodCount] [int] NOT NULL,
 CONSTRAINT [PK_tbl_ shopcart] PRIMARY KEY CLUSTERED 
(
	[shopcartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_admin]    Script Date: 2019/1/11 19:44:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_admin](
	[adminID] [int] IDENTITY(1,1) NOT NULL,
	[adminName] [varchar](11) NOT NULL,
	[password] [varchar](16) NOT NULL,
	[adminTrueName] [varchar](10) NULL,
	[sex] [char](1) NULL,
 CONSTRAINT [PK_tbl_admin] PRIMARY KEY CLUSTERED 
(
	[adminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_customer]    Script Date: 2019/1/11 19:44:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_customer](
	[customerID] [int] IDENTITY(1,1) NOT NULL,
	[customerName] [varchar](11) NOT NULL,
	[password] [varchar](16) NOT NULL,
	[customerTrueName] [varchar](10) NULL,
	[customerAddress] [varchar](50) NULL,
	[sex] [char](1) NULL,
	[customerEmail] [varchar](20) NULL,
	[customerPhone] [varchar](20) NULL,
	[customerRegDate] [smalldatetime] NULL,
 CONSTRAINT [PK_tbl_customer] PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_goods]    Script Date: 2019/1/11 19:44:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_goods](
	[goodsID] [int] IDENTITY(1,1) NOT NULL,
	[goodsName] [varchar](500) NOT NULL,
	[detailedTypeID] [int] NULL,
	[goodsPrice] [money] NULL,
	[goodsInCount] [int] NULL,
	[goodsSellCount] [int] NULL,
	[goodsDescript] [varchar](500) NULL,
	[goodsImageUrl] [varchar](500) NULL,
	[goodsDate] [smalldatetime] NULL,
	[goodsDiscountPrice] [money] NULL,
 CONSTRAINT [PK_tbl_goods] PRIMARY KEY CLUSTERED 
(
	[goodsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_goodstype]    Script Date: 2019/1/11 19:44:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_goodstype](
	[goodsTypeID] [int] IDENTITY(1,1) NOT NULL,
	[goodsTypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_goodstype] PRIMARY KEY CLUSTERED 
(
	[goodsTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_goodstype_detailed]    Script Date: 2019/1/11 19:44:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_goodstype_detailed](
	[detailedTypeID] [int] IDENTITY(1,1) NOT NULL,
	[goodsTypeID] [int] NOT NULL,
	[detailedTypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_goodstype_detailed] PRIMARY KEY CLUSTERED 
(
	[detailedTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_order]    Script Date: 2019/1/11 19:44:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_order](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[customerName] [varchar](11) NOT NULL,
	[orderAddress] [varchar](50) NOT NULL,
	[orderPhone] [varchar](20) NOT NULL,
	[orderAddressee] [varchar](10) NOT NULL,
	[totalMoney] [money] NOT NULL,
	[orderDate] [smalldatetime] NOT NULL,
	[orderState] [char](1) NOT NULL,
 CONSTRAINT [PK_tbl_order] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_order_detailed]    Script Date: 2019/1/11 19:44:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_order_detailed](
	[orderID] [int] NOT NULL,
	[goodsID] [int] NOT NULL,
	[goodsPrice] [money] NOT NULL,
	[goodCount] [int] NOT NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_admin] ON 

INSERT [dbo].[tbl_admin] ([adminID], [adminName], [password], [adminTrueName], [sex]) VALUES (2, N'admin', N'admin', N'李保龙', N'0')
INSERT [dbo].[tbl_admin] ([adminID], [adminName], [password], [adminTrueName], [sex]) VALUES (3, N'admin1', N'admin1', N'标哥', N'1')
SET IDENTITY_INSERT [dbo].[tbl_admin] OFF
SET IDENTITY_INSERT [dbo].[tbl_customer] ON 

INSERT [dbo].[tbl_customer] ([customerID], [customerName], [password], [customerTrueName], [customerAddress], [sex], [customerEmail], [customerPhone], [customerRegDate]) VALUES (1, N'1702040031', N'123456', N'宇哥', N'广西南宁西乡塘区大学西路169号', N'1', N'108080801@qq.com', N'10086', CAST(N'2019-01-01 14:48:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[tbl_customer] OFF
SET IDENTITY_INSERT [dbo].[tbl_goods] ON 

INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (1, N'Budweiser/百威啤酒经典500ml*18听新年欢聚罐礼盒装麦芽整箱包邮', 1, 229.0000, 10, 3, N'Budweiser/百威啤酒经典500ml*18听新年欢聚罐礼盒装麦芽整箱包邮', N'', CAST(N'2019-01-11 00:00:00' AS SmallDateTime), 220.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (2, N'Budweiser/百威啤酒经典醇正500ml*18听麦芽熟啤酒整箱装促销', 1, 109.0000, 15, 2, N'Budweiser/百威啤酒经典醇正500ml*18听麦芽熟啤酒整箱装促销', NULL, CAST(N'2019-01-11 00:00:00' AS SmallDateTime), 100.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (3, N'Budweiser/百威啤酒美式拉格460ml*12瓶装大瓶装麦芽整箱促销', 1, 79.0000, 20, 2, N'Budweiser/百威啤酒美式拉格460ml*12瓶装大瓶装麦芽整箱促销', NULL, CAST(N'2019-01-11 00:00:00' AS SmallDateTime), 76.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (4, N'Budweiser/百威啤酒经典醇正330ml*24罐装麦芽熟啤酒整箱促销', 1, 129.0000, 43, 1, N'Budweiser/百威啤酒经典醇正330ml*24罐装麦芽熟啤酒整箱促销', NULL, CAST(N'2019-01-11 00:00:00' AS SmallDateTime), 125.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (5, N'Budweiser/百威美式拉格啤酒600ml*12瓶整箱装麦芽', 1, 89.0000, 23, 4, N'Budweiser/百威美式拉格啤酒600ml*12瓶整箱装麦芽', NULL, CAST(N'2019-01-11 00:00:00' AS SmallDateTime), 85.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (6, N'百威啤酒经典醇正定制罐500ml*18听罐装熟啤酒包邮', 1, 109.0000, 423, 3, N'百威啤酒经典醇正定制罐500ml*18听罐装熟啤酒包邮', NULL, CAST(N'2019-01-11 00:00:00' AS SmallDateTime), 105.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (7, N'Budweiser/百威啤酒纯生330ml*24罐装麦芽啤酒整箱促销包邮', 1, 139.0000, 232, 3, N'Budweiser/百威啤酒纯生330ml*24罐装麦芽啤酒整箱促销包邮', NULL, CAST(N'2019-01-11 00:00:00' AS SmallDateTime), 130.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (8, N'Budweiser/百威金尊啤酒500ml*12瓶麦芽啤酒瓶装整箱促销包邮', 1, 169.0000, 423, 3, N'Budweiser/百威金尊啤酒500ml*12瓶麦芽啤酒瓶装整箱促销包邮', NULL, CAST(N'2019-01-11 00:00:00' AS SmallDateTime), 160.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (9, N'Budweiser/百威啤酒猪年生肖瓶355ml*6瓶麦芽熟啤酒包邮', 1, 460.0000, 132, 2, N'Budweiser/百威啤酒猪年生肖瓶355ml*6瓶麦芽熟啤酒包邮', NULL, CAST(N'2019-01-11 00:00:00' AS SmallDateTime), 450.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (10, N'百威啤酒2018世界杯国家罐500ml*18听单一国家罐整箱装包邮', 1, 109.0000, 32, 3, N'百威啤酒2018世界杯国家罐500ml*18听单一国家罐整箱装包邮', NULL, CAST(N'2019-01-11 00:00:00' AS SmallDateTime), 100.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (11, N'Budweiser/百威啤酒精酿大师臻藏798ml*1瓶官方正品礼盒装促销', 1, 188.0000, 322, 2, N'Budweiser/百威啤酒精酿大师臻藏798ml*1瓶官方正品礼盒装促销', NULL, CAST(N'2019-01-11 00:00:00' AS SmallDateTime), 177.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (12, N'蓝带啤酒经典11度500ml*12罐听装优质麦芽醇厚口感黄啤酒整箱装', 1, 67.0000, 323, 2, N'蓝带啤酒经典11度500ml*12罐听装优质麦芽醇厚口感黄啤酒整箱装', NULL, NULL, 65.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (13, N'蓝带领航者纪念版1L*1单支瓶装高浓度进口麦芽橡木桶高端精酿啤酒', 1, 63.0000, 213, 2, N'蓝带领航者纪念版1L*1单支瓶装高浓度进口麦芽橡木桶高端精酿啤酒', NULL, NULL, 60.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (14, N'蓝带将军啤酒500ml*12罐装优质麦芽IPA精酿橡木桶浓色啤酒整箱装', 1, 102.0000, 412, 2, N'蓝带将军啤酒500ml*12罐装优质麦芽IPA精酿橡木桶浓色啤酒整箱装', NULL, NULL, 100.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (15, N'蓝带将军啤酒500ml*12玻璃瓶装IPA精酿橡木桶优质浓色啤酒整箱装', 1, 106.0000, 43, 2, N'蓝带将军啤酒500ml*12玻璃瓶装IPA精酿橡木桶优质浓色啤酒整箱装', NULL, NULL, 99.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (16, N'6听 拾捌精酿 随便先生IPA啤酒 国产精酿 330ML 启德', 2, 120.0000, 123, 2, N'6听 拾捌精酿 随便先生IPA啤酒 国产精酿 330ML 启德', NULL, NULL, 110.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (17, N'4瓶组合 国产精酿 京A啤酒 凸豪金/阿白/工人/飞拳IPA啤酒 330ml', 2, 76.0000, 443, 2, N'4瓶组合 国产精酿 京A啤酒 凸豪金/阿白/工人/飞拳IPA啤酒 330ml', NULL, NULL, 72.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (18, N'牛啤堂 帝都海盐古斯/牛壁小麦（易拉罐）330mlx6听礼盒装', 2, 150.0000, 43, 2, N'牛啤堂 帝都海盐古斯/牛壁小麦（易拉罐）330mlx6听礼盒装', NULL, NULL, 140.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (19, N'6瓶 金色岸线啤酒 国产精酿 GOLDEN BEACH 330ML 启德', 2, 79.0000, 45, 2, N'6瓶 金色岸线啤酒 国产精酿 GOLDEN BEACH 330ML 启德', NULL, NULL, 70.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (20, N'整箱 莱宝黑色兔子哈密瓜味小麦啤酒307ml 精酿啤酒水果味啤酒', 2, 185.0000, 234, 23, N'整箱 莱宝黑色兔子哈密瓜味小麦啤酒307ml 精酿啤酒水果味啤酒', NULL, NULL, 180.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (21, N'24听装 不接受评价社交印度淡色艾尔啤酒 国产精酿 330ML 启德', 2, 299.0000, 43, 34, N'24听装 不接受评价社交印度淡色艾尔啤酒 国产精酿 330ML 启德', NULL, NULL, 280.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (22, N'整箱 国产福佳白啤酒Hoegaarden 精酿啤酒330ML 启德', 2, 120.0000, 546, 233, N'整箱 国产福佳白啤酒Hoegaarden 精酿啤酒330ML 启德', NULL, NULL, 120.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (23, N'6瓶 拳击猫搏击者超淡色艾尔啤酒 国产精酿啤酒 355ml 启德酒水', 2, 79.0000, 43, 2, N'6瓶 拳击猫搏击者超淡色艾尔啤酒 国产精酿啤酒 355ml 启德酒水', NULL, NULL, 70.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (24, N'整箱 莱宝黑色兔子蓝莓味小麦啤酒307ml 精酿啤酒水果味啤酒启德', 2, 185.0000, 456, 433, N'整箱 莱宝黑色兔子蓝莓味小麦啤酒307ml 精酿啤酒水果味啤酒启德', NULL, NULL, 180.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (25, N'6听 中国精酿婴儿肥 BABY LAGER 婴儿肥茉莉花茶拉格啤酒500ml', 2, 60.0000, 432, 31, N'6听 中国精酿婴儿肥 BABY LAGER 婴儿肥茉莉花茶拉格啤酒500ml', NULL, NULL, 55.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (26, N'整箱 巴兰德真味啤酒 精酿拉格 世界杯啤酒 330ML 国产精酿 启德', 2, 220.0000, 43, 2, N'整箱 巴兰德真味啤酒 精酿拉格 世界杯啤酒 330ML 国产精酿 启德', NULL, NULL, 210.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (27, N'波兰进口伏特加 洋酒 MONACO摩纳哥至尊伏特加 700ML 启德', 3, 35.0000, 53, 2, N'波兰进口伏特加 洋酒 MONACO摩纳哥至尊伏特加 700ML 启德', NULL, NULL, 30.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (28, N'英国优质利口酒 DRAMBUIE 杜林标利娇酒力娇酒 700ML 启德', 3, 125.0000, 76, 3, N'英国优质利口酒 DRAMBUIE 杜林标利娇酒力娇酒 700ML 启德', NULL, NULL, 120.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (29, N'6瓶 内华达 热带鱼雷印度淡色艾尔啤酒 美国进口 355ML 启德', 3, 145.0000, 45, 2, N'6瓶 内华达 热带鱼雷印度淡色艾尔啤酒 美国进口 355ML 启德', NULL, NULL, 140.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (30, N'6瓶 WELLS维尔斯焦香艾尔啤酒 英国进口精酿 330ML 启德', 3, 99.0000, 55, 3, N'6瓶 WELLS维尔斯焦香艾尔啤酒 英国进口精酿 330ML 启德', NULL, NULL, 99.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (31, N'6瓶BROTHER/兄弟苹果西打酒 英国进口西打酒 275ml 启德', 3, 120.0000, 42, 34, N'6瓶BROTHER/兄弟苹果西打酒 英国进口西打酒 275ml 启德', NULL, NULL, 118.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (32, N'整箱 武汉二厂汽百香果汽水玻璃瓶装 网红碳酸饮料 275ml 启德', 4, 180.0000, 55, 32, N'整箱 武汉二厂汽百香果汽水玻璃瓶装 网红碳酸饮料 275ml 启德', NULL, NULL, 175.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (33, N'单瓶 SK牌葡萄饮料 塞浦路斯进口果汁 1L 启德酒水', 4, 14.0000, 556, 55, N'单瓶 SK牌葡萄饮料 塞浦路斯进口果汁 1L 启德酒水', NULL, NULL, 13.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (34, N'6瓶 宾得宝青柠汁饮料375mL 澳大利亚进口Bundaberg 宾得宝汽水', 4, 90.0000, 555, 44, N'6瓶 宾得宝青柠汁饮料375mL 澳大利亚进口Bundaberg 宾得宝汽水', NULL, NULL, 85.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (35, N'6瓶 宾得宝葡萄柚汁饮料375mL 澳大利亚进口Bundaberg 宾得宝汽水', 4, 90.0000, 44, 33, N'6瓶 宾得宝葡萄柚汁饮料375mL 澳大利亚进口Bundaberg 宾得宝汽水', NULL, NULL, 87.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (36, N'单瓶 SK牌菠萝汁饮料 塞浦路斯进口果汁 1L 启德酒水', 4, 14.0000, 54, 2, N'单瓶 SK牌菠萝汁饮料 塞浦路斯进口果汁 1L 启德酒水', NULL, NULL, 13.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (37, N'促销 单瓶 SK牌橙汁饮料 塞浦路斯进口果汁 1L 启德酒水', 4, 14.0000, 55, 4, N'促销 单瓶 SK牌橙汁饮料 塞浦路斯进口果汁 1L 启德酒水', NULL, NULL, 13.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (38, N'6听 屈臣氏 Watsons 苏打水 苏打汽水拉罐330ml', 4, 33.0000, 566, 44, N'6听 屈臣氏 Watsons 苏打水 苏打汽水拉罐330ml', NULL, NULL, 32.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (39, N'整箱 怡泉 汤力水 330ml*24听/罐 调制鸡尾酒 启德酒水', 4, 70.0000, 554, 3, N'整箱 怡泉 汤力水 330ml*24听/罐 调制鸡尾酒 启德酒水', NULL, NULL, 65.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (40, N'整箱 巴黎水青柠天然矿泉水330ml*24瓶 法国进口青柠味 Perrie', 4, 138.0000, 53, 5, N'整箱 巴黎水青柠天然矿泉水330ml*24瓶 法国进口青柠味 Perrie', NULL, NULL, 135.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (41, N'整箱 evian依云天然矿泉水(玻璃瓶) 20瓶 330mL装法国欢乐颂同款', 4, 175.0000, 542, 44, N'整箱 evian依云天然矿泉水(玻璃瓶) 20瓶 330mL装法国欢乐颂同款', NULL, NULL, 170.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (42, N'恒记酸梅膏1000g浓缩酸梅汤乌梅汁 酸梅汁饮料12瓶装浓缩果汁', 4, 165.0000, 44, 3, N'恒记酸梅膏1000g浓缩酸梅汤乌梅汁 酸梅汁饮料12瓶装浓缩果汁', NULL, NULL, 160.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (43, N'雀巢原味1+2咖啡速溶三合一15g*100条简装咖啡粉冲饮品18年8月产', 5, 81.8000, 42, 23, N'雀巢原味1+2咖啡速溶三合一15g*100条简装咖啡粉冲饮品18年8月产', NULL, NULL, 81.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (44, N'雀巢咖啡30条简装特浓原味1+2 三合一微研磨速溶咖啡粉 30杯包邮', 5, 27.0000, 55, 3, N'雀巢咖啡30条简装特浓原味1+2 三合一微研磨速溶咖啡粉 30杯包邮', NULL, NULL, 26.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (45, N'18年9月产雀巢咖啡原味48条1+2速溶咖啡15g*48杯720g盒装 3盒包邮', 5, 36.9000, 542, 3, N'18年9月产雀巢咖啡原味48条1+2速溶咖啡15g*48杯720g盒装 3盒包邮', NULL, NULL, 35.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (46, N'雀巢金牌馆藏咖啡5条装速溶三合一咖啡 丝滑拿铁卡布奇诺10盒包邮', 5, 10.9000, 23, 2, N'雀巢金牌馆藏咖啡5条装速溶三合一咖啡 丝滑拿铁卡布奇诺10盒包邮', NULL, NULL, 10.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (47, N'雀巢1+2咖啡7条装原味特浓味奶香味无糖味速溶即溶咖啡粉三合一', 5, 14.9000, 44, 2, N'雀巢1+2咖啡7条装原味特浓味奶香味无糖味速溶即溶咖啡粉三合一', NULL, NULL, 14.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (48, N'雀巢原味咖啡100方袋简装1+2三合一咖啡粉实惠装19年8月到期包邮', 5, 78.8000, 65, 5, N'雀巢原味咖啡100方袋简装1+2三合一咖啡粉实惠装19年8月到期包邮', NULL, NULL, 78.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (49, N'高乐高可可粉500g罐装固体饮料浓香巧克力粉搭配牛奶热饮品早餐', 6, 78.0000, 54, 3, N'高乐高可可粉500g罐装固体饮料浓香巧克力粉搭配牛奶热饮品早餐', NULL, NULL, 77.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (50, N'高乐高可可粉固体冲饮品速溶即溶搭配牛奶饮品浓香可可早餐200g袋', 6, 14.6000, 54, 2, N'高乐高可可粉固体冲饮品速溶即溶搭配牛奶饮品浓香可可早餐200g袋', NULL, NULL, 14.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (51, N'小猪佩奇棒棒糖520g桶装VC什锦水果味牛奶味儿童零食糖果分享礼物', 7, 29.8000, 5454, 3, N'小猪佩奇棒棒糖520g桶装VC什锦水果味牛奶味儿童零食糖果分享礼物', NULL, NULL, 29.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (52, N'旺仔QQ糖果汁软糖橡皮水果糖多种口味休闲零食糖果大礼包20g*20包', 7, 15.5000, 47, 45, N'旺仔QQ糖果汁软糖橡皮水果糖多种口味休闲零食糖果大礼包20g*20包', NULL, NULL, 15.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (53, N'雀巢宝路有个圈的薄荷糖经典劲爽薄荷压片清凉糖果750g散装包邮', 7, 12.8000, 442, 44, N'雀巢宝路有个圈的薄荷糖经典劲爽薄荷压片清凉糖果750g散装包邮', NULL, NULL, 12.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (54, N'金稻谷雪糕冰激凌水果味猫爪创意造型棒棒糖网红零食糖果2盒包邮 ', 7, 18.9000, 44, 33, N'金稻谷雪糕冰激凌水果味猫爪创意造型棒棒糖网红零食糖果2盒包邮 ', NULL, NULL, 18.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (55, N'棉花糖 零食果味伊卡乐棉花糖150g 牛轧糖烘焙原料 怀旧糖果软糖', 7, 2.9800, 54, 33, N'棉花糖 零食果味伊卡乐棉花糖150g 牛轧糖烘焙原料 怀旧糖果软糖', NULL, NULL, 2.5000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (56, N'滨崎迪士尼果汁软糖水果糖橡皮糖qq糖休闲食品糖果105g铁盒 包邮', 7, 4.5900, 32, 2, N'滨崎迪士尼果汁软糖水果糖橡皮糖qq糖休闲食品糖果105g铁盒 包邮', NULL, NULL, 4.5000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (57, N'阿尔卑斯条装牛奶软糖33g 原味牛奶酸奶葡萄零食糖果 30只包邮 ', 7, 2.9000, 44, 2, N'阿尔卑斯条装牛奶软糖33g 原味牛奶酸奶葡萄零食糖果 30只包邮 ', NULL, NULL, 2.5000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (58, N'雀巢趣满果软糖140gx3桶装果汁果味儿童水果软糖果送女友礼物包邮', 7, 35.8000, 44, 23, N'雀巢趣满果软糖140gx3桶装果汁果味儿童水果软糖果送女友礼物包邮', NULL, NULL, 35.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (59, N'雀巢糖果 趣满果软糖70g迷你桶装杂果热带果汁果味水果糖3条包邮', 7, 7.9000, 332, 33, N'雀巢糖果 趣满果软糖70g迷你桶装杂果热带果汁果味水果糖3条包邮', NULL, NULL, 7.5000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (60, N'果凝多巧果凝巧克力+纯正果凝巧克力夹心果糕蜜饯零食糖果48g袋装', 7, 1.9800, 223, 45, N'果凝多巧果凝巧克力+纯正果凝巧克力夹心果糕蜜饯零食糖果48g袋装', NULL, NULL, 1.5000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (61, N'旺旺 黑妞果汁软糖 儿童糖果礼物 38g/18条 休闲零食1盒多省包邮', 7, 37.5000, 23, 2, N'旺旺 黑妞果汁软糖 儿童糖果礼物 38g/18条 休闲零食1盒多省包邮', NULL, NULL, 35.5000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (62, N'伊利原味牛奶片32g 多种口味营养干吃奶片 内蒙古特产20袋包邮 ', 8, 2.1000, 45, 42, N'伊利原味牛奶片32g 多种口味营养干吃奶片 内蒙古特产20袋包邮 ', NULL, NULL, 2.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (63, N'伊利原味牛奶片160g盒装干吃奶片糖儿童高钙奶贝清真零食 4盒包邮', 8, 12.6000, 43, 2, N'伊利原味牛奶片160g盒装干吃奶片糖儿童高钙奶贝清真零食 4盒包邮', NULL, NULL, 12.2000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (64, N'喜之郎果冻整箱批发婚宴喜庆糖果礼合装多种口味大礼包包邮', 9, 20.9000, 44, 42, N'喜之郎果冻整箱批发婚宴喜庆糖果礼合装多种口味大礼包包邮', NULL, NULL, 20.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (65, N'喜之郎蜜桔果肉果冻990g加赠30g糖果果冻布丁大包装零食', 9, 28.8000, 34, 33, N'喜之郎蜜桔果肉果冻990g加赠30g糖果果冻布丁大包装零食', NULL, NULL, 28.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (66, N'马来西亚进口可康多口味椰纤果肉果冻布丁80gX6杯水果味吃货零食', 9, 10.9000, 23, 4, N'马来西亚进口可康多口味椰纤果肉果冻布丁80gX6杯水果味吃货零食', NULL, NULL, 10.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (67, N'喜之郎cici果汁果冻爽特惠装150g*10吸的冻怀旧零食品', 9, 26.7000, 445, 44, N'喜之郎cici果汁果冻爽特惠装150g*10吸的冻怀旧零食品', NULL, NULL, 26.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (68, N'亲亲果肉果冻桔子125g*6杯儿童高颜值零食糖果创意送女友布丁', 9, 25.9000, 45, 33, N'亲亲果肉果冻桔子125g*6杯儿童高颜值零食糖果创意送女友布丁', NULL, NULL, 25.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (69, N'【三只松鼠_垦丁的晚霞360g_果味果冻】休闲零食果味什锦果肉布丁', 9, 59.0000, 23, 4, N'【三只松鼠_垦丁的晚霞360g_果味果冻】休闲零食果味什锦果肉布丁', NULL, NULL, 55.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (70, N'阿尔卑斯棒棒糖多种水果牛奶混合口味经典棒棒糖果喜糖礼品80支装 ', 10, 17.5000, 34, 4, N'阿尔卑斯棒棒糖多种水果牛奶混合口味经典棒棒糖果喜糖礼品80支装 ', NULL, NULL, 17.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (71, N'清晗可伶可俐含片无糖水果维C爽口爽喉清凉无糖压片糖12g*20袋 ', 10, 28.5000, 42, 3, N'清晗可伶可俐含片无糖水果维C爽口爽喉清凉无糖压片糖12g*20袋 ', NULL, NULL, 25.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (72, N'珍宝珠干杯乐硬糖棒棒糖48支啤酒杯热带水果味糖果创意造型礼物', 10, 21.5100, 421, 34, N'珍宝珠干杯乐硬糖棒棒糖48支啤酒杯热带水果味糖果创意造型礼物', NULL, NULL, 21.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (73, N'清晗可伶可俐无糖爽口喉含片咀嚼片维C压片糖薄荷糖水果糖果12g', 10, 1.9500, 21, 2, N'清晗可伶可俐无糖爽口喉含片咀嚼片维C压片糖薄荷糖水果糖果12g', NULL, NULL, 1.9000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (74, N'金稻谷超级飞侠五彩波板棒棒糖彩虹糖果礼品节日礼物创意糖85g支', 10, 5.9000, 34, 23, N'金稻谷超级飞侠五彩波板棒棒糖彩虹糖果礼品节日礼物创意糖85g支', NULL, NULL, 5.5000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (75, N'诺梵松露型黑巧克力礼盒装送女友零食400g散装批发', 11, 30.0000, 43, 3, N'诺梵松露型黑巧克力礼盒装送女友零食400g散装批发', NULL, NULL, 25.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (76, N'KISSES好时之吻水滴巧克力500g袋装 婚庆喜糖散装批发口味多选', 11, 49.0000, 32, 1, N'KISSES好时之吻水滴巧克力500g袋装 婚庆喜糖散装批发口味多选', NULL, NULL, 45.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (77, N'徐福记雀巢奇欧比金币金条金心元宝黑巧克力年货散装', 11, 23.0000, 44, 23, N'徐福记雀巢奇欧比金币金条金心元宝黑巧克力年货散装', NULL, NULL, 22.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (78, N'网红美食手工饼干点心办公室零食', 12, 13.8000, 22, 20, N'网红美食手工饼干点心办公室零食', NULL, NULL, 13.5000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (79, N'办公室休闲零食早餐饼干糕点', 12, 16.9000, 32, 12, N'办公室休闲零食早餐饼干糕点', NULL, NULL, 15.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (80, N'丹麦原装进口Kjeldsens/蓝罐曲奇饼干908g礼盒装新老包装随机', 12, 118.0000, 23, 21, N'丹麦原装进口Kjeldsens/蓝罐曲奇饼干908g礼盒装新老包装随机', NULL, NULL, 115.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (81, N'Franzzi/法丽兹巧克力曲奇量贩装4口味380g饼干零食网红大礼包', 12, 39.9000, 23, 2, N'Franzzi/法丽兹巧克力曲奇量贩装4口味380g饼干零食网红大礼包', NULL, NULL, 35.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (82, N'Danisa皇冠丹麦曲奇饼干72g*6盒黄油味婚庆伴手礼进口零食小吃', 12, 27.9000, 32, 12, N'Danisa皇冠丹麦曲奇饼干72g*6盒黄油味婚庆伴手礼进口零食小吃', NULL, NULL, 25.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (83, N'亿滋趣多多巧克力曲奇饼干原味285g*4 零食分享装', 12, 45.9000, 23, 12, N'亿滋趣多多巧克力曲奇饼干原味285g*4 零食分享装', NULL, NULL, 45.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (84, N'lipo面包干300g 越南进口利葡早餐食品面包片 干蛋糕零食饼干', 13, 49.8000, 32, 12, N'lipo面包干300g 越南进口利葡早餐食品面包片 干蛋糕零食饼干', NULL, NULL, 48.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (85, N'abd吐司面包活力一餐营养早餐面包口袋夹心零食糕点食品蛋糕整箱', 13, 28.9000, 23, 12, N'abd吐司面包活力一餐营养早餐面包口袋夹心零食糕点食品蛋糕整箱', NULL, NULL, 25.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (86, N'ABD乳酸菌小口袋面包200g夹心吐司面包早点点心零食营养早餐', 13, 10.1000, 23, 2, N'ABD乳酸菌小口袋面包200g夹心吐司面包早点点心零食营养早餐', NULL, NULL, 10.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (87, N'abd吐司面包360g口袋面包营养早餐食品零食休闲小吃批发', 13, 9.9000, 143, 3, N'abd吐司面包360g口袋面包营养早餐食品零食休闲小吃批发', NULL, NULL, 9.5000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (88, N'三惠蜜方鲜蛋糕1kg整箱 特产西式早餐软蒸小面包鸡蛋糕点心零食品', 13, 13.8000, 43, 23, N'三惠蜜方鲜蛋糕1kg整箱 特产西式早餐软蒸小面包鸡蛋糕点心零食品', NULL, NULL, 13.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (89, N'ABD丹麦鲜面包500g手撕面包整箱营养早餐食品糕点美食零食批发', 13, 12.9000, 43, 2, N'ABD丹麦鲜面包500g手撕面包整箱营养早餐食品糕点美食零食批发', NULL, NULL, 12.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (90, N'ABD吐司面包420g手撕面包夹心糕点蛋糕零食食品整箱面包包邮', 13, 15.8000, 23, 2, N'ABD吐司面包420g手撕面包夹心糕点蛋糕零食食品整箱面包包邮', NULL, NULL, 15.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (91, N'ABD丹麦鲜面包1Kg手撕面包整箱营养早餐食品糕点美食零食批发', 13, 22.8000, 42, 33, N'ABD丹麦鲜面包1Kg手撕面包整箱营养早餐食品糕点美食零食批发', NULL, NULL, 22.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (92, N'ABD乳酸菌小口袋面包680g*2箱夹心吐司面包早点点心零食营养早餐', 13, 49.8000, 43, 32, N'ABD乳酸菌小口袋面包680g*2箱夹心吐司面包早点点心零食营养早餐', NULL, NULL, 49.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (93, N'ABD胡萝卜吐司面包1Kg营养早餐手撕面包夹心糕点蛋糕零食整箱批发', 13, 29.8000, 56, 5, N'ABD胡萝卜吐司面包1Kg营养早餐手撕面包夹心糕点蛋糕零食整箱批发', NULL, NULL, 29.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (94, N'星芙奶油夹心虎皮蛋糕800g整箱 蒸蛋糕小面包 早餐糕点心蛋糕零食 ', 13, 24.8000, 43, 21, N'星芙奶油夹心虎皮蛋糕800g整箱 蒸蛋糕小面包 早餐糕点心蛋糕零食 ', NULL, NULL, 24.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (95, N'abd岩烧吐司面包营养早餐手撕面包夹心糕点蛋糕零食食品整箱批发', 13, 23.8000, 32, 2, N'abd岩烧吐司面包营养早餐手撕面包夹心糕点蛋糕零食食品整箱批发', NULL, NULL, 23.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (96, N'abd蛋黄酥330g/盒6只装榴莲红豆莲蓉味手工传统点心糕点零食包邮', 14, 19.8000, 23, 1, N'abd蛋黄酥330g/盒6只装榴莲红豆莲蓉味手工传统点心糕点零食包邮', NULL, NULL, 19.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (97, N'abd榴莲饼1000g 新鲜特产传统糕点点心整箱装榴莲酥零食', 14, 29.8000, 42, 3, N'abd榴莲饼1000g 新鲜特产传统糕点点心整箱装榴莲酥零食', NULL, NULL, 28.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (98, N'中冠花生酥500g*2袋装特产糖果花生糖休闲零食酥糖喜糖年货圣诞', 14, 26.8000, 432, 42, N'中冠花生酥500g*2袋装特产糖果花生糖休闲零食酥糖喜糖年货圣诞', NULL, NULL, 26.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (99, N'阿婆家的麻薯180g爆浆麻薯糯米糍好吃网红宿舍小零食软糯的糕点', 14, 9.9000, 21, 3, N'阿婆家的麻薯180g爆浆麻薯糯米糍好吃网红宿舍小零食软糯的糕点', NULL, NULL, 9.0000)
GO
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (100, N'ABD岩烧饼1000g蓝莓饼凤梨饼榴莲饼糕点休闲办公零食特产点心', 14, 29.9000, 32, 4, N'ABD岩烧饼1000g蓝莓饼凤梨饼榴莲饼糕点休闲办公零食特产点心', NULL, NULL, 29.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (101, N'ABD榴莲饼300g零食榴莲酥休闲食品小吃美食 饼干点心榴莲酥包邮', 14, 15.8000, 42, 32, N'ABD榴莲饼300g零食榴莲酥休闲食品小吃美食 饼干点心榴莲酥包邮', NULL, NULL, 15.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (102, N'ABD细沙水果芒果蓝莓草莓榴莲饼200g袋装糕点夹心早餐茶零食', 14, 10.8000, 32, 21, N'ABD细沙水果芒果蓝莓草莓榴莲饼200g袋装糕点夹心早餐茶零食', NULL, NULL, 2321.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (103, N'三惠手工麻花400g特产好吃零食小吃美食传统糕点点心袋装食品', 14, 15.8000, 32, 21, N'三惠手工麻花400g特产好吃零食小吃美食传统糕点点心袋装食品', NULL, NULL, 15.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (104, N'三惠尖角脆500g 包邮锅巴薯片薯条怀旧儿童膨化食品零食 美食小吃', 15, 10.8000, 23, 12, N'三惠尖角脆500g 包邮锅巴薯片薯条怀旧儿童膨化食品零食 美食小吃', NULL, NULL, 10.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (105, N'阿婆家的大卫贝肯熊薯片38g休闲食品零食小吃礼包膨化组合装包邮', 15, 15.1000, 23, 42, N'阿婆家的大卫贝肯熊薯片38g休闲食品零食小吃礼包膨化组合装包邮', NULL, NULL, 14.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (106, N'忆之味山药脆片网红食品脆薯片薄片锅巴好吃的办公室休闲零食小吃 ', 15, 9.9000, 21, 3, N'忆之味山药脆片网红食品脆薯片薄片锅巴好吃的办公室休闲零食小吃 ', NULL, NULL, 9.5000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (107, N'水军锅巴蛋黄锅巴手工休闲食品网红零食办公室小吃海鲜糯米锅巴', 15, 19.8000, 232, 132, N'水军锅巴蛋黄锅巴手工休闲食品网红零食办公室小吃海鲜糯米锅巴', NULL, NULL, 19.8000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (108, N'印尼Gery芝莉奶酪味抹茶味黑巧克力夹心饼干进口芝士椰子零食', 15, 9.8000, 32, 12, N'印尼Gery芝莉奶酪味抹茶味黑巧克力夹心饼干进口芝士椰子零食', NULL, NULL, 9.5000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (109, N'阿婆家的大卫贝肯熊薯片70g休闲食品零食小吃礼包膨化组合装包邮', 15, 9.9000, 32, 12, N'阿婆家的大卫贝肯熊薯片70g休闲食品零食小吃礼包膨化组合装包邮', NULL, NULL, 9.5000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (110, N'宇仔大刀肉辣条8090后儿时怀旧素零食大礼包麻辣小吃湖南重庆特产', 16, 14.0000, 54, 23, N'宇仔大刀肉辣条8090后儿时怀旧素零食大礼包麻辣小吃湖南重庆特产', NULL, NULL, 13.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (111, N'卫龙网红辣条亲嘴烧小面筋魔芋爽麻辣一箱小吃零食休闲食品大礼包', 16, 59.9000, 23, 21, N'卫龙网红辣条亲嘴烧小面筋魔芋爽麻辣一箱小吃零食休闲食品大礼包', NULL, NULL, 59.5000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (112, N'大面筋106g*5 卫龙辣条零食大礼包儿时网红小吃', 16, 22.5000, 12, 2, N'大面筋106g*5 卫龙辣条零食大礼包儿时网红小吃', NULL, NULL, 21.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (113, N'好味屋手撕素肉50包豆干制品素牛排卷宿舍休闲怀旧麻辣条小吃零食', 16, 18.8000, 45, 23, N'好味屋手撕素肉50包豆干制品素牛排卷宿舍休闲怀旧麻辣条小吃零食', NULL, NULL, 19.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (114, N'好味屋魔芋辣条素毛肚50包素食馋魔芋丝爽麻辣儿时宿舍小包装零食', 16, 18.0000, 43, 23, N'好味屋魔芋辣条素毛肚50包素食馋魔芋丝爽麻辣儿时宿舍小包装零食', NULL, NULL, 17.0000)
INSERT [dbo].[tbl_goods] ([goodsID], [goodsName], [detailedTypeID], [goodsPrice], [goodsInCount], [goodsSellCount], [goodsDescript], [goodsImageUrl], [goodsDate], [goodsDiscountPrice]) VALUES (115, N'源氏老式大辣片网红辣皮辣条小零食小吃休闲食品麻辣儿时颖儿同款', 16, 25.8000, 32, 12, N'源氏老式大辣片网红辣皮辣条小零食小吃休闲食品麻辣儿时颖儿同款', NULL, NULL, 25.0000)
SET IDENTITY_INSERT [dbo].[tbl_goods] OFF
SET IDENTITY_INSERT [dbo].[tbl_goodstype] ON 

INSERT [dbo].[tbl_goodstype] ([goodsTypeID], [goodsTypeName]) VALUES (1, N'酒水饮料')
INSERT [dbo].[tbl_goodstype] ([goodsTypeID], [goodsTypeName]) VALUES (2, N'咖啡冲饮')
INSERT [dbo].[tbl_goodstype] ([goodsTypeID], [goodsTypeName]) VALUES (3, N'糖果系列')
INSERT [dbo].[tbl_goodstype] ([goodsTypeID], [goodsTypeName]) VALUES (4, N'零食糕点')
SET IDENTITY_INSERT [dbo].[tbl_goodstype] OFF
SET IDENTITY_INSERT [dbo].[tbl_goodstype_detailed] ON 

INSERT [dbo].[tbl_goodstype_detailed] ([detailedTypeID], [goodsTypeID], [detailedTypeName]) VALUES (1, 1, N'啤酒风味')
INSERT [dbo].[tbl_goodstype_detailed] ([detailedTypeID], [goodsTypeID], [detailedTypeName]) VALUES (2, 1, N'中国精酿')
INSERT [dbo].[tbl_goodstype_detailed] ([detailedTypeID], [goodsTypeID], [detailedTypeName]) VALUES (3, 1, N'各国精酿')
INSERT [dbo].[tbl_goodstype_detailed] ([detailedTypeID], [goodsTypeID], [detailedTypeName]) VALUES (4, 1, N'果汁饮料')
INSERT [dbo].[tbl_goodstype_detailed] ([detailedTypeID], [goodsTypeID], [detailedTypeName]) VALUES (5, 2, N'速溶咖啡')
INSERT [dbo].[tbl_goodstype_detailed] ([detailedTypeID], [goodsTypeID], [detailedTypeName]) VALUES (6, 2, N'固体饮料')
INSERT [dbo].[tbl_goodstype_detailed] ([detailedTypeID], [goodsTypeID], [detailedTypeName]) VALUES (7, 3, N'软糖')
INSERT [dbo].[tbl_goodstype_detailed] ([detailedTypeID], [goodsTypeID], [detailedTypeName]) VALUES (8, 3, N'奶片')
INSERT [dbo].[tbl_goodstype_detailed] ([detailedTypeID], [goodsTypeID], [detailedTypeName]) VALUES (9, 3, N'果冻')
INSERT [dbo].[tbl_goodstype_detailed] ([detailedTypeID], [goodsTypeID], [detailedTypeName]) VALUES (10, 3, N'硬糖')
INSERT [dbo].[tbl_goodstype_detailed] ([detailedTypeID], [goodsTypeID], [detailedTypeName]) VALUES (11, 3, N'巧克力')
INSERT [dbo].[tbl_goodstype_detailed] ([detailedTypeID], [goodsTypeID], [detailedTypeName]) VALUES (12, 4, N'曲奇饼干')
INSERT [dbo].[tbl_goodstype_detailed] ([detailedTypeID], [goodsTypeID], [detailedTypeName]) VALUES (13, 4, N'西式糕点')
INSERT [dbo].[tbl_goodstype_detailed] ([detailedTypeID], [goodsTypeID], [detailedTypeName]) VALUES (14, 4, N'传统糕点')
INSERT [dbo].[tbl_goodstype_detailed] ([detailedTypeID], [goodsTypeID], [detailedTypeName]) VALUES (15, 4, N'膨化食品')
INSERT [dbo].[tbl_goodstype_detailed] ([detailedTypeID], [goodsTypeID], [detailedTypeName]) VALUES (16, 4, N'辣条')
SET IDENTITY_INSERT [dbo].[tbl_goodstype_detailed] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_adminName]    Script Date: 2019/1/11 19:44:08 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_adminName] ON [dbo].[tbl_admin]
(
	[adminName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_customerName]    Script Date: 2019/1/11 19:44:08 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_customerName] ON [dbo].[tbl_customer]
(
	[customerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_ shopcart]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ shopcart_tbl_customer] FOREIGN KEY([customerName])
REFERENCES [dbo].[tbl_customer] ([customerName])
GO
ALTER TABLE [dbo].[tbl_ shopcart] CHECK CONSTRAINT [FK_tbl_ shopcart_tbl_customer]
GO
ALTER TABLE [dbo].[tbl_ shopcart]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ shopcart_tbl_goods] FOREIGN KEY([goodsID])
REFERENCES [dbo].[tbl_goods] ([goodsID])
GO
ALTER TABLE [dbo].[tbl_ shopcart] CHECK CONSTRAINT [FK_tbl_ shopcart_tbl_goods]
GO
ALTER TABLE [dbo].[tbl_goods]  WITH CHECK ADD  CONSTRAINT [FK_tbl_goods_tbl_goodstype_detailed] FOREIGN KEY([detailedTypeID])
REFERENCES [dbo].[tbl_goodstype_detailed] ([detailedTypeID])
GO
ALTER TABLE [dbo].[tbl_goods] CHECK CONSTRAINT [FK_tbl_goods_tbl_goodstype_detailed]
GO
ALTER TABLE [dbo].[tbl_goodstype_detailed]  WITH CHECK ADD  CONSTRAINT [FK_tbl_goodstype_detailed_tbl_goodstype] FOREIGN KEY([goodsTypeID])
REFERENCES [dbo].[tbl_goodstype] ([goodsTypeID])
GO
ALTER TABLE [dbo].[tbl_goodstype_detailed] CHECK CONSTRAINT [FK_tbl_goodstype_detailed_tbl_goodstype]
GO
ALTER TABLE [dbo].[tbl_order]  WITH CHECK ADD  CONSTRAINT [FK_tbl_order_tbl_customer] FOREIGN KEY([customerName])
REFERENCES [dbo].[tbl_customer] ([customerName])
GO
ALTER TABLE [dbo].[tbl_order] CHECK CONSTRAINT [FK_tbl_order_tbl_customer]
GO
ALTER TABLE [dbo].[tbl_order_detailed]  WITH CHECK ADD  CONSTRAINT [FK_tbl_order_detailed_tbl_goods] FOREIGN KEY([goodsID])
REFERENCES [dbo].[tbl_goods] ([goodsID])
GO
ALTER TABLE [dbo].[tbl_order_detailed] CHECK CONSTRAINT [FK_tbl_order_detailed_tbl_goods]
GO
ALTER TABLE [dbo].[tbl_order_detailed]  WITH CHECK ADD  CONSTRAINT [FK_tbl_order_detailed_tbl_order] FOREIGN KEY([orderID])
REFERENCES [dbo].[tbl_order] ([orderID])
GO
ALTER TABLE [dbo].[tbl_order_detailed] CHECK CONSTRAINT [FK_tbl_order_detailed_tbl_order]
GO
USE [master]
GO
ALTER DATABASE [ssm] SET  READ_WRITE 
GO
