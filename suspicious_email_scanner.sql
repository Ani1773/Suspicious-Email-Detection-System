-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2020 at 04:39 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suspicious_email_scanner`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply_franchise`
--

CREATE TABLE `apply_franchise` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `investment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` bigint(20) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active , 2=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `apply_franchise`
--

INSERT INTO `apply_franchise` (`id`, `name`, `email`, `phone`, `state`, `city`, `model`, `investment`, `created`, `user_type`, `status`) VALUES
(2, 'sss', 's12@gmail.com', '48484', 'delhi', 'noida', 'FOFO', '50-1cr.', '', 1, 1),
(3, 'asfas', 'sa@gmail.com', '9923472383', 'jbskjds', 'jknsdkjs', 'FOFO', '25-50', '', 1, 1),
(4, 'ankur', 'anku@gmail.com', '9982820839', 'india', 'idnia', 'FOFO', '50-1cr.', '', 1, 1),
(5, 'ankur', 'anku@gmail.com', '9982820839', 'india', 'idnia', 'FOFO', '50-1cr.', '', 1, 1),
(6, 'ankur', 'anku@gmail.com', '9982820839', 'india', 'idnia', 'FOFO', '50-1cr.', '', 1, 1),
(7, 'ankur', 'anku@gmail.com', '9982820839', 'india', 'idnia', 'FOFO', '50-1cr.', '', 1, 1),
(9, 'AJAY', 'AJY@GMAIL.COM', '89838138', 'NLKASN', 'LKNSLK', 'FOFO', '25-50', '', 1, 1),
(10, 'vijay', 'vijay@gmail.com', '9915212522', 'dlehi', 'dlehi', 'FOFO', '10-25', '', 1, 1),
(11, 'gandhi', 'gandhi@gmail.com', '9915212525', 'tellgoala', 'uodare', 'FOFO', '10-25', '', 1, 1),
(12, 'ss sss', 'sunil@gmail.com', '9643610584', 'ssssssssss', 'ssssssssssssss', 'FOFO', '25-50', '1594064826', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `created` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `mobile`, `email`, `address`, `created`) VALUES
(1, '7017169609', 'admin@gmail.com', 'Noida Sec-63 E-blocks', '1594234622');

-- --------------------------------------------------------

--
-- Table structure for table `mail_to_users`
--

