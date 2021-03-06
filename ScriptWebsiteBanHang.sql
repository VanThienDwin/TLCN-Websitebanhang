USE [master]
GO
/****** Object:  Database [WebsiteBanHang]    Script Date: 09/17/2020 15:14:47 ******/
CREATE DATABASE [WebsiteBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OnlineShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\WebsiteBanHang.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OnlineShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\WebsiteBanHang_log.ldf' , SIZE = 2112KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebsiteBanHang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebsiteBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebsiteBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebsiteBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebsiteBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebsiteBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebsiteBanHang] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [WebsiteBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET RECOVERY FULL 
GO
ALTER DATABASE [WebsiteBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [WebsiteBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebsiteBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebsiteBanHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebsiteBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebsiteBanHang] SET QUERY_STORE = OFF
GO
USE [WebsiteBanHang]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 09/17/2020 15:14:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 09/17/2020 15:14:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 09/17/2020 15:14:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreationDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 09/17/2020 15:14:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 09/17/2020 15:14:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 09/17/2020 15:14:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 09/17/2020 15:14:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[displayname] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[status] [bit] NOT NULL,
	[gender] [bit] NOT NULL,
	[birthDay] [datetime2](7) NOT NULL,
	[password] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 09/17/2020 15:14:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 09/17/2020 15:14:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 09/17/2020 15:14:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](max) NULL,
	[status] [bit] NOT NULL,
	[createDate] [datetime2](7) NOT NULL,
	[productId] [int] NOT NULL,
	[userId] [nvarchar](450) NULL,
 CONSTRAINT [PK_comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 09/17/2020 15:14:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [bit] NOT NULL,
	[confirm] [bit] NOT NULL,
	[total] [decimal](18, 2) NOT NULL,
	[address] [nvarchar](max) NULL,
	[customer] [nvarchar](max) NULL,
	[info] [nvarchar](max) NULL,
	[note] [nvarchar](max) NULL,
	[createDate] [datetime2](7) NOT NULL,
	[userId] [nvarchar](450) NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderdetail]    Script Date: 09/17/2020 15:14:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[unitPrice] [decimal](18, 2) NOT NULL,
	[productId] [int] NOT NULL,
	[orderId] [int] NOT NULL,
 CONSTRAINT [PK_orderdetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 09/17/2020 15:14:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[price] [decimal](18, 2) NOT NULL,
	[description] [nvarchar](max) NULL,
	[amount] [int] NOT NULL,
	[image] [nvarchar](max) NULL,
	[status] [bit] NOT NULL,
	[size] [int] NULL,
	[color] [int] NULL,
	[categoryId] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reply]    Script Date: 09/17/2020 15:14:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reply](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](max) NULL,
	[status] [bit] NOT NULL,
	[createDate] [datetime2](7) NOT NULL,
	[userId] [nvarchar](450) NULL,
	[commentId] [int] NOT NULL,
 CONSTRAINT [PK_reply] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200103032501_inittdataa', N'2.2.0-rtm-35687')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [Description], [CreationDate]) VALUES (N'0111f0fb-ecb5-449f-95e6-d6773cfabed7', N'Admin', N'ADMIN', N'b3eb8f39-43e1-493b-859e-b43ece935fe8', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [Description], [CreationDate]) VALUES (N'72448a0f-459b-4586-86a6-d2b0e96a4f96', N'User', N'USER', N'3b309bd4-240f-468f-886e-bf07c199222d', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'017f5ba3-ca0d-4ef3-9d9d-7645ebd24e77', N'0111f0fb-ecb5-449f-95e6-d6773cfabed7')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f757fd15-77f4-4d45-a2cd-8df2eca5daa6', N'72448a0f-459b-4586-86a6-d2b0e96a4f96')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [displayname], [address], [phone], [status], [gender], [birthDay], [password]) VALUES (N'017f5ba3-ca0d-4ef3-9d9d-7645ebd24e77', N'admin', N'ADMIN', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKLL9VsWSHA64LrFohTLJLSnhfM/H7CRLTHWv1c+GIAA15Y0pcGBueSDK1YaxTX4gg==', N'9db87e54-a04d-4596-8d68-dea9dfd9aa6e', N'0a6ee96e-a2f0-43d3-9d07-66ca484cab02', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, 0, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [displayname], [address], [phone], [status], [gender], [birthDay], [password]) VALUES (N'f757fd15-77f4-4d45-a2cd-8df2eca5daa6', N'thiennguyen.it.ute@gmail.com', N'THIENNGUYEN.IT.UTE@GMAIL.COM', N'thiennguyen.it.ute@gmail.com', N'THIENNGUYEN.IT.UTE@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAENw9QLt6YwMAZOxl54CnXnaidd0w8NqIoMnO4MaBN3p8iOQha9CeImZFw9qarw5rZQ==', N'80ef03ea-a418-47dc-9281-f838b785cd98', N'925264b4-968d-409a-8edf-e0309947113e', NULL, 0, 0, NULL, 1, 0, N'Nguyễn Hữu Thiện', NULL, NULL, 0, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([id], [name], [status]) VALUES (1, N'Điện Tử', 1)
INSERT [dbo].[category] ([id], [name], [status]) VALUES (2, N'Điện Thoại', 1)
INSERT [dbo].[category] ([id], [name], [status]) VALUES (3, N'Quần Áo', 1)
INSERT [dbo].[category] ([id], [name], [status]) VALUES (4, N'Giày Dép', 1)
INSERT [dbo].[category] ([id], [name], [status]) VALUES (5, N'Sách', 1)
INSERT [dbo].[category] ([id], [name], [status]) VALUES (6, N'Thức Uống', 1)
INSERT [dbo].[category] ([id], [name], [status]) VALUES (7, N'Mũ Nón', 1)
INSERT [dbo].[category] ([id], [name], [status]) VALUES (8, N'Thiết Bị Số - Phụ Kiện', 1)
INSERT [dbo].[category] ([id], [name], [status]) VALUES (9, N'Điện Gia Dụng', 1)
INSERT [dbo].[category] ([id], [name], [status]) VALUES (10, N'Laptop - Thiết bị IT', 1)
SET IDENTITY_INSERT [dbo].[category] OFF
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (1, 1, 1, CAST(10000.00 AS Decimal(18, 2)), N'232/29 Quốc Lộ 13 Phường 26, BT', N'Thiện Nguyễn', N'0336970895', N'Không', CAST(N'2019-01-03T12:03:55.3058888' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (2, 1, 1, CAST(620000.00 AS Decimal(18, 2)), N'Hậu Lộc, Thanh Hóa', N'Trịnh Văn Long', N'0437576755', N'không', CAST(N'2019-01-03T07:05:42.0346879' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (3, 1, 1, CAST(2520000.00 AS Decimal(18, 2)), N'Cát Minh, Phù Cát , Bình Định', N'Võ Văn Thiên', N'vovanthien@gmail.com', NULL, CAST(N'2019-01-04T07:06:39.7103565' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (4, 1, 1, CAST(1122000.00 AS Decimal(18, 2)), N'TP.Gia Nghĩ, ĐắkNông', N'Đinh Quang Nam', N'0356789434', NULL, CAST(N'2019-01-04T07:07:55.9998613' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (5, 1, 1, CAST(974000.00 AS Decimal(18, 2)), N'Phù Mỹ, Bình Định', N'Nguyễn Cảnh Lịch', N'034567890', NULL, CAST(N'2019-01-05T07:08:50.9546510' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (6, 1, 1, CAST(705000.00 AS Decimal(18, 2)), N'15 Nguyễn Xí, Bình Thạnh', N'Võ Văn Phước', N'vovanphuoc1998@gmail.com', NULL, CAST(N'2019-01-07T07:09:51.9597236' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (7, 1, 1, CAST(759299.00 AS Decimal(18, 2)), N'232/29 Quốc lộ 13, Bình Thạnh', N'Trần Như Ý', N'07054545454', NULL, CAST(N'2019-01-13T07:10:43.0378236' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (8, 1, 1, CAST(14000000.00 AS Decimal(18, 2)), N'Bình Thạnh', N'Nguyễn Hữu Thiện', N'0336970895', NULL, CAST(N'2019-01-04T07:31:10.7533318' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (9, 1, 1, CAST(372000.00 AS Decimal(18, 2)), N'Thủ Đức', N'Trần Quyết Thành', N'04343434343', NULL, CAST(N'2019-01-04T07:31:46.3835412' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (10, 1, 1, CAST(273000.00 AS Decimal(18, 2)), N'Quận 2', N'Trần Văn Long', N'037954545454', NULL, CAST(N'2019-01-04T07:32:26.1957905' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (11, 1, 1, CAST(315500.00 AS Decimal(18, 2)), N'Quận 9', N'Nguyễn Văn Rum', N'032438448584', NULL, CAST(N'2019-01-04T07:33:08.1798360' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (12, 1, 1, CAST(2638000.00 AS Decimal(18, 2)), N'Tiền Giang', N'Nguyễn Thị Thành Tuyền', N'04343434322', NULL, CAST(N'2019-01-04T07:34:04.0641688' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (13, 1, 1, CAST(31010000.00 AS Decimal(18, 2)), N'Long An', N'Nguyễn Hoài Nam', N'nguyenhoainam@gmail.com', NULL, CAST(N'2019-01-04T07:34:38.3343828' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (14, 1, 1, CAST(3540000.00 AS Decimal(18, 2)), N'Quảng Nam', N'Trần Thị Nhựt', N'tranthinhut@gmail.com', NULL, CAST(N'2020-01-04T07:35:12.1352657' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (15, 1, 1, CAST(975000.00 AS Decimal(18, 2)), N'Vĩnh Long', N'Nguyễn Xuân Nguyên', N'03242424244', NULL, CAST(N'2019-01-04T07:35:55.4098358' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (16, 1, 1, CAST(1074000.00 AS Decimal(18, 2)), N'Bình Phước', N'Đinh Ngọc Phú', N'dinhngocphu@gmail.om', NULL, CAST(N'2019-01-04T07:36:32.2786281' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (17, 1, 1, CAST(25000000.00 AS Decimal(18, 2)), N'Khánh Hòa', N'Nguyễn Như Ngọc', N'nguyennhungoc@gmail.com', NULL, CAST(N'2019-01-04T07:37:09.3624351' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (18, 1, 1, CAST(108000.00 AS Decimal(18, 2)), N'Quận 9', N'Bùi Thị Thanh NHu', N'nhubui@gmail.com', NULL, CAST(N'2019-01-04T07:37:46.3796933' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (19, 1, 1, CAST(355299.00 AS Decimal(18, 2)), N'Bình Dương', N'Trần Ngọc Trọng', N'trong@gmail.com', NULL, CAST(N'2019-01-04T07:38:35.8474557' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (20, 1, 1, CAST(13653000.00 AS Decimal(18, 2)), N'Tân Bình', N'Nguyễn Tuấn Tiến', N'tuantiensiu@gmail.com', NULL, CAST(N'2019-01-04T07:39:15.7737262' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (21, 1, 1, CAST(1361000.00 AS Decimal(18, 2)), N'Bình Thạnh', N'Nguyễn Thị Phận', N'04434343434', NULL, CAST(N'2019-01-04T07:39:51.1567061' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (22, 1, 1, CAST(915000.00 AS Decimal(18, 2)), N'Tân Phú', N'Đỗ Tuấn Thạch', N'0434343434', NULL, CAST(N'2019-12-01T07:40:30.5090011' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (23, 1, 1, CAST(24758000.00 AS Decimal(18, 2)), N'Quận 7', N'Nguyễn Văn', N'0323232111', NULL, CAST(N'2020-01-01T07:41:12.3402195' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (24, 1, 1, CAST(248000.00 AS Decimal(18, 2)), N'Đồng Nai', N'Thổ Văn Hiền', N'0434669669', NULL, CAST(N'2020-01-01T07:41:48.1593088' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (25, 1, 1, CAST(195900.00 AS Decimal(18, 2)), N'Lâm Đồng', N'Huỳnh Di Linh', N'0322245667', NULL, CAST(N'2020-01-02T07:42:18.6184533' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (26, 1, 1, CAST(8300000.00 AS Decimal(18, 2)), N'Bình Thuận', N'Hồ Ngọc Triết', N'0332225666', NULL, CAST(N'2020-01-02T07:42:56.0642224' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (27, 1, 1, CAST(1676000.00 AS Decimal(18, 2)), N'Quận 5', N'Vũ Duy Toàn', N'037774343', NULL, CAST(N'2020-01-03T07:43:35.0865293' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (28, 1, 1, CAST(297000.00 AS Decimal(18, 2)), N'Quận 8', N'Lê Thị Trinh', N'trinhle@gmail.com', NULL, CAST(N'2020-01-03T07:44:15.8040078' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (29, 1, 1, CAST(9294000.00 AS Decimal(18, 2)), N'Quận 4', N'Bùi Thanh Đông', N'dongbui@gmail.com', NULL, CAST(N'2020-01-04T07:44:47.7137542' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (30, 1, 1, CAST(14000000.00 AS Decimal(18, 2)), N'Quận 3', N'Kim Tuấn Kiệt', N'0336868565', NULL, CAST(N'2020-01-04T07:45:19.0632457' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (31, 1, 1, CAST(550000.00 AS Decimal(18, 2)), N'Quận 6', N'A Triển', N'03485848658', NULL, CAST(N'2020-01-04T07:46:05.8796651' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (32, 1, 1, CAST(12300000.00 AS Decimal(18, 2)), N'Quận 12', N'Abe', N'phantantrung@gmail.com', NULL, CAST(N'2020-01-04T07:46:52.2212684' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (33, 1, 1, CAST(225000.00 AS Decimal(18, 2)), N'Kingdom nextgen', N'Trương Tuấn Tú', N'0334959965', NULL, CAST(N'2020-01-04T07:47:35.9805393' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (34, 1, 1, CAST(822000.00 AS Decimal(18, 2)), N'Quận 1', N'Võ Đình Quang Huy', N'0334354655', NULL, CAST(N'2020-01-04T07:48:15.8657450' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (35, 1, 1, CAST(709299.00 AS Decimal(18, 2)), N'Bến Tre', N'Nguyễn Anh Tuấn', N'0368876979', NULL, CAST(N'2020-01-04T07:48:51.8166774' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (36, 1, 1, CAST(1361000.00 AS Decimal(18, 2)), N'Cà Mau', N'Hồ Quốc Danh', N'danhho@gmail.com', NULL, CAST(N'2020-01-04T07:49:33.7975567' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (37, 1, 1, CAST(412000.00 AS Decimal(18, 2)), N'Quận 3', N'Vũ Phạm Đình Thái', N'03434343', NULL, CAST(N'2020-01-04T07:50:12.8641611' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (38, 1, 1, CAST(326000.00 AS Decimal(18, 2)), N'Quận 13', N'Huỳnh Phương', N'0399473743', NULL, CAST(N'2020-01-04T07:50:45.2545203' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (39, 1, 1, CAST(382500.00 AS Decimal(18, 2)), N'Quận Gò Vấp', N'Ribi Sachi', N'03487556534', NULL, CAST(N'2020-01-04T07:51:26.4058876' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (40, 1, 1, CAST(209500.00 AS Decimal(18, 2)), N'Quận Hóc Môn', N'Bùi Văn Vinh', N'0348545845', NULL, CAST(N'2020-01-04T07:52:07.1344862' AS DateTime2), NULL)
INSERT [dbo].[order] ([id], [status], [confirm], [total], [address], [customer], [info], [note], [createDate], [userId]) VALUES (41, 1, 0, CAST(3378000.00 AS Decimal(18, 2)), N'Bình Thạnh', N'Thiên', N'thienvovan0112@gmail.com', N'Không', CAST(N'2020-09-17T14:52:05.1085514' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[order] OFF
SET IDENTITY_INSERT [dbo].[orderdetail] ON 

INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (1, 1, CAST(10000.00 AS Decimal(18, 2)), 11, 1)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (2, 3, CAST(10000.00 AS Decimal(18, 2)), 11, 2)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (3, 1, CAST(590000.00 AS Decimal(18, 2)), 17, 2)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (4, 1, CAST(2520000.00 AS Decimal(18, 2)), 13, 3)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (5, 2, CAST(309000.00 AS Decimal(18, 2)), 23, 4)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (6, 2, CAST(89000.00 AS Decimal(18, 2)), 29, 4)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (7, 2, CAST(163000.00 AS Decimal(18, 2)), 28, 4)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (8, 1, CAST(152000.00 AS Decimal(18, 2)), 22, 5)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (9, 1, CAST(670000.00 AS Decimal(18, 2)), 26, 5)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (10, 1, CAST(152000.00 AS Decimal(18, 2)), 27, 5)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (11, 1, CAST(287000.00 AS Decimal(18, 2)), 16, 6)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (12, 1, CAST(329000.00 AS Decimal(18, 2)), 18, 6)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (13, 1, CAST(33000.00 AS Decimal(18, 2)), 53, 6)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (14, 1, CAST(56000.00 AS Decimal(18, 2)), 54, 6)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (15, 1, CAST(299000.00 AS Decimal(18, 2)), 19, 7)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (16, 1, CAST(299.00 AS Decimal(18, 2)), 20, 7)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (17, 1, CAST(410000.00 AS Decimal(18, 2)), 21, 7)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (18, 1, CAST(50000.00 AS Decimal(18, 2)), 51, 7)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (19, 1, CAST(8000000.00 AS Decimal(18, 2)), 2, 8)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (20, 1, CAST(6000000.00 AS Decimal(18, 2)), 3, 8)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (21, 1, CAST(10000.00 AS Decimal(18, 2)), 11, 9)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (22, 1, CAST(129000.00 AS Decimal(18, 2)), 55, 9)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (23, 1, CAST(217000.00 AS Decimal(18, 2)), 56, 9)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (24, 1, CAST(16000.00 AS Decimal(18, 2)), 57, 9)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (25, 1, CAST(50000.00 AS Decimal(18, 2)), 10, 10)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (26, 1, CAST(58000.00 AS Decimal(18, 2)), 48, 10)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (27, 1, CAST(116000.00 AS Decimal(18, 2)), 49, 10)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (28, 1, CAST(49000.00 AS Decimal(18, 2)), 50, 10)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (29, 1, CAST(120000.00 AS Decimal(18, 2)), 5, 11)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (30, 1, CAST(96000.00 AS Decimal(18, 2)), 30, 11)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (31, 1, CAST(99500.00 AS Decimal(18, 2)), 31, 11)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (32, 2, CAST(97000.00 AS Decimal(18, 2)), 38, 12)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (33, 2, CAST(700000.00 AS Decimal(18, 2)), 4, 12)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (34, 3, CAST(179000.00 AS Decimal(18, 2)), 39, 12)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (35, 3, CAST(169000.00 AS Decimal(18, 2)), 40, 12)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (36, 1, CAST(3490000.00 AS Decimal(18, 2)), 12, 13)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (37, 1, CAST(25000000.00 AS Decimal(18, 2)), 6, 13)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (38, 1, CAST(2520000.00 AS Decimal(18, 2)), 13, 13)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (39, 6, CAST(590000.00 AS Decimal(18, 2)), 17, 14)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (40, 2, CAST(159000.00 AS Decimal(18, 2)), 41, 15)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (41, 3, CAST(60000.00 AS Decimal(18, 2)), 42, 15)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (42, 3, CAST(100000.00 AS Decimal(18, 2)), 43, 15)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (43, 3, CAST(59000.00 AS Decimal(18, 2)), 44, 15)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (44, 1, CAST(163000.00 AS Decimal(18, 2)), 28, 16)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (45, 1, CAST(89000.00 AS Decimal(18, 2)), 29, 16)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (46, 1, CAST(152000.00 AS Decimal(18, 2)), 27, 16)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (47, 1, CAST(670000.00 AS Decimal(18, 2)), 26, 16)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (48, 1, CAST(25000000.00 AS Decimal(18, 2)), 6, 17)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (49, 1, CAST(50000.00 AS Decimal(18, 2)), 10, 18)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (50, 1, CAST(58000.00 AS Decimal(18, 2)), 48, 18)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (51, 1, CAST(56000.00 AS Decimal(18, 2)), 54, 19)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (52, 1, CAST(299000.00 AS Decimal(18, 2)), 19, 19)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (53, 1, CAST(299.00 AS Decimal(18, 2)), 20, 19)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (54, 1, CAST(3490000.00 AS Decimal(18, 2)), 12, 20)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (55, 1, CAST(10000000.00 AS Decimal(18, 2)), 1, 20)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (56, 1, CAST(163000.00 AS Decimal(18, 2)), 28, 20)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (57, 1, CAST(309000.00 AS Decimal(18, 2)), 23, 21)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (58, 1, CAST(900000.00 AS Decimal(18, 2)), 24, 21)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (59, 1, CAST(152000.00 AS Decimal(18, 2)), 22, 21)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (60, 1, CAST(299000.00 AS Decimal(18, 2)), 19, 22)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (61, 1, CAST(287000.00 AS Decimal(18, 2)), 16, 22)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (62, 1, CAST(329000.00 AS Decimal(18, 2)), 18, 22)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (63, 1, CAST(670000.00 AS Decimal(18, 2)), 26, 23)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (64, 1, CAST(89000.00 AS Decimal(18, 2)), 29, 23)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (65, 1, CAST(23999000.00 AS Decimal(18, 2)), 25, 23)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (66, 1, CAST(129000.00 AS Decimal(18, 2)), 36, 24)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (67, 1, CAST(119000.00 AS Decimal(18, 2)), 37, 24)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (68, 1, CAST(96900.00 AS Decimal(18, 2)), 34, 25)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (69, 1, CAST(99000.00 AS Decimal(18, 2)), 35, 25)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (70, 1, CAST(6000000.00 AS Decimal(18, 2)), 3, 26)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (71, 1, CAST(2300000.00 AS Decimal(18, 2)), 8, 26)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (72, 1, CAST(97000.00 AS Decimal(18, 2)), 38, 27)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (73, 2, CAST(700000.00 AS Decimal(18, 2)), 4, 27)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (74, 1, CAST(179000.00 AS Decimal(18, 2)), 39, 27)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (75, 1, CAST(129000.00 AS Decimal(18, 2)), 36, 28)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (76, 1, CAST(79000.00 AS Decimal(18, 2)), 32, 28)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (77, 1, CAST(89000.00 AS Decimal(18, 2)), 33, 28)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (78, 1, CAST(5995000.00 AS Decimal(18, 2)), 14, 29)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (79, 1, CAST(3299000.00 AS Decimal(18, 2)), 15, 29)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (80, 1, CAST(8000000.00 AS Decimal(18, 2)), 2, 30)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (81, 1, CAST(6000000.00 AS Decimal(18, 2)), 3, 30)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (82, 1, CAST(152000.00 AS Decimal(18, 2)), 22, 31)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (83, 1, CAST(309000.00 AS Decimal(18, 2)), 23, 31)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (84, 1, CAST(89000.00 AS Decimal(18, 2)), 29, 31)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (85, 1, CAST(10000000.00 AS Decimal(18, 2)), 1, 32)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (86, 1, CAST(2300000.00 AS Decimal(18, 2)), 8, 32)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (87, 1, CAST(50000.00 AS Decimal(18, 2)), 10, 33)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (88, 1, CAST(49000.00 AS Decimal(18, 2)), 50, 33)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (89, 1, CAST(116000.00 AS Decimal(18, 2)), 49, 33)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (90, 1, CAST(10000.00 AS Decimal(18, 2)), 11, 33)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (91, 1, CAST(670000.00 AS Decimal(18, 2)), 26, 34)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (92, 1, CAST(152000.00 AS Decimal(18, 2)), 27, 34)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (93, 1, CAST(299000.00 AS Decimal(18, 2)), 19, 35)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (94, 1, CAST(299.00 AS Decimal(18, 2)), 20, 35)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (95, 1, CAST(410000.00 AS Decimal(18, 2)), 21, 35)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (96, 1, CAST(309000.00 AS Decimal(18, 2)), 23, 36)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (97, 1, CAST(900000.00 AS Decimal(18, 2)), 24, 36)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (98, 1, CAST(152000.00 AS Decimal(18, 2)), 22, 36)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (99, 1, CAST(50000.00 AS Decimal(18, 2)), 51, 37)
GO
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (100, 1, CAST(329000.00 AS Decimal(18, 2)), 18, 37)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (101, 1, CAST(33000.00 AS Decimal(18, 2)), 53, 37)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (102, 1, CAST(96000.00 AS Decimal(18, 2)), 30, 38)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (103, 1, CAST(100000.00 AS Decimal(18, 2)), 7, 38)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (104, 1, CAST(10000.00 AS Decimal(18, 2)), 9, 38)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (105, 1, CAST(120000.00 AS Decimal(18, 2)), 47, 38)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (106, 3, CAST(47500.00 AS Decimal(18, 2)), 46, 39)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (107, 2, CAST(120000.00 AS Decimal(18, 2)), 47, 39)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (108, 1, CAST(100000.00 AS Decimal(18, 2)), 7, 40)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (109, 1, CAST(10000.00 AS Decimal(18, 2)), 9, 40)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (110, 1, CAST(99500.00 AS Decimal(18, 2)), 31, 40)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (111, 1, CAST(3299000.00 AS Decimal(18, 2)), 15, 41)
INSERT [dbo].[orderdetail] ([id], [quantity], [unitPrice], [productId], [orderId]) VALUES (112, 1, CAST(79000.00 AS Decimal(18, 2)), 32, 41)
SET IDENTITY_INSERT [dbo].[orderdetail] OFF
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (1, N'Ti vi Sony 32 inch', CAST(10000000.00 AS Decimal(18, 2)), N'Sản phẩm của Sony.
Độ phân giải: Ultra HD 4K (3840 x 2160)
Tần số quét: 50 Hz
Hệ điều hành: Linux', 98, N'484ffee4-bbea-4229-ba6b-b628f16ff3a8.jpg', 1, NULL, NULL, 1)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (2, N'Tủ lạnh Toshiba', CAST(8000000.00 AS Decimal(18, 2)), N'Sản phẩm của Toshiba. Dung tích: 180 lít, 
Kiểu tủ: Ngăn đá trên, 
Công nghệ: Inverter tiết kiệm điện

Làm lạnh: Luồng khí lạnh vòng cung,
Kháng khuẩn / khử mùi: Khử mùi Ag+ Bio,', 98, N'1848d93b-56c6-4716-bd89-bc8e04985b1c.jpg', 1, NULL, 7, 1)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (3, N'Máy Giặt Cửa Ngang Inverter LG', CAST(6000000.00 AS Decimal(18, 2)), N'Sản phẩm của LG.
Khối lượng giặt 8kg,
Động cơ Inverter êm ái, tiết kiệm điện,
Công nghệ giặt 6 chuyển động (6 motion),
Chương trình giặt Allergy Care chống gây dị ứng.', 97, N'b72117e0-d277-4a55-a0c9-79d86d642b8a.jpg', 1, NULL, 0, 1)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (4, N'Giày Biti''s ', CAST(700000.00 AS Decimal(18, 2)), N'Sản phẩm của Biti''s.
Công nghệ LiteFlex độc quyền
Co dãn 4 chiều, thoáng khí tối đa.
Định hình và trợ lực gót chân
Đế lót kháng khuẩn và massage.', 98, N'e4887384-d52a-4959-bb62-96d8519e8ce0.jpg', 1, NULL, 7, 4)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (5, N'Phương pháp dạy con', CAST(120000.00 AS Decimal(18, 2)), N'Sản phẩm của NXB Kim Đồng', 99, N'62a240e1-db7a-48f7-9f7e-2eaf21223d53.jpg', 1, NULL, 4, 5)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (6, N'IPhone X', CAST(25000000.00 AS Decimal(18, 2)), N'Chính hãng, Nguyên seal, Mới 100%, Chưa Active
Thiết kế: Nguyên khối
Màn hình: Super AMOLED capacitive touchscreen, 5.8 inch HD
Camera Trước/Sau: 7MP/ 2 camera 12MP
CPU: Apple A11 Bionic 6 nhân', 98, N'b4b84e7e-4a02-472c-9357-f7396529f533.png', 1, NULL, 6, 2)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (7, N'Cà phê Trung Nguyên', CAST(100000.00 AS Decimal(18, 2)), N'Bao bì sản phẩm có thể thay đổi theo Nhà cung cấp
Cà phê được pha chế theo bí quyết của Trung Nguyên
Hương vị thơm ngon, bổ dưỡng
Sản phẩm dạng hòa tan pha chế nhanh chóng', 99, N'0768a63b-ece9-4910-aaa2-685887617439.jpg', 1, NULL, NULL, 6)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (8, N'Máy ảnh Sony', CAST(2300000.00 AS Decimal(18, 2)), N'Cảm biến: Super HAD CCD 20.1 MP
Ống kính siêu zoom 35x
ISO: 80-3200
Hệ thống lấy nét: Tự động
Chụp ảnh liên tục: 0.8fps', 98, N'11cd7a2e-374f-44f8-86c6-976446961c83.jpg', 1, NULL, 1, 1)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (9, N'Nước Coca cola', CAST(10000.00 AS Decimal(18, 2)), N'Nước giải khát giúp bổ sung năng lượng và khoáng chất
Mang đến cảm giác sảng khoái, giải nhiệt tức thì
Sản phẩm được đóng chai nhỏ tiện lợi thưởng thức', 999, N'49f0dddb-2b90-4152-9925-46686b7ef244.jpg', 1, NULL, 2, 6)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (10, N'Mũ lưỡi trai', CAST(50000.00 AS Decimal(18, 2)), N'Kiểu dáng trẻ trung, đặc biệt thích hợp cho hoạt động ngoài trời.
Chất liệu vải dù tổng hợp bền chắc, chống sờn rách hiệu quả
Tông màu trẻ trung và khỏe khoắn
Dễ dàng tùy chỉnh kích cỡ theo ý muốn', 497, N'def0330e-0f34-4036-9c15-f3beb14c5715.jpg', 1, NULL, 1, 7)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (11, N'Nước Pepsi', CAST(10000.00 AS Decimal(18, 2)), N'Sảng khoái tức thì, Đã quá Pepsi ơi,
Thành phần nguyên liệu an toàn, hương vị thơm ngon,
Giúp bạn giải tỏa cơn khát tức thì trong những ngày nóng bức,
Cung cấp năng lượng trong một ngày dài hoạt động', 995, N'13e9c937-4d62-4abc-99dd-a26124e15db2.png', 1, NULL, 6, 6)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (12, N'Điện thoại Nokia 6.1 Plus', CAST(3490000.00 AS Decimal(18, 2)), N'Miễn phí giao hàng toàn quốc,
Thiết kế nguyên khối trẻ trung, hiện đại,
Màn hình: tai thỏ 5.8"', 98, N'167ab4ca-c83a-422e-ac39-413bc9f4e92f.jpg', 1, NULL, 1, 2)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (13, N'Điện Thoại Samsung Galaxy M10', CAST(2520000.00 AS Decimal(18, 2)), N'Điện thoại chính hãng, Nguyên seal, Mới 100%, Chưa Active.
Thiết kế: Nguyên khối, mặt kính cong 2.5D,
Màn hình: LCD 6.2" HD+, Infinity V Display,
Camera Sau: 13 MP và 5 MP (2 camera).', 98, N'792b5f52-efea-44f8-8886-6fff975eb77a.jpg', 1, NULL, 1, 2)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (14, N'Điện Thoại OPPO F11 Pro', CAST(5995000.00 AS Decimal(18, 2)), N'Chính hãng, Nguyên seal, Mới 100%, Chưa Active,
Miễn phí giao hàng toàn quốc,
Màn hình: LTPS LCD, 6.53", Full HD+ (1080 x 2340 Pixels).', 99, N'3cce450e-dd73-406b-af61-a078ddca27d6.jfif', 1, NULL, 6, 2)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (15, N'Điện thoại Vsmart Live', CAST(3299000.00 AS Decimal(18, 2)), N'Chính hãng, nguyên seal, mới 100%, chưa Active,
Màn hình: AMOLED, 6.2", Full HD+.', 98, N'227a9510-b896-4966-bec9-cffd25a9c65e.jpg', 1, NULL, 0, 2)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (16, N'Chuột Không Dây Logitech', CAST(287000.00 AS Decimal(18, 2)), N'Độ phân giải: 1000DPI,
3 nút nhấn cơ bản và 1 cần gạt on/of.', 98, N'a8d80cd3-cc26-4925-84e7-573616b8f402.jpg', 1, NULL, 2, 8)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (17, N'Tai Nghe Nhét Tai JBL', CAST(590000.00 AS Decimal(18, 2)), N'Tích hợp micro,
Âm thanh siêu trầm.', 93, N'faf0142b-aa8d-4d4f-80a0-d5d03eec9446.jpg', 1, NULL, 0, 1)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (18, N'Pin Sạc Dự Phòng Xiaomi', CAST(329000.00 AS Decimal(18, 2)), N'Dung lượng pin 10000mAh,
Thiết kế vỏ kim loại nguyên khối.', 98, N'93574af8-463d-4625-8b6a-593f18c0c6e4.jpg', 1, NULL, 7, 8)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (19, N'Bàn Ủi Khô Philips HD1172', CAST(299000.00 AS Decimal(18, 2)), N'Công suất 1000W,
Mặt đế hợp kim nhôm.', 96, N'8479fbaf-e020-4bb3-9e05-45d25d6fc936.jpg', 1, NULL, 1, 9)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (20, N'Lò Nướng Điện Sunhouse', CAST(299.00 AS Decimal(18, 2)), N'Dung tích: 10L,
Công suất: 800W.', 98, N'56d85664-b681-48b6-b670-8c7560155e57.jpg', 1, NULL, 1, 9)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (21, N'Ấm Đun Siêu Tốc LOCK', CAST(410000.00 AS Decimal(18, 2)), N'Công suất từ 1850W trở lên,
Nguồn điện 220V,
Chất liệu cao cấp, độ bền cao.', 99, N'6e9ee056-2a13-4868-b675-5ea2d551b249.jpg', 1, NULL, 0, 9)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (22, N'Máy Xay Sinh Tố Đa Năng', CAST(152000.00 AS Decimal(18, 2)), N'Cối nhựa, 2 tầng lưỡi thép không gỉ.

Nhỏ gọn, tiện lợi, dễ sử dụng
Chỉ cần ấn xuống là xay.', 96, N'8803071f-4cbb-4d3c-996a-2f63c93be800.jpg', 1, NULL, 9, 9)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (23, N'Bếp Gas Hồng Ngoại Soho', CAST(309000.00 AS Decimal(18, 2)), N'Mặt bếp: Kính cường lực,
Công nghệ đầu đốt hồng ngoại.', 95, N'43ec4bb3-1631-4e62-a8e4-fc4ef7ef72ba.jpg', 1, NULL, 1, 9)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (24, N'Bếp Điện Từ Electrolux', CAST(900000.00 AS Decimal(18, 2)), N'Công suất: 2000W,
Điều khiển cảm ứng hiện đại,
Màn hình LED hiển thị.', 98, N'd0e49d7b-6fa7-4356-89ba-ed74e3e33876.jpg', 1, NULL, 1, 9)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (25, N'Apple Macbook Air 2018', CAST(23999000.00 AS Decimal(18, 2)), N'Chip: Intel Core i5 8th 1.6GHz dual-core (Turbo Boost up to 3.6GHz),
RAM: 8GB 2133MHz LPDDR3,
Ổ Cứng: 128GB SSD.', 49, N'222f1284-b7a5-40f4-8362-16cad619f2a1.jpg', 1, NULL, 3, 10)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (26, N'Ổ Cứng SSD Kingston A400', CAST(670000.00 AS Decimal(18, 2)), N'Nhanh hơn 10 lần so với ổ cứng truyền thống,
Chịu va đập.', 97, N'aa749797-3ca9-4b69-8f48-2a134cfe3ec5.jpg', 1, NULL, 1, 10)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (27, N'Bàn Phím Có Dây Dell KB216', CAST(152000.00 AS Decimal(18, 2)), N'Cổng giao tiếp USB,
Màu đen bóng.', 98, N'638c1399-4453-4668-aa78-e72b9f7329f6.jpg', 1, NULL, 1, 10)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (28, N'USB Kingston DT100G3', CAST(163000.00 AS Decimal(18, 2)), N'Dung lượng 64GB,
Vỏ kim loại chắc chắn và bền bỉ,
USB 3.0 tốc độ cao.', 96, N'a8538719-f385-4e80-823d-8eac0f92c99d.jpg', 1, NULL, 1, 10)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (29, N'Chuột Có Dây Dell MS116', CAST(89000.00 AS Decimal(18, 2)), N'Kiểu kết nối: Có dây,
Chuẩn giao tiếp: USB,
Phím chức năng: Standard.', 96, N'dffd6214-201f-45c9-9e3c-73b48ce43a99.jpg', 1, NULL, 1, 10)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (30, N'World Teacher - Tập 1', CAST(96000.00 AS Decimal(18, 2)), NULL, 98, N'8764e7d6-a4cc-43eb-830c-38251703adf4.jpg', 1, NULL, NULL, 5)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (31, N'Sách - Mắt biếc tái bản 2019', CAST(99500.00 AS Decimal(18, 2)), N'Tác già: Nguyễn Nhật Ánh', 98, N'b735cdf5-99b7-4ead-935d-dff6d3722f0a.jpg', 1, NULL, 6, 5)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (32, N'ÁO KHOÁC HOODIE EASNJ', CAST(79000.00 AS Decimal(18, 2)), N'Áo chất nỉ bông dầy ấm, 1 lớp nỉ.
Áo sáng màu, bảo hành giặt máy thoải mái.', 98, N'44ef181b-1b78-4215-9ec6-1da5a28bad87.jpg', 1, NULL, 0, 3)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (33, N'Áo Thun Nam Zakado', CAST(89000.00 AS Decimal(18, 2)), N'Tên sản phẩm: Áo Thun Nam Zakado Cổ Tròn Cao Cấp N1,
Màu: Vàng bò, Xanh vỏ đỗ, Hồng đất, Đỏ mận.', 99, N'516f494f-c280-4f69-b8b3-159aa06b994b.jpg', 1, NULL, 4, 3)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (34, N'Quần jogger kaki nam', CAST(96900.00 AS Decimal(18, 2)), N'Bộ sưu tập: 2019,
Kiểu dáng: Quần Jogger trẻ trung.', 99, N'bda58419-8b2a-47f4-ae3f-b6d5f1b7c9e8.jpg', 1, NULL, 1, 3)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (35, N'Quần Âu Nam KOJIBA', CAST(99000.00 AS Decimal(18, 2)), N'Thiết kế thời trang, đẹp mắt,
Bề mặt vải mịn màng, dễ chịu khi tiếp xúc với da.', 99, N'95a21057-45a3-42b1-82a7-83b4e063990b.jpg', 1, NULL, 6, 3)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (36, N'Áo khoác kaki jean Nam', CAST(129000.00 AS Decimal(18, 2)), N'Áo khoác UNISEX với chất liệu vải Kaki jean thô bền bỉ mềm mại.
Màu vải được Wash kỹ hạn chế ra màu khi giặt.', 98, N'5444c712-9614-4c48-b3c9-1f710dcf6c30.jpg', 1, NULL, 1, 3)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (37, N'Áo Thun Nam Dài Tay Zakado', CAST(119000.00 AS Decimal(18, 2)), N'Tên sản phẩm: Áo Thun Nam Dài Tay Zakado APTO001 Cao Cấp 9 Màu Cơ Bản,
Màu: Coban, Trắng, Ghi sáng, Ghi tối, Xanh biển, Tím than sáng, Tím than tối, Đỏ đô, Đen.', 99, N'65d7db3a-2c6a-475f-8717-449c1681b12c.jfif', 1, NULL, 0, 3)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (38, N'Áo len thu đông tay dơi', CAST(97000.00 AS Decimal(18, 2)), NULL, 97, N'f1ace051-3b30-4f05-aa0b-ccc25210f25d.jpg', 1, NULL, 5, 3)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (39, N'Giày sneaker nam SP-283', CAST(179000.00 AS Decimal(18, 2)), N'Thiết kế trẻ trung, năng động,
Chất liệu cao cấp bền đẹp.', 99, N'22ac4aa6-b8da-46e4-a0f0-a07271ec6181.jpg', 1, NULL, 0, 4)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (40, N'Giày Sneaker Nam Pettino', CAST(169000.00 AS Decimal(18, 2)), N'Chất liệu vải sợi thoáng khí cao cấp, bền đẹp theo thời gian.
Mũi giày tròn, đế êm tạo cảm giác thoải mái khi đi.', 100, N'af970953-83b6-4d0e-a3cf-3346b2907651.jpg', 1, NULL, 1, 4)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (41, N'Dép Xỏ Ngón Nữ BIGGBEN', CAST(159000.00 AS Decimal(18, 2)), N'Chất liệu da bò độ bền cao, bóng đẹp,
Đế cao su cao mang lại sự thoải mái, chống trơn trượt.', 98, N'f90d2da7-e3bc-4f08-acdd-9764a786ab45.jpg', 1, NULL, NULL, 4)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (42, N'Dép Thái Siêu Nhẹ Xỏ Ngón', CAST(60000.00 AS Decimal(18, 2)), N'Dép xỏ ngón không còn là một món đồ xa lạ mà đã trở thành một món đồ quen thuộc của rất nhiều bạn mỗi dịp hè về.', 100, N'495f6aed-c20f-46eb-a601-ca3be6d732d1.jpg', 1, NULL, 2, 4)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (43, N'Dép quai ngang chống ngấm nước', CAST(100000.00 AS Decimal(18, 2)), N'Dép quai ngang nam làm bằng chất liệu chống thấm nước,
Đế đúc nguyên khối chống mài mòn trơn trượt.', 100, N'b2dceb22-6503-4984-8a1b-a92060c2d55c.jpg', 1, NULL, 1, 4)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (44, N'Dép Nam quai chéo', CAST(59000.00 AS Decimal(18, 2)), N'Dép 2 quai chéo,
Chất liệu đế cao su nguyên chất có rãnh chống trơn trượt.', 100, N'472c163b-9cfb-4d2f-9463-333002bfa36b.jpg', 1, NULL, 4, 4)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (45, N'Công Phá Toán 3', CAST(141000.00 AS Decimal(18, 2)), NULL, 100, N'3a555c73-3188-47ba-820f-df572be6c650.jpg', 1, NULL, 6, 5)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (46, N'Đọc Vị Bất Kỳ Ai', CAST(47500.00 AS Decimal(18, 2)), NULL, 97, N'76084e37-a8a2-4474-b7b1-5899ec2ba385.gif', 1, NULL, 0, 5)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (47, N'Đàn Ông Sao Hỏa Đàn Bà Sao Kim', CAST(120000.00 AS Decimal(18, 2)), NULL, 98, N'fd5c3fcd-fb14-49b3-bbb3-298fdcb52e19.png', 1, NULL, 6, 5)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (48, N'Mũ len kèm khăn lót nỉ siêu ấm', CAST(58000.00 AS Decimal(18, 2)), N'Bộ sản phẩm gồm: 01 Mũ len + 01 khăn cổ,
Chất liệu len lót nỉ mềm mịn, ấm áp.', 99, N'2d7d86de-c492-44ab-81c6-17c64c0ec4fb.jpg', 1, NULL, 2, 7)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (49, N'Mũ nón nam Devil Jean', CAST(116000.00 AS Decimal(18, 2)), N'Mũ nón nam Devil Jean,
Kết hợp lưỡi nón bằng da & thân nón bằng Jeans.', 100, N'dc9ef45e-fdcc-4308-afc2-8b9c99ee93a3.jpg', 1, NULL, 6, 7)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (50, N'Nón lưỡi trai NY', CAST(49000.00 AS Decimal(18, 2)), N'Chất liệu vải cao cấp.
Mũi nón cong, phía sau có thể gia giảm điều chỉnh.', 100, N'2d8c9d3f-617c-4122-9439-44de54d55845.jpg', 1, NULL, 0, 7)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (51, N'Nón tai bèo bộ đội', CAST(50000.00 AS Decimal(18, 2)), N'Nhiều đường may chắc chắn, giúp nón bền chắc,
Chất liệu vải kaki oát bền đẹp, thoáng mát khi đội.', 99, N'9f4c654e-ce62-4c0b-92e7-ccfc1c8f0a96.jfif', 1, NULL, 1, 7)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (52, N'Vòng đeo tay thông minh Xiaomi', CAST(570000.00 AS Decimal(18, 2)), N'Kết nối bluetooth 5.0,
Màn hình cảm ứng AMOLED 0.95 inch.', 0, N'5404f3cf-18d0-4924-a0bd-2f8df9a8bb2d.jpg', 1, NULL, 3, 8)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (53, N'Cáp Sạc Lightning Dây Dù Hoco', CAST(33000.00 AS Decimal(18, 2)), N'Chất liệu: Đồng, nylon dệt kim,
Chiều dài dây 2m.', 99, N'92962910-f4b7-475a-a173-a3f55e2f1eb2.jpg', 1, NULL, 2, 8)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (54, N'Tai nghe Samsung A50', CAST(56000.00 AS Decimal(18, 2)), N'Âm thanh chất lượng rõ ràng, sống động,
Thiết kế dạng dây tròn sản phẩm màu trắng.', 99, N'3d09d44c-0358-432f-8b9d-0ade6f2b1671.jpg', 1, NULL, 0, 8)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (55, N'Thức uống socola Koko', CAST(129000.00 AS Decimal(18, 2)), N'Thức uống bổ sung năng lượng cần thiết cho các bạn trẻ có hoạt động ngoài trời,
Thức uống rất tốt cho các đối tượng trẻ cần năng lượng, canxi phát triển chiều cao.', 100, N'110ba5b7-d11f-4165-9432-c90bf9534adb.jpg', 1, NULL, 4, 6)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (56, N'Ngũ Cốc Nhân Socola Familia', CAST(217000.00 AS Decimal(18, 2)), N'Hương vị thơm ngon, rất dễ ăn,
Sản phẩm không gây tăng cân, không cholesterol.', 100, N'aac0c1d6-59aa-4adc-b506-bfe90a620b9f.jpg', 1, NULL, 4, 6)
INSERT [dbo].[product] ([id], [name], [price], [description], [amount], [image], [status], [size], [color], [categoryId]) VALUES (57, N'Thức Uống Sữa Cà Phê Nescafé', CAST(16000.00 AS Decimal(18, 2)), N'Thiết kế dạng chai tiện lợi, dễ dàng mang đi xa,
Sữa thật, cà phê thật, cho ngày mới tươi tỉnh.', 100, N'469e9b36-7a8d-4ead-b097-2f8b7bba06bc.jpg', 1, NULL, 3, 6)
SET IDENTITY_INSERT [dbo].[product] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 09/17/2020 15:14:48 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 09/17/2020 15:14:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 09/17/2020 15:14:48 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 09/17/2020 15:14:48 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 09/17/2020 15:14:48 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 09/17/2020 15:14:48 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 09/17/2020 15:14:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_comment_productId]    Script Date: 09/17/2020 15:14:48 ******/
CREATE NONCLUSTERED INDEX [IX_comment_productId] ON [dbo].[comment]
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_comment_userId]    Script Date: 09/17/2020 15:14:48 ******/
CREATE NONCLUSTERED INDEX [IX_comment_userId] ON [dbo].[comment]
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_order_userId]    Script Date: 09/17/2020 15:14:48 ******/
CREATE NONCLUSTERED INDEX [IX_order_userId] ON [dbo].[order]
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_orderdetail_orderId]    Script Date: 09/17/2020 15:14:48 ******/
CREATE NONCLUSTERED INDEX [IX_orderdetail_orderId] ON [dbo].[orderdetail]
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_orderdetail_productId]    Script Date: 09/17/2020 15:14:48 ******/
CREATE NONCLUSTERED INDEX [IX_orderdetail_productId] ON [dbo].[orderdetail]
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_product_categoryId]    Script Date: 09/17/2020 15:14:48 ******/
CREATE NONCLUSTERED INDEX [IX_product_categoryId] ON [dbo].[product]
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_reply_commentId]    Script Date: 09/17/2020 15:14:48 ******/
CREATE NONCLUSTERED INDEX [IX_reply_commentId] ON [dbo].[reply]
(
	[commentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_reply_userId]    Script Date: 09/17/2020 15:14:48 ******/
CREATE NONCLUSTERED INDEX [IX_reply_userId] ON [dbo].[reply]
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_AspNetUsers_userId]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_product_productId] FOREIGN KEY([productId])
REFERENCES [dbo].[product] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_product_productId]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_AspNetUsers_userId]
GO
ALTER TABLE [dbo].[orderdetail]  WITH CHECK ADD  CONSTRAINT [FK_orderdetail_order_orderId] FOREIGN KEY([orderId])
REFERENCES [dbo].[order] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orderdetail] CHECK CONSTRAINT [FK_orderdetail_order_orderId]
GO
ALTER TABLE [dbo].[orderdetail]  WITH CHECK ADD  CONSTRAINT [FK_orderdetail_product_productId] FOREIGN KEY([productId])
REFERENCES [dbo].[product] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orderdetail] CHECK CONSTRAINT [FK_orderdetail_product_productId]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category_categoryId] FOREIGN KEY([categoryId])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category_categoryId]
GO
ALTER TABLE [dbo].[reply]  WITH CHECK ADD  CONSTRAINT [FK_reply_AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[reply] CHECK CONSTRAINT [FK_reply_AspNetUsers_userId]
GO
ALTER TABLE [dbo].[reply]  WITH CHECK ADD  CONSTRAINT [FK_reply_comment_commentId] FOREIGN KEY([commentId])
REFERENCES [dbo].[comment] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[reply] CHECK CONSTRAINT [FK_reply_comment_commentId]
GO
/****** Object:  Trigger [dbo].[tg_dathang]    Script Date: 09/17/2020 15:14:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

            create trigger [dbo].[tg_dathang] on [dbo].[orderdetail]
            for insert as
            begin
	            declare @masp int
	            declare @quantity int
	            select @masp=productId, @quantity=quantity from inserted
	            update product set amount=amount-@quantity where id=@masp
            end
                
GO
ALTER TABLE [dbo].[orderdetail] ENABLE TRIGGER [tg_dathang]
GO
USE [master]
GO
ALTER DATABASE [WebsiteBanHang] SET  READ_WRITE 
GO
