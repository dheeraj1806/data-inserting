-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2020 at 02:09 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_shooz`
--

-- --------------------------------------------------------

--
-- Table structure for table `shooz_name_list`
--

CREATE TABLE `shooz_name_list` (
  `id` int(3) NOT NULL,
  `shoename` varchar(35) CHARACTER SET latin1 NOT NULL,
  `brandname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `shoecolor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `gender` varchar(5) CHARACTER SET latin1 NOT NULL,
  `shoesize` varchar(5) CHARACTER SET latin1 NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 NOT NULL,
  `rating` varchar(10) NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `image` text CHARACTER SET latin1 NOT NULL,
  `image1` text NOT NULL,
  `image2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shooz_name_list`
--

INSERT INTO `shooz_name_list` (`id`, `shoename`, `brandname`, `shoecolor`, `gender`, `shoesize`, `link`, `rating`, `category`, `image`, `image1`, `image2`) VALUES
(1, 'Nike', '', '', '', '0', '', '', '', '', '', ''),
(2, 'Puma', '', '', '', '0', '', '', '', '', '', ''),
(3, 'Adidas', '', '', '', '0', '', '', '', '', '', ''),
(4, 'adidas4', '', '', '', '0', '', '', '', '', '', ''),
(5, 'adidas5', '', '', '', '0', '', '', '', '', '', ''),
(6, 'adidas6', '', '', '', '0', '', '', '', '', '', ''),
(7, 'adidas7', '', '', '', '0', '', '', '', '', '', ''),
(8, 'adidas8', '', '', '', '0', '', '', '', '', '', ''),
(9, 'adidas9', '', '', '', '0', '', '', '', '', '', ''),
(10, 'adidas10', '', '', '', '0', '', '', '', '', '', ''),
(11, 'adidas11', '', '', '', '0', '', '', '', '', '', ''),
(12, 'adidas12', '', '', '', '0', '', '', '', '', '', ''),
(13, 'a', '', '', '', '0', '', '', '', '', '', ''),
(57, 'q', 'o', 'o', 'o', 'o', 'o', '', '', 'os1.jpg', '', ''),
(58, 'q', 'o', 'o', 'o', 'o', 'o', '', '', 'logo1.jpg', 'dataimg/logo1.jpg', 'image/jpeg'),
(59, 'r', 'k', 'k', 'k', 'k', 'k', '', '', 'logo1.jpg', 'dataimg/logo1.jpg', 'image/jpeg'),
(60, 'w', 'p', 'p', 'p', 'p', 'p', '', 'sneaker', 'logo1.jpg', 'dataimg/logo1.jpg', 'image/jpeg'),
(61, 'q', 'o', 'j', 'nb', 'ggg', 'j', 'h', 'casual', 'logo1.jpg', 'dataimg/logo1.jpg', 'image/jpeg'),
(62, 'r', 'u', 'h', 'fv', 'n', 'j', 'bv', 'sneaker', 'logo1.jpg', 'dataimg/logo1.jpg', 'image/jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shooz_name_list`
--
ALTER TABLE `shooz_name_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shooz_name_list`
--
ALTER TABLE `shooz_name_list`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
