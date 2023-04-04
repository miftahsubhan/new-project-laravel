-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 10:09 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apoteker`
--

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` int(11) NOT NULL,
  `nama obat` varchar(121) NOT NULL,
  `jenis obat` varchar(121) NOT NULL,
  `tanggal expaid` date NOT NULL,
  `id produsen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama obat`, `jenis obat`, `tanggal expaid`, `id produsen`) VALUES
(1, ' obat diare', ' tablet', '2033-03-03', 1),
(2, ' obat pusing', ' kapsul', '2030-03-30', 2);

-- --------------------------------------------------------

--
-- Table structure for table `produsen`
--

CREATE TABLE `produsen` (
  `id` int(11) NOT NULL,
  `nama` varchar(121) NOT NULL,
  `alamat` text NOT NULL,
  `no.telpon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produsen`
--

INSERT INTO `produsen` (`id`, `nama`, `alamat`, `no.telpon`) VALUES
(1, ' pt. mft farmason', ' jl. abadi kav 666-999 kel.sehat kec.kekal\r\n Bekasi', '021999666'),
(2, ' PT.MTH farma', ' Jl. Serbaguna kv. 7 kel.Juara Kec.bahagia\r\n Bekasi', '0217777777');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produsen` (`id produsen`);

--
-- Indexes for table `produsen`
--
ALTER TABLE `produsen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produsen`
--
ALTER TABLE `produsen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `fk_produsen` FOREIGN KEY (`id produsen`) REFERENCES `produsen` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
