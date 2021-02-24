-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2018 at 03:20 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `renters_lp`
--

-- --------------------------------------------------------

--
-- Table structure for table `fc_admin`
--

CREATE TABLE IF NOT EXISTS `fc_admin` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_admin`
--

INSERT INTO `fc_admin` (`id`, `admin_name`, `admin_password`, `email`, `admin_type`, `dateAdded`, `dateModified`, `last_login_date`, `last_logout_date`, `last_login_ip`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'saravanakumar@casperon.in', 'Super', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-04-09 11:12:17', '2018-04-09 14:09:50', '192.168.1.1', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `fc_admin_settings`
--

CREATE TABLE IF NOT EXISTS `fc_admin_settings` (
`id` int(200) NOT NULL,
  `site_contact_mail` varchar(200) NOT NULL,
  `site_contact_number` varchar(50) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `google_verification` varchar(500) NOT NULL,
  `google_verification_code` longtext NOT NULL,
  `facebook_link` varchar(200) NOT NULL,
  `twitter_link` varchar(100) NOT NULL,
  `pinterest` varchar(500) NOT NULL,
  `instagram` varchar(500) NOT NULL,
  `googleplus_link` varchar(100) NOT NULL,
  `linkedin_link` varchar(500) NOT NULL,
  `youtube_link` varchar(500) NOT NULL,
  `logo_image` varchar(255) NOT NULL,
  `home_logo_image` varchar(255) NOT NULL,
  `background_image` varchar(255) NOT NULL,
  `footer_background` text NOT NULL,
  `under_construction_image` text NOT NULL,
  `home_video_poster` varchar(150) NOT NULL,
  `videoUrl` varchar(200) NOT NULL,
  `HomeVideoUrl` varchar(255) NOT NULL,
  `slider` enum('on','off') NOT NULL DEFAULT 'off',
  `meta_title` varchar(100) NOT NULL,
  `meta_keyword` varchar(150) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `fevicon_image` varchar(255) NOT NULL,
  `watermark` varchar(255) NOT NULL,
  `facebook_api` varchar(100) NOT NULL,
  `facebook_secret_key` varchar(100) NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_port` int(200) NOT NULL,
  `smtp_uname` varchar(200) NOT NULL,
  `smtp_password` varchar(200) NOT NULL,
  `google_client_secret` varchar(500) NOT NULL,
  `google_client_id` varchar(500) NOT NULL,
  `google_redirect_url` varchar(500) NOT NULL,
  `google_redirect_url_db` varchar(250) NOT NULL,
  `google_redirect_url_connect` varchar(100) NOT NULL,
  `google_developer_key` varchar(500) NOT NULL,
  `linkedin_app_id1` varchar(250) NOT NULL,
  `linkedin_app_key1` varchar(250) NOT NULL,
  `linkedin_app_id` varchar(50) NOT NULL,
  `linkedin_app_key` varchar(50) NOT NULL,
  `facebook_app_id` text NOT NULL,
  `facebook_app_secret` text NOT NULL,
  `banner_text` varchar(1000) NOT NULL,
  `site_pagination_per_page` int(20) NOT NULL,
  `twilio_account_sid` varchar(1000) NOT NULL,
  `twilio_account_token` varchar(1000) NOT NULL,
  `twilio_phone_number` varchar(1000) NOT NULL,
  `google_map_api` text NOT NULL,
  `s3_bucket_name` varchar(250) NOT NULL,
  `s3_access_key` varchar(250) NOT NULL,
  `s3_secret_key` varchar(250) NOT NULL,
  `mute_video` enum('Yes','No') NOT NULL DEFAULT 'No',
  `pagination_limit` int(11) NOT NULL,
  `blog_link` text NOT NULL,
  `admin_url` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_admin_settings`
--

INSERT INTO `fc_admin_settings` (`id`, `site_contact_mail`, `site_contact_number`, `site_name`, `google_verification`, `google_verification_code`, `facebook_link`, `twitter_link`, `pinterest`, `instagram`, `googleplus_link`, `linkedin_link`, `youtube_link`, `logo_image`, `home_logo_image`, `background_image`, `footer_background`, `under_construction_image`, `home_video_poster`, `videoUrl`, `HomeVideoUrl`, `slider`, `meta_title`, `meta_keyword`, `meta_description`, `fevicon_image`, `watermark`, `facebook_api`, `facebook_secret_key`, `smtp_host`, `smtp_port`, `smtp_uname`, `smtp_password`, `google_client_secret`, `google_client_id`, `google_redirect_url`, `google_redirect_url_db`, `google_redirect_url_connect`, `google_developer_key`, `linkedin_app_id1`, `linkedin_app_key1`, `linkedin_app_id`, `linkedin_app_key`, `facebook_app_id`, `facebook_app_secret`, `banner_text`, `site_pagination_per_page`, `twilio_account_sid`, `twilio_account_token`, `twilio_phone_number`, `google_map_api`, `s3_bucket_name`, `s3_access_key`, `s3_secret_key`, `mute_video`, `pagination_limit`, `blog_link`, `admin_url`) VALUES
(1, 'saravanakumar@casperon.in', '', 'Guridoon Real Estate', 'Guridoon Real Estate', 'Guridoon Real Estate', 'https://fb.com', 'https://twitter.com', 'https://in.pinterest.com/', '', 'https://google.com', '', 'https://youtube.com', 'Guridoon_Final_Logo-01.png', 'G_logo1.png', '2016-Ford-Mustang-GT-burnout-red-tire-smoke10.jpg', 'colombo19.jpg', '2016-mazda-cx-3_100509409_h9.jpg', '', '123', '', 'off', 'Guridoon Real Estate', 'Guridoon Real Estate', 'Guridoon Real Estate', 'G_logo3.png', 'G_logo2.png', '', '', 'ssl://smtp.gmail.com', 465, 'suganeshjose007@gmail.com', '9500928868', '5ywZJ3cfV2C9rzrUWRwn-7xa', '337991398030-6isgcn5vda0emjjtlanm463h56uqo104.apps.googleusercontent.com', '', '', '', 'AIzaSyCgA3-jFEYPX8S1WAK_ASubjxrq8lEEMws', '', '', '', '', '2040339262895807', '11e2121cae89c1a8c8422201a3fddba9', '', 0, 'AC526a5800be8fdd0335ee7abb9fc0e6ff', '077cba7a6966d47aeb4fb28c4e87ff47', '+447481344545', 'AIzaSyBDUX42AUTWQxPXxWKtV9ncjxxUU5bpUvo', '6', '7', '8', 'No', 1, '9', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `fc_city`
--

CREATE TABLE IF NOT EXISTS `fc_city` (
`id` int(12) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `latitude` float(20,17) NOT NULL,
  `longitude` float(20,17) NOT NULL,
  `image` varchar(150) NOT NULL,
  `feature` enum('yes','no','','') NOT NULL,
  `status` enum('active','inactive','','') NOT NULL,
  `city_order` int(50) NOT NULL,
  `to_id` int(12) NOT NULL,
  `lang` varchar(50) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_city`
--

