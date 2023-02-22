-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2023 at 04:47 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duann1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `bill_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_pttt` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1. Thanh toán trực tiếp\r\n2. Chuyển khoản\r\n3. Thanh toán online',
  `bill_status` tinyint(50) NOT NULL DEFAULT 0 COMMENT '0. Đơn hàng mới\r\n1.Đang xử lý\r\n2. Đang giao hàng\r\n3. Đã giao hàng',
  `bill_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `iduser`, `bill_name`, `bill_address`, `bill_phone`, `bill_pttt`, `bill_status`, `bill_email`, `bill_total`) VALUES
(15, 0, 'Phamtung1611', 'am', '123', 0, 0, 'tungphph27346@fpt.edu.vn', 3),
(17, 0, 'tung', 'bac ninh', '0123456789', 0, 0, 'tungphph27346@fpt.edu.vn', 3),
(22, 0, 'tung', 'hgf', '345566', 0, 0, 't@gmail.com', 5),
(23, 0, 'tung', 'hgf', '345566', 0, 0, 't@gmail.com', 5),
(24, 0, 'tung', 'hgf', '345566', 0, 0, 't@gmail.com', 5),
(25, 0, 'huy', 'nam dinh', '20939230232', 0, 0, 'huy@gmail.com', 30000000),
(26, 0, 'huy', 'nam dinh', '20939230232', 0, 0, 'huy@gmail.com', 50000000),
(27, 0, 'huy', 'nam dinh', '20939230232', 0, 0, 'huy@gmail.com', 0),
(28, 0, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 20000000),
(29, 0, 'huy', 'nam dinh', '20939230232', 0, 0, 'huy@gmail.com', 120000000),
(30, 0, 'tung', 'bac ninh', '0123456789', 0, 0, 'tungphph27346@fpt.edu.vn', 5500000),
(31, 0, 'tung', 'bac ninh', '0123456789', 0, 0, 'tungphph27346@fpt.edu.vn', 48000000),
(32, 0, 'tung', 'bac ninh', '0123456789', 0, 0, 'tungphph27346@fpt.edu.vn', 5500000),
(33, 0, 'tung', 'bac ninh', '0123456789', 0, 0, 'tungphph27346@fpt.edu.vn', 5500000),
(34, 0, 'tung', 'bac ninh', '0123456789', 0, 0, 'tungphph27346@fpt.edu.vn', 19000000),
(35, 3, 'tung', 'bac ninh', '0123456789', 0, 0, 'tungphph27346@fpt.edu.vn', 48000000),
(36, 3, 'tung', 'bac ninh', '0123456789', 0, 0, 'tungphph27346@fpt.edu.vn', 5500000),
(37, 5, 'nghia', 'sơn la', '0904080244', 0, 2, 'pham@gmail.com', 20000000),
(38, 3, 'tung', 'bac ninh', '0123456789', 0, 0, 'tungphph27346@fpt.edu.vn', 5500000),
(39, 3, 'tung', 'bac ninh', '0123456789', 0, 2, 'tungphph27346@fpt.edu.vn', 16500000),
(40, 3, 'tung', 'bac ninh', '0123456789', 0, 0, 'tungphph27346@fpt.edu.vn', 16500000),
(41, 5, 'nghia', 'sơn la', '0904080244', 0, 0, 'pham@gmail.com', 33000000),
(42, 4, 'huy', 'nam dinh', '20939230232', 0, 0, 'huy@gmail.com', 10000000),
(43, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 58000000),
(44, 4, 'huy', 'nam dinh', '20939230232', 0, 0, 'huy@gmail.com', 2000000),
(45, 4, 'huy', 'nam dinh', '20939230232', 0, 0, 'huy@gmail.com', 27000000),
(46, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 1000000),
(47, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 13500000),
(48, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 0),
(49, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 5500000),
(50, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 19000000),
(51, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 5500000),
(52, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 12300000),
(53, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 17800000),
(54, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 13500000),
(55, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 13500000),
(56, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 13500000),
(57, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 46500000),
(58, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 46500000),
(59, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 13500000),
(60, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 1000000),
(61, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 13500000),
(62, 4, 'huy', 'nam dinh', '20939230232', 1, 0, 'huy@gmail.com', 5500000),
(63, 3, 'tung', 'phạm tùng', 'bac ninh', 0, 0, '0123456789', 1000000),
(64, 3, 'tung', 'phạm tùng', 'bac ninh', 0, 0, '0123456789', 1000000),
(65, 3, 'tung', 'phạm tùng', 'bac ninh', 0, 0, '0123456789', 0),
(66, 6, 'tungtungg', 'bn', '0904080244', 1, 2, 'phamtungate@gmail.com', 19000000),
(67, 6, 'tungtungg', 'bn', '0904080244', 1, 0, 'phamtungate@gmail.com', 13500000),
(68, 6, 'tungtungg', 'bn', '0904080244', 1, 0, 'phamtungate@gmail.com', 13500000),
(69, 6, 'tungtungg', 'bn', '0904080244', 0, 0, 'phamtungate@gmail.com', 14500000),
(70, 6, 'tungtungg', 'bn', '0904080244', 0, 0, 'phamtungate@gmail.com', 13500000),
(71, 6, 'tungtungg', 'bn', '0904080244', 1, 1, 'phamtungate@gmail.com', 27000000),
(72, 5, 'tung', '', 'sơn la', 1, 1, '0904080244', 5500000),
(74, 5, 'tung', 'hải hậu', '0342757452', 0, 1, 'tungphph27346@fpt.edu.vn', 13500000);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `cart_user` int(11) NOT NULL,
  `cart_product` int(11) NOT NULL,
  `cart_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_price` int(11) NOT NULL,
  `cart_amount` int(11) NOT NULL,
  `cart_money` int(11) NOT NULL,
  `cart_bill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `cart_user`, `cart_product`, `cart_img`, `cart_name`, `cart_price`, `cart_amount`, `cart_money`, `cart_bill`) VALUES
