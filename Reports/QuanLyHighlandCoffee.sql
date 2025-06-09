-- ======================= BẢNG CHỨC VỤ =======================
CREATE TABLE ChucVu (
    MaCV VARCHAR(10) PRIMARY KEY,
    TenCV NVARCHAR(50),
    Quyen NVARCHAR(50),
    GhiChu NVARCHAR(255)
);

-- ======================= BẢNG NHÂN VIÊN =======================
CREATE TABLE NhanVien (
    MaNV VARCHAR(10) PRIMARY KEY,
    HoNV NVARCHAR(50),
    TenNV NVARCHAR(50),
    NgaySinh DATE,
    GioiTinh NVARCHAR(10),
    NgayVaoLam DATE,
    HeSoLuong FLOAT,
    SDT VARCHAR(15),
    Email VARCHAR(100),
    MaCV VARCHAR(10),
    FOREIGN KEY (MaCV) REFERENCES ChucVu(MaCV)
);

-- ======================= BẢNG ADMIN =======================
CREATE TABLE Admin (
    MaAD VARCHAR(10) PRIMARY KEY,
    ThongtinAd NVARCHAR(255)
);

-- ======================= BẢNG TÀI KHOẢN =======================
CREATE TABLE TaiKhoan (
    MaTK VARCHAR(10) PRIMARY KEY,
    MatKhau NVARCHAR(50),
    Quyen NVARCHAR(50),
    TenTK NVARCHAR(50),
    MaNV VARCHAR(10) UNIQUE,
	MaAD varchar(10) ,
    FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
	FOREIGN KEY (MaAD) REFERENCES admin(MaAD)

);

-- ======================= BẢNG BÀN =======================
CREATE TABLE Ban (
    MaBan VARCHAR(10) PRIMARY KEY,
    TinhTrang NVARCHAR(50),
    GhiChu NVARCHAR(255)
);

-- ======================= BẢNG KHÁCH HÀNG VIP =======================
CREATE TABLE KhachHangVip (
    MaKHVIP VARCHAR(10) PRIMARY KEY,
    HoTenKH NVARCHAR(100),
    GioiTinh NVARCHAR(10),
    NgaySinh DATE,
    NgayDangKy DATE,
    SDT VARCHAR(15),
    DiemTichLuy INT
);

-- ======================= BẢNG THỰC ĐƠN =======================
CREATE TABLE ThucDon (
    MaDU VARCHAR(10) PRIMARY KEY,
    TenDoUong NVARCHAR(100),
    GiaBan FLOAT,
    Size NVARCHAR(10),
    LoaiDoUong NVARCHAR(50),
    TinhTrang NVARCHAR(50),
    GhiChu NVARCHAR(255),
    MaKM VARCHAR(10),
    FOREIGN KEY (MaKM) REFERENCES CTKhuyenMai(MaKM)
);

-- ======================= BẢNG CHI TIẾT KHUYẾN MÃI =======================
CREATE TABLE CTKhuyenMai (
    MaKM VARCHAR(10) PRIMARY KEY,
    TenKM NVARCHAR(100),
    TTKM NVARCHAR(255),
    NgayBatDau DATE,
    NgayKetThuc DATE,
    GhiChu NVARCHAR(255)
);

-- ======================= BẢNG ĐƠN BÁN =======================
CREATE TABLE DonBan (
    MaDH VARCHAR(10) PRIMARY KEY,
    NgayDH DATE,
    TrangThai NVARCHAR(50),
    ThanhTien FLOAT,
    MaBan VARCHAR(10),
    MaKHVIP VARCHAR(10),
    MaNV VARCHAR(10),
    FOREIGN KEY (MaBan) REFERENCES Ban(MaBan),
    FOREIGN KEY (MaKHVIP) REFERENCES KhachHangVip(MaKHVIP),
    FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);

