USE [master]
GO
/****** Object:  Database [ShopMobile]    Script Date: 12/11/2023 16:15:34 ******/
CREATE DATABASE [ShopMobile] ON  PRIMARY 
( NAME = N'ShopMobile', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ShopMobile.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShopMobile_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ShopMobile_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShopMobile] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopMobile].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopMobile] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ShopMobile] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ShopMobile] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ShopMobile] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ShopMobile] SET ARITHABORT OFF
GO
ALTER DATABASE [ShopMobile] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ShopMobile] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ShopMobile] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ShopMobile] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ShopMobile] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ShopMobile] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ShopMobile] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ShopMobile] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ShopMobile] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ShopMobile] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ShopMobile] SET  DISABLE_BROKER
GO
ALTER DATABASE [ShopMobile] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ShopMobile] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ShopMobile] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ShopMobile] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ShopMobile] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ShopMobile] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ShopMobile] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ShopMobile] SET  READ_WRITE
GO
ALTER DATABASE [ShopMobile] SET RECOVERY SIMPLE
GO
ALTER DATABASE [ShopMobile] SET  MULTI_USER
GO
ALTER DATABASE [ShopMobile] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ShopMobile] SET DB_CHAINING OFF
GO
USE [ShopMobile]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/11/2023 16:15:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](50) NOT NULL,
	[MaLoaiSanPham] [nvarchar](50) NULL,
	[MaNhaSanXuat] [nvarchar](50) NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](255) NULL,
	[Gia] [int] NULL,
	[SoLuongDaBan] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoTa], [HinhAnh], [Gia], [SoLuongDaBan], [TinhTrang]) VALUES (N'SP01', N'LSP01', N'NSX01', N'Iphone 15 256G', N'Chip A16 Bionic CPU 6 lõi với 2 lõi hiệu năng và 4 lõi tiết kiệm điện,GPU 5 lõi,Neural Engine 16 lõi Kích thước và khối lượng,147.6 x 71.6 x 7.8 mm (Dài x Rộng x Dày),171 gram Màn hình Super Retina XDR, Màn hình toàn phần OLED 6.1 inch,Dynamic Island,Màn hình Super Retina XDR,Màn hình toàn phần OLED 6.1 inch', N'iPhone 15 tiếp tục truyền thống của Apple với một thiết kế tinh tế và cải tiến vượt trội trong hiệu năng. Màn hình Super Retina XDR OLED 6.1 inch mang đến trải nghiệm xem phim và chơi game sống động, hỗ trợ Dynamic Island để tối ưu hóa hiển thị thông tin.Với kích thước ấn tượng 147.6 x 71.6 x 7.8 mm và khối lượng 171 gram (có thể thay đổi tùy phiên bản), iPhone 15 là một tác phẩm nghệ thuật vừa sang trọng, vừa thuận tiện cho di động.Sức mạnh bên trong được đảm bảo bởi chip A16 Bionic, một bước tiến đột phá trong công nghệ xử lý. CPU 6 lõi, trong đó có 2 lõi hiệu năng và 4 lõi tiết kiệm điện, cùng với GPU 5 lõi và Neural Engine 16 lõi, giúp iPhone 15 đạt hiệu suất cao và xử lý đa nhiệm mượt mà.Hệ thống camera tiên tiến của iPhone 15 không chỉ cung cấp chất lượng ảnh và video xuất sắc mà còn tích hợp các tính năng sáng tạo mới. Pin dung lượng lớn và công nghệ sạc nhanh giúp đảm bảo người dùng có thể sử dụng điện thoại suốt cả ngày mà không phải lo lắng về pin.iPhone 15 là sự kết hợp hoàn hảo giữa thiết kế đẳng cấp và công nghệ tiên tiến, hứa hẹn đáp ứng mọi nhu cầu của người dùng đối với một chiếc điện thoại thông minh đỉnh cao.', N'iphone15.png', 23900000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoTa], [HinhAnh], [Gia], [SoLuongDaBan], [TinhTrang]) VALUES (N'SP02', N'LSP01', N'NSX02', N'Samsung Galaxy Z Fold4 5G 256GB', N'Màn hình:Dynamic AMOLED 2XChính 7.6" & Phụ 6.2"Quad HD+ (2K+),Camera sau Chính 50 MP & Phụ 12 MP, 10 MP, Camera trước 10 MP & 4 MP. Chip Snapdragon 8+ Gen 1. RAM 12G, Dung lượng lưu trữ  256GB . Pin, Sạc 4400 mAh,25 W  ', N'Galaxy Z Fold4 (2022) ra mắt với ngoại hình gần như là không đổi khi so với Galaxy Z Fold3, nếu bạn chỉ nhìn bề ngoài thì bạn sẽ khó lòng phân biệt được 2 sản phẩm này. Máy vẫn sử dụng khung viền Armor Aluminum bền bỉ, mặt kính màn hình phụ là Corning Gorilla Glass Victus+, mặt kính màn hình chính là Ultra Thin Glass.', N'samsung1.png', 21990000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoTa], [HinhAnh], [Gia], [SoLuongDaBan], [TinhTrang]) VALUES (N'SP03', N'LSP01', N'NSX03', N'Iphone 15 Plus 256G', N'Chip A16 Bionic CPU 6 lõi với 2 lõi hiệu năng và 4 lõi tiết kiệm điện,GPU 5 lõi,Neural Engine 16 lõi Kích thước và khối lượng,147.6 x 71.6 x 7.8 mm (Dài x Rộng x Dày),171 gram Màn hình Super Retina XDR, Màn hình toàn phần OLED 6.1 inch,Dynamic Island,Màn hình Super Retina XDR,Màn hình toàn phần OLED 6.1 inch', N'iPhone 15 tiếp tục truyền thống của Apple với một thiết kế tinh tế và cải tiến vượt trội trong hiệu năng. Màn hình Super Retina XDR OLED 6.1 inch mang đến trải nghiệm xem phim và chơi game sống động, hỗ trợ Dynamic Island để tối ưu hóa hiển thị thông tin.Với kích thước ấn tượng 147.6 x 71.6 x 7.8 mm và khối lượng 171 gram (có thể thay đổi tùy phiên bản), iPhone 15 là một tác phẩm nghệ thuật vừa sang trọng, vừa thuận tiện cho di động.Sức mạnh bên trong được đảm bảo bởi chip A16 Bionic, một bước tiến đột phá trong công nghệ xử lý. CPU 6 lõi, trong đó có 2 lõi hiệu năng và 4 lõi tiết kiệm điện, cùng với GPU 5 lõi và Neural Engine 16 lõi, giúp iPhone 15 đạt hiệu suất cao và xử lý đa nhiệm mượt mà.Hệ thống camera tiên tiến của iPhone 15 không chỉ cung cấp chất lượng ảnh và video xuất sắc mà còn tích hợp các tính năng sáng tạo mới. Pin dung lượng lớn và công nghệ sạc nhanh giúp đảm bảo người dùng có thể sử dụng điện thoại suốt cả ngày mà không phải lo lắng về pin.iPhone 15 plus là sự kết hợp hoàn hảo giữa thiết kế đẳng cấp và công nghệ tiên tiến, hứa hẹn đáp ứng mọi nhu cầu của người dùng đối với một chiếc điện thoại thông minh đỉnh cao.', N'iphone15.png', 23900000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoTa], [HinhAnh], [Gia], [SoLuongDaBan], [TinhTrang]) VALUES (N'SP04', N'LSP02', N'NSX04', N'Ipad Pro M2', N'Chip A16 Bionic CPU 6 lõi với 2 lõi hiệu năng và 4 lõi tiết kiệm điện,GPU 5 lõi,Neural Engine 16 lõi Kích thước và khối lượng,147.6 x 71.6 x 7.8 mm (Dài x Rộng x Dày),171 gram Màn hình Super Retina XDR, Màn hình toàn phần OLED 6.1 inch,Dynamic Island,Màn hình Super Retina XDR,Màn hình toàn phần OLED 6.1 inch', N'iPad Pro M2 có một diện mạo cao cấp với mặt lưng làm từ kim loại chắc chắn, đi kèm với độ mỏng chỉ 5.9 mm giúp cho tổng thể thiết bị thêm phần sang trọng. Dường như Apple đang rất nỗ lực để biến thiết bị của hãng trở nên ngày càng thanh mảnh, chắc hẳn trên thị trường tablet hiện tại chưa có cái tên nào có thể vượt qua độ mỏng của iPad Pro M2.', N'ipad.png', 23900000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoTa], [HinhAnh], [Gia], [SoLuongDaBan], [TinhTrang]) VALUES (N'SP05', N'LSP02', N'NSX05', N'tablet Samsung', N'Màn hình:Dynamic AMOLED 2XChính 7.6" & Phụ 6.2"Quad HD+ (2K+),Camera sau Chính 50 MP & Phụ 12 MP, 10 MP, Camera trước 10 MP & 4 MP. Chip Snapdragon 8+ Gen 1. RAM 12G, Dung lượng lưu trữ  256GB . Pin, Sạc 4400 mAh,25 W  ', N'Thiết kế của Galaxy Tab A9+ 5G đem đến một sự tươi mới và tinh tế. Máy sở hữu một ngoại hình hiện đại và thanh lịch với mặt lưng phẳng và khung kim loại. Các góc bo tròn mềm mại làm cho máy có sự đối lập với những đường nét phẳng phiu nên trông khá thú vị. ', N'tabletSS.png', 23900000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoTa], [HinhAnh], [Gia], [SoLuongDaBan], [TinhTrang]) VALUES (N'SP06', N'LSP02', N'NSX01', N'Ipad Pro M2 1TB', N'iPad Pro M2 có một diện mạo cao cấp với mặt lưng làm từ kim loại chắc chắn, đi kèm với độ mỏng chỉ 5.9 mm giúp cho tổng thể thiết bị thêm phần sang trọng. Dường như Apple đang rất nỗ lực để biến thiết bị của hãng trở nên ngày càng thanh mảnh, chắc hẳn trên thị trường tablet hiện tại chưa có cái tên nào có thể vượt qua độ mỏng củaChip A16 Bionic CPU 6 lõi với 2 lõi hiệu năng và 4 lõi tiết kiệm điện,GPU 5 lõi,Neural Engine 16 lõi Kích thước và khối lượng,147.6 x 71.6 x 7.8 mm (Dài x Rộng x Dày),171 gram Màn hình Super Retina XDR, Màn hình toàn phần OLED 6.1 inch,Dynamic Island,Màn hình Super Retina XDR,Màn hình toàn phần OLED 6.1 inch iPad Pro M2.', N'NULLiPad Pro M2 có một diện mạo cao cấp với mặt lưng làm từ kim loại chắc chắn, đi kèm với độ mỏng chỉ 5.9 mm giúp cho tổng thể thiết bị thêm phần sang trọng. Dường như Apple đang rất nỗ lực để biến thiết bị của hãng trở nên ngày càng thanh mảnh, chắc hẳn trên thị trường tablet hiện tại chưa có cái tên nào có thể vượt qua độ mỏng của iPad Pro M2.', N'ipad.png', 23900000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoTa], [HinhAnh], [Gia], [SoLuongDaBan], [TinhTrang]) VALUES (N'SP07', N'LSP03', N'NSX02', NULL, NULL, NULL, NULL, 23900000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoTa], [HinhAnh], [Gia], [SoLuongDaBan], [TinhTrang]) VALUES (N'SP08', N'LSP03', N'NSX03', NULL, NULL, NULL, NULL, 23900000, 0, N'0         ')
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 12/11/2023 16:15:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [nvarchar](50) NOT NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX01', N'Apple')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX02', N'SamSung')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX03', N'Redme')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX04', N'Xiaomi')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX05', N'Huawei')
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 12/11/2023 16:15:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](50) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP01', N'Smartphone')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP02', N'Tablet')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP03', N'Phụ kiện')
/****** Object:  Default [DF_SanPham_Gia]    Script Date: 12/11/2023 16:15:35 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
/****** Object:  Default [DF_SanPham_SoLuongDaBan]    Script Date: 12/11/2023 16:15:35 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
/****** Object:  Default [DF_SanPham_TinhTrang]    Script Date: 12/11/2023 16:15:35 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO


-- Thêm khóa ngoại cho cột MaLoaiSanPham
ALTER TABLE [dbo].[SanPham]
ADD CONSTRAINT FK_SanPham_LoaiSanPham
FOREIGN KEY (MaLoaiSanPham)
REFERENCES [dbo].[LoaiSanPham](MaLoaiSanPham);

-- Thêm khóa ngoại cho cột MaNhaSanXuat
ALTER TABLE [dbo].[SanPham]
ADD CONSTRAINT FK_SanPham_NhaSanXuat
FOREIGN KEY (MaNhaSanXuat)
REFERENCES [dbo].[NhaSanXuat](MaNhaSanXuat);
