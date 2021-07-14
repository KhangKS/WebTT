-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 11, 2021 lúc 04:51 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `status`) VALUES
(1, 'Máy in - photo', 'may-in-photo', 1, 0, '0', '2021-04-12 16:15:39', '4', '2021-07-05 14:31:31', '1', 1, 1),
(2, 'Máy tính để bàn', 'may-tinh-de-ban', 1, 0, '0', '2021-04-12 16:13:24', '4', '2021-07-05 14:32:00', '1', 1, 1),
(3, 'Laptop', 'laptop', 1, 0, '0', '2021-04-12 16:09:41', '4', '2021-07-05 14:36:16', '1', 1, 1),
(4, 'Camera', 'camera', 1, 0, '0', '2021-05-13 21:33:25', '1', '2021-07-05 14:36:52', '1', 1, 1),
(5, 'Thiết bị y tế', 'thiet-bi-y-te', 1, 0, '0', '2021-04-13 21:33:41', '1', '2021-07-05 14:29:44', '1', 1, 1),
(6, 'HM', 'hm', 2, 4, '1', '2021-04-13 21:38:28', '1', '2021-07-05 14:29:21', '1', 1, 1),
(7, 'Phần mềm', 'phan-mem', 1, 0, '1', '2021-04-13 21:39:01', '1', '2021-07-05 14:38:45', '1', 1, 1),
(8, 'Vật tư ngành vàng', 'vat-tu-nganh-vang', 1, 0, '2', '2021-04-13 21:39:48', '1', '2021-07-05 14:30:47', '1', 1, 1),
(9, 'KBVISION', 'kbvision', 2, 4, '0', '2021-04-14 21:40:38', '1', '2021-07-05 14:27:55', '1', 1, 1),
(10, 'Điện - Điện Máy', 'dien-dien-may', 1, 0, '2', '2021-04-13 22:19:53', '1', '2021-07-05 14:30:16', '1', 1, 1),
(11, 'Dahua', 'dahua', 2, 4, '1', '2021-04-13 22:37:59', '1', '2021-07-05 14:28:27', '1', 1, 1),
(13, 'Báo trộm - Báo cháy', 'bao-trom-bao-chay', 1, 0, '1', '2021-07-05 14:37:15', '1', '2021-07-05 14:37:41', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_categorypost`
--

CREATE TABLE `db_categorypost` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `db_categorypost`
--

INSERT INTO `db_categorypost` (`id`, `name`) VALUES
(1, 'Tin tức'),
(2, 'Khách hàng tiêu biểu'),
(3, 'Tuyển dụng'),
(4, 'Dịch vụ'),
(5, 'Nông Nghiệp'),
(6, 'Giới thiệu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) CHARACTER SET utf8 NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'sale.smart.store.2021@gmail.com', '123456', 'khungkhip@gmail.com', '30000', 'Huy Minh Cần Thơ', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1,
  `id_categorypost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`, `id_categorypost`) VALUES
(8, 'Tiệm vàng Khải Hằng', 'tiem-vang-khai-hang', 'Doanh nghiệp gắn bó lâu dài và có giao dịch thường xuyên với công ty chúng tôi', '<p>Doanh nghiệp gắn b&oacute; l&acirc;u d&agrave;i v&agrave; c&oacute; giao dịch thường xuy&ecirc;n với c&ocirc;ng ty ch&uacute;ng t&ocirc;i</p>\r\n\r\n<p><img alt=\"Hình ảnh thực tế 1\" src=\"http://huyminhcantho.com/uploads/khach-hang-tieu-bieu/tiem-vang.jpg\" style=\"width:460px\" /></p>\r\n\r\n<p>H&igrave;nh ảnh thực tế 1</p>\r\n\r\n<p><strong>TIỆM V&Agrave;NG KHẢI HẰNG</strong></p>\r\n\r\n<p>Tr&iacute;ch th&ocirc;ng tin từ Hồ Sơ Doanh nghiệp:&nbsp;<a href=\"https://thongtindoanhnghiep.co/1800493211-doanh-nghiep-tu-nhan-kinh-doanh-vang-khai-hang-75\">Xem chi tiết</a></p>\r\n\r\n<p><img alt=\"hình ảnh tượng trưng\" src=\"http://huyminhcantho.com/uploads/khach-hang-tieu-bieu/bang-hieu.jpg\" style=\"height:399px; width:400px\" /></p>\r\n\r\n<p>Ảnh minh họa</p>\r\n\r\n<p><em>Doanh Nghiệp Tư Nh&acirc;n Kinh Doanh V&agrave;ng Khải Hằng 75 - KHAI HANG 75 PTE c&oacute; địa chỉ tại 230B, Khu vực Thới Xương 2 - Phường Thới Long - Quận &Ocirc; M&ocirc;n - Cần Thơ. M&atilde; số thuế&nbsp;<strong>1800493211</strong>&nbsp;Đăng k&yacute; &amp; quản l&yacute; bởi Chi cục Thuế Quận &Ocirc; M&ocirc;n.</em><br />\r\n&nbsp;</p>\r\n\r\n<p>C&aacute;c dịch vụ Doanh nghiệp đ&atilde; sử dụng b&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i:<br />\r\n&nbsp; &nbsp;1. Phần mềm quản l&yacute; tiệm v&agrave;ng - cầm đồ</p>\r\n\r\n<p><img alt=\"phan mem vang\" src=\"http://huyminhcantho.com/uploads/khach-hang-tieu-bieu/phan-mem-vang.png\" style=\"height:193px; width:500px\" /></p>\r\n\r\n<p>Phần mềm quản l&yacute; tiệm v&agrave;ng - in tem v&agrave;ng theo th&ocirc;ng tư 22 mới nhất</p>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp; &nbsp;2. Camera an ninh v&agrave;&nbsp; hệ thống b&aacute;o động</p>\r\n\r\n<p><img alt=\"Vì an ninh. Ảnh đã được làm mờ.\" src=\"http://huyminhcantho.com/uploads/khach-hang-tieu-bieu/camera.jpg\" style=\"height:152px; width:150px\" /></p>\r\n\r\n<p><em>Ảnh thật. Nhưng đ&atilde; được l&agrave;m mờ v&igrave; an ninh.</em></p>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;3. Bảng led điện tử</p>\r\n\r\n<p><img alt=\"bang led\" src=\"http://huyminhcantho.com/uploads/khach-hang-tieu-bieu/bang-led.jpg\" style=\"height:305px; width:541px\" /></p>\r\n\r\n<p>Nh&atilde;n</p>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp; &nbsp;4. C&acirc;n điện tử - c&acirc;n tuổi</p>\r\n\r\n<p><img alt=\"phần mềm cân tuổi vàng\" src=\"http://huyminhcantho.com/uploads/khach-hang-tieu-bieu/cantuoivang.jpg\" style=\"height:192px; width:500px\" /></p>\r\n\r\n<p>Phần mềm c&acirc;n tuổi v&agrave;ng</p>\r\n\r\n<p><br />\r\n<br />\r\n<em><strong>Tổng mức đầu tư: hơn 200 triệu đồng.</strong></em><br />\r\n<em>Hiện tại vẫn c&ograve;n l&agrave; đối t&aacute;c, c&oacute; ph&aacute;t sinh giao dịch với c&ocirc;ng ty ch&uacute;ng t&ocirc;i.</em></p>\r\n', 'tiem-vang.jpg', '2021-06-30 22:39:10', '1', '2021-07-06 21:49:51', '1', 1, 1, 2),
(9, 'ISUZU Cần Thơ - Cty Cổ phần An Khánh', 'isuzu-can-tho-cty-co-phan-an-khanh', 'Đây là đối tác, khách hàng tiêu biểu của công ty chúng tôi. Khách hàng đã gắn bó lâu dài với công ty. Rất cảm ơn sự tin tưởng của khách.', '<p>Đ&acirc;y l&agrave; đối t&aacute;c, kh&aacute;ch h&agrave;ng ti&ecirc;u biểu của c&ocirc;ng ty ch&uacute;ng t&ocirc;i. Kh&aacute;ch h&agrave;ng đ&atilde; gắn b&oacute; l&acirc;u d&agrave;i với c&ocirc;ng ty. Rất cảm ơn sự tin tưởng của kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"ISUZU Cần Thơ - Cty Cổ phần An Khánh\" src=\"http://huyminhcantho.com/uploads/khach-hang-tieu-bieu/20140828165339.png\" style=\"width:106px\" /></p>\r\n\r\n<p>C&Ocirc;NG TY CỔ PHẦN AN KH&Aacute;NH<br />\r\n<img alt=\"20140828165339 Copy\" src=\"http://huyminhcantho.com/uploads/khach-hang-tieu-bieu/20140828165339-copy.png\" style=\"height:50px; width:500px\" /></p>\r\n\r\n<p><br />\r\nC&aacute;c dịch vụ Doanh nghiệp đ&atilde; sử dụng b&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i:<br />\r\n&nbsp; &nbsp;1. Phần mềm quản l&yacute; c&ocirc;ng ty. Bao gồm: phần mềm dịch vụ &ocirc; t&ocirc; - garage &ocirc; t&ocirc;, phần mềm kinh doanh &ocirc; t&ocirc;, phần mềm quản l&yacute; nh&acirc;n sự<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Phần mềm\" src=\"http://huyminhcantho.com/uploads/khach-hang-tieu-bieu/2019_11/phan-mem-dich-vo-o-to.png\" style=\"height:183px; width:500px\" /></p>\r\n\r\n<p>Phần mềm dịch vụ &ocirc; t&ocirc; - garage &ocirc; t&ocirc;</p>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp; &nbsp;2. Camera an ninh v&agrave;&nbsp; hệ thống b&aacute;o động<br />\r\n<br />\r\n&nbsp; &nbsp;3. K&yacute; hợp đồng bảo tr&igrave;, bảo dưỡng m&aacute;y t&iacute;nh h&agrave;ng th&aacute;ng<br />\r\n<br />\r\n&nbsp; &nbsp;4. K&yacute; hợp đồng vận h&agrave;nh v&agrave; b&atilde;o dưỡng server Linux h&agrave;ng th&aacute;ng<br />\r\n<br />\r\n<em><strong>Tổng mức đầu tư: hơn 400 triệu đồng.</strong></em><br />\r\n<em>Hiện tại vẫn c&ograve;n l&agrave; đối t&aacute;c, c&oacute; ph&aacute;t sinh giao dịch với c&ocirc;ng ty ch&uacute;ng t&ocirc;i.</em></p>\r\n\r\n<p><strong><em>Ch&acirc;n Th&agrave;nh cảm ơn Kh&aacute;ch h&agrave;ng đ&atilde; ủng hộ ch&uacute;ng t&ocirc;i!</em></strong></p>\r\n', '20140828165339.png', '2021-07-06 21:49:06', '1', '2021-07-06 21:56:37', '1', 1, 1, 2),
(10, 'Tuyển dụng nhân viên Lập trình Web', 'tuyen-dung-nhan-vien-lap-trinh-web', 'CÔNG TY TNHH TM DV CÔNG NGHỆ HUY MINH PRO\r\nTUYỂN DỤNG 01 NHÂN VIÊN LẬP TRÌNH WEB - KỸ THUẬT', '<p>C&Ocirc;NG TY TNHH TM DV C&Ocirc;NG NGHỆ HUY MINH PRO<br />\r\nTUYỂN DỤNG 01 NH&Acirc;N VI&Ecirc;N LẬP TR&Igrave;NH WEB - KỸ THUẬT</p>\r\n\r\n<p><strong>M&Ocirc; TẢ C&Ocirc;NG VIỆC</strong><br />\r\n- Lập tr&igrave;nh v&agrave; quản l&yacute; c&aacute;c trang web theo y&ecirc;u cầu của Kh&aacute;ch h&agrave;ng<br />\r\n- Cập nhật kiến thức về những c&ocirc;ng nghệ mới để &aacute;p ứng cho c&ocirc;ng việc<br />\r\n- C&ocirc;ng việc cụ thể sẽ trao đổi th&ecirc;m khi phỏng vấn<br />\r\n<br />\r\n<strong>Y&Ecirc;U CẦU C&Ocirc;NG VIỆC</strong><br />\r\n- Nam, Tuổi từ 20 đến 30<br />\r\n-&nbsp;C&oacute; kinh nghiệm về lập tr&igrave;nh v&agrave; thiết kế web. Ưu ti&ecirc;n biết sử dụng WP, ng&ocirc;n ngữ php.<br />\r\n- C&oacute; hiểu biết về phần cứng m&aacute;y t&iacute;nh.<br />\r\n- Tốt nghiệp cao đẳng trở l&ecirc;n chuy&ecirc;n ng&agrave;nh li&ecirc;n quan<br />\r\n- C&oacute; t&iacute;nh kỷ luật, tr&aacute;ch nhiệm v&agrave; nghi&ecirc;m t&uacute;c trong c&ocirc;ng việc<br />\r\n<br />\r\n<strong>QUYỀN LỢI</strong><br />\r\n- Mức Lương: Thỏa Thuận khi phỏng vấn<br />\r\n- M&ocirc;i trường l&agrave;m việc th&acirc;n thiện chuy&ecirc;n nghiệp<br />\r\n- Cơ hội học hỏi, tiếp x&uacute;c với quy tr&igrave;nh l&agrave;m việc chuy&ecirc;n nghiệp<br />\r\n- Được hưởng c&aacute;c chế độ đ&atilde;i ngộ theo quy định của c&ocirc;ng ty<br />\r\n<br />\r\n<br />\r\n<strong>ĐỊA ĐIỂM L&Agrave;M VIỆC:&nbsp;</strong>Tại văn ph&ograve;ng số 43, đường số 9, Khu Thới Nhựt 2, An Kh&aacute;nh, Ninh Kiều, TPCT<br />\r\n<br />\r\n<strong>HỒ SƠ XIN GỬI QUA C&Aacute;C H&Igrave;NH THỨC SAU</strong>:<br />\r\n- Email: huyminhcantho@gmail.com<br />\r\n- Hoặc nộp trực tiếp tại c&ocirc;ng ty: 43 đường số 9, Khu Thới Nhựt 2, phường An Kh&aacute;nh, quận Ninh Kiều, TP Cần Thơ.<br />\r\n- SĐT: 0939 77 1987 (Khoa)</p>\r\n', '35731687_1703251349793805_4662238767048818688_n.jpg', '2021-07-06 21:50:27', '1', '2021-07-06 21:57:06', '1', 1, 1, 3),
(11, 'Microsoft xác nhận Windows 11 sẽ có thể chạy ứng dụng Android trong tương lai, nhưng không hỗ trợ Google Play Services', 'microsoft-xac-nhan-windows-11-se-co-the-chay-ung-dung-android-trong-tuong-lai-nhung-khong-ho-tro-google-play-services', '', '<p><img alt=\"Microsoft xác nhận Windows 11 sẽ có thể chạy ứng dụng Android trong tương lai, nhưng không hỗ trợ Google Play Services\" src=\"https://photo.techrum.vn/images/2021/06/24/46033bc0-d502-11eb-bffd-da02ff0cf0f4c7914396a5fc0480.jpg\" style=\"width:460px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://photo.techrum.vn/images/2021/06/24/46033bc0-d502-11eb-bffd-da02ff0cf0f4c7914396a5fc0480.jpg\" style=\"height:324px; width:541px\" />​<br />\r\nTrong buổi ra mắt Windows 11 diễn ra v&agrave;o đ&ecirc;m nay, ng&agrave;y 24 th&aacute;ng 6, Microsoft đ&atilde; x&aacute;c nhận rằng họ đang t&igrave;m c&aacute;ch đưa c&aacute;c ứng dụng Android l&ecirc;n Microsoft Store tr&ecirc;n Windows 11. Gi&aacute;m đốc sản phẩm của Microsoft - &ocirc;ng Panos Panay đ&atilde; x&aacute;c nhận rằng động th&aacute;i n&agrave;y c&oacute; thể gi&uacute;p tăng số lượng ứng dụng hiện c&oacute; cho nền tảng Windows.<br />\r\n<br />\r\nT&iacute;nh năng n&agrave;y hiện chưa c&oacute; sẵn tr&ecirc;n Windows 11 m&agrave; sẽ được Microsoft bổ sung v&agrave;o sau đ&oacute;, khi hệ điều h&agrave;nh n&agrave;y ph&aacute;t h&agrave;nh v&agrave;o m&ugrave;a thu năm nay. Để c&oacute; thể hỗ trợ ứng dụng Android tr&ecirc;n Windows 11, Microsoft đang sử dụng c&ocirc;ng nghệ Windows Subsystem for Linux (WSL), tuy nhi&ecirc;n h&atilde;ng chưa cho biết nhiều th&ocirc;ng tin về c&ocirc;ng nghệ n&agrave;y. Microsoft c&ograve;n cho biết th&ecirc;m rằng, h&atilde;ng sẽ kh&ocirc;ng hỗ trợ sử dụng dịch vụ Google (Google Play Services) tr&ecirc;n Windows 11, điều n&agrave;y c&oacute; nghĩa l&agrave; c&aacute;c ứng dụng như Google Play v&agrave; mail dựa tr&ecirc;n Google Play Services sẽ kh&ocirc;ng hoạt động tr&ecirc;n Windows 11.<br />\r\n<br />\r\nTheo Microsoft, c&aacute;c ứng dụng n&agrave;y sẽ được cung cấp bởi c&ocirc;ng nghệ Intel Bridge v&agrave; c&aacute;c ứng dụng Android tr&ecirc;n Windows 11 c&oacute; thể được ghim v&agrave;o thanh Taskbar. Ngo&agrave;i ra, c&aacute;c ứng dụng Android cũng sẽ hỗ trợ trải nghiệm người d&ugrave;ng v&agrave; chạy ch&uacute;ng c&ugrave;ng với c&aacute;c ứng dụng Windows truyền thống.<br />\r\n<br />\r\n<img alt=\"\" src=\"https://photo.techrum.vn/images/2021/06/24/Android-Apps-Windows-11-2a2a8d4839b49bf4c.jpg\" style=\"height:304px; width:541px\" />​<br />\r\nC&ugrave;ng với tin tức n&agrave;y, Microsoft cũng tiết lộ một ứng dụng Microsoft Store ho&agrave;n to&agrave;n mới , với trọng t&acirc;m l&agrave; một nền tảng mở cho bất kỳ nh&agrave; ph&aacute;t triển n&agrave;o muốn ph&aacute;t h&agrave;nh ứng dụng của họ tr&ecirc;n Windows 11. Điều n&agrave;y bao gồm c&aacute;c ứng dụng được ph&aacute;t triển dự tr&ecirc;n Win32, UWP, PWA v&agrave; b&acirc;y giờ l&agrave; c&aacute;c ứng dụng Android. Windows 11 dự kiến sẽ ph&aacute;t h&agrave;nh v&agrave;o m&ugrave;a thu năm nay v&agrave; đ&oacute; l&agrave; thời điểm khả năng hỗ trợ ứng dụng Android tr&ecirc;n Windows sẽ được cung cấp cho c&ocirc;ng ch&uacute;ng.</p>\r\n', '46033bc0-d502-11eb-bffd-da02ff0cf0f4c7914396a5fc0480.jpg', '2021-07-06 21:51:40', '1', '2021-07-06 21:51:40', '1', 1, 1, 1),
(12, 'Dịch vụ sửa chữa máy siêu âm tận nơi', 'dich-vu-sua-chua-may-sieu-am-tan-noi', '', '<p>Dịch vụ sửa chữa m&aacute;y si&ecirc;u &acirc;m &ldquo;tận nơi&rdquo; nhanh ch&oacute;ng-Chuy&ecirc;n nghiệp tại Cần Thơ<br />\r\n<strong>Dịch vụ sửa chữa m&aacute;y si&ecirc;u &acirc;m tận nơi nhanh ch&oacute;ng &ndash; uy t&iacute;n &ndash; chất lượng- chuy&ecirc;n nghiệp. M&aacute;y si&ecirc;u &acirc;m của bạn gặp sự cố ư? Đừng lo lắng!! H&atilde;y để&nbsp;Huy Minh Pro&nbsp;khắc phục gi&ugrave;m bạn.</strong><br />\r\nVới phương ch&acirc;m đem đến cho kh&aacute;ch h&agrave;ng sự phục nhiệt t&igrave;nh, tỉ mỉ, chu đ&aacute;o c&ugrave;ng với những sản phẩm tốt với gi&aacute; th&agrave;nh phải chăng. Rất h&acirc;n hạnh được phục vụ kh&aacute;ch h&agrave;ng.<br />\r\n&nbsp;</p>\r\n\r\n<ol>\r\n	<li><strong>Dịch vụ sửa chữa m&aacute;y si&ecirc;u &acirc;m nhanh nhất tại nh&agrave;:</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Với đội ngũ kỹ thuật c&oacute; kinh nghiệm tr&ecirc;n 10 năm,&nbsp;<strong>C&ocirc;ng ty TNHH TM DV C&ocirc;ng Nghệ Huy Minh Pro</strong>&nbsp;chuy&ecirc;n&nbsp;<strong>sửa chữa m&aacute;y si&ecirc;u &acirc;m</strong>, m&aacute;y chụp x-quang,&hellip;v&agrave; tất cả c&aacute;c loại m&aacute;y trong y tế với&nbsp;thời gian sửa chữa nhanh nhất với chi ph&iacute; sửa chữa hợp l&yacute; nhất.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://huyminhcantho.com/uploads/tin-tuc/2021_02/image-20210225100409-1.jpeg\" style=\"height:844px; width:541px\" /></p>\r\n\r\n<p>H&igrave;nh ảnh sửa chữa m&aacute;y si&ecirc;u &acirc;m</p>\r\n\r\n<p><strong>Dịch vụ sửa chữa m&aacute;y si&ecirc;u &acirc;m</strong>&nbsp;theo quy tr&igrave;nh nghi&ecirc;m ngặt để đảm bảo x&aacute;c định đ&uacute;ng bệnh v&agrave;&nbsp;<strong>sửa chữa m&aacute;y si&ecirc;u &acirc;m nhanh nhất</strong>&nbsp;chỉ trong v&ograve;ng v&agrave;i tiếng, thậm ch&iacute; v&agrave;i ph&uacute;t:</p>\r\n\r\n<ol>\r\n	<li>X&aacute;c định bộ phận hư hỏng, mức độ hư hỏng của m&aacute;y.</li>\r\n	<li>&nbsp;T&igrave;m ra nguy&ecirc;n nh&acirc;n dẫn đến hư hỏng.</li>\r\n	<li>Đưa ra phương &aacute;n tối ưu nhất để sửa chữa hay thay thế.</li>\r\n	<li>Sửa chữa v&agrave; thay thế linh phụ kiện đ&uacute;ng đời v&agrave; ch&iacute;nh h&atilde;ng</li>\r\n	<li>B&aacute;o gi&aacute; cho bạn trước khi sửa chữa hoặc thay mới linh kiện.</li>\r\n	<li>Phiếu bảo h&agrave;nh v&agrave; tư vấn c&aacute;ch sử dụng đ&uacute;ng kỹ thuật cho bạn.</li>\r\n	<li>Tư vấn miễn ph&iacute; kỹ thuật để kh&aacute;ch biết c&aacute;ch sử dụng v&agrave; bảo dưỡng m&aacute;y để hạn chế thấp nhất trường hợp m&aacute;y lỗi.</li>\r\n</ol>\r\n\r\n<p><img alt=\"\" src=\"http://huyminhcantho.com/uploads/tin-tuc/2021_02/image-20210225100409-2.jpeg\" style=\"height:766px; width:541px\" /></p>\r\n\r\n<p>H&igrave;nh ảnh sửa chữa m&aacute;y si&ecirc;u &acirc;m</p>\r\n\r\n<ul>\r\n	<li><strong>C&Ocirc;NG TY TNHH TM DV C&ocirc;ng Nghệ Huy Minh Pro</strong>&nbsp;lu&ocirc;n d&ugrave;ng những ưu điểm ri&ecirc;ng biệt m&agrave; kh&ocirc;ng nơi n&agrave;o c&oacute; được, khẳng định đanh th&eacute;p với kh&aacute;ch h&agrave;ng tại sao n&ecirc;n chọn ch&uacute;ng t&ocirc;i :</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Dịch vụ tư vấn miễn ph&iacute;, đội ngũ nh&acirc;n vi&ecirc;n tư vấn t&acirc;n t&acirc;m, ứng chuy&ecirc;n nghiệp.</li>\r\n	<li>L&agrave;m việc theo quy tr&igrave;nh khoa học, đ&uacute;ng tr&igrave;nh tự, đến đ&uacute;ng hẹn, b&agrave;n giao đ&uacute;ng sản phẩm.</li>\r\n	<li>Trực tiếp vận chuyển, lắp đặt m&aacute;y m&oacute;c, kh&ocirc;ng qua trung gian hay m&ocirc;i giới.</li>\r\n	<li>Cơ sở vật chất, m&aacute;y m&oacute;c, trang thiết bị hỗ trợ bảo tr&igrave; sữa chữa đầy đủ, t&acirc;n tiến.</li>\r\n	<li>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh, sữa chữa uy t&iacute;n, gi&aacute; th&agrave;nh cạnh tranh, hợp l&yacute;, thường thấp hơn c&aacute;c đơn vị kh&aacute;c kh&aacute;c từ 10-20 %.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Bảo h&agrave;nh sau sửa chữa:</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; C&aacute;c thiết bị sau sửa chữa sẽ được&nbsp;bảo h&agrave;nh 1 &ndash; 3 th&aacute;ng<br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Ch&uacute;ng t&ocirc;i cam kết dịch vụ sửa chữa m&aacute;y si&ecirc;u &acirc;m:</strong></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Thời gian sửa chữa nhanh nhất Việt Nam.</li>\r\n	<li><strong>Dịch vụ sửa chữa m&aacute;y si&ecirc;u &acirc;m</strong>&nbsp;kh&ocirc;ng qua trung gian.</li>\r\n	<li>Chi ph&iacute; sửa chữa rẻ nhất, cạnh tranh nhất Việt Nam.</li>\r\n	<li>Linh kiện thay thế lu&ocirc;n mới 100% ch&iacute;nh h&atilde;ng.</li>\r\n	<li>Ho&agrave;n tiền 100% chi ph&iacute; sửa chữa nếu trong thời gian bảo h&agrave;nh bị hỏng kh&ocirc;ng sửa được lại.</li>\r\n</ul>\r\n\r\n<h2><strong>2. Nhận&nbsp;bảo tr&igrave;, bảo dưỡng m&aacute;y si&ecirc;u &acirc;m</strong></h2>\r\n\r\n<p><img alt=\"\" src=\"http://huyminhcantho.com/uploads/dich-vu/2021_02/image.png\" style=\"height:340px; width:434px\" /></p>\r\n\r\n<p>H&igrave;nh ảnh sơ đồ m&aacute;y si&ecirc;u &acirc;m</p>\r\n\r\n<p>Sự cần thiết của bảo dưỡng định kỳ:</p>\r\n\r\n<ul>\r\n	<li>Giảm c&aacute;c sự cố xảy ra ngo&agrave;i &yacute; muốn.</li>\r\n	<li>M&aacute;y lu&ocirc;n được duy tr&igrave; ở trạng th&aacute;i hoạt động tốt.</li>\r\n	<li>Đảm bảo năng suất, hiệu quả c&ocirc;ng việc.</li>\r\n	<li>Tăng tuổi thọ của m&aacute;y.</li>\r\n</ul>\r\n\r\n<p>Nhằm đảm bảo cho việc hoạt động của m&aacute;y được hiệu quả v&agrave; l&acirc;u d&agrave;i, k&iacute;nh mong qu&yacute; kh&aacute;ch ch&uacute; &yacute; tới việc bảo dưỡng định kỳ.</p>\r\n\r\n<h2><strong>Mọi chi tiết xin vui l&ograve;ng li&ecirc;n hệ dịch vụ sửa chữa m&aacute;y h&agrave;n si&ecirc;u &acirc;m:</strong></h2>\r\n\r\n<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>C&ocirc;ng ty TNHH TM DV C&ocirc;ng Nghệ Huy Minh Pro</strong><br />\r\n			Địa chỉ: Số 43, đường số 9, Khu t&aacute;i định cư Thới Nhựt 2, An Kh&aacute;nh, Ninh Kiều, TP.Cần Thơ<br />\r\n			<strong>ĐT :&nbsp;<a href=\"tel:0939771987\">0939.77.1987</a></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'd8745baba38650d80997.jpg', '2021-07-06 21:52:21', '1', '2021-07-06 21:52:21', '1', 1, 1, 4),
(13, 'GIẢI PHÁP NÔNG NGHIỆP THÔNG MINH', 'giai-phap-nong-nghiep-thong-minh', '', '<p><img alt=\"GIẢI PHÁP NÔNG NGHIỆP THÔNG MINH\" src=\"http://huyminhcantho.com/uploads/nong-nghiep/2021_03/iot.jpg\" style=\"width:460px\" /></p>\r\n\r\n<p><strong>Ứng dụng n&ocirc;ng nghiệp c&ocirc;ng nghệ cao</strong>&nbsp;l&agrave; bộ giải ph&aacute;p quản l&iacute; n&ocirc;ng nghiệp th&ocirc;ng minh, kh&ocirc;ng chỉ b&aacute;o c&aacute;o h&igrave;nh ảnh qu&aacute; tr&igrave;nh nu&ocirc;i trồng, m&agrave; c&ograve;n hiển thị, ph&acirc;n t&iacute;ch c&aacute;c chỉ số tăng trưởng của c&acirc;y trồng, vật nu&ocirc;i, th&ocirc;ng b&aacute;o sự thay đổi của m&ocirc;i trường. Người n&ocirc;ng d&acirc;n, thương l&aacute;i ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m quản l&iacute; sản phẩm của m&igrave;nh từ bất cứ đ&acirc;u.<br />\r\n<img alt=\"IoT\" src=\"http://huyminhcantho.com/uploads/nong-nghiep/2021_03/iot.jpg\" style=\"height:276px; width:541px\" /><br />\r\n<br />\r\n<strong>HỆ THỐNG CẢM BIẾN</strong><br />\r\nỨng dụng t&iacute;ch hợp hệ thống cảm biến c&ocirc;ng nghệ cao, phục vụ theo d&otilde;i trực tiếp v&agrave; b&aacute;o c&aacute;o thường xuy&ecirc;n tiến tr&igrave;nh sinh trưởng của c&aacute;c lo&agrave;i c&acirc;y trồng, vật nu&ocirc;i. Th&ocirc;ng số ch&iacute;nh x&aacute;c của ứng dụng sẽ gi&uacute;p người d&ugrave;ng thiết lập quy tr&igrave;nh nu&ocirc;i trồng khoa học, đạt năng suất cao.</p>\r\n\r\n<ul>\r\n	<li>Cảm biến nhiệt độ kh&ocirc;ng kh&iacute;, nhiệt độ đất</li>\r\n	<li>Cảm biến độ ẩm kh&ocirc;ng kh&iacute;, độ ẩm đất</li>\r\n	<li>Cảm biến ion đất, nồng độ PH của đất</li>\r\n	<li>Nhiệt độ, PH nước tưới ti&ecirc;u</li>\r\n	<li>Hệ thống đo cường độ s&aacute;ng&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Chỉ số TDS</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://huyminhcantho.com/uploads/nong-nghiep/2021_03/image-20210311151839-1.png\" style=\"height:317px; width:541px\" /><br />\r\n<em>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Chỉ số đo lường</em><br />\r\n<br />\r\n<img alt=\"\" src=\"http://huyminhcantho.com/uploads/nong-nghiep/2021_03/image-20210311151839-2.jpeg\" style=\"height:272px; width:239px\" />&nbsp;<img alt=\"\" src=\"http://huyminhcantho.com/uploads/nong-nghiep/2021_03/image.png\" style=\"height:271px; width:269px\" /><br />\r\n<em>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;H&igrave;nh ảnh camera gi&aacute;m s&aacute;t</em><br />\r\n<br />\r\n<strong>HỆ THỐNG LƯU TRỮ - XỬ L&Yacute; DỮ LIỆU</strong><br />\r\nDữ liệu nu&ocirc;i trồng được lưu trữ theo từng vụ m&ugrave;a, tạo nền tảng ph&acirc;n t&iacute;ch, theo d&otilde;i quan s&aacute;t c&acirc;y trồng, cải thiện qu&aacute; tr&igrave;nh chăm s&oacute;c c&acirc;y trồng v&agrave; vật nu&ocirc;i.</p>\r\n\r\n<ul>\r\n	<li>Hệ thống lưu trữ, xử l&yacute; h&igrave;nh ảnh theo d&otilde;i c&acirc;y trồng trực tiếp 24/24</li>\r\n	<li>Hiển thị c&aacute;c th&ocirc;ng số đo lường thực tế theo y&ecirc;u cầu</li>\r\n	<li>Tự động gửi th&ocirc;ng b&aacute;o trong trường hợp th&ocirc;ng số vượt qu&aacute; mức quy định</li>\r\n	<li>Chuyển đổi kết quả đo lường th&agrave;nh biểu đồ so s&aacute;nh từng ng&agrave;y, để dể d&agrave;ng theo d&otilde;i c&acirc;y trồng</li>\r\n	<li><img alt=\"\" src=\"http://huyminhcantho.com/uploads/nong-nghiep/2021_03/image-20210311151840-4.jpeg\" style=\"height:361px; width:541px\" /></li>\r\n</ul>\r\n\r\n<p><br />\r\nLi&ecirc;n hệ:&nbsp;<a href=\"tel:0939 77 1987\">0939 77 1987</a>&nbsp;(Khoa)</p>\r\n', 'iot.jpg', '2021-07-06 21:52:54', '1', '2021-07-06 21:57:40', '1', 1, 1, 5),
(14, 'Về chúng tôi Huy Minh Pro', 've-chung-toi-huy-minh-pro', '', '<h1 style=\"text-align:center\"><span style=\"color:#3498db\"><strong>CTY TNHH THƯƠNG MẠI DỊCH VỤ C&Ocirc;NG NGHỆ HUY MINH&nbsp;<sup>PRO</sup></strong></span></h1>\r\n\r\n<p><br />\r\n<em><strong>T</strong><strong>&ecirc;n c&ocirc;ng ty viết tắt</strong>:&nbsp;</em><em>Cty TNHH TM DV C&Ocirc;NG NGHỆ HUY MINH<sup>Pro</sup>.<br />\r\n<strong>MST</strong>: 1801 617 501</em><br />\r\n<strong>Địa chỉ trụ sở ch&iacute;nh</strong>: 43 đường số 9, phường An Kh&aacute;nh, quận Ninh Kiều, TP Cần Thơ.<br />\r\n<strong>VP:</strong>61 Long Định, phường Long Hưng, quận &Ocirc; M&ocirc;n, TP Cần Thơ.<br />\r\n<strong>Điện thoại</strong>: 0939 771 987<br />\r\n<strong>Email</strong>: ndkhoa202@gmail.com - website:&nbsp;<a href=\"http://huyminhcantho.com/\">huyminhcantho.com</a></p>\r\n\r\n<p>H&igrave;nh thức: C&ocirc;ng ty TNHH TM DV C&ocirc;ng Nghệ Huy Minh&nbsp;<sup>Pro</sup>&nbsp;l&agrave; doanh nghiệp được th&agrave;nh lập theo loại h&igrave;nh c&ocirc;ng ty tr&aacute;ch nhiệm hữu hạn tiền th&acirc;n l&agrave; c&ocirc;ng ty TNHH Tin Học Viễn Th&ocirc;ng Bảo Khoa, được tổ chức v&agrave; hoạt động theo Luật Đầu tư v&agrave; Luật Doanh nghiệp do Quốc hội nước Cộng h&ograve;a x&atilde; hội chủ nghĩa Việt Nam kh&oacute;a XI th&ocirc;ng qua ng&agrave;y 29/11/2005.<br />\r\nVới bề dầy hơn 09&nbsp;năm (th&agrave;nh lập từ năm 2011) tr&ecirc;n thị trường, ch&uacute;ng t&ocirc;i tự tin sẽ đ&aacute;p ứng được nhu cầu của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><br />\r\nC&aacute;c hoạt động chuy&ecirc;n ng&agrave;nh:</p>\r\n\r\n<ul>\r\n	<li>Lập tr&igrave;nh phần mềm theo y&ecirc;u cầu</li>\r\n	<li>B&aacute;n lẻ thiết bị nghe nh&igrave;n trong c&aacute;c cửa h&agrave;ng chuy&ecirc;n doanh</li>\r\n	<li>Tư vấn m&aacute;y vi t&iacute;nh v&agrave; quản trị hệ thống m&aacute;y vi t&iacute;nh</li>\r\n	<li>Hoạt động dịch vụ c&ocirc;ng nghệ th&ocirc;ng tin v&agrave; dịch vụ kh&aacute;c li&ecirc;n quan đến m&aacute;y vi t&iacute;nh</li>\r\n	<li>Sửa chữa m&aacute;y vi t&iacute;nh v&agrave; thiết bị ngoại vi</li>\r\n	<li>Lập tr&igrave;nh web</li>\r\n	<li>B&aacute;n bu&ocirc;n m&aacute;y vi t&iacute;nh, thiết bị ngoại vi</li>\r\n</ul>\r\n', 'a28e846d79c0829edbd1.jpg', '2021-07-09 13:47:45', '1', '2021-07-09 13:47:45', '1', 1, 1, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã giảm giá',
  `discount` int(11) NOT NULL COMMENT 'Số tiền',
  `limit_number` int(11) NOT NULL COMMENT 'giới hạn lượt mua',
  `number_used` int(11) NOT NULL COMMENT 'Số lượng đã nhập',
  `expiration_date` date NOT NULL COMMENT 'Ngày hết hạn',
  `payment_limit` int(11) NOT NULL COMMENT 'giới hạn đơn hàng tối thiểu',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_discount`
--

INSERT INTO `db_discount` (`id`, `code`, `discount`, `limit_number`, `number_used`, `expiration_date`, `payment_limit`, `description`, `created`, `orders`, `trash`, `status`) VALUES
(1, 'MAHETLUOT', 100000, 30, 30, '2021-09-29', 500000, 'Giam 100000', '2021-04-10', 1, 1, 0),
(2, 'TuanKiet', 200000, 20, 3, '2021-06-12', 500000, 'Giam 200k', '2021-04-15', 1, 0, 1),
(3, 'Anhduc001', 200000, 300, 105, '2021-07-20', 300000, 'giảm 200k', '2021-04-20', 1, 1, 1),
(4, 'MAHETHAN', 150000, 68, 23, '2021-06-30', 500000, 'giảm 300k', '2019-06-25', 1, 1, 0),
(13, 'VIP001', 150000, 200, 1, '2021-07-26', 100000, 'Giảm 150k', '2021-04-06', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_district`
--

INSERT INTO `db_district` (`id`, `name`, `type`, `provinceid`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(10, 'Huyện Sóc Sơn', 'Huyện', 1),
(11, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(8) CHARACTER SET utf8 NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(1, 'Digiworld', 'DIGIWORLD', 'dienthoai,laptop', '2021-04-20 16:08:31', 4, '2021-04-22 16:08:31', 4, 1, 1),
(2, 'Nhà cung cấp di động Thanh Hoa', 'THANHHOAPRODUCER', ' dienthoai, maytinhbang,laptop,phukien', '2021-04-12 23:30:37', 1, '2021-04-19 10:52:13', 1, 1, 1),
(3, 'CÔNG TY THẾ GIỚI DI ĐỘNG', 'TGDDCODE', 'dienthoai,laptop', '2021-03-22 16:06:31', 4, '2021-04-14 23:40:22', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sortDesc` text CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `producer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(30, 3, 'Dell Latitude E7240 Core I5', 'dell-latitude-e7240-core-i5', '3710ed3239daf2bfa258409677434341.jpg', 'ce7caf96e41f3ad0e02cece8be082974.jpg', 'Dell Latitude E7240 Core I5  Sở hữu màn hình nhỏ gọn 12,5 inch độ phân giải HD 1366x768 pixel cho hình ảnh chân thực, rõ nét. bạn có thể sử dụng ngoài trời thoải mái với công nghệ chống lóa AntiGlare.', '<p><strong>Dell Latitude E7240 Core I5</strong>&nbsp;&nbsp;Sở hữu m&agrave;n h&igrave;nh nhỏ gọn 12,5 inch độ ph&acirc;n giải HD 1366x768 pixel cho h&igrave;nh ảnh ch&acirc;n thực, r&otilde; n&eacute;t. bạn c&oacute; thể sử dụng ngo&agrave;i trời thoải m&aacute;i với c&ocirc;ng nghệ chống l&oacute;a AntiGlare.<strong>&nbsp;</strong>B&agrave;n ph&iacute;m rộng, khoảng c&aacute;ch giữa c&aacute;ch ph&iacute;m đều nhau, độ nẩy cao cho bạn đ&aacute;nh m&aacute;y một c&aacute;ch nhanh ch&oacute;ng v&agrave; ch&iacute;nh x&aacute;c nhất, c&oacute; t&iacute;ch hợp đ&egrave;n ph&iacute;m tiện sử dụng nhất l&agrave; những bạn thường xuy&ecirc;n l&agrave;m việc ban đ&ecirc;m, sử dụng m&agrave; kh&ocirc;ng sợ phiền đến người kh&aacute;c. Với c&ocirc;ng nghệ &acirc;m thanh HD Audio 2.0 cho chất lượng to, r&otilde; r&agrave;ng khi nghe nhạc.<br />\r\nĐược trang bị cấu h&igrave;nh &nbsp;kh&aacute; cao cấp với bộ vi xử l&yacute; thuộc thế hệ thứ 4 của intel Core I5 4310U tốc độ 2.0GHz, Ram 4gb DDR3L cho khả năng chạy đa nhiệm tốt. Bộ xử l&yacute; đồ họa intel HD 4400 cho ph&eacute;p bạn xử l&yacute; c&aacute;c ứng dụng tầm trung như photoshop, autocad, corel một c&aacute;ch mượt m&agrave; tiết kiệm thời gian tối đa.&nbsp;<br />\r\n<br />\r\n<strong>Th&ocirc;ng số kỹ thuật:</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;&middot;&nbsp; &nbsp; &nbsp;&nbsp;<strong>Bộ xử l&yacute;</strong><br />\r\n&middot;H&atilde;ng CPU :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Intel<br />\r\n&middot;C&ocirc;ng nghệ CPU&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Core i5<br />\r\n&middot;Loại CPU :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4310U<br />\r\n&middot;Tốc độ CPU :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.0 GHz&nbsp;<br />\r\n&middot;Bộ nhớ đệm :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3 MB Cache<br />\r\n&nbsp; &nbsp; &nbsp;&nbsp;&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>RAM</strong><br />\r\n&middot;Dung lượng RAM :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4 GB<br />\r\n&middot;Hỗ trợ RAM tối đa :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 16GB<br />\r\n&middot;Loại RAM : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;DDR3L<br />\r\n&middot;Tốc độ BUS RAM :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1600 Mhz<br />\r\n&middot;Số lượng khe RAM : &nbsp; &nbsp;2<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Đĩa cứng</strong><br />\r\n&middot;Loại ổ đĩa : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; SSD<br />\r\n&middot;Dung lượng ổ đĩa :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;128 GB<br />\r\n&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Đồ họa</strong><br />\r\n&middot;Chipset đồ họa :&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;intel HD Graphics 4400<br />\r\n&middot;Bộ nhớ đồ họa : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1 GB<br />\r\n&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>M&agrave;n h&igrave;nh</strong><br />\r\n&middot;K&iacute;ch thước m&agrave;n h&igrave;nh :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;12.5 inch<br />\r\n&middot;Độ ph&acirc;n giải (W x H) : &nbsp;1366 x 768 pixels<br />\r\n&middot;C&ocirc;ng nghệ m&agrave;n h&igrave;nh :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HD LED<br />\r\n&middot;Cảm ứng : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kh&ocirc;ng<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&Acirc;m thanh</strong><br />\r\n&middot;K&ecirc;nh &acirc;m thanh :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.0<br />\r\n&middot;Th&ocirc;ng tin th&ecirc;m :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Waves MaxxAudio<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Đĩa quang</strong><br />\r\n&middot;C&oacute; sẵn đĩa quang :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kh&ocirc;ng<br />\r\n&middot;&nbsp;<strong>T&iacute;nh năng mở rộng &amp; cổng giao tiếp</strong><br />\r\n&middot;Cổng giao tiếp : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3 x USB 3.0, Mini Display port, HDMI.<br />\r\n&middot;T&iacute;nh năng mở rộng :&nbsp;&nbsp;&nbsp;Multi TouchPad<br />\r\n&middot;&nbsp;Bluetooth : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kh&ocirc;ng<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Giao tiếp mạng</strong><br />\r\n&middot;LAN : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;10/100Mbps<br />\r\n&middot;Chuẩn Wi-Fi :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;802.11b/g/n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Card Reader</strong><br />\r\n&middot;Khe đọc thẻ nhớ :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SD<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Webcam</strong><br />\r\n&middot;Độ ph&acirc;n giải :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.0 MP<br />\r\n&middot;Th&ocirc;ng tin th&ecirc;m :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HD webcam<br />\r\n&middot;&nbsp;<strong>Hệ điều h&agrave;nh, phầm mềm c&oacute; sẵn</strong><br />\r\n&middot;Hệ điều h&agrave;nh : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Win 10<br />\r\n&middot;Phần mềm c&oacute; sẵn :&nbsp;&nbsp;&nbsp;&nbsp; Full<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>PIN/Battery</strong><br />\r\n&middot;Loại pin : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4 cell &nbsp;(Sử dụng li&ecirc;n tục 3h00 - đ&atilde; test)<br />\r\n&middot;Kiểu pin :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rời<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Th&ocirc;ng tin kh&aacute;c</strong><br />\r\n&middot;Đ&egrave;n b&agrave;n ph&iacute;m : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;C&oacute;<br />\r\n&middot;B&agrave;n ph&iacute;m số :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kh&ocirc;ng<br />\r\n&middot;Phụ kiện k&egrave;m theo :&nbsp; &nbsp; &nbsp;Sạc Zin theo m&aacute;y&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&middot;&nbsp; &nbsp; &nbsp; T<strong>rọng lượng</strong><br />\r\n&middot;Trọng lượng :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1,35 Kg<br />\r\n&middot;Chất liệu :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nh&ocirc;m</p>\r\n', 2, 100, 0, 0, 6200000, 6100000, '2021-07-06 20:44:43', '1', '2021-07-06 20:44:43', '1', 1, 1),
(31, 3, 'Mainboard macbook pro mid 2010', 'mainboard-macbook-pro-mid-2010', '2504ddfdbd3e4874cca5c3a5f0a3e8d0.jpg', 'eb400b1789743afe720f6759a333ebaa.jpg', 'Mainboard macbook pro 2010 còn chạy được.', '<p>H&igrave;nh ảnh thực tế</p>\r\n\r\n<p><img alt=\"a28e846d79c0829edbd1\" src=\"http://huyminhcantho.com/uploads/shops/2019_06/a28e846d79c0829edbd1.jpg\" style=\"height:309px; width:550px\" /></p>\r\n\r\n<p><img alt=\"6f33eaea1747ec19b556\" src=\"http://huyminhcantho.com/uploads/shops/2019_06/6f33eaea1747ec19b556.jpg\" style=\"height:309px; width:550px\" /></p>\r\n\r\n<p>Main c&ograve;n mới. Chưa sữa chữa.<br />\r\nTặng CPU Core 2 v&agrave; quạt k&egrave;m tr&ecirc;n main.</p>\r\n\r\n<p><img alt=\"b077629e9f33646d3d22\" src=\"http://huyminhcantho.com/uploads/shops/2019_06/b077629e9f33646d3d22.jpg\" style=\"height:309px; width:550px\" /></p>\r\n', 2, 10, 0, 0, 900000, 900000, '2021-07-06 21:19:38', '1', '2021-07-06 21:19:38', '1', 1, 1),
(32, 3, 'Laptop xách tay', 'laptop-xach-tay', 'ef6dffeb23d66da0c620b70a7da06e3f.jpg', 'b83d640be92e7bc2cd5963ed7c01ff7a.jpg', 'Dell Latitude E7250 | Core i7 5600U | Ram 8GB | SSD 256GB |12.5 inch HD | intel HD Graphic 5500', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Vỏ m&aacute;y</td>\r\n			<td>Carbon, Nh&ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Intel Core I7 5600U @ 2.60 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM</td>\r\n			<td>8GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ổ CỨNG</td>\r\n			<td>256GB SSD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VGA</td>\r\n			<td>Intel HD Graphics 5500</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Agrave;N H&Igrave;NH</td>\r\n			<td>12.5 inch HD 1366x768</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PIN</td>\r\n			<td>Tr&ecirc;n 3 giờ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>TRỌNG LƯỢNG</td>\r\n			<td>1 - 2kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HỆ ĐIỀU H&Agrave;NH</td>\r\n			<td>Windows 10</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt=\"laptop tcc dell latitude E7250 3\" src=\"http://huyminhcantho.com/uploads/shops/laptop-tcc-dell-latitude-e7250-3.jpg\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật Laptop Dell Latitude E7250 Core I7 :</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Dell Latitude E7250 Xuất xứ x&aacute;ch tay USA</strong></li>\r\n	<li>Thiết kế vỏ carbon nguy&ecirc;n khối</li>\r\n	<li>CPU : Intel Core I7 5600U @ 2.60GHz</li>\r\n	<li>&lrm;RAM : 8GB DDR3L . Max 16GB</li>\r\n	<li>Ổ CỨNG : SSD 240GB . N&acirc;ng cấp kh&ocirc;ng giới hạn</li>\r\n	<li>M&agrave;n h&igrave;nh : 12.5inch độ ph&acirc;n giải FHD</li>\r\n	<li>VGA : Intel HD Graphics 5500</li>\r\n	<li>Pin : Good 3h</li>\r\n	<li>Hệ điều h&agrave;nh : Windows 10 64bit</li>\r\n	<li>Sạc zin theo m&aacute;y</li>\r\n	<li>Khuyến M&atilde;i : T&uacute;i Chống Sốc . Chuột Kh&ocirc;ng D&acirc;y</li>\r\n	<li>Bảo h&agrave;nh 6 th&aacute;ng . Hỗ trợ c&agrave;i đặt + Vệ sinh trọn đời m&aacute;y miễn ph&iacute;</li>\r\n	<li>T&igrave;nh trạng sản phẩm zin nguy&ecirc;n bản . M&aacute;y đẹp tr&ecirc;n 97%</li>\r\n</ul>\r\n', 2, 10, 0, 0, 6900000, 6900000, '2021-07-06 21:20:37', '1', '2021-07-06 21:20:37', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `db_province`
--

INSERT INTO `db_province` (`id`, `name`, `type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(1, 'Banner1', 'banner-1', '2.jpg', '2021-04-13 21:27:24', '1', '2021-04-13 23:42:42', '', 0, 1),
(2, 'Banner 2', 'Banner-2', 'default.png', '2021-04-13 23:45:04', '1', '2021-04-13 23:45:44', '', 0, 1),
(3, 'trang chu 1', 'trang-chu', 'default.png', '2021-04-13 17:05:52', '1', '2021-04-13 17:07:18', '', 0, 1),
(4, 'slider trang chu 2', 'slider-trang-chu-2', 'iphone-banner.jpg', '2021-04-03 17:06:38', '1', '2021-04-13 17:06:38', '1', 0, 1),
(5, 'slider trang chu 3', 'slider-trang-chu-3', 'baner-web-huy-minh_1.jpg', '2021-04-13 17:06:58', '1', '2021-07-05 15:48:28', '', 1, 1),
(6, 'ss', 'ss', 'icon_142e7.png', '2021-04-11 17:08:07', '1', '2021-04-11 17:08:07', '1', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'ADMIN', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '0123456789', 'Cổ Nhuế, Bắc Từ Liêm, Hà Nội', 'user-group.png', '2021-04-23 09:16:16', 1, 1),
(2, 'Quản lý', 'quanly', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'quanly@gmail.com', 1, '0739119790', 'Nam Định', 'bc0d4c186522764fc9457b7bacb635e4.png', '2021-04-23 22:08:18', 1, 1),
(3, 'Nhân viên', 'nhanvien', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 1, '019101010', 'Đông Anh', 'b78af1dc3e1098f71e7cd607c49f5d51.png', '2021-04-24 08:20:41', 1, 1),
(4, 'Lê Bá Anh Đức', 'nhanviena', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 1, '0796349185', 'Thanh Hóa', '403ceb0ed6fdb72494bbd2ac39182b04.png', '2021-04-25 22:08:18', 1, 1),
(6, 'Nguyễn Văn B', 'nhanvienb', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 0, '0982875832', 'Thanh Hóa', 'user.png', '2021-04-26 09:18:18', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Toàn quyền', '2021-04-23 23:29:15', 1, '2021-04-23 23:29:15', 4, 1, 1, 1),
(2, 'Nhân viên', '2021-04-23 23:29:21', 1, '2021-04-23 23:29:21', 4, 1, 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_categorypost`
--
ALTER TABLE `db_categorypost`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorypost` (`id_categorypost`);

--
-- Chỉ mục cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Chỉ mục cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Chỉ mục cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Chỉ mục cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer` (`producer`),
  ADD KEY `catid` (`catid`);

--
-- Chỉ mục cho bảng `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Chỉ mục cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `db_categorypost`
--
ALTER TABLE `db_categorypost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `db_content`
--
ALTER TABLE `db_content`
  ADD CONSTRAINT `categorypost` FOREIGN KEY (`id_categorypost`) REFERENCES `db_categorypost` (`id`);

--
-- Các ràng buộc cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `db_order_ibfk_2` FOREIGN KEY (`province`) REFERENCES `db_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_order_ibfk_3` FOREIGN KEY (`district`) REFERENCES `db_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_order_ibfk_4` FOREIGN KEY (`customerid`) REFERENCES `db_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `db_orderdetail_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `db_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_orderdetail_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `db_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD CONSTRAINT `db_product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `db_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `db_producer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `db_usergroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
