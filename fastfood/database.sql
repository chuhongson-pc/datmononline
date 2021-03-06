USE [DAMANGDB]
GO
/****** Object:  Table [dbo].[CHINHANH]    Script Date: 10/23/2015 09:27:13 ***/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHINHANH](
	[IdChiNhanh] [nchar](10) NOT NULL,
	[TenChiNhanh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_CHINHANH] PRIMARY KEY CLUSTERED 
(
	[IdChiNhanh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHINHANH] ([IdChiNhanh], [TenChiNhanh], [DiaChi]) VALUES (N'CN00000001', N'Đà Nẵng', N'Đà Nẵng')
INSERT [dbo].[CHINHANH] ([IdChiNhanh], [TenChiNhanh], [DiaChi]) VALUES (N'CN00000002', N'Huế', N'Huế')
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 10/23/2015 09:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[IdDanhMuc] [nchar](10) NOT NULL,
	[DanhMuc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DANHMUC] PRIMARY KEY CLUSTERED 
(
	[IdDanhMuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DANHMUC] ([IdDanhMuc], [DanhMuc]) VALUES (N'DM01      ', N'DM1')
INSERT [dbo].[DANHMUC] ([IdDanhMuc], [DanhMuc]) VALUES (N'DM02      ', N'DM2')
INSERT [dbo].[DANHMUC] ([IdDanhMuc], [DanhMuc]) VALUES (N'DM03      ', N'DM3')
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 10/23/2015 09:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[IdKhachHang] [nchar](10) NOT NULL,
	[DiemTichLuy] [int] NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[IdKhachHang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KHACHHANG] ([IdKhachHang], [DiemTichLuy], [TenTaiKhoan]) VALUES (N'1         ', 12, N'binguyen')
INSERT [dbo].[KHACHHANG] ([IdKhachHang], [DiemTichLuy], [TenTaiKhoan]) VALUES (N'2         ', 24, N'nguyetkhung')
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 10/23/2015 09:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TenTaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TAIKHOAN] ([TenTaiKhoan], [MatKhau], [HoTen], [DiaChi], [DienThoai], [Email]) VALUES (N'admin123', N'12345678', N'Nghia', N'Da Nang', N'0935905659', N'somedayiws@gmail.com')
INSERT [dbo].[TAIKHOAN] ([TenTaiKhoan], [MatKhau], [HoTen], [DiaChi], [DienThoai], [Email]) VALUES (N'binguyen', N'12345678', N'Bi Nguyễn ', N'Huế', N'098765432', N'binguyen@gmail.com')
INSERT [dbo].[TAIKHOAN] ([TenTaiKhoan], [MatKhau], [HoTen], [DiaChi], [DienThoai], [Email]) VALUES (N'nguyetkhung', N'12345678', N'Nguyệt Khùng', N'Đà Nẵng', N'0987654321', N'khung@gmail.com')
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 10/23/2015 09:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[IdSanPham] [nchar](10) NOT NULL,
	[IdKhuyenMai] [nchar](10) NULL,
	[TenSanPham] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](50) NOT NULL,
	[GiaBan] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[HinhAnh] [nvarchar](50) NOT NULL,
	[IdDanhMuc] [nchar](10) NOT NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[IdSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[SANPHAM] ([IdSanPham], [IdKhuyenMai], [TenSanPham], [MoTa], [GiaBan], [SoLuong], [HinhAnh], [IdDanhMuc]) VALUES (N'SP00000001', NULL, N'SP2', N'Mô tả sp2', 12000, 0, N'SP00000001.jpg', N'DM01      ')
INSERT [dbo].[SANPHAM] ([IdSanPham], [IdKhuyenMai], [TenSanPham], [MoTa], [GiaBan], [SoLuong], [HinhAnh], [IdDanhMuc]) VALUES (N'SP00000002', NULL, N'SP2', N'Mô tả sp2', 12000, 0, N'SP00000002.jpg', N'DM01      ')
INSERT [dbo].[SANPHAM] ([IdSanPham], [IdKhuyenMai], [TenSanPham], [MoTa], [GiaBan], [SoLuong], [HinhAnh], [IdDanhMuc]) VALUES (N'SP00000003', NULL, N'SP3', N'Mô tả SP3', 15000, 0, N'SP00000003.jpg', N'DM01      ')
INSERT [dbo].[SANPHAM] ([IdSanPham], [IdKhuyenMai], [TenSanPham], [MoTa], [GiaBan], [SoLuong], [HinhAnh], [IdDanhMuc]) VALUES (N'SP00000004', NULL, N'SP6', N'Mô tả 6', 15000, 0, N'SP00000004.jpg', N'DM02      ')
INSERT [dbo].[SANPHAM] ([IdSanPham], [IdKhuyenMai], [TenSanPham], [MoTa], [GiaBan], [SoLuong], [HinhAnh], [IdDanhMuc]) VALUES (N'SP00000005', NULL, N'Sản phẩm', N'Sản phẩm', 12800, 0, N'SP00000005.jpg', N'DM01      ')
INSERT [dbo].[SANPHAM] ([IdSanPham], [IdKhuyenMai], [TenSanPham], [MoTa], [GiaBan], [SoLuong], [HinhAnh], [IdDanhMuc]) VALUES (N'SP00000007', NULL, N'Sản phẩm new', N'Sản phẩm new', 45000, 0, N'SP00000007.jpg', N'DM01      ')
/****** Object:  Table [dbo].[QUANTRI]    Script Date: 10/23/2015 09:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANTRI](
	[IdQuanTri] [nchar](10) NOT NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
	[QuyenQuanTri] [nvarchar](50) NULL,
	[IdChiNhanh] [nchar](10) NULL,
 CONSTRAINT [PK_QUANTRI] PRIMARY KEY CLUSTERED 
(
	[IdQuanTri] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[QUANTRI] ([IdQuanTri], [TenTaiKhoan], [QuyenQuanTri], [IdChiNhanh]) VALUES (N'QT001     ', N'binguyen', N'Quản trị', N'CN00000001')
INSERT [dbo].[QUANTRI] ([IdQuanTri], [TenTaiKhoan], [QuyenQuanTri], [IdChiNhanh]) VALUES (N'QT002     ', N'nguyetkhung', N'Quản trị', N'CN00000002')
INSERT [dbo].[QUANTRI] ([IdQuanTri], [TenTaiKhoan], [QuyenQuanTri], [IdChiNhanh]) VALUES (N'QT003     ', N'admin123', N'root', N'CN00000001')
/****** Object:  Table [dbo].[DONHANG]    Script Date: 10/23/2015 09:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[IdDonHang] [nchar](10) NOT NULL,
	[IdKhachHang] [nchar](10) NULL,
	[DiaChiNhanHang] [nvarchar](50) NULL,
	[IdChiNhanh] [nchar](10) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[NgayLap] [datetime] NULL,
	[GhiChu] [nvarchar](50) NULL,
	[TenKhachHang] [nvarchar](50) NULL,
 CONSTRAINT [PK_DONHANG] PRIMARY KEY CLUSTERED 
(
	[IdDonHang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DONHANG] ([IdDonHang], [IdKhachHang], [DiaChiNhanHang], [IdChiNhanh], [SoDienThoai], [Email], [TinhTrang], [NgayLap], [GhiChu], [TenKhachHang]) VALUES (N'DH00000001', NULL, N'Huế', N'CN00000001', N'0987654321', N'nguyen@gmail.com', N'Thành công', CAST(0x0000A53700000000 AS DateTime), NULL, N'xđsđ')
INSERT [dbo].[DONHANG] ([IdDonHang], [IdKhachHang], [DiaChiNhanHang], [IdChiNhanh], [SoDienThoai], [Email], [TinhTrang], [NgayLap], [GhiChu], [TenKhachHang]) VALUES (N'DH00000002', NULL, N'Đà Nẵng', N'CN00000002', N'0987654321', N'khung@gmail.com', N'Thành công', CAST(0x0000A53900000000 AS DateTime), NULL, N'xđsđ')
INSERT [dbo].[DONHANG] ([IdDonHang], [IdKhachHang], [DiaChiNhanHang], [IdChiNhanh], [SoDienThoai], [Email], [TinhTrang], [NgayLap], [GhiChu], [TenKhachHang]) VALUES (N'DH00000003', NULL, N'Huế', N'CN00000001', N'0987654321', N'nguyencongtanbkdn@mail.com', N'Thành công', CAST(0x0000A53901146CD8 AS DateTime), N' Chó', N'xđsđ')
INSERT [dbo].[DONHANG] ([IdDonHang], [IdKhachHang], [DiaChiNhanHang], [IdChiNhanh], [SoDienThoai], [Email], [TinhTrang], [NgayLap], [GhiChu], [TenKhachHang]) VALUES (N'DH00000004', NULL, N'sds', N'CN00000001', N'09876543211', N'nguyencongtanbkdn@mail.com', N'Hủy', CAST(0x0000A5390115C1DC AS DateTime), N' sdsd', N'zzdsdsd')
INSERT [dbo].[DONHANG] ([IdDonHang], [IdKhachHang], [DiaChiNhanHang], [IdChiNhanh], [SoDienThoai], [Email], [TinhTrang], [NgayLap], [GhiChu], [TenKhachHang]) VALUES (N'DH00000005', NULL, N'234234', N'CN00000001', N'234234', N'234234@f.m', N'Thành công', CAST(0x0000A5390116C730 AS DateTime), N' 123', N'ẻgdfg')
INSERT [dbo].[DONHANG] ([IdDonHang], [IdKhachHang], [DiaChiNhanHang], [IdChiNhanh], [SoDienThoai], [Email], [TinhTrang], [NgayLap], [GhiChu], [TenKhachHang]) VALUES (N'DH00000006', NULL, N'K34/10 Au Co, Quan Lien Chieu', N'CN00000001', N'84935905659', N'somedayiws@gmail.com', N'Vận chuyển', CAST(0x0000A539016F23E4 AS DateTime), N' ', N'Nghia Tran')
INSERT [dbo].[DONHANG] ([IdDonHang], [IdKhachHang], [DiaChiNhanHang], [IdChiNhanh], [SoDienThoai], [Email], [TinhTrang], [NgayLap], [GhiChu], [TenKhachHang]) VALUES (N'DH00000007', NULL, N'K34/10 Au Co, Quan Lien Chieu', N'CN00000001', N'84935905659', N'somedayiws@gmail.com', N'Mới', CAST(0x0000A539016F9590 AS DateTime), N' ', N'Nghia Tran')
INSERT [dbo].[DONHANG] ([IdDonHang], [IdKhachHang], [DiaChiNhanHang], [IdChiNhanh], [SoDienThoai], [Email], [TinhTrang], [NgayLap], [GhiChu], [TenKhachHang]) VALUES (N'DH00000008', NULL, N'K34/10 Au Co, Quan Lien Chieu', N'CN00000001', N'84935905659', N'somedayiws@gmail.com', N'Mới', CAST(0x0000A53901720E60 AS DateTime), N' ', N'Nghia Tran')
INSERT [dbo].[DONHANG] ([IdDonHang], [IdKhachHang], [DiaChiNhanHang], [IdChiNhanh], [SoDienThoai], [Email], [TinhTrang], [NgayLap], [GhiChu], [TenKhachHang]) VALUES (N'DH00000009', NULL, N'K34/10 Au Co, Quan Lien Chieu', N'CN00000001', N'84935905659', N'somedayiws@gmail.com', N'Mới', CAST(0x0000A53901748604 AS DateTime), N' ', N'Nghia Tran')
INSERT [dbo].[DONHANG] ([IdDonHang], [IdKhachHang], [DiaChiNhanHang], [IdChiNhanh], [SoDienThoai], [Email], [TinhTrang], [NgayLap], [GhiChu], [TenKhachHang]) VALUES (N'DH00000010', NULL, N'K34/10 Au Co, Quan Lien Chieu', N'CN00000001', N'84935905659', N'somedayiws@gmail.com', N'Mới', CAST(0x0000A539017DD0EC AS DateTime), N' ', N'Nghia Tran')
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 10/23/2015 09:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[IdDonHang] [nchar](10) NOT NULL,
	[IdSanPham] [nchar](10) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_CHITIETDONHANG] PRIMARY KEY CLUSTERED 
(
	[IdDonHang] ASC,
	[IdSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000001', N'SP00000001', 2)
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000001', N'SP00000002', 2)
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000001', N'SP00000003', 2)
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000002', N'SP00000001', 2)
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000002', N'SP00000003', 2)
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000003', N'SP00000003', 1)
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000004', N'SP00000002', 1)
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000004', N'SP00000004', 1)
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000005', N'SP00000004', 1)
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000006', N'SP00000002', 1)
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000006', N'SP00000003', 2)
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000006', N'SP00000007', 2)
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000007', N'SP00000007', 2)
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000008', N'SP00000001', 2)
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000008', N'SP00000002', 4)
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000008', N'SP00000003', 2)
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000009', N'SP00000004', 1)
INSERT [dbo].[CHITIETDONHANG] ([IdDonHang], [IdSanPham], [SoLuong]) VALUES (N'DH00000010', N'SP00000003', 2)
/****** Object:  ForeignKey [FK_CHITIETDONHANG_DONHANG]    Script Date: 10/23/2015 09:27:13 ******/
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONHANG_DONHANG] FOREIGN KEY([IdDonHang])
REFERENCES [dbo].[DONHANG] ([IdDonHang])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CHITIETDONHANG_DONHANG]
GO
/****** Object:  ForeignKey [FK_CHITIETDONHANG_SANPHAM]    Script Date: 10/23/2015 09:27:13 ******/
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONHANG_SANPHAM] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SANPHAM] ([IdSanPham])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CHITIETDONHANG_SANPHAM]
GO
/****** Object:  ForeignKey [FK_DONHANG_CHINHANH]    Script Date: 10/23/2015 09:27:13 ******/
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_CHINHANH] FOREIGN KEY([IdChiNhanh])
REFERENCES [dbo].[CHINHANH] ([IdChiNhanh])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_CHINHANH]
GO
/****** Object:  ForeignKey [FK_DONHANG_KHACHHANG]    Script Date: 10/23/2015 09:27:13 ******/
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_KHACHHANG] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KHACHHANG] ([IdKhachHang])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_KHACHHANG]
GO
/****** Object:  ForeignKey [FK_QUANTRI_TAIKHOAN]    Script Date: 10/23/2015 09:27:13 ******/
ALTER TABLE [dbo].[QUANTRI]  WITH CHECK ADD  CONSTRAINT [FK_QUANTRI_TAIKHOAN] FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TAIKHOAN] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[QUANTRI] CHECK CONSTRAINT [FK_QUANTRI_TAIKHOAN]
GO
/****** Object:  ForeignKey [FK_SANPHAM_DANHMUC]    Script Date: 10/23/2015 09:27:13 ******/
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_DANHMUC] FOREIGN KEY([IdDanhMuc])
REFERENCES [dbo].[DANHMUC] ([IdDanhMuc])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_DANHMUC]
GO
