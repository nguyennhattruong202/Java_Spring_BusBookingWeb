-- Tạo cơ sở dữ liệu quản lý đặt vé xe khách
drop schema if exists `busdb`;
create schema `busdb` default character set utf8 collate utf8_unicode_ci;

-- Bảng dữ liệu lưu thông tin về tuyến xe
drop table if exists `busdb`.`line_bus`;
create table `busdb`.`line_bus`(
	`id` int not null auto_increment, -- Mã tuyến xe
    `name` varchar(255) null, -- Tên tuyến xe
    `departure` varchar(255) null, -- Nơi khởi hành
    `destination` varchar(255) null, -- Nơi đến
    primary key(`id`)
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu vào bảng line_bus
insert into `busdb`.`line_bus`(`name`, `departure`, `destination`) values('Tuyến số 1', 'Bạc Liêu', 'Tp Hồ Chí Minh');
insert into `busdb`.`line_bus`(`name`, `departure`, `destination`) values('Tuyến số 2', 'Bảo Lộc', 'Huế');
insert into `busdb`.`line_bus`(`name`, `departure`, `destination`) values('Tuyến số 3', 'Bảo Lộc', 'Đà Nẵng');
insert into `busdb`.`line_bus`(`name`, `departure`, `destination`) values('Tuyến số 4', 'Bảo Lộc', 'Quãng Ngãi');
insert into `busdb`.`line_bus`(`name`, `departure`, `destination`) values('Tuyến số 5', 'Bến Tre', 'Tp Hồ Chí Minh');
insert into `busdb`.`line_bus`(`name`, `departure`, `destination`) values('Tuyến số 6', 'Buôn Ma Thuộc', 'Tp Hồ Chí Minh');
insert into `busdb`.`line_bus`(`name`, `departure`, `destination`) values('Tuyến số 7', 'Buôn Ma Thuộc', 'Nha Trang');
insert into `busdb`.`line_bus`(`name`, `departure`, `destination`) values('Tuyến số 8', 'An Sương', 'Quãng Ngãi');
insert into `busdb`.`line_bus`(`name`, `departure`, `destination`) values('Tuyến số 9', 'An Sương', 'Đà Nẵng');
insert into `busdb`.`line_bus`(`name`, `departure`, `destination`) values('Tuyến số 10', 'Cà Mau', 'Tp Hồ Chí Minh');
insert into `busdb`.`line_bus`(`name`, `departure`, `destination`) values('Tuyến số 11', 'Cà Mau', 'Cần Thơ');
insert into `busdb`.`line_bus`(`name`, `departure`, `destination`) values('Tuyến số 12', 'Cà Mau', 'Châu Đốc');
insert into `busdb`.`line_bus`(`name`, `departure`, `destination`) values('Tuyến số 13', 'Cam Ranh', 'Đà Nẵng');
insert into `busdb`.`line_bus`(`name`, `departure`, `destination`) values('Tuyến số 14', 'Cam Ranh', 'Tp Hồ Chí Minh');
insert into `busdb`.`line_bus`(`name`, `departure`, `destination`) values('Tuyến số 15', 'Cần Thơ', 'Cà Mau');

-- Bảng dữ liệu lưu thông tin về loại nhân sự
drop table if exists `busdb`.`type_employee`;
create table `busdb`.`type_employee`(
	`id` int not null auto_increment, -- Mã loại nhân sự
    `name` varchar(255) null, -- Tên loại nhân sự
    `salary_level` decimal(10, 0) null, -- Bậc lương của nhân sự
    primary key(`id`)
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu vào bảng type_employee(Admin - Người quản trị, Driver - Tài xế, Staff - Nhân viên bán vé) 
insert into `busdb`.`type_employee`(`name`, `salary_level`) values('Admin', '15000000');
insert into `busdb`.`type_employee`(`name`, `salary_level`) values('Driver', '12000000');
insert into `busdb`.`type_employee`(`name`, `salary_level`) values('Staff', '8000000');

-- Bảng dữ liệu lưu thông tin của Nhân sự
drop table if exists `busdb`.`employee_user`;
create table `busdb`.`employee_user`(
	`id` int not null auto_increment, -- Mã nhân sự
    `last_name` varchar(255) null, -- Họ và tên lót nhân sự
    `first_name` varchar(255) null, -- Tên nhân sự
    `date_of_birth` date null, -- Ngày tháng năm sinh
    `sex` varchar(255) null, -- Giới tính
    `address` varchar(255) null, -- Địa chỉ
    `identity_num` varchar(255) null, -- Số chứng minh nhân dân
    `phone` varchar(255) null, -- Số điện thoại
    `email` varchar(255) null, -- Email
    `image` varchar(255) null, -- Ảnh avatar tài khoản của nhân sự
    `username` varchar(255) null, -- Tên đăng nhập tài khoản nhân sự (username)
    `password` varchar(255) null, -- Mật khẩu tài khoản nhân sự
    `active` bit(1) null, -- Trạng thái hoạt động của tài khoản (1 là hoạt động, 0 là không hoạt động)
	`type_emp_id` int not null, -- Mã loại nhân sự
    primary key(`id`),
    constraint `fk_empl_user_type_empl` foreign key(`type_emp_id`) references `busdb`.`type_employee`(`id`)
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu vào bảng employee_user
insert into `busdb`.`employee_user`(`last_name`, `first_name`,`date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_emp_id`)
values('Trần Phương', 'Anh', '1999-01-24', 'Nữ', 'Quận 5, Tp Hồ Chí Minh', '107936578401', '0909123564', '107936578401anh@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '107936578401anh@gmail.com', 'P@ssW0rd', 1, '3');
insert into `busdb`.`employee_user`(`last_name`, `first_name`,`date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_emp_id`)
values('Nguyễn Phương', 'Linh', '1999-11-28', 'Nữ', 'Quận 2, Tp Hồ Chí Minh', '107422175693', '0961687266', '107422175693linh@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '107422175693linh@gmail.com', 'P@ssW0rd', 1, '3');
insert into `busdb`.`employee_user`(`last_name`, `first_name`,`date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_emp_id`)
values('Nguyễn Đăng Quốc', 'Anh', '2000-07-07', 'Nam', 'Quận 1, Tp Hồ Chí Minh', '104520019506', '0902902019', '104520019506anh@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '104520019506anh@gmail.com', 'P@ssW0rd', 1, '2');
insert into `busdb`.`employee_user`(`last_name`, `first_name`,`date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_emp_id`)
values('Nguyễn Hữu', 'Minh', '2000-10-01', 'Nam', 'Quận Gò Vấp, Tp Hồ Chí Minh', '106822059551', '0392620393', '106822059551minh@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '106822059551minh@gmail.com', 'P@ssW0rd', 1, '2');
insert into `busdb`.`employee_user`(`last_name`, `first_name`,`date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_emp_id`)
values('Nguyễn Thiện Minh', 'Tâm', '1997-06-14', 'Nam', 'Quận Bình Thạnh, Tp Hồ Chí Minh', '106822980298', '0347311331', '106822980298tam@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '106822980298tam@gmail.com', 'P@ssW0rd', 1, '1');
insert into `busdb`.`employee_user`(`last_name`, `first_name`,`date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_emp_id`)
values('Vương Gia', 'Thanh', '2000-10-18', 'Nữ', 'Quận Hóc Môn, Tp Hồ Chí Minh', '107423466831', '0357070746', '107423466831thanh@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '107423466831thanh@gmail.com', 'P@ssW0rd', 1, '3');
insert into `busdb`.`employee_user`(`last_name`, `first_name`,`date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_emp_id`)
values('Lê Đức Anh', 'Tuấn', '1999-04-19', 'Nam', 'Quận 7, Tp Hồ Chí Minh', '106822126899', '0342461880', '106822126899tuan@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '106822126899tuan@gmail.com', 'P@ssW0rd', 1, '2');
insert into `busdb`.`employee_user`(`last_name`, `first_name`,`date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_emp_id`)
values('Phạm Văn', 'Nam', '1999-04-19', 'Nam', 'Quận 8, Tp Hồ Chí Minh', '107022201304', '0339559721', '107022201304nam@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '107022201304nam@gmail.com', 'P@ssW0rd', 1, '2');
insert into `busdb`.`employee_user`(`last_name`, `first_name`,`date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_emp_id`)
values('Lê Trần Phương', 'Nhi', '2001-01-11', 'Nữ', 'Quận 9, Tp Hồ Chí Minh', '107423804325', '0339559723', '107423804325nhi@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '107423804325nhi@gmail.com', 'P@ssW0rd', 1, '1');
insert into `busdb`.`employee_user`(`last_name`, `first_name`,`date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_emp_id`)
values('Trần Lê Quang', 'Chiến', '2001-04-25', 'Nam', 'Nhà Bè, Tp Hồ Chí Minh', '106822261393', '0372405209', '106822261393chien@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '106822261393chien@gmail.com', 'P@ssW0rd', 1, '1');

-- Bảng dữ liệu lưu thông tin của xe khách
drop table if exists `busdb`.`bus`;
create table `busdb`.`bus`(
	`id` int not null auto_increment, -- Mã xe
    `name` varchar(255) null, -- Tên xe
    `license_plates` varchar(255) null, -- Biển số xe
    `capacity` int null, -- Số chỗ ngồi (sức chứa)
    `manufacturer` varchar(255) null, -- Hãng sản xuất xe
    `type` varchar(255) null, -- Loại xe khách (Xe ghế ngồi, xe giường nằm)
    primary key(`id`)
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu vào bảng bus
insert into `busdb`.`bus`(`name`, `license_plates`, `capacity`, `manufacturer`, `type`) values('Hyundai Aero Space', '52B-544.22', '45', 'Hyundai', 'Xe ngồi');
insert into `busdb`.`bus`(`name`, `license_plates`, `capacity`, `manufacturer`, `type`) values('Universe Haeco', '52B-544.23', '45', 'Haeco', 'Xe ngồi');
insert into `busdb`.`bus`(`name`, `license_plates`, `capacity`, `manufacturer`, `type`) values('Samco Universe', '52B-544.44', '45', 'Samco', 'Xe ngồi');
insert into `busdb`.`bus`(`name`, `license_plates`, `capacity`, `manufacturer`, `type`) values('Thaco Universe', '52B-544.45', '45', 'Thaco', 'Xe ngồi');
insert into `busdb`.`bus`(`name`, `license_plates`, `capacity`, `manufacturer`, `type`) values('Huyndai Aero Class', '52B-544.05', '45', 'Huyndai', 'Xe ngồi');
insert into `busdb`.`bus`(`name`, `license_plates`, `capacity`, `manufacturer`, `type`) values('Thaco Mobihome Standard', '52B-547.15', '34', 'Thaco', 'Xe giường');
insert into `busdb`.`bus`(`name`, `license_plates`, `capacity`, `manufacturer`, `type`) values('Thaco Mobihome Deluxe', '52B-547.15', '34', 'Thaco', 'Xe giường');
insert into `busdb`.`bus`(`name`, `license_plates`, `capacity`, `manufacturer`, `type`) values('Samco Primas Limousine', '52B-540.15', '34', 'Samco', 'Xe giường');

-- Bảng dữ liệu lưu những thông tin của khách hàng
drop table if exists `busdb`.`customer`;
create table `busdb`.`customer`(
	`id` int not null auto_increment, -- Mã khách hàng
    `last_name` varchar(255) null, -- Họ khách hàng
    `first_name` varchar(255) null, -- Tên khách hàng
    `date_of_birth` date null, -- Ngày tháng năm sinh
    `sex` varchar(255) null, -- Giới tính
    `address` varchar(255) null, -- Địa chỉ
    `identity_num` varchar(255) null, -- Số chứng minh nhân dân
    `phone` varchar(255) null, -- Số điện thoại
    `email` varchar(255) null, -- Email
    `image` varchar(255) null, -- Ảnh avatar tài khoản của khách hàng
    `username` varchar(255) null, -- Tên đăng nhập (username)
    `password` varchar(255) null, -- Mật khẩu
    primary key(`id`)
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu vào bảng customer
INSERT INTO `busdb`.`customer` (`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`) VALUES ('Nguyễn Hồng', 'Ngọc', '2003-11-12', 'Nữ', 'Quận 2, Tp Hồ Chí Minh', '107423879536', '08908794432', '107423879536ngoc@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '107423879536ngoc@gmail.com', 'P@ssW0rd');
INSERT INTO `busdb`.`customer` (`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`) VALUES ('Nguyễn Tân', 'Phúc', '2003-07-07', 'Nam', 'Quận 12, Tp Hồ Chí Minh', '107424612545', '0935440166', '107424612545phuc@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '107424612545phuc@gmail.com', 'P@ssW0rd');
INSERT INTO `busdb`.`customer` (`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`) VALUES ('Nguyễn Hoàng', 'Khang', '2002-06-26', 'Nam', 'Quận 4, Tp Hồ Chí Minh', '109621341892', '0707860066', '109621341892khang@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '109621341892khang@gmail.com', 'P@ssW0rd');
INSERT INTO `busdb`.`customer` (`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`) VALUES ('Lê Thiên', 'Ân', '2003-07-28', 'Nam', 'Quận 10, Tp Hồ Chí Minh', '107928561138', '0907863077', '107928561138an@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '107928561138an@gmail.com', 'P@ssW0rd');
INSERT INTO `busdb`.`customer` (`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`) VALUES ('Phan Ngọc Phương', 'Toàn', '2003-04-04', 'Nam', 'Gò Dầu, Tây Ninh', '107939208383', '0387552103', '107939208383toan@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '107939208383toan@gmail.com', 'P@ssW0rd');
INSERT INTO `busdb`.`customer` (`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`) VALUES ('Vũ Thành', 'Đạt', '2003-06-24', 'Nam', 'Tp Cam Ranh, Khánh Hòa', '107939226359', '0352943547', '107939226359dat@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '107939226359dat@gmail.com', 'P@ssW0rd');
INSERT INTO `busdb`.`customer` (`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`) VALUES ('Nguyễn Ngọc Bảo', 'Quyên', '2003-10-29', 'Nữ', 'Quận Liên Chiểu, Tp Đà Nẵng', '108022482814', '0834176515', '108022482814quyen@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '108022482814quyen@gmail.com', 'P@ssW0rd');
INSERT INTO `busdb`.`customer` (`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`) VALUES ('Bùi Xuân', 'Tiến', '2003-07-06', 'Nam', 'Diên Khánh, Khánh Hòa', '107931412447', '0968193444', '107931412447tien@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '108022482814quyen@gmail.com', 'P@ssW0rd');
INSERT INTO `busdb`.`customer` (`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`) VALUES ('Huỳnh Khả', 'Tú', '2003-02-13', 'Nữ', 'Nha Trang, Khánh Hòa', '107933431900', '0336400978', '107933431900tu@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '107933431900tu@gmail.com', 'P@ssW0rd');
INSERT INTO `busdb`.`customer` (`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`) VALUES ('Lê Tấn', 'Phát', '2002-06-08', 'Nam', 'Châu Thành, Hậu Giang', '107933418774', '0909752629', '107933418774phat@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '107933418774phat@gmail.com', 'P@ssW0rd');

-- Bảng dữ liệu lưu thông tin chuyến xe khách
drop table if exists `busdb`.`bus_trip`;
create table `busdb`.`bus_trip`(
	`id` int not null auto_increment, -- Mã chuyến xe
    `name` varchar(255) null, -- Tên chuyến xe
    `date_time` datetime null, -- Ngày giờ đi
    `price` decimal(10, 0) null, -- Giá tiền
    `bus_id` int not null, -- Mã xe khách chạy
    `line_bus_id` int not null, -- Mã tuyến xe chạy
    `employee_id` int not null, -- Mã tài xế lái xe
    primary key(`id`),
    constraint `fk_bus_trip_bus` foreign key(`bus_id`) references `busdb`.`bus`(`id`),
    constraint `fk_bus_trip_line_bus` foreign key(`line_bus_id`) references `busdb`.`line_bus`(`id`),
    constraint `fk_bus_trip_employee` foreign key(`employee_id`) references `busdb`.`employee_user`(`id`)
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu vào bảng buses
INSERT INTO `busdb`.`bus_trip` (`name`, `date_time`, `price`, `bus_id`, `line_bus_id`, `employee_id`) VALUES ('Chuyến số 1', '2022-07-29 00:00:00', '200000', '1', '1', '3');
INSERT INTO `busdb`.`bus_trip` (`name`, `date_time`, `price`, `bus_id`, `line_bus_id`, `employee_id`) VALUES ('Chuyến số 2', '2022-07-30 00:00:00', '300000', '2', '2', '4');
INSERT INTO `busdb`.`bus_trip` (`name`, `date_time`, `price`, `bus_id`, `line_bus_id`, `employee_id`) VALUES ('Chuyến số 3', '2022-07-31 00:00:00', '250000', '3', '3', '7');
INSERT INTO `busdb`.`bus_trip` (`name`, `date_time`, `price`, `bus_id`, `line_bus_id`, `employee_id`) VALUES ('Chuyến số 4', '2022-08-01 00:00:00', '300000', '4', '4', '8');
INSERT INTO `busdb`.`bus_trip` (`name`, `date_time`, `price`, `bus_id`, `line_bus_id`, `employee_id`) VALUES ('Chuyến số 5', '2022-08-02 00:00:00', '350000', '5', '5', '3');

-- Bảng dữ liệu lưu thông tin về đặt và bán vé
drop table if exists `busdb`.`sale_order`;
create table `busdb`.`sale_order`(
	`id` int not null auto_increment, -- Mã đặt, bán vé
    `created_date` datetime null, -- Ngày giờ đặt, bán
    `num` int null, -- Số lượng
    `customer_id` int not null, -- Mã khách hàng
    `bus_trip_id` int not null, -- Mã chuyến muốn đặt, mua
    primary key(`id`),
    constraint `fk_sale_order_customer` foreign key(`customer_id`) references `busdb`.`customer`(`id`),
    constraint `fk_sale_order_bus_trip` foreign key(`bus_trip_id`) references `busdb`.`bus_trip`(`id`)
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu vào bảng sale_order
INSERT INTO `busdb`.`sale_order` (`created_date`, `num`, `customer_id`, `bus_trip_id`) VALUES ('2022-07-28 00:00:00', '2', '1', '1');
INSERT INTO `busdb`.`sale_order` (`created_date`, `num`, `customer_id`, `bus_trip_id`) VALUES ('2022-07-27 00:00:00', '1', '2', '1');
INSERT INTO `busdb`.`sale_order` (`created_date`, `num`, `customer_id`, `bus_trip_id`) VALUES ('2022-07-26 00:00:00', '1', '3', '1');
INSERT INTO `busdb`.`sale_order` (`created_date`, `num`, `customer_id`, `bus_trip_id`) VALUES ('2022-07-25 00:00:00', '1', '4', '1');
INSERT INTO `busdb`.`sale_order` (`created_date`, `num`, `customer_id`, `bus_trip_id`) VALUES ('2022-07-24 00:00:00', '2', '5', '2');

-- Update 2022-07-29
alter table `busdb`.`sale_order`
add column `feedback_rate` int null after `bus_trip_id`, -- Thêm cột lưu điểm phản hồi
add column `feedback_comment` varchar(255) null after `feedback_rate`, -- Thêm cột nhận phản hồi
add column `feedback_date` datetime null after `feedback_comment`; -- Thêm cột lưu ngày tạo phản hồi