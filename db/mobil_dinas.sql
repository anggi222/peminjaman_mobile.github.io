-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Bulan Mei 2025 pada 05.18
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobil_dinas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `nama_pegawai` varchar(100) DEFAULT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `bidang` varchar(100) DEFAULT NULL,
  `nama_mobil` varchar(50) DEFAULT NULL,
  `keperluan` text DEFAULT NULL,
  `tgl_pinjam` datetime DEFAULT NULL,
  `tgl_kembali` datetime DEFAULT NULL,
  `bulan` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `nama_pegawai`, `nip`, `bidang`, `nama_mobil`, `keperluan`, `tgl_pinjam`, `tgl_kembali`, `bulan`, `tahun`) VALUES
(5, 'renita', '2233123456', 'pikcup', 'Avanza', 'm', '2025-05-29 11:32:00', '2025-05-27 16:00:00', 5, 2025),
(7, 'NADIA', '222400124', 'Peternakan', 'Panther', 'sOSIALISASI', '2025-05-28 11:15:00', '2025-05-28 16:15:00', 5, 2025),
(8, 'chiko', '6453928709347', 'Holtikultura', 'Pick Up', 'acara halal bihalal', '2025-05-28 08:44:00', '2025-05-28 13:44:00', 5, 2025);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(3, 'admin', '$2y$10$x3QhViI/k5Rbl1bR16V7YevNMjzWr259I6ZJMMw/r/3o9p/VNi3Qy');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
