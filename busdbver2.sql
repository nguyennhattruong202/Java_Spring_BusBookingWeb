-- Tạo cơ sở dữ liệu quản lý đặt vé xe khách
drop schema if exists `busdbver2`;
create schema `busdbver2` default character set utf8 collate utf8_unicode_ci;

-- Tạo bảng lưu trữ thông tin của xe khách
drop table if exists `busdbver2`.`bus`;
create table `busdbver2`.`bus`(
	`id` int not null auto_increment, -- Mã xe khách
    `name` varchar(255) null, -- Tên xe khách
    `license_plates` varchar(255) null, -- Biến số xe khách
    `capacity` int null, -- Sức chứa xe khách
    `manufacturer` varchar(255) null, -- Hãng sản xuất xe khách
    `type` varchar(255) null, -- Loại xe khách
    `active` bit(1) null default 1, -- Trạng thái hoạt động khai thác của xe khách (1 là đang khai thác, 0 là dừng khai thác)
    primary key(`id`)
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu vào bảng `busdbver2`.`bus`
insert into `busdbver2`.`bus`(`name`, `license_plates`, `capacity`, `manufacturer`, `type`, `active`) values('Hyundai Aero Space', '52B54422', '45', 'Hyundai', 'Xe ngồi', 1);
insert into `busdbver2`.`bus`(`name`, `license_plates`, `capacity`, `manufacturer`, `type`, `active`) values('Universe Haeco', '52B54423', '45', 'Haeco', 'Xe ngồi', 1);
insert into `busdbver2`.`bus`(`name`, `license_plates`, `capacity`, `manufacturer`, `type`, `active`) values('Samco Universe', '52B54444', '45', 'Samco', 'Xe ngồi', 1);
insert into `busdbver2`.`bus`(`name`, `license_plates`, `capacity`, `manufacturer`, `type`, `active`) values('Thaco Universe', '52B54445', '45', 'Thaco', 'Xe ngồi', 1);
insert into `busdbver2`.`bus`(`name`, `license_plates`, `capacity`, `manufacturer`, `type`, `active`) values('Huyndai Aero Class', '52B54405', '45', 'Huyndai', 'Xe ngồi', 1);
insert into `busdbver2`.`bus`(`name`, `license_plates`, `capacity`, `manufacturer`, `type`, `active`) values('Thaco Mobihome Standard', '52B54715', '34', 'Thaco', 'Xe giường', 1);
insert into `busdbver2`.`bus`(`name`, `license_plates`, `capacity`, `manufacturer`, `type`, `active`) values('Thaco Mobihome Deluxe', '52B54715', '34', 'Thaco', 'Xe giường', 1);
insert into `busdbver2`.`bus`(`name`, `license_plates`, `capacity`, `manufacturer`, `type`, `active`) values('Samco Primas Limousine', '52B54015', '34', 'Samco', 'Xe giường', 1);

-- Tạo bảng lưu trữ thông tin các trạm xe
drop table if exists `busdbver2`.`station`;
create table `busdbver2`.`station`(
	`id` int not null auto_increment, -- Mã trạm xe khách 
    `name` varchar(255) null, -- Tên trạm xe khách
    `phone` varchar(255) null, -- Số điện thoại trạm xe khách
    `location` varchar(255) null, -- Địa chỉ trạm xe
    `ward` varchar(255) null, -- Xã/ phường
    `district` varchar(255) null, -- Quận/huyện
    `province` varchar(255) null, -- Tỉnh/thành
    `active` bit(1) null, -- Trạng thái khai thác trạm (1 đang khai thác, 0 dừng khai thác)
    primary key(`id`)
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu cho bảng `busdbver2`.`station`
insert into `busdbver2`.`station` (`name`, `phone`, `location`, `ward`, `district`, `province`, `active`) values ('Trạm Chợ Rẫy', '19007676', '20 Phạm Hữu Chí', 'Phường 11', 'Quận 5', 'Thành phố Hồ Chí Minh', 1);
insert into `busdbver2`.`station` (`name`, `phone`, `location`, `ward`, `district`, `province`, `active`) values ('Trạm Lai Vung', '19007689', '137A QL80', 'Hòa Long', 'Lai Vung', 'Đồng Tháp', 1);
insert into `busdbver2`.`station` (`name`, `phone`, `location`, `ward`, `district`, `province`, `active`) values ('Trạm Đặng Thái Thân', '19007684', '09 Đặng Thái Thân', 'Phường 11', 'Quận 5', 'Thành phố Hồ Chí Minh', 1);
insert into `busdbver2`.`station` (`name`, `phone`, `location`, `ward`, `district`, `province`, `active`) values ('Trạm Nơ Trang Long', '19006784', '68 Nơ Trang Long', 'Phường 14', 'Quận Bình Thạnh', 'Thành phố Hồ Chí Minh', 1);
insert into `busdbver2`.`station` (`name`, `phone`, `location`, `ward`, `district`, `province`, `active`) values ('Trạm Bến xe miền Tây', '19006284', '395-397 Kinh Dương Vương', 'Phường An Lạc', 'Quận Bình Tân', 'Thành phố Hồ Chí Minh', 1);
insert into `busdbver2`.`station` (`name`, `phone`, `location`, `ward`, `district`, `province`, `active`) values ('Trạm Cao Văn Lầu', '19006584', '94 Cao Văn Lầu', 'Phường 10', 'Quận 6', 'Thành phố Hồ Chí Minh', 1);
insert into `busdbver2`.`station` (`name`, `phone`, `location`, `ward`, `district`, `province`, `active`) values ('Trạm Lê Hồng Phong', '19006514', '231-233 Lê Hồng Phong', 'Phường 4', 'Quận 5', 'Thành phố Hồ Chí Minh', 1);
insert into `busdbver2`.`station` (`name`, `phone`, `location`, `ward`, `district`, `province`, `active`) values ('Trạm Vị Thanh', '19004514', 'Trần Hưng Đạo', 'Phường 5', 'Vị Thanh', 'Hậu Giang', 1);
insert into `busdbver2`.`station` (`name`, `phone`, `location`, `ward`, `district`, `province`, `active`) values ('Trạm Vĩnh Long', '19004014', '1E Đinh Tiên Hoàng', 'Phường 8', 'Thành phố Vĩnh Long', 'Vĩnh Long', 1);
insert into `busdbver2`.`station` (`name`, `phone`, `location`, `ward`, `district`, `province`, `active`) values ('Trạm Bến xe Vũng Tàu', '19001014', '192 Nam Kỳ Khởi Nghĩa', 'Phường 3', 'Thành phố Vũng Tàu', 'Bà Rịa - Vũng Tàu', 1);
insert into `busdbver2`.`station` (`name`, `phone`, `location`, `ward`, `district`, `province`, `active`) values ('Trạm Phan Thiết', '19001114', '121 Tôn Đức Thắng', 'Phường 3', 'Phan Thiết', 'Bình Thuận', 1);

-- Tạo bảng lưu trữ thông tin loại nhân sự
drop table if exists `busdbver2`.`type_employee`;
create table `busdbver2`.`type_employee`(
	`id` int not null auto_increment, -- Mã loại nhân sự
    `name` varchar(255) null, -- Tên loại nhân sự
    `salary_level` decimal(10, 0) null, -- Bậc lương
    primary key(`id`)
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu vào bảng `busdbver2`.`type_employee`(Admin - Người quản trị, Driver - Tài xế, Staff - Nhân viên thường) 
insert into `busdbver2`.`type_employee`(`name`, `salary_level`) values('Admin', '15000000');
insert into `busdbver2`.`type_employee`(`name`, `salary_level`) values('Driver', '12000000');
insert into `busdbver2`.`type_employee`(`name`, `salary_level`) values('Staff', '8000000');

-- Tạo bảng lưu trữ thông tin tuyến xe khách
drop table if exists `busdbver2`.`line_bus`;
create table `busdbver2`.`line_bus`(
	`id` int not null auto_increment, -- Mã tuyến xe
    `departure` varchar(255) null, -- Nơi khởi hành
    `destination` varchar(255) null, -- Nơi đến
    `distance` double null, -- Độ dài tuyến
    `price` decimal(10, 0) null, -- Giá tiền
    `active` bit(1) null, -- Trạng thái khai thác tuyến (1 đang khai thác, 0 dừng khai thác)
    primary key(`id`)
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu vào bảng `busdbver2`.`linebus`
insert into `busdbver2`.`line_bus`(`departure`, `destination`, `distance`, `price`, `active`) values('Bạc Liêu', 'Tp Hồ Chí Minh', '260', '400000', 1);
insert into `busdbver2`.`line_bus`(`departure`, `destination`, `distance`, `price`, `active`) values('Bảo Lộc', 'Huế', '210', '350000', 1);
insert into `busdbver2`.`line_bus`(`departure`, `destination`, `distance`, `price`, `active`) values('Bảo Lộc', 'Đà Nẵng', '300', '500000', 1);
insert into `busdbver2`.`line_bus`(`departure`, `destination`, `distance`, `price`, `active`) values('Bảo Lộc', 'Quãng Ngãi', '280', '450000', 1);
insert into `busdbver2`.`line_bus`(`departure`, `destination`, `distance`, `price`, `active`) values('Bến Tre', 'Tp Hồ Chí Minh', '150', '200000', 1);
insert into `busdbver2`.`line_bus`(`departure`, `destination`, `distance`, `price`, `active`) values('Buôn Ma Thuộc', 'Tp Hồ Chí Minh', '280', '400000', 1);
insert into `busdbver2`.`line_bus`(`departure`, `destination`, `distance`, `price`, `active`) values('Buôn Ma Thuộc', 'Nha Trang', '240', '300000', 1);
insert into `busdbver2`.`line_bus`(`departure`, `destination`, `distance`, `price`, `active`) values('An Sương', 'Quãng Ngãi', '360', '500000', 1);
insert into `busdbver2`.`line_bus`(`departure`, `destination`, `distance`, `price`, `active`) values('An Sương', 'Đà Nẵng', '560', '640000', 1);
insert into `busdbver2`.`line_bus`(`departure`, `destination`, `distance`, `price`, `active`) values('Cà Mau', 'Tp Hồ Chí Minh', '260', '400000', 1);
insert into `busdbver2`.`line_bus`(`departure`, `destination`, `distance`, `price`, `active`) values('Cà Mau', 'Cần Thơ', '200', '200000', 1);
insert into `busdbver2`.`line_bus`(`departure`, `destination`, `distance`, `price`, `active`) values('Cà Mau', 'Châu Đốc', '250', '350000', 1);
insert into `busdbver2`.`line_bus`(`departure`, `destination`, `distance`, `price`, `active`) values('Cam Ranh', 'Đà Nẵng', '350', '500000', 1);
insert into `busdbver2`.`line_bus`(`departure`, `destination`, `distance`, `price`, `active`) values('Cam Ranh', 'Tp Hồ Chí Minh', '360', '490000', 1);
insert into `busdbver2`.`line_bus`(`departure`, `destination`, `distance`, `price`, `active`) values('Cần Thơ', 'Cà Mau', '150', '300000', 1);

-- Tạo bảng lưu trữ thông tin hình thức thanh toán
drop table if exists `busdbver2`.`payment`;
create table `busdbver2`.`payment`(
	`id` int not null auto_increment, -- Mã hình thức thanh toán
    `name` varchar(255) null, -- Tên hình thức thanh toán
    `content` varchar(255) null, -- Nội dung hình thức thanh toán
    `active` bit(1) null, -- Trạng thái khai thác(1 đang khai thác, 0 dừng khai thác hình thức thanh toán)
    primary key(`id`)
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu cho bảng `busdbver2`.`payment`
insert into `busdbver2`.`payment`(`name`, `content`, `active`) values ('ZaloPay', 'Thanh toán bằng ví ZaloPay', 1);
insert into `busdbver2`.`payment`(`name`, `content`, `active`) values ('Momo', 'Thanh toán bằng ví Momo', 1);
insert into `busdbver2`.`payment`(`name`, `content`, `active`) values ('Internet banking', 'Thanh toán bằng thẻ ngân hàng', 1);
insert into `busdbver2`.`payment`(`name`, `content`, `active`) values ('Thanh toán trực tiếp', 'Thanh toán trực tiếp', 1);

-- Tạo bảng dữ liệu lưu thông tin khách hàng
drop table if exists `busdbver2`.`customer`;
create table `busdbver2`.`customer`(
	`id` int not null auto_increment, -- Mã khách hàng
    `last_name` varchar(255) null, -- Họ và tên lót
    `first_name` varchar(255) null, -- Tên khách hàng
    `sex` varchar(255) null, -- Giới tính
    `date_of_birth` date null, -- Ngày sinh
    `identity_num` varchar(255) null, -- Số CMND/CCCD
    `address` varchar(255) null, -- Địa chỉ
    `phone` varchar(255) null, -- Số điện thoại
    `email` varchar(255) null, -- Email
    `image` varchar(255) null, -- Hình ảnh
    `username` varchar(255) null, -- Tài khoản
    `password` varchar(255) null, -- Mật khẩu
    `active` bit(1) null default 0, -- Trạng thái sử dụng tài khoản (1 có và đang dùng tì khoản, 0 không có hoặc không dùng tài khoản)
    primary key(`id`)
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu cho bảng `busdbver2`.`customer`
insert into `busdbver2`.`customer`(`last_name`, `first_name`, `sex`, `phone`, `email`, `image`, `username`, `password`, `date_of_birth`, `address`, `identity_num`, `active`) values ('Nguyễn Hồng', 'Ngọc', 'Nữ', '08908794432', 'ngoc1211@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', 'ngoc1211@gmail.com', 'P@ssW0rd', '2003-11-12', 'Quận 2, Tp Hồ Chí Minh', '107423879536', 1);
insert into `busdbver2`.`customer`(`last_name`, `first_name`, `sex`, `phone`, `email`, `image`, `username`, `password`, `date_of_birth`, `address`, `identity_num`, `active`) values ('Nguyễn Tân', 'Phúc', 'Nam', '0935440166', 'phuc0707@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', 'khang2606@gmail.com', 'P@ssW0rd', '2002-06-26', 'Quận 4, Tp Hồ Chí Minh', '109621341892', 1);
insert into `busdbver2`.`customer`(`last_name`, `first_name`, `sex`, `phone`, `email`, `image`, `username`, `password`, `date_of_birth`, `address`, `identity_num`, `active`) values ('Nguyễn Hoàng', 'Khang', 'Nam', '0707860066', 'khang2606@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', 'khang2606@gmail.com', 'P@ssW0rd', '2002-06-26', 'Quận 4, Tp Hồ Chí Minh', '109621341892', 1);
insert into `busdbver2`.`customer`(`last_name`, `first_name`, `sex`, `phone`, `email`, `image`, `username`, `password`, `date_of_birth`, `address`, `identity_num`, `active`) values ('Lê Thiên', 'Ân', 'Nam', '0907863077', 'an2807@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', 'an2807@gmail.com', 'P@ssW0rd', '2003-07-28', 'Quận 10, Tp Hồ Chí Minh', '107928561138', 1);
insert into `busdbver2`.`customer`(`last_name`, `first_name`, `sex`, `phone`, `email`, `image`, `username`, `password`, `date_of_birth`, `address`, `identity_num`, `active`) values ('Phan Ngọc Phương', 'Toàn', 'Nam', '0387552103', 'toan0404@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', 'toan0404@gmail.com', 'P@ssW0rd', '2003-04-04', 'Gò Dầu, Tây Ninh', '107939208383', 1);
insert into `busdbver2`.`customer`(`last_name`, `first_name`, `sex`, `phone`, `email`, `image`, `username`, `password`, `date_of_birth`, `address`, `identity_num`, `active`) values ('Vũ Thành', 'Đạt', 'Nam', '0352943547', 'dat2406@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', 'dat2406@gmail.com', 'P@ssW0rd', '2003-06-24', 'Tp Cam Ranh, Khánh Hòa', '107939226359', 1);
insert into `busdbver2`.`customer`(`last_name`, `first_name`, `sex`, `phone`, `email`, `image`, `username`, `password`, `date_of_birth`, `address`, `identity_num`, `active`) values ('Nguyễn Ngọc Bảo', 'Quyên', 'Nữ', '0834176515', 'quyen2910@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', 'quyen2910@gmail.com', 'P@ssW0rd', '2003-10-29', 'Quận Liên Chiểu, Tp Đà Nẵng', '108022482814', 1);
insert into `busdbver2`.`customer`(`last_name`, `first_name`, `sex`, `phone`, `email`, `image`, `username`, `password`, `date_of_birth`, `address`, `identity_num`, `active`) values ('Bùi Xuân', 'Tiến', 'Nam', '0968193444', 'tien0607@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', 'tien0607@gmail.com', 'P@ssW0rd', '2003-07-06', 'Diên Khánh, Khánh Hòa', '107931412447', 1);
insert into `busdbver2`.`customer`(`last_name`, `first_name`, `sex`, `phone`, `email`, `image`, `username`, `password`, `date_of_birth`, `address`, `identity_num`, `active`) values ('Huỳnh Khả', 'Tú', 'Nữ', '0336400978', 'tu1302@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', 'tu1302@gmail.com', 'P@ssW0rd', '2003-02-13', 'Nha Trang, Khánh Hòa', '107933431900', 1);
insert into `busdbver2`.`customer`(`last_name`, `first_name`, `sex`, `phone`, `email`, `image`, `username`, `password`, `date_of_birth`, `address`, `identity_num`, `active`) values ('Lê Tấn', 'Phát', 'Nam', '0909752629', 'phat0806@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', 'phat0806@gmail.com', 'P@ssW0rd', '2002-06-08', 'Châu Thành, Hậu Giang', '107933418774', 1);

-- Tạo bảng dữ liệu lưu thông tin của nhân sự
drop table if exists `busdbver2`.`employee`;
create table `busdbver2`.`employee`(
	`id` int not null auto_increment, -- Mã nhân sự
    `last_name` varchar(255) null, -- Họ và tên lót
    `first_name` varchar(255) null, -- Tên nhân sự
    `date_of_birth` date null, -- Ngày sinh
    `sex` varchar(255) null, -- Giới tính
    `address` varchar(255) null, -- Địa chỉ
    `identity_num` varchar(255) null, -- Số CMND/CCCD
    `phone` varchar(255) null, -- Số điện thoại
    `email` varchar(255) null, -- Email
    `image` varchar(255) null, -- Hình ảnh avatar
    `username` varchar(255) null, -- Username
    `password` varchar(255) null, -- Mật khẩu
    `active` bit(1) null, -- Trạng thái nhân sự đang làm việc cho công ty (1 làm việc cho công ty, 0 không làm việc cho công ty)
    `type_employee_id` int null, -- Khóa ngoại loại nhân sự
    primary key(`id`),
    constraint `fk_typeemployee_employee` foreign key(`type_employee_id`) references `busdbver2`.`type_employee`(`id`)
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu cho bảng `busdbver2`.`employee`
insert into `busdbver2`.`employee`(`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_employee_id`) values ('Trần Phương', 'Anh', '1999-01-24', 'Nữ', 'Quận 5, Tp Hồ Chí Minh', '107936578401', '0909123564', '107936578401anh@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '107936578401anh@gmail.com', 'P@ssW0rd', 1, '3');
insert into `busdbver2`.`employee`(`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_employee_id`) values ('Nguyễn Phương', 'Linh', '1999-11-28', 'Nữ', 'Quận 2, Tp Hồ Chí Minh', '107422175693', '0961687266', '107422175693linh@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '107422175693linh@gmail.com', 'P@ssW0rd', 1, '3');
insert into `busdbver2`.`employee`(`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_employee_id`) values ('Nguyễn Đăng Quốc', 'Anh', '2000-07-07', 'Nam', 'Quận 1, Tp Hồ Chí Minh', '104520019506', '0902902019', '104520019506anh@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '104520019506anh@gmail.com', 'P@ssW0rd', 1, '2');
insert into `busdbver2`.`employee`(`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_employee_id`) values ('Nguyễn Hữu', 'Minh', '2000-10-01', 'Nam', 'Quận Gò Vấp, Tp Hồ Chí Minh', '106822059551', '0392620393', '106822059551minh@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '106822059551minh@gmail.com', 'P@ssW0rd', 1, '2');
insert into `busdbver2`.`employee`(`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_employee_id`) values ('Nguyễn Thiện Minh', 'Tâm', '1997-06-14', 'Nam', 'Quận Bình Thạnh, Tp Hồ Chí Minh', '106822980298', '0347311331', '106822980298tam@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '106822980298tam@gmail.com', 'P@ssW0rd', 1, '1');
insert into `busdbver2`.`employee`(`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_employee_id`) values ('Vương Gia', 'Thanh', '2000-10-18', 'Nữ', 'Quận Hóc Môn, Tp Hồ Chí Minh', '107423466831', '0357070746', '107423466831thanh@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '107423466831thanh@gmail.com', 'P@ssW0rd', 1, '3');
insert into `busdbver2`.`employee`(`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_employee_id`) values ('Lê Đức Anh', 'Tuấn', '1999-04-19', 'Nam', 'Quận 7, Tp Hồ Chí Minh', '106822126899', '0342461880', '106822126899tuan@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '106822126899tuan@gmail.com', 'P@ssW0rd', 1, '2');
insert into `busdbver2`.`employee`(`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_employee_id`) values ('Phạm Văn', 'Nam', '1999-04-19', 'Nam', 'Quận 8, Tp Hồ Chí Minh', '107022201304', '0339559721', '107022201304nam@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '107022201304nam@gmail.com', 'P@ssW0rd', 1, '2');
insert into `busdbver2`.`employee`(`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_employee_id`) values ('Lê Trần Phương', 'Nhi', '2001-01-11', 'Nữ', 'Quận 9, Tp Hồ Chí Minh', '107423804325', '0339559723', '107423804325nhi@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '107423804325nhi@gmail.com', 'P@ssW0rd', 1, '1');
insert into `busdbver2`.`employee`(`last_name`, `first_name`, `date_of_birth`, `sex`, `address`, `identity_num`, `phone`, `email`, `image`, `username`, `password`, `active`, `type_employee_id`) values ('Trần Lê Quang', 'Chiến', '2001-04-25', 'Nam', 'Nhà Bè, Tp Hồ Chí Minh', '106822261393', '0372405209', '106822261393chien@gmail.com', 'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png', '106822261393chien@gmail.com', 'P@ssW0rd', 1, '1');

-- Tạo bảng dữ liệu lưu thông tin chuyến đi
drop table if exists `busdbver2`.`bustrip`;
create table `busdbver2`.`bustrip`(
	`id` int not null auto_increment, -- Mã chuyến xe
    `employee_id` int null, -- Khóa ngoại mã nhân sự là tài xế
    `bus_id` int null, -- Khóa ngoại mã xe khách của chuyến
    `linebus_id` int null, -- Khóa ngoại mã tuyến xe chạy
    `price` decimal(10, 0) null, -- Giá chuyến xe
    `active` bit(1) null, -- Trạng thái khai thác chuyến xe (1 đang khai thác, 0 không khai thác)
	primary key(`id`),
    constraint `fk_bustrip_employee` foreign key(`employee_id`) references `busdbver2`.`employee`(`id`),
    constraint `fk_bustrip_bus` foreign key(`bus_id`) references `busdbver2`.`bus`(`id`),
    constraint `fk_bustrip_linebus` foreign key(`linebus_id`) references `busdbver2`.`line_bus`(`id`)
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu cho bảng `busdbver2`.`bustrip`
insert into `busdbver2`.`bustrip`(`employee_id`, `bus_id`, `linebus_id`, `price`, `active`) values('3', '1', '1', '400000', 1);
insert into `busdbver2`.`bustrip`(`employee_id`, `bus_id`, `linebus_id`, `price`, `active`) values('4', '2', '2', '350000', 1);
insert into `busdbver2`.`bustrip`(`employee_id`, `bus_id`, `linebus_id`, `price`, `active`) values('7', '3', '3', '500000', 1);
insert into `busdbver2`.`bustrip`(`employee_id`, `bus_id`, `linebus_id`, `price`, `active`) values('8', '4', '4', '450000', 1);

-- Tạo bảng trung gian giữa 2 bảng `busdbver2`.`bustrip` và `busdbver2`.`station`
drop table if exists `busdbver2`.`detail_bustrip`;
create table `busdbver2`.`detail_bustrip`(
	`id` int not null auto_increment, -- Mã chi tiết chuyến
    `station_id` int null, -- Khóa ngoại mã bến xe khởi hành
    `bustrip_id` int null, -- Khóa ngoại mã chuyến xe
    `departure_time` datetime null, -- Thời gian khởi hành
    `destination_time` datetime null, -- Thời gian đến (dự kiến)
    primary key(`id`),
    constraint `fk_detailbustrip_station` foreign key(`station_id`) references `busdbver2`.`station`(`id`),
    constraint `fk_detailbustrip_bustrip` foreign key(`bustrip_id`) references `busdbver2`.`bustrip`(`id`)
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu cho bảng `busdbver2`.`detail_bustrip`
insert into `busdbver2`.`detail_bustrip`(`station_id`, `bustrip_id`, `departure_time`, `destination_time`) values ('1', '1', '2022-08-17 00:00:00', '2022-08-17 08:00:00');
insert into `busdbver2`.`detail_bustrip`(`station_id`, `bustrip_id`, `departure_time`, `destination_time`) values ('2', '2', '2022-08-18 00:00:00', '2022-08-18 07:00:00');
insert into `busdbver2`.`detail_bustrip`(`station_id`, `bustrip_id`, `departure_time`, `destination_time`) values ('3', '3', '2022-08-19 00:00:00', '2022-08-19 05:00:00');
insert into `busdbver2`.`detail_bustrip`(`station_id`, `bustrip_id`, `departure_time`, `destination_time`) values ('4', '4', '2022-08-20 00:00:00', '2022-08-20 08:00:00');

-- Tạo bảng lưu thông tin feedback của khách hàng cho chuyến đi
drop table if exists `busdbver2`.`feedback`;
create table `busdbver2`.`feedback`(
	`id` int not null auto_increment, -- Mã bình luận
    `rate` int null, -- Điểm
    `comment` varchar(255) null, -- Bình luận
    `created_date` datetime null, -- Ngày tạo bình luận
    `customer_id` int null, -- Khóa ngoại mã khách hàng bình luận
    `bustrip_id` int null, -- Khóa ngoại mã chuyến xe bình luận
    primary key(`id`),
    constraint `fk_feedback_customer` foreign key(`customer_id`) references `busdbver2`.`customer`(`id`),
    constraint `fk_feedback_bustrip` foreign key(`bustrip_id`) references `busdbver2`.`bustrip`(`id`)    
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu cho bảng `busdbver2`.`feedback`
insert into `busdbver2`.`feedback`(`rate`, `comment`, `created_date`, `customer_id`, `bustrip_id`) values('5', 'Good trip', '2022-08-16 10:00:00', '1', '1');
insert into `busdbver2`.`feedback`(`rate`, `comment`, `created_date`, `customer_id`, `bustrip_id`) values('4', 'Delay', '2022-08-16 11:00:00', '2', '2');
insert into `busdbver2`.`feedback`(`rate`, `comment`, `created_date`, `customer_id`, `bustrip_id`) values('5', 'Good bus', '2022-08-15 10:00:00', '3', '3');
insert into `busdbver2`.`feedback`(`rate`, `comment`, `created_date`, `customer_id`, `bustrip_id`) values('5', 'Safety', '2022-08-16 09:00:00', '4', '4');

-- Tao bảng dữ liệu lưu thông tin bán/ đặt vé
drop table if exists `busdbver2`.`sale_order`;
create table `busdbver2`.`sale_order`(
	`id` int not null auto_increment, -- Mã đặt/bán
    `customer_id` int null, -- Khóa ngoại khách hàng đặt/mua
    `payment_id` int null, -- Khóa ngoại mã hình thức thanh toán
    `bustrip_id` int null, -- Khóa ngoại mã chuyến xe
    `craeted_date` datetime null, -- Ngày tạo
    `num` int null, -- Số lượng
    `paid` bit(1) null, -- Trạng thái thanh toán (0 chưa thanh toán, 1 đã thanh toán)
    `cancel` bit(1) null, -- Trạng thái hủy đặt/mua (0 không hủy, 1 hủy)
    primary key(`id`),
    constraint `fk_saleorder_customer` foreign key(`customer_id`) references `busdbver2`.`customer`(`id`),
    constraint `fk_saleorder_payment` foreign key(`payment_id`) references `busdbver2`.`payment`(`id`),
    constraint `fk_saleorder_bustrip` foreign key(`bustrip_id`) references `busdbver2`.`bustrip`(`id`)
)
engine = InnoDB
default character set = utf8
collate = utf8_unicode_ci;

-- Thêm dữ liệu cho bảng `busdbver2`.`sale_order`
insert into `busdbver2`.`sale_order`(`customer_id`, `payment_id`, `bustrip_id`, `craeted_date`, `num`, `paid`, `cancel`) values('1', '4', '1', '2022-08-16 07:00:00', '1', 1, 1);
insert into `busdbver2`.`sale_order`(`customer_id`, `payment_id`, `bustrip_id`, `craeted_date`, `num`, `paid`, `cancel`) values('2', '4', '2', '2022-08-16 08:00:00', '1', 1, 1);
insert into `busdbver2`.`sale_order`(`customer_id`, `payment_id`, `bustrip_id`, `craeted_date`, `num`, `paid`, `cancel`) values('3', '4', '3', '2022-08-16 09:00:00', '1', 1, 1);
insert into `busdbver2`.`sale_order`(`customer_id`, `payment_id`, `bustrip_id`, `craeted_date`, `num`, `paid`, `cancel`) values('4', '4', '4', '2022-08-16 10:00:00', '1', 1, 1);
