USE [master]
GO
/****** Object:  Database [ThucTapNhom_QLBTS]    Script Date: 5/18/2019 12:32:50 AM ******/
CREATE DATABASE [ThucTapNhom_QLBTS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ThucTapNhom_QLBTS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER1\MSSQL\DATA\ThucTapNhom_QLBTS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ThucTapNhom_QLBTS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER1\MSSQL\DATA\ThucTapNhom_QLBTS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ThucTapNhom_QLBTS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET ARITHABORT OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET RECOVERY FULL 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET  MULTI_USER 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ThucTapNhom_QLBTS', N'ON'
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET QUERY_STORE = OFF
GO
USE [ThucTapNhom_QLBTS]
GO
/****** Object:  Table [dbo].[Doanhthu]    Script Date: 5/18/2019 12:32:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doanhthu](
	[Thoigian] [date] NOT NULL,
	[SoHD] [int] NULL,
	[Manhap] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Thoigian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongHD]    Script Date: 5/18/2019 12:32:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongHD](
	[SoHD] [int] NULL,
	[soluong] [int] NULL,
	[MaDU] [int] NULL,
	[Matopping] [char](10) NULL,
	[tongtien] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dongphieunhap]    Script Date: 5/18/2019 12:32:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dongphieunhap](
	[MaNL] [char](10) NULL,
	[Manhap] [char](10) NULL,
	[slnhap] [nvarchar](50) NULL,
	[sltrongkho] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Douong]    Script Date: 5/18/2019 12:32:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Douong](
	[MaDU] [int] IDENTITY(1,1) NOT NULL,
	[tenDU] [nvarchar](50) NULL,
	[size] [nvarchar](50) NULL,
	[dongia] [float] NULL,
	[HinhAnh] [nvarchar](100) NULL,
	[Maloai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/18/2019 12:32:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[SoHD] [int] NOT NULL,
	[discount] [float] NULL,
	[tongtienKHtra] [float] NULL,
	[sotienKHdua] [float] NULL,
	[sotienthua] [float] NULL,
	[ngaymua] [date] NULL,
	[sogiomua] [nvarchar](50) NULL,
	[diemcong] [int] NULL,
	[MaKM] [char](10) NULL,
	[MaTV] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[SoHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khuyenmai]    Script Date: 5/18/2019 12:32:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khuyenmai](
	[MaKM] [char](10) NOT NULL,
	[tentrasua] [nvarchar](50) NULL,
	[soluong] [int] NULL,
	[size] [nvarchar](50) NULL,
	[phantramgiamgia] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiDU]    Script Date: 5/18/2019 12:32:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDU](
	[Maloai] [int] IDENTITY(1,1) NOT NULL,
	[tenloai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login_QLBTS]    Script Date: 5/18/2019 12:32:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login_QLBTS](
	[STT] [int] NOT NULL,
	[user_ten] [nvarchar](50) NULL,
	[user_pass] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguyenlieu]    Script Date: 5/18/2019 12:32:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguyenlieu](
	[MaNL] [char](10) NOT NULL,
	[tenNL] [nvarchar](50) NULL,
	[donvitinh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhanvien]    Script Date: 5/18/2019 12:32:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanvien](
	[MaNV] [char](10) NOT NULL,
	[tennv] [nvarchar](50) NULL,
	[soDT] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phieunhap]    Script Date: 5/18/2019 12:32:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phieunhap](
	[Manhap] [char](10) NOT NULL,
	[MaNV] [char](10) NULL,
	[ngaynhap] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Manhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thanhvien]    Script Date: 5/18/2019 12:32:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thanhvien](
	[MaTV] [char](10) NOT NULL,
	[STT] [int] NULL,
	[hoten] [nvarchar](50) NULL,
	[loaithanhvien] [nvarchar](50) NULL,
	[soDT] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[diemtichluy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topping]    Script Date: 5/18/2019 12:32:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topping](
	[Matopping] [char](10) NOT NULL,
	[tentopping] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](100) NULL,
	[giatopping] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Matopping] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Doanhthu] ([Thoigian], [SoHD], [Manhap]) VALUES (CAST(N'2030-01-01' AS Date), 20, N'PN18      ')
INSERT [dbo].[Doanhthu] ([Thoigian], [SoHD], [Manhap]) VALUES (CAST(N'2030-02-01' AS Date), 19, N'PN19      ')
INSERT [dbo].[Doanhthu] ([Thoigian], [SoHD], [Manhap]) VALUES (CAST(N'2030-02-11' AS Date), 18, N'PN11      ')
INSERT [dbo].[Doanhthu] ([Thoigian], [SoHD], [Manhap]) VALUES (CAST(N'2030-03-15' AS Date), 16, N'PN13      ')
INSERT [dbo].[Doanhthu] ([Thoigian], [SoHD], [Manhap]) VALUES (CAST(N'2030-10-01' AS Date), 11, N'PN15      ')
INSERT [dbo].[Doanhthu] ([Thoigian], [SoHD], [Manhap]) VALUES (CAST(N'2030-11-01' AS Date), 12, N'PN16      ')
INSERT [dbo].[Doanhthu] ([Thoigian], [SoHD], [Manhap]) VALUES (CAST(N'2030-11-11' AS Date), 17, N'PN18      ')
INSERT [dbo].[Doanhthu] ([Thoigian], [SoHD], [Manhap]) VALUES (CAST(N'2030-12-01' AS Date), 18, N'PN14      ')
INSERT [dbo].[Doanhthu] ([Thoigian], [SoHD], [Manhap]) VALUES (CAST(N'2030-12-21' AS Date), 20, N'PN17      ')
INSERT [dbo].[Doanhthu] ([Thoigian], [SoHD], [Manhap]) VALUES (CAST(N'2030-12-30' AS Date), 16, N'PN16      ')
INSERT [dbo].[DongHD] ([SoHD], [soluong], [MaDU], [Matopping], [tongtien]) VALUES (11, 2, 1, NULL, NULL)
INSERT [dbo].[DongHD] ([SoHD], [soluong], [MaDU], [Matopping], [tongtien]) VALUES (12, 1, 3, NULL, NULL)
INSERT [dbo].[DongHD] ([SoHD], [soluong], [MaDU], [Matopping], [tongtien]) VALUES (13, 1, 5, NULL, NULL)
INSERT [dbo].[DongHD] ([SoHD], [soluong], [MaDU], [Matopping], [tongtien]) VALUES (14, 3, 7, N'TP14      ', NULL)
INSERT [dbo].[DongHD] ([SoHD], [soluong], [MaDU], [Matopping], [tongtien]) VALUES (15, 1, 9, N'TP15      ', NULL)
INSERT [dbo].[DongHD] ([SoHD], [soluong], [MaDU], [Matopping], [tongtien]) VALUES (16, 2, 8, N'TP16      ', NULL)
INSERT [dbo].[DongHD] ([SoHD], [soluong], [MaDU], [Matopping], [tongtien]) VALUES (17, 1, 4, N'TP17      ', NULL)
INSERT [dbo].[DongHD] ([SoHD], [soluong], [MaDU], [Matopping], [tongtien]) VALUES (18, 1, 6, N'TP12      ', NULL)
INSERT [dbo].[DongHD] ([SoHD], [soluong], [MaDU], [Matopping], [tongtien]) VALUES (19, 3, 7, N'TP13      ', NULL)
INSERT [dbo].[DongHD] ([SoHD], [soluong], [MaDU], [Matopping], [tongtien]) VALUES (20, 2, 2, N'TP17      ', NULL)
INSERT [dbo].[Dongphieunhap] ([MaNL], [Manhap], [slnhap], [sltrongkho]) VALUES (N'NL11      ', N'PN11      ', N'5', N'2')
INSERT [dbo].[Dongphieunhap] ([MaNL], [Manhap], [slnhap], [sltrongkho]) VALUES (N'NL16      ', N'PN15      ', N'3', N'3')
INSERT [dbo].[Dongphieunhap] ([MaNL], [Manhap], [slnhap], [sltrongkho]) VALUES (N'NL17      ', N'PN14      ', N'2', N'5')
INSERT [dbo].[Dongphieunhap] ([MaNL], [Manhap], [slnhap], [sltrongkho]) VALUES (N'NL18      ', N'PN13      ', N'4', N'4')
INSERT [dbo].[Dongphieunhap] ([MaNL], [Manhap], [slnhap], [sltrongkho]) VALUES (N'NL19      ', N'PN12      ', N'6', N'1')
INSERT [dbo].[Dongphieunhap] ([MaNL], [Manhap], [slnhap], [sltrongkho]) VALUES (N'NL14      ', N'PN11      ', N'8', N'0')
INSERT [dbo].[Dongphieunhap] ([MaNL], [Manhap], [slnhap], [sltrongkho]) VALUES (N'NL11      ', N'PN13      ', N'5', N'6')
INSERT [dbo].[Dongphieunhap] ([MaNL], [Manhap], [slnhap], [sltrongkho]) VALUES (N'NL13      ', N'PN16      ', N'5', N'9')
INSERT [dbo].[Dongphieunhap] ([MaNL], [Manhap], [slnhap], [sltrongkho]) VALUES (N'NL15      ', N'PN17      ', N'4', N'5')
INSERT [dbo].[Dongphieunhap] ([MaNL], [Manhap], [slnhap], [sltrongkho]) VALUES (N'NL16      ', N'PN11      ', N'7', N'2')
SET IDENTITY_INSERT [dbo].[Douong] ON 

INSERT [dbo].[Douong] ([MaDU], [tenDU], [size], [dongia], [HinhAnh], [Maloai]) VALUES (1, N'Ép Dây Chanh', N'L', 45000, N'epchanhday.jpg', 1)
INSERT [dbo].[Douong] ([MaDU], [tenDU], [size], [dongia], [HinhAnh], [Maloai]) VALUES (2, N'Ép Chanh', N'M', 30000, N'epchanh.jpg', 2)
INSERT [dbo].[Douong] ([MaDU], [tenDU], [size], [dongia], [HinhAnh], [Maloai]) VALUES (3, N'Ép Dưa Hấu', N'M', 35000, N'epduahau.jpg', 2)
INSERT [dbo].[Douong] ([MaDU], [tenDU], [size], [dongia], [HinhAnh], [Maloai]) VALUES (4, N'Ép Ôỉ', N'L', 45000, N'epoi.jpg', 2)
INSERT [dbo].[Douong] ([MaDU], [tenDU], [size], [dongia], [HinhAnh], [Maloai]) VALUES (5, N'Trà xanh', N'M', 30000, NULL, 3)
INSERT [dbo].[Douong] ([MaDU], [tenDU], [size], [dongia], [HinhAnh], [Maloai]) VALUES (6, N'Trà xanh xoài', N'L', 50000, NULL, 5)
INSERT [dbo].[Douong] ([MaDU], [tenDU], [size], [dongia], [HinhAnh], [Maloai]) VALUES (7, N'Macchiato matcha', N'M', 35000, NULL, 8)
INSERT [dbo].[Douong] ([MaDU], [tenDU], [size], [dongia], [HinhAnh], [Maloai]) VALUES (8, N'Macchiato sôcla', N'M', 30000, NULL, 10)
INSERT [dbo].[Douong] ([MaDU], [tenDU], [size], [dongia], [HinhAnh], [Maloai]) VALUES (9, N'Yakult trà xanh', N'M', 30000, NULL, 4)
INSERT [dbo].[Douong] ([MaDU], [tenDU], [size], [dongia], [HinhAnh], [Maloai]) VALUES (10, N'Yakult trà xanh', N'M', 40000, NULL, 4)
SET IDENTITY_INSERT [dbo].[Douong] OFF
INSERT [dbo].[HoaDon] ([SoHD], [discount], [tongtienKHtra], [sotienKHdua], [sotienthua], [ngaymua], [sogiomua], [diemcong], [MaKM], [MaTV]) VALUES (11, NULL, 90000, 100000, 10000, CAST(N'2019-03-01' AS Date), N'9:00', 5, NULL, N'TV11      ')
INSERT [dbo].[HoaDon] ([SoHD], [discount], [tongtienKHtra], [sotienKHdua], [sotienthua], [ngaymua], [sogiomua], [diemcong], [MaKM], [MaTV]) VALUES (12, 0.3, 24000, 30000, 6000, CAST(N'2019-03-02' AS Date), N'9:15', 2, N'KM11      ', N'TV12      ')
INSERT [dbo].[HoaDon] ([SoHD], [discount], [tongtienKHtra], [sotienKHdua], [sotienthua], [ngaymua], [sogiomua], [diemcong], [MaKM], [MaTV]) VALUES (13, 0.2, 24000, 50000, 16000, CAST(N'2019-03-03' AS Date), N'9:25', NULL, N'KM13      ', N'TV13      ')
INSERT [dbo].[HoaDon] ([SoHD], [discount], [tongtienKHtra], [sotienKHdua], [sotienthua], [ngaymua], [sogiomua], [diemcong], [MaKM], [MaTV]) VALUES (14, NULL, 105000, 200000, 95000, CAST(N'2019-03-04' AS Date), N'16:00', 8, NULL, N'TV14      ')
INSERT [dbo].[HoaDon] ([SoHD], [discount], [tongtienKHtra], [sotienKHdua], [sotienthua], [ngaymua], [sogiomua], [diemcong], [MaKM], [MaTV]) VALUES (15, NULL, 35000, 50000, 15000, CAST(N'2019-03-05' AS Date), N'18:00', 3, NULL, N'TV16      ')
INSERT [dbo].[HoaDon] ([SoHD], [discount], [tongtienKHtra], [sotienKHdua], [sotienthua], [ngaymua], [sogiomua], [diemcong], [MaKM], [MaTV]) VALUES (16, 0.1, 42000, 50000, 8000, CAST(N'2019-03-06' AS Date), N'18:05', NULL, N'KM15      ', N'TV12      ')
INSERT [dbo].[HoaDon] ([SoHD], [discount], [tongtienKHtra], [sotienKHdua], [sotienthua], [ngaymua], [sogiomua], [diemcong], [MaKM], [MaTV]) VALUES (17, NULL, 30000, 100000, 70000, CAST(N'2019-03-07' AS Date), N'18:15', NULL, NULL, N'TV15      ')
INSERT [dbo].[HoaDon] ([SoHD], [discount], [tongtienKHtra], [sotienKHdua], [sotienthua], [ngaymua], [sogiomua], [diemcong], [MaKM], [MaTV]) VALUES (18, 0.2, 70000, 100000, 30000, CAST(N'2019-03-08' AS Date), N'19:00', 6, N'KM16      ', N'TV19      ')
INSERT [dbo].[HoaDon] ([SoHD], [discount], [tongtienKHtra], [sotienKHdua], [sotienthua], [ngaymua], [sogiomua], [diemcong], [MaKM], [MaTV]) VALUES (19, NULL, 142000, 150000, 8000, CAST(N'2019-03-09' AS Date), N'19:05', NULL, NULL, N'TV14      ')
INSERT [dbo].[HoaDon] ([SoHD], [discount], [tongtienKHtra], [sotienKHdua], [sotienthua], [ngaymua], [sogiomua], [diemcong], [MaKM], [MaTV]) VALUES (20, 0.2, 28000, 30000, 2000, CAST(N'2019-03-10' AS Date), N'23:00', 5, N'KM18      ', N'TV20      ')
INSERT [dbo].[Khuyenmai] ([MaKM], [tentrasua], [soluong], [size], [phantramgiamgia]) VALUES (N'KM11      ', N'Trà sữa panda', 1, N'L', N'5')
INSERT [dbo].[Khuyenmai] ([MaKM], [tentrasua], [soluong], [size], [phantramgiamgia]) VALUES (N'KM12      ', N'Trà sữa dâu tây ', 2, N'M', N'10')
INSERT [dbo].[Khuyenmai] ([MaKM], [tentrasua], [soluong], [size], [phantramgiamgia]) VALUES (N'KM13      ', N'Macchiato matcha', 2, N'L', N'20')
INSERT [dbo].[Khuyenmai] ([MaKM], [tentrasua], [soluong], [size], [phantramgiamgia]) VALUES (N'KM14      ', N'Yakult trà xanh', 1, N'M', N'15')
INSERT [dbo].[Khuyenmai] ([MaKM], [tentrasua], [soluong], [size], [phantramgiamgia]) VALUES (N'KM15      ', N'Trà xanh xoài', 5, N'L', N'40')
INSERT [dbo].[Khuyenmai] ([MaKM], [tentrasua], [soluong], [size], [phantramgiamgia]) VALUES (N'KM16      ', N'Chanh leo sữa chua', 1, N'L', N'5')
INSERT [dbo].[Khuyenmai] ([MaKM], [tentrasua], [soluong], [size], [phantramgiamgia]) VALUES (N'KM17      ', N'Toco socola', 2, N'M', N'10')
INSERT [dbo].[Khuyenmai] ([MaKM], [tentrasua], [soluong], [size], [phantramgiamgia]) VALUES (N'KM18      ', N'Macchiato socola', 2, N'L', N'20')
INSERT [dbo].[Khuyenmai] ([MaKM], [tentrasua], [soluong], [size], [phantramgiamgia]) VALUES (N'KM19      ', N'Yakult Chanh leo', 1, N'M', N'15')
INSERT [dbo].[Khuyenmai] ([MaKM], [tentrasua], [soluong], [size], [phantramgiamgia]) VALUES (N'KM20      ', N'Trà xueshan2', 5, N'L', N'40')
SET IDENTITY_INSERT [dbo].[LoaiDU] ON 

INSERT [dbo].[LoaiDU] ([Maloai], [tenloai]) VALUES (1, N'Milk Tea')
INSERT [dbo].[LoaiDU] ([Maloai], [tenloai]) VALUES (2, N'2.Fresh Fruit Tea')
INSERT [dbo].[LoaiDU] ([Maloai], [tenloai]) VALUES (3, N'Macchiato')
INSERT [dbo].[LoaiDU] ([Maloai], [tenloai]) VALUES (4, N'Handmade Freeze')
INSERT [dbo].[LoaiDU] ([Maloai], [tenloai]) VALUES (5, N'Special Drink')
INSERT [dbo].[LoaiDU] ([Maloai], [tenloai]) VALUES (6, N'Chè')
INSERT [dbo].[LoaiDU] ([Maloai], [tenloai]) VALUES (7, N'Fresh Fruit ')
INSERT [dbo].[LoaiDU] ([Maloai], [tenloai]) VALUES (8, N'Macchi')
INSERT [dbo].[LoaiDU] ([Maloai], [tenloai]) VALUES (9, N'Handmade')
INSERT [dbo].[LoaiDU] ([Maloai], [tenloai]) VALUES (10, N'Drink')
SET IDENTITY_INSERT [dbo].[LoaiDU] OFF
INSERT [dbo].[Login_QLBTS] ([STT], [user_ten], [user_pass], [Name]) VALUES (1, N'admin', N'1', N'Manh Le')
INSERT [dbo].[Login_QLBTS] ([STT], [user_ten], [user_pass], [Name]) VALUES (2, N'nhanvien1', N'1', N'Đình Dần')
INSERT [dbo].[Login_QLBTS] ([STT], [user_ten], [user_pass], [Name]) VALUES (3, N'nhanvien2', N'1', N'Hùng Mạnh')
INSERT [dbo].[Nguyenlieu] ([MaNL], [tenNL], [donvitinh]) VALUES (N'NL11      ', N'Thạch', N'túi')
INSERT [dbo].[Nguyenlieu] ([MaNL], [tenNL], [donvitinh]) VALUES (N'NL12      ', N'Trân châu', N'hộp')
INSERT [dbo].[Nguyenlieu] ([MaNL], [tenNL], [donvitinh]) VALUES (N'NL13      ', N'Siro', N'hộp')
INSERT [dbo].[Nguyenlieu] ([MaNL], [tenNL], [donvitinh]) VALUES (N'NL14      ', N'Bột pha trà', N'kg')
INSERT [dbo].[Nguyenlieu] ([MaNL], [tenNL], [donvitinh]) VALUES (N'NL15      ', N'Trái cây khô', N'kg')
INSERT [dbo].[Nguyenlieu] ([MaNL], [tenNL], [donvitinh]) VALUES (N'NL16      ', N'Trà', N'túi')
INSERT [dbo].[Nguyenlieu] ([MaNL], [tenNL], [donvitinh]) VALUES (N'NL17      ', N'Trân châu đen', N'hộp')
INSERT [dbo].[Nguyenlieu] ([MaNL], [tenNL], [donvitinh]) VALUES (N'NL18      ', N'Siro đào', N'hộp')
INSERT [dbo].[Nguyenlieu] ([MaNL], [tenNL], [donvitinh]) VALUES (N'NL19      ', N'Bột sữa', N'kg')
INSERT [dbo].[Nguyenlieu] ([MaNL], [tenNL], [donvitinh]) VALUES (N'NL20      ', N'bột báng', N'kg')
INSERT [dbo].[Nhanvien] ([MaNV], [tennv], [soDT]) VALUES (N'NV11      ', N'Nguyễn Hùng Mạnh', N'1121')
INSERT [dbo].[Nhanvien] ([MaNV], [tennv], [soDT]) VALUES (N'NV12      ', N'Lê Đình Dần ', N'1122')
INSERT [dbo].[Nhanvien] ([MaNV], [tennv], [soDT]) VALUES (N'NV13      ', N'Lê Văn Mạnh ', N'1123')
INSERT [dbo].[Nhanvien] ([MaNV], [tennv], [soDT]) VALUES (N'NV14      ', N'Hoàng Ngọc Linh', N'1124')
INSERT [dbo].[Nhanvien] ([MaNV], [tennv], [soDT]) VALUES (N'NV15      ', N'Lê Kim Phi', N'1125')
INSERT [dbo].[Nhanvien] ([MaNV], [tennv], [soDT]) VALUES (N'NV16      ', N'Nguyễn Văn Hùng', N'1126')
INSERT [dbo].[Nhanvien] ([MaNV], [tennv], [soDT]) VALUES (N'NV17      ', N'Hoàng Đinh Thị Khánh', N'1127')
INSERT [dbo].[Nhanvien] ([MaNV], [tennv], [soDT]) VALUES (N'NV18      ', N'Đinh Thị Diệp', N'1128')
INSERT [dbo].[Nhanvien] ([MaNV], [tennv], [soDT]) VALUES (N'NV19      ', N'Ngô Văn Trường', N'1129')
INSERT [dbo].[Nhanvien] ([MaNV], [tennv], [soDT]) VALUES (N'NV20      ', N'Lê Thị Bình', N'1130')
INSERT [dbo].[Phieunhap] ([Manhap], [MaNV], [ngaynhap]) VALUES (N'PN11      ', N'NV11      ', CAST(N'2019-03-01' AS Date))
INSERT [dbo].[Phieunhap] ([Manhap], [MaNV], [ngaynhap]) VALUES (N'PN12      ', N'NV13      ', CAST(N'2019-03-02' AS Date))
INSERT [dbo].[Phieunhap] ([Manhap], [MaNV], [ngaynhap]) VALUES (N'PN13      ', N'NV15      ', CAST(N'2019-03-03' AS Date))
INSERT [dbo].[Phieunhap] ([Manhap], [MaNV], [ngaynhap]) VALUES (N'PN14      ', N'NV18      ', CAST(N'2019-03-04' AS Date))
INSERT [dbo].[Phieunhap] ([Manhap], [MaNV], [ngaynhap]) VALUES (N'PN15      ', N'NV11      ', CAST(N'2019-03-05' AS Date))
INSERT [dbo].[Phieunhap] ([Manhap], [MaNV], [ngaynhap]) VALUES (N'PN16      ', N'NV13      ', CAST(N'2019-03-06' AS Date))
INSERT [dbo].[Phieunhap] ([Manhap], [MaNV], [ngaynhap]) VALUES (N'PN17      ', N'NV19      ', CAST(N'2019-03-07' AS Date))
INSERT [dbo].[Phieunhap] ([Manhap], [MaNV], [ngaynhap]) VALUES (N'PN18      ', N'NV15      ', CAST(N'2019-03-08' AS Date))
INSERT [dbo].[Phieunhap] ([Manhap], [MaNV], [ngaynhap]) VALUES (N'PN19      ', N'NV16      ', CAST(N'2019-03-09' AS Date))
INSERT [dbo].[Phieunhap] ([Manhap], [MaNV], [ngaynhap]) VALUES (N'PN20      ', N'NV18      ', CAST(N'2019-03-10' AS Date))
INSERT [dbo].[Thanhvien] ([MaTV], [STT], [hoten], [loaithanhvien], [soDT], [email], [diachi], [diemtichluy]) VALUES (N'TV11      ', 1, N'Đặng Hoàng Tuấn Anh', N'Bạc', N'0967145054', NULL, N'Hà Nội', 15)
INSERT [dbo].[Thanhvien] ([MaTV], [STT], [hoten], [loaithanhvien], [soDT], [email], [diachi], [diemtichluy]) VALUES (N'TV12      ', 2, N'Lê Văn Mạnh', N'Vàng', N'0967145028', N'', N'Hà Nội', 22)
INSERT [dbo].[Thanhvien] ([MaTV], [STT], [hoten], [loaithanhvien], [soDT], [email], [diachi], [diemtichluy]) VALUES (N'TV13      ', 3, N'Nguyễn Công Sơn', N'Bạc', N'0967145068', NULL, N'Nam Định', 10)
INSERT [dbo].[Thanhvien] ([MaTV], [STT], [hoten], [loaithanhvien], [soDT], [email], [diachi], [diemtichluy]) VALUES (N'TV14      ', 4, N'Lê Đình Dần', N'Bạc', N'0967145012', N'dan_edogawa@yahoo.com', N'Nghệ An', 5)
INSERT [dbo].[Thanhvien] ([MaTV], [STT], [hoten], [loaithanhvien], [soDT], [email], [diachi], [diemtichluy]) VALUES (N'TV15      ', 5, N'Nguyễn Hùng Mạnh', N'Vàng', N'0967145047', NULL, N'Hà Tĩnh', 19)
INSERT [dbo].[Thanhvien] ([MaTV], [STT], [hoten], [loaithanhvien], [soDT], [email], [diachi], [diemtichluy]) VALUES (N'TV16      ', 6, N'Đào Thị Ngọc Ánh', N'Vàng', N'0967145012', NULL, N'Đà Nẵng', 10)
INSERT [dbo].[Thanhvien] ([MaTV], [STT], [hoten], [loaithanhvien], [soDT], [email], [diachi], [diemtichluy]) VALUES (N'TV17      ', 7, N'Nguyễn Thị Hà', N'Kim Cương', N'0967145045', NULL, N'Hà Nội', 5)
INSERT [dbo].[Thanhvien] ([MaTV], [STT], [hoten], [loaithanhvien], [soDT], [email], [diachi], [diemtichluy]) VALUES (N'TV18      ', 8, N'Dương Minh ANh Tú', N'Vàng', N'0967145078', NULL, N'Hồ Chí Minh', 2)
INSERT [dbo].[Thanhvien] ([MaTV], [STT], [hoten], [loaithanhvien], [soDT], [email], [diachi], [diemtichluy]) VALUES (N'TV19      ', 9, N'Lê Đình Phú', N'Bạc', N'0967145019', NULL, N'Hà Nội', 4)
INSERT [dbo].[Thanhvien] ([MaTV], [STT], [hoten], [loaithanhvien], [soDT], [email], [diachi], [diemtichluy]) VALUES (N'TV20      ', 10, N'Nguyễn Đình Huế', N'Vàng', N'0967145641', NULL, N'Hà Nội', 8)
INSERT [dbo].[Topping] ([Matopping], [tentopping], [HinhAnh], [giatopping]) VALUES (N'TP11      ', N'Thạch cafe', N'Topping1.jpg', 6000)
INSERT [dbo].[Topping] ([Matopping], [tentopping], [HinhAnh], [giatopping]) VALUES (N'TP12      ', N'Trân châu ', N'Topping2.jpg', 6000)
INSERT [dbo].[Topping] ([Matopping], [tentopping], [HinhAnh], [giatopping]) VALUES (N'TP13      ', N'Rau câu  ', N'Topping2.jpg', 6000)
INSERT [dbo].[Topping] ([Matopping], [tentopping], [HinhAnh], [giatopping]) VALUES (N'TP14      ', N'Lô hội', N'Topping3.jpg', 7000)
INSERT [dbo].[Topping] ([Matopping], [tentopping], [HinhAnh], [giatopping]) VALUES (N'TP15      ', N'Macchiato', N'Topping4.jpg', 8000)
INSERT [dbo].[Topping] ([Matopping], [tentopping], [HinhAnh], [giatopping]) VALUES (N'TP16      ', N'Thạch', N'Topping5.jpg', 6000)
INSERT [dbo].[Topping] ([Matopping], [tentopping], [HinhAnh], [giatopping]) VALUES (N'TP17      ', N'Trân châu đen', N'Topping6', 6000)
ALTER TABLE [dbo].[Doanhthu]  WITH CHECK ADD FOREIGN KEY([Manhap])
REFERENCES [dbo].[Phieunhap] ([Manhap])
GO
ALTER TABLE [dbo].[Doanhthu]  WITH CHECK ADD FOREIGN KEY([SoHD])
REFERENCES [dbo].[HoaDon] ([SoHD])
GO
ALTER TABLE [dbo].[DongHD]  WITH CHECK ADD FOREIGN KEY([MaDU])
REFERENCES [dbo].[Douong] ([MaDU])
GO
ALTER TABLE [dbo].[DongHD]  WITH CHECK ADD FOREIGN KEY([Matopping])
REFERENCES [dbo].[Topping] ([Matopping])
GO
ALTER TABLE [dbo].[DongHD]  WITH CHECK ADD FOREIGN KEY([SoHD])
REFERENCES [dbo].[HoaDon] ([SoHD])
GO
ALTER TABLE [dbo].[Dongphieunhap]  WITH CHECK ADD FOREIGN KEY([Manhap])
REFERENCES [dbo].[Phieunhap] ([Manhap])
GO
ALTER TABLE [dbo].[Dongphieunhap]  WITH CHECK ADD FOREIGN KEY([MaNL])
REFERENCES [dbo].[Nguyenlieu] ([MaNL])
GO
ALTER TABLE [dbo].[Douong]  WITH CHECK ADD FOREIGN KEY([Maloai])
REFERENCES [dbo].[LoaiDU] ([Maloai])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaKM])
REFERENCES [dbo].[Khuyenmai] ([MaKM])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaTV])
REFERENCES [dbo].[Thanhvien] ([MaTV])
GO
ALTER TABLE [dbo].[Phieunhap]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[Nhanvien] ([MaNV])
GO
USE [master]
GO
ALTER DATABASE [ThucTapNhom_QLBTS] SET  READ_WRITE 
GO
