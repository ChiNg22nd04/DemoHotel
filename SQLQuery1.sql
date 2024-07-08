-- Tạo cơ sở dữ liệu hotel
CREATE DATABASE KhachSan;
USE KhachSan;

-- Tạo bảng LoaiPhong
CREATE TABLE LoaiPhong (
    MaLoai NVARCHAR(10) PRIMARY KEY,
    TenLoai NVARCHAR(MAX) NULL
);

-- Thêm dữ liệu mẫu vào bảng PhanLoai
INSERT INTO LoaiPhong (MaLoai, TenLoai)
VALUES (N'C1', N'Phòng đơn'),
       (N'C2', N'Phòng đôi'),
       (N'C3', N'Phòng gia đình');

-- Tạo bảng TrangThaiPhong
CREATE TABLE TrangThaiPhong (
    MaTrangThai NVARCHAR(10) PRIMARY KEY,
    TenTrangThai NVARCHAR(50) NOT NULL
);

-- Thêm dữ liệu mẫu vào bảng TrangThaiPhong
INSERT INTO TrangThaiPhong (MaTrangThai, TenTrangThai)
VALUES (N'S1', N'Phòng trống'),
       (N'S2', N'Phòng đã đặt'),
       (N'S3', N'Phòng đang thuê');

-- Tạo bảng TrangThaiDonDep
CREATE TABLE TrangThaiDonDep (
    MaTrangThaiDonDep NVARCHAR(10) PRIMARY KEY,
    TenTrangThaiDonDep NVARCHAR(50) NOT NULL
);

-- Thêm dữ liệu mẫu vào bảng TrangThaiDonDep
INSERT INTO TrangThaiDonDep (MaTrangThaiDonDep, TenTrangThaiDonDep)
VALUES (N'CL1', N'Sửa chữa'),
       (N'CL2', N'Đang dọn dẹp'),
       (N'CL3', N'Đã dọn dẹp');

-- Tạo bảng KhachHang
CREATE TABLE KhachHang (
    MaKhachHang NVARCHAR(10) PRIMARY KEY,
    TenKhachHang NVARCHAR(MAX) NOT NULL,
    DienThoai NVARCHAR(15) NULL,
    Email NVARCHAR(MAX) NULL
);

-- Thêm dữ liệu mẫu vào bảng KhachHang
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DienThoai, Email) 
VALUES (N'C001', N'Nguyễn Văn A', '0123456789', 'a@gmail.com'),
       (N'C002', N'Nguyễn Thị B', '0987654321', 'b@gmail.com');

-- Tạo bảng Phong
CREATE TABLE Phong (
    MaPhong NVARCHAR(10) PRIMARY KEY,
    MaLoai NVARCHAR(10) NOT NULL,
    MaTrangThai NVARCHAR(10) NOT NULL,
    MaTrangThaiDonDep NVARCHAR(10) NOT NULL,
    MaKhachHang NVARCHAR(10) NULL,
    Gia DECIMAL(18, 2) NOT NULL,
    FOREIGN KEY (MaKhachHang) REFERENCES KhachHang(MaKhachHang),
    FOREIGN KEY (MaLoai) REFERENCES LoaiPhong(MaLoai),
    FOREIGN KEY (MaTrangThai) REFERENCES TrangThaiPhong(MaTrangThai),
    FOREIGN KEY (MaTrangThaiDonDep) REFERENCES TrangThaiDonDep(MaTrangThaiDonDep)
);

-- Thêm dữ liệu mẫu vào bảng Phong
INSERT INTO Phong (MaPhong, MaKhachHang, MaLoai, MaTrangThai, MaTrangThaiDonDep, Gia)
VALUES 
(N'R001', NULL, N'C1', N'S1', N'CL1', 1000000),
(N'R002', N'C002', N'C1', N'S2', N'CL2', 1000000),
(N'R003', N'C001', N'C1', N'S3', N'CL3', 1000000),
(N'R004', NULL, N'C1', N'S1', N'CL1', 1000000),
(N'R005', N'C001', N'C1', N'S2', N'CL2', 1000000),
(N'R006', N'C002', N'C1', N'S3', N'CL3', 1000000),
(N'R007', NULL, N'C1', N'S1', N'CL1', 1000000),
(N'R008', N'C002', N'C1', N'S2', N'CL2', 1000000),
(N'R009', N'C001', N'C1', N'S3', N'CL3', 1000000),
(N'R010', NULL, N'C1', N'S1', N'CL1', 1000000),

