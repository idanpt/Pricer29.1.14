-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 02, 2014 at 10:07 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pricer`
--
CREATE DATABASE IF NOT EXISTS `pricer` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pricer`;

-- --------------------------------------------------------

--
-- Table structure for table `new_table`
--

CREATE TABLE IF NOT EXISTS `new_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `country` varchar(30) NOT NULL,
  `currency` text NOT NULL,
  `steel` int(11) NOT NULL,
  `wood` int(11) NOT NULL,
  `plastic` int(11) NOT NULL,
  `glass` int(11) NOT NULL,
  `other_material` varchar(30) NOT NULL,
  `other_price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `new_table`
--

INSERT INTO `new_table` (`id`, `name`, `country`, `currency`, `steel`, `wood`, `plastic`, `glass`, `other_material`, `other_price`) VALUES
(1, 'idan', '', '', 154, 154, 154, 154, '', 0),
(2, 'idan', '', '', 154, 39, 43, 456, '', 0),
(3, 'moshe', '', '', 0, 0, 43, 456, '', 0),
(4, 'yossi', '', 'dollars', 20, 30, 78, 90, '', 0),
(5, 'yossi', '', 'dollars', 20, 30, 78, 90, '', 0),
(6, 'yossi', '', 'dollars', 20, 30, 78, 90, '', 0),
(7, 'yossi', '', 'dollars', 20, 30, 78, 90, '', 0),
(8, 'moti', '', 'dollars', 34, 24, 46, 57, '', 0),
(9, 'motiOUTR', '', 'dollars', 345, 24, 46, 0, '', 0),
(10, 'motiOUTR', '', 'dollars', 345, 24, 46, 234, '', 0),
(11, 'motiOUTR', '', 'dollars', 345, 24, 0, 234, '', 0),
(12, 'yogev', '', 'dollars', 23423, 3453, 3456, 45745, '', 0),
(13, 'milo', '', 'dollars', 235, 34, 658, 34536, '', 0),
(14, 'milo', '', 'dollars', 235, 34, 658, 34536, '', 0),
(15, 'milo', '', 'dollars', 235, 34, 658, 0, '', 0),
(16, 'milo', '', 'dollars', 235, 34, 658, 47, '', 0),
(17, 'milo', '', 'dollars', 745, 34, 658, 6789, '', 0),
(18, 'miko', '', 'dollars', 345, 6547, 123, 86, '', 0),
(19, 'mor', '', 'dollars', 149, 35, 987, 987, '', 0),
(20, 'mor', '', 'dollars', 149, 35, 987, 987, '', 0),
(21, 'mor', '', 'dollars', 149, 35, 987, 987, '', 0),
(22, 'mor', '', 'dollars', 149, 35, 987, 987, '', 0),
(23, 'kobi', '', 'Euros', 198, 204, 89, 65, '', 0),
(24, 'shmulen', '', 'dollars', 346, 986, 33, 88, '', 0),
(25, 'shmulen', '', 'dollars', 346, 986, 33, 88, '', 0),
(26, 'shmulen', '', 'dollars', 346, 986, 33, 88, '', 0),
(27, 'shmulen', '', 'dollars', 346, 986, 33, 88, '', 0),
(28, 'mohamad', 'Afghanistan', 'dollars', 457, 78, 234, 567567, '', 0),
(29, 'ghgh', 'Afghanistan', 'dollars', 457, 74, 589, 887, '', 0),
(30, 'idan', 'Afghanistan', 'dollars', 344, 298, 378, 436, '', 0),
(31, 'monb', 'Afghanistan', 'dollars', 457, 74, 987, 65, '', 0),
(32, 'monb', 'Afghanistan', 'dollars', 457, 74, 987, 65, 'mnb', 34535),
(33, 'monb', 'Afghanistan', 'dollars', 457, 74, 987, 65, 'mnb', 34535),
(34, 'monb', 'Afghanistan', 'dollars', 457, 74, 987, 65, 'mnb', 34535),
(35, 'monb', 'Afghanistan', 'dollars', 457, 74, 987, 65, 'mnb', 34535),
(36, 'monb', 'Afghanistan', 'dollars', 457, 74, 987, 65, 'mnb', 34535),
(37, 'monb', 'Aruba', 'dollars', 457, 74, 987, 65, 'mnb', 34535),
(38, 'yossi', 'Israel', 'dollars', 1, 2, 3, 4, 'simcha', 200);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
