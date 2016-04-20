-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2016 at 08:32 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pendaftaranrs`
--

-- --------------------------------------------------------

--
-- Table structure for table `antrian_pemeriksaans`
--

CREATE TABLE IF NOT EXISTS `antrian_pemeriksaans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pasienId` int(11) NOT NULL,
  `poliklinikId` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_daftar` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pasienId` (`pasienId`),
  KEY `poliklinikId` (`poliklinikId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=103 ;

--
-- Dumping data for table `antrian_pemeriksaans`
--

INSERT INTO `antrian_pemeriksaans` (`id`, `pasienId`, `poliklinikId`, `status`, `tanggal`, `waktu_daftar`) VALUES
(67, 4, 2, 0, '2015-12-02', '10:34:25'),
(68, 3, 6, 1, '2015-12-02', '10:37:26'),
(69, 3, 6, 0, '2015-12-02', '10:37:53'),
(70, 7, 6, 0, '2015-12-02', '10:39:35'),
(74, 2, 1, 1, '2015-12-25', '06:50:36'),
(75, 1, 1, 0, '2015-12-25', '06:56:44'),
(76, 8, 1, 0, '2015-12-25', '14:05:45'),
(77, 2, 1, 0, '2015-12-25', '14:04:19'),
(78, 1, 1, 0, '2015-12-25', '14:05:48'),
(79, 6, 1, 1, '2015-12-25', '10:33:00'),
(80, 3, 1, 0, '2015-12-29', '09:44:59'),
(81, 5, 1, 0, '2015-12-29', '09:46:53'),
(82, 2, 1, 0, '2015-12-29', '16:23:06'),
(83, 9, 1, 0, '2015-12-29', '16:23:13'),
(84, 5, 1, 1, '2015-12-29', '16:22:59'),
(85, 1, 1, 1, '2016-01-07', '08:22:53'),
(86, 2, 1, 0, '2016-01-07', '08:23:04'),
(87, 4, 1, 0, '2016-01-07', '08:35:32'),
(88, 2, 1, 1, '2016-01-19', '07:32:43'),
(89, 4, 1, 0, '2016-01-19', '07:32:44'),
(90, 6, 1, 0, '2016-01-19', '07:33:54'),
(91, 5, 1, 0, '2016-01-19', '07:33:55'),
(92, 2, 1, 1, '2016-01-21', '11:26:35'),
(93, 3, 1, 1, '2016-01-21', '11:26:41'),
(94, 9, 1, 1, '2016-01-21', '11:31:29'),
(95, 1, 6, 0, '2016-01-21', '13:41:19'),
(96, 1, 1, 1, '2016-01-21', '13:52:17'),
(97, 2, 1, 1, '2016-01-21', '13:52:35'),
(98, 3, 1, 1, '2016-01-21', '13:52:49'),
(99, 8, 1, 1, '2016-01-21', '13:53:01'),
(100, 9, 1, 1, '2016-01-21', '13:53:21'),
(101, 8, 1, 0, '2016-01-21', '14:45:57'),
(102, 9, 1, 0, '2016-01-21', '14:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `pasiens`
--

CREATE TABLE IF NOT EXISTS `pasiens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `pasiens`
--

INSERT INTO `pasiens` (`id`, `nama`) VALUES
(1, 'draxler'),
(2, 'rian'),
(3, 'krixar'),
(4, 'ivanovic'),
(5, 'olic'),
(6, 'bandrex'),
(7, 'barack'),
(8, 'belixy'),
(9, 'raven'),
(10, 'radclife');

-- --------------------------------------------------------

--
-- Table structure for table `pembayarans`
--

CREATE TABLE IF NOT EXISTS `pembayarans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pasienId` int(11) NOT NULL,
  `poliklinikId` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_daftar` time NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `pasienId` (`pasienId`),
  KEY `poliklinikId` (`poliklinikId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `pembayarans`
--

INSERT INTO `pembayarans` (`id`, `pasienId`, `poliklinikId`, `status`, `tanggal`, `waktu_daftar`) VALUES
(1, 1, 1, 0, '2015-12-12', '00:00:00'),
(2, 6, 1, 0, '2015-12-12', '00:20:00'),
(3, 5, 1, 0, '2015-12-12', '12:00:01'),
(4, 2, 1, 0, '2015-12-12', '10:00:01'),
(5, 3, 1, 0, '2015-12-12', '12:20:01'),
(6, 4, 1, 0, '2015-12-12', '13:00:03'),
(7, 1, 1, 0, '2015-12-25', '13:59:49'),
(8, 2, 1, 0, '2015-12-25', '06:08:48'),
(9, 2, 1, 0, '2015-12-25', '14:01:57'),
(10, 8, 1, 0, '2015-12-25', '14:01:54'),
(11, 6, 1, 0, '2015-12-25', '13:59:46'),
(12, 2, 1, 1, '2015-12-29', '09:44:41'),
(13, 3, 1, 1, '2015-12-29', '09:42:31'),
(14, 5, 1, 1, '2015-12-29', '09:43:31'),
(15, 4, 1, 0, '2015-12-29', '16:21:43'),
(16, 5, 1, 1, '2015-12-29', '16:21:48'),
(17, 9, 1, 1, '2015-12-29', '16:21:41'),
(18, 1, 1, 1, '2016-01-07', '08:20:59'),
(19, 4, 1, 1, '2016-01-07', '08:21:51'),
(20, 2, 1, 1, '2016-01-07', '08:22:02'),
(21, 3, 1, 0, '2016-01-07', '08:23:26'),
(22, 6, 1, 0, '2016-01-07', '08:33:52'),
(23, 2, 1, 1, '2016-01-19', '07:31:35'),
(24, 4, 1, 1, '2016-01-19', '07:31:45'),
(25, 5, 1, 1, '2016-01-19', '07:31:48'),
(26, 6, 1, 1, '2016-01-19', '07:31:51'),
(27, 2, 1, 1, '2016-01-21', '11:25:32'),
(28, 3, 1, 1, '2016-01-21', '11:25:45'),
(29, 4, 1, 0, '2016-01-21', '14:43:57'),
(30, 8, 1, 1, '2016-01-21', '11:29:06'),
(31, 9, 1, 1, '2016-01-21', '11:29:09'),
(32, 1, 6, 1, '2016-01-21', '13:40:59'),
(33, 1, 1, 1, '2016-01-21', '13:51:58'),
(34, 2, 1, 1, '2016-01-21', '13:52:30'),
(35, 3, 1, 1, '2016-01-21', '13:52:44'),
(36, 8, 1, 1, '2016-01-21', '13:52:59'),
(37, 9, 1, 1, '2016-01-21', '13:53:16'),
(38, 9, 1, 1, '2016-01-21', '14:43:16'),
(39, 4, 4, 0, '2016-01-21', '14:47:25'),
(40, 4, 4, 0, '2016-01-21', '14:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `polikliniks`
--

CREATE TABLE IF NOT EXISTS `polikliniks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `polikliniks`
--

INSERT INTO `polikliniks` (`id`, `nama`) VALUES
(1, 'THT'),
(2, 'Paru-Paru'),
(3, 'Ginjal'),
(4, 'Penyakit Dalam'),
(5, 'Tulang'),
(6, 'Kulit '),
(7, 'Kecantikan'),
(8, 'Gigi'),
(9, 'Anak'),
(10, 'Gizi');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `antrian_pemeriksaans`
--
ALTER TABLE `antrian_pemeriksaans`
  ADD CONSTRAINT `antrian_pemeriksaans_ibfk_1` FOREIGN KEY (`poliklinikId`) REFERENCES `polikliniks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `antrian_pemeriksaans_ibfk_2` FOREIGN KEY (`pasienId`) REFERENCES `pasiens` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD CONSTRAINT `pembayarans_ibfk_1` FOREIGN KEY (`poliklinikId`) REFERENCES `polikliniks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
