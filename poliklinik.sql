-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2023 at 12:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poliklinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama`, `alamat`, `no_hp`) VALUES
(45, 'Joni Yes PAPA', 'jalan merak, no 1 Rt.06 Rw.08 Penaruban', '0897382738173837'),
(46, 'Raiden Ei', 'Inazuma Eleven', '77777777778');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama`, `alamat`, `no_hp`) VALUES
(5, 'Roja', 'jalan merak', '0895413421109'),
(10, 'Miles Morales', 'Demak', '2190299101212'),
(11, 'Gwen Stacy', 'Serumah sama Roja', '171721627126'),
(12, 'Roja', 'jalan merak, no 1 Rt.06 Rw.08 Penaruban', '12345678901'),
(13, 'Peter', 'Inazuma', '085951465387');

-- --------------------------------------------------------

--
-- Table structure for table `periksa`
--

CREATE TABLE `periksa` (
  `id` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `tgl_periksa` datetime NOT NULL,
  `catatan` text NOT NULL,
  `obat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `periksa`
--

INSERT INTO `periksa` (`id`, `id_pasien`, `id_dokter`, `tgl_periksa`, `catatan`, `obat`) VALUES
(17, 5, 45, '2023-11-07 00:00:00', 'Sakit Hati', 'Dia'),
(18, 5, 45, '2023-11-07 00:00:00', 'Sakit Panu', 'Saleb 88'),
(19, 11, 46, '2023-11-09 00:30:00', 'Sakit Punggung', 'Kretek abal abal');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(11, 'gwen', '$2y$10$y.dLPPIeHrxlKVZDPGwI7eXj0zVIlsuKRjdolGwRxPyLQc2V2GyFO'),
(12, 'peter', '$2y$10$jNvBBHWESpO4AVMGq8RC.O.NhUkHisIZUAlmLqTr.4dHBTrxbYtsq'),
(13, 'Kraven The Hunter', '$2y$10$CqfhPwiGWKATyR3ABTwkvO3T8jEdMuTuT0YuKDUQxhj3bFVPo0DMK'),
(14, 'Kraven', '$2y$10$XNxR81B7Xh2Mnqk2TRsNfeKNv9hkZ6WsTgD3xEBW/UdKuSHsCaj.m'),
(15, 'Silk', '$2y$10$5S065ygD8KKQHk8seS1dIurnkxRcfj/5Sr0iqPiYMwUSr6ld6A9re'),
(16, 'dokter', '$2y$10$PRVN.RtSv5QfQbrcl5oaJ.T7wN0g939QDu3itdQ.JfyU9mVkIrlU.'),
(17, 'Cindy Moon', '$2y$10$7aZpJVgs/Sk99fCA6BOMLOy6Ya/9Sj8KF1PD/SlLv02mw6wB.QAWm'),
(18, 'SpiderGwen', '$2y$10$ApcfhmFHUfv5pzTna95bP.SRhL41mGMcVw0GQQfh0wWQ8A4F8AwO2'),
(19, 'Roja', '$2y$10$18Zq9C.Wh9v2cklEvC8IZ.V0aWrnQRUtfbrl91jBATKoSX6.xq75G'),
(20, 'Roja28', '$2y$10$z6tvQk1vueBQL7rQrApeQu8gkL/5Xs7GM.mCgOUandXToJfGAJEUS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `periksa`
--
ALTER TABLE `periksa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pasien` (`id_pasien`,`id_dokter`),
  ADD KEY `id_dokter` (`id_dokter`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `periksa`
--
ALTER TABLE `periksa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `periksa`
--
ALTER TABLE `periksa`
  ADD CONSTRAINT `periksa_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `periksa_ibfk_2` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
