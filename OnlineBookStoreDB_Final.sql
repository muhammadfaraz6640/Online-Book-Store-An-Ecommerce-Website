USE [master]
GO
/****** Object:  Database [OnlineBookStore]    Script Date: 10/2/2020 9:19:17 AM ******/
CREATE DATABASE [OnlineBookStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OnlineBookStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\OnlineBookStore.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OnlineBookStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\OnlineBookStore_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [OnlineBookStore] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineBookStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OnlineBookStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OnlineBookStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OnlineBookStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OnlineBookStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OnlineBookStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [OnlineBookStore] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [OnlineBookStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OnlineBookStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OnlineBookStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OnlineBookStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OnlineBookStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OnlineBookStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OnlineBookStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OnlineBookStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OnlineBookStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [OnlineBookStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OnlineBookStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OnlineBookStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OnlineBookStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OnlineBookStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OnlineBookStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OnlineBookStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OnlineBookStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OnlineBookStore] SET  MULTI_USER 
GO
ALTER DATABASE [OnlineBookStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OnlineBookStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OnlineBookStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OnlineBookStore] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [OnlineBookStore] SET DELAYED_DURABILITY = DISABLED 
GO
USE [OnlineBookStore]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 10/2/2020 9:19:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Aid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Books]    Script Date: 10/2/2020 9:19:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Bid] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [nvarchar](max) NULL,
	[Cid] [int] NULL,
	[Uid] [int] NULL,
	[BookPrice] [float] NULL,
	[BookPic] [nvarchar](max) NULL,
	[DiscountPercent] [float] NULL,
	[BookCondition] [nvarchar](50) NULL,
	[BookDescription] [nvarchar](max) NULL,
	[IsCharity] [nvarchar](20) NULL,
	[IsSold] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cart]    Script Date: 10/2/2020 9:19:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[BuyerID] [int] NULL,
	[SellerID] [int] NULL,
	[BookPrice] [float] NULL,
	[Bid] [int] NULL,
	[BookName] [nvarchar](50) NULL,
	[BookPic] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/2/2020 9:19:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 10/2/2020 9:19:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[subject] [nvarchar](50) NULL,
	[body] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 10/2/2020 9:19:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Lid] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 10/2/2020 9:19:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[BuyerID] [int] NULL,
	[SellerID] [int] NULL,
	[BookID] [int] NULL,
	[SalesID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 10/2/2020 9:19:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[Pid] [int] IDENTITY(1,1) NOT NULL,
	[MethodName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sales]    Script Date: 10/2/2020 9:19:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[SalesID] [int] IDENTITY(1,1) NOT NULL,
	[BuyerID] [int] NULL,
	[MethodID] [int] NULL,
	[Total] [float] NULL,
	[dated] [datetime] NULL,
	[Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SalesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/2/2020 9:19:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Contact] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[PostCode] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Pass] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Bid], [BookName], [Cid], [Uid], [BookPrice], [BookPic], [DiscountPercent], [BookCondition], [BookDescription], [IsCharity], [IsSold]) VALUES (1, N'Inorganic Chemistry', 3, 1, 200, N'Books/ansar4102915@cloud.neduet.edu.pkchem1.jpg', 180, N'Very Good', N'The Complete Inorganic Guide', N'payment', N'No')
