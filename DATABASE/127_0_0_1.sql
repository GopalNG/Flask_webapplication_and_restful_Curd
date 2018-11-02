-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2018 at 04:04 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cardsdb`
--
CREATE DATABASE IF NOT EXISTS `cardsdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cardsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `card_db`
--

CREATE TABLE `card_db` (
  `Post_id` int(20) NOT NULL,
  `Post_tittle` varchar(150) NOT NULL,
  `Post_desc` varchar(250) NOT NULL,
  `Post_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card_db`
--

INSERT INTO `card_db` (`Post_id`, `Post_tittle`, `Post_desc`, `Post_time`) VALUES
(1234, 'I am 8 th wonder of the world ', 'this the new top 8th wonder of the world , it is used to the new one which could be the new done.', '11:45'),
(1235, 'othe card title', 'discc', '11:55'),
(1236, 'other example tittle ', 'decsrr', '11:60'),
(1236, 'i am', 'the new on', '12:00'),
(1237, 'i have one more to show ', 'for eample ', '12:01');
--
-- Database: `ecomm`
--
CREATE DATABASE IF NOT EXISTS `ecomm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecomm`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'DELL'),
(3, 'LG'),
(4, 'Samsung'),
(5, 'Sony'),
(6, 'Toshiba');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Laptops'),
(2, 'Cameras'),
(3, 'Mobiles'),
(4, 'Computers'),
(5, 'Ipads'),
(6, 'Iphones');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` varchar(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(250) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, '1', 1, 'hp_laptop', 25000, '<p>llllllllll&nbsp; &nbsp;mmmmmmmmmmmmm</p>', 'Capture_ggk_toi.PNG', 'lllllllllll llllllll'),
(2, '1', 1, 'y', 0, '<p>tesst</p>', 'Prog_langg_list_ranking.PNG', 'test'),
(3, '1', 1, 'hp_laptop', 400, '<p>this very very nice!</p>', 'Capture_ggk_toi.PNG', 'hp,new,laptop'),
(4, '1', 1, 'test_new', 99, '<p>jj</p>', 'Screenshot (1).png', 'nn'),
(5, '1', 1, 'hp_laptop_student_liked', 12000, '<p>yyyyyyy</p>', 'Hp_laptop.jpg', 'rrrrrrr'),
(6, '1', 1, '12_ty', 0, '<p>hghgh</p>', 'Capture.PNG', 'tt,tt,ee');

-- --------------------------------------------------------

--
-- Table structure for table `upload_img`
--

CREATE TABLE `upload_img` (
  `Img_id` int(10) NOT NULL,
  `Img_name` int(20) NOT NULL,
  `Img_path` int(20) NOT NULL,
  `Img_type` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `upload_img`
--
ALTER TABLE `upload_img`
  ADD PRIMARY KEY (`Img_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `upload_img`
--
ALTER TABLE `upload_img`
  MODIFY `Img_id` int(10) NOT NULL AUTO_INCREMENT;--
-- Database: `facebook`
--
CREATE DATABASE IF NOT EXISTS `facebook` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `facebook`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`Username`, `Password`) VALUES
('98d34c1758b15b5a359b69c2b08c5767', '98d34c1758b15b5a359b69c2b08c5767');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `feedback_txt` varchar(120) NOT NULL,
  `star` varchar(1) NOT NULL,
  `Date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `user_id`, `feedback_txt`, `star`, `Date`) VALUES
(2, 8, 'Thanks Rohan', '5', '30-9-2013 11:34');

-- --------------------------------------------------------

--
-- Table structure for table `group_chat`
--

CREATE TABLE `group_chat` (
  `chat_id` int(10) NOT NULL,
  `user_id` int(7) NOT NULL,
  `chat_txt` text NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_chat`
--