-- ======================= BẢNG CHI TIẾT HÓA ĐƠN =======================
CREATE TABLE CTHD (
    MaDH VARCHAR(10),
    MaDU VARCHAR(10),
    DonGia FLOAT,
    SoLuong INT,
    Size NVARCHAR(10),
    GhiChu NVARCHAR(255),
    PRIMARY KEY (MaDH, MaDU),
    FOREIGN KEY (MaDH) REFERENCES DonBan(MaDH),
    FOREIGN KEY (MaDU) REFERENCES ThucDon(MaDU)
);

-- ======================= BẢNG THANH TOÁN =======================
CREATE TABLE ThanhToan (
    MaTT VARCHAR(10) PRIMARY KEY,
    PTTT NVARCHAR(50),
    TongTienTT FLOAT,
    NgayTT DATE,
    MaDH VARCHAR(10),
    MaKM VARCHAR(10),
    FOREIGN KEY (MaDH) REFERENCES DonBan(MaDH),
    FOREIGN KEY (MaKM) REFERENCES CTKhuyenMai(MaKM)
);

-- ======================= BẢNG HÓA ĐƠN (BILL) =======================
CREATE TABLE Bill (
    SoBan VARCHAR(10) PRIMARY KEY,
    ThongTinDoUong NVARCHAR(255),
    TongTienTT FLOAT,
    PTTT NVARCHAR(50),
    GhiChu NVARCHAR(255),
    MaTT VARCHAR(10),
    FOREIGN KEY (MaTT) REFERENCES ThanhToan(MaTT)
);

-- ======================= BẢNG BÁO CÁO THỐNG KÊ =======================
CREATE TABLE BaoCaoThongKe (
    NgayIn DATE,
    NoiDung NVARCHAR(255),
    MaSoTK VARCHAR(10) primary key,
    FOREIGN KEY (MaSoTK) REFERENCES ThongKeDoanhThu(MaSoTK)
);

-- ======================= BẢNG THỐNG KÊ DOANH THU =======================
CREATE TABLE ThongKeDoanhThu (
    MaSoTK VARCHAR(10) PRIMARY KEY,
    ThongTin NVARCHAR(255),
    NgayTK DATE,
    LoaiTK NVARCHAR(50),
    MaDH VARCHAR(10),
    MaNV VARCHAR(10),
    FOREIGN KEY (MaDH) REFERENCES DonBan(MaDH),
    FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);

-- ======================= CHUCVU =======================
INSERT INTO ChucVu VALUES
('CV01', N'Quản lý chi nhánh', N'Full Access', N'Quản lý toàn bộ hoạt động'),
('CV02', N'Nhân viên bán hàng', N'Limited Access', N'Chỉ bán hàng');

-- ======================= NHANVIEN =======================
INSERT INTO NhanVien VALUES
('NV01', N'Lê', N'Thị Mai', '1995-02-12', N'Nữ', '2022-01-15', 2.5, '0987654321', 'mai.le@gmail.com', 'CV02'),
('NV02', N'Nguyễn', N'Văn An', '1990-06-25', N'Nam', '2021-09-20', 3.0, '0912345678', 'an.nguyen@gmail.com', 'CV01'),
('NV03', N'Trần', N'Thị Hương', '1996-04-18', N'Nữ', '2023-02-10', 2.2, '0978123456', 'huong.tran@gmail.com', 'CV02'),
('NV04', N'Phạm', N'Văn Hòa', '1993-11-03', N'Nam', '2022-06-01', 2.8, '0901122334', 'hoa.pham@gmail.com', 'CV02'),
('NV05', N'Lý', N'Thị Hoa', '1998-01-07', N'Nữ', '2024-01-01', 2.0, '0911223344', 'hoa.ly@gmail.com', 'CV02'),
('NV06', N'Đỗ', N'Ngọc Anh', '1997-05-22', N'Nữ', '2021-03-15', 2.4, '0922334455', 'anh.do@gmail.com', 'CV01'),
('NV07', N'Hồ', N'Văn Cường', '1991-07-14', N'Nam', '2020-07-25', 3.2, '0933445566', 'cuong.ho@gmail.com', 'CV01'),
('NV08', N'Vũ', N'Thị Lan', '1994-09-09', N'Nữ', '2022-11-11', 2.6, '0944556677', 'lan.vu@gmail.com', 'CV02'),
('NV09', N'Bùi', N'Đức Minh', '1992-12-30', N'Nam', '2019-08-08', 3.1, '0955667788', 'minh.bui@gmail.com', 'CV01'),
('NV10', N'Ngô', N'Thị Hà', '1999-03-15', N'Nữ', '2023-05-05', 2.1, '0966778899', 'ha.ngo@gmail.com', 'CV02');

