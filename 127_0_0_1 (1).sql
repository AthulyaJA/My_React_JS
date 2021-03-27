-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2021 at 05:25 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agriworld`
--
CREATE DATABASE IF NOT EXISTS `agriworld` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `agriworld`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_apply`
--

CREATE TABLE `tb_apply` (
  `id` int(10) NOT NULL,
  `auction_id` int(10) NOT NULL,
  `loginid` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_apply`
--

INSERT INTO `tb_apply` (`id`, `auction_id`, `loginid`, `date`) VALUES
(1, 2, 3, '2021-02-18'),
(2, 1, 3, '2021-02-18'),
(3, 3, 3, '2021-02-18'),
(4, 2, 9, '2021-02-18'),
(7, 1, 3, '2021-02-18'),
(8, 1, 3, '2021-02-22'),
(9, 1, 9, '2021-02-24'),
(10, 1, 9, '2021-02-24'),
(11, 1, 9, '2021-02-24'),
(12, 1, 3, '2021-02-24'),
(13, 1, 3, '2021-02-24'),
(14, 1, 3, '2021-02-24'),
(15, 1, 3, '2021-02-24'),
(16, 1, 3, '2021-02-24'),
(17, 1, 3, '2021-02-24'),
(18, 1, 3, '2021-02-24'),
(19, 1, 3, '2021-02-24'),
(20, 1, 3, '2021-02-24'),
(21, 1, 3, '2021-02-24'),
(22, 1, 3, '2021-02-24'),
(23, 1, 3, '2021-02-24'),
(24, 1, 3, '2021-02-24'),
(25, 1, 3, '2021-02-24'),
(26, 1, 3, '2021-02-24'),
(27, 1, 3, '2021-02-24'),
(28, 1, 3, '2021-02-24'),
(29, 1, 3, '2021-02-24'),
(30, 1, 3, '2021-02-24'),
(31, 1, 3, '2021-02-24'),
(32, 1, 3, '2021-02-24'),
(33, 1, 3, '2021-02-24'),
(34, 1, 3, '2021-02-24'),
(35, 1, 3, '2021-02-24'),
(36, 1, 3, '2021-02-24'),
(37, 1, 3, '2021-02-24'),
(38, 1, 3, '2021-02-25'),
(39, 1, 9, '2021-02-25'),
(40, 2, 9, '2021-02-25'),
(41, 2, 9, '2021-02-25'),
(42, 2, 0, '2021-02-25'),
(43, 2, 0, '2021-02-25'),
(44, 2, 9, '2021-02-25'),
(45, 2, 9, '2021-02-25'),
(46, 2, 3, '2021-02-25'),
(47, 1, 3, '2021-02-26'),
(48, 1, 3, '2021-02-26'),
(49, 1, 3, '2021-02-26'),
(50, 1, 9, '2021-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `tb_auction`
--

CREATE TABLE `tb_auction` (
  `id` int(10) NOT NULL,
  `crop_name` varchar(20) NOT NULL,
  `minprice` int(10) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_auction`
--

INSERT INTO `tb_auction` (`id`, `crop_name`, `minprice`, `quantity`, `date`) VALUES
(4, 'carrot', 50, '3', '2021-03-04'),
(5, 'Sugarcane', 100, '4', '2021-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `tb_auction_apply`
--

CREATE TABLE `tb_auction_apply` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `productname` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_auction_apply`
--

INSERT INTO `tb_auction_apply` (`id`, `name`, `productname`, `price`, `quantity`) VALUES
(17, 'Athulya A', 'carrot', 400, '3'),
(18, 'Athulya A', 'carrot', 3, '200');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buy`
--

CREATE TABLE `tb_buy` (
  `id` int(11) NOT NULL,
  `crop_id` int(11) NOT NULL,
  `buyer_name` varchar(100) NOT NULL,
  `loginid` int(11) NOT NULL,
  `buy_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_buy`
--

INSERT INTO `tb_buy` (`id`, `crop_id`, `buyer_name`, `loginid`, `buy_date`) VALUES
(1, 1, '', 2021, '0000-00-00'),
(2, 1, '', 9, '2021-02-18'),
(3, 1, '', 3, '2021-02-18'),
(4, 1, '', 3, '2021-02-18'),
(5, 2, '', 3, '2021-02-18'),
(6, 6, '', 10, '2021-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buy_prdt`
--

CREATE TABLE `tb_buy_prdt` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `d_buy` date NOT NULL,
  `log_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_buy_prdt`
--

INSERT INTO `tb_buy_prdt` (`id`, `p_id`, `d_buy`, `log_id`) VALUES
(3, 1, '2021-02-18', 3),
(12, 3, '2021-02-27', 3),
(13, 3, '2021-02-28', 10),
(14, 3, '2021-02-28', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tb_crop`
--

CREATE TABLE `tb_crop` (
  `id` int(11) NOT NULL,
  `crop_name` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `Filename` text NOT NULL,
  `loginid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_crop`
--

INSERT INTO `tb_crop` (`id`, `crop_name`, `quantity`, `price`, `Filename`, `loginid`) VALUES
(2, 'carrot', 10, 100, 'cara.jpg', 3),
(6, 'Tomato', 2, 1000, 'tom.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_cropprice`
--

CREATE TABLE `tb_cropprice` (
  `id` int(11) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_cropprice`
--

INSERT INTO `tb_cropprice` (`id`, `item`, `price`) VALUES
(4, 'Tomato', 100),
(5, 'bringal', 30),
(6, 'cauliflower', 45);

-- --------------------------------------------------------

--
-- Table structure for table `tb_farmer`
--

CREATE TABLE `tb_farmer` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `phno` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `adar` varchar(100) NOT NULL,
  `loginid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_farmer`
--

INSERT INTO `tb_farmer` (`id`, `fname`, `lname`, `dob`, `address`, `phno`, `email`, `adar`, `loginid`) VALUES
(2, 'Anisha', 'N', '2021-02-11', 'asdfghjk', '123456', 'ani@gmailcom', '1234567', 3),
(4, 'JayaLekshmi', 'L', '2021-04-01', 'Jaya Bhavn', '8078126131', 'jaya@gmail.com', '123456789', 10),
(5, 'Arya ', 'A S', '2021-03-30', 'Arya bhavan', '4567890890', 'arya@gmail.com', '5678900', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tb_loan`
--

CREATE TABLE `tb_loan` (
  `id` int(10) NOT NULL,
  `loanname` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `place` varchar(20) NOT NULL,
  `cultivatedarea` varchar(30) NOT NULL,
  `loanamount` int(30) NOT NULL,
  `uploadfile` varchar(40) NOT NULL,
  `loginid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_loan`
--

INSERT INTO `tb_loan` (`id`, `loanname`, `name`, `place`, `cultivatedarea`, `loanamount`, `uploadfile`, `loginid`) VALUES
(5, 'Kiasan', 'Anisha', 'kollam', '10000', 10000000, '1.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` enum('0','1','2') NOT NULL,
  `status` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`id`, `email`, `password`, `type`, `status`) VALUES
(1, 'admin', 'admin', '0', '1'),
(3, 'ani@gmailcom', '2', '1', '1'),
(9, 'athulya@gmail.com', '3', '2', '1'),
(10, 'jaya@gmail.com', '2', '1', '1'),
(11, 'arya@gmail.com', '2', '1', '1'),
(12, 'aki@gmail.com', '3', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_notification`
--

CREATE TABLE `tb_notification` (
  `id` int(10) NOT NULL,
  `notification` varchar(20) NOT NULL,
  `cost` bigint(20) NOT NULL,
  `interest` int(11) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_notification`
--

INSERT INTO `tb_notification` (`id`, `notification`, `cost`, `interest`, `duration`) VALUES
(31, 'Kisan', 200000, 5, 7),
(32, 'Life Nila', 30000, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `id` int(11) NOT NULL,
  `product` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `image_details` varchar(100) NOT NULL,
  `log_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`id`, `product`, `price`, `image_details`, `log_id`) VALUES
(1, 'vasantada sugar', 1000, 'vas.jpg', 9),
(3, 'Espoma Organic Garden', 500, 'es.jpg', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tb_seller`
--

CREATE TABLE `tb_seller` (
  `id` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `phno` varchar(12) NOT NULL,
  `email` varchar(12) NOT NULL,
  `adar` int(20) NOT NULL,
  `loginid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_seller`
--

INSERT INTO `tb_seller` (`id`, `fname`, `lname`, `dob`, `address`, `phno`, `email`, `adar`, `loginid`) VALUES
(4, 'Athulya', 'Joy', '2021-02-04', 'Athulya', '7878787', 'athulya@gmai', 123456755, 9),
(5, 'Akhila', 'V S', '2021-03-26', 'Akhil bhavn', '456789567', 'aki@gmail.co', 2147483647, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_apply`
--
ALTER TABLE `tb_apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_auction`
--
ALTER TABLE `tb_auction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_auction_apply`
--
ALTER TABLE `tb_auction_apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_buy`
--
ALTER TABLE `tb_buy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_buy_prdt`
--
ALTER TABLE `tb_buy_prdt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_id` (`log_id`);

--
-- Indexes for table `tb_crop`
--
ALTER TABLE `tb_crop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_cropprice`
--
ALTER TABLE `tb_cropprice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_farmer`
--
ALTER TABLE `tb_farmer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_loan`
--
ALTER TABLE `tb_loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_notification`
--
ALTER TABLE `tb_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_id` (`log_id`);

--
-- Indexes for table `tb_seller`
--
ALTER TABLE `tb_seller`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loginid` (`loginid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_apply`
--
ALTER TABLE `tb_apply`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tb_auction`
--
ALTER TABLE `tb_auction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_auction_apply`
--
ALTER TABLE `tb_auction_apply`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_buy`
--
ALTER TABLE `tb_buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_buy_prdt`
--
ALTER TABLE `tb_buy_prdt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_crop`
--
ALTER TABLE `tb_crop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_cropprice`
--
ALTER TABLE `tb_cropprice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_farmer`
--
ALTER TABLE `tb_farmer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_loan`
--
ALTER TABLE `tb_loan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_notification`
--
ALTER TABLE `tb_notification`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_seller`
--
ALTER TABLE `tb_seller`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_buy_prdt`
--
ALTER TABLE `tb_buy_prdt`
  ADD CONSTRAINT `tb_buy_prdt_ibfk_1` FOREIGN KEY (`log_id`) REFERENCES `tb_login` (`id`);

--
-- Constraints for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD CONSTRAINT `tb_product_ibfk_1` FOREIGN KEY (`log_id`) REFERENCES `tb_login` (`id`);

--
-- Constraints for table `tb_seller`
--
ALTER TABLE `tb_seller`
  ADD CONSTRAINT `tb_seller_ibfk_1` FOREIGN KEY (`loginid`) REFERENCES `tb_login` (`id`);
--
-- Database: `airline`
--
CREATE DATABASE IF NOT EXISTS `airline` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `airline`;

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `airportname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` int(11) NOT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`id`, `airportname`, `city`, `state`, `zipcode`, `timezone`, `created_at`, `updated_at`) VALUES
(1, 'TRIVANDRUM', 'TRIVANDRUM', 'KERALA', 3456, '567', '2021-03-10 05:51:27', '2021-03-10 05:51:27'),
(2, 'kannur', 'KANNUR', 'KERALA', 3456, '12:34', NULL, NULL),
(3, 'Kochi', 'KOCHI', 'KERALA', 897655, '18:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airline` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fl_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dest_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `class`, `airline`, `fl_number`, `departure`, `dep_date`, `dep_time`, `destination`, `dest_date`, `age`, `fname`, `lname`, `phone`, `created_at`, `updated_at`) VALUES
(3, 'firstclass', 'air india', 'ad10', 'TRIVANDRUM', '2021-03-04', '19:29', 'KOCHI', '2021-03-26', '60', 'Geethu', 's', '78899889', '2021-03-15 00:47:30', '2021-03-15 00:47:30'),
(5, 'ecnomic', 'air india', 'ad10', 'TRIVANDRUM', '2021-03-04', '19:29', 'KOCHI', '2021-03-26', '67', 'Geethu', 'SR', '1234567', '2021-03-15 01:02:45', '2021-03-15 01:02:45'),
(6, 'ecnomic', 'air india', 'ad10', 'TRIVANDRUM', '2021-03-04', '19:29', 'KOCHI', '2021-03-26', '40', 'Geethu', 's', '78899889', '2021-03-15 02:07:05', '2021-03-15 02:07:05'),
(7, 'bussiness', 'air india', 'ad10', 'TRIVANDRUM', '2021-03-04', '19:29', 'KOCHI', '2021-03-26', '60', 'Geethu', 'SR', '78899889', '2021-03-15 02:39:04', '2021-03-15 02:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fl_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fl_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `fl_name`, `fl_number`, `file_path`, `fid`, `created_at`, `updated_at`) VALUES
(1, '1615578342_Geethu resume.pdf', NULL, '0', '/storage/uploads/1615578342_Geethu resume.pdf', NULL, '2021-03-12 14:15:42', '2021-03-12 14:15:42'),
(2, '1615579058_Geethu resume.pdf', 'Indigo', 'AD100', '/storage/uploads/1615579058_Geethu resume.pdf', NULL, '2021-03-12 14:27:38', '2021-03-12 14:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `flightadds`
--

CREATE TABLE `flightadds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `airline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fl_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dest_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dest_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btseats` int(11) NOT NULL,
  `ftseats` int(11) NOT NULL,
  `etseats` int(11) NOT NULL,
  `baseat` int(11) NOT NULL,
  `faseat` int(11) NOT NULL,
  `easeat` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `seatsa` int(11) NOT NULL,
  `bcost` int(11) NOT NULL,
  `fcost` int(11) NOT NULL,
  `ecost` int(11) NOT NULL,
  `bccost` int(11) NOT NULL,
  `fccost` int(11) NOT NULL,
  `eccost` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `airline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fl_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dest_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dest_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btseats` int(11) NOT NULL,
  `ftseats` int(11) NOT NULL,
  `etseats` int(11) NOT NULL,
  `baseat` int(11) NOT NULL,
  `faseat` int(11) NOT NULL,
  `easeat` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `seatsa` int(11) NOT NULL,
  `bcost` int(11) NOT NULL,
  `fcost` int(11) NOT NULL,
  `ecost` int(11) NOT NULL,
  `bccost` int(11) NOT NULL,
  `fccost` int(11) NOT NULL,
  `eccost` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `airline`, `fl_number`, `departure`, `dep_date`, `dep_time`, `destination`, `dest_date`, `dest_time`, `btseats`, `ftseats`, `etseats`, `baseat`, `faseat`, `easeat`, `cost`, `seatsa`, `bcost`, `fcost`, `ecost`, `bccost`, `fccost`, `eccost`, `created_at`, `updated_at`) VALUES
(1, 'air india', 'ad10', 'TRIVANDRUM', '2021-03-04', '19:29', 'KOCHI', '2021-03-26', '22:29', 49, 60, 57, 59, 58, 68, 10000, 70, 8000, 10000, 20000, 2000, 5000, 5000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_09_112710_create_flightadds_table', 1),
(5, '2021_03_09_135622_create_flights_table', 2),
(7, '2021_03_10_133042_create_notifications_table', 3),
(8, '2021_03_11_041727_create_notifications_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fl_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `fl_number`, `airline`, `notification`, `current_date`, `created_at`, `updated_at`) VALUES
(2, 'ad1011', 'indigo', 'cancel', '2021-03-11', '2021-03-10 23:43:57', '2021-03-10 23:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneno` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adhar` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `firstname`, `lastname`, `age`, `gender`, `address`, `phoneno`, `email`, `password`, `adhar`, `created_at`, `updated_at`) VALUES
(1, 'Athulya', 'A', 23, 'female', 'Athulya bahavan', 1234567, 'athulya@gmail.com', 'Athulya', 12345678, NULL, NULL),
(3, 'Asha', 'A', 30, 'female', 'sdfgh', 96567986, 'asha@gmail.com', 'asha12', 1234555, NULL, NULL),
(5, 'admin', 'admin', 30, 'male', 'asdfgh', 96567986, 'admin@gmail.com', '$2y$10$P33Go46uc25BrFesAMWaVutWb/pQ4uu2KWw3EEYf4F1YdCBihB3B.', 22223, NULL, NULL),
(6, 'Geethu', 'Eipe', 30, 'female', 'Geethu Bhvan', 96567986, 'geethu@gmail.com', '$2y$10$gpKYRX7jFw8fCOrUrrHCNuGe1z/aOeui2HpHMppexNH9u6BH/rM3S', 1234555, NULL, NULL),
(7, 'Anjali', 's', 30, 'female', 'Anjali bahavan', 47452525, 'anjali@gmail.com', 'anjali12', 1222222222, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flightadds`
--
ALTER TABLE `flightadds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airports`
--
ALTER TABLE `airports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flightadds`
--
ALTER TABLE `flightadds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `airline_reservation`
--
CREATE DATABASE IF NOT EXISTS `airline_reservation` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `airline_reservation`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(20) NOT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  `staff_id` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `pwd`, `staff_id`, `name`, `email`) VALUES
('roshan', 'passpass', '101', 'Harry Roshan', 'harryroshan1997@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` varchar(20) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `address` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `pwd`, `name`, `email`, `phone_no`, `address`) VALUES
('aadith', 'aadith007', 'aadith_name', 'aadith_email', '12345', 'aadith_address'),
('Apple', 'abhishek', 'Abhijeeth', 'gmail@gmail.com', '+9185564764', 'hgsjhgdjfdjdgf'),
('blah', 'blah blah', 'blah', 'blah@gmail.com', '993498570', 'blah'),
('charles', 'charles_pass', 'Charles', 'charles@gmail.com', '9090909090', 'Bangalore'),
('chirag008', 'chirag', 'Chirag G', 'chirag@gmail.com', '8080808080', 'Kuldlu Gate'),
('harryroshan', 'passpasshello', 'Harry Roshan', 'harryroshan1997@gmai', '9845713736', '#381, 1st E Main,');

-- --------------------------------------------------------

--
-- Table structure for table `flight_details`
--

CREATE TABLE `flight_details` (
  `flight_no` varchar(10) NOT NULL,
  `from_city` varchar(20) DEFAULT NULL,
  `to_city` varchar(20) DEFAULT NULL,
  `departure_date` date NOT NULL,
  `arrival_date` date DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `seats_economy` int(5) DEFAULT NULL,
  `seats_business` int(5) DEFAULT NULL,
  `price_economy` int(10) DEFAULT NULL,
  `price_business` int(10) DEFAULT NULL,
  `jet_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight_details`
--

INSERT INTO `flight_details` (`flight_no`, `from_city`, `to_city`, `departure_date`, `arrival_date`, `departure_time`, `arrival_time`, `seats_economy`, `seats_business`, `price_economy`, `price_business`, `jet_id`) VALUES
('AA101', 'bangalore', 'mumbai', '2017-12-01', '2017-12-02', '21:00:00', '01:00:00', 195, 96, 5000, 7500, '10001'),
('AA102', 'bangalore', 'mumbai', '2017-12-01', '2017-12-01', '10:00:00', '12:00:00', 200, 73, 2500, 3000, '10002'),
('AA103', 'bangalore', 'chennai', '2017-12-03', '2017-12-03', '17:00:00', '17:45:00', 150, 75, 1200, 1500, '10004'),
('AA104', 'bangalore', 'mysore', '2017-12-04', '2017-12-04', '09:00:00', '09:17:00', 37, 4, 500, 750, '10003'),
('AA106', 'bangalore', 'hyderabad', '2017-12-01', '2017-12-01', '13:00:00', '14:00:00', 150, 75, 3000, 3750, '10004');

-- --------------------------------------------------------

--
-- Table structure for table `frequent_flier_details`
--

CREATE TABLE `frequent_flier_details` (
  `frequent_flier_no` varchar(20) NOT NULL,
  `customer_id` varchar(20) DEFAULT NULL,
  `mileage` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frequent_flier_details`
--

INSERT INTO `frequent_flier_details` (`frequent_flier_no`, `customer_id`, `mileage`) VALUES
('10001000', 'aadith', 375),
('20002000', 'harryroshan', 150);

-- --------------------------------------------------------

--
-- Table structure for table `jet_details`
--

CREATE TABLE `jet_details` (
  `jet_id` varchar(10) NOT NULL,
  `jet_type` varchar(20) DEFAULT NULL,
  `total_capacity` int(5) DEFAULT NULL,
  `active` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jet_details`
--

INSERT INTO `jet_details` (`jet_id`, `jet_type`, `total_capacity`, `active`) VALUES
('10001', 'Dreamliner', 300, 'Yes'),
('10002', 'Airbus A380', 275, 'Yes'),
('10003', 'ATR', 50, 'Yes'),
('10004', 'Boeing 737', 225, 'Yes'),
('10007', 'Test_Model', 250, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `passenger_id` int(10) NOT NULL,
  `pnr` varchar(15) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `meal_choice` varchar(5) DEFAULT NULL,
  `frequent_flier_no` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`passenger_id`, `pnr`, `name`, `age`, `gender`, `meal_choice`, `frequent_flier_no`) VALUES
(1, '1669050', 'Harry Roshan', 20, 'male', 'yes', '20002000'),
(1, '2369143', 'blah', 20, 'male', 'yes', NULL),
(1, '3027167', 'aadith_name', 10, 'male', 'yes', NULL),
(1, '3773951', 'harry', 51, 'male', 'yes', NULL),
(1, '4797983', 'pass1', 34, 'male', 'yes', NULL),
(1, '5421865', 'pass1', 10, 'male', 'yes', NULL),
(1, '6980157', 'roshan', 20, 'male', 'yes', NULL),
(1, '8503285', 'aadith_name', 10, 'male', 'yes', '10001000'),
(2, '1669050', 'berti harry', 45, 'female', 'yes', NULL),
(2, '2369143', 'blah', 51, 'male', 'yes', NULL),
(2, '3027167', 'roshan', 20, 'male', 'yes', NULL),
(2, '3773951', 'berti', 42, 'female', 'yes', NULL),
(2, '4797983', 'Harry Roshan', 20, 'male', 'yes', '20002000'),
(2, '5421865', 'pass2', 20, 'female', 'yes', NULL),
(2, '6980157', 'aadith', 9, 'male', 'yes', NULL),
(2, '8503285', 'roshan_name', 20, 'male', 'yes', NULL),
(3, '1669050', 'aadith_name', 10, 'male', 'yes', NULL),
(3, '2369143', 'blah', 10, 'male', 'yes', NULL),
(3, '3773951', 'aadith', 11, 'male', 'yes', '10001000'),
(3, '4797983', 'aadith_name', 10, 'male', 'yes', '10001000'),
(3, '5421865', 'pass3', 30, 'male', 'yes', NULL),
(4, '2369143', 'blah', 42, 'female', 'yes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `payment_id` varchar(20) NOT NULL,
  `pnr` varchar(15) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_amount` int(6) DEFAULT NULL,
  `payment_mode` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`payment_id`, `pnr`, `payment_date`, `payment_amount`, `payment_mode`) VALUES
('120000248', '4797983', '2017-11-25', 4200, 'credit card'),
('142539461', '3773951', '2017-11-25', 4050, 'credit card'),
('165125569', '8503285', '2017-11-25', 7500, 'net banking'),
('467972527', '2369143', '2017-11-26', 33400, 'debit card'),
('557778944', '6980157', '2017-11-26', 11700, 'credit card'),
('620041544', '1669050', '2017-11-25', 4800, 'debit card'),
('665360715', '5421865', '2017-11-28', 15750, 'net banking'),
('862686553', '3027167', '2017-11-25', 10700, 'debit card');

--
-- Triggers `payment_details`
--
DELIMITER $$
CREATE TRIGGER `update_ticket_after_payment` AFTER INSERT ON `payment_details` FOR EACH ROW UPDATE ticket_details
     SET booking_status='CONFIRMED', payment_id= NEW.payment_id
   WHERE pnr = NEW.pnr
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_details`
--

CREATE TABLE `ticket_details` (
  `pnr` varchar(15) NOT NULL,
  `date_of_reservation` date DEFAULT NULL,
  `flight_no` varchar(10) DEFAULT NULL,
  `journey_date` date DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `booking_status` varchar(20) DEFAULT NULL,
  `no_of_passengers` int(5) DEFAULT NULL,
  `lounge_access` varchar(5) DEFAULT NULL,
  `priority_checkin` varchar(5) DEFAULT NULL,
  `insurance` varchar(5) DEFAULT NULL,
  `payment_id` varchar(20) DEFAULT NULL,
  `customer_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_details`
--

INSERT INTO `ticket_details` (`pnr`, `date_of_reservation`, `flight_no`, `journey_date`, `class`, `booking_status`, `no_of_passengers`, `lounge_access`, `priority_checkin`, `insurance`, `payment_id`, `customer_id`) VALUES
('1669050', '2017-11-25', 'AA104', '2017-12-04', 'business', 'CONFIRMED', 3, 'yes', 'yes', 'yes', '620041544', 'harryroshan'),
('2369143', '2017-11-26', 'AA101', '2017-12-01', 'business', 'CONFIRMED', 4, 'yes', 'yes', 'yes', '467972527', 'blah'),
('3027167', '2017-11-25', 'AA101', '2017-12-01', 'economy', 'CONFIRMED', 2, 'no', 'no', 'yes', '862686553', 'aadith'),
('3773951', '2017-11-25', 'AA104', '2017-12-04', 'economy', 'CONFIRMED', 3, 'yes', 'yes', 'yes', '142539461', 'aadith'),
('4797983', '2017-11-25', 'AA104', '2017-12-04', 'business', 'CONFIRMED', 3, 'yes', 'no', 'yes', '120000248', 'harryroshan'),
('5421865', '2017-11-28', 'AA101', '2017-12-01', 'economy', 'CONFIRMED', 3, 'no', 'no', 'no', '665360715', 'harryroshan'),
('6980157', '2017-11-26', 'AA101', '2017-12-01', 'economy', 'CANCELED', 2, 'yes', 'yes', 'yes', '557778944', 'aadith'),
('8503285', '2017-11-25', 'AA102', '2017-12-01', 'business', 'CONFIRMED', 2, 'yes', 'yes', 'no', '165125569', 'aadith');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `flight_details`
--
ALTER TABLE `flight_details`
  ADD PRIMARY KEY (`flight_no`,`departure_date`),
  ADD KEY `jet_id` (`jet_id`);

--
-- Indexes for table `frequent_flier_details`
--
ALTER TABLE `frequent_flier_details`
  ADD PRIMARY KEY (`frequent_flier_no`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `jet_details`
--
ALTER TABLE `jet_details`
  ADD PRIMARY KEY (`jet_id`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`passenger_id`,`pnr`),
  ADD KEY `pnr` (`pnr`),
  ADD KEY `frequent_flier_no` (`frequent_flier_no`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `pnr` (`pnr`);

--
-- Indexes for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD PRIMARY KEY (`pnr`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `journey_date` (`journey_date`),
  ADD KEY `flight_no` (`flight_no`),
  ADD KEY `flight_no_2` (`flight_no`,`journey_date`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight_details`
--
ALTER TABLE `flight_details`
  ADD CONSTRAINT `flight_details_ibfk_1` FOREIGN KEY (`jet_id`) REFERENCES `jet_details` (`jet_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `frequent_flier_details`
--
ALTER TABLE `frequent_flier_details`
  ADD CONSTRAINT `frequent_flier_details_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `passengers`
--
ALTER TABLE `passengers`
  ADD CONSTRAINT `passengers_ibfk_1` FOREIGN KEY (`pnr`) REFERENCES `ticket_details` (`pnr`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `passengers_ibfk_2` FOREIGN KEY (`frequent_flier_no`) REFERENCES `frequent_flier_details` (`frequent_flier_no`) ON UPDATE CASCADE;

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `payment_details_ibfk_1` FOREIGN KEY (`pnr`) REFERENCES `ticket_details` (`pnr`) ON UPDATE CASCADE;

--
-- Constraints for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD CONSTRAINT `ticket_details_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_details_ibfk_3` FOREIGN KEY (`flight_no`,`journey_date`) REFERENCES `flight_details` (`flight_no`, `departure_date`) ON DELETE SET NULL ON UPDATE CASCADE;
--
-- Database: `athu2`
--
CREATE DATABASE IF NOT EXISTS `athu2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `athu2`;
--
-- Database: `athulya`
--
CREATE DATABASE IF NOT EXISTS `athulya` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `athulya`;

-- --------------------------------------------------------

--
-- Table structure for table `emloyee`
--

CREATE TABLE `emloyee` (
  `id` int(6) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `emloyees`
--

CREATE TABLE `emloyees` (
  `id` int(6) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `salary` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emloyees`
--

INSERT INTO `emloyees` (`id`, `first_name`, `last_name`, `salary`) VALUES
(1, 'Raji', 'm', 10000),
(2, 'Raju', 'v', 10000),
(3, 'krishna', 'j', 1000),
(4, 'Anandu', 'H', 2000),
(5, 'Raja', 'j', 30000),
(6, 'Raja', 'j', 30000),
(7, 'Raja', 'j', 30000),
(8, 'Raja', 'j', 30000),
(9, 'Raja', 'j', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `person1`
--

CREATE TABLE `person1` (
  `id` int(6) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person1`
--

INSERT INTO `person1` (`id`, `first_name`, `last_name`) VALUES
(2, 'Joy', 'y'),
(3, 'Anandu', 's'),
(4, 'Krishna', 'R'),
(6, 'Athul', 'Raj'),
(7, 'sredul', 'v'),
(8, 'Athira', 'p'),
(9, 'Achu', 'T'),
(10, 'Raji', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fname`, `lname`, `email`, `password`, `dob`) VALUES
(3, 'Athulya', 'A', 'athu@gmail.com', 'asdfg', '0000-00-00'),
(4, '', '', '', '', '0000-00-00'),
(5, 'Anandu', 's', 'appu@gmail.com', 'sdf234', '2021-01-14'),
(12, '', '', '', '234dfg', '0000-00-00'),
(20, 'joice', 'A', 'joeic@gmail.com', '123', '2021-02-07'),
(21, 'Achu', 'A', 'achu@gmail.com', '2323', '2021-02-19'),
(22, 'Anjali ', 'SR', 'anjalis@gmail.com', '1212', '2021-03-12'),
(45, '', '', '', '', '0000-00-00'),
(46, 'joice', 'sara', 'jov@gmail.com', '22', '2021-03-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emloyee`
--
ALTER TABLE `emloyee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emloyees`
--
ALTER TABLE `emloyees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person1`
--
ALTER TABLE `person1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emloyees`
--
ALTER TABLE `emloyees`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `checks`
--

CREATE TABLE `checks` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checks`
--

INSERT INTO `checks` (`id`, `firstname`, `email`) VALUES
(1, 'Athulya', 'athulya@gmail.com'),
(2, 'Anju', 'annju@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `members_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `members_name`, `email`, `Address`) VALUES
(5, 'geethu A', 'athu@gmail.com', 'zxcvb'),
(6, 'Athulya A', 'athu@gmail.com', 'athulya bahvan');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_04_051915_creat_test_table', 1),
(5, '2021_03_04_054247_create_log_table', 2),
(6, '2021_03_05_034102_create_logins_table', 3),
(7, '2021_03_05_052431_create_registers_table', 4),
(8, '2021_03_09_051951_change_password_type_in_registers-table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `qua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `qua`) VALUES
(1, 'phone', 500, 24),
(3, 'peb', 7, 8),
(4, 'car', 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` int(12) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `username`, `password`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Athulya A', 234567, 'athu@gmail.com', NULL, NULL),
(5, 'Rubiya s', 234567, 'rubiya@gmail.com', NULL, NULL),
(6, 'Anjali', 234567, 'anju@gmail.com', NULL, NULL),
(7, 'sony', 234567, 'sony@gamil.com', NULL, NULL),
(8, 'minnu', 234567, 'minnu@gmail.com', NULL, NULL),
(9, 'Ambika', 4555554, 'ambika@gmail.com', NULL, NULL),
(10, 'anadu', 5656565, 'anandu@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `qua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checks`
--
ALTER TABLE `checks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checks`
--
ALTER TABLE `checks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `database_name`
--
CREATE DATABASE IF NOT EXISTS `database_name` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `database_name`;
--
-- Database: `db_academy`
--
CREATE DATABASE IF NOT EXISTS `db_academy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_academy`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bill`
--

CREATE TABLE `tb_bill` (
  `id` int(11) NOT NULL,
  `bill` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `loginid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_bill`
--

INSERT INTO `tb_bill` (`id`, `bill`, `name`, `loginid`) VALUES
(1, 'Geethu_resume.pdf', 'Leena', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_complaint`
--

CREATE TABLE `tb_complaint` (
  `id` int(11) NOT NULL,
  `complaint` varchar(100) NOT NULL,
  `cm_date` date NOT NULL,
  `loginid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_complaint`
--

INSERT INTO `tb_complaint` (`id`, `complaint`, `cm_date`, `loginid`) VALUES
(4, 'notyyy', '2021-02-17', 9),
(5, 'notyyy', '2021-02-17', 9),
(6, 'poratlty', '2021-02-18', 9),
(7, 'no food', '2021-02-18', 9),
(8, 'no manasamadanm\r\n', '2021-02-18', 9),
(9, 'no study', '2021-02-19', 9),
(10, 'very stress', '2021-02-20', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tb_job_apply`
--

CREATE TABLE `tb_job_apply` (
  `id` int(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Phoneno` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `qualification` varchar(10) NOT NULL,
  `email` varchar(10) NOT NULL,
  `title` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_job_apply`
--

INSERT INTO `tb_job_apply` (`id`, `Name`, `Address`, `District`, `Phoneno`, `dob`, `gender`, `qualification`, `email`, `title`, `department`) VALUES
(1, 'Anu', 'Anu villa', 't', '9087658709', '2000-02-19', 'female', 'BTech', 'anu@gmail.', 'Chief executive', 'Finance'),
(2, 'Amar', 'asdfv', 'Thiruvananthapuram', '9087654509', '2021-02-04', 'male', '+2', 'amar@gmail', 'Chief executive', 'Developer');

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `id` int(10) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `user_type` enum('0','1','2','3') NOT NULL,
  `status` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`id`, `user_name`, `password`, `user_type`, `status`) VALUES
(1, 'admin', '$2y$10$8swLhQbj6ujvoeNojvsUY.edDad69y4GCPSIJAFq2zxwQPL0ERu8m', '0', '1'),
(3, 'leena@gmail.com', '$2y$10$UxLhdI1J..ZUpdK5Nej4DeRXQCuWRP9HBBRarxZcZqsr3/Pum/1mO', '2', '1'),
(8, 'anisha@gmail.com', '$2y$10$2vQKzuujBLNeTse6o.jRCue2vjE0qCPXgVqHv7jJAK0aw7EZmyuGS', '3', '1'),
(9, 'athulya@gmail.com', '$2y$10$dRR3gVK.1akCwYBasjp6ZuxzI5u0g.HVttcIgbfwQ1hRyVdzUxzYe', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_note`
--

CREATE TABLE `tb_note` (
  `id` int(11) NOT NULL,
  `note` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `loginid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_note`
--

INSERT INTO `tb_note` (`id`, `note`, `subject`, `loginid`) VALUES
(1, 'MHA_IB_ACIO_Paper_21.pdf', 'Java', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_replay`
--

CREATE TABLE `tb_replay` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `replay` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_replay`
--

INSERT INTO `tb_replay` (`id`, `name`, `replay`) VALUES
(3, 'Anisha', 'zxcvbnm');

-- --------------------------------------------------------

--
-- Table structure for table `tb_staff`
--

CREATE TABLE `tb_staff` (
  `staff_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `district` varchar(20) NOT NULL,
  `pincode` int(30) NOT NULL,
  `phoneno` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `section` varchar(100) NOT NULL,
  `img_details` text NOT NULL,
  `loginid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_staff`
--

INSERT INTO `tb_staff` (`staff_id`, `name`, `address`, `district`, `pincode`, `phoneno`, `gender`, `dob`, `section`, `img_details`, `loginid`) VALUES
(1, 'Anisha', 'happyhouse', 'Thiruvananthapuram', 998877, '9988776655', 'female', '1997-07-08', 'finance', 'wipro.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tb_student`
--

CREATE TABLE `tb_student` (
  `stud_id` int(10) NOT NULL,
  `s_name` varchar(20) NOT NULL,
  `fathername` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `district` varchar(30) NOT NULL,
  `pincode` int(30) NOT NULL,
  `education` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `mobileno` varchar(30) NOT NULL,
  `img_details` text NOT NULL,
  `loginid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_student`
--

INSERT INTO `tb_student` (`stud_id`, `s_name`, `fathername`, `address`, `gender`, `district`, `pincode`, `education`, `course`, `dob`, `mobileno`, `img_details`, `loginid`) VALUES
(2, 'Athulya A', 'Joy', 'happyhouse', '', 'T', 989898, '', 'Front-End Developer', '', '9798907645', 'wipro1.jpg', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tb_trainer`
--

CREATE TABLE `tb_trainer` (
  `tid` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `district` varchar(20) NOT NULL,
  `pincode` int(20) NOT NULL,
  `phoneno` int(15) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `img_details` text NOT NULL,
  `loginid` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_trainer`
--

INSERT INTO `tb_trainer` (`tid`, `name`, `address`, `district`, `pincode`, `phoneno`, `gender`, `dob`, `subject`, `img_details`, `loginid`) VALUES
(1, 'Leena c', 'Happyhouse', '', 897867, 99887766, '', '', 'Java', 'wipro2.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_vacancy`
--

CREATE TABLE `tb_vacancy` (
  `id` int(10) NOT NULL,
  `company` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `department` varchar(50) NOT NULL,
  `phoneno` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_vacancy`
--

INSERT INTO `tb_vacancy` (`id`, `company`, `title`, `department`, `phoneno`, `mobile`, `email`) VALUES
(1, 'IBM', 'Chief executive', 'Finance', '2679065', '2147483647', 'ibm@gmail.com'),
(2, 'IBM', 'Manager', 'Developer', '2678908', '2147483647', 'ibm@gmail.com'),
(4, 'Wipro', 'jsdkj', 'Marketing', '7865542126', '6554322178', 'rineeshariyas97@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_bill`
--
ALTER TABLE `tb_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_complaint`
--
ALTER TABLE `tb_complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_job_apply`
--
ALTER TABLE `tb_job_apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_note`
--
ALTER TABLE `tb_note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_replay`
--
ALTER TABLE `tb_replay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_staff`
--
ALTER TABLE `tb_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `tb_student`
--
ALTER TABLE `tb_student`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `tb_trainer`
--
ALTER TABLE `tb_trainer`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `tb_vacancy`
--
ALTER TABLE `tb_vacancy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_bill`
--
ALTER TABLE `tb_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_complaint`
--
ALTER TABLE `tb_complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_job_apply`
--
ALTER TABLE `tb_job_apply`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_note`
--
ALTER TABLE `tb_note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_replay`
--
ALTER TABLE `tb_replay`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_staff`
--
ALTER TABLE `tb_staff`
  MODIFY `staff_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_student`
--
ALTER TABLE `tb_student`
  MODIFY `stud_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_trainer`
--
ALTER TABLE `tb_trainer`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_vacancy`
--
ALTER TABLE `tb_vacancy`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `ddu`
--
CREATE DATABASE IF NOT EXISTS `ddu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ddu`;

-- --------------------------------------------------------

--
-- Table structure for table `ddu_gky`
--

CREATE TABLE `ddu_gky` (
  `user_id` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ddu_gky`
--
ALTER TABLE `ddu_gky`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ddu_gky`
--
ALTER TABLE `ddu_gky`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `ddu1`
--
CREATE DATABASE IF NOT EXISTS `ddu1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ddu1`;

-- --------------------------------------------------------

--
-- Table structure for table `ddu_pgky1`
--

CREATE TABLE `ddu_pgky1` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ddu_pgky1`
--

INSERT INTO `ddu_pgky1` (`user_id`, `user_name`, `user_password`, `user_status`) VALUES
(2, 'Ammuz', '5646', 8),
(3, 'Sudheesh', '5646', 10),
(4, 'Athulya', '5646', 9),
(5, 'jaya', '5646', 9),
(6, 'Ramu', '23456', 8),
(7, 'Ravi', '2345', 8),
(20, 'minnu', '234', 0),
(21, 'suttu', '2323', 4),
(27, 'suttu', 'sg', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ddu_pgky1`
--
ALTER TABLE `ddu_pgky1`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ddu_pgky1`
--
ALTER TABLE `ddu_pgky1`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Database: `exam`
--
CREATE DATABASE IF NOT EXISTS `exam` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `exam`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` int(11) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `dob`, `Address`, `pincode`, `email`, `password`) VALUES
(1, 'Athulya A', 0, 'athulya bahvan', 691306, 'athu@gmail.com', '2323'),
(2, 'Anusha A', 27, 'athulya bahvan', 691306, 'athu@gmail.com', '78900'),
(3, 'Athulya ', 25, 'anjaj', 6545, 'Athuluy@23', '26777'),
(4, 'Athulya ', 25, 'anjaj', 6545, 'Athuluy@23', '23344'),
(5, 'Ambika', 25, 'abika bavan', 691306, 'athu@gmail.com', '23455'),
(6, 'anuju', 34, 'ertyu', 3456, 'appu@gmail.com', '23456'),
(7, 'athulya', 27, 'athulya bahvan', 691306, 'athu@gmail.com', '3456'),
(8, 'athulya', 25, 'athulya bahvan', 691306, 'athu@gmail.com', '345678'),
(9, 'athulya', 25, 'athulya bahvan', 691306, 'athu@gmail.com', '456789');

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE `table` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table`
--
ALTER TABLE `table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `table`
--
ALTER TABLE `table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `first`
--
CREATE DATABASE IF NOT EXISTS `first` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `first`;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `phone`) VALUES
(2, 'Jaya', 380200938);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `phone`) VALUES
(1, 'Athulya', 904862015),
(2, 'Jaya', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `form`
--
CREATE DATABASE IF NOT EXISTS `form` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `form`;

-- --------------------------------------------------------

--
-- Table structure for table `form1`
--

CREATE TABLE `form1` (
  `Name` varchar(50) NOT NULL,
  `Age` int(11) NOT NULL,
  `email` varchar(320) NOT NULL,
  `password` int(8) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form1`
--

INSERT INTO `form1` (`Name`, `Age`, `email`, `password`, `gender`) VALUES
('', 0, '', 0, 'on'),
('', 0, '', 0, 'on'),
('', 0, '', 0, 'on'),
('', 0, '', 0, 'on'),
('', 0, '', 0, 'on'),
('', 0, '', 0, 'on'),
('', 0, '', 0, 'on'),
('', 0, '', 0, 'on'),
('', 0, '', 0, 'on'),
('', 0, '', 0, ''),
('athulya', 23, 'athu@gmail.com', 2333, 'on'),
('athulya', 23, 'athu@gmail.com', 2333, 'on'),
('athulya', 23, 'athu@gmail.com', 2323, 'on'),
('achu', 30, 'Athuluy@23', 67, 'on');
--
-- Database: `formvali`
--
CREATE DATABASE IF NOT EXISTS `formvali` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `formvali`;

-- --------------------------------------------------------

--
-- Table structure for table `formval`
--

CREATE TABLE `formval` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `formval`
--
ALTER TABLE `formval`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `formval`
--
ALTER TABLE `formval`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `insert`
--
CREATE DATABASE IF NOT EXISTS `insert` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `insert`;

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(10) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `fname`, `lname`, `email`) VALUES
(6, 'Athulya', 'amm', 'athulya@gmail.com'),
(8, 'Anandu', 's', 'anandu@gmail.com'),
(10, 'Fousiya g', 'Rahim', 'fousiya@gmail.com'),
(12, 'joice', 'sara', 'jov@gmail.com'),
(15, 'Akash', 'M', ''),
(16, 'Athulya', 'joy', ''),
(17, 'Anjali', 'Raj', ''),
(18, 'Neethu', 'Raj', ''),
(19, 'ghjklbn', 'kkkkkkkkkkkkkkkkkk', ''),
(20, 'xcvbn', 'cvbnm', 'athu@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Database: `jion`
--
CREATE DATABASE IF NOT EXISTS `jion` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jion`;

-- --------------------------------------------------------

--
-- Table structure for table `coustmer`
--

CREATE TABLE `coustmer` (
  `id` int(11) NOT NULL,
  `coust_name` varchar(10) NOT NULL,
  `desig` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coustmer`
--

INSERT INTO `coustmer` (`id`, `coust_name`, `desig`) VALUES
(1, 'abc', 5),
(2, 'pqr', 6),
(3, 'mno', 7);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `coust_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Database: `myform`
--
CREATE DATABASE IF NOT EXISTS `myform` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `myform`;

-- --------------------------------------------------------

--
-- Table structure for table `logintb`
--

CREATE TABLE `logintb` (
  `loginid` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  `usertype` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logintb`
--

INSERT INTO `logintb` (`loginid`, `email`, `password`, `status`, `usertype`) VALUES
(1, 'geethu@gmail.com', '$2y$10$7DFSt.KDKbBGFlIoRIOhYuBt85AbgWYISZVd10Imk.UujmuamZgGa', '1', '0'),
(2, 'neethu@gmail.com', '$2y$10$ovxyxaGe84AVJtaILZ.gGOb.fKdy5uuplTmtjXhRdx0BHnzEyjuIi', '1', '0'),
(3, 'rubi@123', '$2y$10$cbxlhnVsvmkq50faZdTTaeafoSmJFXaP68Hf54odmXjhacNDPQMGG', '1', '0'),
(4, 'vrinda@gmail.com', '$2y$10$5NsVL61.rdBLnE1LGZsoAuh0cYllLrWwWzETSx5ZWqCE8aUsAwIHy', '1', '0'),
(5, 'stefi@gmail.com', '$2y$10$pXsiy7u5v7mob9tYMJEh6e02K9b6zGKjBT17DDeLcgPQyfOd0OiEG', '1', '0'),
(6, 'meera@gmail.com', '$2y$10$30f78HQeDuF0i1mEorDDVejpbRIx1W4KnOTu3ZDg98H95n857Ipya', '1', '0'),
(7, 'suja@gmail.com', '$2y$10$DlCEiXdGChNsXbjVHBfI/e4jm/b1rullKGcK0Y7plNnJAngzYJYIa', '1', '1'),
(8, 'geethu@gmail.com', '$2y$10$C6CqZ77IAgcdgH90vfvX2eLP.OZOJMKibMm2iTeSMTihcLwlW54ya', '1', '1'),
(9, 'limi@gmail.com', '$2y$10$cnu7V.vEK24mLFMY1ANtDu/4CL1BbqHDoLAiD4VZclitXr59zkPiC', '1', '1'),
(10, 'anju@gmail.com', '$2y$10$fQDZrRAYGaaVAa8wDGkdE.Q95EDNUQbjKEwsmO7iPFp1ibRvHsUQy', '1', '0'),
(11, 'annu@gmail.com', '$2y$10$eacWUXXlVPATX00sz86lf.MM7.e1TvZWCyKg6VXtX7dSi6K2vZ8qW', '1', '0'),
(12, 'reeja@gmail.com', '$2y$10$gZMnl.2HtD0UnEu7VWBhz.DKKIag88ZSjUgyIhEZOJdEPD/zkV.cK', '1', '1'),
(13, 'azz@gmail.com', '$2y$10$Jjp8HclGdhioNFKlvjBaz.xknK1cIyvRw6qeZCKnooE6p8WTuCcbK', '1', '1'),
(14, 'minnu@gmail.com', '$2y$10$5CKboc2kx/8PhD3BEbZdYe/FY7lS0wH60EN4PHbkZOQ5A644cRcTm', '1', '1'),
(15, 'reena@gmail.com', '$2y$10$kWNp0885tmvI0Iw2.ok0LusKMM.gj8qqOkcxnWL90s37r5cKn6R8G', '1', '0'),
(16, 'anujshaji@gmail.com', '$2y$10$iIKrB77OYytZ3y6HZ8xApes4I48jTbI4vbYZZRBju7n9EHMGmFqm2', '0', '0'),
(17, 'joyabkika@gmail.com', '$2y$10$xu0tp53IPxELKBgqY67eleaP/5zvc3vUMkyPHjOlTmvUwKZW.mlky', '1', '0'),
(18, 'renju@gmail.com', '$2y$10$BYN/7Yx5heIAh1GQ29cNRO5eDuBOVUA.mSrhDeuWuWnvhOTSUrC6C', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `myform1`
--

CREATE TABLE `myform1` (
  `id` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Age` int(3) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `status` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myform1`
--

INSERT INTO `myform1` (`id`, `Name`, `Address`, `Gender`, `Age`, `Email`, `password`, `status`) VALUES
(4, 'athulya A', 'sdf', 'female', 23, 'a@gmail.com', 'sgsg', '1'),
(9, 'Arya', 'achu bavam', 'female', 30, 'araya@gmail.com', '$2y$10$gesIwLjxo0wXjPxVVHifyeLjY', '2'),
(10, 'krishna', 'happpy', 'female', 23, '97athulya', '2323', '2'),
(11, 'krish', 'hcharuvila', 'male', 30, '97athulya', '2323', '2'),
(12, 'Aswathy', 'vridavanm', 'female', 45, '97achu', '2323', '2');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(10) NOT NULL,
  `noti` varchar(100) NOT NULL,
  `ct_date` date NOT NULL,
  `loginid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `noti`, `ct_date`, `loginid`) VALUES
(2, 'your aloowed ', '2021-02-06', 11),
(9, 'happy now', '2021-02-17', 12);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `age` int(3) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `status` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `address`, `gender`, `age`, `email`, `password`, `status`) VALUES
(2, 'geethu', 'ag', 'on', 23, 'fg@gmail.com', '$2y$10$gY8DPBbqpn3WqMYT3ITwtO5YY', '1'),
(3, 'ammu', 'ammu villa', 'on', 23, 'ammu@123', '$2y$10$ndwIBQk0zG6tYSGVfLcQDu5qm', '2'),
(4, 'arun', 'arun villa', 'male', 23, 'arun@123', '$2y$10$NsTBCJMfqa6z.bUDywTx.uCoe', '0'),
(5, 'ammu', 'ammus', 'female', 23, 'ammu@123', '$2y$10$PH2/XtYPEA5KxxD71Ilct.8rrIlp0uo6sFn/auOQBVYuYKWHbENbS', '1'),
(6, 'meera', 'meeras', 'female', 23, 'meera@123', '$2y$10$h2zWIlVnCZ2az5YgpS2B4O9lL1xsOi.eSf1G.ZnMRA92exoTtP/nO', '0'),
(7, 'meenu', 'meenuzz', 'female', 23, 'meenu@gmail.com', '$2y$10$mwU81VdOy0nGNSjsHJkNfuIYYzI35X8F9dzChuGcmC4kzODAFYDtq', '1');

-- --------------------------------------------------------

--
-- Table structure for table `regist_table`
--

CREATE TABLE `regist_table` (
  `id` int(10) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `address` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `pincode` text NOT NULL,
  `phoneno` bigint(32) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `education` varchar(30) NOT NULL,
  `loginid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regist_table`
--

INSERT INTO `regist_table` (`id`, `first_name`, `last_name`, `address`, `district`, `pincode`, `phoneno`, `dob`, `gender`, `education`, `loginid`) VALUES
(1, 'geethu', 'Eipe', 'fgjkhuil', 'TVM', '691579', 9745689450, '2021-01-01', 'on', 'MCA', 1),
(2, 'Neethu', 'Eipe', 'A K Sadan', 'kollam', '691579', 8754390654, '1990-10-28', 'on', 'MCA', 2),
(3, 'Rubiya', 'A S', 'murukkumon', 'TVM', '691579', 9745689450, '2021-01-06', 'on', 'MCA', 3),
(4, 'vrinda', 'Thomas', 'thenguvila', 'kollam', '691579', 5674378901, '2021-01-06', 'on', 'Bsc', 4),
(5, 'stefy', 'joy', 'villa', 'kottayam', '694536', 9863456743, '2021-01-06', 'on', 'MCA', 5),
(6, 'meera', 'L', 'A k', 'kollam', '691579', 8754390654, '2021-01-13', 'on', 'Bsc', 6),
(7, 'anju', 'a', 'asdfghj', 'kottayam', '694536', 8754390654, '2021-02-12', 'on', 'MCA', 10),
(8, 'annu', 'baiju', 'dfg', 'kollam', '694536', 9845328765, '2021-02-26', 'on', 'SSLC', 11),
(9, 'reena', 'soman', 'reena bhavan', 'kollam', '691507', 9988775669, '1997-07-06', 'on', 'MCA', 15),
(10, 'a', 'cvbn', ' fgbnm', ' vbn', '123456', 123456733, '2021-02-06', 'on', 'SSLC', 16),
(11, 'cv', 'bn', 'cvbn', 'kollam', '691306', 96567986, '2021-02-12', 'on', 'MCA', 17);

-- --------------------------------------------------------

--
-- Table structure for table `reg_table`
--

CREATE TABLE `reg_table` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rollno` int(10) NOT NULL,
  `address` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `studmgnt`
--

CREATE TABLE `studmgnt` (
  `id` int(10) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_rollno` int(50) NOT NULL,
  `student_address` varchar(50) NOT NULL,
  `student_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studmgnt`
--

INSERT INTO `studmgnt` (`id`, `student_name`, `student_rollno`, `student_address`, `student_email`) VALUES
(1, 'vrinda s', 6, 'vrindass', 'vrinda@123'),
(20, 'jaya', 2, ' jayas', 'jaya@123'),
(21, 'jaya', 2, ' jayas', 'jaya@123'),
(22, 'athulya', 3, ' athu', 'athu@123'),
(23, 'athulya', 3, ' athu', 'athu@123');

-- --------------------------------------------------------

--
-- Table structure for table `tableone`
--

CREATE TABLE `tableone` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `District` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Education` varchar(100) NOT NULL,
  `loid` int(10) NOT NULL,
  `user_type` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tableone`
--

INSERT INTO `tableone` (`id`, `fname`, `lname`, `Address`, `District`, `pincode`, `phone`, `DOB`, `Gender`, `Education`, `loid`, `user_type`) VALUES
(1, 'sdfghjkldfgh', 'cvbnm', 'cvbnmcvbnm', 'sdfghjkl', 123456, 1234567, '2021-01-28', 'on', 'SSLC', 23456, '0'),
(2, 'asdfghjkl', 'sdfghjk', 'sdfghjkl', 'TVM', 691306, 12345678, '2021-01-19', 'on', 'SSLC', 3456, '0'),
(3, 'limi', 'mathew', 'dfghjk', 'fghui', 234, 23456789, '2021-01-09', 'on', 'SSLC', 0, '0'),
(4, 'JOy', 'y', 'sdfghjkl', 'gfchv', 1234, 12345, '2021-02-06', 'on', 'dfg', 3, '0'),
(5, 'Akhila', ' v s', 'akhila bahavan', 'kottayam', 123456, 12345679, '2021-01-12', 'on', 'MCA', 4, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tabletwo`
--

CREATE TABLE `tabletwo` (
  `ids` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tabletwow`
--

CREATE TABLE `tabletwow` (
  `ids` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  `user_type` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabletwow`
--

INSERT INTO `tabletwow` (`ids`, `email`, `password`, `status`, `user_type`) VALUES
(1, 'sudhee@gmail.com', '$2y$10$GiN8TiGN5wk0xaAwxyYA1u/tx.b./s44dgRr4fxhRCSHlU.uOqzzG', '0', '0'),
(2, 'Athuluy@23', '$2y$10$spzWSIvGv41H1cnZvZhXdO26m/8FscU2tEPrLbdR1h2wPy/o0eLde', '0', '0'),
(3, 'sudhee@gmail.com', '$2y$10$6DyzkhbYnhZeUZDbx/HkgeT0QJBffRvU9GryQCi7esV70HrHRry6a', '1', '0'),
(4, 'akhilavs@gmail.com', '$2y$10$cmdbLZlvHA1CnfvFMX/MounFb1/qQq3/OxT1uHIVDMLMxxSyPMUfy', '2', '0'),
(5, 'Athulya@23', '$2y$10$I7BpZ2dTyB8I20TwkusLN.XYQ3N0du2tauWJUQ7469po4vpg5k.4K', '0', '0'),
(6, 'Athulya@23', '$2y$10$T1WKXMMU2Lpgl4HAbBHQVeYnNIMDk6AWAXwPERAUlrScLEUTxRdoa', '0', '0'),
(7, 'Athulya@23', '$2y$10$5eSxHQHS33G94N/BBYFEC.ATUDZ/1yCHizrJ7RQj6uW5KPSI1sDc2', '0', '0'),
(8, 'appu@gmail.com', '$2y$10$Yw6k/4UEYqQeziL6sI3p9OiYeFYhrTU2dLVaLuPYego8m66Hkd/d2', '0', '0'),
(9, 'ambika@gmail.com', '$2y$10$w6HlITqwFJsaNxIj5rLXM.6M8e01koLrtzBn93gF4MgXgR40zkclu', '1', '1'),
(10, 'athulya@gmail.com', '$2y$10$/y8qdJTJpeR/VmaANV2pdeeCLQfpL5Gz3YstZTFETowY8udGnvt4K', '1', '0'),
(11, 'rubiya@gmail.com', '$2y$10$TqPZh5xTk2.ZirjVUOBAuOY4JVGHr0H66p7rljFHC6a8GNtUYCzYK', '1', '0'),
(12, 'jaya@134gmail.com', '$2y$10$w22htD8.lnV/NyXSXHpd4uT6tJR1kDFykB0suqvjbpxadfgVH35hS', '1', '0'),
(13, 'geethu@13.gmail', '$2y$10$JRFjs4jzAfO7OFKNnM1.qOdYmarij.9hC.3pJv1EuZfrM8Q3tdR.q', '1', '0'),
(14, 'rubiya@gmail.com', '$2y$10$DpcCbcDt2IXqEMRaAuZSh.NFMUwUmkByyjk6s4zWbk5udeDurtnRG', '1', '0'),
(15, 'rema@gmail.com', '$2y$10$Qhow/N4tD7JQwbW9yKmbHuh2ECosrh2ZHiRNLa50FAn6VmcnQsXH.', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Dist` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `gen` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `sub` varchar(100) NOT NULL,
  `loid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `Address`, `Dist`, `pincode`, `gen`, `age`, `sub`, `loid`) VALUES
(1, 'Rubiya s', 'rubiya bahvan', 'TVM', 691306, 'on', 30, 'English', 0),
(2, 'Rema r', 'rema bahavan', 'kottayam', 6545, 'on', 23, 'Hindi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `teach_tb`
--

CREATE TABLE `teach_tb` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `district` varchar(25) NOT NULL,
  `pincode` int(20) NOT NULL,
  `phoneno` bigint(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `age` int(10) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `loginid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teach_tb`
--

INSERT INTO `teach_tb` (`id`, `name`, `address`, `district`, `pincode`, `phoneno`, `gender`, `age`, `subject`, `loginid`) VALUES
(1, 'suja', 'yiguojpo', 'TVM', 691579, 9745689450, 'male', 35, 'computer science', 7),
(2, 'geethu', 'gfhj', 'TVM', 691579, 9745689450, 'male', 23, 'computer science', 8),
(3, 'limi', 'a k s', 'kollam', 691579, 9745689450, 'male', 35, 'computer science', 9),
(4, 'reeja', 'dfghjk', 'TVM', 243253, 9654387645, 'male', 35, 'Electronics', 12),
(5, 'athulya', 'ghkjlk', 'TVM', 691306, 96567986, 'male', 30, 'computer science', 13),
(6, 'Minnu', 'minnu bavan', 'TVM', 691306, 96567986, 'male', 30, 'Biotech', 14),
(7, 'Renju', 'renju bavam', 'kottayam', 691306, 96567986, 'male', 30, 'polymer', 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logintb`
--
ALTER TABLE `logintb`
  ADD PRIMARY KEY (`loginid`);

--
-- Indexes for table `myform1`
--
ALTER TABLE `myform1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regist_table`
--
ALTER TABLE `regist_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loginid` (`loginid`);

--
-- Indexes for table `reg_table`
--
ALTER TABLE `reg_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studmgnt`
--
ALTER TABLE `studmgnt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tableone`
--
ALTER TABLE `tableone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabletwo`
--
ALTER TABLE `tabletwo`
  ADD PRIMARY KEY (`ids`);

--
-- Indexes for table `tabletwow`
--
ALTER TABLE `tabletwow`
  ADD PRIMARY KEY (`ids`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teach_tb`
--
ALTER TABLE `teach_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loginid` (`loginid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logintb`
--
ALTER TABLE `logintb`
  MODIFY `loginid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `myform1`
--
ALTER TABLE `myform1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `regist_table`
--
ALTER TABLE `regist_table`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reg_table`
--
ALTER TABLE `reg_table`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studmgnt`
--
ALTER TABLE `studmgnt`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tableone`
--
ALTER TABLE `tableone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tabletwo`
--
ALTER TABLE `tabletwo`
  MODIFY `ids` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabletwow`
--
ALTER TABLE `tabletwow`
  MODIFY `ids` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teach_tb`
--
ALTER TABLE `teach_tb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `regist_table`
--
ALTER TABLE `regist_table`
  ADD CONSTRAINT `regist_table_ibfk_1` FOREIGN KEY (`loginid`) REFERENCES `logintb` (`loginid`);

--
-- Constraints for table `teach_tb`
--
ALTER TABLE `teach_tb`
  ADD CONSTRAINT `teach_tb_ibfk_1` FOREIGN KEY (`loginid`) REFERENCES `logintb` (`loginid`);
--
-- Database: `ojt`
--
CREATE DATABASE IF NOT EXISTS `ojt` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ojt`;

-- --------------------------------------------------------

--
-- Table structure for table `ojt_login`
--

CREATE TABLE `ojt_login` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `loginid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ojt_login`
--
ALTER TABLE `ojt_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ojt_login`
--
ALTER TABLE `ojt_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `photo`
--
CREATE DATABASE IF NOT EXISTS `photo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `photo`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-02-23 12:32:37', '2021-02-23 12:32:37', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_db7_forms`
--

CREATE TABLE `wp_db7_forms` (
  `form_id` bigint(20) NOT NULL,
  `form_post_id` bigint(20) NOT NULL,
  `form_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_db7_forms`
--

INSERT INTO `wp_db7_forms` (`form_id`, `form_post_id`, `form_value`, `form_date`) VALUES
(1, 30, 'a:5:{s:12:\"cfdb7_status\";s:6:\"unread\";s:9:\"your-name\";s:7:\"Athulya\";s:10:\"your-email\";s:14:\"athu@gmail.com\";s:12:\"your-subject\";s:3:\"ece\";s:12:\"your-message\";s:9:\"dcfvgbnm,\";}', '2021-02-24 08:41:25');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Agri-World', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'athulya@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";i:2;s:37:\"wp-carousel-free/wp-carousel-free.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:60:\"E:\\projects\\wordpress/wp-content/plugins/akismet/akismet.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'vw-gardening-landscaping', 'yes'),
(41, 'stylesheet', 'vw-gardening-landscaping', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1629635544', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"cfdb7_access\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:12:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:12:\"social-links\";a:1:{i:0;s:10:\"nav_menu-3\";}s:24:\"woocommerce-shop-sidebar\";a:0:{}s:26:\"woocommerce-single-sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:7:{i:1615026761;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1615033959;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1615033961;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1615033996;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1615034006;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1615379560;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.2\";s:7:\"version\";s:5:\"5.6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1615025665;s:15:\"version_checked\";s:5:\"5.6.2\";s:12:\"translations\";a:0:{}}', 'no'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1614083832;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(131, 'can_compress_scripts', '1', 'no'),
(146, 'finished_updating_comment_type', '1', 'yes'),
(149, 'current_theme', 'VW Gardening Landscaping', 'yes'),
(150, 'theme_mods_education-x', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1614139529;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:14:\"footer-col-one\";a:0:{}s:14:\"footer-col-two\";a:0:{}s:16:\"footer-col-three\";a:0:{}}}}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(152, 'widget_education-x-social-layout', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(153, 'widget_education-x-author-layout', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(155, 'category_children', 'a:0:{}', 'yes'),
(175, 'theme_mods_agronomics-lite', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:28:\"agronomics_lite_color_scheme\";s:7:\"#1dbc1a\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1614139367;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"headerinfowidget\";a:0:{}s:15:\"footer-widget-1\";a:0:{}s:15:\"footer-widget-2\";a:0:{}s:15:\"footer-widget-3\";a:0:{}s:15:\"footer-widget-4\";a:0:{}}}}', 'yes'),
(186, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1615025682;s:7:\"checked\";a:6:{s:15:\"agronomics-lite\";s:3:\"1.1\";s:11:\"education-x\";s:5:\"1.1.0\";s:14:\"twentynineteen\";s:3:\"1.9\";s:12:\"twentytwenty\";s:3:\"1.6\";s:15:\"twentytwentyone\";s:3:\"1.1\";s:24:\"vw-gardening-landscaping\";s:5:\"0.6.8\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:6:{s:15:\"agronomics-lite\";a:6:{s:5:\"theme\";s:15:\"agronomics-lite\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/agronomics-lite/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/agronomics-lite.1.1.zip\";s:8:\"requires\";s:3:\"4.8\";s:12:\"requires_php\";s:3:\"5.2\";}s:11:\"education-x\";a:6:{s:5:\"theme\";s:11:\"education-x\";s:11:\"new_version\";s:5:\"1.1.0\";s:3:\"url\";s:41:\"https://wordpress.org/themes/education-x/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/education-x.1.1.0.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"7.0\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.9.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.1.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:24:\"vw-gardening-landscaping\";a:6:{s:5:\"theme\";s:24:\"vw-gardening-landscaping\";s:11:\"new_version\";s:5:\"0.6.8\";s:3:\"url\";s:54:\"https://wordpress.org/themes/vw-gardening-landscaping/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/theme/vw-gardening-landscaping.0.6.8.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:6:\"7.2.14\";}}s:12:\"translations\";a:0:{}}', 'no'),
(188, 'theme_mods_vw-gardening-landscaping', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:17;s:9:\"logo_size\";i:25;s:16:\"background_image\";s:62:\"http://localhost/wordpress/wp-content/uploads/2021/02/wall.jpg\";}', 'yes'),
(189, 'widget_vw_gardening_landscaping_social_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(190, 'widget_vw_gardening_landscaping_about_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(191, 'widget_vw_gardening_landscaping_contact_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(194, 'recently_activated', 'a:0:{}', 'yes'),
(195, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(206, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.3.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1614154525;s:7:\"version\";s:5:\"5.3.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(210, 'cfdb7_view_install_date', '2021-02-24 8:40:44', 'yes'),
(211, 'secret_key', 'n|FKs/{-kC]asb&WbD!8Fh;HUGk0G(<%q#gz(wJ#{6H=BbH1RRMw6*uFhjS86o,f', 'no'),
(216, 'wp_carousel_free_version', '2.1.16', 'yes'),
(217, 'wp_carousel_free_db_version', '2.1.16', 'yes'),
(218, 'sp_wpcp_settings', 'a:5:{s:20:\"wpcf_delete_all_data\";b:0;s:22:\"wpcp_enqueue_slick_css\";b:1;s:19:\"wpcp_enqueue_fa_css\";b:1;s:13:\"wpcp_slick_js\";b:1;s:15:\"wpcp_custom_css\";s:0:\"\";}', 'yes'),
(219, 'sp_wp_carousel_free_review_notice_dismiss', 'a:2:{s:4:\"time\";i:1614158172;s:9:\"dismissed\";b:0;}', 'yes'),
(227, '_site_transient_timeout_php_check_744549330ad044a5e94138c3c20d7f77', '1615534888', 'no'),
(228, '_site_transient_php_check_744549330ad044a5e94138c3c20d7f77', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(230, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":7,\"critical\":0}', 'yes'),
(235, '_site_transient_timeout_theme_roots', '1615027477', 'no'),
(236, '_site_transient_theme_roots', 'a:6:{s:15:\"agronomics-lite\";s:7:\"/themes\";s:11:\"education-x\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:24:\"vw-gardening-landscaping\";s:7:\"/themes\";}', 'no'),
(237, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1615025686;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.1.8\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.3.2\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:7:\"1.2.5.8\";s:9:\"hello.php\";s:5:\"1.7.2\";s:37:\"wp-carousel-free/wp-carousel-free.php\";s:6:\"2.1.16\";}s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.7\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.7\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:32:\"w.org/plugins/contact-form-cfdb7\";s:4:\"slug\";s:18:\"contact-form-cfdb7\";s:6:\"plugin\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:11:\"new_version\";s:7:\"1.2.5.9\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/contact-form-cfdb7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-cfdb7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-256x256.png?rev=1619878\";s:2:\"1x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-128x128.png?rev=1619878\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/contact-form-cfdb7/assets/banner-772x250.png?rev=1619902\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.6.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"wp-carousel-free/wp-carousel-free.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/wp-carousel-free\";s:4:\"slug\";s:16:\"wp-carousel-free\";s:6:\"plugin\";s:37:\"wp-carousel-free/wp-carousel-free.php\";s:11:\"new_version\";s:6:\"2.1.16\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/wp-carousel-free/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-carousel-free.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-carousel-free/assets/icon-256x256.png?rev=2000936\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-carousel-free/assets/icon-128x128.png?rev=2000936\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/wp-carousel-free/assets/banner-1544x500.png?rev=2000936\";s:2:\"1x\";s:71:\"https://ps.w.org/wp-carousel-free/assets/banner-772x250.png?rev=2000936\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1614140377:1'),
(4, 2, '_edit_last', '1'),
(5, 2, 'education-x-meta-checkbox', ''),
(6, 2, 'education-x-meta-select-layout', 'left-sidebar'),
(7, 2, 'education-x-meta-image-layout', 'full'),
(8, 6, '_wp_trash_meta_status', 'publish'),
(9, 6, '_wp_trash_meta_time', '1614139015'),
(10, 7, '_wp_trash_meta_status', 'publish'),
(11, 7, '_wp_trash_meta_time', '1614139120'),
(12, 1, '_edit_lock', '1614140235:1'),
(14, 9, '_edit_lock', '1614139123:1'),
(16, 13, '_edit_lock', '1614140310:1'),
(17, 16, '_wp_trash_meta_status', 'publish'),
(18, 16, '_wp_trash_meta_time', '1614140633'),
(19, 17, '_wp_attached_file', '2021/02/logo-light.png'),
(20, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:47;s:4:\"file\";s:22:\"2021/02/logo-light.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo-light-150x47.png\";s:5:\"width\";i:150;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 18, '_edit_lock', '1614140743:1'),
(22, 18, '_wp_trash_meta_status', 'publish'),
(23, 18, '_wp_trash_meta_time', '1614140773'),
(24, 19, '_wp_trash_meta_status', 'publish'),
(25, 19, '_wp_trash_meta_time', '1614140792'),
(26, 20, '_wp_trash_meta_status', 'publish'),
(27, 20, '_wp_trash_meta_time', '1614140816'),
(28, 21, '_menu_item_type', 'post_type'),
(29, 21, '_menu_item_menu_item_parent', '0'),
(30, 21, '_menu_item_object_id', '13'),
(31, 21, '_menu_item_object', 'page'),
(32, 21, '_menu_item_target', ''),
(33, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(34, 21, '_menu_item_xfn', ''),
(35, 21, '_menu_item_url', ''),
(37, 22, '_menu_item_type', 'post_type'),
(38, 22, '_menu_item_menu_item_parent', '0'),
(39, 22, '_menu_item_object_id', '9'),
(40, 22, '_menu_item_object', 'page'),
(41, 22, '_menu_item_target', ''),
(42, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 22, '_menu_item_xfn', ''),
(44, 22, '_menu_item_url', ''),
(46, 23, '_menu_item_type', 'post_type'),
(47, 23, '_menu_item_menu_item_parent', '0'),
(48, 23, '_menu_item_object_id', '2'),
(49, 23, '_menu_item_object', 'page'),
(50, 23, '_menu_item_target', ''),
(51, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 23, '_menu_item_xfn', ''),
(53, 23, '_menu_item_url', ''),
(55, 24, '_wp_trash_meta_status', 'publish'),
(56, 24, '_wp_trash_meta_time', '1614140956'),
(57, 25, '_wp_trash_meta_status', 'publish'),
(58, 25, '_wp_trash_meta_time', '1614141001'),
(60, 26, '_customize_changeset_uuid', '9a10a801-1bf0-422a-b84e-20aa208ce063'),
(61, 27, '_edit_lock', '1614141049:1'),
(62, 29, '_menu_item_type', 'post_type'),
(63, 29, '_menu_item_menu_item_parent', '0'),
(64, 29, '_menu_item_object_id', '26'),
(65, 29, '_menu_item_object', 'page'),
(66, 29, '_menu_item_target', ''),
(67, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68, 29, '_menu_item_xfn', ''),
(69, 29, '_menu_item_url', ''),
(70, 27, '_wp_trash_meta_status', 'publish'),
(71, 27, '_wp_trash_meta_time', '1614141062'),
(72, 30, '_form', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(73, 30, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:33:\"[_site_title] <athulya@gmail.com>\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(74, 30, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:33:\"[_site_title] <athulya@gmail.com>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(75, 30, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(76, 30, '_additional_settings', NULL),
(77, 30, '_locale', 'en_US'),
(78, 31, '_wp_attached_file', '2021/02/form-scaled.jpg'),
(79, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:23:\"2021/02/form-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"form-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"form-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"form-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"form-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"form-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:18:\"form-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:39:\"vw-gardening-landscaping-homepage-thumb\";a:4:{s:4:\"file\";s:16:\"form-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:8:\"form.jpg\";}'),
(80, 31, '_wp_attachment_is_custom_background', 'vw-gardening-landscaping'),
(81, 32, '_wp_trash_meta_status', 'publish'),
(82, 32, '_wp_trash_meta_time', '1614154906'),
(84, 33, '_customize_changeset_uuid', 'b7cb9c1b-1472-4d91-9215-ee7aceba72cd'),
(85, 36, '_menu_item_type', 'post_type'),
(86, 36, '_menu_item_menu_item_parent', '0'),
(87, 36, '_menu_item_object_id', '33'),
(88, 36, '_menu_item_object', 'page'),
(89, 36, '_menu_item_target', ''),
(90, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 36, '_menu_item_xfn', ''),
(92, 36, '_menu_item_url', ''),
(93, 34, '_wp_trash_meta_status', 'publish'),
(94, 34, '_wp_trash_meta_time', '1614155196'),
(95, 33, '_edit_lock', '1614157048:1'),
(96, 38, '_wp_attached_file', '2021/02/wall.jpg'),
(97, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:16:\"2021/02/wall.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"wall-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"wall-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"wall-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"wall-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"wall-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:39:\"vw-gardening-landscaping-homepage-thumb\";a:4:{s:4:\"file\";s:16:\"wall-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(98, 38, '_wp_attachment_is_custom_background', 'vw-gardening-landscaping'),
(99, 39, '_wp_trash_meta_status', 'publish'),
(100, 39, '_wp_trash_meta_time', '1614156159'),
(101, 26, '_edit_lock', '1614158486:1'),
(102, 42, '_wp_attached_file', '2021/02/1.jpg'),
(103, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:625;s:4:\"file\";s:13:\"2021/02/1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x234.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:39:\"vw-gardening-landscaping-homepage-thumb\";a:4:{s:4:\"file\";s:13:\"1-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 43, '_wp_attached_file', '2021/02/2.jpg'),
(105, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:625;s:4:\"file\";s:13:\"2021/02/2.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x234.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:39:\"vw-gardening-landscaping-homepage-thumb\";a:4:{s:4:\"file\";s:13:\"2-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(106, 44, '_wp_attached_file', '2021/02/3.jpg'),
(107, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:625;s:4:\"file\";s:13:\"2021/02/3.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x234.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:39:\"vw-gardening-landscaping-homepage-thumb\";a:4:{s:4:\"file\";s:13:\"3-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 45, '_wp_attached_file', '2021/02/4.jpg'),
(109, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:625;s:4:\"file\";s:13:\"2021/02/4.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x234.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"4-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:39:\"vw-gardening-landscaping-homepage-thumb\";a:4:{s:4:\"file\";s:13:\"4-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 46, '_wp_attached_file', '2021/02/ac.jpg'),
(111, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:649;s:4:\"file\";s:14:\"2021/02/ac.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"ac-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"ac-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"ac-768x498.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:498;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:39:\"vw-gardening-landscaping-homepage-thumb\";a:4:{s:4:\"file\";s:14:\"ac-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(112, 47, '_wp_attached_file', '2021/02/acc.gif'),
(113, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:304;s:4:\"file\";s:15:\"2021/02/acc.gif\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"acc-300x169.gif\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/gif\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"acc-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:39:\"vw-gardening-landscaping-homepage-thumb\";a:4:{s:4:\"file\";s:15:\"acc-240x145.gif\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 48, '_wp_attached_file', '2021/02/ad.gif'),
(115, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:14:\"2021/02/ad.gif\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"ad-300x225.gif\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/gif\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"ad-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"ad-768x576.gif\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/gif\";}s:39:\"vw-gardening-landscaping-homepage-thumb\";a:4:{s:4:\"file\";s:14:\"ad-240x145.gif\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 49, '_wp_attached_file', '2021/02/admin.gif'),
(117, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:17:\"2021/02/admin.gif\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"admin-300x225.gif\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/gif\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"admin-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"admin-768x576.gif\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/gif\";}s:39:\"vw-gardening-landscaping-homepage-thumb\";a:4:{s:4:\"file\";s:17:\"admin-240x145.gif\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 50, '_wp_attached_file', '2021/02/or.jpg'),
(119, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:14:\"2021/02/or.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"or-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"or-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"or-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:39:\"vw-gardening-landscaping-homepage-thumb\";a:4:{s:4:\"file\";s:14:\"or-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 51, '_wp_attached_file', '2021/02/ori.jpg'),
(121, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:288;s:4:\"file\";s:15:\"2021/02/ori.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"ori-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"ori-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:39:\"vw-gardening-landscaping-homepage-thumb\";a:4:{s:4:\"file\";s:15:\"ori-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 52, '_wp_attached_file', '2021/02/ro.gif'),
(123, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:14:\"2021/02/ro.gif\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"ro-300x225.gif\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/gif\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"ro-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"ro-768x576.gif\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/gif\";}s:39:\"vw-gardening-landscaping-homepage-thumb\";a:4:{s:4:\"file\";s:14:\"ro-240x145.gif\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 53, '_wp_attached_file', '2021/02/rr.jpg'),
(125, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:14:\"2021/02/rr.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"rr-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"rr-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"rr-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"rr-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:39:\"vw-gardening-landscaping-homepage-thumb\";a:4:{s:4:\"file\";s:14:\"rr-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 54, '_wp_attached_file', '2021/02/staff.jpg'),
(127, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2021/02/staff.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"staff-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"staff-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"staff-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:39:\"vw-gardening-landscaping-homepage-thumb\";a:4:{s:4:\"file\";s:17:\"staff-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 55, '_wp_attached_file', '2021/02/stu.gif'),
(129, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:15:\"2021/02/stu.gif\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"stu-300x300.gif\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/gif\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"stu-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"stu-768x768.gif\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/gif\";}s:39:\"vw-gardening-landscaping-homepage-thumb\";a:4:{s:4:\"file\";s:15:\"stu-240x145.gif\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 56, '_wp_attached_file', '2021/02/stu.jpg'),
(131, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:626;s:6:\"height\";i:417;s:4:\"file\";s:15:\"2021/02/stu.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"stu-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"stu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:39:\"vw-gardening-landscaping-homepage-thumb\";a:4:{s:4:\"file\";s:15:\"stu-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 26, '_wp_trash_meta_status', 'publish'),
(133, 26, '_wp_trash_meta_time', '1614158630'),
(134, 26, '_wp_desired_post_slug', 'register'),
(136, 58, '_customize_changeset_uuid', '497a25e3-60d1-45f2-9716-0b66e0db37b6'),
(137, 61, '_menu_item_type', 'post_type'),
(138, 61, '_menu_item_menu_item_parent', '0'),
(139, 61, '_menu_item_object_id', '58'),
(140, 61, '_menu_item_object', 'page'),
(141, 61, '_menu_item_target', ''),
(142, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(143, 61, '_menu_item_xfn', ''),
(144, 61, '_menu_item_url', ''),
(145, 59, '_wp_trash_meta_status', 'publish'),
(146, 59, '_wp_trash_meta_time', '1614158684'),
(147, 58, '_edit_lock', '1614159754:1'),
(148, 62, '_edit_last', '1'),
(149, 62, 'sp_wpcp_upload_options', 'a:6:{s:18:\"wpcp_carousel_type\";s:14:\"image-carousel\";s:12:\"wpcp_gallery\";s:20:\"56,51,42,43,44,31,46\";s:23:\"wpcp_display_posts_from\";s:6:\"latest\";s:21:\"number_of_total_posts\";s:2:\"10\";s:25:\"wpcp_display_product_from\";s:6:\"latest\";s:19:\"wpcp_total_products\";s:2:\"10\";}'),
(150, 62, 'sp_wpcp_shortcode_options', 'a:54:{s:13:\"section_title\";s:0:\"\";s:18:\"wpcp_carousel_mode\";s:8:\"standard\";s:27:\"section_title_margin_bottom\";a:1:{s:3:\"all\";s:2:\"30\";}s:22:\"wpcp_number_of_columns\";a:5:{s:10:\"lg_desktop\";s:1:\"3\";s:7:\"desktop\";s:1:\"4\";s:6:\"laptop\";s:1:\"3\";s:6:\"tablet\";s:1:\"2\";s:6:\"mobile\";s:1:\"1\";}s:19:\"wpcp_logo_link_show\";s:4:\"none\";s:19:\"wpcp_image_order_by\";s:4:\"rand\";s:18:\"wpcp_post_order_by\";s:10:\"menu_order\";s:15:\"wpcp_post_order\";s:3:\"ASC\";s:14:\"wpcp_preloader\";s:1:\"1\";s:25:\"wpcp_carousel_orientation\";s:10:\"horizontal\";s:23:\"wpcp_carousel_auto_play\";s:1:\"1\";s:24:\"carousel_auto_play_speed\";a:1:{s:3:\"all\";s:4:\"3000\";}s:30:\"standard_carousel_scroll_speed\";a:1:{s:3:\"all\";s:3:\"600\";}s:23:\"carousel_pause_on_hover\";s:1:\"1\";s:17:\"carousel_infinite\";s:1:\"1\";s:15:\"wpcp_navigation\";s:11:\"hide_mobile\";s:15:\"wpcp_nav_colors\";a:2:{s:6:\"color1\";s:4:\"#aaa\";s:6:\"color2\";s:7:\"#52b3d9\";}s:15:\"wpcp_pagination\";s:4:\"show\";s:21:\"wpcp_pagination_color\";a:2:{s:6:\"color1\";s:7:\"#cccccc\";s:6:\"color2\";s:7:\"#52b3d9\";}s:12:\"slider_swipe\";s:1:\"1\";s:16:\"slider_draggable\";s:1:\"1\";s:21:\"carousel_swipetoslide\";s:0:\"\";s:25:\"wpcp_post_detail_position\";s:6:\"bottom\";s:17:\"wpcp_slide_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:7:\"#dddddd\";}s:21:\"wpcp_slide_background\";s:7:\"#f9f9f9\";s:15:\"wpcp_post_title\";s:1:\"1\";s:22:\"wpcp_post_content_show\";s:1:\"1\";s:22:\"wpcp_post_content_type\";s:7:\"excerpt\";s:19:\"wpcp_post_date_show\";s:1:\"1\";s:21:\"wpcp_post_author_show\";s:1:\"1\";s:17:\"wpcp_product_name\";s:1:\"1\";s:18:\"wpcp_product_price\";s:1:\"1\";s:19:\"wpcp_product_rating\";s:1:\"1\";s:17:\"wpcp_product_cart\";s:1:\"1\";s:10:\"show_image\";s:1:\"1\";s:16:\"wpcp_image_sizes\";s:4:\"full\";s:25:\"wpcp_product_image_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:7:\"#dddddd\";}s:17:\"_image_title_attr\";s:0:\"\";s:23:\"section_title_font_load\";s:0:\"\";s:29:\"wpcp_section_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_image_caption_font_load\";s:0:\"\";s:29:\"wpcp_image_caption_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:25:\"wpcp_image_desc_font_load\";s:0:\"\";s:26:\"wpcp_image_desc_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:20:\"wpcp_title_font_load\";s:0:\"\";s:21:\"wpcp_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_post_content_font_load\";s:0:\"\";s:28:\"wpcp_post_content_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:24:\"wpcp_post_meta_font_load\";s:0:\"\";s:25:\"wpcp_post_meta_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_product_name_font_load\";s:0:\"\";s:28:\"wpcp_product_name_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_product_price_font_load\";s:0:\"\";s:29:\"wpcp_product_price_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}}'),
(151, 62, '_edit_lock', '1614159949:1'),
(152, 64, '_wp_trash_meta_status', 'publish'),
(153, 64, '_wp_trash_meta_time', '1614159527');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-02-23 12:32:37', '2021-02-23 12:32:37', '<!-- wp:paragraph -->\n<p>A <strong>farmer</strong> (also called an <strong>agriculturer</strong>) is a person engaged in <a href=\"https://en.wikipedia.org/wiki/Agriculture\">agriculture</a>, raising living organisms for food or raw materials. The term usually applies to people who do some combination of raising field <a href=\"https://en.wikipedia.org/wiki/Crops\">crops</a>, <a href=\"https://en.wikipedia.org/wiki/Orchard\">orchards</a>, <a href=\"https://en.wikipedia.org/wiki/Vineyard\">vineyards</a>, <a href=\"https://en.wikipedia.org/wiki/Poultry\">poultry</a>, or other <a href=\"https://en.wikipedia.org/wiki/Livestock\">livestock</a>. A farmer might own the farmed land or might work as a laborer on land owned by others, but in advanced economies, a farmer is usually a <a href=\"https://en.wikipedia.org/wiki/Farm\">farm</a> owner, while employees of the farm are known as farm workers, or farmhands. However, in the not so distant past, a farmer was a person who promotes or improves the growth of (a plant, crop, etc.) by labor and attention, land or crops or raises animals (as livestock or fish).</p>\n<!-- /wp:paragraph -->', 'Farmer is our', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-02-24 04:19:32', '2021-02-24 04:19:32', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2021-02-23 12:32:37', '2021-02-23 12:32:37', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring ammctor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-02-24 04:21:58', '2021-02-24 04:21:58', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-02-23 12:32:37', '2021-02-23 12:32:37', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-02-23 12:32:37', '2021-02-23 12:32:37', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-02-23 12:38:12', '2021-02-23 12:38:12', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-02-23 12:38:12', '2021-02-23 12:38:12', '', 2, 'http://localhost/wordpress/index.php/2021/02/23/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2021-02-24 03:56:54', '2021-02-24 03:56:54', '{\n    \"agronomics-lite::agronomics_lite_color_scheme\": {\n        \"value\": \"#1dbc1a\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 03:56:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '56594af2-d598-4b00-bbd9-6b4d57df5473', '', '', '2021-02-24 03:56:54', '2021-02-24 03:56:54', '', 0, 'http://localhost/wordpress/index.php/2021/02/24/56594af2-d598-4b00-bbd9-6b4d57df5473/', 0, 'customize_changeset', '', 0),
(7, 1, '2021-02-24 03:58:39', '2021-02-24 03:58:39', '{\n    \"agronomics-lite::nav_menu_locations[primary]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 03:58:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8be41456-a2b3-41dd-acce-e885d30c1921', '', '', '2021-02-24 03:58:39', '2021-02-24 03:58:39', '', 0, 'http://localhost/wordpress/index.php/2021/02/24/8be41456-a2b3-41dd-acce-e885d30c1921/', 0, 'customize_changeset', '', 0),
(8, 1, '2021-02-24 03:59:35', '2021-02-24 03:59:35', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Farmer is our', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-02-24 03:59:35', '2021-02-24 03:59:35', '', 1, 'http://localhost/wordpress/index.php/2021/02/24/1-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2021-02-24 04:01:04', '2021-02-24 04:01:04', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-02-24 04:01:04', '2021-02-24 04:01:04', '', 0, 'http://localhost/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2021-02-24 04:01:04', '2021-02-24 04:01:04', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-02-24 04:01:04', '2021-02-24 04:01:04', '', 9, 'http://localhost/wordpress/index.php/2021/02/24/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2021-02-24 04:19:27', '2021-02-24 04:19:27', '<!-- wp:paragraph -->\n<p>A <strong>farmer</strong> (also called an <strong>agriculturer</strong>) is a person engaged in <a href=\"https://en.wikipedia.org/wiki/Agriculture\">agriculture</a>, raising living organisms for food or raw materials. The term usually applies to people who do some combination of raising field <a href=\"https://en.wikipedia.org/wiki/Crops\">crops</a>, <a href=\"https://en.wikipedia.org/wiki/Orchard\">orchards</a>, <a href=\"https://en.wikipedia.org/wiki/Vineyard\">vineyards</a>, <a href=\"https://en.wikipedia.org/wiki/Poultry\">poultry</a>, or other <a href=\"https://en.wikipedia.org/wiki/Livestock\">livestock</a>. A farmer might own the farmed land or might work as a laborer on land owned by others, but in advanced economies, a farmer is usually a <a href=\"https://en.wikipedia.org/wiki/Farm\">farm</a> owner, while employees of the farm are known as farm workers, or farmhands. However, in the not so distant past, a farmer was a person who promotes or improves the growth of (a plant, crop, etc.) by labor and attention, land or crops or raises animals (as livestock or fish).</p>\n<!-- /wp:paragraph -->', 'Farmer is our', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2021-02-24 04:19:27', '2021-02-24 04:19:27', '', 1, 'http://localhost/wordpress/index.php/2021/02/24/1-autosave-v1/', 0, 'revision', '', 0),
(12, 1, '2021-02-24 04:19:32', '2021-02-24 04:19:32', '<!-- wp:paragraph -->\n<p>A <strong>farmer</strong> (also called an <strong>agriculturer</strong>) is a person engaged in <a href=\"https://en.wikipedia.org/wiki/Agriculture\">agriculture</a>, raising living organisms for food or raw materials. The term usually applies to people who do some combination of raising field <a href=\"https://en.wikipedia.org/wiki/Crops\">crops</a>, <a href=\"https://en.wikipedia.org/wiki/Orchard\">orchards</a>, <a href=\"https://en.wikipedia.org/wiki/Vineyard\">vineyards</a>, <a href=\"https://en.wikipedia.org/wiki/Poultry\">poultry</a>, or other <a href=\"https://en.wikipedia.org/wiki/Livestock\">livestock</a>. A farmer might own the farmed land or might work as a laborer on land owned by others, but in advanced economies, a farmer is usually a <a href=\"https://en.wikipedia.org/wiki/Farm\">farm</a> owner, while employees of the farm are known as farm workers, or farmhands. However, in the not so distant past, a farmer was a person who promotes or improves the growth of (a plant, crop, etc.) by labor and attention, land or crops or raises animals (as livestock or fish).</p>\n<!-- /wp:paragraph -->', 'Farmer is our', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-02-24 04:19:32', '2021-02-24 04:19:32', '', 1, 'http://localhost/wordpress/index.php/2021/02/24/1-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2021-02-24 04:20:42', '2021-02-24 04:20:42', '<!-- wp:paragraph -->\n<p>A&nbsp;<strong>farmer</strong><sup><a href=\"https://en.wikipedia.org/wiki/Farmer#cite_note-1\">[1]</a></sup>&nbsp;(also called an&nbsp;<strong>agriculturer</strong>) is a person engaged in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Agriculture\">agriculture</a>, raising living organisms for food or raw materials. The term usually applies to people who do some combination of raising field&nbsp;<a href=\"https://en.wikipedia.org/wiki/Crops\">crops</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Orchard\">orchards</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Vineyard\">vineyards</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Poultry\">poultry</a>, or other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Livestock\">livestock</a>. A farmer might own the farmed land or might work as a laborer on land owned by others, but in advanced economies, a farmer is usually a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Farm\">farm</a>&nbsp;owner, while employees of the farm are known as farm workers, or farmhands. However, in the not so distant past, a farmer was a person who promotes or improves the growth of (a plant, crop, etc.) by labor and attention, land or crops or raises animals (as livestock or fish).</p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2021-02-24 04:20:42', '2021-02-24 04:20:42', '', 0, 'http://localhost/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2021-02-24 04:20:42', '2021-02-24 04:20:42', '<!-- wp:paragraph -->\n<p>A&nbsp;<strong>farmer</strong><sup><a href=\"https://en.wikipedia.org/wiki/Farmer#cite_note-1\">[1]</a></sup>&nbsp;(also called an&nbsp;<strong>agriculturer</strong>) is a person engaged in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Agriculture\">agriculture</a>, raising living organisms for food or raw materials. The term usually applies to people who do some combination of raising field&nbsp;<a href=\"https://en.wikipedia.org/wiki/Crops\">crops</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Orchard\">orchards</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Vineyard\">vineyards</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Poultry\">poultry</a>, or other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Livestock\">livestock</a>. A farmer might own the farmed land or might work as a laborer on land owned by others, but in advanced economies, a farmer is usually a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Farm\">farm</a>&nbsp;owner, while employees of the farm are known as farm workers, or farmhands. However, in the not so distant past, a farmer was a person who promotes or improves the growth of (a plant, crop, etc.) by labor and attention, land or crops or raises animals (as livestock or fish).</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2021-02-24 04:20:42', '2021-02-24 04:20:42', '', 13, 'http://localhost/wordpress/index.php/2021/02/24/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2021-02-24 04:21:58', '2021-02-24 04:21:58', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring ammctor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-02-24 04:21:58', '2021-02-24 04:21:58', '', 2, 'http://localhost/wordpress/index.php/2021/02/24/2-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2021-02-24 04:23:52', '2021-02-24 04:23:52', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 04:23:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aec1e7dd-9ddc-47b8-980b-1e9bf1cc1a54', '', '', '2021-02-24 04:23:52', '2021-02-24 04:23:52', '', 0, 'http://localhost/wordpress/index.php/2021/02/24/aec1e7dd-9ddc-47b8-980b-1e9bf1cc1a54/', 0, 'customize_changeset', '', 0),
(17, 1, '2021-02-24 04:25:04', '2021-02-24 04:25:04', '', 'logo-light', '', 'inherit', 'open', 'closed', '', 'logo-light', '', '', '2021-02-24 04:25:04', '2021-02-24 04:25:04', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/02/logo-light.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2021-02-24 04:26:13', '2021-02-24 04:26:13', '{\n    \"vw-gardening-landscaping::custom_logo\": {\n        \"value\": 17,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 04:25:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f6117118-753c-4341-a3ac-127383b592e1', '', '', '2021-02-24 04:26:13', '2021-02-24 04:26:13', '', 0, 'http://localhost/wordpress/?p=18', 0, 'customize_changeset', '', 0),
(19, 1, '2021-02-24 04:26:32', '2021-02-24 04:26:32', '{\n    \"vw-gardening-landscaping::logo_size\": {\n        \"value\": \"25\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 04:26:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '48e753ef-607b-4d99-a088-d8ac9ee43013', '', '', '2021-02-24 04:26:32', '2021-02-24 04:26:32', '', 0, 'http://localhost/wordpress/index.php/2021/02/24/48e753ef-607b-4d99-a088-d8ac9ee43013/', 0, 'customize_changeset', '', 0),
(20, 1, '2021-02-24 04:26:56', '2021-02-24 04:26:56', '{\n    \"blogname\": {\n        \"value\": \"Agri-World\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 04:26:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '58392b9d-47bd-41ab-b3ae-e5ccf31363be', '', '', '2021-02-24 04:26:56', '2021-02-24 04:26:56', '', 0, 'http://localhost/wordpress/index.php/2021/02/24/58392b9d-47bd-41ab-b3ae-e5ccf31363be/', 0, 'customize_changeset', '', 0),
(21, 1, '2021-02-24 04:27:56', '2021-02-24 04:27:56', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2021-02-24 04:27:56', '2021-02-24 04:27:56', '', 0, 'http://localhost/wordpress/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2021-02-24 04:27:56', '2021-02-24 04:27:56', '', 'About us', '', 'publish', 'closed', 'closed', '', '22', '', '', '2021-02-24 04:29:16', '2021-02-24 04:29:16', '', 0, 'http://localhost/wordpress/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2021-02-24 04:27:56', '2021-02-24 04:27:56', '', 'Login', '', 'publish', 'closed', 'closed', '', '23', '', '', '2021-02-24 04:30:01', '2021-02-24 04:30:01', '', 0, 'http://localhost/wordpress/?p=23', 3, 'nav_menu_item', '', 0),
(24, 1, '2021-02-24 04:29:16', '2021-02-24 04:29:16', '{\n    \"nav_menu_item[22]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/index.php/home/\",\n            \"title\": \"About us\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 04:29:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '17606724-6ec6-4055-87a4-0df31254fad9', '', '', '2021-02-24 04:29:16', '2021-02-24 04:29:16', '', 0, 'http://localhost/wordpress/index.php/2021/02/24/17606724-6ec6-4055-87a4-0df31254fad9/', 0, 'customize_changeset', '', 0),
(25, 1, '2021-02-24 04:30:00', '2021-02-24 04:30:00', '{\n    \"nav_menu_item[23]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 2,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/index.php/sample-page/\",\n            \"title\": \"Login\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 04:30:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd44ee086-fcd9-4349-8368-e78d441d9b98', '', '', '2021-02-24 04:30:00', '2021-02-24 04:30:00', '', 0, 'http://localhost/wordpress/index.php/2021/02/24/d44ee086-fcd9-4349-8368-e78d441d9b98/', 0, 'customize_changeset', '', 0),
(26, 1, '2021-02-24 04:31:00', '2021-02-24 04:31:00', '<!-- wp:gallery {\"ids\":[51,53,54,56,43],\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2021/02/ori.jpg\" alt=\"\" data-id=\"51\" data-full-url=\"http://localhost/wordpress/wp-content/uploads/2021/02/ori.jpg\" data-link=\"http://localhost/wordpress/index.php/register/ori/\" class=\"wp-image-51\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2021/02/rr-1024x576.jpg\" alt=\"\" data-id=\"53\" data-full-url=\"http://localhost/wordpress/wp-content/uploads/2021/02/rr.jpg\" data-link=\"http://localhost/wordpress/index.php/register/rr/\" class=\"wp-image-53\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2021/02/staff.jpg\" alt=\"\" data-id=\"54\" data-full-url=\"http://localhost/wordpress/wp-content/uploads/2021/02/staff.jpg\" data-link=\"http://localhost/wordpress/index.php/register/staff/\" class=\"wp-image-54\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2021/02/stu.jpg\" alt=\"\" data-id=\"56\" data-full-url=\"http://localhost/wordpress/wp-content/uploads/2021/02/stu.jpg\" data-link=\"http://localhost/wordpress/index.php/register/stu-2/\" class=\"wp-image-56\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2021/02/2.jpg\" alt=\"\" data-id=\"43\" data-full-url=\"http://localhost/wordpress/wp-content/uploads/2021/02/2.jpg\" data-link=\"http://localhost/wordpress/index.php/register/attachment/2/\" class=\"wp-image-43\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Gallery', '', 'trash', 'closed', 'closed', '', 'register__trashed', '', '', '2021-02-24 09:23:51', '2021-02-24 09:23:51', '', 0, 'http://localhost/wordpress/?page_id=26', 0, 'page', '', 0),
(27, 1, '2021-02-24 04:31:00', '2021-02-24 04:31:00', '{\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            26\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 04:30:49\"\n    },\n    \"nav_menu_item[-693229757255012400]\": {\n        \"value\": {\n            \"object_id\": 26,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Register\",\n            \"url\": \"http://localhost/wordpress/?page_id=26\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Register\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 04:30:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9a10a801-1bf0-422a-b84e-20aa208ce063', '', '', '2021-02-24 04:31:00', '2021-02-24 04:31:00', '', 0, 'http://localhost/wordpress/?p=27', 0, 'customize_changeset', '', 0),
(28, 1, '2021-02-24 04:31:00', '2021-02-24 04:31:00', '', 'Register', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-02-24 04:31:00', '2021-02-24 04:31:00', '', 26, 'http://localhost/wordpress/index.php/2021/02/24/26-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2021-02-24 04:31:01', '2021-02-24 04:31:01', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2021-02-24 04:31:01', '2021-02-24 04:31:01', '', 0, 'http://localhost/wordpress/index.php/2021/02/24/29/', 4, 'nav_menu_item', '', 0),
(30, 1, '2021-02-24 08:15:24', '2021-02-24 08:15:24', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <athulya@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <athulya@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2021-02-24 08:15:24', '2021-02-24 08:15:24', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&p=30', 0, 'wpcf7_contact_form', '', 0),
(31, 1, '2021-02-24 08:20:57', '2021-02-24 08:20:57', '', 'form', '', 'inherit', 'open', 'closed', '', 'form', '', '', '2021-02-24 08:20:57', '2021-02-24 08:20:57', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/02/form.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2021-02-24 08:21:45', '2021-02-24 08:21:45', '{\n    \"vw-gardening-landscaping::background_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2021/02/form-scaled.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 08:21:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b4c80232-dcc1-413a-b066-7809ce7d69ff', '', '', '2021-02-24 08:21:45', '2021-02-24 08:21:45', '', 0, 'http://localhost/wordpress/index.php/2021/02/24/b4c80232-dcc1-413a-b066-7809ce7d69ff/', 0, 'customize_changeset', '', 0),
(33, 1, '2021-02-24 08:26:35', '2021-02-24 08:26:35', '<!-- wp:contact-form-7/contact-form-selector {\"id\":30,\"title\":\"Contact form 1\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"30\" title=\"Contact form 1\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->', 'Contact  us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-02-24 08:30:39', '2021-02-24 08:30:39', '', 0, 'http://localhost/wordpress/?page_id=33', 0, 'page', '', 0),
(34, 1, '2021-02-24 08:26:35', '2021-02-24 08:26:35', '{\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            33\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 08:26:35\"\n    },\n    \"nav_menu_item[-492704201483472900]\": {\n        \"value\": {\n            \"object_id\": 33,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"Contact  us\",\n            \"url\": \"http://localhost/wordpress/?page_id=33\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact  us\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 08:26:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b7cb9c1b-1472-4d91-9215-ee7aceba72cd', '', '', '2021-02-24 08:26:35', '2021-02-24 08:26:35', '', 0, 'http://localhost/wordpress/index.php/2021/02/24/b7cb9c1b-1472-4d91-9215-ee7aceba72cd/', 0, 'customize_changeset', '', 0),
(35, 1, '2021-02-24 08:26:35', '2021-02-24 08:26:35', '', 'Contact  us', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-02-24 08:26:35', '2021-02-24 08:26:35', '', 33, 'http://localhost/wordpress/index.php/2021/02/24/33-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2021-02-24 08:26:35', '2021-02-24 08:26:35', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2021-02-24 08:26:35', '2021-02-24 08:26:35', '', 0, 'http://localhost/wordpress/index.php/2021/02/24/36/', 5, 'nav_menu_item', '', 0),
(37, 1, '2021-02-24 08:30:39', '2021-02-24 08:30:39', '<!-- wp:contact-form-7/contact-form-selector {\"id\":30,\"title\":\"Contact form 1\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"30\" title=\"Contact form 1\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->', 'Contact  us', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-02-24 08:30:39', '2021-02-24 08:30:39', '', 33, 'http://localhost/wordpress/index.php/2021/02/24/33-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2021-02-24 08:42:20', '2021-02-24 08:42:20', '', 'wall', '', 'inherit', 'open', 'closed', '', 'wall', '', '', '2021-02-24 08:42:20', '2021-02-24 08:42:20', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/02/wall.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2021-02-24 08:42:39', '2021-02-24 08:42:39', '{\n    \"vw-gardening-landscaping::background_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2021/02/wall.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 08:42:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '510045e6-10be-4ff3-8752-99513ecf82f6', '', '', '2021-02-24 08:42:39', '2021-02-24 08:42:39', '', 0, 'http://localhost/wordpress/index.php/2021/02/24/510045e6-10be-4ff3-8752-99513ecf82f6/', 0, 'customize_changeset', '', 0),
(40, 1, '2021-02-24 09:00:32', '2021-02-24 09:00:32', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-02-24 09:00:32', '2021-02-24 09:00:32', '', 26, 'http://localhost/wordpress/index.php/2021/02/24/26-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2021-02-24 09:19:55', '2021-02-24 09:19:55', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2021-02-24 09:19:55', '2021-02-24 09:19:55', '', 26, 'http://localhost/wordpress/wp-content/uploads/2021/02/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2021-02-24 09:19:56', '2021-02-24 09:19:56', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2021-02-24 09:19:56', '2021-02-24 09:19:56', '', 26, 'http://localhost/wordpress/wp-content/uploads/2021/02/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2021-02-24 09:19:57', '2021-02-24 09:19:57', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2021-02-24 09:19:57', '2021-02-24 09:19:57', '', 26, 'http://localhost/wordpress/wp-content/uploads/2021/02/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2021-02-24 09:19:59', '2021-02-24 09:19:59', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2021-02-24 09:19:59', '2021-02-24 09:19:59', '', 26, 'http://localhost/wordpress/wp-content/uploads/2021/02/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2021-02-24 09:20:00', '2021-02-24 09:20:00', '', 'ac', '', 'inherit', 'open', 'closed', '', 'ac', '', '', '2021-02-24 09:20:00', '2021-02-24 09:20:00', '', 26, 'http://localhost/wordpress/wp-content/uploads/2021/02/ac.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2021-02-24 09:20:01', '2021-02-24 09:20:01', '', 'acc', '', 'inherit', 'open', 'closed', '', 'acc', '', '', '2021-02-24 09:20:01', '2021-02-24 09:20:01', '', 26, 'http://localhost/wordpress/wp-content/uploads/2021/02/acc.gif', 0, 'attachment', 'image/gif', 0),
(48, 1, '2021-02-24 09:20:02', '2021-02-24 09:20:02', '', 'ad', '', 'inherit', 'open', 'closed', '', 'ad', '', '', '2021-02-24 09:20:02', '2021-02-24 09:20:02', '', 26, 'http://localhost/wordpress/wp-content/uploads/2021/02/ad.gif', 0, 'attachment', 'image/gif', 0),
(49, 1, '2021-02-24 09:20:04', '2021-02-24 09:20:04', '', 'admin', '', 'inherit', 'open', 'closed', '', 'admin', '', '', '2021-02-24 09:20:04', '2021-02-24 09:20:04', '', 26, 'http://localhost/wordpress/wp-content/uploads/2021/02/admin.gif', 0, 'attachment', 'image/gif', 0),
(50, 1, '2021-02-24 09:20:33', '2021-02-24 09:20:33', '', 'or', '', 'inherit', 'open', 'closed', '', 'or', '', '', '2021-02-24 09:20:33', '2021-02-24 09:20:33', '', 26, 'http://localhost/wordpress/wp-content/uploads/2021/02/or.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2021-02-24 09:20:34', '2021-02-24 09:20:34', '', 'ori', '', 'inherit', 'open', 'closed', '', 'ori', '', '', '2021-02-24 09:20:34', '2021-02-24 09:20:34', '', 26, 'http://localhost/wordpress/wp-content/uploads/2021/02/ori.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2021-02-24 09:20:36', '2021-02-24 09:20:36', '', 'ro', '', 'inherit', 'open', 'closed', '', 'ro', '', '', '2021-02-24 09:20:36', '2021-02-24 09:20:36', '', 26, 'http://localhost/wordpress/wp-content/uploads/2021/02/ro.gif', 0, 'attachment', 'image/gif', 0),
(53, 1, '2021-02-24 09:20:37', '2021-02-24 09:20:37', '', 'rr', '', 'inherit', 'open', 'closed', '', 'rr', '', '', '2021-02-24 09:20:37', '2021-02-24 09:20:37', '', 26, 'http://localhost/wordpress/wp-content/uploads/2021/02/rr.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2021-02-24 09:20:38', '2021-02-24 09:20:38', '', 'staff', '', 'inherit', 'open', 'closed', '', 'staff', '', '', '2021-02-24 09:20:38', '2021-02-24 09:20:38', '', 26, 'http://localhost/wordpress/wp-content/uploads/2021/02/staff.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2021-02-24 09:20:40', '2021-02-24 09:20:40', '', 'stu', '', 'inherit', 'open', 'closed', '', 'stu', '', '', '2021-02-24 09:20:40', '2021-02-24 09:20:40', '', 26, 'http://localhost/wordpress/wp-content/uploads/2021/02/stu.gif', 0, 'attachment', 'image/gif', 0),
(56, 1, '2021-02-24 09:20:41', '2021-02-24 09:20:41', '', 'stu', '', 'inherit', 'open', 'closed', '', 'stu-2', '', '', '2021-02-24 09:20:41', '2021-02-24 09:20:41', '', 26, 'http://localhost/wordpress/wp-content/uploads/2021/02/stu.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2021-02-24 09:22:05', '2021-02-24 09:22:05', '<!-- wp:gallery {\"ids\":[51,53,54,56,43],\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2021/02/ori.jpg\" alt=\"\" data-id=\"51\" data-full-url=\"http://localhost/wordpress/wp-content/uploads/2021/02/ori.jpg\" data-link=\"http://localhost/wordpress/index.php/register/ori/\" class=\"wp-image-51\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2021/02/rr-1024x576.jpg\" alt=\"\" data-id=\"53\" data-full-url=\"http://localhost/wordpress/wp-content/uploads/2021/02/rr.jpg\" data-link=\"http://localhost/wordpress/index.php/register/rr/\" class=\"wp-image-53\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2021/02/staff.jpg\" alt=\"\" data-id=\"54\" data-full-url=\"http://localhost/wordpress/wp-content/uploads/2021/02/staff.jpg\" data-link=\"http://localhost/wordpress/index.php/register/staff/\" class=\"wp-image-54\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2021/02/stu.jpg\" alt=\"\" data-id=\"56\" data-full-url=\"http://localhost/wordpress/wp-content/uploads/2021/02/stu.jpg\" data-link=\"http://localhost/wordpress/index.php/register/stu-2/\" class=\"wp-image-56\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2021/02/2.jpg\" alt=\"\" data-id=\"43\" data-full-url=\"http://localhost/wordpress/wp-content/uploads/2021/02/2.jpg\" data-link=\"http://localhost/wordpress/index.php/register/attachment/2/\" class=\"wp-image-43\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Gallery', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-02-24 09:22:05', '2021-02-24 09:22:05', '', 26, 'http://localhost/wordpress/index.php/2021/02/24/26-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2021-02-24 09:24:42', '2021-02-24 09:24:42', '<!-- wp:shortcode -->\n[sp_wpcarousel id=\"62\"]\n<!-- /wp:shortcode -->', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2021-02-24 09:28:16', '2021-02-24 09:28:16', '', 0, 'http://localhost/wordpress/?page_id=58', 0, 'page', '', 0),
(59, 1, '2021-02-24 09:24:42', '2021-02-24 09:24:42', '{\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            58\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 09:24:42\"\n    },\n    \"nav_menu_item[-341524735918395400]\": {\n        \"value\": {\n            \"object_id\": 58,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"Gallery\",\n            \"url\": \"http://localhost/wordpress/?page_id=58\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Gallery\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 09:24:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '497a25e3-60d1-45f2-9716-0b66e0db37b6', '', '', '2021-02-24 09:24:42', '2021-02-24 09:24:42', '', 0, 'http://localhost/wordpress/index.php/2021/02/24/497a25e3-60d1-45f2-9716-0b66e0db37b6/', 0, 'customize_changeset', '', 0),
(60, 1, '2021-02-24 09:24:42', '2021-02-24 09:24:42', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2021-02-24 09:24:42', '2021-02-24 09:24:42', '', 58, 'http://localhost/wordpress/index.php/2021/02/24/58-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2021-02-24 09:24:43', '2021-02-24 09:24:43', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2021-02-24 09:24:43', '2021-02-24 09:24:43', '', 0, 'http://localhost/wordpress/index.php/2021/02/24/61/', 6, 'nav_menu_item', '', 0),
(62, 1, '2021-02-24 09:27:17', '2021-02-24 09:27:17', '', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2021-02-24 09:48:09', '2021-02-24 09:48:09', '', 0, 'http://localhost/wordpress/?post_type=sp_wp_carousel&#038;p=62', 0, 'sp_wp_carousel', '', 0),
(63, 1, '2021-02-24 09:28:16', '2021-02-24 09:28:16', '<!-- wp:shortcode -->\n[sp_wpcarousel id=\"62\"]\n<!-- /wp:shortcode -->', 'Gallery', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2021-02-24 09:28:16', '2021-02-24 09:28:16', '', 58, 'http://localhost/wordpress/index.php/2021/02/24/58-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2021-02-24 09:38:47', '2021-02-24 09:38:47', '{\n    \"sidebars_widgets[social-links]\": {\n        \"value\": [\n            \"nav_menu-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 09:38:47\"\n    },\n    \"widget_nav_menu[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-24 09:38:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '378eb55a-967c-4623-aee2-a4a724822ea1', '', '', '2021-02-24 09:38:47', '2021-02-24 09:38:47', '', 0, 'http://localhost/wordpress/index.php/2021/02/24/378eb55a-967c-4623-aee2-a4a724822ea1/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'LogIn', 'login', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(29, 2, 0),
(36, 2, 0),
(61, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Athulya'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'session_tokens', 'a:1:{s:64:\"1b6252165c731499decba0a0b63897b3bd31f77147c1fcb6756120d41b966337\";a:4:{s:10:\"expiration\";i:1614311304;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36\";s:5:\"login\";i:1614138504;}}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1614140840'),
(23, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Athulya', '$P$BiMwRtgzM457hpofIcVQGCzC8rrPM4.', 'athulya', 'athulya@gmail.com', 'http://localhost/wordpress', '2021-02-23 12:32:35', '1614930223:$P$B4whOBw3dwPUVQVS1qiR/bFLxgp3Ga.', 0, 'Athulya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  MODIFY `form_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Dumping data for table `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'tabletwo', 'table', 'myform', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"agriworld\",\"table\":\"tb_login\"},{\"db\":\"website\",\"table\":\"registers\"},{\"db\":\"website\",\"table\":\"migrations\"},{\"db\":\"airline\",\"table\":\"registers\"},{\"db\":\"airline\",\"table\":\"books\"},{\"db\":\"airline\",\"table\":\"migrations\"},{\"db\":\"airline\",\"table\":\"adminlogins\"},{\"db\":\"airline\",\"table\":\"users\"},{\"db\":\"blog\",\"table\":\"registers\"},{\"db\":\"blog\",\"table\":\"migrations\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('myform', 'tableone', 'fname'),
('myform', 'teacher', 'name'),
('session', 'tb_reg', 'name');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-03-27 04:23:49', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":-118.029}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `athu`
--

CREATE TABLE `athu` (
  `sl.no` int(11) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  `student_rollnu` int(11) NOT NULL,
  `student_adddress` varchar(100) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `athu`
--

INSERT INTO `athu` (`sl.no`, `student_name`, `student_rollnu`, `student_adddress`, `student_email`, `status`) VALUES
(1, '', 0, '', '', ''),
(2, '', 0, '', '', ''),
(3, '', 0, '', '', ''),
(4, '', 0, '', '', ''),
(5, '', 0, '', '', ''),
(6, '', 0, '', '', ''),
(7, '', 0, '', '', ''),
(8, '', 0, '', '', ''),
(9, '', 0, '', '', ''),
(10, '', 0, '', '', ''),
(11, '', 0, '', '', ''),
(12, '', 0, '', '', ''),
(13, '', 0, '', '', ''),
(14, '', 0, '', '', ''),
(15, '', 0, '', '', ''),
(16, '', 0, '', '', ''),
(17, '', 0, '', '', ''),
(18, '', 0, '', '', ''),
(19, '', 0, '', '', ''),
(20, '', 0, '', '', ''),
(22, '', 0, '', '', ''),
(23, '', 0, '', '', ''),
(24, '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sl.no` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_rollnu` int(11) NOT NULL,
  `student_address` varchar(100) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sl.no`, `student_name`, `student_rollnu`, `student_address`, `student_email`, `status`) VALUES
(26, '', 0, '', '', 0),
(27, '', 0, '', '', 0),
(28, '', 0, '', '', 0),
(29, '', 0, '', '', 0),
(30, '', 0, '', '', 0),
(31, '', 0, '', '', 0),
(32, '', 0, '', '', 0),
(33, '', 0, '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `athu`
--
ALTER TABLE `athu`
  ADD PRIMARY KEY (`sl.no`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sl.no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `athu`
--
ALTER TABLE `athu`
  MODIFY `sl.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `sl.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Database: `session`
--
CREATE DATABASE IF NOT EXISTS `session` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `session`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_reg`
--

CREATE TABLE `tb_reg` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `logid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_reg`
--

INSERT INTO `tb_reg` (`id`, `name`, `logid`) VALUES
(1, 'Anumol', 1),
(2, 'AppuRej', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb__login`
--

CREATE TABLE `tb__login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb__login`
--

INSERT INTO `tb__login` (`id`, `username`, `password`) VALUES
(1, 'Anu', '123'),
(2, 'Appu', '345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_reg`
--
ALTER TABLE `tb_reg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logid` (`logid`);

--
-- Indexes for table `tb__login`
--
ALTER TABLE `tb__login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_reg`
--
ALTER TABLE `tb_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb__login`
--
ALTER TABLE `tb__login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_reg`
--
ALTER TABLE `tb_reg`
  ADD CONSTRAINT `tb_reg_ibfk_1` FOREIGN KEY (`logid`) REFERENCES `tb__login` (`id`);
--
-- Database: `table`
--
CREATE DATABASE IF NOT EXISTS `table` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `table`;

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

CREATE TABLE `table1` (
  `user_ID` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_desi` varchar(100) NOT NULL,
  `user_AGE` bigint(20) DEFAULT NULL,
  `user_salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table1`
--

INSERT INTO `table1` (`user_ID`, `user_name`, `user_desi`, `user_AGE`, `user_salary`) VALUES
(1, 'Athulya', 'ex-Manager', 25, 25000),
(2, 'jaya', 'ex-Manager', 40, 30000),
(3, 'Athul', 'ex-Manager', 40, 25000),
(4, 'Riza', 'CEO', 40, 25000),
(5, 'Anandu', 'Manager', 40, 35000),
(6, 'Anuj', 'employe', 34, 25000),
(7, 'Geethu', 'employee', 40, 15000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table1`
--
ALTER TABLE `table1`
  ADD PRIMARY KEY (`user_ID`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `website`
--
CREATE DATABASE IF NOT EXISTS `website` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `website`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_03_24_093413_create_registers_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Select` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `block` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village_block` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `Select`, `name`, `dob`, `mail`, `phone`, `state`, `dist`, `block`, `village_block`, `password`, `created_at`, `updated_at`) VALUES
(1, 'on', 'athulya', '2021-03-04', 'athulya@gmail.com', 78899889, 'Bihar', 'Alappuzha', '3', 'Kollam', '55', '2021-03-24 05:28:44', '2021-03-24 05:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