INSERT INTO `group_chat` (`chat_id`, `user_id`, `chat_txt`, `time`) VALUES
(1, 8, 'Hello Friends How are you ? ', '30-9-2013 11:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_cover_pic`
--

CREATE TABLE `user_cover_pic` (
  `cover_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_cover_pic`
--

INSERT INTO `user_cover_pic` (`cover_id`, `user_id`, `image`) VALUES
(7, 8, '999584_496501817111249_1587007043_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(7) NOT NULL,
  `job` varchar(100) NOT NULL,
  `school_or_collage` varchar(100) NOT NULL,
  `current_city` varchar(100) NOT NULL,
  `hometown` varchar(100) NOT NULL,
  `relationship_status` varchar(30) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `mobile_no_priority` varchar(10) NOT NULL,
  `website` varchar(100) NOT NULL,
  `Facebook_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `job`, `school_or_collage`, `current_city`, `hometown`, `relationship_status`, `mobile_no`, `mobile_no_priority`, `website`, `Facebook_ID`) VALUES
(8, '', 'vccm', 'Rajkot', 'Rajkot', 'Single', '7600898210', 'Public', 'www.wix.com/amitad1i4/amit', 'www.facebook.com/Amit.000002');

-- --------------------------------------------------------

--
-- Table structure for table `user_post`
--

CREATE TABLE `user_post` (
  `post_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `post_txt` text NOT NULL,
  `post_pic` varchar(150) NOT NULL,
  `post_time` varchar(30) NOT NULL,
  `priority` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_post`
--

INSERT INTO `user_post` (`post_id`, `user_id`, `post_txt`, `post_pic`, `post_time`, `priority`) VALUES
(46, 8, 'Join Faceback', '', '18-9-2013 22:10', 'Public');

-- --------------------------------------------------------

--
-- Table structure for table `user_post_comment`
--

CREATE TABLE `user_post_comment` (
  `comment_id` int(7) NOT NULL,
  `post_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_post_status`
--

CREATE TABLE `user_post_status` (
  `status_id` int(7) NOT NULL,
  `post_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_pic`
--

CREATE TABLE `user_profile_pic` (
  `profile_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile_pic`
--

INSERT INTO `user_profile_pic` (`profile_id`, `user_id`, `image`) VALUES
(6, 8, 'my.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_secret_quotes`
--

CREATE TABLE `user_secret_quotes` (
  `user_id` int(7) NOT NULL,
  `Question1` varchar(50) NOT NULL,
  `Answer1` varchar(20) NOT NULL,
  `Question2` varchar(50) NOT NULL,
  `Answer2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_secret_quotes`
--

INSERT INTO `user_secret_quotes` (`user_id`, `Question1`, `Answer1`, `Question2`, `Answer2`) VALUES
(8, 'what is the first name of your oldest nephew?', 'OneRaj', 'who is your all-time favorite movie character?', 'Amir Khan');

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `user_id` int(7) NOT NULL,
  `status` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_status`
--

INSERT INTO `user_status` (`user_id`, `status`) VALUES
(8, 'Offline');

-- --------------------------------------------------------

--
-- Table structure for table `user_warning`
--

CREATE TABLE `user_warning` (
  `user_id` int(7) NOT NULL,
  `warning_txt` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(7) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Birthday_Date` varchar(11) NOT NULL,
  `FB_Join_Date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `Name`, `Email`, `Password`, `Gender`, `Birthday_Date`, `FB_Join_Date`) VALUES
(8, 'Amit Dodiya', 'amit.ad1i4@yahoo.com', 'myfaceback', 'Male', '14-1-1994', '18-9-2013 22:10');

-- --------------------------------------------------------

--
-- Table structure for table `users_notice`
--

CREATE TABLE `users_notice` (
  `notice_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `notice_txt` varchar(120) NOT NULL,
  `notice_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `group_chat`
--
ALTER TABLE `group_chat`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_cover_pic`
--
ALTER TABLE `user_cover_pic`
  ADD PRIMARY KEY (`cover_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_post`
--
ALTER TABLE `user_post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_post_comment`
--
ALTER TABLE `user_post_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `user_post_status`
--
ALTER TABLE `user_post_status`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_profile_pic`
--
ALTER TABLE `user_profile_pic`
  ADD PRIMARY KEY (`profile_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_secret_quotes`
--
ALTER TABLE `user_secret_quotes`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_warning`
--
ALTER TABLE `user_warning`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_notice`
--
ALTER TABLE `users_notice`
  ADD PRIMARY KEY (`notice_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `group_chat`
--
ALTER TABLE `group_chat`
  MODIFY `chat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_cover_pic`
--
ALTER TABLE `user_cover_pic`
  MODIFY `cover_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_post`
--
ALTER TABLE `user_post`
  MODIFY `post_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `user_post_comment`
--
ALTER TABLE `user_post_comment`
  MODIFY `comment_id` int(7) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_post_status`
--
ALTER TABLE `user_post_status`
  MODIFY `status_id` int(7) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_profile_pic`
--
ALTER TABLE `user_profile_pic`
  MODIFY `profile_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users_notice`
--
ALTER TABLE `users_notice`
  MODIFY `notice_id` int(7) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `group_chat`
--
ALTER TABLE `group_chat`
  ADD CONSTRAINT `group_chat_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_cover_pic`
--
ALTER TABLE `user_cover_pic`
  ADD CONSTRAINT `user_cover_pic_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_info`
--
ALTER TABLE `user_info`
  ADD CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_post`
--
ALTER TABLE `user_post`
  ADD CONSTRAINT `user_post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_post_comment`
--
ALTER TABLE `user_post_comment`
  ADD CONSTRAINT `user_post_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_post_comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `user_post` (`post_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_post_status`
--
ALTER TABLE `user_post_status`
  ADD CONSTRAINT `user_post_status_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_post_status_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_post` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_profile_pic`
--
ALTER TABLE `user_profile_pic`
  ADD CONSTRAINT `user_profile_pic_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_secret_quotes`
--
ALTER TABLE `user_secret_quotes`
  ADD CONSTRAINT `user_secret_quotes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_status`
--
ALTER TABLE `user_status`
  ADD CONSTRAINT `user_status_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_status_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_warning`
--
ALTER TABLE `user_warning`
  ADD CONSTRAINT `user_warning_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `users_notice`
--
ALTER TABLE `users_notice`
  ADD CONSTRAINT `users_notice_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
--
-- Database: `mat_db`
--
CREATE DATABASE IF NOT EXISTS `mat_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mat_db`;

-- --------------------------------------------------------

--
-- Table structure for table `edu_dtlis`
--

CREATE TABLE `edu_dtlis` (
  `quali_ion` varchar(150) NOT NULL,
  `proffe` varchar(150) NOT NULL,
  `income` int(200) NOT NULL,
  `u_id` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edu_dtlis`
--

INSERT INTO `edu_dtlis` (`quali_ion`, `proffe`, `income`, `u_id`) VALUES
('b.tech', 'softengg', 1209, 0),
('B.Tech', 'sweg', 2000000, 1002000),
('B.Tech', 'ok', 1000000, 1002039),
('B.Tech', 'software engg', 450000, 1002040),
('B.Tech', 'ok', 1000000, 1002042),
('MS[maters of sciences]', 'software engg', 111, 1002049),
('MS[maters of sciences]', 'software engg', 111, 1002051),
('MS[maters of sciences]', 'software engg', 111, 1002053),
('Degree', 'software engg', 111, 1002054),
('Degree', 'software engg', 111, 1002055),
('Degree', 'software engg', 111, 1002056),
('MS[maters of sciences]', 'software engg', 111, 1002081),
('MS[maters of sciences]', 'software engg', 111, 1002086),
('B.Technology', 'SoftwareDeveloper', 700000, 1002091),
('B.Tech', 'software engg', 0, 1002095),
('B.Tech', 'software engg', 2000000, 1002098),
('B.Tech', 'software engg', 1200000, 1002100),
('B.Tech', 'software engg', 780000, 1002102),
('MS[maters of sciences]', 'software engg', 111, 1002103),
('B.Tech', 'Software', 1200000, 1002104),
('B.Tech', 'Software', 700000, 1002105),
('B.Tech', 'Software', 700000, 1002106),
('B.Tech', 'Software', 700000, 1002107),
('B.Tech', 'Software', 700000, 1002111),
('B.Tech', 'Software', 700000, 1002113),
('B.Tech', 'Software', 700000, 1002115),
('B.Tech', 'Software', 700000, 1002116),
('B.Tech', 'Software', 700000, 1002117),
('B.Tech', 'Software', 700000, 1002119),
('B.Tech', 'Software', 700000, 1002123),
('B.Tech', 'Software', 700000, 1002124),
('B.Tech', 'Software', 700000, 1002125),
('Ms(Master of sciences)', 'Software enggineer', 6000000, 1002127),
('Ms(Master of sciences)', 'Software enggineer', 6000000, 1002129),
('Ms(Master of sciences)', 'Software enggineer', 6000000, 1002131),
('Ms(Master of sciences)', 'Software enggineer', 6000000, 1002132),
('Ms(Master of sciences)', 'Software enggineer', 6000000, 1002135),
('B.Tech', 'Software', 700000, 1002136),
('B.Tech', 'Software enggineer', 900000, 1002137),
('B.Tech', 'Software enggineer', 900000, 1002138),
('Ms(Master of sciences)', 'Software', 1230000, 1002141),
('Ms(Master of sciences)', 'Software', 1230000, 1002143),
('Ms(Master of sciences)', 'Software', 1230000, 1002144),
('Ms(Master of sciences)', 'Software', 1230000, 1002145),
('Ms(Master of sciences)', 'Software', 1230000, 1002147),
('Ms(Master of sciences)', 'Software', 1230000, 1002148),
('Ms(Master of sciences)', 'Software', 1230000, 1002150),
('Ms(Master of sciences)', 'Software', 1230000, 1002151),
('B.Tech', 'Software', 450000, 1002152);

-- --------------------------------------------------------

--
-- Table structure for table `fay_dtlis`
--

CREATE TABLE `fay_dtlis` (
  `fther_name` varchar(200) NOT NULL,
  `mther_name` varchar(200) NOT NULL,
  `bro_num` smallint(30) NOT NULL,
  `sis_num` smallint(30) NOT NULL,
  `add_s` varchar(200) NOT NULL,
  `ph_ne` int(75) NOT NULL,
  `mol_num` int(75) NOT NULL,
  `u_id` int(50) NOT NULL,
  `mail_id` varchar(200) NOT NULL,
  `moreaboutu` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fay_dtlis`
--

INSERT INTO `fay_dtlis` (`fther_name`, `mther_name`, `bro_num`, `sis_num`, `add_s`, `ph_ne`, `mol_num`, `u_id`, `mail_id`, `moreaboutu`) VALUES
('sri', 'sri', 1, 1, 'hyderabad', 987654321, 1234, 0, 'n@mail.com', 'Paragraphs are commonly numbered using the decimal system, where (in books) the integral part of the decimal represents the number of the chapter and the fractional parts are arranged in each chapter in order of magnitude. Thus in Whittaker and Watson\'s 1'),
('k', 'n', 0, 1, 'delhi', 2147483647, 2147483647, 1002000, 'a@mail.com', ''),
('NKR', 'NNL', 0, 1, 'Kodad', 2147483647, 2147483647, 1002039, 'nagubandigopal@gmail.com', ''),
('sriniu', 'srimunu', 1, 1, 'flatno:103,durva apartments,roadno:10,kothapet', 2147483647, 2147483647, 1002040, 'n@gmail.com', ''),
('NKR', 'NNL', 0, 1, 'Kodad', 2147483647, 2147483647, 1002042, 'nagubandigopal@gmail.com', ''),
('koti', 'n', 1, 1, 'F', 0, 0, 1002049, 'n@mail.com', ''),
('koti', 'n', -1, -1, 'delhi', 2147483647, 2147483647, 1002051, 'j@gmail.com', ''),
('koti', 'n', -1, -1, 'delhi', 2147483647, 2147483647, 1002053, 'wc@gmail.com', ''),
('testfathername', 'n', -2, -2, 'delhi', 2147483647, 2147483647, 1002054, 'ln@mail.com', ''),
('k', 'n', -2, -2, 'delhi', 2147483647, 2147483647, 1002055, 'lnl@mail.com', ''),
('k', 'n', -2, -2, 'delhi', 2147483647, 2147483647, 1002056, 'lndl@mail.com', ''),
('k', 'laxmi', -3, -3, 'delhi', 2147483647, 2147483647, 1002081, 'nf@mail.com', ''),
('k', 'laxmi', -3, -3, 'delhi', 2147483647, 2147483647, 1002086, 'jkmm@mail.com', ''),
('sri', 'srisri', 1, 1, 'hyderabad', 987654321, 1234890, 1002091, 'srisri@gmail.com', 'Paragraphs are commonly numbered using the decimal system, where (in books) the integral part of the decimal represents the number of the chapter and the fractional parts are arranged in each chapter in order of magnitude. Thus in Whittaker and Watson\'s 1'),
('k', 'n', 0, 1, 'delhi', 2147483647, 2147483647, 1002095, 'a@gmail.com', ''),
('k', 'n', 0, 1, 'delhi', 2147483647, 2147483647, 1002098, 'aaaaa@gmail.com', ''),
('k', 'n', 0, 0, 'hyderabad', 2147483647, 123456, 1002100, 'thankyou@gmail.com', ''),
('ok', 'ok', 1, 1, 'hyderabad', 987654310, 1234, 1002102, 'klok@gmail.com', ''),
('sriniu', 'n', -2, -1, 'delhi', 2147483647, 98, 1002103, 'lki@gmail.com', ''),
('Fname', 'Mname', 1, 1, 'hyd', 98888, 8889, 1002104, 'nok@gmail.com', ''),
('Hj', 'hj', 1, 1, 'hydera', 987766, 8988, 1002105, 'nhygll@mail.com', ''),
('Hj', 'hj', 1, 1, 'hydera', 987766, 8988, 1002106, 'nygll@mail.com', ''),
('Hj', 'hj', 1, 1, 'hydera', 987766, 8988, 1002107, 'nyglol@mail.com', ''),
('Hj', 'hj', 1, 1, 'hydera', 987766, 8988, 1002111, 'nygKKKKlol@mail.com', ''),
('Hj', 'hj', 1, 1, 'hydera', 987766, 8988, 1002113, 'testlast@mail.com', ''),
('Hj', 'hj', 1, 1, 'hydera', 987766, 8988, 1002115, 'testlast1@mail.com', ''),
('Hj', 'hj', 1, 1, 'hydera', 987766, 8988, 1002116, 'te1@mail.com', ''),
('Hj', 'hj', 1, 1, 'hydera', 987766, 8988, 1002117, 'te12@mail.com', ''),
('Hj', 'hj', 1, 1, 'hydera', 987766, 8988, 1002119, 'te124@mail.com', ''),
('Hj', 'jio', 0, 1, 'hgr', 980001298, 123, 1002123, 'BV342@gmail.com', ''),
('Hj', 'jio', 0, 1, 'hgr', 980001298, 123, 1002124, 'BV34209@gmail.com', ''),
('Hj', 'jio', 0, 1, 'hgr', 980001298, 123, 1002125, 'BV34509@gmail.com', ''),
('ghu', 'gbff', 1, 1, 'hyderbad', 123908771, 12345, 1002127, 'yourname@name.com', ''),
('ghu', 'gbff', 1, 1, 'hyderbad', 123908771, 12345, 1002129, 'yurname@name.com', ''),
('ghu', 'gbff', 1, 1, 'hyderbad', 123908771, 12345, 1002131, 'yurngame@name.com', ''),
('ghu', 'gbff', 1, 1, 'hyderbad', 123908771, 12345, 1002132, 'yurngamle@name.com', ''),
('ghu', 'gbff', 1, 1, 'hyderbad', 123908771, 12345, 1002135, 'yulngamle@name.com', ''),
('Hj', 'hj', -2, -2, 'hydera', 987766, 8988, 1002136, 'opii@kkl.mailcom', ''),
('ghu', 'hj', -2, -1, 'hydera', 1234, 1234, 1002137, 'aswwqa@mail.com', 'hi,test one '),
('ghu', 'hj', -2, -1, 'hydera', 1234, 1234, 1002138, 'imagestest@mail.com', 'hi,test one '),
('ghu', 'gbff', -2, -2, 'hyderbad', 123908771, 987, 1002141, 'mnhhl@mail.com', 'aassssssss'),
('ghu', 'gbff', -2, -2, 'hyderbad', 123908771, 987, 1002143, 'mnhhuu@mail.com', 'aassssssss'),
('ghu', 'gbff', -2, -2, 'hyderbad', 123908771, 987, 1002144, 'mnuu@mail.com', 'aassssssss'),
('ghu', 'gbff', -2, -2, 'hyderbad', 123908771, 987, 1002145, 'pnuu@mail.com', 'aassssssss'),
('ghu', 'gbff', -2, -2, 'hyderbad', 123908771, 987, 1002147, 'pn@mail.com', 'aassssssss'),
('ghu', 'gbff', -2, -2, 'hyderbad', 123908771, 987, 1002148, 'pnrrrr@mail.com', 'aassssssss'),
('ghu', 'gbff', -2, -2, 'hyderbad', 123908771, 987, 1002150, 'pnrrr0@mail.com', 'aassssssss'),
('ghu', 'gbff', 1, 1, 'hyderbad', 123908771, 987, 1002151, 'pnrrr022@mail.com', '                                                                                                                                                                 super....!                                                                                    '),
('ghu', 'hj', -2, -2, 'hydera', 987766, 8988, 1002152, 'asqq@lo.com', '                                                          the ok                                                                       ');

-- --------------------------------------------------------

--
-- Table structure for table `img_dt`
--

CREATE TABLE `img_dt` (
  `id` int(15) NOT NULL,
  `img_url` varchar(150) DEFAULT NULL,
  `img_url_one` varchar(150) DEFAULT NULL,
  `img_url_two` varchar(150) DEFAULT NULL,
  `u_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `img_dt`
--

INSERT INTO `img_dt` (`id`, `img_url`, `img_url_one`, `img_url_two`, `u_id`) VALUES
(5, NULL, NULL, NULL, 0),
(6, NULL, NULL, NULL, 12346),
(8, NULL, NULL, NULL, 12347),
(9, NULL, '15115918412.png', NULL, 12348),
(26, NULL, NULL, NULL, 1002151),
(29, '15134325921.png', '15134325561.png', '15134329731.png', 1002152);

-- --------------------------------------------------------

--
-- Table structure for table `pers_dtlis`
--

CREATE TABLE `pers_dtlis` (
  `u_id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sur_name` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `gothram_one` varchar(100) NOT NULL,
  `gothram_two` varchar(100) NOT NULL,
  `b_star` varchar(100) NOT NULL,
  `rashi` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `pod` varchar(150) NOT NULL,
  `heg` varchar(50) NOT NULL,
  `tob` time(6) NOT NULL,
  `stat_name` varchar(100) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `Comp_xion` varchar(50) NOT NULL,
  `Ku_do` varchar(50) NOT NULL,
  `jn_date` date NOT NULL,
  `jn_time` time(6) NOT NULL,
  `mgg_sttus` varchar(50) DEFAULT NULL,
  `Padh_am` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pers_dtlis`
--

INSERT INTO `pers_dtlis` (`u_id`, `name`, `sur_name`, `gender`, `gothram_one`, `gothram_two`, `b_star`, `rashi`, `dob`, `pod`, `heg`, `tob`, `stat_name`, `city_name`, `Comp_xion`, `Ku_do`, `jn_date`, `jn_time`, `mgg_sttus`, `Padh_am`) VALUES
(1002001, 'Gopal', 'nagubandi', 'male', 'xyz', 'abz', 'star', 'raashi', '1995-03-28', 'kdd', '5.6', '08:00:00.000000', 'ts', 'hyd', 'yes', 'no', '2017-11-09', '15:26:23.000000', NULL, NULL),
(1002002, 'reget kart', 'kart', 'Male', 'three', 'sri', 'five', 'six', '1995-03-28', 'seven', 'reget', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'No', '2017-11-09', '15:44:57.000000', NULL, NULL),
(1002003, 'x', 'y', 'Female', 'q', 's', 'five', 'six', '0000-00-00', 'u', 'f', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'No', '2017-11-09', '15:52:04.000000', NULL, NULL),
(1002004, 'g', 'o', 'Male', 'p', 'a', 'd', 'g', '0000-00-00', 'n', '9', '00:00:00.000000', 'a', 'n', 'Very Fair', 'No', '2017-11-09', '15:55:22.000000', NULL, NULL),
(1002005, 'g', 'o', 'Male', 'p', 'a', 'd', 'g', '0000-00-00', 'n', '9', '00:00:00.000000', 'a', 'n', 'Very Fair', 'No', '2017-11-09', '16:08:09.000000', NULL, NULL),
(1002006, 'reget kart', 'kart', 'Male', 'three', 'sri', 'five', 'six', '1995-03-28', 'seven', 'reget', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'No', '2017-11-09', '16:09:25.000000', NULL, NULL),
(1002007, 'reget kart', 'kart', 'Male', 'three', 'sri', 'five', 'six', '1995-03-28', 'seven', 'reget', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'No', '2017-11-09', '16:12:08.000000', NULL, NULL),
(1002008, 'test', 'test', 'Male', 'test', 'test', 'five', 'six', '1995-03-28', 'seven', 'reget', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'Yes', '2017-11-09', '16:16:16.000000', NULL, NULL),
(1002009, 'test2', 'kart', 'Female', 'three', 'sri', 'five', 'six', '0000-00-00', 'mflsl', 'reget', '00:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'Yes', '2017-11-09', '16:23:44.000000', NULL, NULL),
(1002010, 'test2', 'test3', 'Male', 'q', 'q', '12', '12', '1995-03-28', 'seven', 'reget', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'No', '2017-11-09', '16:42:20.000000', NULL, NULL),
(1002011, 'test 3 ', 'test 4 ', 'Male', 'three', 'sri', 'ee', 'qqadfvjndfn ', '0000-00-00', 'seven', 'reget', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'No', '2017-11-09', '16:47:08.000000', NULL, NULL),
(1002012, 'reget kart', 'kart', 'Male', 'three', 'sri', 'five', 'six', '1995-03-28', 'seven', 'reget', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'Yes', '2017-11-09', '16:58:28.000000', NULL, NULL),
(1002013, 'reget kart', 'kart', 'Male', 'three', 'sri', 'five', 'six', '1995-03-28', 'seven', 'reget', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'Yes', '2017-11-09', '17:00:59.000000', NULL, NULL),
(1002014, 'sri', 'sri', 'Male', 'sri', 'sri', 'five', 'six', '1995-03-28', 'seven', 'reget', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'Yes', '2017-11-09', '19:32:43.000000', NULL, NULL),
(1002015, 'sri', 'sri', 'Male', 'sri', 'sri', 'five', 'six', '1995-03-28', 'seven', 'reget', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'Yes', '2017-11-09', '19:33:44.000000', NULL, NULL),
(1002016, 'sri', 'sri', 'Male', 'sri', 'sri', 'five', 'six', '1995-03-28', 'seven', 'reget', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'Yes', '2017-11-09', '19:40:22.000000', NULL, NULL),
(1002017, 'reget kart', 'kart', 'Male', 'three', 'sri', 'five', 'six', '2014-11-18', 'seven', 'reget', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'No', '2017-11-09', '19:51:26.000000', NULL, NULL),
(1002023, '', '', '', '', '', '', '', '0000-00-00', '', '', '00:00:00.000000', '', '', '', '', '2017-11-09', '20:30:17.000000', NULL, NULL),
(1002024, '', '', '', '', '', '', '', '0000-00-00', '', '', '00:00:00.000000', '', '', '', '', '2017-11-09', '20:31:34.000000', NULL, NULL),
(1002025, '', '', '', '', '', '', '', '0000-00-00', '', '', '00:00:00.000000', '', '', '', '', '2017-11-09', '20:34:15.000000', NULL, NULL),
(1002026, '', '', '', '', '', '', '', '0000-00-00', '', '', '00:00:00.000000', '', '', '', '', '2017-11-09', '21:08:10.000000', NULL, NULL),
(1002027, '', '', '', '', '', '', '', '0000-00-00', '', '', '00:00:00.000000', '', '', '', '', '2017-11-09', '21:10:32.000000', NULL, NULL),
(1002028, '', '', '', '', '', '', '', '0000-00-00', '', '', '00:00:00.000000', '', '', '', '', '2017-11-09', '21:13:31.000000', NULL, NULL),
(1002029, '', '', '', '', '', '', '', '0000-00-00', '', '', '00:00:00.000000', '', '', '', '', '2017-11-09', '21:14:47.000000', NULL, NULL),
(1002030, '', '', '', '', '', '', '', '0000-00-00', '', '', '00:00:00.000000', '', '', '', '', '2017-11-09', '21:19:18.000000', NULL, NULL),
(1002031, '', 'kart', 'Female', 'q', 'q', 'r', 'w', '1995-03-28', 'mflsl', '(123)', '08:00:00.000000', 'Delhi', 'delhi', 'Wheatish Brown', 'Yes', '2017-11-09', '21:24:27.000000', NULL, NULL),
(1002032, 'x', 'y', 'Male', 'z', 'z', 'five', 'six', '0000-00-00', 'seven', 'reget', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'Yes', '2017-11-09', '21:57:55.000000', NULL, NULL),
(1002033, 'f', 'f', 'Male', 'f', 'f', 'five', 'ff', '1987-05-18', 'f', '2.5', '09:30:00.000000', 'tf', 'tf', 'Fair', 'No', '2017-11-09', '21:59:34.000000', NULL, NULL),
(1002039, 'Gopal', 'Nagubandi', 'Male', 'ok', 'ok', 'Ok', 'ok', '1995-03-28', 'kodad', '5.6', '08:30:00.000000', 'Ts', 'Kodad', 'Very Fair', 'No', '2017-11-10', '11:04:21.000000', NULL, NULL),
(1002040, 'Srinu', 'rao', 'Male', 'srinivas', 'srinivas', 'loin', 'miduna', '1986-04-12', 'hyderabad', '5.8', '06:00:00.000000', 'ts', 'hyderabad', 'Very Fair', 'No', '2017-11-10', '11:19:11.000000', NULL, NULL),
(1002042, 'Gopal', 'Nagubandi', 'Male', 'ok', 'ok', 'Ok', 'ok', '1995-03-28', 'kodad', '5.6', '08:30:00.000000', 'Ts', 'Kodad', 'Very Fair', 'No', '2017-11-10', '11:51:23.000000', NULL, NULL),
(1002049, 'Don', 'musicz', 'Male', 'muscd', 'musdd', 'five', 'six', '1994-02-26', 'hyderbad', '6.1', '09:12:00.000000', 'hydera', 'bad', 'Very Fair', 'No', '2017-11-10', '13:25:47.000000', NULL, NULL),
(1002051, 'j', 'kart', 'Female', 'three', 'sri', 'five', 'six', '1995-03-28', 'seven', 'reget', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'No', '2017-11-10', '13:54:22.000000', NULL, NULL),
(1002053, 'j', 'kart', 'Female', 'three', 'sri', 'five', 'six', '1995-03-28', 'seven', 'reget', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'No', '2017-11-10', '13:58:07.000000', NULL, NULL),
(1002054, 'finetest', 'testsurnmae', 'Male', 'three', 'sri', 'five', 'qqadfvjndfn ', '1995-03-28', 'seven', '9.3', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'Yes', '2017-11-10', '14:00:52.000000', NULL, NULL),
(1002055, 'Newone', 'Newone', 'Male', 'three', 'sri', 'five', 'qqadfvjndfn ', '1995-03-28', 'seven', '9.3', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'Yes', '2017-11-10', '14:05:08.000000', NULL, NULL),
(1002056, 'Newone', 'Newone', 'Male', 'three', 'sri', 'five', 'qqadfvjndfn ', '1995-03-28', 'seven', '9.3', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'Yes', '2017-11-10', '14:07:18.000000', NULL, NULL),
(1002081, 'test', 'test', 'Male', 'test', 'test', 'five', 'six', '0000-00-00', 'seven', 'reget', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'Yes', '2017-11-10', '16:41:52.000000', NULL, NULL),
(1002086, 'test', 'test', 'Male', 'test', 'test', 'five', 'six', '0000-00-00', 'seven', 'reget', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'Yes', '2017-11-10', '16:45:36.000000', NULL, NULL),
(1002091, 'srisri', 'guru', 'male', 'reget', 'lll', 'Anuradha', 'Kumbha (Aquarius)', '1995-03-28', 'hyderabad', '5.5 (165)', '08:00:00.000000', 'Delhi', 'delhi', 'Fair', 'No', '2017-11-13', '23:12:26.000000', 'unmarried', 3),
(1002095, 'a', 'b', 'Male', 'Aagyamula', 'sri', 'Anuradha', 'Dhanu (Sagittarius)', '0000-00-00', 'seven', '4 Feet (122 Cm)', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'No', '2017-11-13', '23:18:12.000000', 'UNmarried', 1),
(1002098, 'name', 'surname', 'Female', 'newone', 'newgoth', 'newb_star', 'nerashi', '1991-07-12', 'seven', '4 Feet (122 Cm)', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'No', '2017-11-13', '23:20:20.000000', 'UNmarried', 1),
(1002100, 'thank', 'you', 'Male', 'Aagyamula', 'sri', 'Bharani', 'Meena (Pisces)', '1993-03-30', 'sec', '5.6 (168)', '06:00:00.000000', 'ts', 'hyderabad', 'Very Fair', 'No', '2017-11-15', '14:31:29.000000', 'UNmarried', 2),
(1002102, 'k', 'n', 'Male', 'Aagyamula', 'y', 'Anuradha', 'Kanya (Virgo)', '1993-03-30', 'seven', '5.1 (155)', '18:00:00.000000', 'Ts', 'hyderabad', 'Very Fair', 'No', '2017-11-16', '20:37:29.000000', 'UNmarried', 2),
(1002103, 'a', 'b', 'Male', 'Aagyamula', 'sri', 'Anuradha', 'Kanya (Virgo)', '1993-03-30', 'seven', '4.1 (124)', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'Yes', '2017-11-20', '12:21:07.000000', 'UNmarried', 2),
(1002104, 'we', 'are', 'Male', 'Aagyamula', 'rf', 'Anuradha', 'Dhanu (Sagittarius)', '2000-12-31', 'hyderabad', '5.2 (157)', '08:00:00.000000', 'Delhi', 'delhi', 'Very Fair', 'No', '2017-11-20', '15:16:24.000000', 'UNmarried', 2),
(1002105, 'Fre', 'Gre', '1', '6', '446', '1', '1', '2000-01-30', 'hyderabad', '57', '05:00:00.000000', 'Ts', 'hyderabad', '2', '0', '2017-11-22', '16:45:48.000000', '0', 1),
(1002106, 'Fre', 'Gre', '1', '6', '446', '1', '1', '2000-01-30', 'hyderabad', '57', '05:00:00.000000', 'Ts', 'hyderabad', '2', '0', '2017-11-22', '16:46:23.000000', '0', 1),
(1002107, 'Fre', 'Gre', '1', '6', '446', '1', '1', '2000-01-30', 'hyderabad', '57', '05:00:00.000000', 'Ts', 'hyderabad', '2', '0', '2017-11-22', '16:47:05.000000', '0', 1),
(1002111, 'Fre', 'Gre', '1', '6', '446', '1', '1', '2000-01-30', 'hyderabad', '57', '05:00:00.000000', 'Ts', 'hyderabad', '2', '0', '2017-11-22', '16:56:46.000000', '0', 1),
(1002113, 'Test LASt', 'Gre', '1', '6', '446', '1', '1', '2000-01-30', 'hyderabad', '57', '05:00:00.000000', 'Ts', 'hyderabad', '2', '0', '2017-11-22', '17:00:46.000000', '0', 1),
(1002115, 'Test LASt', 'Gre', '1', '6', '446', '1', '1', '2000-01-30', 'hyderabad', '57', '05:00:00.000000', 'Ts', 'hyderabad', '2', '0', '2017-11-22', '17:03:11.000000', '0', 1),
(1002116, 'Test LASt', 'Gre', '1', '6', '446', '1', '1', '2000-01-30', 'hyderabad', '57', '05:00:00.000000', 'Ts', 'hyderabad', '2', '0', '2017-11-22', '17:05:58.000000', '0', 1),
(1002117, 'Test LASt', 'Gre', '1', '6', '446', '1', '1', '2000-01-30', 'hyderabad', '57', '05:00:00.000000', 'Ts', 'hyderabad', '2', '0', '2017-11-22', '17:15:39.000000', '0', 1),
(1002119, 'Test LASt', 'Gre', '1', '6', '446', '1', '1', '2000-01-30', 'hyderabad', '57', '05:00:00.000000', 'Ts', 'hyderabad', '2', '0', '2017-11-22', '17:18:44.000000', '0', 1),
(1002123, 'qwe', 'Gre', '2', '6', '6', '2', '2', '2012-03-12', 'hyderabad', '60', '00:00:09.000000', 'Ts', 'hyderabad', '3', '1', '2017-11-22', '17:30:07.000000', '0', 2),
(1002124, 'qwe', 'Gre', '2', '6', '6', '2', '2', '2012-03-12', 'hyderabad', '60', '00:00:09.000000', 'Ts', 'hyderabad', '3', '1', '2017-11-22', '17:32:31.000000', '0', 2),
(1002125, 'qwe', 'Gre', '2', '6', '6', '2', '2', '2012-03-12', 'hyderabad', '60', '00:00:09.000000', 'Ts', 'hyderabad', '3', '1', '2017-11-22', '17:34:08.000000', '0', 2),
(1002127, 'yourname', 'surname', '1', '6', '11', '1', '4', '1985-05-23', 'hyderabad', '65', '07:00:00.000000', 'ts', 'hyderabad', '3', '0', '2017-11-24', '16:36:39.000000', '0', 1),
(1002129, 'yourname', 'surname', '1', '6', '11', '1', '4', '1985-05-23', 'hyderabad', '65', '07:00:00.000000', 'ts', 'hyderabad', '3', '0', '2017-11-24', '16:37:44.000000', '0', 1),
(1002131, 'yourname', 'surname', '1', '6', '11', '1', '4', '1985-05-23', 'hyderabad', '65', '07:00:00.000000', 'ts', 'hyderabad', '3', '0', '2017-11-24', '16:40:13.000000', '0', 1),
(1002132, 'yourname', 'surname', '1', '6', '11', '1', '4', '1985-05-23', 'hyderabad', '65', '07:00:00.000000', 'ts', 'hyderabad', '3', '0', '2017-11-24', '16:43:31.000000', '0', 1),
(1002135, 'yourname', 'surname', '1', '6', '11', '1', '4', '1985-05-23', 'hyderabad', '65', '07:00:00.000000', 'ts', 'hyderabad', '3', '0', '2017-11-24', '16:45:56.000000', '0', 1),
(1002136, 'Test LASt', 'Gre', '2', '8', '8', '1', '1', '1985-05-23', 'hyderabad', '48', '05:00:00.000000', 'ts', 'hyderabad', '1', '1', '2017-11-24', '19:59:32.000000', '0', 1),
(1002137, 'h', 'b', '1', '8', '8', '2', '2', '1985-05-23', 'hyderabad', '49', '02:00:00.000000', 'ts', 'hyderabad', '5', '1', '2017-11-25', '12:18:16.000000', '1', 3),
(1002138, 'h', 'b', '1', '8', '8', '2', '2', '1985-05-23', 'hyderabad', '49', '02:00:00.000000', 'ts', 'hyderabad', '5', '1', '2017-11-25', '12:20:12.000000', '1', 3),
(1002141, 'q', 'q', '1', '6', '500', '2', '4', '2012-03-12', 'hyderabad', '49', '07:00:00.000000', 'Ts', 'hyderabad', '2', '1', '2017-11-25', '12:28:35.000000', '1', 4),
(1002143, 'q', 'q', '1', '6', '500', '2', '4', '2012-03-12', 'hyderabad', '49', '07:00:00.000000', 'Ts', 'hyderabad', '2', '1', '2017-11-25', '12:29:18.000000', '1', 4),
(1002144, 'q', 'q', '1', '6', '500', '2', '4', '2012-03-12', 'hyderabad', '49', '07:00:00.000000', 'Ts', 'hyderabad', '2', '1', '2017-11-25', '12:32:55.000000', '1', 4),
(1002145, 'q', 'q', '1', '6', '500', '2', '4', '2012-03-12', 'hyderabad', '49', '07:00:00.000000', 'Ts', 'hyderabad', '2', '1', '2017-11-25', '12:33:33.000000', '1', 4),
(1002147, 'q', 'q', '1', '6', '500', '2', '4', '2012-03-12', 'hyderabad', '49', '07:00:00.000000', 'Ts', 'hyderabad', '2', '1', '2017-11-25', '12:34:08.000000', '1', 4),
(1002148, 'q', 'q', '1', '6', '500', '2', '4', '2012-03-12', 'hyderabad', '49', '07:00:00.000000', 'Ts', 'hyderabad', '2', '1', '2017-11-25', '12:34:16.000000', '1', 4),
(1002150, 'q', 'q', '1', '6', '500', '2', '4', '2012-03-12', 'hyderabad', '49', '07:00:00.000000', 'Ts', 'hyderabad', '2', '1', '2017-11-25', '12:34:34.000000', '1', 4),
(1002151, 'q', 'q', '1', '217', '356', '2', '4', '2012-03-12', 'hyderabad', '65', '19:00:00.000000', 'Ts', 'hyderabad', '1', '1', '2017-11-25', '12:42:05.000000', '0', 2),
(1002152, 'newtest', 'ng', '1', '500', '357', '10', '1', '2000-01-30', 'hyderabad', '65', '05:00:00.000000', 'hyd', 'hyderabad', '1', '1', '2017-11-25', '16:42:43.000000', '0', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ur_log`
--

CREATE TABLE `ur_log` (
  `u_id` int(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` int(150) NOT NULL,
  `status` int(1) NOT NULL,
  `amt_paid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ur_log`
--

INSERT INTO `ur_log` (`u_id`, `email`, `password`, `status`, `amt_paid`) VALUES
(1002042, 'nagubandigopal@gmail.com', 1234, 1, 3000),
(1002049, 'n@mail.com', 0, 0, 0),
(1002051, 'j@gmail.com', 2147483647, 0, 0),
(1002053, 'wc@gmail.com', 2147483647, 1, 0),
(1002054, 'ln@mail.com', 2147483647, 1, 2000),
(1002055, 'lnl@mail.com', 2147483647, 0, 0),
(1002056, 'lndl@mail.com', 2147483647, 0, 3000),
(1002081, 'nf@mail.com', 2147483647, 0, 0),
(1002086, 'jkmm@mail.com', 2147483647, 1, 0),
(1002091, 'srisri@gmail.com', 1234, 1, 3000),
(1002095, 'a@gmail.com', 2147483647, 1, 0),
(1002098, 'aaaaa@gmail.com', 1234567, 0, 0),
(1002100, 'thankyou@gmail.com', 123456, 1, 0),
(1002102, 'klok@gmail.com', 1234, 1, 0),
(1002103, 'lki@gmail.com', 98, 0, 0),
(1002104, 'nok@gmail.com', 8889, 0, 0),
(1002105, 'nhygll@mail.com', 8988, 0, 0),
(1002106, 'nygll@mail.com', 8988, 0, 0),
(1002107, 'nyglol@mail.com', 8988, 0, 0),
(1002109, 'h@gmail.com', 9876, 1, 5000),
(1002111, 'nygKKKKlol@mail.com', 8988, 0, 0),
(1002113, 'testlast@mail.com', 8988, 0, 0),
(1002115, 'testlast1@mail.com', 8988, 0, 0),
(1002116, 'te1@mail.com', 8988, 0, 0),
(1002117, 'te12@mail.com', 8988, 0, 0),
(1002119, 'te124@mail.com', 8988, 0, 0),
(1002123, 'BV342@gmail.com', 123, 0, 0),
(1002124, 'BV34209@gmail.com', 123, 0, 0),
(1002125, 'BV34509@gmail.com', 123, 0, 0),
(1002127, 'yourname@name.com', 12345, 0, 0),
(1002129, 'yurname@name.com', 12345, 0, 0),
(1002131, 'yurngame@name.com', 12345, 0, 0),
(1002132, 'yurngamle@name.com', 12345, 0, 0),
(1002135, 'yulngamle@name.com', 12345, 0, 0),
(1002136, 'opii@kkl.mailcom', 8988, 0, 0),
(1002137, 'aswwqa@mail.com', 1234, 0, 0),
(1002138, 'imagestest@mail.com', 1234, 0, 0),
(1002141, 'mnhhl@mail.com', 987, 0, 0),
(1002143, 'mnhhuu@mail.com', 987, 0, 0),
(1002144, 'mnuu@mail.com', 987, 0, 0),
(1002145, 'pnuu@mail.com', 987, 1, 0),
(1002147, 'pn@mail.com', 987, 0, 0),
(1002148, 'pnrrrr@mail.com', 987, 0, 0),
(1002150, 'pnrrr0@mail.com', 987, 1, 0),
(1002151, 'pnrrr022@mail.com', 987, 1, 0),
(1002152, 'asqq@lo.com', 8988, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `edu_dtlis`
--
ALTER TABLE `edu_dtlis`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `fay_dtlis`
--
ALTER TABLE `fay_dtlis`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `img_dt`
--
ALTER TABLE `img_dt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_id` (`u_id`);

--
-- Indexes for table `pers_dtlis`
--
ALTER TABLE `pers_dtlis`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `ur_log`
--
ALTER TABLE `ur_log`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `img_dt`
--
ALTER TABLE `img_dt`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `pers_dtlis`
--
ALTER TABLE `pers_dtlis`
  MODIFY `u_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002153;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

--
-- Dumping data for table `pma__bookmark`
--

INSERT INTO `pma__bookmark` (`id`, `dbase`, `user`, `label`, `query`) VALUES
(1, 'mat_db', 'root', 'get_detlis_from_thtbls', 'SELECT pers_dtlis.name,\r\n    pers_dtlis.sur_name,\r\n    pers_dtlis.gender,\r\n    pers_dtlis.dob,\r\n    pers_dtlis.stat_name,\r\n    fay_dtlis.fther_name,\r\n    fay_dtlis.mther_name,\r\n    fay_dtlis.mail_id,\r\n    edu_dtlis.quali_ion,\r\n    edu_dtlis.proffe,\r\n    edu_dtlis.income\r\nFROM\r\n    pers_dtlis,\r\n    fay_dtlis,\r\n    edu_dtlis\r\n    \r\nWHERE\r\n    pers_dtlis.u_id = \'1002042\' AND pers_dtlis.u_id = fay_dtlis.u_id AND pers_dtlis.u_id = edu_dtlis.u_id'),
(2, 'mat_db', '', 'filtre_data', 'SELECT\r\n    pers_dtlis.u_id,\r\n    pers_dtlis.gender,\r\n    pers_dtlis.dob,\r\n    pers_dtlis.stat_name,\r\n    edu_dtlis.quali_ion\r\nFROM\r\n    pers_dtlis\r\nJOIN edu_dtlis ON pers_dtlis.u_id = edu_dtlis.u_id WHERE pers_dtlis.gender=\'Male\' AND edu_dtlis.quali_ion=\'B.Tech\' AND pers_dtlis.dob=\'1995-03-28\' AND pers_dtlis.stat_name=\'Delhi\'');

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
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

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'imgesdb', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

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
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
('root', '[{\"db\":\"test\",\"table\":\"student_flask\"},{\"db\":\"test\",\"table\":\"dropdown\"},{\"db\":\"mat_db\",\"table\":\"ur_log\"},{\"db\":\"mat_db\",\"table\":\"pers_dtlis\"},{\"db\":\"mat_db\",\"table\":\"edu_dtlis\"},{\"db\":\"cardsdb\",\"table\":\"card_db\"},{\"db\":\"mat_db\",\"table\":\"img_dt\"},{\"db\":\"mat_db\",\"table\":\"fay_dtlis\"},{\"db\":\"mat_db\",\"table\":\"login\"},{\"db\":\"ecomm\",\"table\":\"categories\"}]');

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
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
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

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'ecomm', 'products', '{\"sorted_col\":\"`products`.`product_image` ASC\"}', '2017-07-18 11:56:50'),
('root', 'mat_db', 'edu_dtlis', '{\"sorted_col\":\"`quali_ion` ASC\",\"CREATE_TIME\":\"2017-11-09 18:25:19\",\"col_order\":[\"3\",\"0\",\"1\",\"2\"],\"col_visib\":[\"1\",\"1\",\"1\",\"1\"]}', '2017-11-22 11:51:45'),
('root', 'mat_db', 'fay_dtlis', '{\"CREATE_TIME\":\"2017-11-24 16:56:17\",\"col_visib\":[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"],\"col_order\":[\"7\",\"8\",\"0\",\"1\",\"2\",\"3\",\"5\",\"6\",\"4\",\"9\"]}', '2017-11-24 11:30:32'),
('root', 'mat_db', 'img_dt', '[]', '2017-11-25 03:24:51'),
('root', 'mat_db', 'pers_dtlis', '{\"sorted_col\":\"`name` ASC\",\"CREATE_TIME\":\"2017-11-09 15:25:59\",\"col_visib\":[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]}', '2017-11-26 03:38:49'),
('root', 'mat_db', 'ur_log', '{\"sorted_col\":\"`ur_log`.`u_id` ASC\"}', '2017-11-27 17:18:03');

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
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-07-18 04:57:14', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `dropdown`
--

CREATE TABLE `dropdown` (
  `Id` int(20) NOT NULL,
  `cont` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dropdown`
--

INSERT INTO `dropdown` (`Id`, `cont`) VALUES
(1, 'india'),
(2, 'india'),
(3, 'usa'),
(4, 'usa'),
(5, 'india'),
(6, 'india'),
(7, 'india'),
(8, 'india'),
(9, 'india'),
(10, 'india'),
(11, 'india'),
(12, 'india'),
(13, 'india'),
(14, 'india'),
(15, 'india'),
(16, 'india'),
(17, 'india'),
(18, 'india'),
(19, 'india'),
(20, 'india'),
(21, 'india'),
(22, 'india'),
(23, 'india'),
(24, 'india'),
(25, 'india'),
(26, 'india'),
(27, 'india'),
(28, 'india'),
(29, 'india'),
(30, 'india'),
(31, 'india'),
(32, 'india'),
(33, 'india'),
(34, 'india'),
(35, 'india'),
(36, 'india'),
(37, 'india');

-- --------------------------------------------------------

--
-- Table structure for table `student_flask`
--

CREATE TABLE `student_flask` (
  `id` int(15) NOT NULL,
  `name` varchar(125) NOT NULL,
  `email` varchar(125) NOT NULL,
  `phone` bigint(255) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `Gender` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_flask`
--

INSERT INTO `student_flask` (`id`, `name`, `email`, `phone`, `img_name`, `Gender`) VALUES
(60, 'nmail', 'n@mail', 9876543210, 'v.png', ''),
(61, 'GLion', 'nagubandigopal@gmail.com', 1234567890, '2018203121_lion-1366x768.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dropdown`
--
ALTER TABLE `dropdown`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `student_flask`
--
ALTER TABLE `student_flask`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dropdown`
--
ALTER TABLE `dropdown`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `student_flask`
--
ALTER TABLE `student_flask`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
