USE [ShopDB]
GO
/****** Object:  Table [dbo].[AppConfigs]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppConfigs](
	[Key] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AppConfigs] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AppRoleClaims]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AppRoles]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Description] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_AppRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AppUserClaims]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AppUserLogins]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserLogins](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[ProviderKey] [nvarchar](max) NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AppUserRoles]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AppUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
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
	[FirstName] [nvarchar](200) NOT NULL,
	[LastName] [nvarchar](200) NOT NULL,
	[Dob] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AppUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AppUserTokens]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carts]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SortOrder] [int] NOT NULL,
	[IsShowOnHome] [bit] NOT NULL,
	[ParentId] [int] NULL,
	[Status] [int] NOT NULL DEFAULT ((1)),
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[PhoneNumber] [nvarchar](200) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ShipName] [nvarchar](200) NOT NULL,
	[ShipAddress] [nvarchar](200) NOT NULL,
	[ShipEmail] [varchar](50) NOT NULL,
	[ShipPhoneNumber] [nvarchar](200) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductInCategories]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductInCategories](
	[ProductId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_ProductInCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[OriginalPrice] [decimal](18, 2) NOT NULL,
	[Stock] [int] NOT NULL DEFAULT ((0)),
	[ViewCount] [int] NOT NULL DEFAULT ((0)),
	[DateCreated] [datetime2](7) NOT NULL,
	[SeoAlias] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductTranslations]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductTranslations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Details] [nvarchar](500) NULL,
	[SeoDescription] [nvarchar](max) NULL,
	[SeoTitle] [nvarchar](max) NULL,
	[SeoAlias] [nvarchar](200) NOT NULL,
	[LanguageId] [varchar](5) NOT NULL,
 CONSTRAINT [PK_ProductTranslations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Promotions]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FromDate] [datetime2](7) NOT NULL,
	[ToDate] [datetime2](7) NOT NULL,
	[ApplyForAll] [bit] NOT NULL,
	[DiscountPercent] [int] NULL,
	[DiscountAmount] [decimal](18, 2) NULL,
	[ProductIds] [nvarchar](max) NULL,
	[ProductCategoryIds] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Promotions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 9/7/2021 4:30:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TransactionDate] [datetime2](7) NOT NULL,
	[ExternalTransactionId] [nvarchar](max) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Fee] [decimal](18, 2) NOT NULL,
	[Result] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Provider] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[AppConfigs] ([Key], [Value]) VALUES (N'HomeDescription', N'This is description of eShopSolution')
INSERT [dbo].[AppConfigs] ([Key], [Value]) VALUES (N'HomeKeyword', N'This is keyword of eShopSolution')
INSERT [dbo].[AppConfigs] ([Key], [Value]) VALUES (N'HomeTitle', N'This is home page of eShopSolution')
INSERT [dbo].[AppRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [Description]) VALUES (N'8d04dce2-969a-435d-bba4-df3f325983dc', N'admin', N'admin', N'af975d76-ccca-4dd7-849a-2a7a04cb020d', N'Administrator role')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'69bd714f-9576-45ba-b5b7-f00649be00de', N'8d04dce2-969a-435d-bba4-df3f325983dc')
INSERT [dbo].[AppUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Dob]) VALUES (N'69bd714f-9576-45ba-b5b7-f00649be00de', N'admin', N'admin', N'tedu.international@gmail.com', N'tedu.international@gmail.com', 1, N'AQAAAAEAACcQAAAAEKx49hmjikHVcRZ/R3u0YovepOmtjgY8D8NcCh9Pt8vaf4MVylK0O5LhabF7WTsojA==', N'', N'06f58f26-7860-47a0-aaa3-6ee4e7c56d99', NULL, 0, 0, NULL, 0, 0, N'Thanh', N'Ho', CAST(N'2021-01-06 00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [SortOrder], [IsShowOnHome], [ParentId], [Status]) VALUES (1, 1, 1, NULL, 1)
INSERT [dbo].[Categories] ([Id], [SortOrder], [IsShowOnHome], [ParentId], [Status]) VALUES (2, 2, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
INSERT [dbo].[ProductInCategories] ([ProductId], [CategoryId]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Price], [OriginalPrice], [Stock], [ViewCount], [DateCreated], [SeoAlias]) VALUES (1, CAST(200000.00 AS Decimal(18, 2)), CAST(100000.00 AS Decimal(18, 2)), 0, 0, CAST(N'2021-08-26 09:42:37.9137140' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[ProductTranslations] ON 

INSERT [dbo].[ProductTranslations] ([Id], [ProductId], [Name], [Description], [Details], [SeoDescription], [SeoTitle], [SeoAlias], [LanguageId]) VALUES (1, 1, N'Áo sơ mi nam trắng Việt Tiến', N'Áo sơ mi nam trắng Việt Tiến', N'Áo sơ mi nam trắng Việt Tiến', N'Áo sơ mi nam trắng Việt Tiến', N'Áo sơ mi nam trắng Việt Tiến', N'ao-so-mi-nam-trang-viet-tien', N'vi-VN')
INSERT [dbo].[ProductTranslations] ([Id], [ProductId], [Name], [Description], [Details], [SeoDescription], [SeoTitle], [SeoAlias], [LanguageId]) VALUES (2, 1, N'Viet Tien Men T-Shirt', N'Viet Tien Men T-Shirt', N'Viet Tien Men T-Shirt', N'Viet Tien Men T-Shirt', N'Viet Tien Men T-Shirt', N'viet-tien-men-t-shirt', N'en-US')
SET IDENTITY_INSERT [dbo].[ProductTranslations] OFF
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ('2021-08-26T09:42:37.8823520+07:00') FOR [OrderDate]
GO
ALTER TABLE [dbo].[Transactions] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [UserId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_AppUsers_UserId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AppUsers_UserId]
GO
ALTER TABLE [dbo].[ProductInCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductInCategories_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductInCategories] CHECK CONSTRAINT [FK_ProductInCategories_Categories_CategoryId]
GO
ALTER TABLE [dbo].[ProductInCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductInCategories_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductInCategories] CHECK CONSTRAINT [FK_ProductInCategories_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductTranslations]  WITH CHECK ADD  CONSTRAINT [FK_ProductTranslations_Languages_LanguageId] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Languages] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductTranslations] CHECK CONSTRAINT [FK_ProductTranslations_Languages_LanguageId]
GO
ALTER TABLE [dbo].[ProductTranslations]  WITH CHECK ADD  CONSTRAINT [FK_ProductTranslations_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductTranslations] CHECK CONSTRAINT [FK_ProductTranslations_Products_ProductId]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_AppUsers_UserId]
GO
