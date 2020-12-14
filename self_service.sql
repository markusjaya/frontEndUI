-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 02:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `self_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_order`
--

CREATE TABLE `cart_order` (
  `id` bigint(20) NOT NULL,
  `table_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_order`
--

CREATE TABLE `detail_order` (
  `id` bigint(20) NOT NULL,
  `cart_order_id` varchar(255) DEFAULT NULL,
  `menu_id` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaction`
--

CREATE TABLE `detail_transaction` (
  `id` bigint(20) NOT NULL,
  `transaction_id` bigint(20) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `menu_price` bigint(20) DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `meja`
--

CREATE TABLE `meja` (
  `id` bigint(20) NOT NULL,
  `restaurant_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`id`, `restaurant_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL,
  `restaurant_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `img` text NOT NULL,
  `category` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `restaurant_id`, `name`, `price`, `stock`, `img`, `category`) VALUES
(1, 1, 'Nasi Goreng', '20000', '100', 'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1515557737/asxtrr2ga1os4abfmuoe.jpg', 1),
(2, 1, 'Nasi Goreng Spesial', '25000', '100', 'https://www.masakapahariini.com/wp-content/uploads/2019/01/nasi-goreng-spesial-780x440.jpg', 1),
(3, 1, 'Jus Jeruk', '18000', '100', 'https://images.solopos.com/2020/06/jus-jeruk--1200x798.jpg', 2),
(4, 1, 'Es Teh Manis', '15000', '100', 'data:image/jpeg;base64,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', 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `address`, `service`, `tax`) VALUES
(1, 'Budiman Resto', 'Ujung Berung, Bandung, Jawa Barat, Indonesia', '5', '10');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `resto_id` varchar(255) DEFAULT NULL,
  `voucher_id` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id` bigint(20) NOT NULL,
  `start_date` date DEFAULT NULL,
  `finish_date` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `max_discount` varchar(255) DEFAULT NULL,
  `prerequisite` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_order`
--
ALTER TABLE `cart_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_order_id_INDEX` (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id_INDEX` (`id`);

--
-- Indexes for table `detail_order`
--
ALTER TABLE `detail_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_order_id_INDEX` (`id`);

--
-- Indexes for table `detail_transaction`
--
ALTER TABLE `detail_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_transaction_id_INDEX` (`id`);

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meja_id_INDEX` (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id_INDEX` (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_id_INDEX` (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_id_INDEX` (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id_INDEX` (`id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voucher_id_INDEX` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_order`
--
ALTER TABLE `cart_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meja`
--
ALTER TABLE `meja`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