INSERT [dbo].[Books] ([Bid], [BookName], [Cid], [Uid], [BookPrice], [BookPic], [DiscountPercent], [BookCondition], [BookDescription], [IsCharity], [IsSold]) VALUES (2, N'A level Mathematics', 4, 1, 100, N'Books/ansar4102915@cloud.neduet.edu.pkmath2.jpg', 80, N'New', N'Complete A level Mathematics book', N'payment', N'No')
INSERT [dbo].[Books] ([Bid], [BookName], [Cid], [Uid], [BookPrice], [BookPic], [DiscountPercent], [BookCondition], [BookDescription], [IsCharity], [IsSold]) VALUES (3, N'Nuclear Physics', 2, 1, 300, N'Books/ansar4102915@cloud.neduet.edu.pkphy1.jpg', 240, N'Fair', N'The complete Nuclear Physics Guide', N'payment', N'No')
INSERT [dbo].[Books] ([Bid], [BookName], [Cid], [Uid], [BookPrice], [BookPic], [DiscountPercent], [BookCondition], [BookDescription], [IsCharity], [IsSold]) VALUES (5, N'Mathematics Book1', 4, 1, 0, N'Books/ansar4102915@cloud.neduet.edu.pkmath.jpg', 0, N'Very Good', N'The complete Mathematics for 1st Year ', N'Charity', N'No')
INSERT [dbo].[Books] ([Bid], [BookName], [Cid], [Uid], [BookPrice], [BookPic], [DiscountPercent], [BookCondition], [BookDescription], [IsCharity], [IsSold]) VALUES (6, N'Particle Physics', 2, 1, 0, N'Books/ansar4102915@cloud.neduet.edu.pkphy.jpg', 0, N'Very Good', N'Particle physics for undergraduates', N'Charity', N'No')
INSERT [dbo].[Books] ([Bid], [BookName], [Cid], [Uid], [BookPrice], [BookPic], [DiscountPercent], [BookCondition], [BookDescription], [IsCharity], [IsSold]) VALUES (7, N'The Bad Guy', 1, 1, 0, N'Books/ansar4102915@cloud.neduet.edu.pkbook.jpg', 0, N'Good', N'I have read It already so thats why i am giving in charity', N'Charity', N'No')
SET IDENTITY_INSERT [dbo].[Books] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Cid], [CatName]) VALUES (1, N'Fiction')
INSERT [dbo].[Category] ([Cid], [CatName]) VALUES (2, N'Physics')
INSERT [dbo].[Category] ([Cid], [CatName]) VALUES (3, N'Chemistry')
INSERT [dbo].[Category] ([Cid], [CatName]) VALUES (4, N'Mathematics')
INSERT [dbo].[Category] ([Cid], [CatName]) VALUES (5, N'Story')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([Cid], [Name], [email], [subject], [body]) VALUES (1, N'muhammad faraz', N'ansar4102915@cloud.neduet.edu.pk', N'Test Contact', N'Contact')
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([Lid], [email], [password], [role]) VALUES (1, N'ansar4102915@cloud.neduet.edu.pk', N'12347', N'User')
INSERT [dbo].[Login] ([Lid], [email], [password], [role]) VALUES (2, N'ansar.faraz@yahoo.com', N'12369', N'User')
SET IDENTITY_INSERT [dbo].[Login] OFF
SET IDENTITY_INSERT [dbo].[PaymentMethod] ON 

INSERT [dbo].[PaymentMethod] ([Pid], [MethodName]) VALUES (1, N'COD')
INSERT [dbo].[PaymentMethod] ([Pid], [MethodName]) VALUES (2, N'PayPal')
SET IDENTITY_INSERT [dbo].[PaymentMethod] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Uid], [Name], [Contact], [Gender], [Address], [PostCode], [Email], [Pass], [City]) VALUES (1, N'muhammad faraz', N'+61585785524', N'Male', N'Al Rahim Arcade A-12 Sydney', N'746000', N'ansar4102915@cloud.neduet.edu.pk', N'12347', N'Sydney')
INSERT [dbo].[Users] ([Uid], [Name], [Contact], [Gender], [Address], [PostCode], [Email], [Pass], [City]) VALUES (2, N'muhammad umer', N'+61587415896', N'Male', N'Al Bashir Arcade A-12 Sydney', N'746000', N'ansar.faraz@yahoo.com', N'12369', N'Sydney')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Books]  WITH CHECK ADD FOREIGN KEY([Cid])
REFERENCES [dbo].[Category] ([Cid])
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD FOREIGN KEY([Uid])
REFERENCES [dbo].[Users] ([Uid])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([Bid])
REFERENCES [dbo].[Books] ([Bid])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([BuyerID])
REFERENCES [dbo].[Users] ([Uid])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([SellerID])
REFERENCES [dbo].[Users] ([Uid])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Books] ([Bid])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([BuyerID])
REFERENCES [dbo].[Users] ([Uid])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([SalesID])
REFERENCES [dbo].[Sales] ([SalesID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([SellerID])
REFERENCES [dbo].[Users] ([Uid])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([BuyerID])
REFERENCES [dbo].[Users] ([Uid])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([MethodID])
REFERENCES [dbo].[PaymentMethod] ([Pid])
GO
USE [master]
GO
ALTER DATABASE [OnlineBookStore] SET  READ_WRITE 
GO
