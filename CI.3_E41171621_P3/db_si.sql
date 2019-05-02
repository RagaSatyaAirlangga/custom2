-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 29 Sep 2018 pada 05.24
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_si`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id_username` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama_lengkap` varchar(200) NOT NULL,
  `foto` varchar(20) NOT NULL,
  PRIMARY KEY (`id_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id_username`, `username`, `password`, `nama_lengkap`, `foto`) VALUES
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'f', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE IF NOT EXISTS `mata_kuliah` (
  `kd_mk` int(10) NOT NULL AUTO_INCREMENT,
  `kd_prodi` varchar(10) NOT NULL,
  `nama_mk` varchar(30) NOT NULL,
  `sks` varchar(30) NOT NULL,
  `smt` varchar(4) NOT NULL,
  `semester` varchar(11) NOT NULL,
  `aktif` varchar(5) NOT NULL,
  `tgl_insert` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  PRIMARY KEY (`kd_mk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1325 ;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kd_mk`, `kd_prodi`, `nama_mk`, `sks`, `smt`, `semester`, `aktif`, `tgl_insert`, `tgl_update`) VALUES
(22, '22', 'ddd', 'fdf', '23', '32', '2', '2016-10-27 00:00:00', '2016-10-13 00:00:00'),
(23, '234', 'tes', '4', '3', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, '123', 'ddd', 'fdf', '23', '32', '2', '2016-10-27 00:00:00', '2016-10-13 00:00:00'),
(1323, '22', 'r', '2', '2', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1324, '', '', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE IF NOT EXISTS `prodi` (
  `kd_prodi` int(20) NOT NULL AUTO_INCREMENT,
  `prodi` varchar(20) NOT NULL,
  `singkat` varchar(30) NOT NULL,
  `ketua_prodi` varchar(30) NOT NULL,
  `nik` int(30) NOT NULL,
  `akreditasi` varchar(2) NOT NULL,
  `tgl_insert` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  PRIMARY KEY (`kd_prodi`),
  UNIQUE KEY `kd_prodi` (`kd_prodi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=783248725 ;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`kd_prodi`, `prodi`, `singkat`, `ketua_prodi`, `nik`, `akreditasi`, `tgl_insert`, `tgl_update`) VALUES
(4, 'rwer', 'wrwr', 'rww', 4343, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'r', 'r', 'rpl', 5, 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Yuda Maulana', 'mn', 'ged', 12345, 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'wrwr', 'rwr', 'ewrr', 3242, 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 'fsfsf', 'dfs', 'sdf', 333, 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, '43', 'erg', 'rgeg', 4343, 'd', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2343, 'werewr', 'wrwr', 'were', 324, 'b', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4234, 'wet', 'etw', 'wtwet', 343, 'we', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122334, 'tkj', 'tk', 'h', 234, 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323425, 'Yuda Maulana', 'wrwr', 'khjk', 544, 'u', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34454435, 'yuyu', 'gghfgh', 'fhfhf', 453535, 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(783248724, 'erete', 'piop', 'kll;o', 65757, 'ry', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
