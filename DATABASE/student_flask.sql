-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2018 at 04:08 PM
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
-- Database: `test`
--

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
  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_flask`
--

INSERT INTO `student_flask` (`id`, `name`, `email`, `phone`, `img_name`) VALUES
(60, 'nmail', 'n@mail', 9876543210, '20180321_v.png'),
(61, 'GLion', 'nagubandigopal@gmail.com', 1234567890, '2018203121_lion-1366x768.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_flask`
--
ALTER TABLE `student_flask`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_flask`
--
ALTER TABLE `student_flask`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
