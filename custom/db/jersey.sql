-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Mei 2019 pada 10.41
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jersey`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `status`) VALUES
(9, 'jakfar', '16a4c4e9b7c54d1d4f726f58ad30c53b', 2),
(11, 'Admin', 'd01ef2e6392007f58996457348d98db6', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `berat` float NOT NULL,
  `kat` varchar(50) NOT NULL,
  `subkat` varchar(50) NOT NULL,
  `tipe` text NOT NULL,
  `m` int(11) NOT NULL,
  `l` int(11) NOT NULL,
  `xl` int(11) NOT NULL,
  `xxl` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `seller` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `berat`, `kat`, `subkat`, `tipe`, `m`, `l`, `xl`, `xxl`, `jumlah`, `harga`, `deskripsi`, `foto`, `seller`, `view`, `url`) VALUES
(1, 'Atletico Madrid Home', 0.4, 'Liga Spanyol', 'Atletico Madrid', 'Lengan Pendek', 10, 10, 0, 0, 20, 100000, 'Jersey Home Atletico Madrid Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', '8qEol+atletico.png', 0, 0, 'Atletico-Madrid-Home-WvSmUypFokAP0iRj'),
(2, 'Barcelona Away ', 0.4, 'Liga Spanyol', 'Barcelona', 'Lengan Pendek', 10, 10, 0, 0, 20, 100000, 'Jersey Barcelona Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', 'AnxRv+barca.jpg', 0, 0, 'Barcelona-Away-uoRVJvnHsa8cKIhw'),
(3, 'Barcelona Home Panjang', 0.4, 'Liga Spanyol', 'Barcelona', 'Lengan Panjang', 6, 10, 0, 0, 16, 100000, 'Jersey Home Barcelona Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', 'AGm4k+barcapanjang.jpg', 1, 13, 'Barcelona-Home-Panjang-VJNKHq1Lgeyr9Cbc'),
(4, 'Chelsea Home', 0.4, 'Liga Inggris', 'Chelsea', 'Lengan Pendek', 10, 10, 0, 0, 20, 100000, 'Jersey Home Chelsea Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', 'mDoQa+chelsea.jpg', 0, 0, 'Chelsea-Home-3Bw48dWRCo2lLhcu'),
(5, 'Chelsea Away', 0.4, 'Liga Inggris', 'Chelsea', 'Lengan Pendek', 10, 10, 0, 0, 20, 100000, 'Jersey Away Chelsea Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', 'sfQpO+chelseaaway.jpg', 0, 2, 'Chelsea-Away-W1g7hCcYEb2mTsBj'),
(6, 'Chelsea Away', 0.4, 'Liga Inggris', 'Chelsea', 'Lengan Pendek', 3, 10, 0, 0, 13, 100000, 'Jersey Away Chelsea Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', 'IqWDK+chelsea-away-shirt-2015.png', 1, 6, 'Chelsea-Away-e3GPZIkEUvVS5goY'),
(8, 'Man City Panjang', 0.4, 'Liga Inggris', 'Man City', 'Lengan Panjang', 8, 10, 0, 0, 18, 100000, 'Jersey Home Man-City Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', 'FaIn7+citypanjang.jpg', 1, 7, 'Man-City-Panjang-5ZFspB4Hn6gmiRz8'),
(9, 'Borussia Dortmund', 0.4, 'Liga Jerman', 'Borrussia Dortmund', 'Lengan Pendek', 10, 10, 0, 0, 20, 100000, 'Jersey Home Borussia Dortmund Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', 'yPS8V+dortmun.jpg', 0, 0, 'Borussia-Dortmund-zhrxeClSso1bjAnF'),
(10, 'Galatasaray Home', 0.4, 'Liga Turki', 'Galatasaray', 'Lengan Pendek', 10, 10, 0, 0, 20, 100000, 'Jersey Home Galatasaray Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', '70Ivo+galatasaray.png', 0, 0, 'Galatasaray-Home-mIGSj4bdMqriVLtg'),
(11, 'Inter Milan Home', 0.4, 'Liga Italia', 'Inter Milan', 'Lengan Pendek', 1, 7, 0, 0, 8, 100000, 'Jersey Home Inter-Milan Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', 'cZGYh+inter.jpg', 0, 13, 'Inter-Milan-Home-QdMlOqVWArYcHn0w'),
(12, 'Inter Milan Away', 0.4, 'Liga Italia', 'Inter Milan', 'Lengan Pendek', 10, 10, 0, 0, 20, 100000, 'Jersey Home Inter Milan Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', '5p69O+InterMilanAway.png', 0, 0, 'Inter-Milan-Away-0GUeAlTJscOXwYRr'),
(13, 'Juventus Home', 0.4, 'Liga Italia', 'Juventus', 'Lengan Pendek', 10, 10, 0, 0, 20, 100000, 'Jersey Home Juventus Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', 'e29EF+juve.jpg', 0, 3, 'Juventus-Home-ZtEh1xO5G4u3FjR8'),
(14, 'Liverpool Home', 0.4, 'Liga Inggris', 'Liverpool', 'Lengan Pendek', 10, 10, 0, 0, 20, 100000, 'Jersey Home Liverpool Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', 'GTVM8+liverpool.jpg', 0, 0, 'Liverpool-Home-AjXwkQvuqC9BhN45'),
(16, 'AC Milan Away', 0, 'Liga Italia', 'Ac Milan', 'Lengan Pendek', 10, 3, 0, 0, 13, 100000, 'Jersey Away AC-Milan Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', 'fxOJE+milan.jpg', 0, 5, 'AC-Milan-Away-akPVY9q2h8UrJ3bE'),
(17, 'MU Away', 0.4, 'Liga Inggris', 'MU', 'Lengan Pendek', 10, 10, 0, 0, 20, 100000, 'Jersey Away MU Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', 'l6g92+mu.jpg', 0, 0, 'MU-Away-Cf5z9E2VBdDoAScO'),
(18, 'MU 3rd', 0, 'Liga Inggris', 'MU', 'Lengan Pendek', 10, 10, 0, 0, 20, 100000, 'Jersey 3rd MU Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', 'sXdmw+muaway.jpg', 0, 1, 'MU-3rd-xamd36qC0Dhlts4u'),
(19, 'Bayern Munchen Away', 0, 'Liga Jerman', 'Bayern Munchen', 'Lengan Pendek', 10, 10, 0, 0, 20, 100000, 'Jersey Away Bayern Munchen Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', 'ErZVF+munchen.jpg', 0, 0, 'Bayern-Munchen-Away-iNH0LkM7C1Pl6GFa'),
(20, 'Bayern Munchen Away', 0, 'Liga Jerman', 'Bayern Munchen', 'Lengan Pendek', 0, 0, 0, 0, 0, 100000, 'Jersey Away Bayern Munchen Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', 'VMDNl+munchenaway.jpg', 0, 29, 'Bayern-Munchen-Away-bd1ul2TLeE9Iz5AO'),
(21, 'PSG Home', 0.4, 'Liga Prancis', 'PSG', 'Lengan Pendek', 6, 10, 10, 10, 36, 100000, 'Jersey Home PSG Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', 'AdPhR+psg.jpg', 0, 13, 'PSG-Home-YLear2BZxz5i40Ko'),
(22, 'Tottentham Away', 0.4, 'Liga Inggris', 'Tottenham', 'Lengan Pendek', 0, 0, 0, 0, 0, 100000, 'Jersey Away Tottentham Kualitas Terbaik. Hanya Ada Di My Jersey. Barang Halus, Kualitas Terjamin Dan Sangat Bersahabat Untuk Kantong. Buruan Sebelum Kehabisan...', 'ZJMqB+tottenham.jpg', 0, 5, 'Tottentham-Away-tOnNYEi82orSZPg7'),
(23, 'AS Roma Home 2015-2016', 0, 'Liga Italia', 'AS Roma', 'Lengan Pendek', 0, 0, 0, 0, 0, 100000, 'Jersey AS Roma Home Grade Ori Kualitas Terbaik Dengan Harga Yang Terjangakau, Design Sangat Trendi Dan Tentunya Sangat Nyaman Digunakan', 'DXGTn+Jersey-Roma-2015-16.jpg', 0, 44, 'AS-Roma-Home-2015-2016-hJdkFY3OR2VKme1T'),
(24, 'AS Roma Away 2015-2016', 0, 'Liga Italia', 'AS Roma', 'Lengan Pendek', 10, 10, 10, 10, 40, 100000, 'Jersey Away AS Roma 2015-2016, Sangat Elegant, Cocok Sekali Bagi Kamu Yang Suka Bergaya. Dengan Harga Yang Relative Terajangkau Anda Sudah Bisa Memilikinya!', 'hKSAZ+NK-JSY05-ST_003_04_large.jpg', 0, 10, 'AS-Roma-Away-2015-2016-E2Tir03BzJUQOwl9'),
(25, 'Man City Home 2015-2016', 0.4, 'Liga Inggris', 'Man City', 'Lengan Pendek', 10, 8, 10, 10, 38, 100000, 'Tiada Kata Lain Untuk Jersey Ini Selain Elegant, Buruan Beli Sebelum Kehabisan!!', 'iHel9+manchester-city-15-16-home-kit (1).jpg', 0, 8, 'Man-City-Home-2015-2016-p0qLcfEAXasTNigO'),
(26, 'Manchester United Home 2015-2016 ', 0.4, 'Liga Inggris', 'MU', 'Lengan Pendek', 8, 9, 10, 10, 37, 100000, 'Jersey Manchester United Home 2015-2016. Bagi Kalian Pencinta MU, Kini Telah Hadir Jersey Klub Kebanggaanmu Dengan Harga Yang Terjangkau Dengan Kualitas Terbaik', '4hmpx+adidas-manchester-united-15-16-home-kit (1).jpg', 0, 10, 'Manchester-United-Home-2015-2016-cykuoxd4isjeTEJq'),
(27, 'Leicester City Away 2015-2016', 0.4, 'Liga Inggris', 'Leicester CIty', 'Lengan Pendek', 9, 10, 10, 10, 39, 100000, 'Musim Yang Mengejutkan!. Kini Hadir Jersey Leicester City Away 2015-2016. Berikan Dukungan Anda Dengan Membeli Jersey Keren Ini', 'fMHZl+Leicester-City-15-16-Third-Kit (2).jpg', 0, 17, 'Leicester-City-Away-2015-2016-5YtQxqK6j28ulmsh'),
(28, 'Arsenal Home 2015-2016 Panjang', 0, 'Liga Inggris', 'Arsenal', 'Lengan Panjang', 10, 10, 10, 10, 40, 10000, 'Arsenal Home 2015-2016 Panjang kini hadir untuk anda, bagi pecinta Arsenal buruan beli sebelum kehabisan, barangnya dijamin dan sangat terjangkau', 'EM2Wj-8qEol+atletico.png', 0, 2, 'Arsenal-Home-2015-2016-Panjang-H8xQYgeRaLiZ7rPC'),
(29, 'Real Madrid Home 2015-2016 Panjang', 0.4, 'Liga Spanyol', 'Real Madrid', 'Lengan Panjang', 10, 10, 10, 10, 40, 10000, 'Real Madrid Home 2015-2016 Panjang dengan design yang elegant, sangat cocok untuk anda. Kualitas Terjamin dan harganya yang terjangkau sangat diminati para pencinta bole khususnya madridista', 'FRWgG+oGeZ5+madrid.jpg', 0, 1, 'Real-Madrid-Home-2015-2016-Panjang-Vb3fYrjdS06uxZLM'),
(30, 'Chelsea Away 2013 Panjang', 0, 'Liga Inggris', 'Chelsea', 'Lengan Panjang', 10, 10, 10, 10, 40, 80000, 'Chelsea Away 2013 Panjang. Meskipun sudah tergolong lama, jersey ini masih menjadi buruan bagi pencinta bola khususnya true blue, fans setia the blues chelsea!! #KTBFH', 'AWTSn+N5bjL+chelseapanjang.jpg', 0, 4, 'Chelsea-Away-2013-Panjang-ra3NPZ52iyhfB0qF'),
(31, 'Liverpool Home 2015-2016', 0.4, 'Liga Inggris', 'Liverpool', 'Lengan Panjang', 7, 10, 10, 10, 37, 10000, 'Liverpool Home 2015-2016 Kini hadir untuk anda. Designya yang sangat menarik menjadi primadona bagi pecinta bola khusunya fans setia liverpool. Buruan beli sebelum kehabisannnn', 'CTxBk+Jual-Jersey-Liverpool-Home-2013-2014-Long-Sleeve-Grade-Ori-2.jpg', 0, 4, 'Liverpool-Home-2015-2016-nmXfe4Ej1yLB5UFM'),
(32, 'Real Madrid Home Panjang', 0.4, 'Liga Spanyol', 'Real Madrid', 'Lengan Panjang', 1, 9, 10, 9, 29, 10000, 'Jersey ini sangat nyaman digunakan, designnya elegant dan harganya juga sangat terjangkau, tentunya kualitasnya terbaik. Jersey ini hanya di bandrol dengan harga Rp.100.000', 'dtBSX+jersey-real-madrdi-lengan-panjang.jpg', 0, 17, 'Real-Madrid-Home-Panjang-iTt3R72kgWZLIhbM'),
(33, 'MU Away 2015-2016 ', 0.4, 'Liga Inggris', 'MU', 'Lengan Panjang', -198, 3, 10, 10, -175, 10000, 'Tiada Kata Lain Untuk Jersey Ini Kecuali, Elegant. Yap, Designnya sangat elegant, sangat nyaman untuk digunakan, membuat kita menjadi lebih percaya diri...', 'iF3Uv+manchester-united-away-ls.jpg', 0, 43, 'MU-Away-2015-2016-EcYGfSnIvDmNTzpg'),
(42, 'Man City Away 2015-2016', 0.5, 'Liga Inggris', 'Man City', 'Lengan Pendek', 0, 8, 11, 11, 30, 100000, 'Jersey ini sangat bagus, cocok buat anda yang suka gaya dan gaul', '5yvj7-KkNmE-1.jpg', 0, 30, 'Man-City-Away-2015-2017-s5MW6cbCXqN7URoI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `url_barang` varchar(225) NOT NULL,
  `berat` float NOT NULL,
  `foto` varchar(225) NOT NULL,
  `barang` varchar(200) NOT NULL,
  `ukuran` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kat` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `kat`) VALUES
