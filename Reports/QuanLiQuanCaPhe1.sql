USE [master]
GO
/****** Object:  Database [QuanLiCaPhe1]    Script Date: 6/6/2019 12:20:18 AM ******/
CREATE DATABASE [QuanLiCaPhe1] ON  PRIMARY 
( NAME = N'QuanLiCaPhe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuanLiCaPhe1.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLiCaPhe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuanLiCaPhe1_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLiCaPhe1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLiCaPhe1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLiCaPhe1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLiCaPhe1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLiCaPhe1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLiCaPhe1] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLiCaPhe1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLiCaPhe1] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLiCaPhe1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLiCaPhe1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLiCaPhe1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLiCaPhe1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLiCaPhe1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLiCaPhe1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLiCaPhe1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLiCaPhe1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLiCaPhe1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLiCaPhe1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLiCaPhe1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLiCaPhe1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLiCaPhe1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLiCaPhe1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLiCaPhe1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLiCaPhe1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLiCaPhe1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLiCaPhe1] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLiCaPhe1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLiCaPhe1] SET DB_CHAINING OFF 
GO
USE [QuanLiCaPhe1]
GO
/****** Object:  Table [dbo].[tblBan]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBan](
	[MaBan] [varchar](3) NOT NULL,
	[SoBan] [int] NOT NULL,
	[Khu] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBanCoKhach]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBanCoKhach](
	[MaBan] [varchar](3) NULL,
	[SoBan] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBangLuong]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBangLuong](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[Thang] [int] NOT NULL,
	[MaNV] [varchar](5) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[TongGioLam] [float] NOT NULL,
	[MucLuong] [money] NOT NULL,
	[TienLuong] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBanSDNhieu]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBanSDNhieu](
	[MaBan] [varchar](3) NULL,
	[SoBan] [int] NOT NULL,
	[LuotSD] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblChamCongNV]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblChamCongNV](
	[MaNV] [varchar](5) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[CaLam] [nvarchar](30) NOT NULL,
	[Ngay] [datetime] NOT NULL,
	[SoGioLam] [float] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCTDoanhThu]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCTDoanhThu](
	[Ngay] [datetime] NOT NULL,
	[MaMon] [varchar](5) NOT NULL,
	[SoLuongBan] [int] NOT NULL,
	[TongTien] [money] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCTHoaDon]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCTHoaDon](
	[MaHD] [int] NOT NULL,
	[MaMon] [varchar](5) NOT NULL,
	[TenMon] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [money] NOT NULL,
	[ThanhTien] [money] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCTNhapNL]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCTNhapNL](
	[MaPhieuNhap] [int] NOT NULL,
	[MaNL] [varchar](5) NOT NULL,
	[TenNL] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[DonGia] [money] NOT NULL,
	[ThanhTien] [money] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCTOder]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCTOder](
	[MaOder] [int] NULL,
	[MaBan] [varchar](3) NOT NULL,
	[MaMon] [varchar](5) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonViTinh] [nvarchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCTXuatNL]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCTXuatNL](
	[MaPhieuXuat] [int] NOT NULL,
	[MaNL] [varchar](5) NOT NULL,
	[TenNL] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonViTinh] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDoanhThu]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDoanhThu](
	[Ngay] [datetime] NOT NULL,
	[DoanhThu] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ngay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDSMon]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDSMon](
	[MaMon] [varchar](5) NOT NULL,
	[TenMon] [nvarchar](50) NOT NULL,
	[Nhom] [nvarchar](50) NOT NULL,
	[DonGia] [money] NOT NULL,
	[DonViTinh] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblHoaDon]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblHoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaOder] [int] NOT NULL,
	[MaBan] [varchar](3) NOT NULL,
	[Ngay] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNguyenLieu]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNguyenLieu](
	[MaNL] [varchar](5) NOT NULL,
	[TenNL] [nvarchar](50) NOT NULL,
	[DonGia] [money] NOT NULL,
	[DonViTinh] [nvarchar](50) NOT NULL,
	[SoLuongCon] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[MaNV] [varchar](5) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[GioiTinh] [nvarchar](30) NOT NULL,
	[TrinhDoHocVan] [nvarchar](30) NULL,
	[ChucVu] [nvarchar](30) NOT NULL,
	[SoCMND] [char](11) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNhapNL]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhapNL](
	[MaPhieuNhap] [int] NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[TongTien] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblOder]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOder](
	[MaOder] [int] NOT NULL,
	[MaBan] [varchar](3) NOT NULL,
	[MaNV] [varchar](5) NOT NULL,
	[Ngay] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaOder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[MaUser] [varchar](5) NOT NULL,
	[PassWord] [varchar](10) NOT NULL,
	[TenThuNgan] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblXuatNL]    Script Date: 6/6/2019 12:20:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblXuatNL](
	[MaPhieuXuat] [int] NOT NULL,
	[NgayXuat] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B01', 1, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B02', 2, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B03', 3, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B04', 4, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B05', 5, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B06', 6, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B07', 7, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B08', 8, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B09', 9, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B10', 10, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B11', 11, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B12', 12, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B13', 13, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B14', 14, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B15', 15, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B16', 16, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B17', 17, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B18', 18, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B19', 19, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B20', 20, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B21', 21, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B22', 22, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B23', 23, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B24', 24, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B25', 25, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B26', 26, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B27', 27, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B28', 28, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B29', 29, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B30', 30, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B31', 31, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B32', 32, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B33', 33, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B34', 34, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B35', 35, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B36', 36, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B37', 37, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B38', 38, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B39', 39, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B40', 40, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B41', 41, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B42', 42, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B43', 43, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B44', 44, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B45', 45, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B46', 46, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B47', 47, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B48', 48, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B49', 49, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B50', 50, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B51', 51, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B52', 52, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B53', 53, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B54', 54, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B55', 55, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B56', 56, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B57', 57, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B58', 58, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B59', 59, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B60', 60, N'B')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'CF001', N'Cà Phê Đen', N'Cà Phê', 20000.0000, N'Cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'CF002', N'Cà Phê Sữa', N'Cà Phê', 25000.0000, N'Cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'CF003', N'Cà Phê Đen SG', N'Cà Phê', 25000.0000, N'Cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'CF004', N'Cà Phê Sữa SG', N'Cà Phê', 25000.0000, N'Cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'CF005', N'Bạc Xỉu', N'Cà Phê', 30000.0000, N'Cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'LK001', N'Khoáng Lạt', N'Loại Khác', 10000.0000, N'Chai')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'LK002', N'Nước Chanh', N'Loại Khác', 10000.0000, N'Cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'LK003', N'Trà Lipton', N'Loại Khác', 10000.0000, N'Cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'LK004', N'Trà Gừng', N'Loại Khác', 3000.0000, N'Gói')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'NN001', N'Sting Vàng', N'Nước Ngọt', 15000.0000, N'Chai')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'NN002', N'Sting Dâu', N'Nước Ngọt', 15000.0000, N'Chai')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'NN003', N'Pessi', N'Nước Ngọt', 10000.0000, N'Chai')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'NN004', N'Coca Cola', N'Nước Ngọt', 10000.0000, N'Chai')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'NN005', N'Seven Up', N'Nước Ngọt', 10000.0000, N'Chai')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'NN006', N'Revive', N'Nước Ngọt', 10000.0000, N'Chai')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'NN007', N'Trà Không Độ', N'Nước Ngọt', 10000.0000, N'Chai')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'NN008', N'C2', N'Nước Ngọt', 10000.0000, N'Chai')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'SUA01', N'Sữa Chua', N'Sữa', 10000.0000, N'Cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'SUA02', N'Sữa Tươi', N'Sữa', 10000.0000, N'Cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'SUA03', N'Yomot', N'Sữa', 10000.0000, N'Cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'TL001', N'Thuốc Ngựa Điếu', N'Thuốc Lá', 30000.0000, N'Hộp')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'TL002', N'Thuốc Ngữa Gói', N'Thuốc Lá', 30000.0000, N'Hộp')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'TL003', N'Thuốc Marlboro Điếu', N'Thuốc Lá', 30000.0000, N'Hộp')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'TL004', N'Thuốc Marlboro Gói', N'Thuốc Lá', 30000.0000, N'Hộp')
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [DonGia], [DonViTinh], [SoLuongCon]) VALUES (N'NL01', N'Cà Phê Trung Nguyên', 100000.0000, N'Hộp', 100)
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [DonGia], [DonViTinh], [SoLuongCon]) VALUES (N'NL02', N'Sữa tươi', 100000.0000, N'Hộp', 100)
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [DonGia], [DonViTinh], [SoLuongCon]) VALUES (N'NL03', N'Chanh', 100000.0000, N'Kg', 5)
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [DonGia], [DonViTinh], [SoLuongCon]) VALUES (N'NL04', N'Sữa Chua', 150000.0000, N'Hộp', 20)
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [DonGia], [DonViTinh], [SoLuongCon]) VALUES (N'NL05', N'Gừng', 5000.0000, N'Kg', 3)
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'01', N'Tùng', CAST(N'1998-04-10 00:00:00.000' AS DateTime), N'Nam', N'DH', N'Giữ Xe', N'123456789  ', N'ND')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'02', N'Dũng', CAST(N'1998-03-15 00:00:00.000' AS DateTime), N'Nam', N'DH', N'Phục vụ', N'11111111   ', N'QN')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'03', N'Sơn', CAST(N'1998-05-22 00:00:00.000' AS DateTime), N'Nam', N'DH', N'Phục vụ', N'22222222   ', N'HN')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'04', N'Hồng', CAST(N'1998-06-17 00:00:00.000' AS DateTime), N'Nữ', N'DH', N'Thu ngân', N'33333333   ', N'HN')
INSERT [dbo].[tblUser] ([MaUser], [PassWord], [TenThuNgan]) VALUES (N'01', N'12345', N'Xuan Dung')
INSERT [dbo].[tblUser] ([MaUser], [PassWord], [TenThuNgan]) VALUES (N'02', N'12345', N'Tùng')
INSERT [dbo].[tblUser] ([MaUser], [PassWord], [TenThuNgan]) VALUES (N'03', N'12345', N'Hồng')
INSERT [dbo].[tblUser] ([MaUser], [PassWord], [TenThuNgan]) VALUES (N'04', N'12345', N'Sơn')
ALTER TABLE [dbo].[tblBanCoKhach]  WITH CHECK ADD FOREIGN KEY([MaBan])
REFERENCES [dbo].[tblBan] ([MaBan])
GO
ALTER TABLE [dbo].[tblBangLuong]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblBanSDNhieu]  WITH CHECK ADD FOREIGN KEY([MaBan])
REFERENCES [dbo].[tblBan] ([MaBan])
GO
ALTER TABLE [dbo].[tblChamCongNV]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblCTDoanhThu]  WITH CHECK ADD FOREIGN KEY([MaMon])
REFERENCES [dbo].[tblDSMon] ([MaMon])
GO
ALTER TABLE [dbo].[tblCTDoanhThu]  WITH CHECK ADD FOREIGN KEY([Ngay])
REFERENCES [dbo].[tblDoanhThu] ([Ngay])
GO
ALTER TABLE [dbo].[tblCTHoaDon]  WITH CHECK ADD FOREIGN KEY([MaMon])
REFERENCES [dbo].[tblDSMon] ([MaMon])
GO
ALTER TABLE [dbo].[tblCTHoaDon]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[tblHoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[tblCTNhapNL]  WITH CHECK ADD FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[tblNhapNL] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[tblCTNhapNL]  WITH CHECK ADD FOREIGN KEY([MaNL])
REFERENCES [dbo].[tblNguyenLieu] ([MaNL])
GO
ALTER TABLE [dbo].[tblCTOder]  WITH CHECK ADD FOREIGN KEY([MaBan])
REFERENCES [dbo].[tblBan] ([MaBan])
GO
ALTER TABLE [dbo].[tblCTOder]  WITH CHECK ADD FOREIGN KEY([MaOder])
REFERENCES [dbo].[tblOder] ([MaOder])
GO
ALTER TABLE [dbo].[tblCTXuatNL]  WITH CHECK ADD FOREIGN KEY([MaPhieuXuat])
REFERENCES [dbo].[tblXuatNL] ([MaPhieuXuat])
GO
ALTER TABLE [dbo].[tblCTXuatNL]  WITH CHECK ADD FOREIGN KEY([MaNL])
REFERENCES [dbo].[tblNguyenLieu] ([MaNL])
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD FOREIGN KEY([MaBan])
REFERENCES [dbo].[tblBan] ([MaBan])
GO
ALTER TABLE [dbo].[tblOder]  WITH CHECK ADD FOREIGN KEY([MaBan])
REFERENCES [dbo].[tblBan] ([MaBan])
GO
ALTER TABLE [dbo].[tblOder]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
USE [master]
GO
ALTER DATABASE [QuanLiCaPhe1] SET  READ_WRITE 
GO