-- ======================= ADMIN =======================
INSERT INTO Admin VALUES
('AD01', N'Nguyễn Hữu Trí'),
('AD02', N'Trần Thị Bình');

-- ======================= TAIKHOAN =======================
INSERT INTO TaiKhoan VALUES
('TK01', N'matkhau123', N'Admin', N'tk_admin1', 'NV01', 'AD01'),
('TK02', N'123456', N'User', N'tk_nv1', 'NV02', 'AD01'),
('TK03', N'abcxyz', N'User', N'tk_nv2', 'NV03', 'AD01'),
('TK04', N'qwerty', N'User', N'tk_nv3', 'NV04', 'AD01'),
('TK05', N'pass123', N'User', N'tk_nv4', 'NV05', 'AD01'),
('TK06', N'hello123', N'Admin', N'tk_admin2', 'NV06', 'AD02'),
('TK07', N'coffee2024', N'User', N'tk_nv5', 'NV07', 'AD02'),
('TK08', N'highland', N'User', N'tk_nv6', 'NV08', 'AD02'),
('TK09', N'adminadmin', N'Admin', N'tk_admin3', 'NV09', 'AD02'),
('TK10', N'123admin', N'User', N'tk_nv7', 'NV10', 'AD02');

-- ======================= BAN =======================
INSERT INTO Ban VALUES
('B01', N'Trống', N''),
('B02', N'Đang phục vụ', N'Khách đặt bàn'),
('B03', N'Trống', N''),
('B04', N'Trống', N''),
('B05', N'Đang phục vụ', N'Đang order'),
('B06', N'Trống', N''),
('B07', N'Trống', N''),
('B08', N'Đang phục vụ', N'Chờ thanh toán'),
('B09', N'Trống', N''),
('B10', N'Trống', N'');

-- ======================= KHACHHANGVIP =======================
INSERT INTO KhachHangVip VALUES
('KH01', N'Trần Văn Nam', N'Nam', '1990-01-01', '2022-01-01', '0912345678', 120),
('KH02', N'Lê Thị Mỹ Dung', N'Nữ', '1995-03-15', '2022-02-01', '0987654321', 80),
('KH03', N'Nguyễn Hữu Đức', N'Nam', '1992-06-10', '2023-04-12', '0933445566', 95),
('KH04', N'Phạm Thị Trang', N'Nữ', '1997-08-25', '2023-07-19', '0944556677', 150),
('KH05', N'Huỳnh Văn Tài', N'Nam', '1989-11-30', '2022-05-10', '0955667788', 60),
('KH06', N'Võ Thị Mai', N'Nữ', '1996-09-14', '2024-01-03', '0966778899', 110),
('KH07', N'Đoàn Quốc Khánh', N'Nam', '1994-07-08', '2023-09-09', '0977889900', 140),
('KH08', N'Lý Hồng Nhung', N'Nữ', '1998-05-22', '2023-06-20', '0988990001', 70),
('KH09', N'Tống Văn Hùng', N'Nam', '1991-02-19', '2023-08-30', '0999000112', 130),
('KH10', N'Ngô Minh Châu', N'Nữ', '1993-04-05', '2024-02-10', '0911223344', 100);

