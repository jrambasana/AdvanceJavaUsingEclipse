-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 23, 2021 at 07:49 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajpprogram3db`
--

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
CREATE TABLE IF NOT EXISTS `registrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enrollment` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `semester` int(2) NOT NULL,
  `phone` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `enrollment`, `fname`, `lname`, `semester`, `phone`) VALUES
(1, '1001', 'ABC', 'XYZ', 5, '987654321'),
(2, '1002', 'XYZ', 'ABC', 4, '12345678'),
(3, '1003', 'ABCD', 'ZYXXX', 2, '876552334');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
