-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jul 2021 pada 13.59
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_absensi_updated`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `positions`
--

CREATE TABLE `positions` (
  `id_positions` int(11) NOT NULL,
  `position_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `positions`
--

INSERT INTO `positions` (`id_positions`, `position_name`) VALUES
(1, 'Dosen'),
(2, 'Tata Usaha'),
(3, 'Staff'),
(4, 'Laboran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `presents`
--

CREATE TABLE `presents` (
  `id_presents` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `information` char(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `presents`
--

INSERT INTO `presents` (`id_presents`, `user_id`, `date`, `time`, `information`, `status`) VALUES
(36, 19, '2020-08-27', '09:00:32', 'M', 1),
(37, 19, '2020-08-27', '09:00:35', 'I', 2),
(38, 19, '2020-08-27', '09:00:38', 'S', 2),
(39, 6, '2021-04-20', '16:53:59', 'M', 1),
(40, 6, '2021-04-20', '20:22:07', 'M', 0),
(41, 6, '2021-04-21', '00:02:18', 'I', 1),
(42, 6, '2021-04-21', '00:44:03', 'S', 2),
(43, 23, '2021-07-07', '18:26:51', 'S', 1),
(44, 24, '2021-07-07', '18:28:54', 'M', 1),
(45, 25, '2021-07-07', '18:30:03', 'I', 1),
(46, 22, '2021-07-07', '18:30:41', 'M', 1),
(47, 22, '2021-07-07', '18:30:44', 'I', 1),
(48, 22, '2021-07-07', '18:30:45', 'S', 1),
(49, 22, '2021-07-07', '18:30:46', 'M', 1),
(50, 22, '2021-07-07', '18:30:46', 'M', 1),
(51, 22, '2021-07-07', '18:30:47', 'M', 2),
(52, 22, '2021-07-07', '18:30:47', 'M', 2),
(53, 22, '2021-07-07', '18:30:48', 'M', 1),
(54, 22, '2021-07-07', '18:30:48', 'M', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id_roles` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id_roles`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `no_employee` char(18) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(1) NOT NULL,
  `position_id` int(11) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_users`, `no_employee`, `name`, `gender`, `email`, `photo`, `password`, `role_id`, `position_id`, `date_created`) VALUES
(1, '', 'Administrator', '', 'admin@gmail.com', NULL, '$2y$10$VqvV0UfbaEhwfR0v1nQUOOz0SY461B3Q41cwaHiqocwfN5uG9lUge', 1, 0, '2020-04-14'),
(22, '1962011719844554', 'Wahyu Oktavian', 'L', 'wahyu@gmail.com', 'ac4395fd6647b2184f4465f325e8187d.jpg', '$2y$10$8XDGT2vmZcbaNm1.N1otU.KHCyTnCL3nmaavRyr0oSX8xJWOi102O', 2, 1, '2021-07-07'),
(23, '11235533242332', 'Panji Prasetyo', 'L', 'panji@gmail.com', '2fb7bf37c18171b3e499301f2efddb97.jpg', '$2y$10$c9/EHkap9U5vA0gzUoWKVOW08HAh/IgIHA00Ooai3I9XGSpo5o78u', 2, 2, '2021-07-07'),
(24, '7788749302938', 'Naufal', 'L', 'naufal@gmail.com', 'b2dda2af3319f748edf80a797b26a4dc.jpg', '$2y$10$fzccGyQKYR.sMMwxlL6lieo7xx2zWJhl/6upLl7gEAlUZ5QIkH9P2', 2, 3, '2021-07-07'),
(25, '556478890947', 'Hendrik', 'L', 'hendrik@gmail.com', '0b96c3aca9709eb1ff7f7f6b65130fca.jpg', '$2y$10$u7N4ElbqD9FBVhKEs1HVeuO9/hiSH89W6NXJmo2eXxl5ClbI.j/u2', 2, 4, '2021-07-07');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id_positions`);

--
-- Indeks untuk tabel `presents`
--
ALTER TABLE `presents`
  ADD PRIMARY KEY (`id_presents`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_roles`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `positions`
--
ALTER TABLE `positions`
  MODIFY `id_positions` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `presents`
--
ALTER TABLE `presents`
  MODIFY `id_presents` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id_roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
