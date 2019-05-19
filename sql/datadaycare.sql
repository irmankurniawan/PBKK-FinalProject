-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2019 at 01:44 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datadaycare`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(20) NOT NULL,
  `admin_email` varchar(30) NOT NULL,
  `admin_password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_email`, `admin_password`) VALUES
(1, 'Admin 1', 'admin1@gmail.com', 'admin'),
(2, 'Admin 2', 'admin2@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `log_id` int(11) NOT NULL,
  `log_tgl` date NOT NULL,
  `log_tr_id` int(11) NOT NULL,
  `log_admin_id` int(11) NOT NULL,
  `log_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `pet_id` int(11) NOT NULL,
  `pet_name` varchar(20) NOT NULL,
  `pet_id_pemilik` int(11) NOT NULL DEFAULT '1',
  `pet_jenis` varchar(7) NOT NULL,
  `pet_gender` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`pet_id`, `pet_name`, `pet_id_pemilik`, `pet_jenis`, `pet_gender`) VALUES
(1, 'Moome', 1, 'KUCING', 'JANTAN'),
(2, 'Dodo', 1, 'ANJING', 'JANTAN'),
(3, 'Momo', 2, 'KUCING', 'BETINA'),
(5, 'Pussy', 1, 'ANJING', 'JANTAN'),
(6, 'Iguani', 11, 'KUCING', 'BETINA'),
(7, 'Baby', 10, 'ANJING', 'BETINA'),
(8, 'Ayam', 3, 'KUCING', 'JANTAN'),
(9, 'Bebeb', 3, 'ANJING', 'BETINA');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `tr_id` int(20) NOT NULL,
  `tr_tgl_cekin` date NOT NULL,
  `tr_tgl_cekout` date NOT NULL,
  `tr_total_bayar` int(20) NOT NULL,
  `tr_status_bayar` varchar(20) NOT NULL,
  `tr_id_user` int(11) NOT NULL,
  `tr_id_pet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(20) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `user_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_email`, `user_password`, `user_hp`) VALUES
(1, 'Irman Kurniawan', 'irman@gmail.com', 'qwerty123', '085739806320'),
(2, 'Tes Kurniawan', 'tes16@mhs.if.its.ac.id', '3fc0a7acf087f549ac2b266baf94b8b1', '085085085085'),
(3, 'Alicya Fitri', 'alicya@gmail.com', 'qwerty123', '085123456111'),
(4, 'Wawan', 'wawan@gmail.com', 'qwerty123', '085111222333'),
(6, 'Nurul Musthofa', 'nurul@gmail.com', 'qwerty123', '085000000000'),
(7, 'Sogol Sumarmono', 'sogol@gmail.com', 'qwerty123', '085085085085'),
(10, 'Klintu Ramadhan', 'klintu@gmail.com', 'qwerty123', '081543211234'),
(11, 'Diana Zurreta', 'diana@gmail.com', 'qwerty123', '087712341234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_email` (`admin_email`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `FK_tr_id` (`log_tr_id`),
  ADD KEY `FK_admin_id` (`log_admin_id`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`pet_id`),
  ADD KEY `pet_id_pemilik` (`pet_id_pemilik`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`tr_id`),
  ADD KEY `FK_transaksi_user` (`tr_id_user`),
  ADD KEY `FK_transaksi_pet` (`tr_id_pet`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `pet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `tr_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `FK_admin_id` FOREIGN KEY (`log_admin_id`) REFERENCES `admin` (`admin_id`),
  ADD CONSTRAINT `FK_tr_id` FOREIGN KEY (`log_tr_id`) REFERENCES `transaksi` (`tr_id`);

--
-- Constraints for table `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `FK_id_pemilik` FOREIGN KEY (`pet_id_pemilik`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FK_id_pemilik_id` FOREIGN KEY (`pet_id_pemilik`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `FK_transaksi_pet` FOREIGN KEY (`tr_id_pet`) REFERENCES `pets` (`pet_id`),
  ADD CONSTRAINT `FK_transaksi_user` FOREIGN KEY (`tr_id_user`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
