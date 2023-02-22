use QLKHO
create table Ton
(
	MaVT varchar(9),
	TenVT nvarchar(20) not null,
	SoLuongT int not null,
	primary key (MaVT)
)
create table Nhap
(
	SoHDN varchar(9) primary key,
	MaVT varchar(9) FOREIGN KEY REFERENCES TON(MaVT) ,
	SoLuongN int not null,
	DonGiaN float not null ,
	NgayN date,
	
)
create table Xuat
(
	SoHDX varchar(9) primary key,
	MaVT varchar(9) FOREIGN KEY REFERENCES TON(MaVT),
	SoLuongX int not null,
	DonGiaX float not null,
	NgayX date,
)
insert into Ton
(MaVT,TenVT,SoLuongT)
values
('1','gỗ liêm',20),
('2','Gỗ lậu',30),
('3','gỗ Trộm',20),
('4','gỗ Nhập',10);

insert into Nhap
(SoHDN,MaVT,SoLuongN,DonGiaN,NgayN)
values
('a','1','20','30000','2002-03-23'),
('b','2','50','50000','2022-08-03'),
('c','3','30','40000','2010-08-23');

insert into Xuat
(SoHDX,MaVT,SoLuongX,DonGiaX,NgayX)
values
('a','1','20','30000','2002-03-23'),
('b','2','50','50000','2022-08-03');


-- câu 2
CREATE VIEW QLKHO_View
AS
select Ton.MaVT,TenVT,sum(SoLuongX*DonGiaX) as "tien ban"
from XUAT inner join Ton on XUAT.MaVT=Ton.MaVT
group by Ton.MaVT,TenVT
go
SELECT * FROM QLKHO_view

--caau 3
CREATE VIEW QLKHO_view_cau3
AS
select Ton.TenVT, sum(SoLuongX) as "tổng số lượng"
from Xuat inner join Ton on Xuat.MaVT=Ton.MaVT
group by Ton.tenvt
go
SELECT * FROM QLKHO_view_cau3

--cau4
create view view_tongnhap
as
select Ton.TenVT, sum(SoLuongN) as "tổng số lượng nhập"
from Nhap inner join Ton on Nhap.MaVT=Ton.MaVT
group by Ton.tenvt
go
select *from view_tongnhap
--cau 5
CREATE VIEW QLYKHO_VIEW_CAU5
AS

select ton.mavt,ton.tenvt,sum(soluongN)-sum(soluongX) +
sum(soluongT) as tongton
from nhap inner join ton on nhap.mavt=ton.mavt
inner join xuat on ton.mavt=xuat.mavt
group by ton.mavt,ton.tenvt
go
SELECT * FROM QLYKHO_VIEW_CAU5

--câu 6
CREATE VIEW QLYKHO_VIEW_CAU6
AS
select tenvt
from ton
where soluongT = (select max(soluongT) from Ton)
go
SELECT*FROM QLYKHO_VIEW_CAU6
--cau7 
select ton.mavt,ton.tenvt
from ton inner join xuat on ton.mavt=xuat.mavt
group by ton.mavt,ton.tenvt
having sum(soluongX)>=100 ---sum count max min cho nhom

--cau 8

create view QLYKHO_VIEW_CAU8
AS
select Ton.MaVT,sum(NgayX) as "tong so luong suat"
from Xuat inner join ton on xuat.NgayX=ton.mavt
group by ton.mavt
go


