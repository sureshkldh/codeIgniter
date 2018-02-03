-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2018 at 12:50 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `codeigniter`
--
CREATE DATABASE IF NOT EXISTS `codeigniter` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `codeigniter`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `password`) VALUES
(2, 'dfgfdgdsfdsfs', 'dfgdfgdf'),
(3, 'dfgfdg2 2 222', 'dfgdfgdf 2 2 2'),
(4, 'DGFGDFSGF', '4322424'),
(5, 'dsfd', 'sdfsdf'),
(6, '45', 'dfgdfgdf'),
(7, 'dffdsfds', 'dsfdsf'),
(8, '55', '55'),
(9, 'dsfs', 'dsf'),
(10, 'dsfds', 'dfdsf'),
(11, 'dsfds', 'dfdsf'),
(12, 'ff', 'ff'),
(13, 'ff', 'ff'),
(14, 'sdfdsf', 'dsfdsfd'),
(15, 'dsfdfds', 'dsfdsf'),
(16, 'gg', 'gg'),
(17, 'dd', 'dd'),
(18, 'divdeep', 'danny'),
(19, 'deevdip', 'danny');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `mod_modulegroupcode` varchar(25) NOT NULL,
  `mod_modulegroupname` varchar(50) NOT NULL,
  `mod_modulecode` varchar(25) NOT NULL,
  `mod_modulename` varchar(50) NOT NULL,
  `mod_modulegrouporder` int(3) NOT NULL,
  `mod_moduleorder` int(3) NOT NULL,
  `mod_modulepagename` varchar(255) NOT NULL,
  PRIMARY KEY (`mod_modulegroupcode`,`mod_modulecode`),
  UNIQUE KEY `mod_modulecode` (`mod_modulecode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(150) CHARACTER SET latin1 NOT NULL,
  `mobile` varchar(20) CHARACTER SET latin1 NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `address`) VALUES
(1, 'Al-Amin Khan', 'al@min.com', '6546464', 'Dhaka,Bangladesh'),
(2, 'Sahed Bhuiyan', 's@hed.com', '987979', 'Khulna, Bangladesh'),
(3, 'Mamun', 'm@mun.com', '646465', 'Bikrom Pur'),
(9, 'foysal1', 'foysal@yahoo.com', '1234556', 'Dhaka, Bangladesh.'),
(36, 'Masdu', 'masud.eden@gmail.com', '0432324', 'Dhaka,Bangladesh'),
(37, 'Masdu', 'masud.eden@gmail.com', '0432324', 'Dhaka,Bangladesh'),
(38, 'sd', 'ADSa', 'asdAD', 'Adsas'),
(39, 'Al-Amin Khan', 'al@min.com', '6546464', 'Dhaka,Bangladesh'),
(40, 'Sahed Bhuiyan', 's@hed.com', '987979', 'Khulna, Bangladesh'),
(41, 'Mamun', 'm@mun.com', '646465', 'Bikrom Pur'),
(42, 'foysal1', 'foysal@yahoo.com', '1234556', 'Dhaka, Bangladesh.'),
(43, 'Masdu', 'masud.eden@gmail.com', '0432324', 'Dhaka,Bangladesh'),
(44, 'Masdu', 'masud.eden@gmail.com', '0432324', 'Dhaka,Bangladesh'),
(45, 'sd', 'ADSa', 'asdAD', 'Adsas'),
(46, 'Al-Amin Khan', 'al@min.com', '6546464', 'Dhaka,Bangladesh'),
(47, 'Sahed Bhuiyan', 's@hed.com', '987979', 'Khulna, Bangladesh'),
(48, 'Mamun', 'm@mun.com', '646465', 'Bikrom Pur'),
(49, 'foysal1', 'foysal@yahoo.com', '1234556', 'Dhaka, Bangladesh.'),
(50, 'Masdu', 'masud.eden@gmail.com', '0432324', 'Dhaka,Bangladesh'),
(51, 'Masdu', 'masud.eden@gmail.com', '0432324', 'Dhaka,Bangladesh'),
(52, 'sd', 'ADSa', 'asdAD', 'Adsas'),
(53, 'Al-Amin Khan', 'al@min.com', '6546464', 'Dhaka,Bangladesh'),
(54, 'Sahed Bhuiyan', 's@hed.com', '987979', 'Khulna, Bangladesh'),
(55, 'Mamun', 'm@mun.com', '646465', 'Bikrom Pur'),
(56, 'foysal1', 'foysal@yahoo.com', '1234556', 'Dhaka, Bangladesh.'),
(57, 'Masdu', 'masud.eden@gmail.com', '0432324', 'Dhaka,Bangladesh'),
(58, 'Masdu', 'masud.eden@gmail.com', '0432324', 'Dhaka,Bangladesh'),
(59, 'sd', 'ADSa', 'asdAD', 'Adsas');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