(1, 0, 17, '3.jpg', 'Đồng hồ Calvin Klein K8M211C1', 5, 1, 5, 19),
(2, 0, 17, '3.jpg', 'Đồng hồ Calvin Klein K8M211C1', 5, 1, 5, 20),
(3, 0, 17, '3.jpg', 'Đồng hồ Calvin Klein K8M211C1', 5, 1, 5, 21),
(4, 0, 17, '3.jpg', 'Đồng hồ Calvin Klein K8M211C1', 5, 1, 5, 22),
(5, 0, 17, '3.jpg', 'Đồng hồ Calvin Klein K8M211C1', 5, 1, 5, 23),
(6, 0, 17, '3.jpg', 'Đồng hồ Calvin Klein K8M211C1', 5, 1, 5, 24),
(7, 0, 16, '2.jpg', 'Đồng hồ CALVIN KLEIN K7B211C1', 30000000, 1, 30000000, 25),
(8, 0, 17, '3.jpg', 'Đồng hồ Calvin Klein K8M211C1', 50000000, 1, 50000000, 26),
(9, 0, 21, '7.jpg', 'Đồng hồ Calvin Klein K3M22V26 ', 20000000, 1, 20000000, 28),
(10, 0, 21, '7.jpg', 'Đồng hồ Calvin Klein K3M22V26 ', 20000000, 1, 20000000, 29),
(11, 0, 17, '3.jpg', 'Đồng hồ Calvin Klein K8M211C1', 50000000, 1, 50000000, 29),
(12, 0, 17, '3.jpg', 'Đồng hồ Calvin Klein K8M211C1', 50000000, 1, 50000000, 29),
(13, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 30),
(14, 0, 17, '3.jpg', 'Đồng hồ Calvin Klein K8M211C1', 48000000, 1, 48000000, 31),
(15, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 32),
(16, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 33),
(17, 0, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 1, 13500000, 34),
(18, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 34),
(19, 0, 17, '3.jpg', 'Đồng hồ Calvin Klein K8M211C1', 48000000, 1, 48000000, 35),
(20, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 36),
(21, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 37),
(22, 0, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 1, 13500000, 37),
(23, 0, 25, '11.jpg', 'Đồng hồCalvin Klein K3M2T126', 1000000, 1, 1000000, 37),
(24, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 38),
(25, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 39),
(26, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 39),
(27, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 39),
(28, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 40),
(29, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 40),
(30, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 40),
(31, 0, 22, '8.jpg', 'Đồng hồ Calvin Klein K8S211C1 ', 33000000, 1, 33000000, 41),
(32, 0, 24, '10.jpg', 'Đồng hồ Calvin Klein K8M271C6', 10000000, 1, 10000000, 42),
(33, 0, 24, '10.jpg', 'Đồng hồ Calvin Klein K8M271C6', 10000000, 1, 10000000, 43),
(34, 0, 17, '3.jpg', 'Đồng hồ Calvin Klein K8M211C1', 48000000, 1, 48000000, 43),
(35, 0, 25, '11.jpg', 'Đồng hồCalvin Klein K3M2T126', 1000000, 2, 1000000, 44),
(36, 0, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 2, 13500000, 45),
(37, 0, 25, '11.jpg', 'Đồng hồCalvin Klein K3M2T126', 1000000, 1, 1000000, 46),
(38, 0, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 1, 13500000, 47),
(39, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 49),
(40, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 50),
(41, 0, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 1, 13500000, 50),
(42, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 51),
(43, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 52),
(44, 0, 20, '6.jpg', 'Đồng hồ Calvin Klein K2G271Z6 ', 6800000, 1, 6800000, 52),
(45, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 2, 5500000, 53),
(46, 0, 20, '6.jpg', 'Đồng hồ Calvin Klein K2G271Z6 ', 6800000, 1, 6800000, 53),
(47, 0, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 1, 13500000, 54),
(48, 0, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 1, 13500000, 55),
(49, 0, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 1, 13500000, 56),
(50, 0, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 1, 13500000, 57),
(51, 0, 22, '8.jpg', 'Đồng hồ Calvin Klein K8S211C1 ', 33000000, 1, 33000000, 57),
(52, 0, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 1, 13500000, 58),
(53, 0, 22, '8.jpg', 'Đồng hồ Calvin Klein K8S211C1 ', 33000000, 1, 33000000, 58),
(54, 0, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 1, 13500000, 59),
(55, 0, 25, '11.jpg', 'Đồng hồCalvin Klein K3M2T126', 1000000, 1, 1000000, 60),
(56, 0, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 1, 13500000, 61),
(57, 0, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 62),
(58, 0, 25, '11.jpg', 'Đồng hồCalvin Klein K3M2T126', 1000000, 1, 1000000, 63),
(59, 0, 25, '11.jpg', 'Đồng hồCalvin Klein K3M2T126', 1000000, 1, 1000000, 64),
(60, 0, 21, '7.jpg', 'Đồng hồ Calvin Klein K3M22V26 ', 19000000, 1, 19000000, 66),
(61, 6, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 1, 13500000, 67),
(62, 6, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 1, 13500000, 68),
(63, 6, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 1, 13500000, 69),
(64, 6, 25, '11.jpg', 'Đồng hồCalvin Klein K3M2T126', 1000000, 1, 1000000, 69),
(65, 6, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 1, 13500000, 70),
(66, 6, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 2, 13500000, 71),
(67, 5, 18, '4.jpg', 'Đồng hồ Calvin Klein K7K411C6 ', 5500000, 1, 5500000, 72),
(68, 6, 24, '10.jpg', 'Đồng hồ Calvin Klein K8M271C6', 10000000, 1, 10000000, 73),
(69, 5, 19, '5.jfif', 'Đồng hồ Calvin Klein K7K411C1', 13500000, 1, 13500000, 74);

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`category_id`, `category_name`) VALUES
(9, 'Calvin Klein'),
(10, 'Louis Erard'),
(11, 'Seiko'),
(12, 'CASIO '),
(13, 'ORIENT '),
(14, ' OLYM PIANUS');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_content` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `comment_user` int(11) NOT NULL,
  `comment_product` int(11) NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `comment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `comment_user`, `comment_product`, `comment_date`, `comment_status`) VALUES
