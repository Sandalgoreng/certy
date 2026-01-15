-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2026 at 07:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `stok` int(11) NOT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `stok`, `created_by`) VALUES
(2, 'Harry Potter', 'J.K. Rowling', 'Gramedia', '2007', 5, 'admin'),
(3, 'Lord of The Rings', 'J.R.R. Tolkien', 'Elex Media', '2005', 5, 'admin'),
(4, 'The Hobbit', 'J.R.R. Tolkien', 'Elex Media', '2008', 5, 'admin'),
(5, 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', '2006', 5, 'admin'),
(6, 'Atomic Habits', 'James Clear', 'Gramedia', '2020', 5, 'admin'),
(7, 'minecraft', 'kevin', 'gramedia', '2006', 5, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status` enum('dipinjam','kembali') DEFAULT 'dipinjam'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `id_buku`, `username`, `tanggal_pinjam`, `tanggal_kembali`, `status`) VALUES
(1, 1, 'user1', '2026-01-14', '2026-01-14', 'kembali'),
(2, 2, 'user1', '2026-01-14', '2026-01-14', 'kembali'),
(3, 1, 'user1', '2026-01-14', '2026-01-14', 'kembali'),
(4, 2, 'user1', '2026-01-14', '2026-01-14', 'kembali'),
(5, 2, 'user1', '2026-01-14', '2026-01-14', 'kembali'),
(6, 2, 'user1', '2026-01-14', '2026-01-14', 'kembali'),
(7, 2, 'user1', '2026-01-14', '2026-01-14', 'kembali'),
(8, 2, 'user1', '2026-01-14', '2026-01-14', 'kembali'),
(9, 2, 'kevin', '2026-01-14', '2026-01-14', 'kembali'),
(10, 1, 'juan', '2026-01-14', NULL, 'dipinjam'),
(11, 2, 'sulthan', '2026-01-14', '2026-01-14', 'kembali'),
(12, 2, 'kevin', '2026-01-14', '2026-01-14', ''),
(13, 3, 'kevin', '2026-01-14', '2026-01-14', ''),
(14, 4, 'kevin', '2026-01-14', '2026-01-14', ''),
(15, 2, 'kevin', '2026-01-14', '2026-01-14', ''),
(16, 3, 'kevin', '2026-01-14', '2026-01-14', ''),
(17, 2, 'kevin', '2026-01-14', '2026-01-14', ''),
(18, 3, 'kevin', '2026-01-14', '2026-01-14', ''),
(19, 4, 'kevin', '2026-01-14', '2026-01-14', ''),
(20, 5, 'kevin', '2026-01-14', '2026-01-14', ''),
(21, 6, 'kevin', '2026-01-14', '2026-01-14', ''),
(22, 2, 'sulthan', '2026-01-14', '2026-01-14', ''),
(23, 2, 'sulthan', '2026-01-14', '2026-01-15', ''),
(24, 3, 'sulthan', '2026-01-14', '2026-01-15', ''),
(25, 4, 'sulthan', '2026-01-14', '2026-01-15', ''),
(26, 5, 'sulthan', '2026-01-14', '2026-01-15', ''),
(27, 6, 'sulthan', '2026-01-14', '2026-01-14', ''),
(28, 6, 'sulthan', '2026-01-14', '2026-01-15', ''),
(29, 2, 'juan', '2026-01-14', '2026-01-14', ''),
(30, 3, 'juan', '2026-01-14', '2026-01-14', ''),
(31, 4, 'juan', '2026-01-14', '2026-01-14', ''),
(32, 5, 'juan', '2026-01-14', '2026-01-14', ''),
(33, 6, 'juan', '2026-01-14', '2026-01-14', ''),
(34, 2, 'kevin', '2026-01-15', '2026-01-15', ''),
(35, 3, 'kevin', '2026-01-15', '2026-01-15', ''),
(36, 4, 'kevin', '2026-01-15', '2026-01-15', ''),
(37, 5, 'kevin', '2026-01-15', '2026-01-15', ''),
(38, 6, 'kevin', '2026-01-15', '2026-01-15', ''),
(39, 7, 'kevin', '2026-01-15', '2026-01-15', ''),
(40, 2, 'kevin', '2026-01-15', '2026-01-15', ''),
(41, 7, 'kevin', '2026-01-15', '2026-01-15', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin123', 'admin'),
(2, 'user1', 'user123', 'user'),
(9, 'kevin', 'user123', 'user'),
(10, 'sulthan', 'user123', 'user'),
(11, 'juan', 'user123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
