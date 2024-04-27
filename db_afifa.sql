-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Apr 2024 pada 19.18
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_afifa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pertanyaan`
--

CREATE TABLE `tb_pertanyaan` (
  `id_pertanyaan` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `kategori` varchar(256) NOT NULL DEFAULT 'umum',
  `nama_variabel` varchar(10) NOT NULL,
  `nama_dataset` varchar(50) NOT NULL DEFAULT 'tb_survei'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_pertanyaan`
--

INSERT INTO `tb_pertanyaan` (`id_pertanyaan`, `pertanyaan`, `kategori`, `nama_variabel`, `nama_dataset`) VALUES
(1, 'Informasi yang disediakan sistem sesuai kebutuhan', 'Isi', 'X1_1', 'tb_survei'),
(2, 'Bahasa yang digunakan dalam sistem mudah dipahami', 'Isi', 'X1_2', 'tb_survei'),
(3, 'Informasi yang ada dalam sistem selalu diperbaharui', 'Isi', 'X1_3', 'tb_survei'),
(4, 'Informasi yang disajikan oleh sistem sangat akurat', 'Keakuratan', 'X2_1', 'tb_survei'),
(5, 'Adanya user id dan password untuk setiap user pada Sistem informasi', 'Keakuratan', 'X2_2', 'tb_survei'),
(6, 'Hasil output pada layar dari sistem telah sesuai dengan apa yang diperintahkan/input', 'Keakuratan', 'X2_3', 'tb_survei'),
(7, 'Sistem mempunyai struktur menu yang teratur', 'Tampilan', 'X3_1', 'tb_survei'),
(8, 'Paduan warna pada halaman sistem sangat baik sehingga tidak melelahkan mata dan nyaman untuk dilihat', 'Tampilan', 'X3_2', 'tb_survei'),
(9, 'Tampilan antarmuka sistem tidak mempersulit pengguna dalam menggunakan sistem', 'Tampilan', 'X3_3', 'tb_survei'),
(10, 'Tidak membutuhkan waktu yang lama untuk mempelajari bagaimana penggunaan sistem', 'Kemudahan pengguna', 'X4_1', 'tb_survei'),
(11, 'Terdapat menu bantuan manual (help menu) didalam sistem berisi petunjuk yang jelas dalam penggunaan sistem', 'Kemudahan pengguna', 'X4_2', 'tb_survei'),
(12, 'Tersedia menu Searching / pencarian pada sistem untuk memudahkan pengguna dalam mencari informasi atau data', 'Kemudahan pengguna', 'X4_3', 'tb_survei'),
(13, 'Sistem selalu memberikan informasi secara tepat waktu', 'Ketepatan waktu', 'X5_1', 'tb_survei'),
(14, 'Sistem memberikan notifikasi peringatan pada pengguna secara tepat waktu sebagai pemberitahuan jika terdapat error/ atau kesalahan pada data yang diinput', 'Ketepatan waktu', 'X5_2', 'tb_survei');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_skala_likert`
--

CREATE TABLE `tb_skala_likert` (
  `id_skala` int(11) NOT NULL,
  `pendapat` varchar(50) NOT NULL,
  `skor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_skala_likert`
--

INSERT INTO `tb_skala_likert` (`id_skala`, `pendapat`, `skor`) VALUES
(1, 'Sangat Tidak Setuju', 1),
(2, 'Tidak Setuju', 2),
(3, 'Setuju', 3),
(4, 'Sangat Setuju', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_survei`
--