(1, 'alo', 4, 18, '2022-12-07 13:55:14', 0),
(2, 'hì', 4, 18, '2022-12-07 14:01:25', 0),
(3, 'hay\r\n', 4, 18, '2022-12-07 14:01:46', 0),
(4, 'hiếu ơi là hiếu', 4, 18, '2022-12-07 14:28:47', 0),
(5, 'alo', 4, 17, '2022-12-07 14:29:09', 0),
(7, 'alo', 4, 19, '2022-12-08 06:43:28', 0),
(8, 'hi', 4, 80, '2022-12-08 12:58:07', 0),
(9, 'hehe', 6, 18, '2022-12-13 14:43:59', 1),
(11, '.k', 6, 19, '2022-12-14 00:14:31', 0),
(12, 'toots', 6, 17, '2022-12-13 17:03:15', 1),
(13, 'sản phẩm tốt', 5, 19, '2022-12-14 00:14:19', 1),
(14, 'hzy vl', 5, 19, '2023-01-14 15:49:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `detail_id` int(11) NOT NULL,
  `detail_product` int(11) NOT NULL,
  `detail_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_image` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_sale` float NOT NULL,
  `product_size` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_color` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_type` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_wire` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_origin` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_view` int(11) NOT NULL,
  `product_insurance` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_comment` int(225) NOT NULL,
  `product_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_image`, `product_price`, `product_sale`, `product_size`, `product_color`, `product_type`, `product_wire`, `product_origin`, `product_view`, `product_insurance`, `product_comment`, `product_category`) VALUES
(17, 'Đồng hồ Calvin Klein K8M211C1', '', 50000000, 48000000, '39 mm', 'Đen', 'Pin (Quartz)', '50 m', 'Thụy Sĩ   ', 100, '2 năm', 0, 9),
(18, 'Đồng hồ Calvin Klein K7K411C6 ', '4.jpg', 6000000, 5500000, '44 mm', 'Vàng', 'Pin (Quartz)', '100 m', 'Thụy Sĩ   ', 89, '1 năm', 0, 9),
(19, 'Đồng hồ Calvin Klein K7K411C1', '5.jfif', 15500000, 13500000, '44 mm', 'Xanh dương', 'Pin (Quartz)', '100m', 'Thụy Sĩ   ', 97, '2 năm', 0, 9),
(20, 'Đồng hồ Calvin Klein K2G271Z6 ', '6.jpg', 7000000, 6800000, '33 mm', 'Đen', 'Pin (Quartz)', '50m', 'Thụy Sĩ   ', 44, '1 năm', 0, 9),
(21, 'Đồng hồ Calvin Klein K3M22V26 ', '7.jpg', 20000000, 19000000, '42 mm', 'Trắng', 'Pin (Quartz)', '30m', 'Thụy Sĩ   ', 12, '5 năm', 0, 9),
(22, 'Đồng hồ Calvin Klein K8S211C1 ', '8.jpg', 35000000, 33000000, '35 mm', 'Bạc', 'Pin (Quartz)', '100m', 'Thụy Sĩ   ', 35, '1 năm', 0, 9),
(23, 'Đồng hồ Calvin Klein K8M274CB ', '9.jpg', 5000000, 48000000, '41 mm', 'Bạc', 'Pin (Quartz)', '30m', 'Thụy Sĩ   ', 25, '2 năm', 0, 9),
(24, 'Đồng hồ Calvin Klein K8M271C6', '10.jpg', 13000000, 10000000, '40 mm', 'Vàng', 'Pin (Quartz)', '50m', 'Thụy Sĩ   ', 44, '3 năm', 0, 9),
(25, 'Đồng hồCalvin Klein K3M2T126', '11.jpg', 3000000, 1000000, '39 mm', 'Xanh đen', 'Pin (Quartz)', '100m', 'Thụy Sĩ   ', 85, '2 năm', 0, 9),
(33, 'Louis Erard 67258AA22.BDC02', '12.jpg', 12000000, 9000000, '40 mm', 'Đen', 'Cơ Tự động (Automatic)', '100 m', 'Thụy Sĩ   ', 11, '1 năm', 0, 10),
(34, 'Louis Erard 67258AA21.BDC21', '13.jpg', 10000000, 7000000, '35 mm', 'Bạc', 'Cơ Tự động (Automatic)', '50 m', 'Thụy Sĩ   ', 56, '1 năm', 0, 10),
(35, 'Louis Erard 69266AA21.BMA08', '14.jpg', 8000000, 7500000, '40 mm', 'Trắng', 'Cơ Tự động (Automatic)', '100 m', 'Thụy Sĩ   ', 5, '1 năm', 0, 10),
(36, 'Louis Erard 69219AA15.BDC84', '15.jpg', 10000000, 9000000, '42 mm', 'Xanh', 'Cơ Tự động (Automatic)', '50 m', 'Thụy Sĩ   ', 10, '3 năm', 0, 10),
(52, 'Seiko 7 Sports SRPD83K1', '31.jpg', 4000000, 3890000, '40 mm', 'Đen', 'Cơ Tự động (Automatic)', '50 m', 'Nhật Bản', 0, '2 năm', 0, 11),
(53, 'Seiko 5 Sports SRPD81K1', '32.jpg', 7500000, 7000000, '41 mm', 'Đen', 'Cơ Tự động (Automatic)', '30 m', 'Nhật Bản', 0, '5 năm', 0, 11),
(54, 'Seiko 2 Sports SRPD79K1', '33.jpg', 12000000, 11600000, '42 mm', 'Đen', 'Cơ Tự động (Automatic)', '100 m', 'Nhật Bản', 0, '2 năm', 0, 11),
(58, 'Casio AE-1200WHD-1AVDF', '34.jpg', 4000000, 3900000, '38 mm', 'Trắng', 'Pin (Quartz)', '50 m', 'Nhật Bản', 0, '2 năm', 0, 12),
(59, 'Casio MTP-1374L-1AVDF', '35.jpg', 9000000, 8500000, '40 mm', 'Đen', 'Pin (Quartz)', '30 m', 'Nhật Bản', 0, '3 năm', 0, 12),
(60, 'Casio MTP-1374D-1AVDF', '36.jpg', 7999999, 7600000, '41 mm', 'Đen', 'Pin (Quartz)', '50 m', 'Nhật Bản', 0, '1 năm', 0, 12),
(61, 'Casio MTP-V300L-1AUDF', '37.jpg', 12000000, 11800000, '37 mm', 'Đen', 'Pin (Quartz)', '100 m', 'Nhật Bản', 0, '2 năm', 0, 12),
(62, 'Casio MTP-VT01L-1BUDF', '38.jpg', 6500000, 6000000, '45 mm', 'Đen', 'Pin (Quartz)', '100 m', 'Nhật Bản', 0, '2 năm', 0, 12),
(65, 'Casio MTP-1374L-7AVDF', '41.jpg', 7000000, 6900000, '40 mm', 'Trắng Vàng', 'Pin (Quartz)', '30 m', 'Nhật Bản', 0, '5 năm', 0, 12),
(66, 'Casio MTP-V300L-7AUDF', '42.jpg', 5500000, 5400000, '38 mm', 'Trắng Vàng', 'Pin (Quartz)', '50 m', 'Nhật Bản', 0, '2 năm', 0, 12),
(67, 'Casio MTP-VD300BL-5EUDF', '43.jpg', 6000000, 5850000, '39 mm', 'Bạc', 'Pin (Quartz)', '100 m', 'Nhật Bản', 0, '3 năm', 0, 12),
(68, 'Orient RA-AR0204G00B', '45.jpg', 8200000, 8000000, '40 mm', 'Đen', 'Cơ Tự động (Automatic)', ' 50m', 'Nhật Bản', 0, '2 năm', 0, 13),
(69, 'Orient RA-AC0J07S10B', '46.jpg', 9000000, 8500000, '41 mm', 'Vàng', 'Cơ Tự động (Automatic)', '100 m', 'Nhật Bản', 0, '3 năm', 0, 13),
(70, 'Orient RA-AC0J05L10B', '47.jpg', 6500000, 6300000, '42 mm', 'Đen', 'Cơ Tự động (Automatic)', '30 m', 'Nhật Bản', 0, '2 năm', 0, 13),
(71, 'Orient RA-AC0J03L10B', '48.jpg', 7000000, 6800000, '42 mm', 'Đen', 'Cơ Tự động (Automatic)', '100 m', 'Nhật Bản', 0, '1 năm', 0, 13),
(72, 'Orient RA-AC0J01S10B', '49.jpg', 4500000, 4000000, '45 mm', 'Xanh đen', 'Cơ Tự động (Automatic)', '50 m', 'Nhật Bản', 0, '2 năm', 0, 13),
(73, 'Orient RA-AS0010S10B', '50.jpg', 5000000, 4700000, '41 mm', 'Ngà', 'Cơ Tự động (Automatic)', '50 m', 'Nhật Bản', 0, '2 năm', 0, 13),
(74, 'Orient RA-AS0007S10B', '51.jpg', 4000000, 3900000, '36 mm', 'Ngà', 'Cơ Tự động (Automatic)	', '50 m', '', 0, '1 năm', 0, 13),
(75, 'Orient RA-AC0F10S10B', '52.jpg', 15000000, 14200000, '37 mm', 'Bạc', 'Cơ Tự động (Automatic)	', '100 m', 'Nhật Bản', 0, '2 năm', 0, 13),
(76, 'Orient RA-AC0F09L10B', '53.jpg', 7000000, 6600000, '38 mm', 'Xanh đen', 'Cơ Tự động (Automatic)	', '50 m', 'Nhật Bản', 0, '2 năm', 0, 13),
(77, 'Orient RF-QD0012S10B', '54.jpg', 4500000, 4300000, '40 mm', 'Bạc', 'Cơ Tự động (Automatic)	', '50 m', 'Nhật Bản', 0, '3 năm', 0, 13),
(78, 'Orient RF-QD0011L10B', '55.jpg', 9000000, 8900000, '43 mm', 'Xanh dương', 'Cơ Tự động (Automatic)	', '100 m', 'Nhật Bản', 0, '2 năm', 0, 13),
(79, 'Olym Pianus OP130-06MK-GL-T', '56.jpg', 7100000, 6800000, '39 mm', 'Vàng', 'Pin (Quartz)', '50 m', 'Nhật Bản', 0, '1 năm', 0, 13),
(80, 'Olym Pianus OP990-45ADGS-GL-X', '57.jpg', 11000000, 10500000, '38 mm', 'Xanh dương', 'Pin (Quartz)', '50 m', 'Nhật Bản', 3, '3 năm', 0, 14),
(81, 'Olym Pianus OP990-45ADGK-GL-T', '58.jpg', 8000000, 7800000, '41 mm', 'Vàng', 'Pin (Quartz)', '30 m', 'Nhật Bản', 0, '2 năm', 0, 14),
(82, 'Olym Pianus OP89322GK-T', '59.jpg', 9000000, 8700000, '40 mm', 'Vàng', 'Pin (Quartz)', '100 m', 'Nhật Bản', 0, '2 năm', 0, 14),
(83, 'Olym Pianus OP89322GS-T ', '60.jpg', 4500000, 4200000, '39 mm', 'Bạc', 'Pin (Quartz)', '100 m', 'Nhật Bản', 0, '1 năm', 0, 14),
(84, 'Olym Pianus OP89322AGSK-D', '61.jpg', 12000000, 11700000, '45 mm', 'Vàng', 'Pin (Quartz)', '50 m', 'Nhật Bản', 0, '2 năm', 0, 14),
(85, 'Olym Pianus OP89322AGSK-T', '62.jpg', 7500000, 7300000, '41 mm', 'Ngà', 'Pin (Quartz)', '50 m', 'Nhật Bản', 0, '2 năm', 0, 14),
(86, 'Olym Pianus OP89322SK-T', '63.jpg', 6500000, 6300000, '40 mm', 'Vàng', 'Pin (Quartz)', '50 m', 'Nhật Bản', 0, '3 năm', 0, 14),
(87, 'Olym Pianus OP130-07MS-GL-D', '64.jpg', 7000000, 6700000, '42 mm', 'Đen', 'Pin (Quartz)', '50 m', 'Nhật Bản', 0, '2 năm', 0, 14),
(88, 'Olym Pianus OP130-03MS-GL-T', '', 10000000, 9900000, '37 mm', 'Vàng', 'Pin (Quartz)', '30 m', 'Nhật Bản', 0, '3 năm', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `user_password` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `user_image` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `user_lastname` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `user_address` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `user_phone` varchar(11) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `user_email` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `user_vaitro` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_image`, `user_lastname`, `user_address`, `user_phone`, `user_email`, `user_vaitro`) VALUES
(3, 'Phạm tùng', '1', 'kikll.PNG', '', 'phạm tùng', 'bac ninh', '0123456789', 0),
(4, 'huy', '123', '', 'nguyen thanh huy', 'nam dinh', '20939230232', 'huy@gmail.com', 0),
(5, 'tung', '1', '', '', 'hải hậu', '0342757452', 'tungphph27346@fpt.edu.vn', 1),
(6, 'tungtungg', '12345678', '../view/img/ao tet.jpg', '', 'bn', '0904080244', 'phamtungate@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `cmt` (`comment_user`),
  ADD KEY `cmt1` (`comment_product`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `detail` (`detail_product`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `kc` (`product_category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `cmt` FOREIGN KEY (`comment_user`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `cmt1` FOREIGN KEY (`comment_product`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `detail` FOREIGN KEY (`detail_product`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
