-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 15, 2026 at 06:27 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_latihan_pbo_ti-1c_farissholahhasan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tiket`
--

CREATE TABLE `tabel_tiket` (
  `id_tiket` int NOT NULL,
  `nama_film` varchar(100) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `harga_dasar_tiket` int NOT NULL,
  `jenis_studio` enum('Regular','IMAX','Velvet') NOT NULL,
  `tipe_audio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(10) DEFAULT NULL,
  `kacamata_3d_id` varchar(20) DEFAULT NULL,
  `efek_gerak_fitur` varchar(50) DEFAULT NULL,
  `bantal_selimut_pack` tinyint(1) DEFAULT '0',
  `layanan_butler` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_tiket`
--

INSERT INTO `tabel_tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`) VALUES
(1, 'Spiderman', '2026-06-20 14:00:00', 2, 45000, 'Regular', 'Dolby 7.1', 'C5', NULL, NULL, 0, 0),
(2, 'Spiderman', '2026-06-20 16:00:00', 1, 45000, 'Regular', 'Dolby 7.1', 'C6', NULL, NULL, 0, 0),
(3, 'Toy Story 5', '2026-06-20 10:00:00', 3, 40000, 'Regular', 'Stereo', 'D10', NULL, NULL, 0, 0),
(4, 'Toy Story 5', '2026-06-20 12:00:00', 2, 40000, 'Regular', 'Stereo', 'D11', NULL, NULL, 0, 0),
(5, 'Horor Malam', '2026-06-21 21:00:00', 1, 35000, 'Regular', 'Mono', 'E1', NULL, NULL, 0, 0),
(6, 'Horor Malam', '2026-06-21 23:00:00', 2, 35000, 'Regular', 'Mono', 'E2', NULL, NULL, 0, 0),
(7, 'Avatar 3', '2026-06-20 18:00:00', 2, 85000, 'IMAX', 'Atmos', 'B12', 'GLS-001', NULL, 0, 0),
(8, 'Avatar 3', '2026-06-20 20:00:00', 4, 85000, 'IMAX', 'Atmos', 'B13', 'GLS-002', NULL, 0, 0),
(9, 'Interstellar 2', '2026-06-21 15:00:00', 2, 90000, 'IMAX', 'Atmos', 'A5', 'GLS-003', NULL, 0, 0),
(10, 'Interstellar 2', '2026-06-21 17:00:00', 1, 90000, 'IMAX', 'Atmos', 'A6', 'GLS-004', NULL, 0, 0),
(11, 'Dune Part 3', '2026-06-22 19:00:00', 2, 95000, 'IMAX', 'Atmos', 'C8', 'GLS-005', 'Kursi Goyang', 0, 0),
(12, 'Dune Part 3', '2026-06-22 21:00:00', 3, 95000, 'IMAX', 'Atmos', 'C9', 'GLS-006', 'Kursi Goyang', 0, 0),
(13, 'Top Gun 3', '2026-06-23 14:00:00', 2, 80000, 'IMAX', 'Atmos', 'D2', 'GLS-007', 'Vibrasi', 0, 0),
(14, 'Top Gun 3', '2026-06-23 16:00:00', 1, 80000, 'IMAX', 'Atmos', 'D3', 'GLS-008', 'Vibrasi', 0, 0),
(15, 'Romance Life', '2026-06-20 17:00:00', 2, 150000, 'Velvet', 'Surround', 'A1', NULL, NULL, 1, 1),
(16, 'Romance Life', '2026-06-20 19:00:00', 2, 150000, 'Velvet', 'Surround', 'A2', NULL, NULL, 1, 1),
(17, 'Action Thriller', '2026-06-21 18:00:00', 2, 175000, 'Velvet', 'Surround', 'B1', NULL, NULL, 1, 1),
(18, 'Action Thriller', '2026-06-21 20:00:00', 2, 175000, 'Velvet', 'Surround', 'B2', NULL, NULL, 1, 1),
(19, 'Drama Klasik', '2026-06-22 15:00:00', 2, 160000, 'Velvet', 'Surround', 'C1', NULL, NULL, 1, 1),
(20, 'Drama Klasik', '2026-06-22 17:00:00', 2, 160000, 'Velvet', 'Surround', 'C2', NULL, NULL, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  MODIFY `id_tiket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
