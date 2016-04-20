-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2016 at 01:27 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pasarmantap`
--

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE IF NOT EXISTS `banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `nama`) VALUES
(1, 'Mandiri Syariah'),
(2, 'Muamalat'),
(3, 'BRI Syariah'),
(4, 'BNI Syariah'),
(5, 'BJB Syariah'),
(6, 'Bank Sultra'),
(7, 'Mandiri'),
(8, 'BNI');

-- --------------------------------------------------------

--
-- Table structure for table `etalases`
--

CREATE TABLE IF NOT EXISTS `etalases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(60) NOT NULL,
  `TokoId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `etalases`
--

INSERT INTO `etalases` (`id`, `nama`, `TokoId`) VALUES
(1, 'buku', 1),
(2, 'laptop apple', 1),
(6, 'baju', 1),
(7, '', 1),
(8, 'baju', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
  `id` varchar(40) NOT NULL,
  `transaksiId` int(11) NOT NULL,
  `tokoId` int(11) NOT NULL,
  `penerimaId` int(11) NOT NULL,
  `total_berat` int(11) NOT NULL,
  `ongkos_kirim` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kecamatanId` (`total_berat`),
  KEY `kecamatanId_2` (`total_berat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `transaksiId`, `tokoId`, `penerimaId`, `total_berat`, `ongkos_kirim`, `total_harga`, `keterangan`) VALUES
('INV/1455937845644/1544', 58, 1, 1, 11000, 20000, 1505000, '-'),
('INV/1455937845645/9523', 58, 2, 1, 2000, 20000, 100020000, '-'),
('INV/1457282184142/4064', 59, 1, 1, 11000, 20000, 1505000, '-'),
('INV/1457282184146/8393', 59, 2, 1, 2000, 20000, 100020000, '-'),
('INV/1457435822123/4385', 60, 1, 1, 11000, 20000, 1505000, '-'),
('INV/1457435822123/8528', 60, 2, 1, 2000, 20000, 100020000, '-'),
('INV/1458520760887/2940', 61, 1, 1, 2, 5000, 3, '-'),
('INV/1458522371499/3268', 62, 1, 1, 1, 5000, 1, '-'),
('INV/1458524904884/6476', 63, 1, 1, 2, 5000, 3, '-'),
('INV/1458525953859/7390', 64, 1, 1, 2, 5000, 3, '-');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_produks`
--

CREATE TABLE IF NOT EXISTS `invoice_produks` (
  `invoiceId` varchar(40) NOT NULL,
  `produkId` int(11) NOT NULL,
  `jumlah_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_produks`
--

INSERT INTO `invoice_produks` (`invoiceId`, `produkId`, `jumlah_produk`) VALUES
('INV/1455937845644/1544', 1, 10),
('INV/1455937845644/1544', 2, 100),
('INV/1455937845645/9523', 18, 5),
('INV/1457282184142/4064', 1, 10),
('INV/1457282184142/4064', 2, 100),
('INV/1457282184146/8393', 18, 5),
('INV/1457435822123/4385', 1, 10),
('INV/1457435822123/4385', 2, 100),
('INV/1457435822123/8528', 18, 5),
('INV/1458520760887/2940', 2, 1),
('INV/1458520760887/2940', 1, 1),
('INV/1458522371499/3268', 1, 1),
('INV/1458524904884/6476', 2, 1),
('INV/1458524904884/6476', 1, 1),
('INV/1458525953859/7390', 2, 1),
('INV/1458525953859/7390', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_statuses`
--

