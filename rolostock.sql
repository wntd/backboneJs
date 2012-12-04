-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 04, 2012 at 01:22 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wlf-database`
--

-- --------------------------------------------------------

--
-- Table structure for table `rolostock`
--

CREATE TABLE IF NOT EXISTS `rolostock` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `item` varchar(100) CHARACTER SET utf8 NOT NULL,
  `asa` int(4) NOT NULL,
  `tipo` int(3) NOT NULL,
  `validade` varchar(7) CHARACTER SET utf8 NOT NULL,
  `valor` varchar(7) CHARACTER SET utf8 NOT NULL,
  `stock` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Rolos em Stock' AUTO_INCREMENT=15 ;

--
-- Dumping data for table `rolostock`
--

INSERT INTO `rolostock` (`id`, `item`, `asa`, `tipo`, `validade`, `valor`, `stock`) VALUES
(1, 'Fuji C200', 200, 35, '12-2011', '1,6', 0),
(2, 'Agfa Vista', 100, 35, '03-2003', '1', 0),
(3, 'Agfa Vista', 100, 35, '06-2004', '1,25', 0),
(4, 'Agfa Vista', 100, 35, '06-2008', '1,4', 0),
(5, 'Agfa Vista', 200, 35, '06-2005', '1.2', 0),
(6, 'Foto Quelle Premicolor', 200, 35, '07-2011', '1.25', 0),
(7, 'Fuji C200', 200, 35, '11-2011', '1.6', 0),
(8, 'Fuji C200', 200, 35, '02-2012', '1.6', 0),
(9, 'Fuji Reala', 100, 35, '09-2007', '2.2', 0),
(10, 'Fuji Superia', 100, 35, '12-2003', '1', 0),
(11, 'Fuji Velvia', 100, 120, '05-2012', '3,3', 0),
(12, 'Fuji X-Tra', 400, 35, '10-2005', '1,4', 0),
(13, 'Fuji Neopan SS', 100, 35, '01-2013', '3,7', 0),
(14, 'Polaroid Fun Shooter', 100, 35, '12-2011', '1,65', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
