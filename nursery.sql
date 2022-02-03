-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2022 at 03:53 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nursery`
--

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `BNO` int(11) NOT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `P_id` int(11) NOT NULL,
  `C_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`BNO`, `quantity`, `P_id`, `C_id`) VALUES
(33, '2', 223, 300);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `C_id` int(11) NOT NULL,
  `C_name` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `gmail` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `password1` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`C_id`, `C_name`, `Address`, `Phone`, `gender`, `gmail`, `password`, `password1`, `username`) VALUES
(300, 'Jackson', 'Agrar', '9823865482', 'Male', 'xyz@gmail.com', 'jackson', 'jackson', 'jackson'),
(301, 'Packson', 'Adyar', '9823543455', 'EeMale', 'abc@gmail.com', 'jackson1', 'jackson1', 'jackson1'),
(304, 'Akhilesh', 'Udupi', '9876543210', 'Male', 'xyz@gmail.com', 'qwert12345', 'qwert12345', 'akhi');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `E_id` int(11) NOT NULL,
  `E_name` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Gmail` varchar(20) DEFAULT NULL,
  `N_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`E_id`, `E_name`, `Address`, `Phone`, `Gender`, `Gmail`, `N_id`) VALUES
(435, 'Jackson Lobo', 'Agrar', '9110255608', 'Female', 'fefd@gmail.com', 100);

-- --------------------------------------------------------

--
-- Table structure for table `looksafter`
--

CREATE TABLE `looksafter` (
  `LID` int(11) NOT NULL,
  `E_id` int(11) DEFAULT NULL,
  `P_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `looksafter`
--

INSERT INTO `looksafter` (`LID`, `E_id`, `P_id`) VALUES
(654, 435, 223);

-- --------------------------------------------------------

--
-- Table structure for table `nursery`
--

CREATE TABLE `nursery` (
  `N_id` int(11) NOT NULL,
  `N_name` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `Gmail` varchar(20) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nursery`
--

INSERT INTO `nursery` (`N_id`, `N_name`, `Address`, `Gmail`, `Phone`, `username`, `password`) VALUES
(100, 'Sasha', 'Adyar', 'xyx@gmail.com', '393867635', 'admin', 'adminadmin'),
(101, 'Shakila', 'Adyar', 'abc@gmail.com', '293287635', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `P_id` int(11) NOT NULL,
  `P_name` varchar(20) DEFAULT NULL,
  `P_type` varchar(20) DEFAULT NULL,
  `Quantity` varchar(10) DEFAULT NULL,
  `Price` varchar(10) DEFAULT NULL,
  `N_id` int(11) DEFAULT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`P_id`, `P_name`, `P_type`, `Quantity`, `Price`, `N_id`, `Status`) VALUES
(223, 'Daisy', 'Tree', '8', '800', 100, 'Accept'),
(230, 'Bluestem	', 'Flower', '9', '999', 100, 'Accept'),
(231, 'Caladium', 'Flower', '2', '199', 100, 'Accept'),
(232, 'Cactus', 'Flower', '7', '999', 100, 'Reject'),
(233, 'Lily', 'Flower', '1', '99', 101, 'Pending'),
(234, 'Rose', 'Flower', '5', '900', 100, 'Accept'),
(235, 'Bluestem	', 'Flower', '4', '299', 100, 'Reject');

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `SNO` int(11) NOT NULL,
  `P_id` int(11) NOT NULL,
  `C_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`SNO`, `P_id`, `C_id`) VALUES
(808, 231, 300),
(809, 232, 300),
(810, 233, 300),
(811, 234, 300),
(812, 235, 300);

-- --------------------------------------------------------

--
-- Table structure for table `visitedby`
--

CREATE TABLE `visitedby` (
  `VNO` int(11) NOT NULL,
  `N_id` int(11) NOT NULL,
  `C_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitedby`
--

INSERT INTO `visitedby` (`VNO`, `N_id`, `C_id`) VALUES
(500, 100, 300),
(507, 100, 300),
(508, 101, 300),
(509, 100, 304),
(510, 101, 304),
(511, 101, 304),
(512, 100, 300),
(513, 101, 300),
(514, 100, 300),
(515, 100, 300),
(516, 101, 300),
(517, 101, 300),
(518, 101, 300),
(519, 100, 300),
(520, 101, 300),
(521, 100, 300);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`BNO`),
  ADD KEY `P_id` (`P_id`),
  ADD KEY `C_id` (`C_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`C_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`E_id`),
  ADD KEY `N_id` (`N_id`);

--
-- Indexes for table `looksafter`
--
ALTER TABLE `looksafter`
  ADD PRIMARY KEY (`LID`),
  ADD KEY `E_id` (`E_id`),
  ADD KEY `P_id` (`P_id`);

--
-- Indexes for table `nursery`
--
ALTER TABLE `nursery`
  ADD PRIMARY KEY (`N_id`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`P_id`),
  ADD KEY `N_id` (`N_id`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`SNO`),
  ADD KEY `P_id` (`P_id`),
  ADD KEY `C_id` (`C_id`);

--
-- Indexes for table `visitedby`
--
ALTER TABLE `visitedby`
  ADD PRIMARY KEY (`VNO`),
  ADD KEY `N_id` (`N_id`),
  ADD KEY `C_id` (`C_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buy`
--
ALTER TABLE `buy`
  MODIFY `BNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `C_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `E_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT for table `looksafter`
--
ALTER TABLE `looksafter`
  MODIFY `LID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=656;

--
-- AUTO_INCREMENT for table `nursery`
--
ALTER TABLE `nursery`
  MODIFY `N_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `P_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `sell`
--
ALTER TABLE `sell`
  MODIFY `SNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=813;

--
-- AUTO_INCREMENT for table `visitedby`
--
ALTER TABLE `visitedby`
  MODIFY `VNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buy`
--
ALTER TABLE `buy`
  ADD CONSTRAINT `buy_ibfk_1` FOREIGN KEY (`P_id`) REFERENCES `plants` (`P_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `buy_ibfk_2` FOREIGN KEY (`C_id`) REFERENCES `customers` (`C_id`) ON DELETE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`N_id`) REFERENCES `nursery` (`N_id`) ON DELETE CASCADE;

--
-- Constraints for table `looksafter`
--
ALTER TABLE `looksafter`
  ADD CONSTRAINT `looksafter_ibfk_1` FOREIGN KEY (`E_id`) REFERENCES `employees` (`E_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `looksafter_ibfk_2` FOREIGN KEY (`P_id`) REFERENCES `plants` (`P_id`) ON DELETE CASCADE;

--
-- Constraints for table `plants`
--
ALTER TABLE `plants`
  ADD CONSTRAINT `plants_ibfk_1` FOREIGN KEY (`N_id`) REFERENCES `nursery` (`N_id`) ON DELETE CASCADE;

--
-- Constraints for table `sell`
--
ALTER TABLE `sell`
  ADD CONSTRAINT `sell_ibfk_1` FOREIGN KEY (`P_id`) REFERENCES `plants` (`P_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sell_ibfk_2` FOREIGN KEY (`C_id`) REFERENCES `customers` (`C_id`) ON DELETE CASCADE;

--
-- Constraints for table `visitedby`
--
ALTER TABLE `visitedby`
  ADD CONSTRAINT `visitedby_ibfk_1` FOREIGN KEY (`N_id`) REFERENCES `nursery` (`N_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visitedby_ibfk_2` FOREIGN KEY (`C_id`) REFERENCES `customers` (`C_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