CREATE TABLE `tb_survei` (
  `NO` int(11) NOT NULL,
  `RESPONDEN` varchar(50) DEFAULT NULL,
  `X1_1` int(11) DEFAULT NULL,
  `X1_2` int(11) DEFAULT NULL,
  `X1_3` int(11) DEFAULT NULL,
  `X2_1` int(11) DEFAULT NULL,
  `X2_2` int(11) DEFAULT NULL,
  `X2_3` int(11) DEFAULT NULL,
  `X3_1` int(11) DEFAULT NULL,
  `X3_2` int(11) DEFAULT NULL,
  `X3_3` int(11) DEFAULT NULL,
  `X4_1` int(11) DEFAULT NULL,
  `X4_2` int(11) DEFAULT NULL,
  `X4_3` int(11) DEFAULT NULL,
  `X5_1` int(11) DEFAULT NULL,
  `X5_2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_survei`
--

INSERT INTO `tb_survei` (`NO`, `RESPONDEN`, `X1_1`, `X1_2`, `X1_3`, `X2_1`, `X2_2`, `X2_3`, `X3_1`, `X3_2`, `X3_3`, `X4_1`, `X4_2`, `X4_3`, `X5_1`, `X5_2`) VALUES
(1, 'Responden 1', 4, 4, 3, 3, 3, 4, 4, 3, 3, 3, 4, 2, 3, 2),
(2, 'Responden 2', 3, 3, 3, 2, 4, 3, 4, 4, 3, 3, 2, 2, 2, 2),
(3, 'Responden 3', 3, 3, 3, 3, 4, 3, 3, 4, 3, 3, 2, 2, 2, 2),
(4, 'Responden 4', 3, 4, 3, 4, 4, 4, 4, 3, 3, 3, 1, 2, 4, 2),
(5, 'Responden 5', 4, 4, 2, 4, 4, 4, 3, 4, 3, 3, 2, 2, 4, 1),
(6, 'Responden 6', 3, 4, 3, 4, 3, 4, 4, 4, 3, 3, 1, 2, 4, 2),
(7, 'Responden 7', 3, 4, 4, 4, 3, 4, 4, 3, 3, 3, 2, 2, 4, 1),
(8, 'Responden 8', 3, 4, 2, 4, 3, 4, 4, 4, 3, 3, 1, 2, 4, 1),
(9, 'Responden 9', 4, 4, 3, 4, 3, 4, 4, 4, 3, 3, 2, 2, 3, 1),
(10, 'Responden 10', 4, 4, 3, 4, 3, 4, 4, 3, 3, 4, 2, 1, 3, 1),
(11, 'Responden 11', 4, 4, 3, 4, 4, 4, 3, 2, 2, 3, 2, 2, 4, 1),
(12, 'Responden 12', 3, 4, 3, 4, 4, 4, 3, 3, 3, 4, 2, 2, 4, 1),
(13, 'Responden 13', 4, 4, 3, 4, 4, 4, 4, 4, 3, 4, 2, 2, 4, 2),
(14, 'Responden 14', 3, 4, 3, 4, 4, 4, 4, 3, 3, 4, 2, 2, 3, 2),
(15, 'Responden 15', 4, 4, 3, 4, 4, 4, 4, 3, 3, 4, 1, 1, 4, 2),
(16, 'Responden 16', 4, 4, 2, 4, 4, 4, 4, 3, 3, 3, 2, 1, 3, 2),
(17, 'Responden 17', 4, 4, 3, 4, 4, 4, 4, 3, 2, 3, 2, 1, 3, 1),
(18, 'Responden 18', 4, 4, 3, 4, 4, 4, 3, 2, 3, 3, 1, 1, 3, 2),
(19, 'Responden 19', 3, 3, 3, 4, 4, 4, 3, 3, 3, 3, 2, 1, 3, 2),
(20, 'Responden 20', 3, 4, 4, 4, 4, 4, 3, 4, 3, 2, 1, 2, 3, 2),
(21, 'Responden 21', 3, 4, 4, 4, 3, 4, 3, 3, 2, 3, 2, 2, 4, 1),
(22, 'Responden 22', 3, 3, 4, 4, 3, 4, 3, 4, 3, 3, 1, 2, 4, 1),
(23, 'Responden 23', 3, 3, 3, 3, 4, 4, 3, 3, 3, 3, 2, 2, 3, 1),
(24, 'Responden 24', 4, 4, 2, 4, 3, 4, 4, 4, 2, 2, 1, 2, 4, 1),
(25, 'Responden 25', 4, 3, 3, 3, 4, 4, 4, 2, 3, 3, 2, 1, 3, 1),
(26, 'Responden 26', 4, 4, 4, 3, 3, 4, 3, 3, 3, 3, 2, 1, 4, 2),
(27, 'Responden 27', 4, 3, 3, 3, 4, 4, 3, 4, 3, 3, 2, 2, 3, 1),
(28, 'Responden 28', 4, 3, 3, 3, 3, 4, 4, 3, 2, 4, 2, 2, 4, 2),
(29, 'Responden 29', 4, 3, 3, 4, 4, 4, 3, 4, 3, 3, 2, 2, 4, 2),
(30, 'Responden 30', 4, 4, 2, 4, 3, 4, 3, 3, 3, 4, 1, 1, 4, 2),
(31, 'Responden 31', 3, 4, 3, 3, 4, 4, 3, 4, 3, 4, 1, 1, 3, 2),
(32, 'Responden 32', 4, 3, 2, 3, 4, 4, 3, 3, 3, 3, 1, 1, 3, 2),
(33, 'Responden 33', 3, 3, 3, 4, 4, 4, 3, 4, 3, 4, 1, 1, 4, 2),
(34, 'Responden 34', 4, 3, 2, 4, 4, 4, 3, 3, 2, 3, 1, 1, 4, 1),
(35, 'Responden 35', 3, 3, 3, 4, 4, 4, 3, 4, 3, 4, 1, 1, 4, 1),
(36, 'Responden 36', 4, 3, 3, 4, 4, 4, 3, 3, 3, 3, 2, 2, 4, 1),
(37, 'Responden 37', 3, 3, 3, 4, 3, 4, 3, 2, 3, 4, 2, 2, 3, 1),
(38, 'Responden 38', 4, 4, 3, 3, 4, 4, 3, 4, 2, 3, 2, 1, 3, 2),
(39, 'Responden 39', 3, 3, 3, 4, 3, 3, 4, 3, 3, 4, 1, 2, 4, 2),
(40, 'Responden 40', 4, 4, 3, 3, 3, 3, 4, 4, 3, 3, 2, 1, 4, 2),
(41, 'Responden 41', 3, 3, 3, 4, 3, 4, 4, 3, 3, 4, 2, 2, 4, 1),
(42, 'Responden 42', 4, 4, 3, 3, 4, 4, 3, 4, 3, 3, 1, 1, 4, 2),
(43, 'Responden 43', 3, 3, 3, 4, 3, 4, 3, 3, 3, 4, 2, 2, 4, 1),
(44, 'Responden 44', 3, 4, 3, 3, 3, 4, 3, 4, 3, 4, 1, 1, 3, 1),
(45, 'Responden 45', 4, 4, 3, 3, 4, 3, 3, 3, 2, 4, 2, 2, 3, 2),
(46, 'Responden 46', 4, 4, 4, 3, 4, 4, 4, 4, 3, 4, 1, 2, 3, 2),
(47, 'Responden 47', 3, 3, 4, 3, 3, 4, 3, 4, 4, 3, 2, 2, 4, 2),
(48, 'Responden 48', 4, 3, 3, 3, 3, 3, 4, 4, 3, 3, 1, 2, 4, 2),
(49, 'Responden 49', 3, 4, 4, 3, 3, 4, 4, 4, 4, 3, 2, 2, 4, 1),
(50, 'Responden 50', 4, 4, 3, 4, 3, 3, 3, 3, 3, 4, 1, 1, 3, 1),
(51, 'Responden 51', 3, 3, 4, 4, 4, 4, 3, 3, 4, 4, 2, 1, 4, 2),
(52, 'Responden 52', 4, 4, 2, 4, 3, 3, 4, 3, 4, 4, 2, 1, 3, 2),
(53, 'Responden 53', 3, 4, 3, 4, 3, 4, 4, 4, 4, 3, 2, 2, 4, 2),
(54, 'Responden 54', 4, 3, 3, 4, 4, 3, 3, 4, 4, 3, 2, 1, 4, 1),
(55, 'Responden 55', 3, 3, 3, 3, 4, 4, 4, 4, 3, 4, 2, 1, 4, 2),
(56, 'Responden 56', 3, 3, 2, 3, 3, 4, 3, 3, 4, 4, 1, 1, 4, 2),
(57, 'Responden 57', 3, 3, 2, 3, 4, 4, 4, 4, 3, 4, 2, 1, 4, 2),
(58, 'Responden 58', 3, 4, 3, 3, 4, 4, 4, 3, 4, 4, 2, 2, 4, 2),
(59, 'Responden 59', 3, 3, 4, 3, 4, 3, 4, 4, 2, 3, 1, 2, 4, 2),
(60, 'Responden 60', 4, 4, 3, 4, 3, 3, 4, 3, 3, 3, 2, 2, 3, 2),
(61, 'Responden 61', 4, 3, 4, 4, 3, 3, 4, 4, 3, 4, 1, 1, 4, 1),
(62, 'Responden 62', 4, 4, 4, 3, 4, 3, 4, 3, 4, 4, 1, 1, 4, 1),
(63, 'Responden 63', 4, 3, 3, 4, 4, 3, 3, 4, 3, 3, 1, 1, 4, 1),
(64, 'Responden 64', 3, 4, 3, 3, 4, 3, 3, 3, 4, 3, 2, 2, 4, 2),
(65, 'Responden 65', 4, 4, 3, 4, 4, 4, 3, 4, 3, 4, 2, 2, 4, 2),
(66, 'Responden 66', 3, 4, 3, 3, 3, 4, 3, 3, 4, 3, 1, 1, 4, 2),
(67, 'Responden 67', 4, 3, 3, 4, 3, 3, 4, 4, 3, 3, 2, 1, 4, 1),
(68, 'Responden 68', 3, 3, 3, 3, 4, 4, 4, 4, 3, 4, 1, 2, 4, 2),
(69, 'Responden 69', 4, 4, 3, 4, 4, 4, 3, 3, 3, 4, 2, 1, 4, 2),
(70, 'Responden 70', 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 1, 1, 4, 2),
(71, 'Responden 71', 4, 3, 3, 4, 4, 4, 3, 3, 4, 3, 2, 2, 4, 2),
(72, 'Responden 72', 3, 3, 3, 4, 4, 4, 4, 4, 4, 3, 1, 1, 3, 2),
(73, 'Responden 73', 4, 3, 3, 4, 4, 4, 4, 4, 3, 3, 2, 2, 3, 1),
(74, 'Responden 74', 3, 3, 4, 4, 3, 4, 3, 4, 4, 3, 1, 1, 4, 1),
(75, 'Responden 75', 4, 3, 4, 4, 3, 4, 4, 3, 3, 3, 2, 2, 4, 2),
(76, 'Responden 76', 3, 3, 3, 4, 3, 4, 4, 3, 4, 3, 1, 1, 3, 2),
(77, 'Responden 77', 4, 4, 4, 4, 3, 4, 3, 3, 2, 4, 2, 2, 3, 1),
(78, 'Responden 78', 3, 3, 3, 4, 4, 4, 3, 3, 3, 4, 1, 2, 4, 2),
(79, 'Responden 79', 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 2, 2, 4, 1),
(80, 'Responden 80', 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 1, 1, 4, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `status` varchar(256) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `status`) VALUES
(1, 'afifa', 'afifa', 'admin'),
(2, 'jkjsaslk', 'nmnsmd', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indeks untuk tabel `tb_skala_likert`
--
ALTER TABLE `tb_skala_likert`
  ADD PRIMARY KEY (`id_skala`);

--
-- Indeks untuk tabel `tb_survei`
--
ALTER TABLE `tb_survei`
  ADD PRIMARY KEY (`NO`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tb_skala_likert`
--
ALTER TABLE `tb_skala_likert`
  MODIFY `id_skala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_survei`
--
ALTER TABLE `tb_survei`
  MODIFY `NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
