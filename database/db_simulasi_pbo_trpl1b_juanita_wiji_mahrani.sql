-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 23, 2026 at 12:22 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simulasi_pbo_trpl1b_juanita_wiji_mahrani`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendaftaran`
--

CREATE TABLE `tabel_pendaftaran` (
  `id_pendaftaran` int NOT NULL,
  `nama_calon` varchar(100) NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `nilai_ujian` decimal(5,2) NOT NULL,
  `biaya_pendaftaran_dasar` decimal(10,2) NOT NULL,
  `jalur_pendaftaran` enum('Reguler','Prestasi','Kedinasan') NOT NULL,
  `pilihan_prodi` varchar(100) DEFAULT NULL,
  `lokasi_kampus` varchar(100) DEFAULT NULL,
  `jenis_prestasi` varchar(100) DEFAULT NULL,
  `tingkat_prestasi` varchar(50) DEFAULT NULL,
  `sk_ikatan_dinas` varchar(100) DEFAULT NULL,
  `instansi_sponsor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_pendaftaran`
--

INSERT INTO `tabel_pendaftaran` (`id_pendaftaran`, `nama_calon`, `asal_sekolah`, `nilai_ujian`, `biaya_pendaftaran_dasar`, `jalur_pendaftaran`, `pilihan_prodi`, `lokasi_kampus`, `jenis_prestasi`, `tingkat_prestasi`, `sk_ikatan_dinas`, `instansi_sponsor`) VALUES
(1, 'Andi Saputra', 'SMAN 1 Surabaya', 85.00, 300000.00, 'Reguler', 'TRPL', 'Surabaya', NULL, NULL, NULL, NULL),
(2, 'Budi Santoso', 'SMKN 2 Malang', 80.00, 300000.00, 'Reguler', 'Teknik Informatika', 'Malang', NULL, NULL, NULL, NULL),
(3, 'Citra Lestari', 'SMAN 5 Kediri', 88.00, 300000.00, 'Reguler', 'Sistem Informasi', 'Kediri', NULL, NULL, NULL, NULL),
(4, 'Dian Pratama', 'SMKN 1 Blitar', 82.00, 300000.00, 'Reguler', 'TRPL', 'Blitar', NULL, NULL, NULL, NULL),
(5, 'Eka Putri', 'SMAN 3 Jember', 90.00, 300000.00, 'Reguler', 'Teknik Informatika', 'Jember', NULL, NULL, NULL, NULL),
(6, 'Fajar Nugroho', 'SMKN 4 Madiun', 78.00, 300000.00, 'Reguler', 'TRPL', 'Madiun', NULL, NULL, NULL, NULL),
(7, 'Gita Sari', 'SMAN 2 Banyuwangi', 87.00, 300000.00, 'Reguler', 'Sistem Informasi', 'Banyuwangi', NULL, NULL, NULL, NULL),
(8, 'Hani Putri', 'SMAN 1 Tuban', 92.00, 300000.00, 'Prestasi', NULL, NULL, 'Olimpiade Matematika', 'Nasional', NULL, NULL),
(9, 'Indra Wijaya', 'SMKN 3 Surabaya', 89.00, 300000.00, 'Prestasi', NULL, NULL, 'Lomba Programming', 'Provinsi', NULL, NULL),
(10, 'Joko Susilo', 'SMAN 4 Malang', 91.00, 300000.00, 'Prestasi', NULL, NULL, 'Karya Ilmiah', 'Nasional', NULL, NULL),
(11, 'Kartika Dewi', 'SMKN 1 Kediri', 88.00, 300000.00, 'Prestasi', NULL, NULL, 'Desain Grafis', 'Kabupaten', NULL, NULL),
(12, 'Lukman Hakim', 'SMAN 2 Mojokerto', 93.00, 300000.00, 'Prestasi', NULL, NULL, 'Robotik', 'Nasional', NULL, NULL),
(13, 'Maya Sari', 'SMKN 5 Jember', 90.00, 300000.00, 'Prestasi', NULL, NULL, 'Debat Bahasa Inggris', 'Provinsi', NULL, NULL),
(14, 'Nanda Putra', 'SMAN 6 Blitar', 87.00, 300000.00, 'Prestasi', NULL, NULL, 'Pencak Silat', 'Kabupaten', NULL, NULL),
(15, 'Oki Prasetyo', 'SMKN 1 Bojonegoro', 84.00, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-DIN-001', 'Pemerintah Kabupaten Bojonegoro'),
(16, 'Putri Maharani', 'SMAN 1 Lamongan', 86.00, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-DIN-002', 'PT PLN'),
(17, 'Qori Ahmad', 'SMKN 2 Gresik', 88.00, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-DIN-003', 'PT Telkom Indonesia'),
(18, 'Rina Anggraini', 'SMAN 3 Sidoarjo', 85.00, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-DIN-004', 'Kementerian Kominfo'),
(19, 'Satria Nugraha', 'SMKN 1 Pasuruan', 89.00, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-DIN-005', 'PT Kereta Api Indonesia'),
(20, 'Tania Putri', 'SMAN 2 Probolinggo', 90.00, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-DIN-006', 'Pemerintah Kota Probolinggo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  MODIFY `id_pendaftaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
