-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2022 pada 14.08
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbo_171122`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `username` varchar(100) NOT NULL,
  `password` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`username`, `password`) VALUES
('egirenaldi', 'egi123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_perpus`
--

CREATE TABLE `data_perpus` (
  `nama` varchar(100) NOT NULL,
  `kelas` char(11) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `kode_buku` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_perpus`
--

INSERT INTO `data_perpus` (`nama`, `kelas`, `judul_buku`, `kode_buku`) VALUES
('david lutfi', '11rpl1', 'dilon 992', '0'),
('egi', '11rpl1', 'dilan', '0'),
('hulu', '11 rpl 1', 'putri duyung', '0'),
('syawali', '11rpl1', 'dilan1990', '0');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `data_perpus`
--
ALTER TABLE `data_perpus`
  ADD PRIMARY KEY (`nama`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
