-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2021 at 06:05 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dckap`
--

-- --------------------------------------------------------

--
-- Table structure for table `fc_admin`
--

CREATE TABLE `fc_admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(25) NOT NULL,
  `admin_password` text NOT NULL,
  `email` text NOT NULL,
  `admin_type` enum('Super','Sub') NOT NULL DEFAULT 'Super',
  `dateAdded` datetime NOT NULL,
  `dateModified` datetime NOT NULL,
  `last_login_date` datetime NOT NULL,
  `last_logout_date` datetime NOT NULL,
  `last_login_ip` varchar(17) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_admin`
--

INSERT INTO `fc_admin` (`id`, `admin_name`, `admin_password`, `email`, `admin_type`, `dateAdded`, `dateModified`, `last_login_date`, `last_logout_date`, `last_login_ip`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'saravanakumar@casperon.in', 'Super', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-02-24 04:45:19', '2021-02-24 04:45:17', '::1', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `fc_category`
--

CREATE TABLE `fc_category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `seo_url` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lang` varchar(4) NOT NULL DEFAULT 'en',
  `to_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_category`
--

INSERT INTO `fc_category` (`id`, `name`, `seo_url`, `status`, `date_added`, `lang`, `to_id`) VALUES
(1, 'Rice', 'rice', 'Active', '2021-02-23 11:23:50', 'en', 1),
(2, 'Dhall', 'dhall', 'Active', '2021-02-23 11:23:57', 'en', 2);

-- --------------------------------------------------------

--
-- Table structure for table `fc_members`
--

CREATE TABLE `fc_members` (
  `id` int(11) NOT NULL,
  `user_type` enum('Host','Guest','Others') NOT NULL DEFAULT 'Others',
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `profile_image` varchar(255) NOT NULL DEFAULT 'default_profile.jpg',
  `password` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `country` text NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive',
  `deleted_status` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_members`
--

