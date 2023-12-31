USE [MobileShop]
GO
/****** Object:  Table [dbo].[About]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[AboutID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[Detail] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[AboutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Config]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Config](
	[ConfigID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Type] [nvarchar](250) NULL,
	[Value] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Config] PRIMARY KEY CLUSTERED 
(
	[ConfigID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Detail] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [bit] NULL,
	[SupplierID] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceDetail]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetail](
	[InvoiceID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[ProductName] [nvarchar](250) NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_InvoiceDetail] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](250) NULL,
	[Price] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NULL,
	[Status] [bit] NULL,
	[Delivered] [bit] NULL,
	[DeliveredDate] [datetime] NULL,
	[CustomerID] [int] NULL,
	[Discount] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[Image] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[Detail] [ntext] NULL,
	[CateID] [int] NULL,
	[Tags] [nvarchar](250) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostCategory]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCategory](
	[CateID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[Sort] [int] NULL,
	[ParentID] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_PostCategory] PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostComment]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostComment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Detail] [nvarchar](250) NULL,
	[Status] [int] NULL,
	[PostID] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_PostComment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostTag]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostTag](
	[PostID] [int] NOT NULL,
	[TagID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PostTag] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[Image] [nvarchar](250) NULL,
	[Listimage] [nvarchar](500) NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[VAT] [bit] NULL,
	[Quantity] [int] NULL,
	[Warranty] [int] NULL,
	[Hot] [datetime] NULL,
	[Description] [nvarchar](250) NULL,
	[Detail] [ntext] NULL,
	[CateID] [int] NULL,
	[BrandID] [int] NULL,
	[SupplierID] [int] NULL,
	[Tags] [nvarchar](250) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Capacity] [int] NULL,
	[Color] [nvarchar](250) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[CateID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductComment]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductComment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Detail] [nvarchar](250) NULL,
	[Status] [int] NULL,
	[ProductID] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ProductComment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 3/27/2023 11:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[TagID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([BrandID], [Name]) VALUES (1, N'Apple')
INSERT [dbo].[Brand] ([BrandID], [Name]) VALUES (2, N'Samsung')
INSERT [dbo].[Brand] ([BrandID], [Name]) VALUES (3, N'Xiami')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([PostID], [Name], [SeoTitle], [Status], [Image], [Description], [Detail], [CateID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'HOT: Sắp hết thời hạn đặt trước Galaxy A34 5G | A54 5G, nhanh tay chốt, nhận quà tốt', NULL, 1, NULL, NULL, N'Loa loa loa! Hoà cùng không khí nhộn nhịp của sự kiện ra mắt Galaxy A34 5G và Galaxy A54 5G, nhà Thế Giới Di Động cũng đã chính thức mở pre-order cho bộ đôi sản phẩm này. Khách hàng đặt trước sản phẩm trong thời gian này còn được nhận quà khủng, đặt biệt khách nhận máy trong thời gian từ 27 - 29/3 còn được giảm thêm 500K.', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([PostID], [Name], [SeoTitle], [Status], [Image], [Description], [Detail], [CateID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'5 mẹo hay trên iPhone giúp bạn cải thiện bảo mật thông tin và tránh bị theo dõi', NULL, 1, NULL, NULL, N'Với độ "hot" phủ sóng toàn cầu của nhà Apple, thì những chiếc iPhone của mình luôn mang một thiết kế sang trọng. Do đó, iPhone luôn là mục tiêu cho những kẻ tấn công mạng, ngay cả những người am hiểu về công nghệ vẫn sẽ gặp phải một số rủi ro nếu chưa biết bảo mật iPhone đúng cách. Sau đây sẽ là 5 mẹo tăng cường bảo mật trên iPhone giúp bạn cải thiện bảo mật và tránh bị lén theo dõi, tăng độ riêng tư và thêm lớp "phòng vệ" cho chiếc iPhone của mình nha.', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([PostID], [Name], [SeoTitle], [Status], [Image], [Description], [Detail], [CateID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'Cách chỉnh sửa tên tác giả trong tài liệu Microsoft Word siêu đơn giản, bạn xem ngay', NULL, 1, NULL, NULL, N'Bạn là một người sử dụng máy tính để soạn thảo Word thường xuyên thì chắc hẳn tên tài khoản của bạn cũng là tên tác giả của tài liệu. Tuy vậy trong một số trường hợp bạn cần phải thay đổi tên tác giả phải không nào? Vậy sau đây, mình sẽ chia sẻ cách chỉnh sửa tên tác giả trong tài liệu Microsoft Word nha.', 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([PostID], [Name], [SeoTitle], [Status], [Image], [Description], [Detail], [CateID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'Không thể bỏ qua được 5 mẫu điện thoại màu xanh cực cuốn hút, chỉ từ 2.59 triệu', NULL, 1, NULL, NULL, N'Team mê màu xanh đang tìm điện thoại có màu sắc yêu thích nhất định không bỏ qua được 5 mẫu sau. Chỉ từ 2.59 triệu đồng, bạn đã có thể sở hữu được chiếc smartphone cực xịn sò từ rất nhiều hãng như Samsung, OPPO, Xiaomi, realme. Nhanh tay chốt đơn ngay nhé!', 3, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[PostCategory] ON 

INSERT [dbo].[PostCategory] ([CateID], [Name], [SeoTitle], [Status], [Sort], [ParentID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Công nghệ', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PostCategory] ([CateID], [Name], [SeoTitle], [Status], [Sort], [ParentID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Thương mại', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PostCategory] ([CateID], [Name], [SeoTitle], [Status], [Sort], [ParentID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Dịch vụ', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PostCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[PostComment] ON 

INSERT [dbo].[PostComment] ([CommentID], [Name], [Email], [Detail], [Status], [PostID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Phó Đức Huy', N'pdh@gmail.com', N'Bài viết hữu ích', 1, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[PostComment] ([CommentID], [Name], [Email], [Detail], [Status], [PostID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Nguyễn Ngọc Cường', N'nnc@gmail.com', N'Bài viết rất hay', 1, 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[PostComment] ([CommentID], [Name], [Email], [Detail], [Status], [PostID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Biện Huỳnh Công Khang', N'bhck@gmail.com', N'Tôi đánh giá cao', 1, 8, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PostComment] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (2, N'iPhone 8', 1, N'/Theme/images/ImagesUpload/iphone8.png', NULL, CAST(3800000 AS Decimal(18, 0)), NULL, NULL, 3, 12, NULL, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 128, N'Black')
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (3, N'iPhone 8 Plus', 1, N'/Theme/images/ImagesUpload/iphone8plus.png', NULL, CAST(4500000 AS Decimal(18, 0)), NULL, NULL, 6, 12, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 64, N'Black')
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (4, N'iPhone 14 Pro Max', 1, N'/Theme/images/ImagesUpload/iphone14pm.png', N'/Uploadimages/iphone8plus_30be44f4-6e5c-426f-9628-fcbc82e15f3b.png,/Uploadimages/iphone14pm_719fca6b-e6e6-45e1-9651-9e3ae53ecd57.png,/Uploadimages/ssgs22ultra_22d33eed-eb62-4efe-b755-75bed260fee3.png,/Uploadimages/ssgs23ultra_9bf42530-73ce-41d8-b407-199e7a9ff312.png', CAST(34500000 AS Decimal(18, 0)), NULL, NULL, 10, 12, NULL, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, CAST(N'2023-03-27T02:05:36.853' AS DateTime), NULL, 129, N'Black')
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (5, N'iPhone 14 Pro Max', 1, N'/Uploadimages/iphone14pm_f9925a3d-f7a0-4ad3-9162-633f51fdd38c.png', N'/Uploadimages/iphone8plus_fda9e39b-b5c7-4150-b22c-014567fd46df.png,/Uploadimages/iphone14pm_7aac9721-dbc1-4fc3-9bb7-8274eeef2885.png,/Uploadimages/ssgs22ultra_cd96df3a-3377-4c5d-9f6a-0aab87dcc15a.png,/Uploadimages/ssgs23ultra_bd647a61-d9b9-4325-9e72-e65562324c91.png,/Uploadimages/xiaomi12t_384af48b-7493-4e93-812d-8feb84ae12b1.png,/Uploadimages/xiaomi13_f628ae7a-fa9c-4dea-aa13-1e55ad417f03.png', CAST(44000000 AS Decimal(18, 0)), NULL, NULL, 7, 12, NULL, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, CAST(N'2023-03-27T02:05:58.350' AS DateTime), NULL, 513, N'Black')
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (6, N'Samsung Galaxy S23 Ultra', 1, N'/Theme/images/ImagesUpload/ssgs23ultra.png', NULL, CAST(32000000 AS Decimal(18, 0)), NULL, NULL, 2, 12, NULL, NULL, NULL, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 256, N'Black')
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (7, N'Samsung Galaxy S22 Ultra', 1, N'/Theme/images/ImagesUpload/ssgs22ultra.png', NULL, CAST(30000000 AS Decimal(18, 0)), NULL, NULL, 4, 12, NULL, NULL, NULL, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 128, N'Red')
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (8, N'Xiaomi 13 Series', 1, N'/Theme/images/ImagesUpload/xiaomi13.png', NULL, CAST(23000000 AS Decimal(18, 0)), NULL, NULL, 8, 12, NULL, NULL, NULL, 1, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, 256, N'Black')
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (9, N'Xiaomi 12T', 1, N'/Theme/images/ImagesUpload/xiaomi12t.png', NULL, CAST(12500000 AS Decimal(18, 0)), NULL, NULL, 9, 12, NULL, NULL, NULL, 1, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, 128, N'Black')
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (10, N'iPad Pro M1 12.9 inch', 1, N'/Theme/images/ImagesUpload/ipadprom1.png', NULL, CAST(35000000 AS Decimal(18, 0)), NULL, NULL, 1, 12, NULL, NULL, NULL, 2, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 128, N'Silver')
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (11, N'Sạc Apple MGN13', 1, N'/Theme/images/ImagesUpload/mgn13.png', NULL, CAST(450000 AS Decimal(18, 0)), NULL, NULL, 10, 6, NULL, NULL, NULL, 3, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (12, N'Sạc Apple MGN03', 1, N'/Theme/images/ImagesUpload/mgn03.png', NULL, CAST(500000 AS Decimal(18, 0)), NULL, NULL, 10, 6, NULL, NULL, NULL, 3, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (13, N'iPad 9 WiFi', 1, N'/Theme/images/ImagesUpload/ipad9wifi.png', NULL, CAST(10000000 AS Decimal(18, 0)), NULL, NULL, 6, 12, NULL, NULL, NULL, 2, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 64, N'Silver')
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (14, N'iPad 10 WiFi', 1, N'/Theme/images/ImagesUpload/ipad10wifi.png', NULL, CAST(13000000 AS Decimal(18, 0)), NULL, NULL, 7, 12, NULL, NULL, NULL, 2, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 64, N'Black')
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (15, N'iPad Pro M2 12.9 inch WiFi', 1, N'/Theme/images/ImagesUpload/ipadprom2.png', NULL, CAST(32000000 AS Decimal(18, 0)), NULL, NULL, 3, 12, NULL, NULL, NULL, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 128, N'White')
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (16, N'Samsung Galaxy Tab A8', 1, N'/Theme/images/ImagesUpload/ssgtaba8.png', NULL, CAST(7000000 AS Decimal(18, 0)), NULL, NULL, 4, 12, NULL, NULL, NULL, 2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, 64, N'Grey')
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (17, N'Samsung Galaxy Tab A7 Lite', 1, N'/Theme/images/ImagesUpload/ssgtaba7lite.png', NULL, CAST(4500000 AS Decimal(18, 0)), NULL, NULL, 2, 12, NULL, NULL, NULL, 2, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, 32, N'Grey')
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (19, N'Cáp Lightning MFI 1m Mbest DS286-WB', 1, N'/Theme/images/ImagesUpload/DS286-WB.png', NULL, CAST(250000 AS Decimal(18, 0)), NULL, NULL, 10, 6, NULL, NULL, NULL, 3, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Grey')
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (20, N'Cáp Lightning MFI 2m Mbest DS287-WB', 1, N'/Theme/images/ImagesUpload/DS287-WB.png', NULL, CAST(250000 AS Decimal(18, 0)), NULL, NULL, 10, 6, NULL, NULL, NULL, 3, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Grey')
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (26, N'test', 1, N'/Uploadimages/xiaomi13_d36acc32-aaee-44e6-bb91-e7b6a379a986.png                                                                                                                                                                                           ', NULL, CAST(324 AS Decimal(18, 0)), NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (27, N'test', NULL, N'/Uploadimages/iphone14pm_dcbe5fdd-6087-4b45-b6dd-50ceb8e3d0e8.png                                                                                                                                                                                         ', NULL, CAST(323 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [Name], [Status], [Image], [Listimage], [Price], [PromotionPrice], [VAT], [Quantity], [Warranty], [Hot], [Description], [Detail], [CateID], [BrandID], [SupplierID], [Tags], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [ViewCount], [Capacity], [Color]) VALUES (28, N'test', NULL, N'/Uploadimages/ssgs22ultra_ed645b82-820b-4f41-aa2e-d9c88a6c81bc.png                                                                                                                                                                                        ', NULL, CAST(234 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([CateID], [Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Điện thoại', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([CateID], [Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Máy tính bảng', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([CateID], [Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Phụ kiện', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([CateID], [Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'test', 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductComment] ON 

INSERT [dbo].[ProductComment] ([CommentID], [Name], [Email], [Detail], [Status], [ProductID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Tran Minh Man', N'tmm@gmail.com', N'ok sản phẩm', 1, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductComment] ([CommentID], [Name], [Email], [Detail], [Status], [ProductID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Nguyễn Thành Nam', N'ntn@gmail.com', N'Sản phẩm tốt', 1, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductComment] ([CommentID], [Name], [Email], [Detail], [Status], [ProductID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'Chu Hào', N'chh@gmail.com', N'Quá tuyệt vời, khen hết lời lời luôn, mình rất thích màu vàng', 1, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductComment] ([CommentID], [Name], [Email], [Detail], [Status], [ProductID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'Lê Mạnh Cường', N'lmc@gmail.com', N'Máy sử dụng tốt', 1, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductComment] ([CommentID], [Name], [Email], [Detail], [Status], [ProductID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'Hoàng Thị Hương', N'hth@gmail.com', N'Hàng tốt, nhân viên rất nhiệt tình', 1, 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductComment] ([CommentID], [Name], [Email], [Detail], [Status], [ProductID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'Đặng Thị Hương Giang', N'dthg@gmail.com', N'Sp tuyệt vời ạ', 1, 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductComment] ([CommentID], [Name], [Email], [Detail], [Status], [ProductID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'Võ Trong Đức Tài', N'vtdt@gmail.com', N'Sẽ giới thiệu cho bạn bè, người thân', 1, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductComment] ([CommentID], [Name], [Email], [Detail], [Status], [ProductID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'Ngô Nhật Trường', N'ntt@gmail.com', N'Máy rất oke', 1, 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductComment] ([CommentID], [Name], [Email], [Detail], [Status], [ProductID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'Trần Minh Trí', N'tmt@gmail.com', N'Dây sạc theo máy bị hỏng ko sạc được có đổi dc không', 1, 10, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductComment] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierID], [Name], [Email], [Phone], [Address]) VALUES (1, N'FPTShop', N'fpt@gmail.com', N'0367676767', NULL)
INSERT [dbo].[Supplier] ([SupplierID], [Name], [Email], [Phone], [Address]) VALUES (2, N'TGDT', N'tgdt@gmail.com', N'0368686868', NULL)
INSERT [dbo].[Supplier] ([SupplierID], [Name], [Email], [Phone], [Address]) VALUES (3, N'HoangHaMobile', N'hhmobile@gmail.com', N'0369696969', NULL)
INSERT [dbo].[Supplier] ([SupplierID], [Name], [Email], [Phone], [Address]) VALUES (4, N'CellPhoneS', N'cps@gmail.com', N'0370707070', NULL)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
ALTER TABLE [dbo].[Invoice] ADD  CONSTRAINT [DF_Invoice_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Invoice] ADD  CONSTRAINT [DF_Invoice_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF_Post_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF_Post_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PostCategory] ADD  CONSTRAINT [DF_PostCategory_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[PostCategory] ADD  CONSTRAINT [DF_PostCategory_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PostComment] ADD  CONSTRAINT [DF_PostComment_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[PostComment] ADD  CONSTRAINT [DF_PostComment_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductComment] ADD  CONSTRAINT [DF_ProductComment_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ProductComment] ADD  CONSTRAINT [DF_ProductComment_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetail_Invoice] FOREIGN KEY([InvoiceID])
REFERENCES [dbo].[Invoice] ([InvoiceID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoiceDetail] CHECK CONSTRAINT [FK_InvoiceDetail_Invoice]
GO
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoiceDetail] CHECK CONSTRAINT [FK_InvoiceDetail_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_PostCategory] FOREIGN KEY([CateID])
REFERENCES [dbo].[PostCategory] ([CateID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_PostCategory]
GO
ALTER TABLE [dbo].[PostComment]  WITH CHECK ADD  CONSTRAINT [FK_PostComment_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([PostID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostComment] CHECK CONSTRAINT [FK_PostComment_Post]
GO
ALTER TABLE [dbo].[PostTag]  WITH CHECK ADD  CONSTRAINT [FK_PostTag_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([PostID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostTag] CHECK CONSTRAINT [FK_PostTag_Post]
GO
ALTER TABLE [dbo].[PostTag]  WITH CHECK ADD  CONSTRAINT [FK_PostTag_Tag] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([TagID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostTag] CHECK CONSTRAINT [FK_PostTag_Tag]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([CateID])
REFERENCES [dbo].[ProductCategory] ([CateID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([SupplierID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[ProductComment]  WITH CHECK ADD  CONSTRAINT [FK_ProductComment_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductComment] CHECK CONSTRAINT [FK_ProductComment_Product]
GO
