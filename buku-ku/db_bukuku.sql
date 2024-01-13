-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2024 pada 06.15
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
-- Database: `db_bukuku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(55, 'kala senja menyapa', 65000, 'buku2.jpg', 2),
(56, 'Ruang Sunyi', 56000, 'buku9.jpg', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `desa` varchar(255) NOT NULL,
  `jalan` varchar(255) NOT NULL,
  `pin_code` varchar(255) NOT NULL,
  `total_price` int(11) NOT NULL,
  `tanggal` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id`, `name`, `no_telp`, `email`, `method`, `provinsi`, `kota`, `desa`, `jalan`, `pin_code`, `total_price`, `tanggal`) VALUES
(8, 'yusya', '085702481426', 'yusya.pkl123@gmail.com', 'cash on delivery', 'jawa tengah', 'pekalongan', 'podosugih', 'jl. jendral sudirman Gg. pembangunan No. 13', '2165465', 346500, '2024-01-13'),
(10, 'yusya', '25840', 'm.lukmanisma@gmail.com', 'credit card', 'jawa tengah', 'pekalongan', 'karanganyar', 'jl. sentosa', '2165465', 65000, '2024-01-13'),
(11, 'yusya', '25840', 'm.lukmanisma@gmail.com', 'cash on delivery', 'jawa tengah', 'pekalongan', 'karanganyar', 'jl. sentosa', '2165465', 65000, '2024-01-13'),
(12, 'fizal99', '2869543', 'M.lukmanisma@gmail.com', 'cash on delivery', 'jawa tengah', 'pekalongan', 'podosugih', 'jl. sentosa', '2165465', 65000, '2024-01-13'),
(13, 'yusya', '2869543', 'm.lukmanisma@gmail.com', 'paypal', 'jawa tengah', 'pekalongan', 'karanganyar', 'jl. sentosa', '2165465', 65000, '2024-01-13'),
(14, 'fizal99', '2869543', 'm.lukmanisma@gmail.com', 'cash on delivery', 'jawa tengah', 'pekalongan ', 'karanganyar', 'jl. sentosa', '2165465', 121000, '2024-01-13'),
(15, 'yusya', '25840', 'm.lukmanisma@gmail.com', 'credit card', 'jawa tengah', 'pekalongan', 'karanganyar', 'jl. sentosa', '2165465', 179000, '2024-01-13'),
(16, 'fizal99', '25840', 'M.lukmanisma@gmail.com', 'paypal', 'jawa tengah', 'pekalongan', 'podosugih', 'jl. sentosa', '2165465', 65000, '2024-01-13'),
(17, 'yusya', '25840', 'm.lukmanisma@gmail.com', 'credit card', 'jawa tengah', 'pekalongan', 'karanganyar', 'jl. sentosa', '2165465', 90000, '2024-01-13'),
(18, 'yusya', '25840', 'M.lukmanisma@gmail.com', 'cash on delivery', 'jawa tengah', 'pekalongan', 'karanganyar', 'jl. sentosa', '2165465', 90000, '2024-01-13'),
(19, '', '', '', '', '', '', '', '', '', 0, '2024-01-13'),
(20, '', '', '', '', '', '', '', '', '', 0, '2024-01-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(30, 'kala senja menyapa', 65000, 'buku2.jpg'),
(31, 'Ruang Sunyi', 56000, 'buku9.jpg'),
(32, 'the keymaster', 110000, 'buku8.jpg'),
(33, 'Gadis Dari galaksi tak dikenal', 85000, 'buku7.jpg'),
(34, 'senja', 50500, 'buku1.jpg'),
(36, 'bahagia', 89000, 'buku16.jpg'),
(37, 'tujuh kelana', 90000, 'buku6.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `tanggal_dibuat` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `password`, `tanggal_dibuat`) VALUES
(11, 'lukman isma', 'LKisma', 'm.lukmanisma@gmail.com', '123456789', '2024-01-07'),
(12, 'yanti', 'yayan', 'yayanti@gmail.com', '123456789', '2024-01-08'),
(13, 'yanti', 'yayantii', 'hehe@gmail.com', '123456789', '2024-01-08'),
(15, 'ismail bin mail', 'mail', 'mail@gmail.com', '987654321', '2024-01-11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `id_user` (`id_user`,`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