(N'R011', N'C001', N'C2', N'S2', N'CL2', 1500000),
(N'R012', N'C002', N'C2', N'S3', N'CL3', 1500000),
(N'R013', NULL, N'C2', N'S1', N'CL1', 1500000),
(N'R014', N'C002', N'C2', N'S2', N'CL2', 1500000),
(N'R015', N'C001', N'C2', N'S3', N'CL3', 1500000),
(N'R016', NULL, N'C2', N'S1', N'CL1', 1500000),
(N'R017', N'C001', N'C2', N'S2', N'CL2', 1500000),
(N'R018', N'C002', N'C2', N'S3', N'CL3', 1500000),
(N'R019', NULL, N'C2', N'S1', N'CL1', 1500000),
(N'R020', N'C002', N'C2', N'S2', N'CL2', 1500000),

(N'R021', N'C001', N'C3', N'S3', N'CL3', 1800000),
(N'R022', NULL, N'C3', N'S1', N'CL1', 1800000),
(N'R023', N'C001', N'C3', N'S2', N'CL2', 1800000),
(N'R024', N'C002', N'C3', N'S3', N'CL3', 1800000),
(N'R025', NULL, N'C3', N'S1', N'CL1', 1800000),
(N'R026', N'C002', N'C3', N'S2', N'CL2', 1800000),
(N'R027', N'C001', N'C3', N'S3', N'CL3', 1800000),
(N'R028', NULL, N'C3', N'S1', N'CL1', 1800000),
(N'R029', N'C001', N'C3', N'S2', N'CL2', 1800000),
(N'R030', N'C002', N'C3', N'S3', N'CL3', 1800000);
-- Tạo bảng DatPhong
CREATE TABLE DatPhong (
    MaDatPhong NVARCHAR(10) PRIMARY KEY,
    MaPhong NVARCHAR(10) NOT NULL,
    MaKhachHang NVARCHAR(10) NOT NULL,
    NgayNhanPhong DATE NOT NULL,
    NgayTraPhong DATE NOT NULL,
    TongTien DECIMAL(18, 2) NULL,
    FOREIGN KEY (MaPhong) REFERENCES Phong(MaPhong),
    FOREIGN KEY (MaKhachHang) REFERENCES KhachHang(MaKhachHang)
);

-- Thêm dữ liệu mẫu vào bảng DatPhong
INSERT INTO DatPhong (MaDatPhong, MaPhong, MaKhachHang, NgayNhanPhong, NgayTraPhong, TongTien)
VALUES (N'B001', N'R001', N'C001', '2024-07-01', '2024-07-03', 1800000),
       (N'B002', N'R002', N'C002', '2024-08-10', '2024-08-15', 4000000);

-- Tạo bảng NguoiQuanTri
CREATE TABLE NguoiQuanTri (
    MaNguoiQuanTri NVARCHAR(10) PRIMARY KEY,
    TenNguoiQuanTri NVARCHAR(MAX) NULL,
    VaiTro NVARCHAR(MAX) NULL,
    MatKhau NCHAR(50) NULL
);

-- Tạo bảng ChiTietPhong
CREATE TABLE ChiTietPhong (
    MaChiTietPhong NVARCHAR(10) PRIMARY KEY,
    MaPhong NVARCHAR(10),
    MoTaPhong NVARCHAR(MAX) NULL,
    MaLoai NVARCHAR(10) NULL,
    Gia DECIMAL(18, 2) NULL,
    HinhAnh NVARCHAR(MAX) NULL,
    FOREIGN KEY (MaPhong) REFERENCES Phong(MaPhong),
    FOREIGN KEY (MaLoai) REFERENCES LoaiPhong(MaLoai)
);

-- Tạo bảng DonHang
CREATE TABLE DonHang (
    MaDonHang NVARCHAR(10) PRIMARY KEY,
    NgayDat DATE NULL,
    MaKhachHang NVARCHAR(10) NULL,
    DiaChiGiaoHang NVARCHAR(MAX) NULL,
    FOREIGN KEY (MaKhachHang) REFERENCES KhachHang(MaKhachHang)
);

-- Tạo bảng ChiTietDonHang
CREATE TABLE ChiTietDonHang (
    MaChiTietDonHang NVARCHAR(10) PRIMARY KEY,
    MaChiTietPhong NVARCHAR(10) NULL,
    MaDonHang NVARCHAR(10) NULL,
    SoLuong INT NULL,
    DonGia FLOAT NULL,
    FOREIGN KEY (MaChiTietPhong) REFERENCES ChiTietPhong(MaChiTietPhong),
    FOREIGN KEY (MaDonHang) REFERENCES DonHang(MaDonHang)
);

