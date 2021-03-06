USE [project_web]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/18/2021 12:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserID] [nvarchar](50) NOT NULL,
	[BirDate] [date] NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [int] NULL,
	[Address] [nvarchar](50) NULL,
	[UserPhone] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[isAdmin] [int] NULL,
 CONSTRAINT [PK__user__1788CCACFFB80CAB] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/18/2021 12:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[oderID] [nvarchar](50) NOT NULL,
	[oderName] [nchar](10) NULL,
	[totalPrice] [float] NULL,
 CONSTRAINT [PK_Oder] PRIMARY KEY CLUSTERED 
(
	[oderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 12/18/2021 12:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [nvarchar](50) NOT NULL,
	[UserID] [nvarchar](50) NULL,
	[OrderDate] [nvarchar](50) NULL,
	[ProductID] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/18/2021 12:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [nvarchar](50) NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[ProductImg] [nvarchar](max) NULL,
	[price] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[ProductImg1] [nvarchar](max) NULL,
	[type] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK__Product__B40CC6ED06356B6E] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Account] ([UserID], [BirDate], [FirstName], [LastName], [Gender], [Address], [UserPhone], [UserName], [Password], [isAdmin]) VALUES (N'an binh', CAST(N'2000-02-02' AS Date), N'an', N'bình', 1, N'hòa lạc', N'0314698465', N'an binh', N'123456', 0)