(19, 'Liga Inggris'),
(20, 'Liga Spanyol'),
(21, 'Liga Jerman'),
(22, 'Liga Italia'),
(23, 'Liga Turki'),
(24, 'Liga Prancis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_barang` varchar(225) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `foto` varchar(225) NOT NULL,
  `komen` varchar(200) NOT NULL,
  `waktu` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kritik_saran`
--

CREATE TABLE IF NOT EXISTS `kritik_saran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  `foto` varchar(225) NOT NULL,
  `content` varchar(225) NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `startup`
--

CREATE TABLE IF NOT EXISTS `startup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner` varchar(256) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `startup`
--

INSERT INTO `startup` (`id`, `banner`, `title`, `description`) VALUES
(1, '059782+584179+che.png', 'My Jersey', 'Pusat Toko Onlen Jersey. Kami Menyediakan Jersey Dengan Kualitas Terbaik Dengan Harga Yang Terjamin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkategori`
--

CREATE TABLE IF NOT EXISTS `subkategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kat` varchar(100) NOT NULL,
  `subkat` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data untuk tabel `subkategori`
--

INSERT INTO `subkategori` (`id`, `kat`, `subkat`) VALUES
(1, 'Liga Inggris', 'Chelsea'),
(2, 'Liga Inggris', 'MU'),
(3, 'Liga Inggris', 'Man City'),
(4, 'Liga Inggris', 'Liverpool'),
(5, 'Liga Italia', 'Ac Milan'),
(6, 'Liga Italia', 'Inter Milan'),
(7, 'Liga Prancis', 'PSG'),
(8, 'Liga Spanyol', 'Real Madrid'),
(9, 'Liga Spanyol', 'Barcelona'),
(10, 'Liga Jerman', 'Bayern Munchen'),
(15, 'Liga Italia', 'Juventus'),
(16, 'Liga Jerman', 'Borrussia Dortmund'),
(17, 'Liga Inggris', 'Tottenham'),
(18, 'Liga Turki', 'Galatasaray'),
(19, 'Liga Spanyol', 'Atletico Madrid'),
(20, 'Liga Italia', 'AS Roma'),
(21, 'Liga Inggris', 'Leicester CIty'),
(22, 'Liga Inggris', 'Arsenal'),
(23, 'Liga Indonesia', 'Persija');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suka`
--

CREATE TABLE IF NOT EXISTS `suka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `likers` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=233 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_city`
--

CREATE TABLE IF NOT EXISTS `tb_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `ongkir` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data untuk tabel `tb_city`
--

INSERT INTO `tb_city` (`id`, `province`, `city`, `ongkir`) VALUES
(3, 'Jawa Timur', 'Surabaya', 20000),
(4, 'Jawa Timur', 'Malang', 18000),
(7, 'Jawa Timur', 'Bondowoso', 25000),
(8, 'Nanggro Aceh Darussalam', 'Aceh Barat', 40000),
(9, 'Nanggro Aceh Darussalam', 'Aceh Selatan', 40000),
(10, 'Nanggro Aceh Darussalam', 'Aceh Tengah', 40000),
(11, 'Nanggro Aceh Darussalam', 'Aceh Tenggara', 40000),
(12, 'Nanggro Aceh Darussalam', 'Aceh Timur', 40000),
(13, 'Nanggro Aceh Darussalam', 'Aceh Utara', 40000),
(14, 'Nanggro Aceh Darussalam', 'Langsa', 41000),
(15, 'Nanggro Aceh Darussalam', 'Lhokseumawe', 43000),
(16, 'Nanggro Aceh Darussalam', 'Sabang', 50000),
(17, 'Nanggro Aceh Darussalam', 'Subulussalam', 40000),
(18, 'Sumatera Utara', 'Deli Serdang', 39000),
(19, 'Sumatera Utara', 'Medan', 38000),
(20, 'Sumatera Utara', 'Tanjung Balai', 38000),
(22, 'Sumatera Utara', 'Manado', 30000),
(23, 'Sumatera Barat', 'Bukit Tinggi', 25000),
(24, 'Sumatera Barat', 'Padang', 35000),
(25, 'Sumatera Selatan', 'Palembang', 30000),
(26, 'Jawa Tengah', 'Solo', 20000),
(27, 'Jawa Tengah', 'Semarang', 20000),
(28, 'Jawa Barat', 'Bandung', 25000),
(29, 'Jawa Barat', 'Bogor', 25000),
(30, 'Jawa Barat', 'Bekasi', 25000),
(31, 'Provinsiaja', 'kota mati', 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_province`
--

CREATE TABLE IF NOT EXISTS `tb_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data untuk tabel `tb_province`
--

INSERT INTO `tb_province` (`id`, `province`) VALUES
(1, 'Jawa Timur'),
(2, 'Jawa Barat'),
(6, 'Jawa Tengah'),
(7, 'Nanggro Aceh Darussalam'),
(8, 'Sumatera Utara'),
(9, 'Sumatera Barat'),
(10, 'Riau'),
(11, 'Kepulauan Riau'),
(12, 'Jambi'),
(13, 'Sumatera Selatan'),
(14, 'Bangka Belitung'),
(15, 'Bengkulu'),
(16, 'Lampung'),
(17, 'DKI'),
(18, 'Banten'),
(19, 'Daerah Istimewa Yogyakarta'),
(20, 'Bali'),
(21, 'Nusa Tenggara Barat'),
(22, 'Nusa Tenggara Timur'),
(23, 'Kalimantan Barat'),
(24, 'Kalimantan Tengah'),
(25, 'Kalimantan Selatan'),
(26, 'Kalimantan Timur'),
(27, 'Kalimantan Utara'),
(28, 'Sulawesi Utara'),
(29, 'Sulawesi Barat'),
(30, 'Sulawesi Tengah'),
(31, 'Sulawesi Tenggara'),
(32, 'Sulawesi Selatan'),
(33, 'Gorontalo'),
(34, 'Maluku'),
(35, 'Maluku Utara'),
(36, 'Papua Barat'),
(37, 'Papua'),
(38, 'Provinsiaja'),
(39, 'Provinsiaja');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `total` int(11) NOT NULL,
  `kode` varchar(225) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `email`, `total`, `kode`, `status`) VALUES
(1, 'bangga_uciha@yahoo.com', 18200, '31207896', 'pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `namadpn` varchar(55) NOT NULL,
  `namablkng` varchar(55) NOT NULL,
  `pass` varchar(55) NOT NULL,
  `jk` text NOT NULL,
  `no_hp` varchar(55) NOT NULL,
  `province` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `kode_pos` varchar(30) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `foto` varchar(225) NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `email`, `namadpn`, `namablkng`, `pass`, `jk`, `no_hp`, `province`, `city`, `kode_pos`, `alamat`, `foto`, `status`) VALUES
(10, 'davidsetya24@gmail.com', 'david', 'setya', 'davidsetya', 'Laki Laki', '082313972908', 'Jawa Timur', 'Bondowoso', 'jxhchh', 'jxhchh', 'default.jpg', 'aktif'),
(11, 'inant@gmail.com', 'Inant', 'Kharisma', 'inant123', 'Laki Laki', '082359382266', '', '', '68282', 'wonosari bondowoso gang kates', 'fyiGs+1004989_573240776165473_2463857828235051437_n.jpg', 'banned'),
(12, 'jakfar@gmail.com', 'jakfar', 'jakfar', 'jakfar123', 'Laki Laki', '909090909', 'Sumatera Barat', 'Bukit Tinggi', 'lklk', 'klkl', 'default.jpg', 'aktif'),
(15, 'tolekids35@gmail.com', 'tole', 'kids', 'HIGHOLI', 'Laki Laki', '082983187328732', 'Kalimantan Barat', '-', '12323', 'tauk ah gelap', 'default.jpg', 'aktif'),
(16, 'owen@gmail.com', 'Owen', 'Gaul', 'owengaul', 'Laki Laki', '082313972908', 'Jawa Timur', 'Surabaya', 'kkokokok', 'kokok', 'Yu7mp+1004989_573240776165473_2463857828235051437_n.jpg', 'aktif'),
(17, 'pancas49@gmail.com', 'Pancas', 'Ganteng', 'pancas', 'Laki Laki', '012919', 'Jawa Timur', 'Bondowoso', '2828288', 'bondowoso', 'khwtO+1004989_573240776165473_2463857828235051437_n.jpg', 'aktif'),
(18, 're@gmail.com', 'Regaul', 'Riskiajaa', 'mnbvcxz', 'Laki Laki', '082313972908', 'Jawa Timur', 'Bondowoso', '909090', '909090', 'BiFcU+1004989_573240776165473_2463857828235051437_n.jpg', 'aktif'),
(19, 'rere@gmail.com', 're', 're', 'mnbvcxz', 'Laki Laki', '12345', 'Jawa Timur', 'Bondowoso', '612100', 'jl jalan', 'default.jpg', 'aktif'),
(20, 'lukman@gmail.com', 'Lukman', 'Hakim', 'lukmangaul', 'Laki Laki', '082313972908', 'Jawa Timur', 'Bondowoso', '9090909', 'Bondowoso', 'YHlsr+boy (1).png', 'aktif'),
(21, 'joyo@gmail.com', 'Joyo', 'Sinatra', 'joyosinatra', 'Laki Laki', '098765432098', 'Jawa Timur', 'Bondowoso', '908989', 'BWS', 'default.jpg', 'aktif'),
(22, 'bangga_uciha@yahoo.com', 'bangga', 'aditya', 'Bangga087857557513', 'Laki Laki', '087857557513', 'Jawa Timur', 'Malang', '68281', 'desa kajar kecamata', 'default.jpg', 'aktif');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
