-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2024 pada 15.35
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
-- Database: `project_umkm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_category_tabs`
--

CREATE TABLE `m_category_tabs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `m_category_tabs`
--

INSERT INTO `m_category_tabs` (`id`, `title`) VALUES
(1, 'Makanan & Minuman'),
(2, 'Kerajinan Tangan'),
(3, 'Kesehatan'),
(4, 'Produk Rumah Tangga'),
(5, 'Kosmetik'),
(6, 'Produk Keramik'),
(7, 'Produk Pertanian'),
(8, 'Alat Musik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_tabs`
--

CREATE TABLE `users_tabs` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` char(50) NOT NULL,
  `name` char(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `brand` char(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` char(15) NOT NULL,
  `m_category_tabs_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users_tabs`
--

INSERT INTO `users_tabs` (`id`, `email`, `name`, `password`, `brand`, `address`, `phone`, `m_category_tabs_id`, `rating`) VALUES
(2, 'anggi@gmail.com', 'anggi', '$2y$10$GWYVnp9sKL00Q1VDI/N6Y.VyQOFtXV9Mux0UtZgVk5fPEoZ7dCj1K', 'Geprek Tikus', 'India', '0888888881', 5, 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `m_category_tabs`
--
ALTER TABLE `m_category_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users_tabs`
--
ALTER TABLE `users_tabs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `m_category_tabs`
--
ALTER TABLE `m_category_tabs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users_tabs`
--
ALTER TABLE `users_tabs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