CREATE TABLE `mail_to_users` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `to` varchar(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail_to_users`
--

INSERT INTO `mail_to_users` (`id`, `users_id`, `to`, `from`, `subject`, `message`, `created`) VALUES
(1, 1, 'sunil@appsquadz.com', 'anil@appsquadz.com', 'This is testing Mail', 'This is your Future Mail.', 1597027707),
(2, 0, 'sunil@appsquadz.com', 'fdsz@gmail.com', 'ghnfg', 'dsafdsf', 1597027895),
(3, 0, 'sunil@appsquadz.com', 'anil@appsquadz.com', 'ghnfg', 'dcsaed', 1597286842),
(4, 0, 'an@gmail.com', 's@gmail.com', 'hi testing', 'dusgdfusfu', 1597294614),
(5, 0, 'an@gmail.com', 's@gmail.com', 'hello', 'how are u', 1597475874),
(6, 0, 'an@gmail.com', 's@gmail.com', 'hello', 'how are u?', 1597493455);

-- --------------------------------------------------------

--
-- Table structure for table `master_category`
--

CREATE TABLE `master_category` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1-normal,2-youtube',
  `created` bigint(20) NOT NULL,
  `modified` bigint(20) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-active,2-blocked,3-deleted'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_category`
--

INSERT INTO `master_category` (`id`, `image`, `title`, `type`, `created`, `modified`, `status`) VALUES
(1, '0', 'Kill ', 0, 1597285889, 1597286335, 1),
(2, '0', 'Murdered', 0, 1597286044, 0, 1),
(3, '0', 'Kidnap ', 0, 1597286067, 0, 1),
(4, '0', 'Rape', 0, 1597286079, 1597286314, 1),
(5, '0', 'Drugging', 0, 1597286093, 0, 1),
(6, '0', 'Drug', 0, 1597286115, 1597286301, 1),
(7, '0', 'Attack', 0, 1597286129, 1597286289, 1),
(8, '0', 'Stolen', 0, 1597286143, 1597286272, 1),
(9, '0', 'Bombering', 0, 1597286154, 1597286260, 1),
(10, '0', 'Terrist attack', 0, 1597286173, 0, 1),
(11, '0', 'Robbering', 0, 1597286188, 0, 1),
(12, '0', 'Anti-national-Forces', 0, 1597286246, 1597294696, 1),
(13, '0', 'Anti social', 0, 1597475756, 1597475783, 3),
(14, '0', 'Anti- social', 0, 1597493328, 1597493367, 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_video`
--

CREATE TABLE `master_video` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL,
  `modified` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active,2=blocked,3=deleted	'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_video`
--

INSERT INTO `master_video` (`id`, `icon`, `title`, `url`, `created`, `modified`, `status`) VALUES
(1, 'fa fa-music', 'Metro Mart - Your Local Grocer - ALWAYS has the Lowest Prices', '0Zomo__6n-o', '1594063693', '1594105178', 1),
(2, 'fa fa-music', 'Metro Mart - Metro Mart Business Model Case Study', 'HepukHflWcM', '1594105146', '1594105157', 1),
(3, 'fa fa-music', 'Metro Mart - 100% Cashback | Grocery Home Delivery App', 'V628N1lxTjg', '1594105202', '', 1),
(4, 'fa fa-music', 'Metro Mart - Buy Free Grocery on Your First Online Order', 'pu1IiGKEUig', '1594105231', '', 1),
(5, 'fa fa-music', 'Metro Mart - Get the Metro app - All Your fav Cooking Oils are here', '90wQxV-51Jw', '1594105317', '', 1),
(6, 'fa fa-music', 'How to open Metro Mart Stores and earn in lacks', 'o32B11bw4TM', '1594105419', '1594105462', 1),
(7, 'fa fa-music', 'Metro Mart Kirana Shop Franchise | How to Start Metro Grocery Store Franchise | Metro Business Model', 'pvi5Pz3lhtk', '1594105489', '', 1),
(8, 'fa fa-music', 'Metro Mart - How to Start Metro Grocery Store Franchise | Metro Mart Case Study', 'C5XeyS-2DT0', '1594105612', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `request_for_buy`
--

CREATE TABLE `request_for_buy` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `sub_service_id` int(11) NOT NULL,
  `region` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `service_start_date` bigint(20) NOT NULL,
  `service_mode` int(11) NOT NULL COMMENT '1-online,2-customer place,3-other',
  `mode_description` text NOT NULL COMMENT '1-business,2-personal',
  `requirement_type` int(11) NOT NULL,
  `requirement_details` text NOT NULL,
  `created` bigint(20) NOT NULL,
  `modified` bigint(20) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-request,2-accepted,3-pending,4-rejected'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_for_buy`
--

INSERT INTO `request_for_buy` (`id`, `user_id`, `payment_id`, `sub_service_id`, `region`, `price`, `mobile`, `service_start_date`, `service_mode`, `mode_description`, `requirement_type`, `requirement_details`, `created`, `modified`, `status`) VALUES
(1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, '', 0, 0, 0),
(2, 7, 0, 1, '2', 1, 7404345345, 1554921000, 0, '', 1, 'I want to start a new business ', 1554451484, 1554451576, 2),
(3, 6, 0, 1, '2', 0, 9971531486, 1554402600, 0, '', 1, '\r\ntesting with fukllllllllflll', 1554456767, 1554458090, 4),
(4, 6, 0, 1, '2', 2, 9971531486, 1554402600, 0, '', 1, '\r\nhttp://prntscr.com/n7tpgb\r\nhttp://prntscr.com/n7tpgb\r\nhttp://prntscr.com/n7tpgb\r\nhttp://prntscr.com/n7tpgb\r\nhttp://prntscr.com/n7tpgb', 1554456847, 1554457150, 2),
(5, 6, 0, 1, '2', 0, 9971531486, 1554402600, 0, '', 2, 'Testing Appsquadz', 1554457376, 0, 1),
(6, 6, 0, 2, '2', 1, 9971531486, 1554748200, 0, '', 2, 'testing', 1554457648, 1554457739, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `user_type` int(11) NOT NULL COMMENT '1-users, 2-admin',
  `image` varchar(255) NOT NULL,
  `otp_verified` int(11) NOT NULL COMMENT '2-no, 1-yes',
  `last_active` bigint(20) NOT NULL,
  `create_date` bigint(20) NOT NULL,
  `modified` varchar(255) NOT NULL,
  `modify_date` bigint(20) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-active, 2-blocked, 3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_name`, `profile_image`, `user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `dob`, `gender`, `address`, `user_type`, `image`, `otp_verified`, `last_active`, `create_date`, `modified`, `modify_date`, `status`) VALUES
(1, 'Admin', 'Admin', '', '', '', '', 'admin@gmail.com', '25d55ad283aa400af464c76d713c07ad', '9643618888', '', '', '', 2, '', 0, 0, 0, '', 0, 1),
(11, 'Bhanu', '', '', '1760409762', 'Bhanu', 'Gaund', 'sunil@appsquadz.com', '25d55ad283aa400af464c76d713c07ad', '9643610584', '2020-08-13', '0', 'Noida', 2, '', 0, 0, 0, '1597287496', 0, 1),
(12, 'Sonu', '', '', '173016722', 'Sonu', 'gupta', 'sk@appsquadz.com', '25d55ad283aa400af464c76d713c07ad', '9643610584', '2020-08-19', '1', 'Noida', 2, '', 0, 0, 0, '1597282488', 0, 1),
(13, 'Anuddin', '', '', '1508639186', 'Anuddin', 'Ahamad', 'ainuddina94@gmail.com', '25d55ad283aa400af464c76d713c07ad', '9787878788', '2020-08-19', '0', 'Noida', 2, '', 0, 0, 0, '1597294570', 0, 1),
(14, 'dheeraj', '', '', '471493744', 'dheeraj', 'pal', 'acr@gmail.com', '25d55ad283aa400af464c76d713c07ad', '6578432091', '2020-08-15', '0', '', 2, '', 0, 0, 0, '1597493917', 0, 1),
(15, 'dheeraj', '', '', '169883463', 'dheeraj', 'pal', 'zxc@gmail.com', '25d55ad283aa400af464c76d713c07ad', '9787878788', '', '', '', 2, '', 0, 0, 0, '', 0, 1),
(16, 'dheeraj', '', '', '169883463', 'dheeraj', 'pal', 'zxc@gmail.com', '25d55ad283aa400af464c76d713c07ad', '9787878788', '', '', '', 2, '', 0, 0, 0, '', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply_franchise`
--
ALTER TABLE `apply_franchise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_to_users`
--
ALTER TABLE `mail_to_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_category`
--
ALTER TABLE `master_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_video`
--
ALTER TABLE `master_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_for_buy`
--
ALTER TABLE `request_for_buy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apply_franchise`
--
ALTER TABLE `apply_franchise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mail_to_users`
--
ALTER TABLE `mail_to_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master_category`
--
ALTER TABLE `master_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `master_video`
--
ALTER TABLE `master_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `request_for_buy`
--
ALTER TABLE `request_for_buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
