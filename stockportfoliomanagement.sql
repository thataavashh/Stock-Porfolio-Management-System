-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2021 at 10:47 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockportfoliomanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `adminId` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`adminId`, `email`, `password`) VALUES
(1, 'aavashh@admin.com', '03bead6ae70f8b1a96c8450692b13f25');

-- --------------------------------------------------------

--
-- Table structure for table `market_summary`
--

CREATE TABLE `market_summary` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `total_turnover` bigint(50) NOT NULL,
  `total_traded` bigint(50) NOT NULL,
  `total_transaction` bigint(50) NOT NULL,
  `total_scrips_traded` bigint(50) NOT NULL,
  `total_market_capitalized` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `market_summary`
--

INSERT INTO `market_summary` (`id`, `date`, `total_turnover`, `total_traded`, `total_transaction`, `total_scrips_traded`, `total_market_capitalized`) VALUES
(31, '2021-09-06', 10000, 3000000, 100000000, 10000, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `company_name` text NOT NULL,
  `stock_type` varchar(50) NOT NULL,
  `units` int(50) NOT NULL,
  `buying_price` int(50) NOT NULL,
  `total_price` int(100) NOT NULL,
  `date` date NOT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `company_name`, `stock_type`, `units`, `buying_price`, `total_price`, `date`, `user_id`) VALUES
(4, 'Uppers', 'IPO', 1000, 1000, 1000000, '2021-09-08', '0'),
(5, 'Uppers', 'IPO', 100, 100, 10000, '2021-09-15', 'basantaa'),
(6, 'Uppers', 'IPO', 100, 256, 25600, '2021-09-12', 'ranjuu'),
(7, 'Tribhuvan Company', 'IPO', 35, 100, 3500, '2021-09-05', 'ranjuu'),
(8, 'Sanima Bank', 'Secondary Market', 500, 350, 175000, '2021-09-12', 'ranju'),
(9, 'Tribhuvan Company', 'IPO', 10, 100, 1000, '2021-09-07', 'ranju'),
(10, 'Tribhuvan Company', 'Auction', 100, 1000, 100000, '2021-09-09', 'suffal'),
(11, 'Arun Kabeli Power Limited', 'IPO', 100, 150, 15000, '2021-09-07', 'safal'),
(13, 'aahhhh', 'IPO', 100, 200, 20000, '2021-09-12', 'safal'),
(14, 'Arun Kabeli Power Limited', 'IPO', 100, 100, 10000, '2021-09-12', 'aavashh');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `username` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cpassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`username`, `first_name`, `last_name`, `email`, `password`, `cpassword`) VALUES
('aavashh', 'AAVASH', 'GANESH', 'aavashh@gmail.com', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b'),
('anilss', 'ANIL', 'SHSHHSS', 'anil@gmail.com', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad'),
('basanta', 'BASANTA', 'CHAPAGAIN', 'basanta@gmail.com', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad'),
('basantaa', 'BASANTA', 'CHAPAGAIN', 'basantachapagain@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e'),
('ranju', 'RANJU', 'SHRESTHA', 'ranjus@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'e807f1fcf82d132f9bb018ca6738a19f'),
('ranjuu', 'RANJU', 'SHRESTHA', 'ranju@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', 'fcea920f7412b5da7be0cf42b8c93759'),
('safal', 'SAFAL', 'SHARMA', 'safal2@gmail.com', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b'),
('safals', 'SAFAL', 'SHARMA', 'safal@gmail.com', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b'),
('suffal', 'SUFFAL', 'SHARMA', 'suffal@gmail.com', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Table structure for table `stocktype`
--

CREATE TABLE `stocktype` (
  `stockname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stocktype`
--

INSERT INTO `stocktype` (`stockname`) VALUES
('FPO'),
('Secondary Market'),
('Right Share'),
('Auction'),
('Mutual Share'),
('IPO');

-- --------------------------------------------------------

--
-- Table structure for table `top_gainer`
--

CREATE TABLE `top_gainer` (
  `id` int(11) NOT NULL,
  `symbol` varchar(100) NOT NULL,
  `ltp` int(50) NOT NULL,
  `change` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `top_gainer`
--

INSERT INTO `top_gainer` (`id`, `symbol`, `ltp`, `change`) VALUES
(6, 'NABIL', 120, 10),
(12, 'Nic asia', 100, 10),
(17, 'Aavashh', 100, 20);

-- --------------------------------------------------------

--
-- Table structure for table `top_looser`
--

CREATE TABLE `top_looser` (
  `id` int(11) NOT NULL,
  `symbol` varchar(50) NOT NULL,
  `ltp` int(50) NOT NULL,
  `change` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `top_looser`
--

INSERT INTO `top_looser` (`id`, `symbol`, `ltp`, `change`) VALUES
(5, 'Upper', 160, 10),
(6, 'NABIL', 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `top_turnover`
--

CREATE TABLE `top_turnover` (
  `id` int(11) NOT NULL,
  `symbol` varchar(50) NOT NULL,
  `total_turnover` int(100) NOT NULL,
  `ltp` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `top_turnover`
--

INSERT INTO `top_turnover` (`id`, `symbol`, `total_turnover`, `ltp`) VALUES
(8, 'NABIL', 100000, 100),
(10, 'Aav', 19101001, 100);

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_issue`
--

CREATE TABLE `upcoming_issue` (
  `id` int(11) NOT NULL,
  `symbol` varchar(50) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `issue_manager` varchar(150) NOT NULL,
  `share_types` varchar(150) NOT NULL,
  `price` int(50) NOT NULL,
  `units` int(50) NOT NULL,
  `issue_date` date NOT NULL,
  `close_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upcoming_issue`
--

INSERT INTO `upcoming_issue` (`id`, `symbol`, `company_name`, `issue_manager`, `share_types`, `price`, `units`, `issue_date`, `close_date`) VALUES
(60, 'aav', 'Padma Insurance', 'NIC ASIA', 'IPO', 100, 10000, '2021-09-11', '2021-09-20'),
(61, 'InfoSys', 'Info Sys Insurance Pvt Ltd', 'NIC ASIA', 'Right Share', 100, 500000, '2021-09-12', '2021-09-07'),
(63, 'aav', 'aavahs', 'Nic asia', 'IPO', 100, 1000, '2021-09-14', '2021-09-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `market_summary`
--
ALTER TABLE `market_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `top_gainer`
--
ALTER TABLE `top_gainer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_looser`
--
ALTER TABLE `top_looser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_turnover`
--
ALTER TABLE `top_turnover`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming_issue`
--
ALTER TABLE `upcoming_issue`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `market_summary`
--
ALTER TABLE `market_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `top_gainer`
--
ALTER TABLE `top_gainer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `top_looser`
--
ALTER TABLE `top_looser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `top_turnover`
--
ALTER TABLE `top_turnover`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `upcoming_issue`
--
ALTER TABLE `upcoming_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
