create database QuanLyDuAn on primary
(
name = 'QuanLyDeAn2',
filename ='T:\DucToan\QuanLyDeAn2_Data.mdf',
size = 20MB,
maxsize = 500MB,
filegrowth = 10%
)
log on
(
name = 'QuanLyDuAn_log',
filename ='T:\DucToan\QuanLyDeAn2_Log.ldf',
size = 2MB,
maxsize = 48MB,
filegrowth = 10%
)


create table PhanCong
(
	MaNV varchar(9),
	MaDA varchar(2),
	ThoiGian numeric(18,0) not null,
	primary key (MaNV,MaDA)
)

create table DEAN
(
	MaDA varchar(2) primary key,
	TenDA nvarchar(50) not null,
	DDiemDA varchar(20) not null
)

create table NHANVIEN
(
	MaNV varchar(9) primary key,
	HoNV nvarchar(15) not null,
	TenLot nvarchar(30) not null,
	TenNV nvarchar(30) not null,
	NgSinh smalldatetime not null,
	DiaChi nvarchar(150) not null,
	Phai nvarchar(3) not null,
	Luong numeric(18,0) not null,
	Phong varchar(2) not null
)

create table PHONGBAN
(
	MaPhg varchar(2) primary key,
	TenPhg nvarchar(20) not null
)

create table THANNHAN
(
	MaNV varchar(9),
	TenTN varchar(20),
	NgaySinh smalldatetime not null,
	Phai varchar(3) not null,
	QuanHe varchar(15) not null
	primary key (MaNV,TenTn)
)



4
-
alter table PHONGBAN
alter column TenPhg nvarchar(30)
-
alter table DEAN
alter column DDiemDA nvarchar(20)
-
alter table THANNHAN
alter column TenTN nvarchar(20)
alter table THANNHAN
alter column Phai nvarchar(3)
alter table THANNHAN
alter column QuanHe nvarchar(15)
-
alter table NHANVIEN
add SoDIenThoaiDien varchar(15)
-
alter table NHANVIEN
drop column SoDIenThoaiDien
5
insert into NHANVIEN (MaNV,HoNV,TenLot,TenNV,NgSinh,DiaChi,Phai,Luong,Phong)
VALUES ('123','Đinh','Bá','Tiến','27/2/1982','Mộ Đức','Nam','','4'),
('234','Nguyễn','Thanh','Tùng','12/8/1956','Sơn Tịnh','Nam','','5'),
('345','Bùi','Thúy','Vũ','','Tư Nghĩa','Nữ','','4'),
('456','Lê','Thị','Nhàn','12/7/1962','Mộ Đức','Nữ','','4'),
('567','Nguyễn','Mạnh','Hùng','25/3/1985','Sơn Tịnh','Nam','','5'),
('678','Trần','Hồng','Quang','','Bình Sơn','Nam','','5'),
('789','Trần','Thanh','Tâm','17/6/1972','Tp Quảng Ngãi','Nam','','5'),
('890','Cao','Thanh','Huyền','','Tư Nghĩa','Nữ','','1'),
('901','Vương','Ngọc','Quyền','12/12/1987','Mộ Đức','Nam','','1');
-
insert into PHONGBAN (MaPhg,TenPhg)
values ('1','Quản Lý'),
('4','Điều Hành'),
('5','Nghiên Cứu');
-
insert into DEAN (MaDA,TenDA,DDiemDA)
values ('1','Nâng cao chất lượng muối','Sa Huỳnh'),
('10','Xây dựng nhà máy chế biến thủy sản','Dung Quất'),
('2','Phát triển hạ tầng mạng','Tp Quảng Ngãi'),
('20','Truyền tải cáp quang','Tp Quảng Ngãi'),
('3','Tin học hóa trường học','Ba Tơ'),
('30','Đào tạo nhân lực','Tịnh Phong');
-
insert into PhanCong (MaNV,MaDA,ThoiGian)
values ('123','1','33'),
('123','2','8'),
('345','10','10'),
('345','20','10'),
('345','3','10'),
('456','1','20'),
('456','2','20'),
('678','3','40'),
('789','10','35'),
('789','20','30'),
('789','30','5');
-
insert into THANNHAN (MaNV,TenTN,NgaySinh,Phai,QuanHe)
values ('123','Châu','30/10/2005','Nữ','Con gái'),
('123','Duy','25/10/2001','Nữ','Con trai'),
('123','Phương','30/10/1985','Nữ','Vợ chồng'),
('234','Thanh','05/04/1980','Nữ','Con gái');

