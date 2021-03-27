-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2021 at 03:56 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_oop_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Fashion', '2014-06-01 00:35:07', '2014-05-30 09:34:33'),
(2, 'Electronics', '2014-06-01 00:35:07', '2014-05-30 09:34:33'),
(3, 'Motors', '2014-06-01 00:35:07', '2014-05-30 09:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `category_id`, `created`, `modified`, `price`) VALUES
(1, 'LG P880 4X HD', 'My first awesome phone!', 3, '2014-06-01 01:12:26', '2014-05-31 09:12:26', 336),
(2, 'Google Nexus 4', 'The most awesome phone of 2013!', 2, '2014-06-01 01:12:26', '2014-05-31 09:12:26', 299),
(3, 'Samsung Galaxy S4', 'How about no?', 3, '2014-06-01 01:12:26', '2014-05-31 09:12:26', 600),
(6, 'Bench Shirt', 'The best shirt!', 1, '2014-06-01 01:12:26', '2014-05-30 18:12:21', 29),
(7, 'Lenovo Laptop', 'My business partner.', 2, '2014-06-01 01:13:45', '2014-05-30 18:13:39', 399),
(8, 'Samsung Galaxy Tab 10.1', 'Good tablet.', 2, '2014-06-01 01:14:13', '2014-05-30 18:14:08', 259),
(9, 'Spalding Watch', 'My sports watch.', 1, '2014-06-01 01:18:36', '2014-05-30 18:18:31', 199),
(10, 'Sony Smart Watch', 'The coolest smart watch!', 2, '2014-06-06 17:10:01', '2014-06-05 10:09:51', 300),
(11, 'Huawei Y300', 'For testing purposes.', 2, '2014-06-06 17:11:04', '2014-06-05 10:10:54', 100),
(12, 'Abercrombie Lake Arnold Shirt', 'Perfect as gift!', 1, '2014-06-06 17:12:21', '2014-06-05 10:12:11', 608),
(13, 'Abercrombie Allen Brook Shirt', 'Cool red shirt!', 1, '2014-06-06 17:12:59', '2014-06-05 10:12:49', 70),
(26, 'Another product', 'Awesome product!', 2, '2014-11-22 19:07:34', '2014-11-21 12:07:34', 555),
(28, 'Wallet', 'You can absolutely use this one!', 1, '2014-12-04 21:12:03', '2014-12-03 14:12:03', 799),
(30, 'Wal-mart Shirt', '', 2, '2014-12-13 00:52:29', '2014-12-11 17:52:29', 555),
(31, 'Amanda Waller Shirt', 'New awesome shirt!', 1, '2014-12-13 00:52:54', '2014-12-11 17:52:54', 333),
(32, 'Washing Machine Model PTRR', 'Some new product.', 1, '2015-01-08 22:44:15', '2015-01-07 15:44:15', 999),
(33, 'pants', 'pants', 1, '2021-03-27 15:45:32', '2021-03-27 15:45:32', 8),
(34, 'pants', 'adfa', 1, '2021-03-27 15:45:45', '2021-03-27 15:45:45', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
