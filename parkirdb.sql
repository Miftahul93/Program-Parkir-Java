-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2013 at 11:20 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `parkirdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kendaraan`
--

CREATE TABLE IF NOT EXISTS `jenis_kendaraan` (
  `id_jenis` int(10) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(20) NOT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jenis_kendaraan`
--

INSERT INTO `jenis_kendaraan` (`id_jenis`, `jenis`) VALUES
(1, 'Roda 2'),
(2, 'Roda 4'),
(3, 'Truk');

-- --------------------------------------------------------

--
-- Table structure for table `parkir_data`
--

CREATE TABLE IF NOT EXISTS `parkir_data` (
  `id_parkir` int(10) NOT NULL AUTO_INCREMENT,
  `nomor_polisi` varchar(16) NOT NULL,
  `id_jenis` varchar(10) NOT NULL,
  `masuk` datetime NOT NULL,
  `keluar` datetime DEFAULT NULL,
  PRIMARY KEY (`id_parkir`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `parkir_data`
--

INSERT INTO `parkir_data` (`id_parkir`, `nomor_polisi`, `id_jenis`, `masuk`, `keluar`) VALUES
(4, 'BH77878T', '1', '2013-06-27 10:59:15', '2013-06-27 14:43:17'),
(5, 'AB213123R', '3', '2013-06-27 15:20:26', '2013-06-27 15:20:33'),
(6, 'B6789C', '2', '2013-06-27 15:28:06', '2013-06-27 15:30:14'),
(7, 'A6789B', '1', '2013-06-27 15:31:06', '2013-06-27 15:31:16'),
(8, 'BA12345TO', '3', '2013-06-27 15:32:10', '2013-06-27 15:34:38');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE IF NOT EXISTS `petugas` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`username`, `password`) VALUES
('budi', 'budi');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