-- ======================= CTKHUYENMAI =======================
INSERT INTO CTKhuyenMai VALUES
('KM01', N'Giảm giá hè', N'Giảm 10% cho đơn hàng trên 100k', '2024-05-01', '2024-07-31', N''),
('KM02', N'Thẻ thành viên', N'Ưu đãi cho khách VIP', '2024-01-01', '2024-12-31', N''),
('KM03', N'Mua 1 tặng 1', N'Áp dụng với trà sữa size M', '2024-06-01', '2024-06-30', N''),
('KM04', N'T7 rực rỡ', N'Giảm 20% vào thứ 7', '2024-07-01', '2024-07-31', N''),
('KM05', N'Khuyến mãi tháng 5', N'Giảm 15% cho khách mới', '2024-05-01', '2024-05-31', N''),
('KM06', N'Uống càng nhiều giảm càng sâu', N'Giảm theo số lượng ly', '2024-04-01', '2024-06-30', N''),
('KM07', N'Ưu đãi thành viên vàng', N'Chỉ áp dụng KH có điểm > 100', '2024-05-10', '2024-12-31', N''),
('KM08', N'Chào tháng 6', N'Giảm 5k cho mọi đơn', '2024-06-01', '2024-06-30', N''),
('KM09', N'Tặng topping miễn phí', N'Chọn 1 topping miễn phí', '2024-04-15', '2024-06-15', N''),
('KM10', N'Giảm giá combo', N'Combo 3 ly giảm 25%', '2024-06-10', '2024-07-10', N'');

-- ======================= THUCDON =======================
INSERT INTO ThucDon VALUES
('TD01', N'Cafe sữa đá', 25000, N'M', N'Cafe', N'Còn hàng', N'', 'KM01'),
('TD02', N'Cafe đen', 20000, N'M', N'Cafe', N'Còn hàng', N'', 'KM02'),
('TD03', N'Trà sữa trân châu', 35000, N'L', N'Trà sữa', N'Còn hàng', N'', 'KM03'),
('TD04', N'Trà đào cam sả', 30000, N'M', N'Trà trái cây', N'Còn hàng', N'', 'KM04'),
('TD05', N'Sinh tố bơ', 40000, N'L', N'Sinh tố', N'Còn hàng', N'', 'KM05'),
('TD06', N'Sinh tố xoài', 38000, N'L', N'Sinh tố', N'Còn hàng', N'', 'KM06'),
('TD07', N'Nước cam', 25000, N'M', N'Nước ép', N'Còn hàng', N'', 'KM07'),
('TD08', N'Matcha đá xay', 45000, N'L', N'Đá xay', N'Còn hàng', N'', 'KM08'),
('TD09', N'Mocha đá xay', 47000, N'L', N'Đá xay', N'Còn hàng', N'', 'KM09'),
('TD10', N'Cacao nóng', 30000, N'S', N'Chocolate', N'Còn hàng', N'', 'KM10');

-- ======================= DONBAN =======================
INSERT INTO DonBan VALUES
('DB01', '2024-04-10', N'Hoàn thành', 85000, 'B01', 'KH01', 'NV01'),
('DB02', '2024-04-11', N'Chờ thanh toán', 70000, 'B02', 'KH02', 'NV02'),
('DB03', '2024-04-12', N'Đã hủy', 0, 'B03', NULL, 'NV03'),
('DB04', '2024-04-13', N'Hoàn thành', 95000, 'B04', 'KH04', 'NV04'),
('DB05', '2024-04-14', N'Hoàn thành', 105000, 'B05', 'KH05', 'NV05'),
('DB06', '2024-04-14', N'Hoàn thành', 78000, 'B06', 'KH06', 'NV06'),
('DB07', '2024-04-15', N'Đang chuẩn bị', 0, 'B07', NULL, 'NV07'),
('DB08', '2024-04-15', N'Hoàn thành', 65000, 'B08', 'KH08', 'NV08'),
('DB09', '2024-04-16', N'Hoàn thành', 120000, 'B09', 'KH09', 'NV09'),
('DB10', '2024-04-16', N'Hoàn thành', 50000, 'B10', 'KH10', 'NV10');

-- ======================= CTHD =======================
INSERT INTO CTHD VALUES
('DB01', 'TD01', 25000, 1, N'M', N'Ít đá'),
('DB01', 'TD03', 35000, 1, N'L', N'Trân châu đen'),
('DB01', 'TD07', 25000, 1, N'M', N'Không đường'),

('DB02', 'TD04', 30000, 2, N'M', N'Ít đường'),
('DB02', 'TD05', 40000, 1, N'L', N'Nhiều đá'),