CREATE TABLE IF NOT EXISTS `invoice_statuses` (
  `invoiceId` varchar(60) NOT NULL,
  `statusId` int(11) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_statuses`
--

INSERT INTO `invoice_statuses` (`invoiceId`, `statusId`, `waktu`) VALUES
('INV/1455937845644/1544', 1, '2016-02-21 08:11:31'),
('INV/1455937845645/9523', 0, '2016-02-20 03:19:15'),
('INV/1455937845645/9523', 1, '2016-02-29 04:20:13'),
('INV/1455937845644/1544', 0, '2016-02-12 04:06:22'),
('INV/1455937845644/1544', 2, '2016-03-16 05:24:15'),
('INV/1455937845644/1544', 3, '2016-03-29 05:09:33'),
('INV/1455937845645/9523', 2, '2016-03-31 00:00:00'),
('INV/1455937845644/1544', 4, '2016-03-23 00:00:00'),
('INV/1457282184142/4064', 1, '2016-03-24 00:00:00'),
('INV/1457282184142/4064', 2, '2016-03-24 00:00:00'),
('INV/1457282184142/4064', 3, '2016-03-24 00:00:00'),
('INV/1457282184142/4064', 0, '2016-03-24 00:00:00'),
('INV/1455937845644/1544', 5, '2016-03-24 00:00:00'),
('INV/1455937845644/1544', 6, '2016-03-24 00:00:00'),
('sss', 0, '2016-03-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kabupatens`
--

CREATE TABLE IF NOT EXISTS `kabupatens` (
  `id` int(11) NOT NULL DEFAULT '0',
  `Nama` varchar(41) CHARACTER SET utf8 DEFAULT NULL,
  `kode_pos` int(11) DEFAULT NULL,
  `ProvinsiId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kabupatens`
--

INSERT INTO `kabupatens` (`id`, `Nama`, `kode_pos`, `ProvinsiId`) VALUES
(1, 'Aceh Barat', 23681, 21),
(2, 'Aceh Barat Daya', 23764, 21),
(3, 'Aceh Besar', 23951, 21),
(4, 'Aceh Jaya', 23654, 21),
(5, 'Aceh Selatan', 23719, 21),
(6, 'Aceh Singkil', 24785, 21),
(7, 'Aceh Tamiang', 24476, 21),
(8, 'Aceh Tengah', 24511, 21),
(9, 'Aceh Tenggara', 24611, 21),
(10, 'Aceh Timur', 24454, 21),
(11, 'Aceh Utara', 24382, 21),
(12, 'Agam', 26411, 32),
(13, 'Alor', 85811, 23),
(14, 'Ambon', 97222, 19),
(15, 'Asahan', 21214, 34),
(16, 'Asmat', 99777, 24),
(17, 'Badung', 80351, 1),
(18, 'Balangan', 71611, 13),
(19, 'Balikpapan', 76111, 15),
(20, 'Banda Aceh', 23238, 21),
(21, 'Bandar Lampung', 35139, 18),
(22, 'Bandung', 40311, 9),
(23, 'Bandung', 40115, 9),
(24, 'Bandung Barat', 40721, 9),
(25, 'Banggai', 94711, 29),
(26, 'Banggai Kepulauan', 94881, 29),
(27, 'Bangka', 33212, 2),
(28, 'Bangka Barat', 33315, 2),
(29, 'Bangka Selatan', 33719, 2),
(30, 'Bangka Tengah', 33613, 2),
(31, 'Bangkalan', 69118, 11),
(32, 'Bangli', 80619, 1),
(33, 'Banjar', 70619, 13),
(34, 'Banjar', 46311, 9),
(35, 'Banjarbaru', 70712, 13),
(36, 'Banjarmasin', 70117, 13),
(37, 'Banjarnegara', 53419, 10),
(38, 'Bantaeng', 92411, 28),
(39, 'Bantul', 55715, 5),
(40, 'Banyuasin', 30911, 33),
(41, 'Banyumas', 53114, 10),
(42, 'Banyuwangi', 68416, 11),
(43, 'Barito Kuala', 70511, 13),
(44, 'Barito Selatan', 73711, 14),
(45, 'Barito Timur', 73671, 14),
(46, 'Barito Utara', 73881, 14),
(47, 'Barru', 90719, 28),
(48, 'Batam', 29413, 17),
(49, 'Batang', 51211, 10),
(50, 'Batang Hari', 36613, 8),
(51, 'Batu', 65311, 11),
(52, 'Batu Bara', 21655, 34),
(53, 'Bau-Bau', 93719, 30),
(54, 'Bekasi', 17837, 9),
(55, 'Bekasi', 17121, 9),
(56, 'Belitung', 33419, 2),
(57, 'Belitung Timur', 33519, 2),
(58, 'Belu', 85711, 23),
(59, 'Bener Meriah', 24581, 21),
(60, 'Bengkalis', 28719, 26),
(61, 'Bengkayang', 79213, 12),
(62, 'Bengkulu', 38229, 4),
(63, 'Bengkulu Selatan', 38519, 4),
(64, 'Bengkulu Tengah', 38319, 4),
(65, 'Bengkulu Utara', 38619, 4),
(66, 'Berau', 77311, 15),
(67, 'Biak Numfor', 98119, 24),
(68, 'Bima', 84171, 22),
(69, 'Bima', 84139, 22),
(70, 'Binjai', 20712, 34),
(71, 'Bintan', 29135, 17),
(72, 'Bireuen', 24219, 21),
(73, 'Bitung', 95512, 31),
(74, 'Blitar', 66171, 11),
(75, 'Blitar', 66124, 11),
(76, 'Blora', 58219, 10),
(77, 'Boalemo', 96319, 7),
(78, 'Bogor', 16911, 9),
(79, 'Bogor', 16119, 9),
(80, 'Bojonegoro', 62119, 11),
(81, 'Bolaang Mongondow (Bolmong)', 95755, 31),
(82, 'Bolaang Mongondow Selatan', 95774, 31),
(83, 'Bolaang Mongondow Timur', 95783, 31),
(84, 'Bolaang Mongondow Utara', 95765, 31),
(85, 'Bombana', 93771, 30),
(86, 'Bondowoso', 68219, 11),
(87, 'Bone', 92713, 28),
(88, 'Bone Bolango', 96511, 7),
(89, 'Bontang', 75313, 15),
(90, 'Boven Digoel', 99662, 24),
(91, 'Boyolali', 57312, 10),
(92, 'Brebes', 52212, 10),
(93, 'Bukittinggi', 26115, 32),
(94, 'Buleleng', 81111, 1),
(95, 'Bulukumba', 92511, 28),
(96, 'Bulungan (Bulongan)', 77211, 16),
(97, 'Bungo', 37216, 8),
(98, 'Buol', 94564, 29),
(99, 'Buru', 97371, 19),
(100, 'Buru Selatan', 97351, 19),
(101, 'Buton', 93754, 30),
(102, 'Buton Utara', 93745, 30),
(103, 'Ciamis', 46211, 9),
(104, 'Cianjur', 43217, 9),
(105, 'Cilacap', 53211, 10),
(106, 'Cilegon', 42417, 3),
(107, 'Cimahi', 40512, 9),
(108, 'Cirebon', 45611, 9),
(109, 'Cirebon', 45116, 9),
(110, 'Dairi', 22211, 34),
(111, 'Deiyai (Deliyai)', 98784, 24),
(112, 'Deli Serdang', 20511, 34),
(113, 'Demak', 59519, 10),
(114, 'Denpasar', 80227, 1),
(115, 'Depok', 16416, 9),
(116, 'Dharmasraya', 27612, 32),
(117, 'Dogiyai', 98866, 24),
(118, 'Dompu', 84217, 22),
(119, 'Donggala', 94341, 29),
(120, 'Dumai', 28811, 26),
(121, 'Empat Lawang', 31811, 33),
(122, 'Ende', 86351, 23),
(123, 'Enrekang', 91719, 28),
(124, 'Fakfak', 98651, 25),
(125, 'Flores Timur', 86213, 23),
(126, 'Garut', 44126, 9),
(127, 'Gayo Lues', 24653, 21),
(128, 'Gianyar', 80519, 1),
(129, 'Gorontalo', 96218, 7),
(130, 'Gorontalo', 96115, 7),
(131, 'Gorontalo Utara', 96611, 7),
(132, 'Gowa', 92111, 28),
(133, 'Gresik', 61115, 11),
(134, 'Grobogan', 58111, 10),
(135, 'Gunung Kidul', 55812, 5),
(136, 'Gunung Mas', 74511, 14),
(137, 'Gunungsitoli', 22813, 34),
(138, 'Halmahera Barat', 97757, 20),
(139, 'Halmahera Selatan', 97911, 20),
(140, 'Halmahera Tengah', 97853, 20),
(141, 'Halmahera Timur', 97862, 20),
(142, 'Halmahera Utara', 97762, 20),
(143, 'Hulu Sungai Selatan', 71212, 13),
(144, 'Hulu Sungai Tengah', 71313, 13),
(145, 'Hulu Sungai Utara', 71419, 13),
(146, 'Humbang Hasundutan', 22457, 34),
(147, 'Indragiri Hilir', 29212, 26),
(148, 'Indragiri Hulu', 29319, 26),
(149, 'Indramayu', 45214, 9),
(150, 'Intan Jaya', 98771, 24),
(151, 'Jakarta Barat', 11220, 6),
(152, 'Jakarta Pusat', 10540, 6),
(153, 'Jakarta Selatan', 12230, 6),
(154, 'Jakarta Timur', 13330, 6),
(155, 'Jakarta Utara', 14140, 6),
(156, 'Jambi', 36111, 8),
(157, 'Jayapura', 99352, 24),
(158, 'Jayapura', 99114, 24),
(159, 'Jayawijaya', 99511, 24),
(160, 'Jember', 68113, 11),
(161, 'Jembrana', 82251, 1),
(162, 'Jeneponto', 92319, 28),
(163, 'Jepara', 59419, 10),
(164, 'Jombang', 61415, 11),
(165, 'Kaimana', 98671, 25),
(166, 'Kampar', 28411, 26),
(167, 'Kapuas', 73583, 14),
(168, 'Kapuas Hulu', 78719, 12),
(169, 'Karanganyar', 57718, 10),
(170, 'Karangasem', 80819, 1),
(171, 'Karawang', 41311, 9),
(172, 'Karimun', 29611, 17),
(173, 'Karo', 22119, 34),
(174, 'Katingan', 74411, 14),
(175, 'Kaur', 38911, 4),
(176, 'Kayong Utara', 78852, 12),
(177, 'Kebumen', 54319, 10),
(178, 'Kediri', 64184, 11),
(179, 'Kediri', 64125, 11),
(180, 'Keerom', 99461, 24),
(181, 'Kendal', 51314, 10),
(182, 'Kendari', 93126, 30),
(183, 'Kepahiang', 39319, 4),
(184, 'Kepulauan Anambas', 29991, 17),
(185, 'Kepulauan Aru', 97681, 19),
(186, 'Kepulauan Mentawai', 25771, 32),
(187, 'Kepulauan Meranti', 28791, 26),
(188, 'Kepulauan Sangihe', 95819, 31),
(189, 'Kepulauan Seribu', 14550, 6),
(190, 'Kepulauan Siau Tagulandang Biaro (Sitaro)', 95862, 31),
(191, 'Kepulauan Sula', 97995, 20),
(192, 'Kepulauan Talaud', 95885, 31),
(193, 'Kepulauan Yapen (Yapen Waropen)', 98211, 24),
(194, 'Kerinci', 37167, 8),
(195, 'Ketapang', 78874, 12),
(196, 'Klaten', 57411, 10),
(197, 'Klungkung', 80719, 1),
(198, 'Kolaka', 93511, 30),
(199, 'Kolaka Utara', 93911, 30),
(200, 'Konawe', 93411, 30),
(201, 'Konawe Selatan', 93811, 30),
(202, 'Konawe Utara', 93311, 30),
(203, 'Kotabaru', 72119, 13),
(204, 'Kotamobagu', 95711, 31),
(205, 'Kotawaringin Barat', 74119, 14),
(206, 'Kotawaringin Timur', 74364, 14),
(207, 'Kuantan Singingi', 29519, 26),
(208, 'Kubu Raya', 78311, 12),
(209, 'Kudus', 59311, 10),
(210, 'Kulon Progo', 55611, 5),
(211, 'Kuningan', 45511, 9),
(212, 'Kupang', 85362, 23),
(213, 'Kupang', 85119, 23),
(214, 'Kutai Barat', 75711, 15),
(215, 'Kutai Kartanegara', 75511, 15),
(216, 'Kutai Timur', 75611, 15),
(217, 'Labuhan Batu', 21412, 34),
(218, 'Labuhan Batu Selatan', 21511, 34),
(219, 'Labuhan Batu Utara', 21711, 34),
(220, 'Lahat', 31419, 33),
(221, 'Lamandau', 74611, 14),
(222, 'Lamongan', 64125, 11),
(223, 'Lampung Barat', 34814, 18),
(224, 'Lampung Selatan', 35511, 18),
(225, 'Lampung Tengah', 34212, 18),
(226, 'Lampung Timur', 34319, 18),
(227, 'Lampung Utara', 34516, 18),
(228, 'Landak', 78319, 12),
(229, 'Langkat', 20811, 34),
(230, 'Langsa', 24412, 21),
(231, 'Lanny Jaya', 99531, 24),
(232, 'Lebak', 42319, 3),
(233, 'Lebong', 39264, 4),
(234, 'Lembata', 86611, 23),
(235, 'Lhokseumawe', 24352, 21),
(236, 'Lima Puluh Koto/Kota', 26671, 32),
(237, 'Lingga', 29811, 17),
(238, 'Lombok Barat', 83311, 22),
(239, 'Lombok Tengah', 83511, 22),
(240, 'Lombok Timur', 83612, 22),
(241, 'Lombok Utara', 83711, 22),
(242, 'Lubuk Linggau', 31614, 33),
(243, 'Lumajang', 67319, 11),
(244, 'Luwu', 91994, 28),
(245, 'Luwu Timur', 92981, 28),
(246, 'Luwu Utara', 92911, 28),
(247, 'Madiun', 63153, 11),
(248, 'Madiun', 63122, 11),
(249, 'Magelang', 56519, 10),
(250, 'Magelang', 56133, 10),
(251, 'Magetan', 63314, 11),
(252, 'Majalengka', 45412, 9),
(253, 'Majene', 91411, 27),
(254, 'Makassar', 90111, 28),
(255, 'Malang', 65163, 11),
(256, 'Malang', 65112, 11),
(257, 'Malinau', 77511, 16),
(258, 'Maluku Barat Daya', 97451, 19),
(259, 'Maluku Tengah', 97513, 19),
(260, 'Maluku Tenggara', 97651, 19),
(261, 'Maluku Tenggara Barat', 97465, 19),
(262, 'Mamasa', 91362, 27),
(263, 'Mamberamo Raya', 99381, 24),
(264, 'Mamberamo Tengah', 99553, 24),
(265, 'Mamuju', 91519, 27),
(266, 'Mamuju Utara', 91571, 27),
(267, 'Manado', 95247, 31),
(268, 'Mandailing Natal', 22916, 34),
(269, 'Manggarai', 86551, 23),
(270, 'Manggarai Barat', 86711, 23),
(271, 'Manggarai Timur', 86811, 23),
(272, 'Manokwari', 98311, 25),
(273, 'Manokwari Selatan', 98355, 25),
(274, 'Mappi', 99853, 24),
(275, 'Maros', 90511, 28),
(276, 'Mataram', 83131, 22),
(277, 'Maybrat', 98051, 25),
(278, 'Medan', 20228, 34),
(279, 'Melawi', 78619, 12),
(280, 'Merangin', 37319, 8),
(281, 'Merauke', 99613, 24),
(282, 'Mesuji', 34911, 18),
(283, 'Metro', 34111, 18),
(284, 'Mimika', 99962, 24),
(285, 'Minahasa', 95614, 31),
(286, 'Minahasa Selatan', 95914, 31),
(287, 'Minahasa Tenggara', 95995, 31),
(288, 'Minahasa Utara', 95316, 31),
(289, 'Mojokerto', 61382, 11),
(290, 'Mojokerto', 61316, 11),
(291, 'Morowali', 94911, 29),
(292, 'Muara Enim', 31315, 33),
(293, 'Muaro Jambi', 36311, 8),
(294, 'Muko Muko', 38715, 4),
(295, 'Muna', 93611, 30),
(296, 'Murung Raya', 73911, 14),
(297, 'Musi Banyuasin', 30719, 33),
(298, 'Musi Rawas', 31661, 33),
(299, 'Nabire', 98816, 24),
(300, 'Nagan Raya', 23674, 21),
(301, 'Nagekeo', 86911, 23),
(302, 'Natuna', 29711, 17),
(303, 'Nduga', 99541, 24),
(304, 'Ngada', 86413, 23),
(305, 'Nganjuk', 64414, 11),
(306, 'Ngawi', 63219, 11),
(307, 'Nias', 22876, 34),
(308, 'Nias Barat', 22895, 34),
(309, 'Nias Selatan', 22865, 34),
(310, 'Nias Utara', 22856, 34),
(311, 'Nunukan', 77421, 16),
(312, 'Ogan Ilir', 30811, 33),
(313, 'Ogan Komering Ilir', 30618, 33),
(314, 'Ogan Komering Ulu', 32112, 33),
(315, 'Ogan Komering Ulu Selatan', 32211, 33),
(316, 'Ogan Komering Ulu Timur', 32312, 33),
(317, 'Pacitan', 63512, 11),
(318, 'Padang', 25112, 32),
(319, 'Padang Lawas', 22763, 34),
(320, 'Padang Lawas Utara', 22753, 34),
(321, 'Padang Panjang', 27122, 32),
(322, 'Padang Pariaman', 25583, 32),
(323, 'Padang Sidempuan', 22727, 34),
(324, 'Pagar Alam', 31512, 33),
(325, 'Pakpak Bharat', 22272, 34),
(326, 'Palangka Raya', 73112, 14),
(327, 'Palembang', 31512, 33),
(328, 'Palopo', 91911, 28),
(329, 'Palu', 94111, 29),
(330, 'Pamekasan', 69319, 11),
(331, 'Pandeglang', 42212, 3),
(332, 'Pangandaran', 46511, 9),
(333, 'Pangkajene Kepulauan', 90611, 28),
(334, 'Pangkal Pinang', 33115, 2),
(335, 'Paniai', 98765, 24),
(336, 'Parepare', 91123, 28),
(337, 'Pariaman', 25511, 32),
(338, 'Parigi Moutong', 94411, 29),
(339, 'Pasaman', 26318, 32),
(340, 'Pasaman Barat', 26511, 32),
(341, 'Paser', 76211, 15),
(342, 'Pasuruan', 67153, 11),
(343, 'Pasuruan', 67118, 11),
(344, 'Pati', 59114, 10),
(345, 'Payakumbuh', 26213, 32),
(346, 'Pegunungan Arfak', 98354, 25),
(347, 'Pegunungan Bintang', 99573, 24),
(348, 'Pekalongan', 51161, 10),
(349, 'Pekalongan', 51122, 10),
(350, 'Pekanbaru', 28112, 26),
(351, 'Pelalawan', 28311, 26),
(352, 'Pemalang', 52319, 10),
(353, 'Pematang Siantar', 21126, 34),
(354, 'Penajam Paser Utara', 76311, 15),
(355, 'Pesawaran', 35312, 18),
(356, 'Pesisir Barat', 35974, 18),
(357, 'Pesisir Selatan', 25611, 32),
(358, 'Pidie', 24116, 21),
(359, 'Pidie Jaya', 24186, 21),
(360, 'Pinrang', 91251, 28),
(361, 'Pohuwato', 96419, 7),
(362, 'Polewali Mandar', 91311, 27),
(363, 'Ponorogo', 63411, 11),
(364, 'Pontianak', 78971, 12),
(365, 'Pontianak', 78112, 12),
(366, 'Poso', 94615, 29),
(367, 'Prabumulih', 31121, 33),
(368, 'Pringsewu', 35719, 18),
(369, 'Probolinggo', 67282, 11),
(370, 'Probolinggo', 67215, 11),
(371, 'Pulang Pisau', 74811, 14),
(372, 'Pulau Morotai', 97771, 20),
(373, 'Puncak', 98981, 24),
(374, 'Puncak Jaya', 98979, 24),
(375, 'Purbalingga', 53312, 10),
(376, 'Purwakarta', 41119, 9),
(377, 'Purworejo', 54111, 10),
(378, 'Raja Ampat', 98489, 25),
(379, 'Rejang Lebong', 39112, 4),
(380, 'Rembang', 59219, 10),
(381, 'Rokan Hilir', 28992, 26),
(382, 'Rokan Hulu', 28511, 26),
(383, 'Rote Ndao', 85982, 23),
(384, 'Sabang', 23512, 21),
(385, 'Sabu Raijua', 85391, 23),
(386, 'Salatiga', 50711, 10),
(387, 'Samarinda', 75133, 15),
(388, 'Sambas', 79453, 12),
(389, 'Samosir', 22392, 34),
(390, 'Sampang', 69219, 11),
(391, 'Sanggau', 78557, 12),
(392, 'Sarmi', 99373, 24),
(393, 'Sarolangun', 37419, 8),
(394, 'Sawah Lunto', 27416, 32),
(395, 'Sekadau', 79583, 12),
(396, 'Selayar (Kepulauan Selayar)', 92812, 28),
(397, 'Seluma', 38811, 4),
(398, 'Semarang', 50511, 10),
(399, 'Semarang', 50135, 10),
(400, 'Seram Bagian Barat', 97561, 19),
(401, 'Seram Bagian Timur', 97581, 19),
(402, 'Serang', 42182, 3),
(403, 'Serang', 42111, 3),
(404, 'Serdang Bedagai', 20915, 34),
(405, 'Seruyan', 74211, 14),
(406, 'Siak', 28623, 26),
(407, 'Sibolga', 22522, 34),
(408, 'Sidenreng Rappang/Rapang', 91613, 28),
(409, 'Sidoarjo', 61219, 11),
(410, 'Sigi', 94364, 29),
(411, 'Sijunjung (Sawah Lunto Sijunjung)', 27511, 32),
(412, 'Sikka', 86121, 23),
(413, 'Simalungun', 21162, 34),
(414, 'Simeulue', 23891, 21),
(415, 'Singkawang', 79117, 12),
(416, 'Sinjai', 92615, 28),
(417, 'Sintang', 78619, 12),
(418, 'Situbondo', 68316, 11),
(419, 'Sleman', 55513, 5),
(420, 'Solok', 27365, 32),
(421, 'Solok', 27315, 32),
(422, 'Solok Selatan', 27779, 32),
(423, 'Soppeng', 90812, 28),
(424, 'Sorong', 98431, 25),
(425, 'Sorong', 98411, 25),
(426, 'Sorong Selatan', 98454, 25),
(427, 'Sragen', 57211, 10),
(428, 'Subang', 41215, 9),
(429, 'Subulussalam', 24882, 21),
(430, 'Sukabumi', 43311, 9),
(431, 'Sukabumi', 43114, 9),
(432, 'Sukamara', 74712, 14),
(433, 'Sukoharjo', 57514, 10),
(434, 'Sumba Barat', 87219, 23),
(435, 'Sumba Barat Daya', 87453, 23),
(436, 'Sumba Tengah', 87358, 23),
(437, 'Sumba Timur', 87112, 23),
(438, 'Sumbawa', 84315, 22),
(439, 'Sumbawa Barat', 84419, 22),
(440, 'Sumedang', 45326, 9),
(441, 'Sumenep', 69413, 11),
(442, 'Sungaipenuh', 37113, 8),
(443, 'Supiori', 98164, 24),
(444, 'Surabaya', 60119, 11),
(445, 'Surakarta (Solo)', 57113, 10),
(446, 'Tabalong', 71513, 13),
(447, 'Tabanan', 82119, 1),
(448, 'Takalar', 92212, 28),
(449, 'Tambrauw', 98475, 25),
(450, 'Tana Tidung', 77611, 16),
(451, 'Tana Toraja', 91819, 28),
(452, 'Tanah Bumbu', 72211, 13),
(453, 'Tanah Datar', 27211, 32),
(454, 'Tanah Laut', 70811, 13),
(455, 'Tangerang', 15914, 3),
(456, 'Tangerang', 15111, 3),
(457, 'Tangerang Selatan', 15332, 3),
(458, 'Tanggamus', 35619, 18),
(459, 'Tanjung Balai', 21321, 34),
(460, 'Tanjung Jabung Barat', 36513, 8),
(461, 'Tanjung Jabung Timur', 36719, 8),
(462, 'Tanjung Pinang', 29111, 17),
(463, 'Tapanuli Selatan', 22742, 34),
(464, 'Tapanuli Tengah', 22611, 34),
(465, 'Tapanuli Utara', 22414, 34),
(466, 'Tapin', 71119, 13),
(467, 'Tarakan', 77114, 16),
(468, 'Tasikmalaya', 46411, 9),
(469, 'Tasikmalaya', 46116, 9),
(470, 'Tebing Tinggi', 20632, 34),
(471, 'Tebo', 37519, 8),
(472, 'Tegal', 52419, 10),
(473, 'Tegal', 52114, 10),
(474, 'Teluk Bintuni', 98551, 25),
(475, 'Teluk Wondama', 98591, 25),
(476, 'Temanggung', 56212, 10),
(477, 'Ternate', 97714, 20),
(478, 'Tidore Kepulauan', 97815, 20),
(479, 'Timor Tengah Selatan', 85562, 23),
(480, 'Timor Tengah Utara', 85612, 23),
(481, 'Toba Samosir', 22316, 34),
(482, 'Tojo Una-Una', 94683, 29),
(483, 'Toli-Toli', 94542, 29),
(484, 'Tolikara', 99411, 24),
(485, 'Tomohon', 95416, 31),
(486, 'Toraja Utara', 91831, 28),
(487, 'Trenggalek', 66312, 11),
(488, 'Tual', 97612, 19),
(489, 'Tuban', 62319, 11),
(490, 'Tulang Bawang', 34613, 18),
(491, 'Tulang Bawang Barat', 34419, 18),
(492, 'Tulungagung', 66212, 11),
(493, 'Wajo', 90911, 28),
(494, 'Wakatobi', 93791, 30),
(495, 'Waropen', 98269, 24),
(496, 'Way Kanan', 34711, 18),
(497, 'Wonogiri', 57619, 10),
(498, 'Wonosobo', 56311, 10),
(499, 'Yahukimo', 99041, 24),
(500, 'Yalimo', 99481, 24),
(501, 'Yogyakarta', 55222, 5);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produks`
--

CREATE TABLE IF NOT EXISTS `kategori_produks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(55) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `kategori_produks`
--

INSERT INTO `kategori_produks` (`id`, `kategori`, `deskripsi`) VALUES
(1, 'Pakaian', 'Sudah menjadi kebutuhan utama sebagai wanita modern untuk memiliki koleksi baju wanita yang menarik serta untuk pria untuk memiliki baju pria yang modis dan keren. Lengkapilah kebutuhan baju wanita dan baju pria Anda disini.\n'),
(2, 'Buku', 'Buku adalah jendela dunia... Pepatah yang bukan sekedar pepatah karena orang-orang sukses adalah orang yang gemar membaca buku yang merupakan gudang ilmu. Perkaya wawasan Anda dengan membaca aneka buku fiksi, non fiksi, maupun referensi.'),
(3, 'Mainan & Hobi', 'Disini sumbernya mainan untuk anak anda atau untuk menambah koleksi anda. Bermacam-macam jenis mainan mulai dari action figure, mobil-mobilan, diecast, dsb ada disini. Lengkap, murah dan tersedia dari ribuan toko online di Indonesia'),
(5, 'Software', 'Butuh software untuk komputer atau laptop? Temukan semua di Tokopedia, beragam software apapun seperti antivirus, microsoft office dan masih banyak lagi bisa kamu temukan disini. Saatnya go online dan harganya pasti murah.'),
(6, 'Film', 'Isi hiburan berkualitas dengan belanja online CD/DVD film-film terbaru'),
(7, 'Musik', 'Isi hiburan berkualitas dengan belanja online CD/DVD musik terbaru, hingga alat musik atau lagu-lagu terkini di tangga musik Indonesia dan Internasional.'),
(8, 'Otomotif', 'Belanja produk otomotif makin mudah dengan tersedianya beragam spare part, aksesoris dan perlengkapan modifikasi, baik untuk mobil atau motor. Dapatkan beragam suku cadang atau onderdil dengan kualitas dan harga terjamin. Mau onderdil mobil baru atau bekas hingga motor vespa sampai sport pasti ada!'),
(9, 'Elektronik', 'Pada masa modern ini, perangkat elektronik menjadi bagian yang tak terpisahkan dalam kehidupan kita. Bagi sebagian kalangan, keberadaan perangkat elektronik mungkin menjadi salah satu kebutuhan primer dalam rumah tangga.'),
(10, 'Kamera', 'Segala jenis keperluan anda akan peralatan fotografi ada disini. Mulai dari kamera digital (Pocket, DSLR, Mirrorless), Tripod (Tripod, Monopod, Tongsis), Tas Kamera, Lensa, Flash, Baterai hingga perlengkapan fotografi lainnya ada disini. Lengkap & Murah!'),
(11, 'Laptop & Notebook', 'Laptop sangat dibutuhkan oleh Anda yang ingin melakukan pekerjaan dengan komputer namun sering berpindah-pindah tempat. Berbagai jenis dan merk laptop beserta aksesorisnya juga membanjiri pasar. Temukan laptop dan aksesorisnya hanya di Tokopedia.'),
(12, 'Tablet & Smartphone', 'Handphone atau hp dan tablet sudah menjadi kebutuhan primer saat ini. Kedua gadget tersebut dapat Anda gunakan untuk bekerja, bermain, ataupun berselancar di social media. '),
(13, 'Sepatu', 'Di dalam dunia fashion, sepatu merupakan salah satu bagian penting untuk tampil menarik. Dengan berbagai macam jenis sepatu yang bisa disesuaikan dengan kebutuhan gaya Anda. Sudah siapkah Anda untuk tampil menarik?');

-- --------------------------------------------------------

--
-- Table structure for table `kurirs`
--

CREATE TABLE IF NOT EXISTS `kurirs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `kurirs`
--

INSERT INTO `kurirs` (`id`, `nama`) VALUES
(1, 'JNE'),
(2, 'Tiki');

-- --------------------------------------------------------

--
-- Table structure for table `penerimas`
--

CREATE TABLE IF NOT EXISTS `penerimas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_alamat` varchar(55) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `penggunaId` int(11) NOT NULL,
  `kecamatan` varchar(80) NOT NULL,
  `kabupatenId` int(11) NOT NULL,
  `provinsiId` int(11) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `telepon` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `penerimas`
--

INSERT INTO `penerimas` (`id`, `jenis_alamat`, `nama`, `penggunaId`, `kecamatan`, `kabupatenId`, `provinsiId`, `alamat`, `telepon`) VALUES
(1, 'alamat rumah', 'Riansyah', 1, 'wua-wua', 2, 1, 'Jln Anawai No 44', '039393939312'),
(2, 'alamat teman', 'Raven', 1, 'baruga', 2, 1, 'Jln Anawai No 49', '039393939312'),
(9, 'alamat murid', 'badrus', 1, 'masix', 331, 3, 'jln barokah', '083131939339'),
(10, 'alamat kawan', 'draxler', 1, 'Trengginas', 348, 10, 'jln setiabudhi ', '067281029222'),
(11, 'alamat guru', 'kh ma''mun', 1, 'kalimalang', 255, 11, 'jl gegerbahana', '028282828282');

-- --------------------------------------------------------

--
-- Table structure for table `penggunas`
--

CREATE TABLE IF NOT EXISTS `penggunas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(55) NOT NULL,
  `foto` varchar(80) NOT NULL,
  `email` varchar(60) NOT NULL,
  `sandi` varchar(55) NOT NULL,
  `tokoId` int(11) NOT NULL,
  `jenis_kelamin` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `penggunas`
--

INSERT INTO `penggunas` (`id`, `nama`, `foto`, `email`, `sandi`, `tokoId`, `jenis_kelamin`) VALUES
(1, 'rian', 'default-user-photo.png', 'rian@yahoo.com', 'biji', 1, 0),
(2, 'draxler', 'default-user-photo.png', 'drax@biji.com', 'draxler', 2, 1),
(4, 'riansyah', 'april.PNG', 'mriansyah93@gmail.com', 'biji', 0, 0),
(5, 'riansyahx', 'april.PNG', 'mriansyah93@gmail.com', 'biji', 0, 0),
(6, 'rian', 'default-user-photo.png', 'mriansyah93@gmail.com', 'biji', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `produks`
--

CREATE TABLE IF NOT EXISTS `produks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `kondisi` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `KategoriProdukId` int(11) NOT NULL,
  `EtalaseId` int(11) NOT NULL,
  `TokoId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `produks`
--

INSERT INTO `produks` (`id`, `nama`, `harga`, `berat`, `gambar`, `kondisi`, `deskripsi`, `KategoriProdukId`, `EtalaseId`, `TokoId`) VALUES
(1, 'naruto', 13500, 100, 'naruto.jpg', 1, 'buku naruto yang bagus', 2, 1, 1),
(2, 'naruto 1 - 20', 13500, 100, 'narutos.jpg', 1, 'buku naruto yang bagus', 2, 1, 1),
(4, 'macbook', 13500000, 50, 'default.jpg', 1, 'laptop mantap', 11, 2, 1),
(9, 'Macbook Air Type 80', 12000000, 200, 'macbook.jpg', 1, 'laptop yang bagus', 11, 2, 1),
(10, 'Macbook Air', 10000000, 200, 'macbook.jpg', 1, 'laptop yang bagus', 11, 1, 1),
(11, 'Batik Couple 4', 2300000, 100, 'batikCouple4.jpg', 1, 'laptop yang bagus', 1, 1, 1),
(12, 'Batik Pria', 2000000, 100, 'batikPria1.jpg', 1, 'laptop yang bagus', 1, 2, 1),
(13, 'batik couple 3', 100000000, 100, 'batikCouple3.jpg', 1, 'batik yang bagus', 1, 1, 1),
(15, 'batik couple 2', 2000000, 100, 'batikCouple2.jpg', 1, 'batik warna hijau', 1, 1, 1),
(16, 'batik merah', 1000000, 200, 'batikCouple1.jpg', 1, 'batik merah baru', 1, 1, 1),
(18, 'iphone 7', 20000000, 400, 'iphone3.png', 1, 'iphone baru loh', 12, 1, 2),
(19, 'samsung galaxy tab', 2000000, 200, 'samsung2.jpg', 0, 'smartphone bagus', 12, 1, 2),
(22, 'iphone 5s', 10000000, 100, 'iphone1.png', 0, 'terbaru loh', 12, 1, 1),
(23, 'lenovo-1', 3900000, 400, 'hplenovo-1.jpg', 1, 'hp yang bagus', 12, 0, 1),
(24, 'blazer-1', 550000, 700, 'blazer-1.jpg', 1, 'blazer yang bagus', 1, 0, 2),
(25, 'buku-1', 190000, 400, 'buku-1.jpg', 1, 'hp yang bagus', 2, 0, 2),
(26, 'iphone-1', 13900000, 400, 'iphone-1.jpg', 1, 'hp yang bagus', 12, 0, 3),
(27, 'mac-1', 21000000, 400, 'mac-1.jpg', 1, 'hp yang bagus', 11, 0, 3),
(28, 'sepatu-1', 4900000, 400, 'sepatu-1.jpg', 1, 'hp yang bagus', 13, 0, 4),
(29, 'lenovo-2', 3900000, 400, 'hplenovo-2.jpg', 1, 'hp yang bagus', 12, 0, 1),
(30, 'blazer-2', 550000, 700, 'blazer-2.jpg', 1, 'blazer yang bagus', 1, 0, 2),
(31, 'buku-2', 190000, 400, 'buku-2.jpg', 1, 'hp yang bagus', 2, 0, 2),
(32, 'iphone-2', 13900000, 400, 'iphone-2.jpg', 1, 'hp yang bagus', 12, 0, 3),
(33, 'mac-2', 21000000, 400, 'mac-2.jpg', 1, 'hp yang bagus', 11, 0, 3),
(34, 'sepatu-2', 4900000, 400, 'sepatu-2.jpg', 1, 'hp yang bagus', 13, 0, 4),
(35, 'lenovo-3', 3900000, 400, 'hplenovo-3.jpg', 1, 'hp yang bagus', 12, 0, 1),
(36, 'blazer-3', 550000, 700, 'blazer-3.jpg', 1, 'blazer yang bagus', 1, 0, 2),
(37, 'buku-3', 190000, 400, 'buku-3.jpg', 1, 'hp yang bagus', 2, 0, 2),
(38, 'iphone-3', 13900000, 400, 'iphone-3.jpg', 1, 'hp yang bagus', 12, 0, 3),
(39, 'mac-3', 21000000, 400, 'mac-3.jpg', 1, 'hp yang bagus', 11, 0, 3),
(40, 'sepatu-3', 4900000, 400, 'sepatu-3.jpg', 1, 'hp yang bagus', 13, 0, 4),
(41, 'lenovo-4', 3900000, 400, 'hplenovo-4.jpg', 1, 'hp yang bagus', 12, 0, 1),
(42, 'blazer-4', 550000, 700, 'blazer-4.jpg', 1, 'blazer yang bagus', 1, 0, 2),
(43, 'buku-4', 190000, 400, 'buku-4.jpg', 1, 'hp yang bagus', 2, 0, 2),
(44, 'iphone-4', 13900000, 400, 'iphone-4.jpg', 1, 'hp yang bagus', 12, 0, 3),
(45, 'mac-4', 21000000, 400, 'mac-4.jpg', 1, 'hp yang bagus', 11, 0, 3),
(46, 'sepatu-4', 4900000, 400, 'sepatu-4.jpg', 1, 'hp yang bagus', 13, 0, 4),
(47, 'lenovo-5', 3900000, 400, 'hplenovo-5.jpg', 1, 'hp yang bagus', 12, 0, 1),
(48, 'blazer-5', 550000, 700, 'blazer-5.jpg', 1, 'blazer yang bagus', 1, 0, 2),
(49, 'buku-5', 190000, 400, 'buku-5.jpg', 1, 'hp yang bagus', 2, 0, 2),
(50, 'iphone-5', 13900000, 400, 'iphone-5.jpg', 1, 'hp yang bagus', 12, 0, 3),
(51, 'mac-5', 21000000, 400, 'mac-5.jpg', 1, 'hp yang bagus', 11, 0, 3),
(52, 'sepatu-5', 4900000, 400, 'sepatu-5.jpg', 1, 'hp yang bagus', 13, 0, 4),
(53, 'lenovo-6', 3900000, 400, 'hplenovo-6.jpg', 1, 'hp yang bagus', 12, 0, 1),
(54, 'blazer-6', 550000, 700, 'blazer-6.jpg', 1, 'blazer yang bagus', 1, 0, 2),
(55, 'buku-6', 190000, 400, 'buku-6.jpg', 1, 'hp yang bagus', 2, 0, 2),
(56, 'iphone-6', 13900000, 400, 'iphone-6.jpg', 1, 'hp yang bagus', 12, 0, 3),
(57, 'mac-6', 21000000, 400, 'mac-6.jpg', 1, 'hp yang bagus', 11, 0, 3),
(58, 'sepatu-6', 4900000, 400, 'sepatu-6.jpg', 1, 'hp yang bagus', 13, 0, 4),
(59, 'lenovo-7', 3900000, 400, 'hplenovo-7.jpg', 1, 'hp yang bagus', 12, 0, 1),
(60, 'blazer-7', 550000, 700, 'blazer-7.jpg', 1, 'blazer yang bagus', 1, 0, 2),
(61, 'buku-7', 190000, 400, 'buku-7.jpg', 1, 'hp yang bagus', 2, 0, 2),
(62, 'iphone-7', 13900000, 400, 'iphone-7.jpg', 1, 'hp yang bagus', 12, 0, 3),
(63, 'mac-7', 21000000, 400, 'mac-7.jpg', 1, 'hp yang bagus', 11, 0, 3),
(64, 'sepatu-7', 4900000, 400, 'sepatu-7.jpg', 1, 'hp yang bagus', 13, 0, 4),
(65, 'lenovo-8', 3900000, 400, 'hplenovo-8.jpg', 1, 'hp yang bagus', 12, 0, 1),
(66, 'blazer-8', 550000, 700, 'blazer-8.jpg', 1, 'blazer yang bagus', 1, 0, 2),
(67, 'buku-8', 190000, 400, 'buku-8.jpg', 1, 'hp yang bagus', 2, 0, 2),
(68, 'iphone-8', 13900000, 400, 'iphone-8.jpg', 1, 'hp yang bagus', 12, 0, 3),
(69, 'mac-8', 21000000, 400, 'mac-8.jpg', 1, 'hp yang bagus', 11, 0, 3),
(70, 'sepatu-8', 4900000, 400, 'sepatu-8.jpg', 1, 'hp yang bagus', 13, 0, 4),
(71, 'lenovo-9', 3900000, 400, 'hplenovo-9.jpg', 1, 'hp yang bagus', 12, 0, 1),
(72, 'blazer-9', 550000, 700, 'blazer-9.jpg', 1, 'blazer yang bagus', 1, 0, 2),
(73, 'buku-9', 190000, 400, 'buku-9.jpg', 1, 'hp yang bagus', 2, 0, 2),
(74, 'iphone-9', 13900000, 400, 'iphone-9.jpg', 1, 'hp yang bagus', 12, 0, 3),
(75, 'mac-9', 21000000, 400, 'mac-9.jpg', 1, 'hp yang bagus', 11, 0, 3),
(76, 'sepatu-9', 4900000, 400, 'sepatu-9.jpg', 1, 'hp yang bagus', 13, 0, 4),
(77, 'lenovo-10', 3900000, 400, 'hplenovo-10.jpg', 1, 'hp yang bagus', 12, 0, 1),
(78, 'blazer-10', 550000, 700, 'blazer-10.jpg', 1, 'blazer yang bagus', 1, 0, 2),
(79, 'buku-10', 190000, 400, 'buku-10.jpg', 1, 'hp yang bagus', 2, 0, 2),
(80, 'iphone-10', 13900000, 400, 'iphone-10.jpg', 1, 'hp yang bagus', 12, 0, 3),
(81, 'mac-10', 21000000, 400, 'mac-10.jpg', 1, 'hp yang bagus', 11, 0, 3),
(82, 'sepatu-10', 4900000, 400, 'sepatu-10.jpg', 1, 'hp yang bagus', 13, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `provinsis`
--

CREATE TABLE IF NOT EXISTS `provinsis` (
  `Nama` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsis`
--

INSERT INTO `provinsis` (`Nama`, `id`) VALUES
('Bali', 1),
('Bangka Belitung', 2),
('Banten', 3),
('Bengkulu', 4),
('DI Yogyakarta', 5),
('DKI Jakarta', 6),
('Gorontalo', 7),
('Jambi', 8),
('Jawa Barat', 9),
('Jawa Tengah', 10),
('Jawa Timur', 11),
('Kalimantan Barat', 12),
('Kalimantan Selatan', 13),
('Kalimantan Tengah', 14),
('Kalimantan Timur', 15),
('Kalimantan Utara', 16),
('Kepulauan Riau', 17),
('Lampung', 18),
('Maluku', 19),
('Maluku Utara', 20),
('Nanggroe Aceh Darussalam (NAD)', 21),
('Nusa Tenggara Barat (NTB)', 22),
('Nusa Tenggara Timur (NTT)', 23),
('Papua', 24),
('Papua Barat', 25),
('Riau', 26),
('Sulawesi Barat', 27),
('Sulawesi Selatan', 28),
('Sulawesi Tengah', 29),
('Sulawesi Tenggara', 30),
('Sulawesi Utara', 31),
('Sumatera Barat', 32),
('Sumatera Selatan', 33),
('Sumatera Utara', 34);

-- --------------------------------------------------------

--
-- Table structure for table `rekenings`
--

CREATE TABLE IF NOT EXISTS `rekenings` (
  `no_rekening` varchar(20) NOT NULL,
  `penerimaId` int(11) NOT NULL,
  `bankId` int(11) NOT NULL,
  PRIMARY KEY (`no_rekening`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekenings`
--

INSERT INTO `rekenings` (`no_rekening`, `penerimaId`, `bankId`) VALUES
('009-293-1291', 1, 1),
('109-293-1291', 1, 1),
('209-293-1291', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `review_produks`
--

CREATE TABLE IF NOT EXISTS `review_produks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produkId` int(11) NOT NULL,
  `penggunaId` int(11) NOT NULL,
  `isi_review` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pelaku` varchar(70) DEFAULT NULL,
  `pesan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `pelaku`, `pesan`) VALUES
(0, 'Buyer', 'Melakukan proses Check Out Order, Menunggu konfirmasi pembayaran'),
(1, 'Buyer', 'Melakukan Konfirmasi Pembayaran, Menunggu proses verifikasi pembayaran'),
(2, 'Pasarmantap', 'Verifikasi konfirmasi Pembayaran yang telah diterima Pasarmantap'),
(3, 'Seller', 'Pesanan sedang diproses'),
(4, 'Seller', 'Pesanan telah dikirim, Pesanan Anda dalam proses pengiriman oleh kurir'),
(5, 'Buyer', 'Pesanan telah tiba di tujuan'),
(6, 'Buyer', 'Transaksi selesai');

-- --------------------------------------------------------

--
-- Table structure for table `tokos`
--

CREATE TABLE IF NOT EXISTS `tokos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(100) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `kecamatan` varchar(70) NOT NULL,
  `kabupatenId` int(11) NOT NULL,
  `provinsiId` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tokos`
--

INSERT INTO `tokos` (`id`, `logo`, `nama`, `kecamatan`, `kabupatenId`, `provinsiId`, `deskripsi`) VALUES
(1, 'logo-toko.png', 'barokah', 'baruga', 44, 3, 'menjual buku-buku terbaik'),
(2, 'logo-toko.png', 'jaya', 'baruga', 1, 3, 'menjual barang-barang elektronik rumah tangga'),
(3, 'logo-toko.png', 'makmurjaya', 'baruga', 1, 3, 'menjual kue-kue kering dan basah kesukaan anda'),
(4, 'logo-toko.png', 'baju-trendy', 'baruga', 1, 3, 'menjual baju trendi masa kini');

-- --------------------------------------------------------

--
-- Table structure for table `toko_favorits`
--

CREATE TABLE IF NOT EXISTS `toko_favorits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TokoId` int(11) NOT NULL,
  `PenggunaId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `toko_favorits`
--

INSERT INTO `toko_favorits` (`id`, `TokoId`, `PenggunaId`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE IF NOT EXISTS `transaksis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pembeliId` int(11) NOT NULL,
  `tokoId` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jatuh_tempo` date NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `total_tagihan` int(11) NOT NULL,
  `no_rekening` varchar(15) NOT NULL,
  `nama_pemilik_rekening` varchar(80) NOT NULL,
  `bankId` int(11) NOT NULL,
  `gambar_bukti_pembayaran` varchar(100) NOT NULL,
  `status_tampil` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `pembeliId`, `tokoId`, `tanggal`, `jatuh_tempo`, `tanggal_pembayaran`, `total_tagihan`, `no_rekening`, `nama_pemilik_rekening`, `bankId`, `gambar_bukti_pembayaran`, `status_tampil`) VALUES
(58, 2, 1, '2016-02-20', '2016-02-23', '0000-00-00', 101525000, '', '', 0, '', 1),
(59, 2, 1, '2016-03-06', '2016-03-09', '0000-00-00', 101525000, '', '', 0, '', 0),
(60, 2, 1, '2016-03-08', '2016-03-11', '0000-00-00', 101525000, '', '', 0, '', 0),
(61, 0, 0, '2016-03-21', '2016-03-24', '0000-00-00', 32000, '', '', 0, '', 0),
(62, 0, 0, '2016-03-21', '2016-03-24', '0000-00-00', 18500, '', '', 0, '', 0),
(63, 0, 0, '2016-03-21', '2016-03-24', '0000-00-00', 32000, '', '', 0, '', 0),
(64, 1, 1, '2016-03-21', '2016-03-24', '0000-00-00', 32000, '', '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produkId` int(11) NOT NULL,
  `penggunaId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `produkId`, `penggunaId`) VALUES
(1, 1, 1),
(2, 2, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
