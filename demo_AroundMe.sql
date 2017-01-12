-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 25, 2016 at 03:39 PM
-- Server version: 5.7.15-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo_AroundMe`
--

-- --------------------------------------------------------

--
-- Table structure for table `AddLocation`
--

CREATE TABLE `AddLocation` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Latitude` varchar(50) NOT NULL,
  `Longtitude` varchar(50) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `OpenHours` varchar(50) NOT NULL,
  `Website` varchar(225) NOT NULL,
  `Photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AddLocation`
--

INSERT INTO `AddLocation` (`ID`, `Name`, `Address`, `Latitude`, `Longtitude`, `Category`, `OpenHours`, `Website`, `Photo`) VALUES
(1, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'),
(2, 'aa', 'bb', 'cc', 'dd', 'ee', 'ff', 'gg', 'hh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AddLocation`
--
ALTER TABLE `AddLocation`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AddLocation`
--
ALTER TABLE `AddLocation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
