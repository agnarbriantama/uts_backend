-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2021 at 10:27 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int(10) NOT NULL,
  `id_transaksi` bigint(20) NOT NULL,
  `kd_menu` varchar(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `catatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail`, `id_transaksi`, `kd_menu`, `quantity`, `catatan`) VALUES
(59, 38, '4PKN', 2, ''),
(60, 40, '2PKN', 1, ''),
(61, 41, '2PKN', 1, ''),
(62, 42, '3TAS', 1, ''),
(63, 43, '4PKN', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `outfit`
--

CREATE TABLE `outfit` (
  `kd_menu` varchar(10) NOT NULL,
  `nama_outfit` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `harga_satuan` int(20) NOT NULL,
  `stok` int(10) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outfit`
--

INSERT INTO `outfit` (`kd_menu`, `nama_outfit`, `type`, `deskripsi`, `harga_satuan`, `stok`, `img`) VALUES
('1SPT', 'Dr. Martens 1461 brown smooth', 'sepatu', 'Bahan : FULL GENUINE LEATHER\r\nMADE IN ENGLAND\r\n1st hand Import From Thailand (dari pabrik langsung)', 200000, 10, '1SPT0.jpeg'),
('2PKN', 'Billionaire Project', 'pakaian', 'Spesifikasi Kaos:\r\n- Bahan Kaos PREMIUM 100% Katun Combed 30s\r\n- Sablon menggunakan mesin, Kuat dan tidak akan luntur\r\n- Bahan Adem, Nyaman, Lembut dan tidak berbulu\r\n- Menyerap keringat dengan baik, bisa di pakai untuk olahraga\r\n- Jahitan Rapi\r\n\r\nKAOS PRIA & WANITA (UNISEX) REGULAR FIT PREMIUM\r\nUkuran:\r\n     M : 46 X 68cm\r\n     L   : 48 x 70cm', 300000, 10, '2PKN0.JPEG'),
('3TAS', 'Tas Kanken', 'tas', 'Tas yang terkenal akan bahan Vinylon F, dapat digunakan sebagai ransel atau tas jinjing. Dilengkapi dengan alas (seat pad) yang dapat dilepas serta logo yang dapat memantulkan cahaya (reflective logo) di bagian depan.Terdapat label nama dan alamat di bagian dalam tas  ', 50000, 6, '3TAS0.JPEG'),
('4PKN', 'Dress tunik korean style import', 'pakaian', 'Bahan Moscrepe\r\nAllsz LINGKAR DADA 120 CM PANJANG 120 cm -+', 10000, 4, '4PKN0.jpeg'),
('5TAS', 'Tas Kanguru', 'tas', 'Bahan : Kulit Pu Berat : 26cm x 2.5cm x 17cm Ukuran : 185gr', 90000, 24, '5TAS0.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` bigint(20) NOT NULL,
  `id_user` int(10) NOT NULL,
  `nama_customer` varchar(20) NOT NULL,
  `total_harga` int(20) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `no_meja` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `nama_customer`, `total_harga`, `waktu`, `no_meja`) VALUES
(19, 4, 'Naomy', 46200, '2021-10-20 01:29:59', '666'),
(20, 4, 'Naomy', 46200, '2021-10-20 01:29:59', '666'),
(21, 4, 'Naomy', 46200, '2021-10-20 01:29:59', '666'),
(22, 4, 'Naomy', 46200, '2021-10-20 01:29:59', '666'),
(23, 4, 'Naomy', 62700, '2021-10-20 01:57:40', '666'),
(24, 4, 'Naomy', 79200, '2021-10-20 01:58:54', '6666'),
(25, 4, 'Naomy', 79200, '2021-10-20 01:58:54', '6666'),
(26, 4, 'Naomy', 79200, '2021-10-20 01:58:54', '6666'),
(27, 4, 'Naomy', 79200, '2021-10-20 02:02:43', '6666'),
(28, 4, 'Naomy', 79200, '2021-10-20 02:04:11', '666'),
(29, 4, 'Naomy', 79200, '2021-10-20 02:04:11', '666'),
(30, 4, 'Naomy', 79200, '2021-10-20 02:04:11', '666'),
(31, 4, 'Naomy', 79200, '2021-10-20 02:09:29', '666'),
(32, 4, 'Naomy', 26400, '2021-10-20 02:09:43', '666'),
(33, 4, 'Naomy', 26400, '2021-10-20 02:09:43', '666'),
(34, 4, 'Naomy', 26400, '2021-10-20 02:09:43', '666'),
(35, 4, 'Naomy', 26400, '2021-10-20 02:15:58', '666'),
(36, 4, 'Naomy', 26400, '2021-10-20 02:15:58', '666'),
(37, 4, 'Naomy', 26400, '2021-10-20 02:15:58', '666'),
(38, 4, 'Naomy', 26400, '2021-10-20 02:19:32', '666'),
(39, 4, 'Naomy', 26400, '2021-10-20 02:19:32', '666'),
(40, 4, 'Naomy', 13200, '2021-10-20 04:13:28', '6666'),
(41, 4, 'Naomy', 13200, '2021-10-20 07:19:57', '666'),
(42, 4, 'Naomy', 16500, '2021-10-20 07:30:44', '666'),
(43, 15, 'agnarbr', 11000, '2021-10-21 07:08:46', '12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(10, 'intan', '562cd1a744db424849c875847909070d', 'user'),
(15, 'agnar', '2622e9cf0c077fd3f26f9853a7795692', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `kd_menu` (`kd_menu`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indexes for table `outfit`
--
ALTER TABLE `outfit`
  ADD PRIMARY KEY (`kd_menu`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_login` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`kd_menu`) REFERENCES `outfit` (`kd_menu`) ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
