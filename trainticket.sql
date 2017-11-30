-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2017 at 01:58 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `trainticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabins`
--

CREATE TABLE IF NOT EXISTS `cabins` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `cabin1` text NOT NULL,
  `cabin2` text NOT NULL,
  `cabin3` text NOT NULL,
  `cabin4` text NOT NULL,
  `cabin5` text NOT NULL,
  `cabin6` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cabins`
--

INSERT INTO `cabins` (`id`, `cabin1`, `cabin2`, `cabin3`, `cabin4`, `cabin5`, `cabin6`) VALUES
(1, '1_1#1_2#8_1#4_2#5_4#5_5#', '3_1#3_4#4_2#4_1#', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