('DB04', 'TD06', 38000, 1, N'L', N'Không đá'),
('DB04', 'TD08', 45000, 1, N'L', N'Nhiều kem'),

('DB05', 'TD09', 47000, 2, N'L', N''),
('DB06', 'TD10', 30000, 2, N'S', N'Nóng'),

('DB10', 'TD01', 25000, 2, N'M', N'Không đá');

-- ======================= THANHTOAN =======================
INSERT INTO ThanhToan VALUES
('TT01', N'Tiền mặt', 85000, '2024-04-10', 'DB01', 'KM01'),
('TT02', N'Chuyển khoản', 70000, '2024-04-11', 'DB02', 'KM02'),
('TT03', N'Momo', 95000, '2024-04-13', 'DB04', 'KM04'),
('TT04', N'Tiền mặt', 105000, '2024-04-14', 'DB05', 'KM05'),
('TT05', N'ZaloPay', 78000, '2024-04-14', 'DB06', 'KM06'),
('TT06', N'Tiền mặt', 65000, '2024-04-15', 'DB08', 'KM08'),
('TT07', N'Chuyển khoản', 120000, '2024-04-16', 'DB09', 'KM09'),
('TT08', N'Momo', 50000, '2024-04-16', 'DB10', 'KM10');

-- ======================= BILL =======================
INSERT INTO Bill VALUES
('B01', N'Cafe sữa đá, Trà sữa trân châu, Nước cam', 85000, N'Tiền mặt', N'', 'TT01'),
('B02', N'Trà đào cam sả, Sinh tố bơ', 70000, N'Chuyển khoản', N'', 'TT02'),
('B04', N'Sinh tố xoài, Matcha đá xay', 95000, N'Momo', N'', 'TT03'),
('B05', N'Mocha đá xay x2', 105000, N'Tiền mặt', N'', 'TT04'),
('B06', N'Cacao nóng x2', 78000, N'ZaloPay', N'', 'TT05'),
('B08', N'Nước cam', 65000, N'Tiền mặt', N'', 'TT06'),
('B09', N'Nhiều món', 120000, N'Chuyển khoản', N'', 'TT07'),
('B10', N'Cafe sữa đá x2', 50000, N'Momo', N'', 'TT08');

-- ======================= THONGKEDOANHTHU =======================
INSERT INTO ThongKeDoanhThu VALUES
('TK01', N'Doanh thu ngày 10/4', '2024-04-10', N'Ngày', 'DB01', 'NV01'),
('TK02', N'Doanh thu ngày 11/4', '2024-04-11', N'Ngày', 'DB02', 'NV02'),
('TK03', N'Doanh thu ngày 13/4', '2024-04-13', N'Ngày', 'DB04', 'NV04'),
('TK04', N'Doanh thu ngày 14/4', '2024-04-14', N'Ngày', 'DB05', 'NV05'),
('TK05', N'Doanh thu ngày 14/4', '2024-04-14', N'Ngày', 'DB06', 'NV06'),
('TK06', N'Doanh thu ngày 15/4', '2024-04-15', N'Ngày', 'DB08', 'NV08'),
('TK07', N'Doanh thu ngày 16/4', '2024-04-16', N'Ngày', 'DB09', 'NV09'),
('TK08', N'Doanh thu ngày 16/4', '2024-04-16', N'Ngày', 'DB10', 'NV10');

-- ======================= BAOCAOTHONGKE =======================
INSERT INTO BaoCaoThongKe VALUES
('2024-04-10', N'Tổng kết ngày 10/4: 3 đơn', 'TK01'),
('2024-04-11', N'Tổng kết ngày 11/4: 2 đơn', 'TK02'),
('2024-04-13', N'Tổng kết ngày 13/4: 1 đơn', 'TK03'),
('2024-04-14', N'Tổng kết ngày 14/4: 3 đơn', 'TK04'),
('2024-04-15', N'Tổng kết ngày 15/4: 1 đơn', 'TK06'),
('2024-04-16', N'Tổng kết ngày 16/4: 2 đơn', 'TK07');


