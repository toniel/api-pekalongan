-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 23 Des 2017 pada 10.58
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api-pekalongan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `nama_kecamatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `nama_kecamatan`) VALUES
(1, 'Pekalongan Barat'),
(2, 'Pekalongan Selatan'),
(3, 'Pekalongan Timur'),
(4, 'Pekalongan Utara'),
(5, 'Comal'),
(6, 'Sragi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id_kelurahan` int(11) NOT NULL,
  `nama_kelurahan` varchar(50) NOT NULL,
  `kode_pos` varchar(5) NOT NULL,
  `kecamatan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelurahan`
--

INSERT INTO `kelurahan` (`id_kelurahan`, `nama_kelurahan`, `kode_pos`, `kecamatan_id`) VALUES
(1, 'Kelurahan/Desa Medono', '51111', 1),
(2, 'Kelurahan/Desa Podosugih', '51111', 1),
(3, 'Kelurahan/Desa Kebulen', '51112', 1),
(4, 'Kelurahan/Desa Sapuro', '51112', 1),
(5, 'Kelurahan/Desa Kergon', '51113', 1),
(6, 'Kelurahan/Desa Tegalrejo', '51116', 1),
(7, 'Kelurahan/Desa Bumirejo', '51117', 1),
(8, 'Kelurahan/Desa Kraton Kidul', '51117', 1),
(9, 'Kelurahan/Desa Pringlangu', '51117', 1),
(10, 'Kelurahan/Desa Kramatsari', '51118', 1),
(11, 'Kelurahan/Desa Pasirsari', '51118', 1),
(12, 'Kelurahan/Desa Bendan', '51119', 1),
(13, 'Kelurahan/Desa Tirto', '51151', 1),
(14, 'Kelurahan/Desa Kradenan', '51132', 2),
(15, 'Kelurahan/Desa Jenggot', '51133', 2),
(16, 'Kelurahan/Desa Kertoharjo', '51134', 2),
(17, 'Kelurahan/Desa Kuripan Kidul', '51135', 2),
(18, 'Kelurahan/Desa Kuripan Lor', '51136', 2),
(19, 'Kelurahan/Desa Yosorejo', '51137', 2),
(20, 'Kelurahan/Desa Duwet', '51138', 2),
(21, 'Kelurahan/Desa Banyurip Ageng', '51139', 2),
(22, 'Kelurahan/Desa Banyurip Alit', '51139', 2),
(23, 'Kelurahan/Desa Soko', '51139', 2),
(24, 'Kelurahan/Desa Buaran', '51171', 2),
(25, 'Kelurahan/Desa Karangmalang', '51122', 3),
(26, 'Kelurahan/Desa Poncol', '51122', 3),
(27, 'Kelurahan/Desa Dekoro', '51123', 3),
(28, 'Kelurahan/Desa Gamer', '51123', 3),
(29, 'Kelurahan/Desa Klego', '51124', 3),
(30, 'Kelurahan/Desa Sampangan', '51126', 3),
(31, 'Kelurahan/Desa Kauman', '51127', 3),
(32, 'Kelurahan/Desa Keputran', '51128', 3),
(33, 'Kelurahan/Desa Baros', '51129', 3),
(34, 'Kelurahan/Desa Landungsari', '51129', 3),
(35, 'Kelurahan/Desa Noyontaan', '51129', 3),
(36, 'Kelurahan/Desa Sokorejo', '51129', 3),
(37, 'Kelurahan/Desa Sugihwaras', '51129', 3),
(38, 'Kelurahan/Desa Panjang Wetan', '51141', 4),
(39, 'Kelurahan/Desa Bandengan', '51143', 4),
(40, 'Kelurahan/Desa Pabean', '51144', 4),
(41, 'Kelurahan/Desa Kraton Lor', '51145', 4),
(42, 'Kelurahan/Desa Dukuh', '51146', 4),
(43, 'Kelurahan/Desa Krapyak Kidul', '51147', 4),
(44, 'Kelurahan/Desa Degayu', '51148', 4),
(45, 'Kelurahan/Desa Kandangpanjang', '51148', 4),
(46, 'Kelurahan/Desa Krapyak Lor', '51149', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekolah`
--

CREATE TABLE `sekolah` (
  `id_sekolah` int(11) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `alamat_sekolah` varchar(255) NOT NULL,
  `tingkat` tinyint(4) NOT NULL COMMENT '1=sd,2=smp,3=smk/sma',
  `kecamatan_id` int(11) NOT NULL,
  `kelurahan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id_kelurahan`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id_sekolah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `id_kelurahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