INSERT INTO `fc_members` (`id`, `user_type`, `firstname`, `lastname`, `profile_image`, `password`, `email`, `address`, `city`, `state`, `country`, `created`, `modified`, `status`, `deleted_status`) VALUES
(1, 'Guest', 'E', 'Kumar', '1587911568Banner_11.jpg', 'e10adc3949ba59abbe56e057f20f883e', 'saravana3292@gmail.com', '246/232, bangalapatti street,', 'Theni', 'TAMIL NADU', 'India', '2021-02-23 15:40:00', '0000-00-00 00:00:00', 'Active', 'No'),
(2, 'Guest', 'Birla', 'S', '1587911601Banner_4.jpg', 'e10adc3949ba59abbe56e057f20f883e', 'birla.s@gmail.com', '255 pammal chennai', 'chennai', 'tamilnadu', 'india', '2021-02-23 15:42:48', '0000-00-00 00:00:00', 'Active', 'No'),
(3, 'Guest', 'Bharath', 'P', '15872179851577265621Banner_1280X720_Diary.jpg', 'e10adc3949ba59abbe56e057f20f883e', 'bharath13raja@gmail.com', '', '', '', '', '2021-02-23 15:45:53', '0000-00-00 00:00:00', 'Active', 'No'),
(4, 'Others', 'nallu', 's', 'default_profile.jpg', 'e10adc3949ba59abbe56e057f20f883e', 'nallu@gmail.com', '', '', '', '', '2021-02-23 22:40:51', '0000-00-00 00:00:00', 'Active', 'No'),
(5, 'Guest', 'Dinesh', 'M', '1587911616Banner_2.jpg', 'e10adc3949ba59abbe56e057f20f883e', 'dinesh.m@gmail.com', '85 bangalamedu theni', 'theni', 'tamilnadu', 'india', '2021-02-24 00:17:17', '0000-00-00 00:00:00', 'Active', 'No'),
(8, 'Others', 'pon sridhar', 'M', 'default_profile.jpg', 'e10adc3949ba59abbe56e057f20f883e', 'ponsridhar@gmail.com', '955, bb kulam, madurai', 'madurai', 'tamil nadu', 'india', '2021-02-24 00:58:35', '0000-00-00 00:00:00', 'Active', 'No'),
(9, 'Others', 'madan', 'P', 'default_profile.jpg', '9218c32cc68d2e1a4b151ffc87bc6e7c', 'madan.p@gmail.com', '87, bb kulam, madurai', 'madurai', 'tamil nadu', 'india', '2021-02-24 01:07:41', '0000-00-00 00:00:00', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `fc_product`
--

CREATE TABLE `fc_product` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `category_type` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `seo_url` text NOT NULL,
  `product_description` text NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `banner_photos` varchar(255) NOT NULL DEFAULT 'dummyImage.jpg',
  `status` enum('Active','Inactive','Pending') NOT NULL DEFAULT 'Inactive',
  `date_added` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_product`
--

INSERT INTO `fc_product` (`id`, `owner_id`, `category_type`, `product_name`, `seo_url`, `product_description`, `price`, `banner_photos`, `status`, `date_added`) VALUES
(1, 3, 1, 'Deluxe Ponni Rice', 'deluxe-ponni-rice-1614103982', '<p>huiyhui</p>', '100.00', '1587911616Banner_21.jpg', 'Active', '2021-02-23 13:04:05'),
(3, 3, 1, 'asd', 'asd-1614100057', '<p>sadasdasd</p>', '1000.00', '1587911616Banner_2.jpg', 'Active', '2021-02-23 13:33:34'),
(4, 8, 2, 'Pasi Parupu', 'pasi-parupu-1614108570', '<p>asdas</p>', '115.00', '15872179851577265621Banner_1280X720_Diary.jpg', 'Active', '2021-02-23 19:29:30'),
(5, 9, 2, 'kadalai paraupu', 'kadalai-paraupu-1614109728', '<p>&nbsp;asdsadsad asdsadsad asdsadsad&nbsp; asdsadsad asdsadsad asdsadsad&nbsp; asdsadsad asdsadsad asdsadsad&nbsp; asdsadsad asdsadsad asdsadsad&nbsp; asdsadsad asdsadsad asdsadsad&nbsp; asdsadsad asdsadsad asdsadsad asdsadsad asdsadsad asdsadsad asdsadsad asdsadsad asdsadsad&nbsp; asdsadsad asdsadsad asdsadsad asdsadsad asdsadsad asdsadsad&nbsp; asdsadsad asdsadsad asdsadsad</p>', '60.00', '1587911616Banner_22.jpg', 'Active', '2021-02-23 19:42:37'),
(9, 8, 1, 'IR20', 'ir20-1614114492', 'very nice rice', '156.00', '15872179851577265621Banner_1280X720_Diary6.jpg', 'Active', '2021-02-23 21:08:12'),
(10, 8, 2, 'Dhoor Dhall', 'dhoor-dhall-1614114656', 'dhall dhall', '260.00', '1587911616Banner_23.jpg', 'Active', '2021-02-23 21:10:56'),
(11, 8, 1, 'check', 'check-1614138105', 'check', '55.00', '1587911616Banner_24.jpg', 'Active', '2021-02-24 03:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `fc_product_image`
--

CREATE TABLE `fc_product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_product_image`
--

INSERT INTO `fc_product_image` (`id`, `product_id`, `name`, `order`) VALUES
(1, 1, '1614086447-15872179851577265621banner_1280x720_diary-1614086447.jpg', 0),
(2, 1, '1614086462-1587911568banner_1-1614086462.jpg', 0),
(3, 1, '1614086463-1587911601banner_4-1614086463.jpg', 0),
(4, 1, '1614086464-1587911616banner_2-1614086464.jpg', 0),
(6, 3, '1614087218-1587911616banner_2-1614087218.jpg', 0),
(7, 4, '1614108575-1587911601banner_4-1614108575.jpg', 0),
(9, 5, '1614109363-1587911568banner_1-1614109363.jpg', 0),
(10, 5, '1614109364-15872179851577265621banner_1280x720_diary-1614109364.jpg', 0),
(11, 9, '1614114492-1587911601banner_4-1614114492.jpg', 0),
(12, 9, '1614114493-1587911616banner_2-1614114493.jpg', 0),
(13, 10, '1614114656-1587911601banner_4-1614114656.jpg', 0),
(14, 10, '1614114657-15872179851577265621banner_1280x720_diary-1614114657.jpg', 0),
(15, 11, '1614138106-1587911568banner_1-1614138106.jpg', 0),
(16, 11, '1614138106-1587911601banner_4-1614138106.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fc_admin`
--
ALTER TABLE `fc_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_category`
--
ALTER TABLE `fc_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_members`
--
ALTER TABLE `fc_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_product`
--
ALTER TABLE `fc_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_product_image`
--
ALTER TABLE `fc_product_image`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fc_admin`
--
ALTER TABLE `fc_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fc_category`
--
ALTER TABLE `fc_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fc_members`
--
ALTER TABLE `fc_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fc_product`
--
ALTER TABLE `fc_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fc_product_image`
--
ALTER TABLE `fc_product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
