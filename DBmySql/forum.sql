-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 03, 2020 lúc 10:26 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `forum`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cá Cảnh', 'ca-canh', 1, '2019-09-12 00:52:37', '2019-12-14 08:01:09'),
(2, 'Cây Cảnh', 'cay-canh', 1, '2019-09-12 01:35:02', '2019-10-13 10:02:08'),
(3, 'Chim Cảnh', 'chim-canh', 1, '2019-10-13 10:01:59', '2019-10-13 10:01:59'),
(4, 'Phụ Kiện', 'phu-kien', 1, '2019-10-13 10:02:31', '2019-10-13 10:02:31'),
(5, 'Mồi Chim Cá', 'moi-chim-ca', 1, '2019-10-13 10:03:15', '2019-10-13 10:03:15'),
(18, 'Hội Thi', 'hoi-thi', 1, '2019-12-15 07:43:38', '2019-12-15 07:43:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idUser` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `idUser`, `email`, `address`, `phone`, `active`, `created_at`, `updated_at`) VALUES
(3, 25, 'trancuong.iot@gmail.com', 'Thanh Khê - Đà Nẵng', '0908252322', 0, '2019-10-13 13:57:26', '2019-10-19 09:14:46'),
(4, 9, 'email8@gmail.com', '82 Nguyễn Lương Bằng - Đà Nẵng', '0377597388', 1, '2019-10-16 09:37:45', '2019-10-16 09:37:45'),
(5, 25, 'trancuong.iot@gmail.com', '82 Nguyễn Lương Bằng - Đà Nẵng', '0905664260', 0, '2019-10-19 09:14:46', '2019-10-19 11:07:27'),
(6, 25, 'trancuong.iot@gmail.com', '03 Quang Trung', '0908252322', 0, '2019-10-19 11:07:27', '2019-12-16 04:06:23'),
(7, 25, 'trancuong.iot@gmail.com', 'Thanh Khê - Đà Nẵng', '0905664260', 1, '2019-12-16 04:06:23', '2019-12-16 04:06:23'),
(8, 35, 'khaanh2611@gmail.com', '03 Quang Trung', '0935356525', 1, '2019-12-30 08:10:23', '2019-12-30 08:10:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `menuType` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_28_132638_create_users_table', 1),
(2, '2019_08_28_133011_create_products_table', 1),
(3, '2019_08_28_133056_create_product_types_table', 1),
(4, '2019_08_28_133155_create_order_details_table', 1),
(5, '2019_08_28_133219_create_orders_table', 1),
(6, '2019_08_28_133336_create_comments_table', 1),
(7, '2019_08_28_135143_create_topics_table', 1),
(8, '2019_08_28_135215_create_topic_types_table', 1),
(9, '2019_08_28_140211_create_password_resets_table', 1),
(10, '2019_08_28_140731_create_categories_table', 1),
(11, '2019_08_28_142839_create_customers_table', 1),
(12, '2019_08_28_145118_create_menus_table', 1),
(13, '2019_08_28_145435_create_webs_table', 1),
(14, '2019_08_30_081058_create_webconfigs_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idOrder` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `idOrder`, `idProduct`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(80, 50, 34, 6, 100000, '2019-10-15 17:00:50', '2019-10-15 17:00:50'),
(81, 51, 34, 1, 100000, '2019-10-16 09:36:49', '2019-10-16 09:36:49'),
(82, 52, 37, 1, 200000, '2019-10-16 09:37:52', '2019-10-16 09:37:52'),
(83, 53, 40, 1, 575000, '2019-10-19 06:38:34', '2019-10-19 06:38:34'),
(84, 53, 48, 1, 200000, '2019-10-19 06:38:34', '2019-10-19 06:38:34'),
(85, 53, 45, 4, 20000, '2019-10-19 06:38:34', '2019-10-19 06:38:34'),
(86, 53, 41, 5, 289000, '2019-10-19 06:38:34', '2019-10-19 06:38:34'),
(87, 54, 34, 5, 100000, '2019-10-19 09:15:01', '2019-10-19 09:15:01'),
(88, 55, 42, 4, 89000, '2019-10-19 09:20:54', '2019-10-19 09:20:54'),
(89, 56, 34, 4, 100000, '2019-10-19 11:07:46', '2019-10-19 11:07:46'),
(90, 56, 43, 7, 900000, '2019-10-19 11:07:47', '2019-10-19 11:07:47'),
(91, 57, 34, 6, 100000, '2019-10-30 06:15:10', '2019-10-30 06:15:10'),
(92, 58, 52, 1, 90000, '2019-12-16 04:06:47', '2019-12-16 04:06:47'),
(93, 58, 34, 50, 100000, '2019-12-16 04:06:47', '2019-12-16 04:06:47'),
(94, 59, 33, 10, 990000, '2019-12-20 07:50:54', '2019-12-20 07:50:54'),
(95, 60, 34, 8, 100000, '2019-12-20 08:51:55', '2019-12-20 08:51:55'),
(96, 61, 33, 7, 990000, '2019-12-27 10:33:26', '2019-12-27 10:33:26'),
(97, 64, 46, 7, 25000, '2019-12-30 08:10:35', '2019-12-30 08:10:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code_order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idUser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monney` double NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code_order`, `idUser`, `name`, `address`, `email`, `phone`, `monney`, `message`, `status`, `created_at`, `updated_at`) VALUES
(51, 'order585206545', '25', 'Cường Trần', 'Thanh Khê - Đà Nẵng', 'trancuong.iot@gmail.com', '0908252322', 120000, 'Cảm ơn', 2, '2019-10-16 09:36:49', '2019-10-16 10:29:03'),
(52, 'order100879741', '9', 'Nguoi dung 8', '82 Nguyễn Lương Bằng - Đà Nẵng', 'email8@gmail.com', '0377597388', 220000, 'ok', 2, '2019-10-16 09:37:52', '2019-10-16 10:52:26'),
(53, 'order39596546', '25', 'Cường Trần', 'Thanh Khê - Đà Nẵng', 'trancuong.iot@gmail.com', '0908252322', 2320000, 'Giao nhanh cho tôi', 2, '2019-10-19 06:38:34', '2019-10-19 07:11:27'),
(54, 'order170305421', '25', 'Cường Trần', '82 Nguyễn Lương Bằng - Đà Nẵng', 'trancuong.iot@gmail.com', '0905664260', 520000, 'OK', 2, '2019-10-19 09:15:01', '2019-10-19 09:16:12'),
(55, 'order1355981713', '25', 'Cường Trần', 'Thanh Khê - Đà Nẵng', 'trancuong.iot@gmail.com', '0908252322', 376000, 'ok', 2, '2019-10-19 09:20:54', '2019-10-19 11:11:23'),
(56, 'order1028649619', '25', 'Cường Trần', '03 Quang Trung', 'trancuong.iot@gmail.com', '0908252322', 6720000, 'Cảm ơn', 2, '2019-10-19 11:07:46', '2019-12-14 07:14:44'),
(57, 'order1699365684', '25', 'Cường Trần', '03 Quang Trung', 'trancuong.iot@gmail.com', '0908252322', 620000, NULL, 2, '2019-10-30 06:15:10', '2019-12-16 04:10:26'),
(58, 'order1053194257', '25', 'Cường Trần', 'Thanh Khê - Đà Nẵng', 'trancuong.iot@gmail.com', '0905664260', 5110000, 'abc', 2, '2019-12-16 04:06:47', '2019-12-30 11:13:37'),
(59, 'order1846436360', '25', 'Cường Trần', 'Thanh Khê - Đà Nẵng', 'trancuong.iot@gmail.com', '0905664260', 9920000, NULL, 1, '2019-12-20 07:50:54', '2019-12-27 10:31:15'),
(60, 'order1722340070', '25', 'Cường Trần', 'Thanh Khê - Đà Nẵng', 'trancuong.iot@gmail.com', '0905664260', 820000, NULL, 1, '2019-12-20 08:51:55', '2019-12-27 10:32:27'),
(61, 'order1244922932', '25', 'Cường Trần', 'Thanh Khê - Đà Nẵng', 'trancuong.iot@gmail.com', '0905664260', 6950000, NULL, 1, '2019-12-27 10:33:26', '2019-12-27 10:33:55'),
(62, 'order76147716', '25', 'Cường Trần', 'Thanh Khê - Đà Nẵng', 'trancuong.iot@gmail.com', '0905664260', 6950000, NULL, 1, '2019-12-27 10:33:30', '2019-12-27 10:35:00'),
(63, 'order465604350', '25', 'Cường Trần', 'Thanh Khê - Đà Nẵng', 'trancuong.iot@gmail.com', '0905664260', 6950000, NULL, 0, '2019-12-27 10:33:34', '2019-12-27 10:33:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `promotional` float NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idCategories` int(11) NOT NULL,
  `idProductType` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `quantity`, `price`, `promotional`, `image`, `idCategories`, `idProductType`, `status`, `created_at`, `updated_at`) VALUES
(33, 'Cá rồng huyết long', 'ca-rong-huyet-long', '<h2>Nu&ocirc;i c&aacute; huyết long hay c&aacute; rồng huyết long l&agrave; một th&uacute; chơi kh&aacute; xa xỉ, khi m&agrave; mỗi con c&aacute; cảnh loại n&agrave;y đắt bằng một chiếc xe m&aacute;y, thậm ch&iacute; ngang ngửa căn nh&agrave;.</h2>\r\n\r\n<ul>\r\n	<li><a href=\"https://soha.vn/thuong-lai-mua-ca-ca-tra-chet-ban-sang-trung-quoc-20180407120024386.htm\" title=\"Thương lái mua cả cá tra... chết bán sang Trung Quốc\">Thương l&aacute;i mua cả c&aacute; tra... chết b&aacute;n sang Trung Quốc &nbsp;</a></li>\r\n	<li><a href=\"https://soha.vn/soc-my-ap-muc-thue-cao-khung-khiep-len-ca-tra-viet-nam-20180318001837083.htm\" title=\"Sốc: Mỹ áp mức thuế cao khủng khiếp lên cá tra Việt Nam\">Sốc: Mỹ &aacute;p mức thuế cao khủng khiếp l&ecirc;n c&aacute; tra Việt Nam &nbsp;</a></li>\r\n	<li><a href=\"https://soha.vn/dai-gia-thuy-san-lon-nhat-nhat-ban-mua-ca-tra-viet-2018031515312033.htm\" title=\"Đại gia thủy sản lớn nhất Nhật Bản mua cá tra Việt\">Đại gia thủy sản lớn nhất Nhật Bản mua c&aacute; tra Việt &nbsp;</a></li>\r\n</ul>\r\n\r\n<p>Thời gian gần đ&acirc;y, tr&agrave;o lưu nu&ocirc;i c&aacute; cảnh ng&agrave;y c&agrave;ng nở rộ với nhiều loại c&aacute; độc lạ kh&aacute;c nhau, k&egrave;m với mức chi ph&iacute; kh&ocirc;ng hề rẻ. Một trong số đ&oacute; l&agrave; th&uacute; chơi&nbsp;<a href=\"https://soha.vn/ca-huyet-long.html\" target=\"_blank\" title=\"cá huyết long\">c&aacute; huyết long</a>, giống c&aacute; qu&yacute; hiếm v&agrave; được đ&aacute;nh gi&aacute; thuộc h&agrave;ng cao cấp.</p>\r\n\r\n<p><a href=\"https://sohanews.sohacdn.com/2018/5/21/huyet-long-15268964664461710129889.jpg\" target=\"_blank\" title=\"Cá huyết long hay cá rồng huyết long nổi bật nhờ sắc đỏ bên ngoài, hình dáng cân đối. Trên thị trường, chúng được đánh giá là loại cá cảnh cao cấp.\"><img alt=\"Cá rồng huyết long có gì đặc biệt khiến đại gia Hà Nội chi bạc triệu mua về nuôi chơi? - Ảnh 1.\" id=\"img_e9512590-5cdc-11e8-84e9-5f30966a6978\" src=\"https://sohanews.sohacdn.com/thumb_w/660/2018/5/21/huyet-long-15268964664461710129889.jpg\" title=\"Cá rồng huyết long có gì đặc biệt khiến đại gia Hà Nội chi bạc triệu mua về nuôi chơi? - Ảnh 1.\" /></a></p>\r\n\r\n<p>C&aacute; huyết long hay c&aacute; rồng huyết long nổi bật nhờ sắc đỏ b&ecirc;n ngo&agrave;i, h&igrave;nh d&aacute;ng c&acirc;n đối. Tr&ecirc;n thị trường, ch&uacute;ng được đ&aacute;nh gi&aacute; l&agrave; loại c&aacute; cảnh cao cấp.</p>\r\n\r\n<p>Anh Nguyễn Ho&agrave;i Th&aacute;i (chủ si&ecirc;u thị c&aacute; cảnh c&oacute; tiếng ở H&agrave; Nội) cho biết, c&aacute; rồng huyết long c&oacute; xuất xứ từ Indonesia. So với c&aacute;c loại c&aacute; rồng như kim long, ng&acirc;n long, thanh long&hellip; th&igrave; huyết long l&agrave; lo&agrave;i đứng đầu d&ograve;ng c&aacute; rồng về cả m&agrave;u sắc cũng như gi&aacute; trị.</p>\r\n\r\n<p>Đặc điểm kh&aacute;c biệt của loại c&aacute; n&agrave;y l&agrave; sự thay đổi m&agrave;u sắc từ khi c&aacute; c&ograve;n nhỏ đến khi trưởng th&agrave;nh. To&agrave;n bộ th&acirc;n c&aacute; c&oacute; m&agrave;u đỏ s&aacute;ng, lớp vảy tr&ecirc;n to&agrave;n th&acirc;n đều, &oacute;ng &aacute;nh đẹp mắt.</p>\r\n\r\n<p>T&ugrave;y theo chất lượng, k&iacute;ch thước m&agrave; mỗi con c&aacute; c&oacute; gi&aacute; b&aacute;n trung b&igrave;nh 1.000 &ndash; 2.000 đ&ocirc; la/con (khoảng 20 &ndash; 50 triệu đồng/con), gấp h&agrave;ng trăm lần so với gi&aacute; của nhiều loại c&aacute; cảnh th&ocirc;ng thường.</p>\r\n\r\n<p>Thậm ch&iacute;, thị trường từng c&oacute; những con&nbsp;<a href=\"https://soha.vn/ca-huyet-long.html\" target=\"_blank\" title=\"cá huyết long\">c&aacute; huyết long</a>&nbsp;rao b&aacute;n với mức tr&ecirc;n 1 tỷ đồng v&igrave; trọng lượng lớn (tr&ecirc;n 2kg), đột biến về m&agrave;u sắc hoặc h&igrave;nh d&aacute;ng, thuộc h&agrave;ng qu&yacute; hiếm.</p>', 10, 990000, 0, '13-10-19-1757502145-ca-rong.jpg', 1, 1, 1, '2019-10-13 10:15:40', '2019-12-11 16:52:28'),
(34, 'Cá betta', 'ca-betta', '<p><strong>C&aacute;&nbsp;<a href=\"http://thienduongcacanh.com/tags/betta/\">betta</a>,&nbsp;<a href=\"http://thienduongcacanh.com/tags/?t=c%C3%A1+xi%C3%AAm\">c&aacute; xi&ecirc;m</a>&nbsp;đ&aacute; l&agrave; 1 trong những d&ograve;ng c&aacute; c&oacute; nhiều m&agrave;u sắc đa dạng, với đặc th&ugrave; v&acirc;y kỳ căng tr&ograve;n đẹp v&agrave; c&oacute; bản t&iacute;nh h&aacute;u đ&aacute; nổi tiếng nhất trong c&aacute;c d&ograve;ng c&aacute; cảnh. Được nhiều d&acirc;n chơi nu&ocirc;i l&agrave;m cảnh kết hợp với th&uacute; vui cho c&aacute; chọi nhau</strong>.<br />\r\n<br />\r\n1.&nbsp;<strong>Giới thiệu th&ocirc;ng tin c&aacute; betta, c&aacute; xi&ecirc;m đ&aacute;</strong><br />\r\n- T&ecirc;n khoa học: Betta spp<br />\r\n<br />\r\n- Chi tiết ph&acirc;n loại:<br />\r\nBộ: Perciformes (bộ c&aacute; vược)<br />\r\nHọ: Osphronemidae (họ c&aacute; tai tượng)<br />\r\nThuộc lo&agrave;i: Nguồn gốc&nbsp;<em>c&aacute; xi&ecirc;m</em>&nbsp;thuộc lo&agrave;i&nbsp;<em>Betta splendens Regan</em>, 1910, trải qua h&agrave;ng trăm năm chọn lọc v&agrave; lai tạo, hiện rất hiếm v&agrave; kh&oacute; x&aacute;c định lo&agrave;i c&aacute; xi&ecirc;m thuần chủng tr&ecirc;n thị trường. C&aacute;c lo&agrave;i c&oacute; thể lai tạo hay tạp giao bao gồm: B. smaragdina Ladiges, 1972; B. imbellis Ladiges, 1975; B. stiktos Tan &amp; Ng, 2005; B. taeniata Regan, 1910; B. pugnax (Cantor, 1849); B. coccina Vierke, 1979 ...<br />\r\nT&ecirc;n tiếng Việt kh&aacute;c:&nbsp;<strong>C&aacute;&nbsp;<a href=\"http://thienduongcacanh.com/tags/?t=lia+thia\">Lia thia</a></strong>;&nbsp;<strong>C&aacute; Thia xi&ecirc;m</strong>;&nbsp;<strong>C&aacute; Chọi</strong>;&nbsp;<strong>C&aacute; Phướn</strong><br />\r\nT&ecirc;n tiếng Anh kh&aacute;c: Siamese fighting fish; Fighting fish<br />\r\nNguồn gốc: Nguồn c&aacute; từ khai th&aacute;c tự nhi&ecirc;n (<a href=\"http://thienduongcacanh.com/threads/ca-thien-duong-paradise-fish.451/\">lia thia đồng</a>) v&agrave; nhập nội (lia thia xi&ecirc;m) c&aacute;ch đ&acirc;y hơn 100 năm theo ch&acirc;n c&aacute;c thương l&aacute;i người Hoa (Đo&agrave;n Khắc Độ, 2007). C&aacute; đ&atilde; sản xuất giống phổ biến trong nước từ thập ni&ecirc;n 40 &ndash; 50<br />\r\n<br />\r\n- T&ecirc;n Tiếng Anh:<strong>Betta</strong><br />\r\n<br />\r\n- T&ecirc;n Tiếng Việt: C&aacute; Xi&ecirc;m;&nbsp;<a href=\"http://thienduongcacanh.com/tags/?t=c%C3%A1+%C4%91%C3%A1\">C&aacute; Đ&aacute;</a><br />\r\n<br />\r\n- Nguồn c&aacute;:Sản xuất nội địa<br />\r\n<br />\r\n- Số kiểu h&igrave;nh:8<br />\r\n<br />\r\n<em>H&igrave;nh ảnh c&aacute; betta, c&aacute; xi&ecirc;m đ&aacute;</em><br />\r\n<img alt=\"Cá Cảnh\" src=\"https://lh4.googleusercontent.com/-JU4A4O1bp1Y/UfywYFQ7LyI/AAAAAAAAAKc/_yVuDOVJuAo/s500/ca%2520betta.jpg\" /><br />\r\n<br />\r\n2.&nbsp;<strong>Đặc điểm sinh học&nbsp;</strong><strong>c&aacute; betta, c&aacute; xi&ecirc;m đ&aacute;</strong><br />\r\n- Ph&acirc;n bố:Một số nước Đ&ocirc;ng Nam &Aacute; &hellip;<br />\r\n<br />\r\n- Chiều d&agrave;i c&aacute; (cm):5 &ndash; 7,5<br />\r\n<br />\r\n- Nhiệt độ nước (C):24 &ndash; 30<br />\r\n<br />\r\n- Độ cứng nước (dH):5 &ndash; 20<br />\r\n<br />\r\n- Độ pH:6,0 &ndash; 8,0<br />\r\n<br />\r\n- T&iacute;nh ăn:Ăn tạp<br />\r\n<br />\r\n- H&igrave;nh thức sinh sản:Đẻ trứng<br />\r\n<br />\r\n- Chi tiết đặc điểm sinh học:<br />\r\nPh&acirc;n bố: Đ&ocirc;ng Nam &Aacute;: Th&aacute;i Lan, Campuchia, Malaysia, Indonesia, Brunei, Việt Nam ...<br />\r\nTầng nước ở: Mọi tầng nước<br />\r\nSinh sản: C&aacute; dễ sinh sản, đẻ trứng tổ bọt. C&aacute; đực chăm s&oacute;c tổ trứng v&agrave; c&aacute; con, cần t&aacute;ch c&aacute; c&aacute;i ra ri&ecirc;ng để tr&aacute;nh c&aacute; mẹ ăn trứng. Trứng nở sau 24 &ndash; 48 giờ, c&aacute; bột ti&ecirc;u hết no&atilde;n ho&agrave;ng sau 2 &ndash; 3 ng&agrave;y. C&aacute; bột c&oacute; cỡ miệng nhỏ th&iacute;ch hợp ăn lu&acirc;n tr&ugrave;ng, bo bo ...</p>', 100, 100000, 0, '13-10-19-943421789-ca-betta.jpg', 1, 2, 1, '2019-10-13 10:18:02', '2019-10-13 10:18:02'),
(35, 'Chim chào mào', 'chim-chao-mao', '<h2>Chim Ch&agrave;o m&agrave;o m&oacute;n qu&agrave; từ thi&ecirc;n nhi&ecirc;n!</h2>\r\n\r\n<p>Được tạo h&oacute;a t&ocirc; điểm bằng những n&eacute;t độc đ&aacute;o, với hai chấm son đỏ thắm dưới hai kh&oacute;e mắt, hai dải cườm đen đậm như chiếc khăn vắt qua cổ, x&otilde;a xuống trước ngực, ch&oacute;p m&agrave;o nhọn cao v&uacute;t tr&ecirc;n đỉnh đầu lu&ocirc;n hướng về ph&iacute;a trước&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"http://chimchaomao.vn/\" title=\"Chim chào mào\">Chim ch&agrave;o m&agrave;o</a></strong>&nbsp;to&aacute;t l&ecirc;n một phong th&aacute;i uy nghi h&ugrave;ng dũng như &ldquo;bậc qu&acirc;n vương&rdquo; giữa mu&ocirc;n lo&agrave;i chim cảnh. Ngo&agrave;i tướng d&aacute;ng đẹp, lo&agrave;i chim n&agrave;y c&ograve;n sở hữu giọng h&oacute;t rất nhiều &acirc;m tiết v&agrave; gi&agrave;u giọng điệu đ&atilde; chinh phục niềm đam m&ecirc; của nhiều người c&oacute; th&uacute; chơi chim cảnh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kh&iacute; hậu - cuộc sống ng&agrave;y c&agrave;ng khắc nghiệt. Mọi người ai cũng c&oacute; xu hướng t&igrave;m đến thi&ecirc;n nhi&ecirc;n, hay mang n&oacute; đến gần m&igrave;nh hơn để thấy cuộc sống tươi vui hơn. Với niềm đam m&ecirc; ng&agrave;y c&agrave;ng mạnh mẽ, khiến cho phong tr&agrave;o chơi chim cảnh, chim chọi, chim h&oacute;t mấy năm gần đ&acirc;y ph&aacute;t triển v&ugrave;n vụt.</p>\r\n\r\n<h3>Cộng đồng chim ch&agrave;o m&agrave;o việt nam</h3>\r\n\r\n<p><img alt=\"PhÆ°Æ¡ng phÃ¡p chÄm sÃ³c giÃºp chÃ o mÃ o cÄng lá»­a Äáº¹p nháº¥t\" src=\"http://chimchaomao.vn/images/chao-mao-cang-lua.jpg\" /></p>\r\n\r\n<p><strong><a href=\"http://chimchaomao.vn/\" title=\"HIỆP HỘI CHIM CHÀO MÀO VIỆT NAM\">HIỆP HỘI CHIM CH&Agrave;O M&Agrave;O VIỆT NAM</a></strong>&nbsp;l&agrave; nơi tổng hợp v&agrave; chia sẻ những kinh nghiệm chơi chim Ch&agrave;o m&agrave;o, được chắc lọc v&agrave; tham khảo từ c&aacute;c nghệ nh&acirc;n chơi chim l&acirc;u năm. Ngo&agrave;i ra ch&uacute;ng t&ocirc;i c&ograve;n cung cấp c&aacute;c dịch vụ: Mua b&aacute;n chim Ch&agrave;o m&agrave;o - Lồng chim Ch&agrave;o m&agrave;o - Phụ kiện nu&ocirc;i Ch&agrave;o m&agrave;o (UY T&Iacute;N &ndash; ĐẢM BẢO &ndash; CHẤT LƯỢNG &ndash; GI&Aacute; CẠNH TRANH)</p>', 5, 3000000, 2850000, '13-10-19-468143710-chim-chao-mao.jpg', 3, 6, 1, '2019-10-13 10:20:06', '2019-10-13 10:40:17'),
(36, 'MỘT SỐ DÒNG VẸT', 'mot-so-dong-vet', '<p>Hầu hết mọi người khi mới bắt đầu tiếp x&uacute;c hoặc mới tập chơi&nbsp;<a href=\"http://yeuvet.com/\">vẹt</a>&nbsp;đều băn khoăn về việc lựa chọn lo&agrave;i n&agrave;o sẽ l&agrave; con cưng đầu l&ograve;ng của m&igrave;nh. Về cơ bản d&ograve;ng vẹt n&agrave;o cũng đ&aacute;ng y&ecirc;u cũng hay cũng đẹp v&agrave; c&oacute; thế mạnh v&agrave; yếu ri&ecirc;ng. Dưới đ&acirc;y Y&ecirc;u Vẹt sẽ giới thiệu một số d&ograve;ng vẹt phổ biến th&iacute;ch hợp cho người mới bắt đầu, mọi người c&ugrave;ng tham khảo :</p>\r\n\r\n<p><strong>1 .Yến Phụng &ndash;&nbsp;Vẹt Hồng K&ocirc;ng</strong></p>\r\n\r\n<p><a href=\"http://yeuvet.com/wp-content/uploads/2015/07/yen-phung.png\" title=\"\"><img alt=\"yen phung\" src=\"http://yeuvet.com/wp-content/uploads/2015/07/yen-phung.png\" /></a><br />\r\n<em>Ưu điểm :</em><br />\r\n&ndash; D&ograve;ng vẹt n&agrave;y c&oacute; rất nhiều m&agrave;u ,gi&aacute; th&agrave;nh rẻ , sức khỏe tốt &iacute;t b&ecirc;nh, k&iacute;ch thước nhỏ nhắn n&ecirc;n kh&aacute; nhanh, n&oacute;i nhiều v&agrave; tương đối tốt (điều kiện phải nu&ocirc;i v&agrave; dạy từ con non&nbsp;) &nbsp;xinh xắn ngộ nghĩnh, t&iacute;nh th&acirc;n thiện cao ,c&oacute; thể d&ugrave;ng freeflight . Đặc biệt yến phụng rấy dễ bắt cặp sinh sản.<br />\r\n<em>Nhược điểm :</em><br />\r\n&ndash; K&iacute;ch thước kh&aacute; gần như nhỏ nhất so với c&aacute;c loại kh&aacute;c ,IQ chỉ ở mức trung b&igrave;nh nhưng lại c&oacute; đặc t&iacute;nh n&ecirc;n kh&aacute; vất vả khi huấn luyện nhất l&agrave; đối với c&aacute;c tr&ograve; kh&oacute; y&ecirc;u cầu kỹ năng quan s&aacute;t v&agrave; lắng nghe.Tiếng k&ecirc;u nhỏ v&agrave; tương đối rủi ro khi&nbsp;freeflight.</p>\r\n\r\n<p><strong>2 . Cockatiels &ndash; Vẹt M&atilde; Lai</strong><br />\r\n<a href=\"http://yeuvet.com/wp-content/uploads/2015/07/vet-ma-lai.jpg\" title=\"\"><img alt=\"vet ma lai\" src=\"http://yeuvet.com/wp-content/uploads/2015/07/vet-ma-lai.jpg\" /></a><br />\r\n<em>-Ưu điểm .</em><br />\r\nL&ocirc;ng mềm mượt nữ t&iacute;nh, c&oacute; khả năng h&oacute;t theo nhạc cũng như bắt trước giọng c&aacute;c lo&agrave;i chim kh&aacute;c rất tốt .T&iacute;nh th&acirc;n thiện cao, c&oacute; thể d&ugrave;ng freeflight. gi&aacute; th&agrave;nh kh&aacute; rẻ, rất dễ bắt cặp sinh sản.<br />\r\n<em>-Nhược điểm :</em><br />\r\nDo c&aacute;c thế hệ trước bị lỗi gen n&ecirc;n hầu hết Cockatiels<strong>&nbsp;</strong>c&oacute; sức khỏe&nbsp;kh&aacute; yếu , n&oacute;i rất k&eacute;m .IQ ở mức&nbsp;trung b&igrave;nh.</p>\r\n\r\n<p><strong>3 , Vẹt Ngực Hồng, (đầu x&aacute;m đầu hồng )</strong><br />\r\n<a href=\"http://yeuvet.com/wp-content/uploads/2015/07/vet-nguc-hong.png\" title=\"\"><img alt=\"vet nguc hong\" src=\"http://yeuvet.com/wp-content/uploads/2015/07/vet-nguc-hong.png\" /></a><br />\r\n&ndash;&nbsp;<em>Ưu điểm :</em><br />\r\nVẹt Ngực Hồng c&oacute;&nbsp;m&agrave;u sắc sặc sỡ, khả năng n&oacute;i ở mưc trung b&igrave;nh , gi&aacute; th&agrave;nh rẻ ,&nbsp;sức khỏe tốt &iacute;t bệnh, IQ ở mức trung b&igrave;nh.<br />\r\n<em>&ndash; &nbsp;Nhược điểm :</em><br />\r\nƠ giai đoạn chim mới lớn rất xấu ,Đặc t&iacute;nh bảo vệ l&atilde;nh thổ cao n&ecirc;n nếu thả chung lồng rất dễ cắn nhau .kh&aacute; cộc t&iacute;nh&nbsp;, kỹ thuật bay rất k&eacute;m n&ecirc;n ko phải d&ograve;ng chim l&yacute; tưởng để thả bay freefligh.</p>\r\n\r\n<p><strong>4. Love bird<br />\r\n<a href=\"http://yeuvet.com/wp-content/uploads/2015/07/Love-Birds.jpg\" title=\"\"><img alt=\"Love-Birds\" src=\"http://yeuvet.com/wp-content/uploads/2015/07/Love-Birds.jpg\" /></a></strong><br />\r\n<em>&ndash; Ưu điểm :</em><br />\r\n<strong>Love bird&nbsp;</strong>rất&nbsp;xinh xắn dễ thương , nhiều m&agrave;u sắc .đặc t&iacute;nh th&acirc;n thiện , kh&aacute; trung th&agrave;nh với chủ. c&oacute; thể d&ugrave;ng cho freeflight .<br />\r\n<em>&ndash; Nhược điểm&nbsp;:</em><br />\r\nK&iacute;ch thước kh&aacute; nhỏ&nbsp;, khả năng bắt trước giọng rất k&eacute;m ,kh&aacute; ồn.</p>\r\n\r\n<p><strong>5. Vẹt M&aacute; V&agrave;ng v&agrave; Ringneck :<br />\r\n<a href=\"http://yeuvet.com/wp-content/uploads/2015/07/vet-ma-vang.jpg\" title=\"\"><img alt=\"vet ma vang\" src=\"http://yeuvet.com/wp-content/uploads/2015/07/vet-ma-vang.jpg\" /></a></strong><br />\r\n<em>&ndash; Ưu điểm :</em><br />\r\nVẹt M&aacute; V&agrave;ng v&agrave; Ringneck c&oacute; lớp l&ocirc;ng dạng sợi nhỏ n&ecirc;n rất mượt , đ&acirc;y l&agrave; 1 d&ograve;ng vẹt đu&ocirc;i d&agrave;i đẹp , c&oacute; khả năng n&oacute;i ở mức kh&aacute; , gi&aacute; tầm trung kh&ocirc;ng qu&aacute; đắt.<br />\r\nnhược điểm :<br />\r\n<em>&ndash; C</em>ục t&iacute;nh v&agrave; t&iacute;nh l&atilde;nh thổ cao n&ecirc;n thường cắn nhau khi nhốt chung lồng . kỹ thuật bay k&eacute;m rất &iacute;t được d&ugrave;ng trong freeflight.</p>\r\n\r\n<p><strong>6. Sun Conure<br />\r\n<a href=\"http://yeuvet.com/wp-content/uploads/2015/07/Sun-Conure.jpg\" title=\"\"><img alt=\"Sun Conure\" src=\"http://yeuvet.com/wp-content/uploads/2015/07/Sun-Conure.jpg\" /></a></strong><br />\r\n<em>&ndash; Ưu điểm :</em><br />\r\nSun Conure c&oacute; m&agrave;u sắc sặc sỡ ,đặc t&iacute;nh rất trung th&agrave;nh v&agrave; rất h&agrave;i hước, kỹ thuật bay tốt l&agrave; ứng của vi&ecirc;n thả bay freeflight .IQ ở trung b&igrave;nh , gi&aacute; th&agrave;nh rẻ so với c&aacute;c d&ograve;ng vẹt nhập<br />\r\n<em>&ndash; Nhược điểm :</em><br />\r\nKh&aacute; ồn, &acirc;m thanh ch&oacute;i tai , n&oacute;i k&eacute;m.</p>\r\n\r\n<p><strong>7. Vẹt X&aacute;m Ch&acirc;u Phi :</strong><br />\r\n<a href=\"http://yeuvet.com/wp-content/uploads/2015/07/vet-xam-chau-phi.png\" title=\"\"><img alt=\"vet xam chau phi\" src=\"http://yeuvet.com/wp-content/uploads/2015/07/vet-xam-chau-phi.png\" /></a><br />\r\n<em>&ndash; Ưu điểm :</em><br />\r\nVẹt X&aacute;m Ch&acirc;u Phi nằm trong nh&oacute;m cao vẹt c&oacute; IQ cao nhất &nbsp;, c&ugrave;ng với amazon đứng ở tốp số 1 về khả năng n&oacute;i. Tuy kỹ thuật bay trung b&igrave;nh nhưng c&oacute; thể d&ugrave;ng freeflight. D&ograve;ng vẹt nu&ocirc;i l&acirc;u sẽ rất t&igrave;nh cảm v&agrave; quấn chủ.<br />\r\n<em>&ndash; &nbsp;Nhược điểm :</em><br />\r\nVẹt X&aacute;m Ch&acirc;u Phi kh&ocirc;ng c&oacute; m&agrave;u sặc sỡ như c&aacute;c d&ograve;ng vẹt kh&aacute;c to&agrave;n th&acirc;n hầu như to&agrave;n m&agrave;u x&aacute;m n&ecirc;n k&eacute;n người th&iacute;ch. L&ocirc;ng nhiều bụi phấn .Tuy thả được bay freeflight nhưng do tập t&iacute;nh độc lập n&ecirc;n việc dạy bay tương đối kh&oacute; khăn. Gi&aacute; th&agrave;nh tương đối cao từ 700-1000 USD.</p>\r\n\r\n<p><strong>8. Cokatoo (Blue Eyed Cokatoo, Sunfu&nbsp;<a href=\"http://yeuvet.com/tag/cokatoo\">Cockatoo</a>, Moluca Ccckatoo&nbsp;&hellip; )</strong><br />\r\n<a href=\"http://yeuvet.com/wp-content/uploads/2015/07/blue-eyed.jpg\" title=\"\"><img alt=\"blue eyed\" src=\"http://yeuvet.com/wp-content/uploads/2015/07/blue-eyed.jpg\" /></a><a href=\"http://yeuvet.com/wp-content/uploads/2015/07/Sulphur-crested-Cockatoo.jpg\" title=\"\"><img alt=\"Sulphur-crested Cockatoo\" src=\"http://yeuvet.com/wp-content/uploads/2015/07/Sulphur-crested-Cockatoo.jpg\" /></a><br />\r\n<em>&ndash; Ưu điểm</em><br />\r\nD&ograve;ng Cockatoo được cho l&agrave; d&ograve;ng vẹt th&acirc;n thiện nhất, mức độ th&ocirc;ng minh chỉ sau những d&ograve;ng vẹt như x&aacute;m .C&aacute;nh v&agrave; đu&ocirc;i to n&ecirc;n ch&uacute;ng l&agrave; những ứng cử vi&ecirc;n h&agrave;ng đầu trong việc&nbsp;thả bay freeflight, Ch&uacute;ng c&oacute; chiếc m&agrave;o rất đẹp v&agrave; nữ t&iacute;nh , khả năng n&oacute;i tốt , th&iacute;ch m&ocirc;i trường s&ocirc;i động v&agrave; đặc biệt th&iacute;ch nhảy theo nhạc .<br />\r\n<em>&ndash; Nhược điểm :</em><br />\r\nCockatoo &nbsp;rất ồn , Lớp l&ocirc;ng c&oacute; bụi phấn nhiều n&ecirc;n kh&ocirc;ng&nbsp;th&iacute;ch hợp cho trẻ chơi, to&agrave;n th&acirc;n bao phủ lớp l&ocirc;ng trắng kh&aacute; dễ d&iacute;nh bẩn. Gi&aacute; th&agrave;nh ở mức cao ( từ 1000 &ndash; 1700 USD )<br />\r\nC&aacute;c bạn c&oacute; thể tham khảo th&ecirc;m th&ocirc;ng tin về d&ograve;ng vẹt n&agrave;y tai link dưới :<br />\r\n<em><a href=\"http://yeuvet.com/cac-dong-vet/vet-chau-uc/\">http://yeuvet.com/cac-dong-vet/vet-chau-uc/</a></em></p>', 10, 1590000, 0, '13-10-19-1774186623-vet.jpg', 3, 7, 1, '2019-10-13 10:23:45', '2019-10-13 10:40:33'),
(37, 'Lan rừng đẹp giá rẻ', 'lan-rung-dep-gia-re', '<h2>Lan ngọc điểm rừng mới về 03-09-2017.</h2>\r\n\r\n<p>C&acirc;y được bẻ về rất tươi v&agrave; đẹp<strong>&nbsp;gi&aacute; đ&atilde; hạ nhiệt rồi</strong>. anh chị nh&agrave; vườn tranh thủ lấy c&acirc;y giống về trồng cho kịp m&ugrave;a vụ nh&eacute;. Nhanh tay alo cho ch&acirc;u gấp đặt h&agrave;ng nha. H&agrave;ng đang c&oacute; sẵn tại nh&agrave; anh chị gh&eacute; qua xem c&acirc;y rồi mua lu&ocirc;n.</p>\r\n\r\n<p><strong>Gi&aacute; cả hiện nay đ&atilde; hạ, rẻ lại rồi &nbsp;sỉ v&agrave; lẻ. c&acirc;y giống về h&agrave;ng đều đều nh&eacute;. alo cho ch&acirc;u để lấy h&agrave;ng sớm về vườn cho kịp m&ugrave;a vụ.</strong></p>\r\n\r\n<p>Lan đai tr&acirc;u về đ&atilde; cắt tỉa gọn v&agrave; ph&acirc;n ra c&oacute; 3 loại:</p>\r\n\r\n<p><strong>-C&acirc;y lớn trung b&igrave;nh 5c&acirc;y/kg&nbsp;</strong></p>\r\n\r\n<p><strong>-C&acirc;y trung, trung &nbsp;b&igrave;nh 15c&acirc;y/kg&nbsp;</strong></p>\r\n\r\n<p><strong>-C&acirc;y b&eacute; tr&ecirc;n 20 c&acirc;y/kg&nbsp;</strong></p>\r\n\r\n<p>-Anh chị nh&agrave; vườn hoặc shop cửa h&agrave;ng &nbsp;c&oacute; nhu cầu mua hoặc đặt h&agrave;ng th&igrave; xin li&ecirc;n hệ trực tiếp cho ch&acirc;u, để b&aacute;o gi&aacute; mới mỗi ng&agrave;y v&agrave; chi tiết cụ thể nh&eacute;.</p>', 10, 200000, 0, '13-10-19-1295223514-lan.jpg', 2, 5, 1, '2019-10-13 10:25:40', '2019-10-13 10:25:40'),
(38, 'Hồ cá mini để bàn', 'ho-ca-mini-de-ban', '<h2>Việc c&oacute; một hồ c&aacute; mini để tr&ecirc;n b&agrave;n l&agrave;m việc&nbsp;sẽ gi&uacute;p kh&ocirc;ng gian học tập, l&agrave;m việc của bạn trở n&ecirc;n sống động v&agrave; gần gũi với thi&ecirc;n nhi&ecirc;n hơn hay l&agrave; d&ugrave;ng n&oacute; l&agrave;m m&oacute;n qu&agrave; xinh xắn để tặng cho bạn b&egrave; v&agrave; người th&acirc;n th&igrave; rất tuyệt</h2>\r\n\r\n<p><strong>Hồ c&aacute; mini</strong>&nbsp;c&oacute; rất nhiều loại v&agrave; kiểu d&aacute;ng kh&aacute;c nhau t&ugrave;y v&agrave;o vị tr&iacute;, kh&ocirc;ng gian m&agrave; bạn n&ecirc;n chọn một c&aacute;ch ph&ugrave; hợp nhất. Bể c&aacute; được nhiều người ưa chuộng nhất phải n&oacute;i l&agrave; bể c&aacute; tr&ograve;n thường d&ugrave;ng để nu&ocirc;i c&aacute; v&agrave;ng hay l&agrave; c&aacute; 7 m&agrave;u hay l&agrave;&nbsp;<a href=\"https://hocacanh.vn/ho-ca-mini\">hồ&nbsp;c&aacute; mini</a>&nbsp;khung gỗ nhỏ xinh l&agrave;m qu&agrave; tặng hoặc đặt ở b&agrave;n l&agrave;m việt th&igrave; tuyệt vời.<br />\r\nKhi bạn d&agrave;nh &iacute;t thời gian mỗi ng&agrave;y&nbsp;để cho c&aacute; ăn v&agrave; ngắm nh&igrave;n ch&uacute;ng tung tăng bơi lội sẽ mang lại cho bạn cảm hứng s&aacute;ng tạo để bắt đầu một ng&agrave;y l&agrave;m việc căng thẳng.</p>\r\n\r\n<h2>Th&ocirc;ng tin li&ecirc;n hệ&nbsp;<strong>Cảnh Dương Aquriums</strong></h2>\r\n\r\n<p><strong>212 L&atilde;nh Binh Thăng,&nbsp;Phường 13,&nbsp;Quận 11,&nbsp;TP. Hồ Ch&iacute; Minh</strong><br />\r\nThơi gian l&agrave;m việc: 8h-18h (Thứ 2 &ndash; Chủ nhật)<br />\r\n<strong>Hotline:</strong>&nbsp;0907101516 &ndash;&nbsp;0908773963<br />\r\n<strong>Email:</strong>&nbsp;<a href=\"mailto:hocacanh.vn@gmail.com\">hocacanh.vn@gmail.com</a></p>\r\n\r\n<h2><strong>Nhận ship h&agrave;ng (t&iacute;nh ph&iacute;) nội th&agrave;nh TP.HCM li&ecirc;n hệ 0908773963</strong><br />\r\n<strong>Cung cấp sỉ &amp; lẻ li&ecirc;n hệ 0908773963</strong></h2>\r\n\r\n<h3>Combo hồ&nbsp;c&aacute; mini&nbsp;40cm (Nhận l&agrave;m theo k&iacute;ch thước)</h3>\r\n\r\n<p>Combo hồ c&aacute; mini 40cm gi&aacute;&nbsp;<strong>550k &ndash; 1200k&nbsp;</strong>bao gồm:</p>\r\n\r\n<ul>\r\n	<li>Hồ mini 40x20x22 cm (k&iacute;nh 5ly, ch&acirc;n mica)</li>\r\n	<li>Lọc treo Sobo, Jebo, Up Aqua</li>\r\n	<li>Đ&egrave;n led kẹp, led g&aacute;c</li>\r\n	<li>Đồ trang tr&iacute;: c&acirc;y, c&aacute;t, đ&aacute; m&agrave;u, đ&aacute; thủy tinh, n&uacute;i đ&aacute; nh&acirc;n tạo</li>\r\n</ul>\r\n\r\n<p><a href=\"https://hocacanh.vn/wp-content/uploads/2016/09/ho-ca-mini-40-6.jpg\"><img alt=\"\" src=\"https://hocacanh.vn/wp-content/uploads/2016/09/ho-ca-mini-40-6-1024x1024.jpg\" style=\"height:1020px; width:1020px\" /></a></p>\r\n\r\n<p><a href=\"https://hocacanh.vn/wp-content/uploads/2016/09/ho-ca-mini-40-2.jpg\"><img alt=\"\" src=\"https://hocacanh.vn/wp-content/uploads/2016/09/ho-ca-mini-40-2-1024x1024.jpg\" style=\"height:1020px; width:1020px\" /></a></p>\r\n\r\n<p><a href=\"https://hocacanh.vn/wp-content/uploads/2016/09/ho-ca-mini-40-3.jpg\"><img alt=\"\" src=\"https://hocacanh.vn/wp-content/uploads/2016/09/ho-ca-mini-40-3-1024x1024.jpg\" style=\"height:1020px; width:1020px\" /></a></p>\r\n\r\n<p><a href=\"https://hocacanh.vn/wp-content/uploads/2018/01/ho-mini-chan-mica-nui-da-3.jpg\"><img alt=\"\" src=\"https://hocacanh.vn/wp-content/uploads/2018/01/ho-mini-chan-mica-nui-da-3.jpg\" style=\"height:1020px; width:1020px\" /></a></p>\r\n\r\n<p><a href=\"https://hocacanh.vn/wp-content/uploads/2018/01/ho-mini-chan-mica-nui-da-2.jpg\"><img alt=\"\" src=\"https://hocacanh.vn/wp-content/uploads/2018/01/ho-mini-chan-mica-nui-da-2.jpg\" style=\"height:1020px; width:1020px\" /></a></p>\r\n\r\n<p><a href=\"https://hocacanh.vn/wp-content/uploads/2018/01/ho-mini-chan-mica-nui-da-1.jpg\"><img alt=\"\" src=\"https://hocacanh.vn/wp-content/uploads/2018/01/ho-mini-chan-mica-nui-da-1.jpg\" style=\"height:1020px; width:1020px\" /></a></p>', 1, 450000, 0, '13-10-19-688607907-ho-ca.jpg', 4, 8, 1, '2019-10-13 10:45:28', '2019-10-13 10:45:28'),
(39, 'Giun huyết đông lạnh', 'giun-huyet-dong-lanh', '<p>Mua tr&ugrave;n huyết chất lượng ở đ&acirc;u gi&aacute; cả hợp l&yacute;, kh&ocirc;ng c&oacute; tạp chất? l&agrave; c&acirc;u hỏi rất nhiều anh chị nu&ocirc;i c&aacute; quan t&acirc;m. C&ugrave;ng Hải TiTan t&igrave;m hiểu địa chỉ b&aacute;n tr&ugrave;n huyết đ&ocirc;ng lạnh TP.HCM uy t&iacute;n chất lượng nh&eacute;!</p>\r\n\r\n<p><img alt=\"trung- huyet dong lanh\" src=\"https://www.felix.vn/wp-content/uploads/2018/10/trung-huyet.jpg\" style=\"height:1000px; width:750px\" /></p>\r\n\r\n<p>B&aacute;n tr&ugrave;n huyết đ&ocirc;ng lạnh TP.HCM uy t&iacute;n chất lượng</p>', 100, 120000, 0, '13-10-19-308821611-trung-huyet.jpg', 5, 12, 1, '2019-10-13 10:46:44', '2019-10-19 09:19:43'),
(40, 'Cá la hán đầu to', 'ca-la-han-dau-to', '<h2>La h&aacute;n l&agrave; lo&agrave;i c&aacute; cảnh được con người lai tạo th&agrave;nh c&ocirc;ng với chiếc đầu g&ugrave; c&ugrave;ng hoa văn v&ocirc; c&ugrave;ng sặc sỡ đ&atilde; trở th&agrave;nh niềm đam m&ecirc; của nhiều d&acirc;n chơi trong thời gian qua. Nếu c&oacute; hứng th&uacute; đặc biệt với lo&agrave;i c&aacute; n&agrave;y, bạn c&oacute; thể tham khảo tổng hợp bảng gi&aacute; c&aacute; la h&aacute;n đẹp nhất hiện nay để lựa chọn cho ph&ugrave; hợp nh&eacute;!</h2>\r\n\r\n<p><a href=\"http://cacanhphuclong.com.vn/wp-content/uploads/2014/08/Tong-hop-gia-ca-la-han-dep-nhat-tren-thi-truong-1.jpg\"><img alt=\"Tổng hợp giá cá la hán đẹp nhất trên thị trường 1\" src=\"http://cacanhphuclong.com.vn/wp-content/uploads/2014/08/Tong-hop-gia-ca-la-han-dep-nhat-tren-thi-truong-1.jpg\" style=\"height:497px; width:650px\" title=\"Tổng hợp giá cá la hán đẹp nhất trên thị trường\" /></a></p>\r\n\r\n<p><em>C&aacute; la h&aacute;n l&agrave; lo&agrave;i được sinh sản nh&acirc;n tạo ho&agrave;n to&agrave;n do s&aacute;ng tạo của con người</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&nbsp;1.&nbsp;Lịch sử biến động của c&aacute; la h&aacute;n</h2>\r\n\r\n<p>C&aacute; la h&aacute;n c&oacute; t&ecirc;n khoa học l&agrave; Cichlasoma bifasciatum, tiếng Anh l&agrave; Flowerhorn. Theo c&aacute;c t&agrave;i liệu từ Malaysia- qu&ecirc; hương của lo&agrave;i c&aacute; tr&ecirc;n th&igrave; c&aacute;c tay kinh doanh&nbsp;<em><strong><a href=\"http://cacanhphuclong.com.vn/\" title=\"cá cảnh\">c&aacute; cảnh</a></strong>&nbsp;</em>đ&atilde; mất nhiều năm từ thập ni&ecirc;n 90 thế kỷ 20 để lai tạo giữa nhiều lo&agrave;i c&aacute; thuộc họ r&ocirc; phi của v&ugrave;ng Trung Mỹ để kết hợp v&agrave; cho ra đời được c&aacute; la h&aacute;n v&ocirc; c&ugrave;ng độc đ&aacute;o n&agrave;y.</p>\r\n\r\n<p>Ngay khi đ&oacute;, c&aacute; la h&aacute;n đ&atilde; được người ta g&aacute;n cho những c&aacute;i t&ecirc;n như &ldquo;ph&aacute;t t&agrave;i la h&aacute;n&rdquo;, &ldquo;phong thủy la h&aacute;n&rdquo;. V&agrave; khi ra mắt tại Malaysia, Singapore v&agrave;o khoảng đầu năm 2001, ch&uacute;ng nhanh ch&oacute;ng tạo n&ecirc;n cơn sốt tại hai quốc gia n&agrave;y. &Ocirc;ng Wee Kon, Chủ tịch hội Sinh sản c&aacute; cảnh nhiệt đới Singapore đ&atilde; phải thốt l&ecirc;n: &ldquo;Chưa bao giờ trong lịch sử kinh doanh c&aacute; cảnh Singapore lại nhộn nhịp như vậy&rdquo;.</p>\r\n\r\n<p><a href=\"http://cacanhphuclong.com.vn/wp-content/uploads/2014/08/Tong-hop-gia-ca-la-han-dep-nhat-tren-thi-truong-2.jpg\"><img alt=\"Tổng hợp giá cá la hán đẹp nhất trên thị trường 2\" src=\"http://cacanhphuclong.com.vn/wp-content/uploads/2014/08/Tong-hop-gia-ca-la-han-dep-nhat-tren-thi-truong-2.jpg\" style=\"height:488px; width:650px\" title=\"Tổng hợp giá cá la hán đẹp nhất trên thị trường\" /></a></p>\r\n\r\n<p><em>Ngay khi mới ra đời, c&aacute; la h&aacute;n đ&atilde; được gắn liền với may mắn v&agrave; t&agrave;i lộc</em></p>\r\n\r\n<p>So với c&aacute;c lo&agrave;i c&aacute; từng l&agrave;m mưa l&agrave;m gi&oacute; tr&ecirc;n thị trường&nbsp;c&aacute; cảnh&nbsp;thế giới như&nbsp;c&aacute; đĩa, c&aacute; rồng- những lo&agrave;i c&aacute; sống ngo&agrave;i tự nhi&ecirc;n được thuần ho&aacute; trong c&aacute;c bể nu&ocirc;i th&igrave; c&aacute; la h&aacute;n l&agrave; lo&agrave;i ho&agrave;n to&agrave;n nh&acirc;n tạo n&ecirc;n ch&uacute;ng c&agrave;ng trở n&ecirc;n đắt gi&aacute;.</p>\r\n\r\n<p>Từ khoảng năm 2003, đ&atilde; c&oacute; những d&ograve;ng c&aacute; la h&aacute;n được nhập v&agrave;o Việt Nam, nhưng chỉ đến năm 2005, khi những đợt c&aacute; King Kamfa nhập từ Th&aacute;i Lan th&igrave; cơn sốt về lo&agrave;i c&aacute; n&agrave;y mới thực sự b&ugrave;ng ph&aacute;t. V&agrave; đến nay, rất nhiều người vẫn y&ecirc;u th&iacute;ch lo&agrave;i c&aacute; n&agrave;y v&agrave; mong muốn sở hữu ch&uacute;ng để sớm gặp may mắn, c&oacute; nhiều t&agrave;i lộc.</p>\r\n\r\n<p><a href=\"http://cacanhphuclong.com.vn/wp-content/uploads/2014/08/Tong-hop-gia-ca-la-han-dep-nhat-tren-thi-truong-3.jpg\"><img alt=\"Tổng hợp giá cá la hán đẹp nhất trên thị trường 3\" src=\"http://cacanhphuclong.com.vn/wp-content/uploads/2014/08/Tong-hop-gia-ca-la-han-dep-nhat-tren-thi-truong-3.jpg\" style=\"height:433px; width:650px\" title=\"Tổng hợp giá cá la hán đẹp nhất trên thị trường\" /></a></p>\r\n\r\n<p><em>Từ năm 2003, c&aacute; la h&aacute;n bắt đầu được nhập v&agrave;o Việt Nam v&agrave; tạo n&ecirc;n cơn sốt</em></p>\r\n\r\n<h2>2. Gi&aacute; c&aacute;c loại c&aacute; la h&aacute;n tr&ecirc;n thị trường hiện nay</h2>\r\n\r\n<p>Gi&aacute; c&aacute;c loại c&aacute; la h&aacute;n c&ograve;n t&ugrave;y thuộc v&agrave;o nhiều yếu tố kh&aacute;c nhau:</p>\r\n\r\n<p><strong>&ndash; K&iacute;ch thước v&agrave; trọng lượng:</strong>&nbsp;Th&ocirc;ng thường c&aacute; la h&aacute;n bột lu&ocirc;n c&oacute; gi&aacute; rẻ hơn so với la h&aacute;n trưởng th&agrave;nh v&igrave; ch&uacute;ng c&ograve;n rất b&eacute; v&agrave; khi nu&ocirc;i c&oacute; nhiều rủi ro. Do vậy m&agrave; gi&aacute; c&aacute; la h&aacute;n con chỉ khoảng từ 10- 20 000đ/con.</p>\r\n\r\n<p><strong>&ndash; C&aacute; l&ecirc;n đầu:</strong>&nbsp;Nếu c&aacute; của bạn l&ecirc;n đầu c&agrave;ng to th&igrave; gi&aacute; trị của ch&uacute;ng sẽ c&agrave;ng lớn, v&iacute; dụ: c&aacute; lớn cỡ 2 ng&oacute;n tay m&agrave; chưa l&ecirc;n đầu th&igrave; khoảng 30- 0 50 000đ/con. C&aacute; nh&uacute; đầu c&oacute; thể l&agrave; 100 000đ/con. Nếu c&aacute; đ&atilde; c&oacute; đầu to hơn th&igrave; sẽ dao động gi&aacute; từ 200- 300 000đ/con. C&ograve;n khi c&aacute; la h&aacute;n thường trưởng th&agrave;nh ho&agrave;n chỉnh th&igrave; &iacute;t nhất l&agrave; 500 000đ/con.</p>\r\n\r\n<p><a href=\"http://cacanhphuclong.com.vn/wp-content/uploads/2014/08/Tong-hop-gia-ca-la-han-dep-nhat-tren-thi-truong-4.jpg\"><img alt=\"Tổng hợp giá cá la hán đẹp nhất trên thị trường 4\" src=\"http://cacanhphuclong.com.vn/wp-content/uploads/2014/08/Tong-hop-gia-ca-la-han-dep-nhat-tren-thi-truong-4.jpg\" style=\"height:488px; width:650px\" title=\"Tổng hợp giá cá la hán đẹp nhất trên thị trường\" /></a></p>\r\n\r\n<p><em>Gi&aacute; c&aacute; la h&aacute;n phụ thuộc v&agrave;o vẻ đẹp của đầu&nbsp;</em></p>\r\n\r\n<p><strong>&ndash; Chủng loại v&agrave; m&agrave;u sắc:</strong>&nbsp;Mỗi lo&agrave;i c&aacute; la h&aacute;n c&oacute; những đặc điểm nổi bật, do vậy căn cứ v&agrave;o đ&oacute; để l&agrave;m thước đo gi&aacute; trị cho ch&uacute;ng. Với la h&aacute;n thường như tr&ecirc;n th&igrave; chỉ khoảng v&agrave;i trăm ngh&igrave;n/con. C&ograve;n với gi&aacute; b&aacute;n c&aacute; la h&aacute;n th&aacute;i đỏ, con rẻ nhất cũng phải 500 000đ/con, m&agrave; nếu c&oacute; con đẹp hơn, phủ đầy ch&acirc;u tr&ecirc;n người th&igrave; mức gi&aacute; dao động từ 1,7 triệu- 2 triệu l&agrave; chuyện b&igrave;nh thường.</p>\r\n\r\n<p>Với gi&aacute; c&aacute; la h&aacute;n King kamfa cũng c&oacute; nhiều mức gi&aacute; kh&aacute;c nhau. Nếu l&agrave; king kamfa thường th&igrave; khoảng v&agrave;i chục đến v&agrave;i trăm ngh&igrave;n đồng 1 con, tuy nhi&ecirc;n, nếu l&agrave; King kamfa mắt trắng bạn cần &iacute;t nhất 3,5- 4 triệu đồng/con.</p>\r\n\r\n<p><em><strong>Với nhiều chủng loại v&agrave; mức gi&aacute; kh&aacute;c nhau, bạn ho&agrave;n to&agrave;n c&oacute; thể sở hữu cho m&igrave;nh một trong những lo&agrave;i c&aacute; đẹp v&agrave; may mắn nhất hiện nay. Nếu cảm thấy kh&oacute; khăn trong việc chăm s&oacute;c ch&uacute;ng, bạn h&atilde;y đến với hiệu&nbsp;<a href=\"http://cacanhphuclong.com.vn/\" title=\"cá cảnh\">c&aacute; cảnh</a>&nbsp;Ph&uacute;c Long- Đại diện ch&iacute;nh thức của AZOO tại Việt Nam để được tư vấn cũng như chọn những con giống tốt trong thời gian sớm nhất nh&eacute;!</strong></em></p>', 100, 590000, 575000, '19-10-19-10675143-ca-lan-han.jpg', 1, 14, 1, '2019-10-19 06:01:28', '2019-10-19 06:02:54'),
(41, 'Cá ranchu các loại', 'ca-ranchu-cac-loai', '<p>C&aacute; ranchu hay c&ograve;n gọi l&agrave; c&aacute; v&agrave;ng ranchu, c&aacute; v&agrave;ng Lan thọ l&agrave; lo&agrave;i c&aacute; cảnh c&oacute; m&agrave;u sắc sặc sỡ, th&acirc;n h&igrave;nh uyển chuyển đẹp mắt n&ecirc;n rất được ưa chuộng tại Việt Nam. C&ugrave;ng ch&uacute;ng t&ocirc;i t&igrave;m hiểu gi&aacute; của c&aacute; v&agrave;ng ranchu cũng như địa chỉ b&aacute;n lo&agrave;i c&aacute; cảnh n&agrave;y gi&aacute; rẻ, uy t&iacute;n hiện nay nh&eacute;!</p>\r\n\r\n<p><img alt=\"gia-ca-ranchu-cac-loai-cua-hang-ban-ca-ranchu-gia-re\" src=\"https://thucungaz.com/wp-content/uploads/2019/05/gia-ca-ranchu-cac-loai-cua-hang-ban-ca-ranchu-gia-re.jpg\" style=\"height:600px; width:800px\" /></p>\r\n\r\n<p><em>C&aacute; v&agrave;ng ranchu c&oacute; gi&aacute; th&agrave;nh rất đa dạng</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>G&iacute;a c&aacute; ranchu c&aacute;c loại</strong></h2>\r\n\r\n<p>Kh&ocirc;ng kh&oacute; để bạn mua được c&aacute; v&agrave;ng ranchu tại c&aacute;c cửa h&agrave;ng c&aacute; cảnh tr&ecirc;n to&agrave;n quốc. Mỗi cửa h&agrave;ng sẽ c&oacute; một mức gi&aacute; kh&aacute;c nhau. N&oacute;i c&aacute;ch kh&aacute;c, bạn mua c&aacute; v&agrave;ng ranchu sẽ c&oacute; gi&aacute; th&agrave;nh đa dạng phụ thuộc v&agrave;o c&aacute;c yếu tố như:</p>\r\n\r\n<p>+ Thời điểm mua c&aacute;: c&agrave;ng những thời điểm c&aacute; ranchu hiếm, gi&aacute; th&agrave;nh c&agrave;ng bị đẩy l&ecirc;n cao</p>\r\n\r\n<p>+ K&iacute;ch thước c&aacute;: C&aacute; ranchu trưởng th&agrave;nh c&oacute; gi&aacute; cao hơn so với c&aacute; ranchu mini</p>\r\n\r\n<p>+ M&agrave;u sắc: M&agrave;u sắc ranchu tươi, độc đ&aacute;o, l&ecirc;n m&agrave;u chuẩn sẽ n&acirc;ng gi&aacute; trị của c&aacute; l&ecirc;n rất nhiều.</p>\r\n\r\n<p>Ngo&agrave;i ra, t&ugrave;y v&agrave;o cơ sở, cửa h&agrave;ng c&aacute; cảnh sẽ c&oacute; mức gi&aacute; ri&ecirc;ng. Th&ocirc;ng thường, người nu&ocirc;i c&aacute; v&agrave;ng ranchu sẽ mua theo cặp, kh&ocirc;ng mấy người mua lẻ con. Gi&aacute; của một cặp ranchu phổ th&ocirc;ng sẽ giao động từ 1,5 đến 2 triệu đồng. Tất nhi&ecirc;n, với những ch&uacute; ranchu hiếm, độc đ&aacute;o, đẹp mắt, gi&aacute; c&oacute; thể l&ecirc;n đến h&agrave;ng chục triệu đồng thậm ch&iacute; v&agrave;i chục triệu đồng cũng c&oacute;. Như vậy bạn c&oacute; thể thấy, so với c&aacute;c lo&agrave;i c&aacute; cảnh kh&aacute;c, c&aacute; ranchu cũng được xếp v&agrave;o d&ograve;ng c&aacute; đắt đỏ, c&oacute; mức gi&aacute; cao.</p>\r\n\r\n<h2><strong>Cửa h&agrave;ng b&aacute;n c&aacute; ranchu gi&aacute; rẻ</strong></h2>\r\n\r\n<p>Cũng bởi 1 cặp ranchu c&oacute; gi&aacute; th&agrave;nh kh&aacute; đắt đỏ, n&ecirc;n bạn phải t&igrave;m hiểu thật kỹ lưỡng địa chỉ cung cấp c&aacute; đảm bảo mua được c&aacute; khỏe mạnh, kh&ocirc;ng bị bệnh tật. Một v&agrave;i lưu &yacute; khi chọn mua c&aacute; ranchu như: c&aacute; bơi khỏe, mắt s&aacute;ng, kh&ocirc;ng lờ đờ, di chuyển nhanh ch&oacute;ng, linh hoạt nhưng vẫn rất uyển chuyển, tr&ecirc;n th&acirc;n của c&aacute; kh&ocirc;ng c&oacute; vết đốm vết tr&oacute;c vẩy, v&acirc;y v&agrave; đu&ocirc;i kh&ocirc;ng bị r&aacute;ch&hellip;</p>\r\n\r\n<p>Một v&agrave;i địa chỉ b&aacute;n c&aacute; ranchu gi&aacute; rẻ uy t&iacute;n hiện nay bạn c&oacute; thể tham khảo như:</p>\r\n\r\n<p>+ C&aacute; cảnh Trung Tọ địa chỉ 38, Trần Hữu Tước, Đống Đa, H&agrave; Nội (điện thoại &nbsp;0948980218)</p>\r\n\r\n<p>+ C&aacute; cảnh Th&aacute;i Ho&agrave;i số 545 Ho&agrave;ng Hoa Th&aacute;m, Ba Đ&igrave;nh, H&agrave; Nội (điện thoại 0978 918 008)</p>\r\n\r\n<p>+ S &amp; C Pet Shop số 486 L&yacute; Th&aacute;i Tổ, phường 10, quận 10, th&agrave;nh phố Hồ Ch&iacute; Minh (điện thoại 0934 90 96 98)</p>\r\n\r\n<p>+ C&aacute; cảnh Tuấn Phong địa chỉ số 107, Thi&ecirc;n Hiền, Mỹ Đ&igrave;nh I, Nam Từ Li&ecirc;m, H&agrave; Nội ( điện thoại 033 575 3253)</p>\r\n\r\n<p>Ngo&agrave;i những địa chỉ kể tr&ecirc;n, bạn c&oacute; thể tham khảo qua người th&acirc;n bạn b&egrave;, hoặc xem review tr&ecirc;n c&aacute;c diễn đ&agrave;n, trang mạng x&atilde; hội sau đ&oacute; c&acirc;n nhắc lựa chọn 1 địa chỉ uy t&iacute;n, đảm bảo. Tốt hơn hết chỉ chọn những địa chỉ được nhiều người tin tưởng, t&igrave;m đến.</p>', 100, 399000, 289000, '19-10-19-1323532397-ran-chu.jpg', 1, 16, 1, '2019-10-19 06:13:20', '2019-10-19 06:14:10'),
(42, 'Cá 3 đuôi các loại', 'ca-3-duoi-cac-loai', '<p>Tr&ecirc;n thị trường, giới trẻ đang đổ x&ocirc; nu&ocirc;i c&aacute; ba đu&ocirc;i, một giống c&aacute; cảnh kh&ocirc;ng c&oacute; g&igrave; xa lạ với những người nu&ocirc;i c&aacute; chuy&ecirc;n hay nghiệp dư, c&aacute; ba đu&ocirc;i v&ocirc; c&ugrave;ng đẹp v&agrave; rất dễ chăm s&oacute;c. Vậy gi&aacute; c&aacute; 3 đu&ocirc;i l&agrave; bao nhi&ecirc;u?</p>\r\n\r\n<p>Nu&ocirc;i c&aacute; cảnh l&agrave; th&uacute; vui tao nh&atilde; của nhiều người hiện nay v&agrave; ở mọi lứa tuổi, d&ugrave; gi&agrave; hay trẻ. C&aacute; cảnh c&oacute; nhiều loại v&agrave; được b&aacute;n ở nhiều cửa h&agrave;ng chuy&ecirc;n cung cấp c&aacute; cảnh. Bởi đặc t&iacute;nh ri&ecirc;ng v&agrave; ngoại h&igrave;nh ri&ecirc;ng của từng loại l&agrave; kh&aacute;c nhau v&igrave; thế gi&aacute; cả của mỗi loại cũng như vậy.</p>\r\n\r\n<p><img alt=\"cá 3 đuôi giá bao nhiêu\" src=\"http://becamini.vn/kcfinder/upload/images/ca-3-duoi-gia-bao-nhieu.jpg\" /></p>\r\n\r\n<p>T&igrave;m hiểu về c&aacute; ba đu&ocirc;i C&aacute; ba đu&ocirc;i l&agrave; c&oacute; điểm đặc trưng l&agrave; n&oacute; c&oacute; ba đu&ocirc;i, c&aacute; c&oacute; rất nhiều m&agrave;u sắc phong ph&uacute;. Loại c&aacute; n&agrave;y rất dễ nu&ocirc;i v&agrave; dễ chăm s&oacute;c. Bạn c&oacute; thể nu&ocirc;i ch&uacute;ng ở nhiều loại bể lớn vừa kh&aacute;c nhau v&agrave; nhiều loại thể h&igrave;nh như: bể c&aacute; mini, bể c&aacute; cỡ lớn, bể thủy tinh, hay nu&ocirc;i ở bể non bộ.</p>\r\n\r\n<p>Ngo&agrave;i c&aacute;c loại bể n&agrave;y, th&igrave; c&aacute; ba đu&ocirc;i kh&ocirc;ng n&ecirc;n nu&ocirc;i ở c&aacute;c loại bể c&oacute; diện t&iacute;ch qu&aacute; nhỏ, bể h&igrave;nh bầu dục, b&igrave;nh tr&ograve;n, bể c&oacute; nhiều cạnh v&agrave; bể c&oacute; nhiều c&acirc;y, Bởi những loại bể n&agrave;y thường rất k&eacute;m oxy, thường nuốt hết oxy của c&aacute;. Khiến việc nu&ocirc;i c&aacute; ba đu&ocirc;i trở n&ecirc;n kh&oacute; khăn hơn, c&oacute; trường hợp c&aacute; chết sau một v&agrave;i ng&agrave;y nu&ocirc;i.</p>\r\n\r\n<p><img alt=\"cá 3 đuôi giá bao nhiêu\" src=\"http://becamini.vn/kcfinder/upload/images/ca-3-duoi-gia-bao-nhieu1.jpg\" /></p>\r\n\r\n<p>C&aacute; ba đu&ocirc;i cần được thay nước h&agrave;ng ng&agrave;y, mỗi ng&agrave;y một lần nếu bể bẩn, hai ng&agrave;y một lần nếu &iacute;t thấy ph&acirc;n c&aacute;. Khi mua bể về cần lưu &yacute; ng&acirc;m nước 2 ng&agrave;y để bay bớt m&ugrave;i keo của bể c&aacute;, đảm bảo cho việc nu&ocirc;i c&aacute; tốt hơn. Mỗi lần thay nước, n&ecirc;n để lại ⅓ nước cũ, v&agrave; vớt hết c&aacute;c chất bẩn rồi cho th&ecirc;m nước mới v&agrave;o. Kh&ocirc;ng sử dụng c&aacute;c chất tẩy rửa để vệ sinh bể.</p>\r\n\r\n<p><a href=\"http://becamini.vn/ca-canh/thong-tin-va-ky-thuat-cham-soc-ca-vang-3-duoi-cho-nguoi-moi.html\">C&aacute; ba đu&ocirc;i</a>&nbsp;l&agrave; loại c&aacute; kh&aacute; phổ biến v&agrave; dễ kiếm t&igrave;m, gi&aacute; c&aacute; 3 đu&ocirc;i l&agrave; bao nhi&ecirc;u l&agrave; c&acirc;u hỏi của kh&aacute; nhiều. Kh&ocirc;ng phải l&agrave; loại c&aacute; qu&aacute; đặc biệt v&igrave; vậy ch&uacute;ng c&oacute; gi&aacute; cả kh&aacute; mềm, dao động từ 20 đến 30 ng&agrave;n đồng một con c&aacute;. Việc đắt rẻ c&ograve;n phụ thuộc v&agrave;o giống c&aacute;, c&aacute; c&aacute;i c&aacute; đực, c&aacute; nhỏ hay l&agrave; c&aacute; trưởng th&agrave;nh. C&aacute; ba đu&ocirc;i nhỏ x&iacute;u th&igrave; c&oacute; gi&aacute; từ 10 đến 12 ngh&igrave;n đồng một con.</p>\r\n\r\n<p>Gi&aacute; c&aacute; 3 đu&ocirc;i kh&ocirc;ng đắt, thức ăn của n&oacute; cũng vậy. Thức ăn ch&iacute;nh của ch&uacute;ng ch&iacute;nh l&agrave; giun đỏ, loại giun b&aacute;n theo ch&ugrave;m v&agrave; nhỏ như sợi chỉ, chỉ 7 ngh&igrave;n giun c&aacute; c&oacute; thể ăn được 3 bữa. Ngo&agrave;i thức ăn n&agrave;y, c&aacute; ba đu&ocirc;i c&oacute; thể ăn thức ăn kh&ocirc;, từ 3 - 4 bữa/ tuần. Thức ăn kh&ocirc; cho c&aacute; l&agrave; loại sẽ cung cấp đầy đủ c&aacute;c chất dinh dưỡng cần thiết cho c&aacute;. Việc cho ăn một v&agrave;i bữa một tuần sẽ đảm bảo rằng ch&uacute;ng kh&ocirc;ng bị qu&aacute; thừa chất hoặc qu&aacute; thiếu chất.</p>\r\n\r\n<p><img alt=\"cá 3 đuôi giá bao nhiêu\" src=\"http://becamini.vn/kcfinder/upload/images/ca-3-duoi-gia-bao-nhieu2.jpg\" /></p>\r\n\r\n<p>Khi nu&ocirc;i c&aacute; ba đu&ocirc;i, bạn n&ecirc;n đặt bể c&aacute; ở những vị tr&iacute; y&ecirc;n tĩnh, tho&aacute;ng m&aacute;t. Kh&ocirc;ng n&ecirc;n để tại nơi c&oacute; nhiều nguồn điện như cạnh tủ lạnh, ti vi, l&ograve; vi s&oacute;ng hay ở bếp. Bởi lo&agrave;i c&aacute; n&agrave;y rất hay giật m&igrave;nh v&igrave; vậy kh&ocirc;ng n&ecirc;n t&aacute;c động mạnh để duy tr&igrave; sự sống cho ch&uacute;ng.</p>\r\n\r\n<p>V&acirc;̣y n&ecirc;n mua b&ecirc;̉ cá ở đ&acirc;u đ&ecirc;̉ nu&ocirc;i cá 3 đu&ocirc;i nói ri&ecirc;ng, cá cảnh nói chung? Nếu bạn vẫn đang t&igrave;m kiếm địa chỉ mua bể c&aacute; chất lượng cho đ&agrave;n c&aacute; của m&igrave;nh. C&oacute; thể tham khảo tại website:&nbsp;<a href=\"http://becamini.vn/\">becamini.vn</a>&nbsp;hoặc&nbsp;hocamini.com, ngo&agrave;i ra c&oacute; thể gọi điện tới 0905.915.661 để được tư vấn miễn ph&iacute; v&agrave; đến tận nơi để trực tiếp xem h&agrave;ng.</p>\r\n\r\n<p><img alt=\"cá 3 đuôi giá bao nhiêu\" src=\"http://becamini.vn/kcfinder/upload/images/ca-3-duoi-gia-bao-nhieu2%281%29.jpg\" /></p>\r\n\r\n<p>Tại đ&acirc;y c&oacute; tới 35 đến hơn 40 c&aacute;c loại bể c&aacute; kh&aacute;c nhau, nhiều kiểu nhiều k&iacute;ch cỡ. Ngo&agrave;i ra ở đ&acirc;y cũng cung cấp rất nhiều phụ kiện trang tr&iacute; cho bể c&aacute;. Với gi&aacute; th&agrave;nh hợp l&iacute;, mẫu m&atilde; đa dạng. Bể c&aacute; cảnh tại đ&acirc;y được kh&aacute;ch h&agrave;ng đ&aacute;ng gi&aacute; cao. Bạn tha hồ lựa chọn theo sở th&iacute;ch cũng như nhu cầu của m&igrave;nh. Hoặc c&oacute; thể đặt bể c&aacute; theo sở th&iacute;ch của m&igrave;nh.</p>\r\n\r\n<p>Hệ thống cửa h&agrave;ng hỗ trợ tư vấn miễn ph&iacute;, giao h&agrave;ng miễn ph&iacute;. C&aacute;c trường hợp vỡ hay cần v&aacute; lại bể c&aacute; nếu c&oacute; trục trắc, bạn c&oacute; thể li&ecirc;n hệ để được hỗ trợ nhanh nhất. Với phong c&aacute;ch l&agrave;m việc chuy&ecirc;n nghệp v&agrave; đội ngũ c&oacute; chuy&ecirc;n m&ocirc;n, đ&acirc;y l&agrave; địa chỉ uy t&iacute;n được nhiều người tin tưởng.</p>\r\n\r\n<p>Qua b&agrave;i viết của ch&uacute;ng t&ocirc;i, c&aacute;c bạn đ&atilde; phần n&agrave;o hiểu được về c&aacute; ba đu&ocirc;i, c&aacute;ch nu&ocirc;i cũng như gi&aacute; th&agrave;nh của ch&uacute;ng rồi phải kh&ocirc;ng. Hy vọng với những kiến thức m&agrave; ch&uacute;ng t&ocirc;i chia sẻ bạn sẽ c&oacute; một đ&agrave;n c&aacute; khỏe mạnh.</p>', 10, 100000, 89000, '19-10-19-231360668-ca-ba-duoi.jpg', 1, 3, 1, '2019-10-19 06:17:07', '2019-10-19 06:17:07'),
(43, 'Cá koi nhật bản', 'ca-koi-nhat-ban', '<p><img alt=\"Hình ảnh cá Koi Shiro Utsuri\" src=\"http://cacanhthaihoa.com/wp-content/uploads/2017/03/shiro-utsuri-thaihoa-620x330.jpg\" style=\"height:330px; width:620px\" /></p>\r\n\r\n<p>C&aacute; Koi Shiro Utsuri tại Th&aacute;i Ho&agrave; Koi Farm</p>\r\n\r\n<h1>Tosai Shiro Utsuri trại Omosako (25-28cm) mở b&aacute;n 12/05/2019</h1>\r\n\r\n<p><strong>C&aacute; Koi Shiro Utsuri</strong>&nbsp;trại&nbsp;<strong>Omosako</strong>&nbsp;lu&ocirc;n l&agrave; loại thượng phẩm trong c&aacute;c loại Shiro Utsuri. C&aacute; c&oacute; cấu tr&uacute;c body rất đẹp, da trắng, sumi l&ecirc;n mạnh, v&agrave; khi đạt tới độ tuổi nhất định th&igrave; tất cả c&aacute;c sumi ẩn đều l&ecirc;n hết. Dưới đ&acirc;y l&agrave; một l&ocirc; Shiro Utsuri được&nbsp;<strong>Th&aacute;i H&ograve;a Koi Farm</strong>&nbsp;tuyển chọn kh&aacute; kỹ, mời qu&yacute; người chơi tham khảo.</p>\r\n\r\n<p>L&ocirc;&nbsp;<a href=\"http://cacanhthaihoa.com/ca-canh/ca-koi/tosai-shiro-utsuri-trai-omosako-25-28cm-mo-ban-12-05-2019.html\"><strong>c&aacute; koi Shiro Utsuri</strong></a>&nbsp;được nhập khẩu trực tiếp từ Nhật Bản, c&aacute;ch ly đ&uacute;ng quy tr&igrave;nh, dưỡng khỏe mạnh, c&aacute; ăn uống b&igrave;nh thường v&agrave; kh&ocirc;i phục ho&agrave;n to&agrave;n về m&agrave;u sắc trước khi mở b&aacute;n cho người chơi.</p>\r\n\r\n<p>Mời qu&yacute; người chơi tham khảo video một chậu&nbsp;<a href=\"http://cacanhthaihoa.com/ca-canh/ca-koi\"><strong>c&aacute; koi</strong></a>&nbsp;được quay trực tiếp từ trại.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gi&aacute; b&aacute;n: 2.500.000 đ</p>\r\n\r\n<p>Ship to&agrave;n quốc ( Chuyển khoản gửi xe hoặc H&agrave;ng kh&ocirc;ng, mọi rủi ro trong qu&aacute; tr&igrave;nh vận chuyển b&ecirc;n b&aacute;n chịu)</p>\r\n\r\n<p>Li&ecirc;n hệ mua h&agrave;ng: 0946285519 &ndash; 0944948444 &ndash; 0943499444</p>\r\n\r\n<p>Tư vấn kỹ thuật: 0978918008 &ndash; 0978137069</p>\r\n\r\n<p>Tr&acirc;n trọng</p>\r\n\r\n<p>Nguyễn Tiến Dũng</p>\r\n\r\n<p>Th&aacute;i H&ograve;a Aquarium</p>\r\n\r\n<p>Website:&nbsp;<a href=\"http://www.cacanhthaihoa.com/\">http://cacanhthaihoa.com</a>&nbsp;| Email: cacanhthaihoa@gmail.com</p>\r\n\r\n<p>Điện thoại: 024 6327 8080&nbsp;&nbsp;| Hotline: &nbsp;09789 18008</p>\r\n\r\n<p>Văn phòng: S&ocirc;́ 545 Ho&agrave;ng Hoa Th&aacute;m, Ba Đ&igrave;nh, H&agrave; Nội,&nbsp;Việt Nam</p>\r\n\r\n<p>Nhà Kho: S&ocirc;́ 15 Vĩnh Phúc, Ba Đình, Hà N&ocirc;̣i, Vi&ecirc;̣t Nam</p>\r\n\r\n<p>Xưởng Sản Xuất: Số 603/58/4 Lạc Long Qu&acirc;n, T&acirc;y Hồ, H&agrave; Nội, Việt Nam</p>\r\n\r\n<p>Trại Koi: S&ocirc;́ 175 Nguy&ecirc;̃n Hoàng T&ocirc;n, T&acirc;y Hồ, Hà N&ocirc;̣i, Vi&ecirc;̣t Nam</p>', 13, 1000000, 900000, '19-10-19-26239348-ca-koi-nb.jpg', 1, 15, 1, '2019-10-19 06:19:39', '2019-10-19 06:19:39');
INSERT INTO `products` (`id`, `name`, `slug`, `description`, `quantity`, `price`, `promotional`, `image`, `idCategories`, `idProductType`, `status`, `created_at`, `updated_at`) VALUES
(45, 'Hoa hồng ngày lễ', 'hoa-hong-ngay-le', '<div class=\"col-sm-7\" style=\"-webkit-text-stroke-width:0px; padding-left:15px; padding-right:15px; text-align:start; text-indent:0px; width:700px\">\r\n<ul style=\"margin-left:-20px\">\r\n	<li><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><a class=\"thumbnail img-thumbnail img-responsive\" href=\"https://www.vuahoadalat.com/image/cache/catalog/product/thumbnail/goc-hoa-hong-nhung-180913022509-500x500.jpg\" style=\"box-sizing:border-box; background-color:#ffffff; color:#23527c; text-decoration:none; display:block; max-width:100%; height:auto; padding:4px; line-height:1.42857; border:1px solid #dddddd; border-radius:4px; transition:border 0.2s ease-in-out 0s; margin-bottom:20px; outline:-webkit-focus-ring-color auto 5px; outline-offset:-2px\" title=\"GỐC HOA HỒNG GIÁ SỈ RẺ\"><img alt=\"GỐC HOA HỒNG GIÁ SỈ RẺ\" src=\"https://www.vuahoadalat.com/image/cache/catalog/product/thumbnail/goc-hoa-hong-nhung-180913022509-380x380.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; max-width:100%; vertical-align:middle\" title=\"GỐC HOA HỒNG GIÁ SỈ RẺ\" /></a></span></span></span></span></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-sm-5\" style=\"-webkit-text-stroke-width:0px; padding-left:15px; padding-right:15px; text-align:start; text-indent:0px; width:500px\">\r\n<h1><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:36px\"><span style=\"font-family:inherit\"><span style=\"color:#689f38\">GỐC HOA HỒNG GI&Aacute; SỈ RẺ</span></span></span></span></span></span></span></h1>\r\n\r\n<div class=\"product_detail_model\" style=\"margin-bottom:10px\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:15px\">MODEL:&nbsp;<span style=\"background-color:#fafafa\"><span style=\"color:#222222\">HOA HỒNG GỐC 01</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"product_detail_stock\" style=\"margin-bottom:10px\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:15px\">KHO H&Agrave;NG:&nbsp;<span style=\"background-color:#fafafa\"><span style=\"color:#222222\">C&Ograve;N H&Agrave;NG</span></span></span></span></span></span></span></div>\r\n\r\n<hr />\r\n<div id=\"product\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-7\" style=\"-webkit-text-stroke-width:0px; padding-left:15px; padding-right:15px; text-align:start; text-indent:0px; width:700px\">\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><a href=\"https://www.vuahoadalat.com/#tab-description\" style=\"box-sizing:border-box; background-color:#fafafa; color:#8bc34a; text-decoration:none; position:relative; display:block; padding:10px 15px; margin-right:2px; line-height:1.42857; border-top:2px solid #f57c00; border-right:none; border-bottom:none; border-left:none; border-image:initial; border-radius:0px; cursor:default; text-transform:uppercase; font-weight:500\">TH&Ocirc;NG TIN SẢN PHẨM</a></span></span></span></span></li>\r\n</ul>\r\n\r\n<div class=\"tab-content\" style=\"margin-top:15px\">\r\n<div class=\"active tab-pane\" id=\"tab-description\" style=\"text-align:justify\">\r\n<p><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><strong><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Gốc hoa hồng</span></span></strong><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;l&agrave; một trong những giống&nbsp;<strong>hoa chậu gi&aacute; rẻ</strong>&nbsp;được ưa chuộng hiện nay.&nbsp;<strong><a href=\"https://www.vuahoadalat.com/hoa-hong-goc\" style=\"box-sizing:border-box; color:#337ab7; text-decoration:none\">Gốc hoa hồng gi&aacute; rẻ</a></strong>&nbsp;l&agrave; một trong những chậu&nbsp;<strong>hoa hồng Đ&agrave; Lạt&nbsp;</strong>kh&aacute; đẹp được b&aacute;n đi c&aacute;c tỉnh, th&agrave;nh phố trong cả nước. Hiện nay&nbsp;<strong>vựa hoa Đ&agrave; Lạt</strong>&nbsp;đ&atilde; v&agrave; đang cung cấp c&aacute;c loại&nbsp;<strong>hoa hồng gốc sỉ, lẻ</strong>&nbsp;tr&ecirc;n to&agrave;n quốc với c&aacute;c loại&nbsp;<strong>gốc hoa hồng nhung</strong>,&nbsp;<strong>gốc hoa hồng đỏ</strong>,&nbsp;<strong>v&agrave;ng</strong>&hellip;</span></span></span></span></span></span></span></p>\r\n\r\n<h2><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><span style=\"font-size:30px\"><span style=\"font-family:inherit\"><span style=\"color:inherit\"><strong><span style=\"font-size:14pt\"><span style=\"background-color:yellow\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Nguồn gốc của c&aacute;c loại hoa hồng gốc</span></span></span></strong><span style=\"font-size:14pt\"><span style=\"background-color:yellow\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">:</span></span></span></span></span></span></span></span></span></span></span></h2>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><strong><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Gốc hoa hồng gi&aacute; sỉ</span></span></strong><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;hiện nay đang b&aacute;n tại&nbsp;<strong>vườn hoa hồng Đ&agrave; Lạt</strong>&nbsp;c&oacute; nguồn gốc được tuyển chọn từ&nbsp;trong c&aacute;c&nbsp;<strong>vườn hồng Đ&agrave; Lạt</strong>&nbsp;một c&aacute;ch cẩn thận với&nbsp;<strong>nguồn gốc c&aacute;c giống hoa hồng</strong>&nbsp;kh&aacute;c nhau v&agrave; lựa chọn những&nbsp;<strong>gốc hồng to</strong>, sức sống khỏe,&nbsp;<strong>gốc v&agrave; nh&aacute;nh hoa hồng</strong>&nbsp;rậm rạp v&agrave;&nbsp;<strong>c&acirc;y hoa hồng gốc</strong>&nbsp;kh&ocirc;ng bệnh tật điều n&agrave;y gi&uacute;p c&acirc;y sinh trưởng tốt v&agrave; c&oacute; sức đề kh&aacute;ng cao để sau khi về vườn sau khi ươm giống một thời gian&nbsp;<strong>hoa hồng gốc</strong>&nbsp;&nbsp;sẽ nhanh ch&oacute;ng đ&acirc;m chồi v&agrave; tiếp tục cho ra hoa sớm.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><img src=\"https://www.vuahoadalat.com/image/catalog/product/content/goc-hong-da-lat-180913022724.jpg\" style=\"border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:455px\" /></span></span></span></span></span></p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:inherit\"><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:18.6667px\">Ảnh:&nbsp;<em>Vườn hoa hồng gốc gi&aacute; rẻ Đ&agrave; lạt&nbsp;</em>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span></span></span></span></span></span></span></span></span></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><span style=\"font-size:30px\"><span style=\"font-family:inherit\"><span style=\"color:inherit\"><strong><span style=\"font-size:14pt\"><span style=\"background-color:yellow\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Đặc điểm cơ bản của hoa hồng gốc</span></span></span></strong><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">:</span></span></span></span></span></span></span></span></span></span></h2>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Đ&acirc;y l&agrave;&nbsp;<strong>giống hoa hồng</strong>&nbsp;c&aacute;c loại được cắt nh&aacute;nh v&agrave; ươm c&acirc;y bằng gốc v&igrave; vậy nh&aacute;nh c&acirc;y ph&aacute;t triển kh&aacute; mạnh, &nbsp;c&acirc;y c&oacute; thể đạt chiều cao trung b&igrave;nh từ 70 cm đến tầm 1 m&eacute;t.&nbsp;<strong>C&acirc;y hồng gốc</strong>&nbsp;ph&acirc;n nh&aacute;nh mạnh v&agrave; cho ra hoa kh&aacute; nhanh.</span></span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><img src=\"https://www.vuahoadalat.com/image/catalog/product/content/goc-hoa-hong-nhung-180913022837.jpg\" style=\"border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:621px\" /></span></span></span></span></span></div>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:inherit\"><span style=\"font-size:18px\">Ảnh:&nbsp;</span><em><span style=\"font-size:18px\">&nbsp;hoa hồng nhung gi&aacute; rẻ Đ&agrave; Lạt</span></em></span></span></span></span></span></span></span></span></h3>\r\n<span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"background-color:yellow\">C&aacute;ch trồng hoa hồng gốc gi&aacute; sỉ rẻ</span></strong></span></span></span></span></span></span></span>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">V&igrave; trong qu&aacute; tr&igrave;nh ươm giống&nbsp;<strong>vườn hoa hồng gi&aacute; rẻ Đ&agrave; Lạt</strong>&nbsp;với mục đ&iacute;ch để thuận tiện trong việc vận chuyển&nbsp;<strong>c&aacute;c loại hoa hồng tr&ecirc;n to&agrave;n quốc.</strong>&nbsp;<strong>Người trồng gốc hoa hồng</strong>&nbsp;thay v&igrave; d&ugrave;ng chậu người trồng sẽ cho v&agrave; bịch nhựa chuy&ecirc;n d&ugrave;ng để chăm s&oacute;c v&agrave; nu&ocirc;i c&acirc;y. V&igrave; vậy sau khi nhận c&aacute;c loại&nbsp;<strong>gốc c&acirc;y hoa hồng&nbsp;</strong>về người mua n&ecirc;n cắt bỏ bịch&nbsp;nhựa đ&oacute;&nbsp;v&agrave; cho c&acirc;y v&agrave;o&nbsp;chậu hoặc trồng ngo&agrave;i đất. Ngo&agrave;i ra việc tưới nước cho&nbsp;<strong>c&acirc;y hoa hồng</strong>&nbsp;mới trồng cũng rất quan trọng&nbsp; tr&aacute;nh trường hợp c&acirc;y mất nước v&agrave; gi&uacute;p c&acirc;y phục hồi tốt hơn sau một qu&aacute; tr&igrave;nh vận chuyển.<br />\r\nSau khoảng một th&aacute;ng kể từ ng&agrave;y mang c&acirc;y về người trồng c&oacute; thể bắt đầu b&oacute;n&nbsp;b&oacute;n ph&acirc;n hữu cơ&nbsp;cho c&acirc;y gi&uacute;p c&acirc;y ph&aacute;t triển tốt nhất v&agrave; sẽ c&oacute; một&nbsp;<strong>chậu hoa hồng gốc</strong>&nbsp;bự, hoa đẹp khoảng sau 2 th&aacute;ng.&nbsp;</span></span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><img src=\"https://www.vuahoadalat.com/image/catalog/product/content/hoa-hong-goc-gia-re-180913022952.jpg\" style=\"border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:530px\" /></span></span></span></span></span></div>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:inherit\"><span style=\"font-size:18px\">Ảnh:&nbsp;<em>Gốc hoa hồng lớn trồng trong chậu theo phong c&aacute;ch bonsai&nbsp;</em>&nbsp; &nbsp; &nbsp; &nbsp; Nguồn: internet</span></span></span></span></span></span></span></span></span></h3>\r\n\r\n<h2><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><span style=\"font-size:30px\"><span style=\"font-family:inherit\"><span style=\"color:inherit\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"background-color:yellow\">C&aacute;c loại hoa hồng gốc hiện c&oacute; tại Đ&agrave; Lạt</span></strong><span style=\"background-color:yellow\">:</span></span></span></span></span></span></span></span></span></span></span></h2>\r\n<span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">C&aacute;c loại hoa hồng ươm từ gốc kh&aacute; phổ biến hiện nay tại Đ&agrave; Lạt gồm c&oacute; c&aacute;c loại sau</span></span></span></span></span></span></span>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><strong><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Gốc hoa hồng nhung gi&aacute; rẻ Đ&agrave; Lạt<br />\r\nHoa hồng gốc đỏ đẹp<br />\r\nGốc hoa hồng trắng gi&aacute; sỉ</span></span></strong></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><strong><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Hoa hồng cam gốc gi&aacute; sỉ, lẻ</span></span></strong></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><strong><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Hoa hồng gốc loại v&agrave;ng hoa bự</span></span></strong></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">C&aacute;c loại hoa hồng n&agrave;y thường được mua về trồng v&agrave;o c&aacute;c chậu theo dạng&nbsp;<strong>c&acirc;y cảnh để b&agrave;n</strong>&nbsp;hoặc l&agrave;m&nbsp;<strong>tiểu cảnh s&acirc;n vườn</strong>&nbsp;hoặc trồng v&agrave;o c&aacute;c bồn hoa b&ecirc;n cửa sổ, c&aacute;c h&agrave;ng r&agrave;o để tạo n&ecirc;n một kh&ocirc;ng gian m&aacute;t mẻ v&agrave; l&agrave;m cho căn nh&agrave; đẹp mang đến kh&ocirc;ng kh&iacute; m&aacute;t dịu.</span></span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Roboto,Helvetica,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><strong><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Nguồn hoa hồng gốc tại Đ&agrave; lạt</span></span></strong><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">: 0898 9097 86</span></span></span></span></span></span></span></p>\r\n</div>\r\n</div>\r\n</div>', 1123, 25000, 20000, '19-10-19-597249380-hoa-hong-co-son-la.jpg', 2, 17, 1, '2019-10-19 06:27:27', '2019-10-19 06:27:27'),
(46, 'Hoa cúng', 'hoa-cung', '<p>abc xyz</p>', 112, 30000, 25000, '19-10-19-1177682147-hoa-cung.jpg', 2, 5, 1, '2019-10-19 06:30:11', '2019-10-19 06:30:11'),
(47, 'chim sẻ phóng sinh', 'chim-se-phong-sinh', '<p>chim sẻ ph&oacute;ng sinh</p>', 10000, 10000, 9000, '19-10-19-1921850380-chim-se.jpg', 3, 18, 1, '2019-10-19 06:31:23', '2019-10-19 06:31:23'),
(48, 'Đèn led hồ cá', 'den-led-ho-ca', '<p>&nbsp;Đ&egrave;n led hồ c&aacute;&nbsp;Đ&egrave;n led hồ c&aacute;&nbsp;Đ&egrave;n led hồ c&aacute;&nbsp;Đ&egrave;n led hồ c&aacute;&nbsp;Đ&egrave;n led hồ c&aacute;&nbsp;Đ&egrave;n led hồ c&aacute;&nbsp;Đ&egrave;n led hồ c&aacute;&nbsp;Đ&egrave;n led hồ c&aacute;&nbsp;</p>', 1123, 200000, 0, '19-10-19-69277604-led-ca.jpg', 4, 9, 1, '2019-10-19 06:33:26', '2019-10-19 06:33:26'),
(49, 'Lồng chim', 'long-chim', '<p>Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;Lồng chim&nbsp;</p>', 112, 100000, 0, '19-10-19-323022688-long-chim.jpg', 4, 10, 1, '2019-10-19 06:34:30', '2019-10-19 06:34:30'),
(50, 'Mồi chim chào mào', 'moi-chim-chao-mao', '<p>Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;Mồi chim ch&agrave;o m&agrave;o&nbsp;</p>', 100, 30000, 0, '19-10-19-934415791-moi-chim.jpg', 5, 13, 1, '2019-10-19 06:36:26', '2019-10-19 06:36:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_types`
--

CREATE TABLE `product_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idCategories` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_types`
--

INSERT INTO `product_types` (`id`, `idCategories`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cá rồng', 'ca-rong', 1, '2019-10-13 10:07:46', '2019-10-13 10:07:46'),
(2, 1, 'Cá betta', 'ca-betta', 1, '2019-10-13 10:08:07', '2019-10-13 10:08:07'),
(3, 1, 'Cá ba đuôi', 'ca-ba-duoi', 1, '2019-10-13 10:08:36', '2019-10-13 10:08:36'),
(4, 2, 'Lũa', 'lua', 1, '2019-10-13 10:09:22', '2019-10-13 10:09:22'),
(5, 2, 'Hoa ngày lễ', 'hoa-ngay-le', 1, '2019-10-13 10:09:57', '2019-10-13 10:09:57'),
(6, 3, 'Chim hót hay', 'chim-hot-hay', 1, '2019-10-13 10:10:18', '2019-10-13 10:10:18'),
(7, 3, 'Chim màu đẹp', 'chim-mau-dep', 1, '2019-10-13 10:10:33', '2019-10-13 10:26:46'),
(8, 4, 'Hồ cá', 'ho-ca', 1, '2019-10-13 10:10:54', '2019-10-13 10:10:54'),
(9, 4, 'Đồ trang trí', 'do-trang-tri', 1, '2019-10-13 10:11:20', '2019-10-13 10:11:20'),
(10, 4, 'Lồng chim', 'long-chim', 1, '2019-10-13 10:11:31', '2019-10-19 06:11:05'),
(11, 2, 'Chậu cây', 'chau-cay', 1, '2019-10-13 10:11:49', '2019-10-13 10:11:49'),
(12, 5, 'Mồi cá', 'moi-ca', 1, '2019-10-13 10:12:06', '2019-10-13 10:12:06'),
(13, 5, 'Mồi chim', 'moi-chim', 1, '2019-10-13 10:12:17', '2019-10-13 10:12:17'),
(14, 1, 'Cá la hán', 'ca-la-han', 1, '2019-10-19 05:38:16', '2019-10-19 05:38:16'),
(15, 1, 'Cá koi nhật bản', 'ca-koi-nhat-ban', 1, '2019-10-19 05:38:31', '2019-10-19 05:38:31'),
(16, 1, 'Cá ranchu', 'ca-ranchu', 1, '2019-10-19 05:38:55', '2019-10-19 05:38:55'),
(17, 2, 'Hoa hồng', 'hoa-hong', 1, '2019-10-19 05:39:46', '2019-10-19 05:39:46'),
(18, 3, 'Chim phóng sanh', 'chim-phong-sanh', 1, '2019-10-19 05:40:53', '2019-10-19 05:40:53'),
(19, 4, 'Phân bón', 'phan-bon', 1, '2019-10-19 05:41:45', '2019-10-19 05:41:45'),
(20, 4, 'Dụng cụ cắt tỉa', 'dung-cu-cat-tia', 1, '2019-10-19 05:42:01', '2019-10-19 05:42:01'),
(23, 18, 'Thi chọi chim', 'thi-choi-chim', 1, '2019-12-16 02:21:25', '2019-12-16 02:21:25'),
(24, 1, 'Cá Mập', 'ca-map', 1, '2019-12-16 04:01:18', '2019-12-16 04:01:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idUser` int(11) NOT NULL,
  `idTopicType` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topic_types`
--

CREATE TABLE `topic_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `social_id`, `avatar`, `role`, `status`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator Web', 'trancuong@gmail.com', '$2y$10$JqZ.Ppf/F7t2IGEz20wAFu9AcmCUBJRWhS2X5ZLk0qfNuUV8dN1pi', NULL, '', '1', 0, '0908252322', 'SD64e2f84LbenNaj7yCyWUKbEPhOea2h9PV97RAJbDVrggR1pGnWcW17gncf', NULL, '2019-10-19 10:57:48'),
(2, 'Nguoi dung 1', 'email1@gmail.com', '$2y$10$BAuVKTwyoazdXUIJ/JoLheo3G9byah8NRmNC8Op7069m/gwMCaq2G', NULL, '', '2', 0, '0905664260', NULL, NULL, '2019-10-16 12:27:19'),
(3, 'Nguoi dung 2', 'email2@gmail.com', '$2y$10$MFJkHvhJHoaMSJgqjp9T0uLYWCNzFNT/7AFiGG7YlmQm8BToZ.NG2', NULL, '', '3', 0, '0905509211', NULL, NULL, NULL),
(4, 'Nguoi dung 3', 'email3@gmail.com', '$2y$10$KZrbyRpaABrsWaIhsGadFu/F/ChSs.rh7fzmBu3oGSUZD0WeJZV2C', NULL, '', '4', 0, '0905489413', NULL, NULL, NULL),
(5, 'Nguoi dung 4', 'email4@gmail.com', '$2y$10$VArI.6p29/9yj/rtibw4ruAQTsfPhSih1h4hOu984MNBV932lBupm', NULL, '', '2', 0, '0905132158', NULL, NULL, NULL),
(6, 'Nguoi dung 5', 'email5@gmail.com', '$2y$10$CkGE8cDhY0nYni9GCd/riurRxusZKaKAqGrxBAxK/Kap4.UEMAv.2', NULL, '', '2', 0, '090521603', NULL, NULL, NULL),
(7, 'Nguoi dung 6', 'email6@gmail.com', '$2y$10$kx3HufD4zaxGj1b4YV6Kb.FJW2YmeZove80aRCZWzxpPAtqHdacoa', NULL, '', '2', 1, '0905328069', NULL, NULL, NULL),
(8, 'Nguoi dung 7', 'email7@gmail.com', '$2y$10$u.0jO4QWPeQUmfLkMM4zjuNWCLCgf2s9io5oK2p1pZdY0OigLsYjK', NULL, '', '2', 0, '0905476295', NULL, NULL, NULL),
(9, 'Nguoi dung 8', 'email8@gmail.com', '$2y$10$a.B2myI5zmehm529zepcZu6HPKb1ME4BCMzM/rvP4fMEIXzAoWnl.', NULL, '', '2', 0, '0905500608', 'RNwfN6x6oLtZsFV8QD1bk3d6bcK6jftkEbBObI1qCpfitxlVWp07kQwYwQ9I', NULL, NULL),
(10, 'Nguoi dung 9', 'email9@gmail.com', '$2y$10$Nvnr1fNjrDI7kU3nKTHtIO/DeQJd0lonf7zoi/huOWGsQZzHCaiG2', NULL, '', '3', 0, '0905375287', NULL, NULL, NULL),
(11, 'Nguoi dung 10', 'email10@gmail.com', '$2y$10$1Z/2214ntsydxFO.sOd7ce0DOMqqHw5Xkfd5kofPl0I27cgRVSLU2', NULL, '', '2', 0, '0905295553', NULL, NULL, NULL),
(12, 'Nguoi dung 11', 'email11@gmail.com', '$2y$10$9q9mVj9UzzNeMYuOXBUer.6ZC.eMeI6.uM98z9dYzkAG1KYieQGAi', NULL, '', '2', 0, '0905551259', NULL, NULL, NULL),
(13, 'Nguoi dung 12', 'email12@gmail.com', '$2y$10$iEcdUBdP0nn9TBmlKMOmCukLehHaggmDELUrKHuC5tvaipV1wcK.S', NULL, '', '3', 0, '0905439841', NULL, NULL, NULL),
(14, 'Nguoi dung 13', 'email13@gmail.com', '$2y$10$zqLT9yYqy1vjr4ftBQyR8u.hntl44xcWXJTtVOOfHOIRYO/PVehOm', NULL, '', '0', 0, '0905587473', NULL, NULL, NULL),
(15, 'Nguoi dung 14', 'email14@gmail.com', '$2y$10$4TFzOCkVAMsstie2SdayjuPrMMVUe3mKcOaha.qXnMFyrESLCrx4a', NULL, '', '2', 0, '0905593030', NULL, NULL, NULL),
(16, 'Nguoi dung 15', 'email15@gmail.com', '$2y$10$.DTp93lsHukq9iKPyRXaSO6gLN370N9LH6g6lVmX.Ti7DLUgAObD6', NULL, '', '3', 0, '0905420802', NULL, NULL, NULL),
(17, 'Nguoi dung 16', 'email16@gmail.com', '$2y$10$gN4Oq2uL3xpaRK1TcJKLkekcAaWr3lOdvgj3k7DdtH4fmzvSY8z5G', NULL, '', '2', 0, '0905250810', NULL, NULL, NULL),
(18, 'Nguoi dung 17', 'email17@gmail.com', '$2y$10$3JkDVH6CSTnmNbnZ9EpVrekMQUSX6d/GIFj59tGCARRJuWx1OlasS', NULL, '', '2', 0, '0905317416', NULL, NULL, NULL),
(19, 'Nguoi dung 18', 'email18@gmail.com', '$2y$10$SucTYSVT0uYCdVp0SRHMnuUFxt2tdzJFLLndGl9wR2sEhWRtb0LZ6', NULL, '', '2', 0, '0905578487', NULL, NULL, NULL),
(20, 'Nguoi dung 19', 'email19@gmail.com', '$2y$10$UoEPzuLGJW3GwmqALHb/b.vDB/6k0ie7EfO6rLhnXyo3ldjnZgmCK', NULL, '', '2', 0, '0905489780', NULL, NULL, NULL),
(21, 'Nguoi dung 20', 'email20@gmail.com', '$2y$10$nKFJn7ddX1SWWlZGBFOVqeBpr2jD4j.NPC2uqfLvVNyFMmdIFfqZe', NULL, '', '3', 0, '0905294598', NULL, NULL, NULL),
(22, 'Jog Andrey Duadua', 'tranthanhcuong24998@gmail.com', '$2y$10$c/CoTpO8A7XB1xcdq5ZUSuBp/L/73/VNrqGgrBum5VHUW7j1xcszq', '258169591805847', '', '0', 0, NULL, 'VXaavCd5DZJDqEMMAIU7beYgfVcg5isdskhCfZ0PtgIguZCKU03PCG4WLcuV', '2019-10-07 14:59:29', '2019-10-07 15:09:27'),
(23, 'Trần Tuấn', 'email91@gmail.com', '$2y$10$c5usJWKJekPqL/CPXCasqORU07k1//wQ0yPJz6N9lFrTjK58hElHa', NULL, '', '0', 0, NULL, 'ysxtTGwf74MH5yhMy0lJD2vpYACfpsEgoEsjijmOZ9lG7R0zgk5VoRxrasUc', '2019-10-07 15:22:42', '2019-10-07 15:22:42'),
(25, 'Cường Trần', 'trancuong.iot@gmail.com', '$2y$10$gtM7FgRrPWH8mz2.5tk5r.Olg3rfY3AcKtupKto7/TWLIwJQYiphC', '2353085128288739', '', '1', 0, NULL, NULL, '2019-10-10 08:45:00', '2019-10-10 08:45:39'),
(26, 'Cá rồng', 'email822@gmail.com', '$2y$10$CC.MBJWqhRtcWaYegnWhpem/fAtVZObt0tCxmjp0LILv/MYm5RWwW', NULL, NULL, '0', 0, NULL, NULL, '2019-10-17 03:53:45', '2019-10-17 03:53:45'),
(27, 'Kha Anh', 'kha123123@gmail.com', '$2y$10$O9mEkU3bhTifvIgFV1W5k.7YO4lWnj5aKFQPY5DNhKu/9G4UxdF92', NULL, NULL, '1', 0, '123123123', NULL, '2019-10-19 07:20:31', '2019-10-19 09:13:15'),
(28, 'abc abc', 'email128@gmail.com', '$2y$10$ShGIINBA8vZV8ZTGs.ASIOF27FksVtoKFaWhE.tWKy/TJJsAtAipO', NULL, NULL, '0', 0, NULL, NULL, '2019-12-14 06:45:12', '2019-12-14 06:45:12'),
(29, 'abc', 'admin@gmail.com', '$2y$10$3SVKCkVBnC9a3KmYVrDWo.aNo1m6w0qHeUUCD7v2QoIbjF/zAn4Ji', NULL, NULL, '0', 0, NULL, NULL, '2019-12-14 06:47:08', '2019-12-14 06:47:08'),
(30, 'abcaa', 'tran123123cuong.iot@gmail.com', '$2y$10$n5u.65NaABwB34z0TJvkLeqNbSiA3sfwoQgGHopSxOj2IpWzLPyRe', NULL, NULL, '0', 0, NULL, NULL, '2019-12-14 06:48:00', '2019-12-14 06:48:00'),
(31, '123aaaa', '123123aa@gmail.com', '$2y$10$NO4/Wlh7nHljgTTH972SH.NLNqsEXvygtl.k4rwvEgM/1CNDn8okm', NULL, NULL, '0', 0, NULL, NULL, '2019-12-14 06:49:40', '2019-12-14 06:49:40'),
(32, 'abccc', '123abc@gmail.com', '$2y$10$E07eCuBvBKf8kuMhOz6HyO94yBgHB.gGw7T8gq0KqpEycvXjrJUfW', NULL, NULL, '0', 0, NULL, NULL, '2019-12-15 07:42:12', '2019-12-15 07:42:12'),
(33, 'hanh', 'hanh@gmail.com', '$2y$10$4cfHEZbSEIzqjk7GDHOtKuXbCIOzh1d.pwquD0BHl4bgEahYYMuBO', NULL, NULL, '0', 0, NULL, NULL, '2019-12-16 02:47:45', '2019-12-16 02:47:45'),
(34, 'Duy', 'duy@gmail.com', '$2y$10$ZK/fMbicRvRb7avZt4PKAOkiL9e/oqZwiPj7Kx2E54fNpVwhxRNwK', NULL, NULL, '0', 0, NULL, NULL, '2019-12-16 04:03:47', '2019-12-16 04:03:47'),
(35, 'Kha Anh KKK', 'khaanh2611@gmail.com', '$2y$10$wL51c8YJUTrGkMkfMzBV9.ARTo//NsDOcrr/TfskDmYBtxhgjUV6y', NULL, NULL, '0', 0, NULL, NULL, '2019-12-30 08:09:06', '2019-12-30 08:09:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `webconfigs`
--

CREATE TABLE `webconfigs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `webs`
--

CREATE TABLE `webs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `topic_types`
--
ALTER TABLE `topic_types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `webconfigs`
--
ALTER TABLE `webconfigs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `webs`
--
ALTER TABLE `webs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `topic_types`
--
ALTER TABLE `topic_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `webconfigs`
--
ALTER TABLE `webconfigs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `webs`
--
ALTER TABLE `webs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