INSERT [dbo].[Account] ([UserID], [BirDate], [FirstName], [LastName], [Gender], [Address], [UserPhone], [UserName], [Password], [isAdmin]) VALUES (N'an543', CAST(N'1999-02-02' AS Date), N'binh', N'ann', 1, N'sài gòn', N'0123456789', N'an', N'123456', 0)
INSERT [dbo].[Account] ([UserID], [BirDate], [FirstName], [LastName], [Gender], [Address], [UserPhone], [UserName], [Password], [isAdmin]) VALUES (N'asdf', CAST(N'2000-12-20' AS Date), N'X', N'Cong', 1, N'h?i phòng', N'01234957635', N'congX', N'123456', 0)
INSERT [dbo].[Account] ([UserID], [BirDate], [FirstName], [LastName], [Gender], [Address], [UserPhone], [UserName], [Password], [isAdmin]) VALUES (N'cong123', CAST(N'2000-01-01' AS Date), N'hoang', N'cong', 1, N'hải phòng', N'0123456789', N'cong', N'123456', 1)
INSERT [dbo].[Account] ([UserID], [BirDate], [FirstName], [LastName], [Gender], [Address], [UserPhone], [UserName], [Password], [isAdmin]) VALUES (N'congQ', NULL, NULL, NULL, NULL, NULL, NULL, N'congQ', N'123456', 0)
INSERT [dbo].[Account] ([UserID], [BirDate], [FirstName], [LastName], [Gender], [Address], [UserPhone], [UserName], [Password], [isAdmin]) VALUES (N'hoang321', CAST(N'2000-05-12' AS Date), N'xuan', N'hoang', 0, N'hà nội', N'0987654321', N'hoang', N'123456', 0)
INSERT [dbo].[Account] ([UserID], [BirDate], [FirstName], [LastName], [Gender], [Address], [UserPhone], [UserName], [Password], [isAdmin]) VALUES (N'hoangH', NULL, NULL, NULL, NULL, NULL, NULL, N'hoangH', N'123456', 0)
GO
INSERT [dbo].[Order] ([oderID], [oderName], [totalPrice]) VALUES (N'don1', N'giày      ', 100000)
GO
INSERT [dbo].[OrderDetail] ([OrderID], [UserID], [OrderDate], [ProductID], [Quantity]) VALUES (N'don1', N'an543', N'12-12-2020', NULL, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [UserID], [OrderDate], [ProductID], [Quantity]) VALUES (N'don2', N'hoang321', N'31-12-2020', NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'ao0', N'Black Skull Cuban Shirt', N'https://product.hstatic.net/1000352239/product/dsc_1481_86634aa9600f47ce889640c17f34286c_master.jpg', 360000, N'Khi chọn xong sản phẩm, đến phần thanh toán hệ thống sẽ tự động giảm giá đối với hóa đơn mua trên 2 sản phẩm Cuban Shirt 

Chất liệu vải: Lụa mịn cao cấp 

Form: Regular

Cuban Collar



Size Chart:

Size M: 55-70kg

Size L: 70-85kg', N'https://product.hstatic.net/1000352239/product/dsc_1562_34ced0a72fab482f9e66920be15cc4ae_master.jpg', N'shirt', 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'ao1', N'Modern II Cuban Shirt', N'https://product.hstatic.net/1000352239/product/dsc_1434__1__1f8e3d5d78764494a6218351603e8d1e_master.jpg', 360000, N'Chất liệu vải: Lụa mịn cao cấp 

Form: Regular

Cuban Collar



Size Chart:

Size M: 55-70kg

Size L: 70-85kg', N'https://product.hstatic.net/1000352239/product/_dsf5954_ef9ce0faceff4fadb30509a88b1a7ded_master.jpg', N'shirt', 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'ao2', N'Eddy Cuban Shirt', N'https://product.hstatic.net/1000352239/product/_dsf5944_88f6fb112c714f19bcde313bedd988ad_master.jpg', 360000, N'Chất liệu vải: Lụa mịn cao cấp 

Form: Regular

Cuban Collar



Size Chart:

Size M: 55-70kg

Size L: 70-85kg', N'https://product.hstatic.net/1000352239/product/dsc_1151_ac3723d501b3450cab7c6a1e783abb4a_master.jpg', N'shirt', 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'ao3', N'Bandana Cuban Shirt', N'https://product.hstatic.net/1000352239/product/dsc_1218_6b34cdb573fe48d6ac3180e9bc00d6ad_master.jpg', 360000, N'*Khi chọn xong sản phẩm, đến phần thanh toán hệ thống sẽ tự động giảm giá đối với hóa đơn mua trên 2 sản phẩm Cuban Shirt 

Chất liệu vải: Lụa mịn cao cấp 

Form: Regular

Cuban Collar



Size Chart:

Size M: 55-70kg

Size L: 70-85kg

', N'https://product.hstatic.net/1000352239/product/dsc_1283_3e3437b19cbb40bdba0e5df7f9990f49_master.jpg', N'shirt', 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'ao4', N'Black Floral Cuban Shirt', N'https://product.hstatic.net/1000352239/product/dsc_1732_9068d4259f604135a87ade214f70d265_master.jpg', 360000, N'Chất liệu vải: Lụa mịn cao cấp 

Form: Regular

Cuban Collar



Size Chart:

Size M: 55-70kg

Size L: 70-85kg', N'https://product.hstatic.net/1000352239/product/dsc_1676_540415b4b5c44d98b77781913888f89d_master.jpg', N'shirt', 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'ao5', N'Black Satin Cuban Shirt', N'https://product.hstatic.net/1000352239/product/dsc_1768_ea68ba4591f74ad1b0ff3ab5de780ad7_master.jpg', 360000, N'Chất liệu vải: Lụa mịn cao cấp 

Form: Regular

Cuban Collar



Size Chart:

Size M: 55-70kg

Size L: 70-85kg', N'https://product.hstatic.net/1000352239/product/_dsf5823_1a8afa537a3743cab88edc6b7189f71d_master.jpg', N'shirt', 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'giay1', N'Black Leather Side Strap Chelsea Boots', N'https://product.hstatic.net/1000352239/product/img_8456_aad8ae2e558c4168b97a2694a6b75496_master.jpg', 1100000, N'Da bò thật 100%

Đế gỗ

Bảo hành da, đế 1 năm', N'//product.hstatic.net/1000352239/product/img_8458_ddf6224c25f84506933e81df97a09fcc_grande.jpg', N'shoe', 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'giay2', N'Chelsea Boots High Heel Brown', N'https://product.hstatic.net/1000352239/product/img_8534_d0c9fcb1dd5b491ab9a9197c37adf9b1_master.jpg', 1000000, N'Da bò thật 100%

Đế gỗ

Bảo hành da, đế 1 năm', N'//product.hstatic.net/1000352239/product/img_8536_98ea9966d4a14f9fa70c805a132d27ad_grande.jpg', N'shoe', 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'giay3', N'Chelsea Boots High Heel Suede Black', N'https://product.hstatic.net/1000352239/product/img_8569_a38abb69ed664c11a6790300de65cc0a_master.jpg', 1500000, N'Da bò thật 100%

Đế gỗ

Bảo hành da, đế 1 năm', N'//product.hstatic.net/1000352239/product/4_83b0df6f83514ec49ac1fba74e03434b_grande.png', N'shoe', 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'giay4', N'Red Brown Zip Boots Captoe', N'https://product.hstatic.net/1000352239/product/img_8445_b07703fee49b461188086a916ad21560_master.jpg', 1200000, N'Da bò thật 100%

Đế gỗ

Bảo hành da, đế 1 năm', N'https://product.hstatic.net/1000352239/product/img_8455_f2c3b695b62949789f1c1f65ada0ce16_master.jpg', N'shoe', 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'giay5', N'Yellow Suede Cap Toe Zip Boots', N'https://product.hstatic.net/1000352239/product/img_8481_f404e646c3a946d8a8d9e2eb6ea6fe0b_master.jpg', 1200000, N'Da bò thật 100%

Đế gỗ

Bảo hành da, đế 1 năm', N'https://product.hstatic.net/1000352239/product/img_8488_8392d264900a433b914d2b4417a4f477_master.jpg', N'shoe', 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'giay6', N'Black Zip Boot Captoe', N'https://product.hstatic.net/1000352239/product/img_8489_6e2274e867bc4fc389cfa214fb74676c_master.jpg', 1200000, N'Da bò thật 100%

Đế gỗ

Bảo hành da, đế 1 năm', N'https://product.hstatic.net/1000352239/product/img_8495_9c93779acfb94d73b033f13cfc37f49f_master.jpg', N'shoe', 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'quan1', N'Grey Painted Skinny Jeans', N'https://product.hstatic.net/1000352239/product/grey_painted_side_7430f3ed08f34a00882586ba04ea3d5d_grande.jpg', 620000, N'98% cotton 2% spandex

Hand Distressed

Hand Painted



Size chart

. Size 28: 48kg to 58kg

. Size 30: 58kg to 65kg

. Size 32: 65kg to 74kg

. Size 34: 74kg to 82kg

. Size 36: 82kg to 90kg', N'//product.hstatic.net/1000352239/product/grey_painted_front_542bf51e71624512a8b5ac780a1c18d4_grande.jpg', N'jean', 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'quan2', N'Black Distressed Skinny Jeans', N'https://product.hstatic.net/1000352239/product/smoke_grey_basic_side_6468fe252ad04b5994c5dee5acea27a7_grande.jpg', 580000, N'98% cotton 2% spandex

Hand Distressed

Hand Painted



Size chart

. Size 28: 48kg to 58kg

. Size 30: 58kg to 65kg

. Size 32: 65kg to 74kg

. Size 34: 74kg to 82kg

. Size 36: 82kg to 90kg', N'//product.hstatic.net/1000352239/product/black_distressed_side_af4e7a50404c4ae79c73e62467f9d9f1_grande.jpg', N'jean', 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'quan3', N'Dark Waxed Skinny Jeans', N'https://product.hstatic.net/1000352239/product/smoke_grey_basic_side__2__9a910cb6cd8842fc9351df9e46781c1c_grande.jpg', 620000, N'98% cotton 2% spandex

Hand Distressed

Hand Painted



Size chart

. Size 28: 48kg to 58kg

. Size 30: 58kg to 65kg

. Size 32: 65kg to 74kg

. Size 34: 74kg to 82kg

. Size 36: 82kg to 90kg', N'//product.hstatic.net/1000352239/product/_dsf3743_c6b22a6940894c1c8343a1f89cff9027_grande.jpg', N'jean', 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'quan4', N'Black Biker Jeans', N'https://product.hstatic.net/1000352239/product/black_biker_front_81f95fa1f9e44d8691fc544ce25d9bb9_master.jpg', 650000, N'.Material : 98% cotton, 2% spandex

Size chart

. Size 28: 48kg to 58kg

. Size 30: 58kg to 65kg

. Size 32: 65kg to 74kg

. Size 34: 74kg to 82kg

. Size 36: 82kg to 90kg', N'https://product.hstatic.net/1000352239/product/black_biker_front_81f95fa1f9e44d8691fc544ce25d9bb9_master.jpg', N'jean', 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'quan5', N'Smoke Grey Distressed Skinny Jeans', N'https://product.hstatic.net/1000352239/product/smoke_grey_basic_front_9b8c3893a26a4c3e9fb37967cefb0f75_master.jpg', 580000, N'.Material : 98% cotton, 2% spandex

Size chart

. Size 28: 48kg to 58kg

. Size 30: 58kg to 65kg

. Size 32: 65kg to 74kg

. Size 34: 74kg to 82kg

. Size 36: 82kg to 90kg', N'https://product.hstatic.net/1000352239/product/smoke_grey_basic_front_9b8c3893a26a4c3e9fb37967cefb0f75_master.jpg', N'jean', 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImg], [price], [Description], [ProductImg1], [type], [Quantity]) VALUES (N'quan6', N'Black Basic Skinny Jeans', N'https://product.hstatic.net/1000352239/product/black_basic_8f3ff7b57d024deb81cba64caff15d25_master.jpg', 580000, N'.Material : 98% cotton, 2% spandex

Size chart

. Size 28: 48kg to 58kg

. Size 30: 58kg to 65kg

. Size 32: 65kg to 74kg

. Size 34: 74kg to 82kg

. Size 36: 82kg to 90kg', N'https://product.hstatic.net/1000352239/product/black_skinny_jeans_f13992a8fb94453ea76d3046427e3ef4_master.jpg', N'jean', 5)
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__Order__UserID__5812160E] FOREIGN KEY([UserID])
REFERENCES [dbo].[Account] ([UserID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__Order__UserID__5812160E]
GO