INSERT INTO `fc_city` (`id`, `city`, `state`, `country`, `latitude`, `longitude`, `image`, `feature`, `status`, `city_order`, `to_id`, `lang`) VALUES
(1, 'Trichy', 'Tamil Nadu', 'India', 10.79047966003418000, 78.70467376708984000, '1522302498Lighthouse.jpg', 'yes', 'active', 4, 1, 'en'),
(2, 'Theni', 'Tamil Nadu', 'India', 9.93297958374023400, 77.47019958496094000, '15223205722016-Ford-Mustang-GT-burnout-red-tire-smoke.jpg', 'yes', 'active', 3, 2, 'en'),
(4, 'Madurai', 'Tamil Nadu', 'India', 9.92520046234130900, 78.11978149414062000, '1522320719pexels-photo-170811(1).jpeg', 'yes', 'active', 2, 4, 'en'),
(5, 'Rajapalayam', 'Tamil Nadu', 'India', 9.46533966064453100, 77.52754974365234000, '1522320759Lighthouse.jpg', 'yes', 'active', 5, 5, 'en'),
(6, 'Tuticorin', 'Tamil Nadu', 'India', 8.76416969299316400, 78.13484191894531000, '1522321208Hydrangeas.jpg', 'yes', 'active', 6, 6, 'en'),
(7, 'Chennai', 'Tamil Nadu', 'India', 13.08267974853515600, 80.27072143554688000, '1522321255Tulips.jpg', 'yes', 'active', 1, 7, 'en'),
(8, 'Coimbatore', 'Tamil Nadu', 'India', 11.01683998107910200, 76.95583343505860000, '15223223015mb.jpg', 'no', 'active', 0, 8, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `fc_cms`
--

CREATE TABLE IF NOT EXISTS `fc_cms` (
`id` int(11) NOT NULL,
  `page_title` text NOT NULL,
  `seo_url` text NOT NULL,
  `section` text NOT NULL,
  `description` longblob NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive',
  `lang` varchar(4) NOT NULL DEFAULT 'en',
  `to_id` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_cms`
--

INSERT INTO `fc_cms` (`id`, `page_title`, `seo_url`, `section`, `description`, `status`, `lang`, `to_id`) VALUES
(1, 'About Us', 'about-us', 'legal', 0x3c70207374796c653d22746578742d616c69676e3a206c6566743b2070616464696e672d6c6566743a20333070783b223e546869732069732061626f75742075732068612068612068613c2f703e, 'Active', 'en', 1),
(2, 'Terms and Conditions', 'terms-and-conditions', 'legal', 0x3c70207374796c653d22746578742d616c69676e3a2063656e7465723b223e5465726d733c7374726f6e673e20616e6420436f6e646974696f6e733c2f7374726f6e673e3c2f703e0d0a3c70207374796c653d22746578742d616c69676e3a206c6566743b223e54686973206973205465726d7320616e6420436f6e646974696f6e7320706167653c2f703e0d0a3c703e266e6273703b3c2f703e0d0a3c70207374796c653d22746578742d616c69676e3a206c6566743b223e266e6273703b3c2f703e, 'Active', 'en', 2),
(3, 'Privacy Policy', 'privacy-policy', 'legal', 0x3c70207374796c653d22746578742d616c69676e3a2063656e7465723b223e3c7374726f6e673e5072697661637920506f6c6963793c2f7374726f6e673e3c2f703e0d0a3c703e54686973206973205072697661637920506f6c69637920706167653c2f703e, 'Active', 'en', 3),
(4, 'Guest Policies', 'guest-policies', 'legal', 0x3c70207374796c653d22746578742d616c69676e3a2063656e7465723b223e3c7374726f6e673e477565737420506f6c69636965733c2f7374726f6e673e3c2f703e0d0a3c70207374796c653d22746578742d616c69676e3a206c6566743b223e5468697320697320477565737420506f6c696369657320706167653c2f703e, 'Active', 'en', 4);

-- --------------------------------------------------------

--
-- Table structure for table `fc_country`
--

CREATE TABLE IF NOT EXISTS `fc_country` (
`id` int(255) NOT NULL,
  `contid` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `country_code` varchar(2) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `country_mobile_code` varchar(200) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `seourl` varchar(750) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `currency_type` char(3) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `currency_symbol` text NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `shipping_tax` decimal(10,2) NOT NULL,
  `meta_title` blob NOT NULL,
  `meta_keyword` blob NOT NULL,
  `meta_description` blob NOT NULL,
  `description` longblob NOT NULL,
  `status` enum('Active','InActive') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL DEFAULT 'Active',
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `currency_default` enum('No','Yes') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL DEFAULT 'No',
  `slider_image` varchar(1000) NOT NULL,
  `logo` varchar(1000) NOT NULL,
  `map` varchar(1000) NOT NULL,
  `thumb` varchar(1000) NOT NULL,
  `language_code` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_country`
--

INSERT INTO `fc_country` (`id`, `contid`, `country_code`, `country_mobile_code`, `name`, `seourl`, `currency_type`, `currency_symbol`, `shipping_cost`, `shipping_tax`, `meta_title`, `meta_keyword`, `meta_description`, `description`, `status`, `dateAdded`, `currency_default`, `slider_image`, `logo`, `map`, `thumb`, `language_code`) VALUES
(1, 'EU', 'AD', '+376', 'Andorra', 'andorra', 'EUR', '$', '0.00', '0.00', '', '', '', '', 'InActive', '2015-02-19 07:41:51', 'No', '0', '0', '0', '', 'en'),
(2, 'AS', 'AE', '+971', 'United Arab Emirates', 'united-arab-emirates', 'AED', '$', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:00:58', 'No', '0', '0', '0', '', 'en'),
(3, 'AS', 'AF', '+93 ', 'Afghanistan', 'afghanistan', 'AFN', '0', '3.00', '0.00', '', '', '', 0x3c703e686a676a663c2f703e, 'InActive', '2015-07-07 07:05:17', 'No', '0', 'Chrysanthemum2.jpg', '0', 'Koala8.jpg', 'en'),
(4, 'NA', 'AG', '+268', 'Antigua And Barbuda', 'antigua-and-barbuda', 'XCD', '$', '2.00', '3.00', '', '', '', '', 'Active', '2014-12-13 08:04:56', 'No', '0', '0', '0', '', 'en'),
(5, 'EU', 'AL', '+355', 'Albania', 'albania', 'ALL', '', '0.00', '0.00', '', '', '', '', 'InActive', '2015-02-19 07:51:51', 'No', '0', '0', '0', '', 'en'),
(6, 'AS', 'AM', '+374', 'Armenia', 'armenia', 'AMD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:05:30', 'No', '0', '0', '0', '', 'en'),
(7, 'AF', 'AO', '+244', 'Angola', 'angola', 'AOA', '', '0.00', '0.00', '', '', '', '', 'InActive', '2015-02-19 07:53:23', 'No', '0', '0', '0', '', 'en'),
(8, 'AN', 'AQ', '+672', 'Antarctica', 'antarctica', 'XCD', '', '0.00', '0.00', '', '', '', '', 'InActive', '2015-02-19 09:07:57', 'No', '0', '0', '0', '', 'en'),
(9, 'SA', 'AR', '+54 ', 'Argentina', 'argentina', 'ARS', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:06:52', 'No', '0', '0', '0', '', 'en'),
(10, 'OC', 'AS', '+684', 'American Samoa', 'american-samoa', 'USD', '', '0.00', '0.00', '', '', '', '', 'InActive', '2015-02-19 07:53:16', 'No', '0', '0', '0', '', 'en'),
(11, 'EU', 'AT', '+43', 'Austria', 'austria', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:07:46', 'No', '0', '0', '0', '', 'en'),
(12, 'OC', 'AU', '+61', 'Australia', 'australia', 'AUD', '$', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:08:00', 'No', '0', '0', '0', '', 'en'),
(13, 'NA', 'AW', '+297', 'Aruba', 'aruba', 'AWG', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:08:47', 'No', '0', '0', '0', '', 'en'),
(14, '', 'AX', '+358\n', 'Aland Islands', 'aland-islands', 'EUR', 'ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬', '0.00', '0.00', '', '', '', 0x3c703e64667364663c2f703e, 'InActive', '2015-04-28 10:51:02', 'No', '0', 'Chrysanthemum1.jpg', '0', 'Lighthouse3.jpg', 'en'),
(15, 'AS', 'AZ', '+994', 'Azerbaijan', 'azerbaijan', 'AZN', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:10:43', 'No', '0', '0', '0', '', 'en'),
(16, '', 'BA', '+387', 'Bosnia And Herzegovina', 'bosnia-and-herzegovina', 'BAM', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:10:57', 'No', '0', '0', '0', '', 'en'),
(17, 'NA', 'BB', '+246', 'Barbados', 'barbados', 'BBD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:12:49', 'No', '0', '0', '0', '', 'en'),
(18, 'AS', 'BD', '+880', 'Bangladesh', 'bangladesh', 'BDT', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:13:02', 'No', '0', '0', '0', '', 'en'),
(19, 'EU', 'BE', '+32', 'Belgium', 'belgium', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:13:36', 'No', '0', '0', '0', '', 'en'),
(20, 'AF', 'BF', '+226', 'Burkina Faso', 'burkina-faso', 'XOF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:14:05', 'No', '0', '0', '0', '', 'en'),
(21, 'EU', 'BG', '+359', 'Bulgaria', 'bulgaria', 'BGN', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:14:27', 'No', '0', '0', '0', '', 'en'),
(22, 'AS', 'BH', '+973', 'Bahrain', 'bahrain', 'BHD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:14:48', 'No', '0', '0', '0', '', 'en'),
(23, 'AF', 'BI', '+257', 'Burundi', 'burundi', 'BIF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:15:04', 'No', '0', '0', '0', '', 'en'),
(24, 'AF', 'BJ', '+229 ', 'Benin', 'benin', 'XOF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:15:36', 'No', '0', '0', '0', '', 'en'),
(25, 'NA', 'BM', '+1441', 'Bermuda', 'bermuda', 'BMD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:16:42', 'No', '0', '0', '0', '', 'en'),
(26, '', 'BN', '+673', 'Brunei', 'brunei', 'BND', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:16:54', 'No', '0', '0', '0', '', 'en'),
(27, 'SA', 'BO', '+591', 'Bolivia', 'bolivia', 'BOB', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:17:16', 'No', '0', '0', '0', '', 'en'),
(28, '', 'BQ', '+599', 'Bonaire, Saint Eustatius And Saba ', 'bonaire,-saint-eustatius-and-saba', 'USD', '', '0.00', '0.00', '', '', '', '', 'InActive', '2015-07-07 07:05:29', 'No', '0', '0', '0', '', 'en'),
(29, 'SA', 'BR', '+55', 'Brazil', 'brazil', 'BRL', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:18:32', 'No', '0', '0', '0', '', 'en'),
(30, 'NA', 'BS', '+242', 'Bahamas', 'bahamas', 'BSD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:18:46', 'No', '0', '0', '0', '', 'en'),
(31, 'AS', 'BT', '+975', 'Bhutan', 'bhutan', 'BTN', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:19:06', 'No', '0', '0', '0', '', 'en'),
(32, 'AN', 'BV', '+47	', 'Bouvet Island', 'bouvet-island', 'NOK', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:20:27', 'No', '0', '0', '0', '', 'en'),
(33, 'AF', 'BW', '+267', 'Botswana', 'botswana', 'BWP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:21:06', 'No', '0', '0', '0', '', 'en'),
(34, 'EU', 'BY', '+375', 'Belarus', 'belarus', 'BYR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:21:20', 'No', '0', '0', '0', '', 'en'),
(35, 'NA', 'BZ', '+501', 'Belize', 'belize', 'BZD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:21:32', 'No', '0', '0', '0', '', 'en'),
(36, 'NA', 'CA', '+1', 'Canada', 'canada', 'CAD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:21:55', 'No', '0', '0', '0', '', 'en'),
(37, '', 'CD', '+243', 'Democratic Republic Of The Congo', 'democratic-republic-of-the-congo', 'DRC', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:22:19', 'No', '0', '0', '0', '', 'en'),
(38, 'AF', 'CF', '+236\n', 'Central African Republic', 'central-african-republic', 'XAF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:22:31', 'No', '0', '0', '0', '', 'en'),
(39, '', 'CG', '+ 242', 'Republic Of The Congo', 'republic-of-the-congo', 'DRC', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:22:52', 'No', '0', '0', '0', '', 'en'),
(40, 'EU', 'CH', '+41\n', 'Switzerland', 'switzerland', 'CHF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:24:43', 'No', '0', '0', '0', '', 'en'),
(41, '', 'CI', '+225', 'Ivory Coast', 'ivory-coast', 'XOF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:24:59', 'No', '0', '0', '0', '', 'en'),
(42, 'SA', 'CL', '+56\n', 'Chile', 'chile', 'CLP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:25:34', 'No', '0', '0', '0', '', 'en'),
(43, 'AF', 'CM', '+237', 'Cameroon', 'cameroon', 'XAF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:26:12', 'No', '0', '0', '0', '', 'en'),
(44, 'AS', 'CN', '+86', 'China', 'china', 'CNY', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:26:32', 'No', '0', '0', '0', '', 'en'),
(45, 'SA', 'CO', '+57', 'Colombia', 'colombia', 'COP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:26:43', 'No', '0', '0', '0', '', 'en'),
(46, 'NA', 'CR', '+506\n', 'Costa Rica', 'costa-rica', 'CRC', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:26:58', 'No', '0', '0', '0', '', 'en'),
(47, 'NA', 'CU', '+53\n', 'Cuba', 'cuba', 'CUP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:27:11', 'No', '0', '0', '0', '', 'en'),
(48, 'AF', 'CV', '+238\n', 'Cape Verde', 'cape-verde', 'CVE', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:27:22', 'No', '0', '0', '0', '', 'en'),
(49, 'EU', 'CY', '+357\n', 'Cyprus', 'cyprus', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:27:34', 'No', '0', '0', '0', '', 'en'),
(50, 'EU', 'CZ', '+420\n', 'Czech Republic', 'czech-republic', 'CZK', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:27:47', 'No', '0', '0', '0', '', 'en'),
(51, 'EU', 'DE', '+49', 'Germany', 'germany', 'EUR', '0', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:28:01', 'No', '0', '0', '0', '', 'de'),
(52, 'AF', 'DJ', '+253', 'Djibouti', 'djibouti', 'DJF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:28:12', 'No', '0', '0', '0', '', 'en'),
(53, 'EU', 'DK', '+45', 'Denmark', 'denmark', 'DKK', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:28:33', 'No', '0', '0', '0', '', 'en'),
(54, 'NA', 'DM', '+ 1 767', 'Dominica', 'dominica', 'XCD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:28:55', 'No', '0', '0', '0', '', 'en'),
(55, 'NA', 'DO', '+1 809 ', 'Dominican Republic', 'dominican-republic', 'DOP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:29:55', 'No', '0', '0', '0', '', 'en'),
(56, 'AF', 'DZ', '+213', 'Algeria', 'algeria', 'DZD', '', '0.00', '0.00', '', '', '', '', 'InActive', '2015-02-19 07:53:07', 'No', '0', '0', '0', '', 'en'),
(57, 'SA', 'EC', '+593', 'Ecuador', 'ecuador', 'ECS', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:30:16', 'No', '0', '0', '0', '', 'en'),
(58, 'EU', 'EE', '+372', 'Estonia', 'estonia', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:30:26', 'No', '0', '0', '0', '', 'en'),
(59, 'AF', 'EG', '+20', 'Egypt', 'egypt', 'EGP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:30:38', 'No', '0', '0', '0', '', 'en'),
(60, 'AF', 'EH', '+212', 'Western Sahara', 'western-sahara', 'MAD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 08:31:28', 'No', '0', '0', '0', '', 'en'),
(61, 'AF', 'ER', '+291', 'Eritrea', 'eritrea', 'ERN', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:15:36', 'No', '0', '0', '0', '', 'en'),
(62, 'EU', 'ES', '+34', 'Spain', 'spain', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:16:03', 'No', '0', '0', '0', '', 'en'),
(63, 'AF', 'ET', '+251', 'Ethiopia', 'ethiopia', 'ETB', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:16:18', 'No', '0', '0', '0', '', 'en'),
(64, 'EU', 'FI', '+358', 'Finland', 'finland', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:16:34', 'No', '0', '0', '0', '', 'en'),
(65, 'OC', 'FJ', '+679', 'Fiji', 'fiji', 'FJD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:16:47', 'No', '0', '0', '0', '', 'en'),
(66, '', 'FM', '+691', 'Micronesia', 'micronesia', 'USD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:17:01', 'No', '0', '0', '0', '', 'en'),
(67, 'EU', 'FO', '+298', 'Faroe Islands', 'faroe-islands', 'DKK', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:17:20', 'No', '0', '0', '0', '', 'en'),
(68, 'EU', 'FR', '+33', 'France', 'france', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:17:33', 'No', '0', '0', '0', '', 'en'),
(69, 'AF', 'GA', '+241 ', 'Gabon', 'gabon', 'XAF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:17:49', 'No', '0', '0', '0', '', 'en'),
(70, 'EU', 'GB', '+44', 'United Kingdom', 'united-kingdom', 'USD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:18:13', 'No', '0', '0', '0', '', 'en'),
(71, 'NA', 'GD', '+1 473', 'Grenada', 'grenada', 'XCD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:18:37', 'No', '0', '0', '0', '', 'en'),
(72, 'AS', 'GE', '+995', 'Georgia', 'georgia', 'GEL', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:18:53', 'No', '0', '0', '0', '', 'en'),
(73, 'SA', 'GF', '+594', 'French Guiana', 'french-guiana', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:19:18', 'No', '0', '0', '0', '', 'en'),
(74, '', 'GG', '+44', 'Guernsey', 'guernsey', 'GGP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:19:48', 'No', '0', '0', '0', '', 'en'),
(75, 'AF', 'GH', '+233', 'Ghana', 'ghana', 'GHS', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:20:00', 'No', '0', '0', '0', '', 'en'),
(76, 'NA', 'GL', '+299', 'Greenland', 'greenland', 'DKK', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:20:11', 'No', '0', '0', '0', '', 'en'),
(77, 'AF', 'GM', '+220', 'Gambia', 'gambia', 'GMD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:20:24', 'No', '0', '0', '0', '', 'en'),
(78, 'AF', 'GN', '+224 ', 'Guinea', 'guinea', 'GNF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:21:16', 'No', '0', '0', '0', '', 'en'),
(79, 'NA', 'GP', '+590', 'Guadeloupe', 'guadeloupe', 'EUD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:21:30', 'No', '0', '0', '0', '', 'en'),
(80, 'AF', 'GQ', '+240', 'Equatorial Guinea', 'equatorial-guinea', 'XAF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:21:43', 'No', '0', '0', '0', '', 'en'),
(81, 'EU', 'GR', '+30', 'Greece', 'greece', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:22:04', 'No', '0', '0', '0', '', 'en'),
(82, 'NA', 'GT', '+502', 'Guatemala', 'guatemala', 'QTQ', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:22:51', 'No', '0', '0', '0', '', 'en'),
(83, 'OC', 'GU', '+1 671', 'Guam', 'guam', 'USD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:23:11', 'No', '0', '0', '0', '', 'en'),
(84, 'AF', 'GW', '+245', 'Guinea-Bissau', 'guineabissau', 'GWP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:23:31', 'No', '0', '0', '0', '', 'en'),
(85, 'SA', 'GY', '+592', 'Guyana', 'guyana', 'GYD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:23:51', 'No', '0', '0', '0', '', 'en'),
(86, 'AS', 'HK', '+852', 'Hong Kong', 'hong-kong', 'HKD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:24:09', 'No', '0', '0', '0', '', 'en'),
(87, 'NA', 'HN', '+504', 'Honduras', 'honduras', 'HNL', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:24:21', 'No', '0', '0', '0', '', 'en'),
(88, 'EU', 'HR', '+385', 'Croatia', 'croatia', 'HRK', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:24:35', 'No', '0', '0', '0', '', 'en'),
(89, 'NA', 'HT', '+509', 'Haiti', 'haiti', 'HTG', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:24:49', 'No', '0', '0', '0', '', 'en'),
(90, 'EU', 'HU', '+36', 'Hungary', 'hungary', 'HUF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:25:05', 'No', '0', '0', '0', '', 'en'),
(91, 'AS', 'ID', '+62', 'Indonesia', 'indonesia', 'IDR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:25:23', 'No', '0', '0', '0', '', 'en'),
(92, 'EU', 'IE', '+353', 'Ireland', 'ireland', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:25:40', 'No', '0', '0', '0', '', 'en'),
(93, 'AS', 'IL', '+972 ', 'Israel', 'israel', 'ILS', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:26:06', 'No', '0', '0', '0', '', 'en'),
(94, '', 'IM', '+44', 'Isle Of Man', 'isle-of-man', 'GBP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:26:18', 'No', '0', '0', '0', '', 'en'),
(95, 'AS', 'IN', '+91', 'India', 'india', 'INR', '0', '15.00', '10.00', '', '', '', '', 'Active', '2015-04-28 10:51:02', 'Yes', '0', '0', '0', '', 'en'),
(96, 'AS', 'IO', '+246', 'British Indian Ocean Territory', 'british-indian-ocean-territory', 'USD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:27:18', 'No', '0', '0', '0', '', 'en'),
(97, 'AS', 'IQ', '+964', 'Iraq', 'iraq', 'IQD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:27:40', 'No', '0', '0', '0', '', 'en'),
(98, '', 'IR', '+98', 'Iran', 'iran', 'IRR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:27:52', 'No', '0', '0', '0', '', 'en'),
(99, 'EU', 'IS', '+354', 'Iceland', 'iceland', 'ISK', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:28:08', 'No', '0', '0', '0', '', 'en'),
(100, 'EU', 'IT', '+39', 'Italy', 'italy', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:44:29', 'No', '0', '0', '0', '', 'en'),
(101, '', 'JE', '+44 ', 'Jersey', 'jersey', 'GBP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:44:54', 'No', '0', '0', '0', '', 'en'),
(102, 'NA', 'JM', '+1 876', 'Jamaica', 'jamaica', 'JMD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:45:08', 'No', '0', '0', '0', '', 'en'),
(103, 'AS', 'JO', '+962', 'Jordan', 'jordan', 'JOD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:45:25', 'No', '0', '0', '0', '', 'en'),
(104, 'AS', 'JP', '+81 ', 'Japan', 'japan', 'JPY', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:45:44', 'No', '0', '0', '0', '', 'en'),
(105, 'AF', 'KE', '+254', 'Kenya', 'kenya', 'KES', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:45:56', 'No', '0', '0', '0', '', 'en'),
(106, 'AS', 'KG', '+996', 'Kyrgyzstan', 'kyrgyzstan', 'KGS', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:46:19', 'No', '0', '0', '0', '', 'en'),
(107, 'AS', 'KH', '+855', 'Cambodia', 'cambodia', 'KHR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:46:29', 'No', '0', '0', '0', '', 'en'),
(108, 'OC', 'KI', '+686', 'Kiribati', 'kiribati', 'AUD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:46:38', 'No', '0', '0', '0', '', 'en'),
(109, 'AF', 'KM', '+269', 'Comoros', 'comoros', 'KMF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:46:53', 'No', '0', '0', '0', '', 'en'),
(110, 'NA', 'KN', '+1 869', 'Saint Kitts And Nevis', 'saint-kitts-and-nevis', 'XCD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:47:06', 'No', '0', '0', '0', '', 'en'),
(111, '', 'KP', '+850', 'North Korea', 'north-korea', 'KPW', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:47:21', 'No', '0', '0', '0', '', 'en'),
(112, '', 'KR', '+82', 'South Korea', 'south-korea', 'KRW', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:47:34', 'No', '0', '0', '0', '', 'en'),
(113, 'AS', 'KW', '+965', 'Kuwait', 'kuwait', 'KWD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:47:47', 'No', '0', '0', '0', '', 'en'),
(114, 'AS', 'KZ', '+7', 'Kazakhstan', 'kazakhstan', 'KZT', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:48:00', 'No', '0', '0', '0', '', 'en'),
(115, '', 'LA', '+856', 'Laos', 'laos', 'LAK', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:48:14', 'No', '0', '0', '0', '', 'en'),
(116, 'AS', 'LB', '+961', 'Lebanon', 'lebanon', 'LBP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:48:24', 'No', '0', '0', '0', '', 'en'),
(117, 'NA', 'LC', '+1 758', 'Saint Lucia', 'saint-lucia', 'XCD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:48:44', 'No', '0', '0', '0', '', 'en'),
(118, 'EU', 'LI', '+423', 'Liechtenstein', 'liechtenstein', 'CHF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:48:58', 'No', '0', '0', '0', '', 'en'),
(119, 'AS', 'LK', '+94', 'Sri Lanka', 'sri-lanka', 'LKR', 'Rs', '20.00', '12.00', '', '', '', '', 'Active', '2014-12-13 09:49:12', 'No', '0', '0', '0', '', 'en'),
(120, 'AF', 'LR', '+231', 'Liberia', 'liberia', 'LRD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 09:49:26', 'No', '0', '0', '0', '', 'en'),
(121, 'AF', 'LS', '+266', 'Lesotho', 'lesotho', 'LSL', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:07:37', 'No', '0', '0', '0', '', 'en'),
(122, 'EU', 'LT', '+370', 'Lithuania', 'lithuania', 'LTL', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:07:49', 'No', '0', '0', '0', '', 'en'),
(123, 'EU', 'LU', '+352', 'Luxembourg', 'luxembourg', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:08:03', 'No', '0', '0', '0', '', 'en'),
(124, 'EU', 'LV', '+371', 'Latvia', 'latvia', 'LVL', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:08:17', 'No', '0', '0', '0', '', 'en'),
(125, '', 'LY', '+ 218', 'Libya', 'libya', 'LYD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:08:34', 'No', '0', '0', '0', '', 'en'),
(126, 'AF', 'MA', '+212', 'Morocco', 'morocco', 'MAD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:09:49', 'No', '0', '0', '0', '', 'en'),
(127, 'EU', 'MC', '+377', 'Monaco', 'monaco', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:10:06', 'No', '0', '0', '0', '', 'en'),
(128, '', 'MD', '+373', 'Moldova', 'moldova', 'MDL', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:10:20', 'No', '0', '0', '0', '', 'en'),
(129, '', 'ME', '+382', 'Montenegro', 'montenegro', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:10:33', 'No', '0', '0', '0', '', 'en'),
(130, 'AF', 'MG', '+261', 'Madagascar', 'madagascar', 'MGF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:10:47', 'No', '0', '0', '0', '', 'en'),
(131, 'OC', 'MH', '+692', 'Marshall Islands', 'marshall-islands', 'USD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:11:04', 'No', '0', '0', '0', '', 'en'),
(132, '', 'MK', '+389', 'Macedonia', 'macedonia', 'MKD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:11:20', 'No', '0', '0', '0', '', 'en'),
(133, 'AF', 'ML', '+223', 'Mali', 'mali', 'XOF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:11:33', 'No', '0', '0', '0', '', 'en'),
(134, 'AS', 'MM', '+95', 'Myanmar', 'myanmar', 'MMK', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:12:12', 'No', '0', '0', '0', '', 'en'),
(135, 'AS', 'MN', '+976', 'Mongolia', 'mongolia', 'MNT', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:12:26', 'No', '0', '0', '0', '', 'en'),
(136, '', 'MO', '+853', 'Macao', 'macao', 'MOP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:12:38', 'No', '0', '0', '0', '', 'en'),
(137, 'OC', 'MP', '+1 670', 'Northern Mariana Islands', 'northern-mariana-islands', 'USD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:12:58', 'No', '0', '0', '0', '', 'en'),
(138, 'NA', 'MQ', '+596', 'Martinique', 'martinique', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:13:48', 'No', '0', '0', '0', '', 'en'),
(139, 'AF', 'MR', '+222', 'Mauritania', 'mauritania', 'MRO', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:14:00', 'No', '0', '0', '0', '', 'en'),
(140, 'NA', 'MS', '+1664', 'Montserrat', 'montserrat', 'XCD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:14:26', 'No', '0', '0', '0', '', 'en'),
(141, 'AF', 'MU', '+230', 'Mauritius', 'mauritius', 'MUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:15:18', 'No', '0', '0', '0', '', 'en'),
(142, 'AS', 'MV', '+960', 'Maldives', 'maldives', 'MVR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:15:31', 'No', '0', '0', '0', '', 'en'),
(143, 'AF', 'MW', '+265', 'Malawi', 'malawi', 'MWK', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:15:47', 'No', '0', '0', '0', '', 'en'),
(144, 'NA', 'MX', '+52', 'Mexico', 'mexico', 'MXN', '', '0.00', '0.00', '', '', '', 0x3c703e3c7374726f6e673e54726176656c696e6720746f204d657869636f3c2f7374726f6e673e3c2f703e0d0a3c703e4d657869636f207661636174696f6e2072656e74616c7320616e64204d657869636f207661636174696f6e20686f6d6573206861766520696e6372656173656420696e20766f6c756d652c206173206861732074686520746f757269736d20696e64757374727920696e2074686520617265612e2054686973206973206f6e65206f6620746865206d6f737420706f70756c617220706c6163657320746f20766973697420696e207468652077686f6c65206f66204e6f7274682020416d657269636120616e64206974206973206561737920746f20736565207768792e204d657869636f20636f766572732061206875676520737572666163652061726561206f662061726f756e64203736302c30303020737175617265206d696c65732c207768696368206d65616e73207468657265206973206365727461696e6c79206e6f7420612073686f7274616765206f66207468696e677320746f2073656520616e6420646f20686572652e3c2f703e0d0a3c703e266e6273703b3c2f703e0d0a3c703e3c7374726f6e673e5468696e677320746f20646f20696e204d657869636f3c2f7374726f6e673e3c2f703e0d0a3c703e416674657220636865636b696e6720696e746f204d657869636f207661636174696f6e2072656e74616c7320616e64204d657869636f207661636174696f6e20686f6d65732c206c697374696e672074686520706c6163657320746f207669736974206973206365727461696e6c79206120776f727468207768696c65207468696e6720746f20646f2e204f6e65207468696e672074686174207468697320706c616365206973206b6e6f776e20666f7220697320686176696e6720736f6d65206772656174207369746573206f66206172636861656f6c6f676963616c20696e7465726573742c2077686963682061726520677265617420776974682070656f706c652074686174206c6f766520746f206578706c6f72652e2049742077617320686572652074686174206d616e7920646966666572656e7420666f726d73206f6620636f6d6d756e69636174696f6e207765726520646576656c6f7065642c20696e636c7564696e672077726974696e672e20416c6f6e677369646520746869732c206c6f7473206f662061726974686d6574696320616e6420617374726f6e6f6d7920626173656420646973636f7665726965732068617665206265656e206d6164652068657265206f766572207468652063656e7475726965732c207768696368206d616b6573207468697320616e20696e746572657374696e6720706c61636520746f20766973697420666f7220616c6c206f66207468652066616d696c792e3c2f703e0d0a3c703e266e6273703b3c2f703e0d0a3c703e4f6620636f757273652c206120766973697420746f2061204d657869636f207661636174696f6e2072656e74616c2077696c6c20616c6c6f772070656f706c6520746f206578706c6f726520736f6d65206f6620746865206d616e792062656163686573207468617420617265206f6e206f666665722e20546865207265616c6974792069732074686174207468657265206973206365727461696e6c79206e6f7420612073686f7274616765206f6620746f70207175616c697479206265616368657320746f206578706c6f72652e204d657869636f20697320686f6d6520746f2061726f756e6420362c303030206d696c6573206f6620636f617374206c696e652c207768696368206d65616e7320746861742074686572652061726520612067726561742072616e6765206f6620646966666572656e7420626561636865732c20696e636c7564696e6720636f7665732c2063617665732062757420616c736f20736d616c6c20626179732e20546865207761766573206865726520617265206e6f7420706172746963756c61726c79206c617267652c20627574206d616e79206f66207468652062656163686573206172652077656c6c206b6e6f776e20666f7220696e636f72706f726174696e67206578636974696e672077617465722073706f72747320696e746f20657665727920646179206c6966652e3c2f703e0d0a3c703e266e6273703b3c2f703e0d0a3c703e416c6f6e677369646520746865206265616368657320616e6420746865206d616e79206172636861656f6c6f676963616c20646973636f76657269657320746861742061726520776f727468206578706c6f72696e672c20616e6f74686572206f7074696f6e20697320746f20657870657269656e6365206d616e79206f662074686520616476656e7475726573207468617420617265206f6e206f666665722e204d657869636f2069732066756c6c206f6620746f7572206775696465732074686174207370656369616c69736520696e20616c6c207479706573206f66207468696e67732e205468697320696e636c7564657320746865206c696b6573206f662034783420746f7572732c2062757420616c736f206775696465642077616c6b7320616e64206d6f756e7461696e2062696b652072696465732e205468697320616c6c6f77732070656f706c6520746f206578706c6f7265207468697320677265617420706c616365207573696e6720646966666572656e7420666f726d73206f66207472616e73706f72742c20776869636820616c6c6f7773207468656d20746f20736565204d657869636f20696e20612077686f6c65206e6577206c696768742e204f6620636f757273652c2074686572652061726520706c656e7479206f66206f7074696f6e7320746f2063686f6f73652066726f6d20686572652e3c2f703e0d0a3c703e266e6273703b3c2f703e0d0a3c703e3c7374726f6e673e4163636f6d6d6f646174696f6e7320696e204d657869636f3c2f7374726f6e673e3c2f703e0d0a3c703e4163636f6d6d6f646174696f6e7320696e204d657869636f2068617665206265656e206120687567652070617274206f662068656c70696e6720746f2067726f772074686520746f757269736d20696e64757374727920686572652e20546865205269747a204361726c746f6e206973206365727461696e6c79206f6e65206f6620746865206772656174657220686f74656c7320696e2074686520617265612e204a75737420696e2066726f6e74206f662069742c2069732061726f756e6420312c3230306674206f662077686974652073616e64792062656163682c207768696368206d65616e732072656c6178696e672068657265206973206365727461696e6c79206e6f7420676f696e6720746f20626520646966666963756c742e20497420697320636f6e76656e69656e746c79206c6f63617465642c207768696368206d65616e73207468617420616c6c20746865206d616a6f722061747472616374696f6e73206172652077697468696e20612073686f72742064697374616e6365206f662074686520686f74656c20686572652e2054686520666163696c6974696573206865726520617265206d6f7265207468616e206c75787572696f757320616e6420746865792068656c702070656f706c6520746f2073656520746865207472756520626561757479206f66204d657869636f2e3c2f703e0d0a3c703e266e6273703b3c2f703e0d0a3c703e3c7374726f6e673e5765617468657220696e204d657869636f3c2f7374726f6e673e3c2f703e0d0a3c703e546865207765617468657220696e204d657869636f206973206b6e6f776e20666f72206265696e6720657863657074696f6e616c20647572696e67207468652073756d6d6572206d6f6e7468732c207768696368206d616b6573206974207065726665637420666f7220612073756d6d6572207661636174696f6e2e20447572696e67207468652073756d6d6572206d6f6e7468732c207468726f7567686f757420746869732067726561742064657374696e6174696f6e2c2076697369746f72732073686f756c64206578706563742074656d706572617475726573206f662061726f756e6420323820266465673b43207768696368206973207761726d2c20627574206365727461696e6c7920636f6d666f727461626c65206174207468652073616d652074696d652e20497420697320647572696e67207468652073756d6d6572206d6f6e746873207468617420746865206d616a6f72697479206f662074686520746f757269737473207468617420766973697420686572652e3c2f703e, 'Active', '2014-12-13 11:16:20', 'No', '0', '0', '0', '', 'en'),
(145, 'AS', 'MY', '+60', 'Malaysia', 'malaysia', 'MYR', '', '0.00', '0.00', '', '', '', '', 'Active', '2015-02-19 09:18:00', 'No', '0', '0', '0', '', 'en'),
(146, 'AF', 'MZ', '+258', 'Mozambique', 'mozambique', 'MZN', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:16:46', 'No', '0', '0', '0', '', 'en'),
(147, 'AF', 'NA', '+264', 'Namibia', 'namibia', 'NAD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:17:10', 'No', '0', '0', '0', '', 'en'),
(148, 'OC', 'NC', '+687', 'New Caledonia', 'new-caledonia', 'CFP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:17:31', 'No', '0', '0', '0', '', 'en'),
(149, 'AF', 'NE', '+227', 'Niger', 'niger', 'XOF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:18:48', 'No', '0', '0', '0', '', 'en'),
(150, 'AF', 'NG', '+234', 'Nigeria', 'nigeria', 'NGN', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:19:28', 'No', '0', '0', '0', '', 'en'),
(151, 'NA', 'NI', '+505', 'Nicaragua', 'nicaragua', 'NIO', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:19:48', 'No', '0', '0', '0', '', 'en'),
(152, 'EU', 'NL', '+31', 'Netherlands', 'netherlands', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:20:05', 'No', '0', '0', '0', '', 'en'),
(153, 'EU', 'NO', '+47', 'Norway', 'norway', 'NOK', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:20:23', 'No', '0', '0', '0', '', 'en'),
(154, 'AS', 'NP', '+977', 'Nepal', 'nepal', 'NPR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:20:36', 'No', '0', '0', '0', '', 'en'),
(155, 'OC', 'NR', '+674', 'Nauru', 'nauru', 'AUD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:20:59', 'No', '0', '0', '0', '', 'en'),
(156, 'OC', 'NZ', '+64', 'New Zealand', 'new-zealand', 'NZD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:21:14', 'No', '0', '0', '0', '', 'en'),
(157, 'AS', 'OM', '+968', 'Oman', 'oman', 'OMR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:21:28', 'No', '0', '0', '0', '', 'en'),
(158, 'NA', 'PA', '+507', 'Panama', 'panama', 'PAB', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:21:42', 'No', '0', '0', '0', '', 'en'),
(159, 'SA', 'PE', '+51', 'Peru', 'peru', 'PEN', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:21:53', 'No', '0', '0', '0', '', 'en'),
(160, 'OC', 'PF', '+689', 'French Polynesia', 'french-polynesia', 'CFP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:22:06', 'No', '0', '0', '0', '', 'en'),
(161, 'OC', 'PG', '+675', 'Papua New Guinea', 'papua-new-guinea', 'PGK', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:22:20', 'No', '0', '0', '0', '', 'en'),
(162, 'AS', 'PH', '+63', 'Philippines', 'philippines', 'PHP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:22:36', 'No', '0', '0', '0', '', 'en'),
(163, 'AS', 'PK', '+92', 'Pakistan', 'pakistan', 'PKR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:22:51', 'No', '0', '0', '0', '', 'en'),
(164, 'EU', 'PL', '+48 ', 'Poland', 'poland', 'PLN', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:23:11', 'No', '0', '0', '0', '', 'en'),
(165, '', 'PM', '+508', 'Saint Pierre And Miquelon', 'saint-pierre-and-miquelon', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:23:39', 'No', '0', '0', '0', '', 'en'),
(166, 'NA', 'PR', '+787', 'Puerto Rico', 'puerto-rico', 'USD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:24:15', 'No', '0', '0', '0', '', 'en'),
(167, '', 'PS', '+970', 'Palestinian Territory', 'palestinian-territory', 'PAB', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:24:43', 'No', '0', '0', '0', '', 'en'),
(168, 'EU', 'PT', '+351', 'Portugal', 'portugal', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:25:07', 'No', '0', '0', '0', '', 'en'),
(169, 'OC', 'PW', '+680', 'Palau', 'palau', 'USD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:26:25', 'No', '0', '0', '0', '', 'en'),
(170, 'SA', 'PY', '+595', 'Paraguay', 'paraguay', 'PYG', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:26:38', 'No', '0', '0', '0', '', 'en'),
(171, 'AS', 'QA', '+974', 'Qatar', 'qatar', 'QAR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:26:55', 'No', '0', '0', '0', '', 'en'),
(172, 'AF', 'RE', '+262', 'Reunion', 'reunion', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:27:12', 'No', '0', '0', '0', '', 'en'),
(173, 'EU', 'RO', '+40', 'Romania', 'romania', 'RON', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:27:23', 'No', '0', '0', '0', '', 'en'),
(174, '', 'RS', '+381', 'Serbia', 'serbia', 'RSD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:27:37', 'No', '0', '0', '0', '', 'en'),
(175, '', 'RU', '+7', 'Russia', 'russia', 'RUB', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:27:54', 'No', '0', '0', '0', '', 'en'),
(176, 'AF', 'RW', '+250', 'Rwanda', 'rwanda', 'RWF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:28:06', 'No', '0', '0', '0', '', 'en'),
(177, 'AS', 'SA', '+966', 'Saudi Arabia', 'saudi-arabia', 'SAR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:28:20', 'No', '0', '0', '0', '', 'en'),
(178, 'OC', 'SB', '+677', 'Solomon Islands', 'solomon-islands', 'SBD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:28:38', 'No', '0', '0', '0', '', 'en'),
(179, 'AF', 'SC', '+248 ', 'Seychelles', 'seychelles', 'SCR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:30:16', 'No', '0', '0', '0', '', 'en'),
(180, 'AF', 'SD', '+249', 'Sudan', 'sudan', 'SDG', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:30:30', 'No', '0', '0', '0', '', 'en'),
(181, 'EU', 'SE', '+46 ', 'Sweden', 'sweden', 'SEK', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:31:07', 'No', '0', '0', '0', '', 'en'),
(182, 'AS', 'SG', '+65', 'Singapore', 'singapore', 'SGD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:31:24', 'No', '0', '0', '0', '', 'en'),
(183, '', 'SH', '+290', 'Saint Helena', 'saint-helena', 'SHP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:31:36', 'No', '0', '0', '0', '', 'en'),
(184, 'EU', 'SI', '+386', 'Slovenia', 'slovenia', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:31:50', 'No', '0', '0', '0', '', 'en'),
(185, '', 'SJ', '+47', 'Svalbard And Jan Mayen', 'svalbard-and-jan-mayen', 'NOK', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:32:26', 'No', '0', '0', '0', '', 'en'),
(186, '', 'SK', '+421', 'Slovakia', 'slovakia', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:32:38', 'No', '0', '0', '0', '', 'en'),
(187, 'AF', 'SL', '+232', 'Sierra Leone', 'sierra-leone', 'SLL', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:32:52', 'No', '0', '0', '0', '', 'en'),
(188, 'EU', 'SM', '+378', 'San Marino', 'san-marino', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:33:13', 'No', '0', '0', '0', '', 'en'),
(189, 'AF', 'SN', '+221', 'Senegal', 'senegal', 'XOF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:33:27', 'No', '0', '0', '0', '', 'en'),
(190, 'AF', 'SO', '+252', 'Somalia', 'somalia', 'SOS', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:33:41', 'No', '0', '0', '0', '', 'en'),
(191, 'SA', 'SR', '+597', 'Suriname', 'suriname', 'SRD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:33:54', 'No', '0', '0', '0', '', 'en'),
(192, '', 'SS', '+211', 'South Sudan', 'south-sudan', 'SSP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:34:41', 'No', '0', '0', '0', '', 'en'),
(193, 'AF', 'ST', '+239', 'Sao Tome And Principe', 'sao-tome-and-principe', 'STD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:34:57', 'No', '0', '0', '0', '', 'en'),
(194, 'NA', 'SV', '+503', 'El Salvador', 'el-salvador', 'SVC', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:35:19', 'No', '0', '0', '0', '', 'en'),
(195, '', 'SY', '+963', 'Syria', 'syria', 'SYP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:35:43', 'No', '0', '0', '0', '', 'en'),
(196, 'AF', 'SZ', '+268', 'Swaziland', 'swaziland', 'SZL', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:36:03', 'No', '0', '0', '0', '', 'en'),
(197, 'AF', 'TD', '+235', 'Chad', 'chad', 'XAF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:37:02', 'No', '0', '0', '0', '', 'en'),
(198, 'AN', 'TF', '', 'French Southern Territories', 'french-southern-territories', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-08-26 02:24:29', 'No', '0', '0', '0', '', 'en'),
(199, 'AF', 'TG', '+228', 'Togo', 'togo', 'XOF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:40:14', 'No', '0', '0', '0', '', 'en'),
(200, 'AS', 'TH', '+66', 'Thailand', 'thailand', 'THB', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:40:38', 'No', '0', '0', '0', '', 'en'),
(201, 'AS', 'TJ', '+992', 'Tajikistan', 'tajikistan', 'TJS', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:40:53', 'No', '0', '0', '0', '', 'en'),
(202, 'OC', 'TK', '+690', 'Tokelau', 'tokelau', 'NZD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:41:07', 'No', '0', '0', '0', '', 'en'),
(203, 'OC', 'TL', '+670', 'East Timor', 'east-timor', 'USD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:41:19', 'No', '0', '0', '0', '', 'en'),
(204, 'AS', 'TM', '+993', 'Turkmenistan', 'turkmenistan', 'TMT', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:41:30', 'No', '0', '0', '0', '', 'en'),
(205, 'AF', 'TN', '+216', 'Tunisia', 'tunisia', 'TND', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:41:44', 'No', '0', '0', '0', '', 'en'),
(206, 'OC', 'TO', '+676', 'Tonga', 'tonga', 'TOP', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:42:00', 'No', '0', '0', '0', '', 'en'),
(207, 'AS', 'TR', '+90', 'Turkey', 'turkey', 'TRY', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:48:51', 'No', '0', '0', '0', '', 'en'),
(208, 'NA', 'TT', '+868\n', 'Trinidad And Tobago', 'trinidad-and-tobago', 'TTD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:49:41', 'No', '0', '0', '0', '', 'en'),
(209, 'OC', 'TV', '+688', 'Tuvalu', 'tuvalu', 'AUD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 11:49:56', 'No', '0', '0', '0', '', 'en'),
(210, 'AS', 'TW', '+886', 'Taiwan', 'taiwan', 'TWD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:17:11', 'No', '0', '0', '0', '', 'en'),
(211, '', 'TZ', '+255', 'Tanzania', 'tanzania', 'TZS', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:17:54', 'No', '0', '0', '0', '', 'en'),
(212, 'EU', 'UA', '+380', 'Ukraine', 'ukraine', 'UAH', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:18:07', 'No', '0', '0', '0', '', 'en'),
(213, 'AF', 'UG', '+256', 'Uganda', 'uganda', 'UGX', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:18:31', 'No', '0', '0', '0', '', 'en'),
(214, 'OC', 'UM', '+1', 'United States Minor Outlying Islands', 'united-states-minor-outlying-islands', 'USD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:20:23', 'No', '0', '0', '0', '', 'en'),
(215, 'NA', 'US', '+1', 'United States', 'united-states', 'USD', '0', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:20:51', 'No', '0', '0', '0', '', 'da'),
(216, 'SA', 'UY', '+598\n', 'Uruguay', 'uruguay', 'UYU', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:21:11', 'No', '0', '0', '0', '', 'en'),
(217, 'AS', 'UZ', '+998', 'Uzbekistan', 'uzbekistan', 'UZS', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:21:22', 'No', '0', '0', '0', '', 'en'),
(218, 'NA', 'VC', '+1 784 ', 'Saint Vincent And The Grenadines', 'saint-vincent-and-the-grenadines', 'XCD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:21:38', 'No', '0', '0', '0', '', 'en'),
(219, 'SA', 'VE', '+58', 'Venezuela', 'venezuela', 'VEF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:21:53', 'No', '0', '0', '0', '', 'en'),
(220, '', 'VI', '+1 340', 'U.S. Virgin Islands', 'u.s.-virgin-islands', 'USD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:22:21', 'No', '0', '0', '0', '', 'en'),
(221, '', 'VN', '+84', 'Vietnam', 'vietnam', 'VND', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:22:37', 'No', '0', '0', '0', '', 'en'),
(222, 'OC', 'VU', '+678', 'Vanuatu', 'vanuatu', 'VUV', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:22:47', 'No', '0', '0', '0', '', 'en'),
(223, '', 'WF', '+681 ', 'Wallis And Futuna', 'wallis-and-futuna', 'XPF', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:23:12', 'No', '0', '0', '0', '', 'en'),
(224, 'OC', 'WS', '+685', 'Samoa', 'samoa', 'WST', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:23:28', 'No', '0', '0', '0', '', 'en'),
(225, '', 'XK', '+381', 'Kosovo', 'kosovo', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:23:43', 'No', '0', '0', '0', '', 'en'),
(226, 'AS', 'YE', '+967', 'Yemen', 'yemen', 'YER', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:23:55', 'No', '0', '0', '0', '', 'en'),
(227, 'AF', 'YT', '+262', 'Mayotte', 'mayotte', 'EUR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:24:08', 'No', '0', '0', '0', '', 'en'),
(228, 'AF', 'ZA', '+27', 'South Africa', 'south-africa', 'ZAR', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:24:19', 'No', '0', '0', '0', '', 'en'),
(229, 'AF', 'ZM', '+260', 'Zambia', 'zambia', 'ZMW', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:24:39', 'No', '0', '0', '0', '', 'en'),
(230, 'AF', 'ZW', '+263', 'Zimbabwe', 'zimbabwe', 'ZWD', '', '0.00', '0.00', '', '', '', '', 'Active', '2014-12-13 12:24:56', 'No', '0', '0', '0', '', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `fc_currency`
--

CREATE TABLE IF NOT EXISTS `fc_currency` (
`id` int(12) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `currency_symbols` text NOT NULL,
  `currency_rate` float(10,3) NOT NULL,
  `currency_type` varchar(50) NOT NULL,
  `default_currency` enum('Yes','No') NOT NULL DEFAULT 'No',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive',
  `to_id` int(10) NOT NULL,
  `lang` varchar(10) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_currency`
--

INSERT INTO `fc_currency` (`id`, `country_name`, `currency_symbols`, `currency_rate`, `currency_type`, `default_currency`, `status`, `to_id`, `lang`) VALUES
(1, 'india', 'INR', 65.000, 'INR', 'No', 'Inactive', 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `fc_host_request`
--

CREATE TABLE IF NOT EXISTS `fc_host_request` (
`id` int(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `listspace` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_host_request`
--

INSERT INTO `fc_host_request` (`id`, `name`, `email`, `phone`, `listspace`, `description`, `image`, `created`) VALUES
(6, 'eswara', 'er.prabu007@gmail.com', '132456789', '3', 'sadasda asd s das das da sda sda sd asd asd as das  asd', '{"image_0":"04883473271487b8d1edf90811514263.jpg","image_1":"fabf463a5e29533ce3c3c71649188c1a.jpg","image_2":"3b3e1eb103d78d9146caba40574c8b94.jpg"}', '2018-03-30 13:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `fc_inbox`
--

CREATE TABLE IF NOT EXISTS `fc_inbox` (
`id` int(11) NOT NULL,
  `booking_no` text NOT NULL,
  `property_id` int(11) NOT NULL,
  `sender_id` varchar(10) NOT NULL,
  `receiver_id` varchar(10) NOT NULL,
  `subject` text NOT NULL,
  `message` longblob NOT NULL,
  `read_status` enum('Yes','No') NOT NULL DEFAULT 'No',
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_inbox`
--

INSERT INTO `fc_inbox` (`id`, `booking_no`, `property_id`, `sender_id`, `receiver_id`, `subject`, `message`, `read_status`, `dateAdded`) VALUES
(1, 'GN1522920270', 1, '1', 'A1', 'Booking Request - GN1522920270', 0x426f6f6b696e672052657175657374, 'Yes', '2018-04-05 09:24:30'),
(2, 'GN1522920270', 1, 'A1', '1', 'Booking Request - GN1522920270', 0x6869, 'Yes', '2018-04-05 12:35:20'),
(3, 'GN1522920270', 1, 'A1', '1', 'Booking Request - GN1522920270', 0x627965, 'Yes', '2018-04-05 12:35:27'),
(4, 'GN1522920270', 1, 'A1', '1', 'Booking Request - GN1522920270', 0x6572797274797274, 'Yes', '2018-04-05 13:06:59'),
(5, 'GN1522920270', 1, 'A1', '1', 'Booking Request - GN1522920270', 0x74657374, 'Yes', '2018-04-05 13:08:48'),
(6, 'GN1522920270', 1, 'A1', '1', 'Booking Request - GN1522920270', 0x746573743120, 'Yes', '2018-04-05 14:13:10'),
(7, 'GN1522920270', 1, '1', 'A1', 'Booking Request - GN1522920270', 0x4869, 'Yes', '2018-04-05 14:56:07'),
(8, 'GN1522920270', 1, 'A1', '1', 'Booking Request - GN1522920270', 0x68656c6c6f, 'Yes', '2018-04-05 14:58:01'),
(9, 'GN1522920270', 1, '1', 'A1', 'Booking Request - GN1522920270', 0x6e6f7468696e67, 'Yes', '2018-04-05 14:58:12'),
(10, 'GN1522920270', 1, 'A1', '1', 'Booking Request - GN1522920270', 0x68656c6c6f, 'Yes', '2018-04-09 05:09:54'),
(11, 'GN1522920270', 1, 'A1', '1', 'Booking Request - GN1522920270', 0x686169, 'Yes', '2018-04-09 05:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `fc_language`
--

CREATE TABLE IF NOT EXISTS `fc_language` (
`id` int(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lang_code` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `default_lang` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_language`
--

INSERT INTO `fc_language` (`id`, `name`, `lang_code`, `status`, `default_lang`) VALUES
(1, 'english', 'en', 'Active', ''),
(3, 'german', 'gr', 'Inactive', 'Default'),
(5, 'french', 'fr', 'Inactive', ''),
(6, 'english', '', 'Active', '');

-- --------------------------------------------------------

--
-- Table structure for table `fc_language_known`
--

CREATE TABLE IF NOT EXISTS `fc_language_known` (
`id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `to_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_language_known`
--

INSERT INTO `fc_language_known` (`id`, `name`, `to_id`) VALUES
(1, 'french', 1),
(2, 'english', 2),
(3, 'telgu', 3),
(4, 'malayalam', 4),
(5, 'karnataka', 5),
(7, 'english', 7),
(8, 'telgu', 8);

-- --------------------------------------------------------

--
-- Table structure for table `fc_listspace`
--

CREATE TABLE IF NOT EXISTS `fc_listspace` (
`id` int(11) NOT NULL,
  `name` text NOT NULL,
  `seo_url` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lang` varchar(4) NOT NULL DEFAULT 'en',
  `to_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_listspace`
--

INSERT INTO `fc_listspace` (`id`, `name`, `seo_url`, `status`, `date_added`, `lang`, `to_id`) VALUES
(1, 'Property Type', 'property-type', 'Active', '2018-03-23 10:46:26', 'en', 1),
(2, 'Room Type', 'room-type', 'Active', '2018-03-23 10:46:42', 'en', 2);

-- --------------------------------------------------------

--
-- Table structure for table `fc_listspace_values`
--

CREATE TABLE IF NOT EXISTS `fc_listspace_values` (
`id` int(11) NOT NULL,
  `name` text NOT NULL,
  `seo_url` text NOT NULL,
  `listspace_id` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lang` varchar(4) NOT NULL DEFAULT 'en',
  `to_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_listspace_values`
--

INSERT INTO `fc_listspace_values` (`id`, `name`, `seo_url`, `listspace_id`, `status`, `date_added`, `lang`, `to_id`) VALUES
(1, 'Appartments', 'appartment', 1, 'Active', '2018-03-23 13:03:58', 'en', 1),
(2, 'Appartment', 'appartments', 1, 'Active', '2018-03-23 13:09:30', 'en', 2),
(3, 'Villa', 'villa', 1, 'Active', '2018-03-23 13:27:59', 'en', 3),
(4, 'Deluxe Room', 'deluxe-room', 2, 'Active', '2018-03-26 08:13:35', 'en', 4);

-- --------------------------------------------------------

--
-- Table structure for table `fc_members`
--

CREATE TABLE IF NOT EXISTS `fc_members` (
`id` int(11) NOT NULL,
  `user_type` enum('Host','Guest','Others') NOT NULL DEFAULT 'Others',
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `gender` enum('Unspecified','Male','Female') NOT NULL DEFAULT 'Unspecified',
  `dob` datetime NOT NULL,
  `about_you` longblob NOT NULL,
  `profile_image` varchar(255) NOT NULL DEFAULT 'default_profile.jpg',
  `password` text NOT NULL,
  `email` text NOT NULL,
  `email_verified` enum('Yes','No') NOT NULL DEFAULT 'No',
  `phone_number` bigint(20) NOT NULL,
  `phone_verified` enum('Yes','No') NOT NULL DEFAULT 'No',
  `address` text NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL,
  `last_login_date` datetime NOT NULL,
  `last_logout_date` datetime NOT NULL,
  `last_login_ip` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive',
  `deleted_status` enum('Yes','No') NOT NULL DEFAULT 'No',
  `loginUserType` enum('google','facebook','normal','') NOT NULL DEFAULT 'normal',
  `timezone` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `mobile_verification_code` varchar(50) NOT NULL,
  `mobile_code` varchar(50) NOT NULL,
  `country_code` varchar(50) NOT NULL,
  `facebook` text NOT NULL,
  `google` text NOT NULL,
  `linkedin` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_members`
--

INSERT INTO `fc_members` (`id`, `user_type`, `firstname`, `lastname`, `gender`, `dob`, `about_you`, `profile_image`, `password`, `email`, `email_verified`, `phone_number`, `phone_verified`, `address`, `created`, `modified`, `last_login_date`, `last_logout_date`, `last_login_ip`, `status`, `deleted_status`, `loginUserType`, `timezone`, `language`, `mobile_verification_code`, `mobile_code`, `country_code`, `facebook`, `google`, `linkedin`) VALUES
(1, 'Guest', 'saravana', 'kumar', '', '1992-02-03 00:00:00', 0x4e69636520746f20736565, '2016-Ford-Mustang-GT-burnout-red-tire-smoke2.jpg', 'e10adc3949ba59abbe56e057f20f883e', 'saravanakumar@casperon.in', 'No', 7418809103, 'No', '', '2018-02-14 21:07:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', 'No', 'normal', 'Africa/Abidjan', '', '', '', '', '', '', ''),
(2, 'Guest', 'prabhu', 'renters', 'Male', '1991-05-10 00:00:00', 0x546869732069732072656e7465727320507261626875, 'Desert.jpg', 'e10adc3949ba59abbe56e057f20f883e', 'aatheeswaraprabhu@casperon.in', 'No', 7418529630, 'No', '', '2018-03-23 12:51:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', 'No', 'normal', '', '', '', '', '', '', '', ''),
(3, 'Guest', 'bhuvi', 'g', 'Female', '1995-06-09 00:00:00', '', 'default_profile.jpg', '123456', 'bhuvitestacc@gmail.com', 'No', 7358414071, 'No', 'test', '2018-02-07 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', 'No', 'normal', '', '', '', '', '', '', '', ''),
(6, 'Guest', 'karpagam', 'r', 'Female', '2000-03-01 00:00:00', 0x74657374, 'feat-list3.png', '87b182db885f91bccd23f70c3385dde2', 'karpagam.r@casperon.in', 'No', 4545, 'No', '', '2018-03-27 15:18:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', 'No', 'normal', '', '', '', '', '', '', '', ''),
(7, 'Guest', 'poovizhi', 'G', 'Female', '2000-03-02 00:00:00', 0x74657374, 'default_profile.jpg', '87b182db885f91bccd23f70c3385dde2', 'poovizhibhuvana@gmail.com', 'No', 7358414071, 'No', '', '2018-03-27 16:56:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', 'No', 'normal', '', '', '', '', '', '', '', ''),
(8, 'Others', 'prabhu', 'M', 'Unspecified', '0000-00-00 00:00:00', '', 'default_profile.jpg', 'd41d8cd98f00b204e9800998ecf8427e', 'aathees1234@gmail.com', 'No', 0, 'No', '', '2018-03-30 19:41:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', 'No', 'normal', '', '', '', '', '', '', '', ''),
(9, 'Others', 'asda', 'asd', 'Unspecified', '0000-00-00 00:00:00', '', 'default_profile.jpg', 'd41d8cd98f00b204e9800998ecf8427e', 'asdas@gmail.com', 'No', 0, 'No', '', '2018-03-30 19:54:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', 'No', 'normal', '', '', '', '', '', '', '', ''),
(10, 'Others', 'Prabhu', 'M', 'Unspecified', '0000-00-00 00:00:00', '', 'default_profile.jpg', 'd41d8cd98f00b204e9800998ecf8427e', 'asdasaaa@gmail.com', 'No', 0, 'No', '', '2018-03-30 19:56:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Inactive', 'No', 'normal', '', '', '', '', '', '', '', ''),
(11, 'Others', 'Prabhu', 'M', '', '2018-03-21 00:00:00', '', 'default_profile.jpg', 'd41d8cd98f00b204e9800998ecf8427e', 'aatheeswaraprabhu@casperon.in', 'No', 8428483188, 'No', 'Madurai', '2018-04-02 13:43:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Inactive', 'No', 'normal', 'Antarctica/Davis', '1,2,3,4', '109048', '+86', 'CN', '', '', ''),
(12, 'Others', 'Prabhu', 'M', 'Male', '2018-04-17 00:00:00', 0x6173646173, 'default_profile.jpg', 'd41d8cd98f00b204e9800998ecf8427e', 'hostsite123@gmail.com', 'No', 8428483188, 'No', '', '2018-04-03 09:46:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Inactive', 'No', 'normal', 'Africa/Abidjan', '3,4,5,7,8', '477722', '+91', 'ES', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `fc_partners`
--

CREATE TABLE IF NOT EXISTS `fc_partners` (
`id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive',
  `lang` varchar(5) NOT NULL DEFAULT 'en',
  `to_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_partners`
--

INSERT INTO `fc_partners` (`id`, `name`, `image`, `status`, `lang`, `to_id`) VALUES
(1, 'agodaa', '15223922151.png', 'Inactive', 'en', 1),
(2, 'Booking.com', '15223930062.png', 'Inactive', 'en', 2),
(3, 'Airbnb', '15223930304.png', 'Active', 'en', 3),
(4, 'Make My Trip', '15223930755.png', 'Active', 'en', 4);

-- --------------------------------------------------------

--
-- Table structure for table `fc_prefooter`
--

CREATE TABLE IF NOT EXISTS `fc_prefooter` (
`id` int(12) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(150) NOT NULL,
  `to_id` int(10) NOT NULL,
  `lang` varchar(10) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_prefooter`
--

INSERT INTO `fc_prefooter` (`id`, `title`, `description`, `image`, `to_id`, `lang`) VALUES
(1, 'Our Standards', 'All properties acquired through Yoho Bed are submitted to a meticulous vetting process. These acquisitions are aligned with our guarantee thereby ensuring that we stay at the property before you do.', '1522324064standard.png', 1, 'en'),
(2, 'Our guarantee', 'All properties acquired through Yoho Bed are submitted to a meticulous vetting process. These acquisitions are aligned with our guarantee thereby ensuring that we stay at the property before you go.', '1522324081medal.png', 2, 'en'),
(3, 'Our service', 'All properties acquired through Yoho Bed are submitted to a meticulous vetting process. These acquisitions are aligned with our guarantee thereby ensuring that we stay at the property before you to.', '1522324097customer-service.png', 3, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `fc_properties`
--

CREATE TABLE IF NOT EXISTS `fc_properties` (
`id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `property_type` int(11) NOT NULL,
  `room_type` int(11) NOT NULL,
  `property_name` text NOT NULL,
  `seo_url` text NOT NULL,
  `property_description` text NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `c_price` decimal(12,2) NOT NULL,
  `currency_type` varchar(7) NOT NULL DEFAULT 'USD',
  `full_address` text NOT NULL,
  `address` text NOT NULL,
  `latitude` decimal(20,17) NOT NULL,
  `longitude` decimal(20,17) NOT NULL,
  `banner_photos` varchar(255) NOT NULL DEFAULT 'dummyImage.jpg',
  `property_rules` longblob NOT NULL,
  `cancellation_policy` text NOT NULL,
  `status` enum('Active','Inactive','Pending') NOT NULL DEFAULT 'Inactive',
  `date_added` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `trending_status` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_properties`
--

INSERT INTO `fc_properties` (`id`, `owner_id`, `property_type`, `room_type`, `property_name`, `seo_url`, `property_description`, `price`, `c_price`, `currency_type`, `full_address`, `address`, `latitude`, `longitude`, `banner_photos`, `property_rules`, `cancellation_policy`, `status`, `date_added`, `trending_status`) VALUES
(1, 2, 2, 4, 'First Property', 'first-property-1522652035', 'First Property Description asdas a d asdasd d asda sdasda sdasreer  klkl klklklkl klkl klklkkl lkldas f daasd d asd  sd ad as asd as das d asd as das d First Property Description asdas a d asdasd d asda sdasda sdasreer  klkl klklklkl klkl klklkkl lkldas f daasd d asd  sd ad as asd as das d asd as das dFirst Property Description asdas a d asdasd d asda sdasda sdasreer  klkl klklklkl klkl klklkkl lkldas f daasd d asd  sd ad as asd as das d asd as das d First Property Description asdas a d asdasd d asda sdasda sdasreer  klkl klklklkl klkl klklkkl lkldas f daasd d asd  sd ad as asd as das d asd as das d First Property Description asdas a d asdasd d asda sdasda sdasreer  klkl klklklkl klkl klklkkl lkldas f daasd d asd  sd ad as asd as das d asd as das d First Property Description asdas a d asdasd d asda sdasda sdasreer  klkl klklklkl klkl klklkkl lkldas f daasd d asd  sd ad as asd as das d asd as das d', '100.00', '0.00', 'USD', 'Bazzar St, Adikesavarpuram, Chintadripet, Chennai, Tamil Nadu 600002, India', '{"country":"India","state":"Tamil Nadu","latitude":"13.0787924","longitude":"80.2695976","city":"Chennai","zipcode":"600002"}', '13.07879240000000000', '80.26959760000000000', 'Koala1.jpg', 0x46697273742050726f70657274792052756c6573, 'First Property Cancellation Policy', 'Active', '2018-03-26 10:15:02', 'Yes'),
(3, 1, 2, 4, 'Test2', 'test2-1522824812', '<p>test</p>', '1000.00', '0.00', 'USD', 'Link Rd, Anna Salai, Triplicane, Chennai, Tamil Nadu 600002, India', '{"country":"India","state":"Tamil Nadu","latitude":"13.0664007","longitude":"80.2647452","city":"Chennai","zipcode":"600002"}', '13.06640070000000000', '80.26474520000000000', 'Koala.jpg', 0x3c703e3c656d3e3c7374726f6e673e74657374713c2f7374726f6e673e3c2f656d3e3c2f703e, '<p>test</p>', 'Active', '2018-03-26 14:21:35', 'Yes'),
(5, 1, 2, 4, 'New Deluxe Double Room', 'new-deluxe-double-room-1523276363', '<p>This is New Deluxe Double Room</p>', '500.00', '0.00', 'USD', '', '', '0.00000000000000000', '0.00000000000000000', 'Tulips.jpg', 0x3c703e54686973206973204e65772044656c75786520446f75626c6520526f6f6d2052756c65733c2f703e, '<p>This is New Deluxe Double Room Cancellation policy</p>', 'Inactive', '2018-04-09 12:19:23', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `fc_properties_image`
--

CREATE TABLE IF NOT EXISTS `fc_properties_image` (
`id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_properties_image`
--

INSERT INTO `fc_properties_image` (`id`, `property_id`, `name`, `order`) VALUES
(1, 1, '1522134885-2016-ford-mustang-gt-burnout-red-tire-smoke-1522134885.jpg', 0),
(2, 1, '1522134886-2016-mazda-cx-3-100509409-h-1522134886.jpg', 0),
(3, 1, '1522134889-tulips-1522134889.jpg', 0),
(4, 3, '1522135245-chrysanthemum-1522135245.jpg', 0),
(6, 3, '1522135249-hydrangeas-1522135249.jpg', 0),
(7, 3, '1522135250-jellyfish-1522135250.jpg', 0),
(8, 3, '1522135251-koala-1522135251.jpg', 0),
(9, 3, '1522135253-lighthouse-1522135253.jpg', 0),
(10, 3, '1522135254-penguins-1522135254.jpg', 0),
(12, 3, '1522384846-jellyfish-1522384846.jpg', 0),
(13, 3, '1522384848-koala-1522384848.jpg', 0),
(14, 3, '1522384850-lighthouse-1522384850.jpg', 0),
(15, 3, '1522384851-penguins-1522384851.jpg', 0),
(16, 5, '1523276386-desert-1523276386.jpg', 0),
(17, 5, '1523276388-hydrangeas-1523276388.jpg', 0),
(18, 5, '1523276389-lighthouse-1523276389.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fc_property_request`
--

CREATE TABLE IF NOT EXISTS `fc_property_request` (
`id` int(11) NOT NULL,
  `booking_no` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `dateAdded` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_property_request`
--

INSERT INTO `fc_property_request` (`id`, `booking_no`, `user_id`, `property_id`, `dateAdded`) VALUES
(1, 'GN1522920270', 1, 1, '2018-04-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `fc_slider`
--

CREATE TABLE IF NOT EXISTS `fc_slider` (
`id` int(12) NOT NULL,
  `name` text NOT NULL,
  `image` varchar(150) NOT NULL,
  `status` enum('active','inactive','','') NOT NULL,
  `lang` varchar(10) NOT NULL DEFAULT 'en',
  `to_id` int(12) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_slider`
--

INSERT INTO `fc_slider` (`id`, `name`, `image`, `status`, `lang`, `to_id`) VALUES
(8, 'Discover', '1522302225Koala.jpg', 'active', 'en', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fc_admin`
--
ALTER TABLE `fc_admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_admin_settings`
--
ALTER TABLE `fc_admin_settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_city`
--
ALTER TABLE `fc_city`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_cms`
--
ALTER TABLE `fc_cms`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_country`
--
ALTER TABLE `fc_country`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_currency`
--
ALTER TABLE `fc_currency`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_host_request`
--
ALTER TABLE `fc_host_request`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_inbox`
--
ALTER TABLE `fc_inbox`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_language`
--
ALTER TABLE `fc_language`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_language_known`
--
ALTER TABLE `fc_language_known`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_listspace`
--
ALTER TABLE `fc_listspace`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_listspace_values`
--
ALTER TABLE `fc_listspace_values`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_members`
--
ALTER TABLE `fc_members`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_partners`
--
ALTER TABLE `fc_partners`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_prefooter`
--
ALTER TABLE `fc_prefooter`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_properties`
--
ALTER TABLE `fc_properties`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_properties_image`
--
ALTER TABLE `fc_properties_image`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_property_request`
--
ALTER TABLE `fc_property_request`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_slider`
--
ALTER TABLE `fc_slider`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fc_admin`
--
ALTER TABLE `fc_admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fc_admin_settings`
--
ALTER TABLE `fc_admin_settings`
MODIFY `id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fc_city`
--
ALTER TABLE `fc_city`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `fc_cms`
--
ALTER TABLE `fc_cms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `fc_country`
--
ALTER TABLE `fc_country`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=232;
--
-- AUTO_INCREMENT for table `fc_currency`
--
ALTER TABLE `fc_currency`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fc_host_request`
--
ALTER TABLE `fc_host_request`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `fc_inbox`
--
ALTER TABLE `fc_inbox`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `fc_language`
--
ALTER TABLE `fc_language`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `fc_language_known`
--
ALTER TABLE `fc_language_known`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `fc_listspace`
--
ALTER TABLE `fc_listspace`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fc_listspace_values`
--
ALTER TABLE `fc_listspace_values`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `fc_members`
--
ALTER TABLE `fc_members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `fc_partners`
--
ALTER TABLE `fc_partners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `fc_prefooter`
--
ALTER TABLE `fc_prefooter`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fc_properties`
--
ALTER TABLE `fc_properties`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `fc_properties_image`
--
ALTER TABLE `fc_properties_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `fc_property_request`
--
ALTER TABLE `fc_property_request`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fc_slider`
--
ALTER TABLE `fc_slider`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
