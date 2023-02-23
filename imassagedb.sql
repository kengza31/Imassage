-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 04:49 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imassagedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID_admin` int(1) NOT NULL,
  `User_admin` varchar(8) NOT NULL,
  `Password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID_admin`, `User_admin`, `Password`) VALUES
(1, 'admin', 'admin'),
(7, 'dasdasda', 'qqq'),
(8, 'adminaaa', '112345'),
(9, 'ss', '1123dd45'),
(10, 'qqer', 'fx');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `ID_course` int(11) NOT NULL,
  `Details_ course` varchar(255) NOT NULL,
  `Price_ course` varchar(255) NOT NULL,
  `Hour_ course` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID_Cust` int(11) NOT NULL,
  `Firstname_cust` varchar(50) DEFAULT NULL,
  `Lastname_cust` varchar(50) DEFAULT NULL,
  `Tel_cust` varchar(11) DEFAULT NULL,
  `Datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `masseuse`
--

CREATE TABLE `masseuse` (
  `ID_masseuse` int(11) NOT NULL,
  `Name_ masseuse` varchar(50) NOT NULL,
  `license` varchar(255) NOT NULL,
  `Pic_ masseuse` varchar(255) NOT NULL,
  `ID_Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `ID_ payment` int(11) NOT NULL,
  `UID_ payment` varchar(10) NOT NULL,
  `ID_ Customer` int(1) NOT NULL,
  `Date_ payment` varchar(255) NOT NULL,
  `Status_ payment` int(1) NOT NULL,
  `ID_admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID_Product` int(11) NOT NULL,
  `Name_Product` varchar(255) NOT NULL,
  `Details_Product` varchar(255) NOT NULL,
  `Pic_Product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID_Product`, `Name_Product`, `Details_Product`, `Pic_Product`) VALUES
(1, 'น้ำมัน', 'xxxxxxxxxx', 'xxxx.jpg'),
(2, 'dsa', 'dsa', 'dsa');

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `ID_reserve` int(11) NOT NULL,
  `UID_reserve` varchar(10) NOT NULL,
  `ID_ Customer` int(11) NOT NULL,
  `ID_ masseuse` int(11) NOT NULL,
  `ID_ course` int(11) NOT NULL,
  `Total_Price_ course` int(11) NOT NULL,
  `Total_Hour_ course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `ID_Status` int(1) NOT NULL,
  `Status` int(1) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_admin`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`ID_course`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID_Cust`);

--
-- Indexes for table `masseuse`
--
ALTER TABLE `masseuse`
  ADD PRIMARY KEY (`ID_masseuse`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`ID_ payment`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID_Product`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`ID_reserve`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID_admin` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `ID_course` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `ID_Cust` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `masseuse`
--
ALTER TABLE `masseuse`
  MODIFY `ID_masseuse` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `ID_ payment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID_Product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `ID_reserve` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
