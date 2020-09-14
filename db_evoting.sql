-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Sep 2020 pada 07.06
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_evoting`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_admin`, `username`, `password`, `created_at`, `updated_at`, `remember_token`) VALUES
(2, 'Sienna Bergstrom', 'steuber.doyle', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'AArhFuMxLQWczEgU1SCusjSsdFreJ4OE132R1ruOW065pVwybZnmrWURu9F6'),
(3, 'Zaria O\'Conner', 'leland41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'FipEa2czcE'),
(4, 'Darwin Kessler', 'bcrist', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'tx1kuha5ym'),
(5, 'Mafalda Feeney DDS', 'nakia.turner', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'pB9st2JbWN'),
(7, 'testt', 'MinerAndCraftPE', '$2y$10$KGzoJrE8e62EV7wkuVGKq.Mr.Be9lFcqU2n5.yBCL5kpn6dEDywra', '2020-09-01 17:49:11', '2020-09-01 17:49:11', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_calon`
--

CREATE TABLE `tbl_calon` (
  `id_calon` int(11) NOT NULL,
  `nama_ketua` varchar(100) NOT NULL,
  `nama_wakil` varchar(100) NOT NULL,
  `kelas_ketua` varchar(20) NOT NULL,
  `kelas_wakil` varchar(20) NOT NULL,
  `foto_ketua` text NOT NULL,
  `foto_wakil` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `jumlah_suara` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_calon`
--

INSERT INTO `tbl_calon` (`id_calon`, `nama_ketua`, `nama_wakil`, `kelas_ketua`, `kelas_wakil`, `foto_ketua`, `foto_wakil`, `visi`, `misi`, `jumlah_suara`) VALUES
(6, 'Qud\'a La\'ut', 'Madara Nambawan', 'XII RPL A', 'XII RPL A', 'foto_ketua_1599011642.jpg', 'foto_wakil_1599011642.jpg', 'Menjadikan Semua orang dapat berenang dan berperang', 'Menjadikan manusia yang dan santai seperti Air laut namun serius dan tekun seperti berperang', 0),
(7, 'MinerFamz', 'GwJadiNgri', 'XII RPL A', 'XII RPL B', 'foto_ketua_1599012902.png', 'foto_wakil_1599012902.png', 'Lorem ipsum Dolor Sit Amet  Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet', 'Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet Lorem ipsum Dolor Sit Amet', 0),
(10, 'Band Hamma', 'NubiesSu', 'XII RPL A', 'XII RPL C', 'foto_ketua_1599400335.jpg', 'foto_wakil_1599400336.png', 'owkwok Test doang owkwok Test doangowkwok Test doangowkwok Test doangowkwok Test doangowkwok Test doangowkwok Test doangowkwok Test doangowkwok Test doangowkwok Test doangowkwok Test doangowkwok Test doangowkwok Test doangowkwok Test doang', 'owkwok Test doangowkwok Test doangowkwok Test doangowkwok Test doangowkwok Test doangowkwok Test doangowkwok Test doangowkwok Test doangowkwok Test doangowkwok Test doang', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pemilih`
--

CREATE TABLE `tbl_pemilih` (
  `id_pemilih` int(11) NOT NULL,
  `nama_pemilih` varchar(100) NOT NULL,
  `kelas_pemilih` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `remember_token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pemilih`
--

INSERT INTO `tbl_pemilih` (`id_pemilih`, `nama_pemilih`, `kelas_pemilih`, `jenis_kelamin`, `username`, `password`, `status`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'Bernardo Batz', 'XII RPL A', 'Laki-Laki', 'dmclaughlin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', '0szj2zCZHslJvoBTtTpXLUp9agGpSwwSfKHhjZfcX5h0qewTJqoahIsQ6o3n'),
(2, 'Sage Langworth', 'XII RPL A', 'Laki-Laki', 'tabitha78', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'axx5uH9UyBCH8tjY3ShuVXXjfnCNdIdmS6iorQRtqRfiKsFTOdEgGdW7gjt2'),
(3, 'Miss Berniece Sawayn II', 'XII RPL B', 'Laki-Laki', 'gustave.ullrich', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', '1esQ4RuS76'),
(4, 'Mr. Torrance Krajcik Sr.', 'XII RPL B', 'Perempuan', 'cassandre65', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', '55llmMQsjTIBqvDKlR5e1OSVharmW4lmvI3qBmaDefz7YziW97z7eymNJCnv'),
(5, 'Jaylin Pagac', 'XII RPL B', 'Laki-Laki', 'dfeil', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'YytrUJ7G5r'),
(6, 'Pasquale Hettinger', 'XII RPL C', 'Laki-Laki', 'ebauch', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'LS0TQ1SYMy'),
(7, 'Jamar Beier', 'XII RPL C', 'Perempuan', 'emerson.kilback', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', '0epxXMmrk4'),
(8, 'Miss Madonna Eichmann', 'XII RPL C', 'Perempuan', 'joseph.fadel', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'VKMcPEP8hI'),
(9, 'Mr. Arnoldo Schulist I', 'XII RPL C', 'Perempuan', 'melyssa.douglas', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'oUB2thUlC1'),
(10, 'Sonia Gerhold', 'XII RPL C', 'Perempuan', 'caroline86', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'Mx6vvMsSsQzQSee7xnScP0NzfVyGnmyo8LgmFLKajDeZSMi0A2ewAG34zsb7'),
(11, 'Laney Upton', 'XII RPL C', 'Laki-Laki', 'twolf', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'BCmRuXQ6bQ'),
(12, 'Onie Rice', 'XII RPL A', 'Laki-Laki', 'gideon28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'GRd31PEwhZy7VVovQ7b56EZxg8BoQ1s4NgqL3gCf9pfd2McZlN3HdMMDE7Ew'),
(13, 'Laurine Konopelski I', 'XII RPL C', 'Laki-Laki', 'earline11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'fMlbvLV8KnHhnBqKPZrhLSTrgcJk1UR1Ziktracm6DZerYksPQVzKumOTxrX'),
(14, 'Ashleigh Spencer DDS', 'XII RPL C', 'Perempuan', 'adrien.grant', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'qOxkcNq3hp'),
(15, 'Mr. Perry Pfannerstill', 'XII RPL B', 'Laki-Laki', 'jabari35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', '6m8Z9IR2Qx'),
(16, 'Clare Barton', 'XII RPL B', 'Perempuan', 'qking', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'G21OmlwRq6ow57qRvc5yQh6RYyhMNAlwBposwY7Men4pnEvKrABoCkbI2SfF'),
(17, 'Kiarra Wintheiser', 'XII RPL C', 'Perempuan', 'leannon.kelton', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'Pfl8zEl59xt4GxDBzaa8g8SmY3U1Sf4R11ami9ZU81iqRHDaYtktIhysdJfC'),
(18, 'Raheem Powlowski', 'XII RPL B', 'Laki-Laki', 'thalvorson', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'j0VrT7ZLfsRotRTzFYZsnTU5cPty63cPFKd977bsRkz2sSF6gaOnaS0QYSz8'),
(19, 'Ms. Alyce Kozey', 'XII RPL C', 'Laki-Laki', 'heaney.margaret', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', '32JChlvBoD'),
(20, 'Webster Wiegand', 'XII RPL B', 'Laki-Laki', 'daisha.lebsack', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'gPPBV23EJARa8Niv1viZhPSMtH1OtZ0UOJYzpyLeMCbC2RRKuUggMkAopNRj'),
(21, 'Miss Zora Kilback', 'XII RPL B', 'Perempuan', 'tillman.isom', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'mkEWbWyUhRPxjsTpJY3AGLZNR8grfq6btkAMqCbuRXlGys1RmT0bL0lj62BD'),
(22, 'Dean Brakus', 'XII RPL A', 'Laki-Laki', 'spencer.letitia', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'sqcQ86SlcD'),
(23, 'Isabelle Macejkovic Jr.', 'XII RPL A', 'Perempuan', 'sankunding', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'X6Dqc94e0s'),
(24, 'Dedrick Kihn', 'XII RPL A', 'Laki-Laki', 'christian50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'luWiT2BsSl'),
(25, 'Prof. Elwin Hansen', 'XII RPL A', 'Perempuan', 'mzemlak', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'zBbs1ZmEpS'),
(26, 'Ora Conroy', 'XII RPL C', 'Perempuan', 'leonardo.boyer', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'csEfM3LQzT'),
(27, 'Annabel Wuckert MD', 'XII RPL C', 'Laki-Laki', 'jamil87', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'j9LV6gEPEl'),
(28, 'Danial Steuber', 'XII RPL B', 'Perempuan', 'moconnell', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'do3xr51BvP'),
(29, 'Mrs. Rosa Predovic DDS', 'XII RPL C', 'Laki-Laki', 'connelly.laurence', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'CdI85WAHu9'),
(30, 'Jaydon Bechtelar', 'XII RPL A', 'Laki-Laki', 'fbalistreri', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'y1IXi3u6Ab'),
(31, 'Dr. Nicklaus Batz DVM', 'XII RPL A', 'Perempuan', 'uwalsh', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'BpX9ZfEACx'),
(32, 'Mr. Jaron Russel Sr.', 'XII RPL A', 'Perempuan', 'lowell.swaniawski', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'xnzvtWFBWB'),
(33, 'Mrs. Adrienne Gibson', 'XII RPL A', 'Perempuan', 'kenneth.ritchie', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'qKHre5e9re'),
(34, 'Mr. Herbert Ward DDS', 'XII RPL C', 'Perempuan', 'tomasa71', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'BZ4YfeCmLw'),
(35, 'Mateo Robel', 'XII RPL B', 'Perempuan', 'ehoppe', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'hRwi2FnNKf'),
(36, 'Mrs. Frida Feil II', 'XII RPL A', 'Laki-Laki', 'marks.nicholas', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'C1T62qdI6t'),
(37, 'Prof. Alek Friesen II', 'XII RPL B', 'Laki-Laki', 'maya.ohara', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'TkJw927xlI'),
(38, 'Alvena Quigley', 'XII RPL B', 'Laki-Laki', 'tremblay.hilbert', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'sZ0JZa4Dhn'),
(39, 'Tiana Blanda', 'XII RPL B', 'Perempuan', 'tyson.roob', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'BOHSjMsHK0'),
(40, 'Ms. Audreanne Swift', 'XII RPL B', 'Laki-Laki', 'kmcclure', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'ROWXNbGNEg'),
(41, 'Tierra O\'Conner', 'XII RPL A', 'Perempuan', 'ethompson', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'ZAEuyzXwGY'),
(42, 'Ayana Gaylord', 'XII RPL B', 'Perempuan', 'ptorp', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'cM4VeNO1nm'),
(43, 'Dr. Emerson Wolf MD', 'XII RPL C', 'Laki-Laki', 'wuckert.cesar', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', '0STUYz1RZj'),
(44, 'Micaela Ledner', 'XII RPL A', 'Laki-Laki', 'cklocko', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'rAW2pDLSU4'),
(45, 'Dr. Noble Lockman DVM', 'XII RPL A', 'Laki-Laki', 'rwalker', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', '6p6KbY8eVt'),
(46, 'Aisha Klocko', 'XII RPL B', 'Laki-Laki', 'makenna.hill', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'JOIUsBA4Gl'),
(47, 'Wyman Schinner', 'XII RPL C', 'Perempuan', 'hollis.predovic', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'c9oIvhBjTy'),
(48, 'Mr. Roscoe Nicolas', 'XII RPL A', 'Laki-Laki', 'ggutkowski', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', '8SKDAQDD2U'),
(49, 'Vita Cruickshank', 'XII RPL B', 'Perempuan', 'kilback.brianne', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'Be8DGCqGE4'),
(50, 'Christiana Wolff', 'XII RPL A', 'Laki-Laki', 'fsatterfield', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'a1ssvqKlGm'),
(51, 'Leonel Vandervort', 'XII RPL C', 'Laki-Laki', 'xshields', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'DHLl76YBLI'),
(52, 'Dr. Santa Frami', 'XII RPL C', 'Laki-Laki', 'aditya.bosco', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'BQjMY13dxv'),
(53, 'Bryon Funk', 'XII RPL A', 'Perempuan', 'chaim02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'Vi7yrxshD4'),
(54, 'Lynn Mertz', 'XII RPL B', 'Laki-Laki', 'treutel.mallory', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'NlUr3jbANs'),
(55, 'Lera Mertz', 'XII RPL C', 'Perempuan', 'kenneth.torp', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'S1sQzio8Ux'),
(56, 'Jaydon Mayert II', 'XII RPL A', 'Perempuan', 'rex25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'XZOOE2OiEw'),
(57, 'Dr. Otilia Nolan', 'XII RPL A', 'Perempuan', 'hboyer', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'GN16x8MSZw'),
(58, 'Prof. Stewart Mosciski', 'XII RPL C', 'Laki-Laki', 'linnie02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'gJFGPk1iVx'),
(59, 'Prof. Geovanny Carter DVM', 'XII RPL C', 'Perempuan', 'cmcdermott', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'VAPF3wp5wW'),
(60, 'Dr. Angus Reinger MD', 'XII RPL A', 'Laki-Laki', 'marjory.howell', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'd89u6NthQh'),
(61, 'Damaris Aufderhar', 'XII RPL C', 'Perempuan', 'caden.wuckert', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'B5Wh8yxtsd'),
(62, 'Marietta Waters', 'XII RPL C', 'Laki-Laki', 'rebeca91', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'im5kJL21y8'),
(63, 'Leif Crist', 'XII RPL B', 'Laki-Laki', 'utillman', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'zETSe1ly2b'),
(64, 'Mrs. Maybell Kub I', 'XII RPL B', 'Laki-Laki', 'thermiston', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'YZ6LahpRiv'),
(65, 'Aletha Swaniawski DDS', 'XII RPL A', 'Perempuan', 'tiffany60', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'iXMvFn7aEw'),
(66, 'Prof. Chloe Gusikowski', 'XII RPL C', 'Perempuan', 'leonard.jacobs', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'G7kLuqdPG0'),
(67, 'Marianna Heidenreich', 'XII RPL B', 'Perempuan', 'erolfson', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', '1ENnAvE6cI'),
(68, 'Elisa Hettinger', 'XII RPL C', 'Perempuan', 'lesley67', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', '80w0vPnL9T'),
(69, 'Cristobal Wolff IV', 'XII RPL C', 'Laki-Laki', 'corine.hickle', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'Og0QD4HetZ'),
(70, 'Lamar Blanda', 'XII RPL C', 'Laki-Laki', 'samanta67', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'XYxVf5XFmc'),
(71, 'Maxie Schuster', 'XII RPL A', 'Perempuan', 'schiller.thea', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', '09fsQhcbii'),
(72, 'Maximilian Bergstrom DDS', 'XII RPL C', 'Laki-Laki', 'carli.block', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'ec8DoGy5Y8'),
(73, 'Terrance Pacocha', 'XII RPL A', 'Laki-Laki', 'elwyn92', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'Myr4MwmbPp'),
(74, 'Marc Kuhic', 'XII RPL B', 'Laki-Laki', 'abdiel07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', '3kzFAX0EuH'),
(75, 'Rosie Walker V', 'XII RPL A', 'Perempuan', 'monty.wolff', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'rSZT9GHpVX'),
(76, 'Karine Douglas', 'XII RPL C', 'Laki-Laki', 'karley.heathcote', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'cCHX54fLow'),
(77, 'Dr. Lauren Emmerich', 'XII RPL B', 'Perempuan', 'murphy.penelope', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'KP3ic6AKm9'),
(78, 'Sofia Hermiston II', 'XII RPL A', 'Laki-Laki', 'philip.greenfelder', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', '89yWNfbOgE'),
(79, 'Miss Aglae Dickinson PhD', 'XII RPL B', 'Laki-Laki', 'tgrant', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'E8f4wpIiRc'),
(80, 'Rosemarie Sawayn', 'XII RPL A', 'Laki-Laki', 'murl34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', '8uNwbarrIX'),
(81, 'Dr. Marcelina Skiles', 'XII RPL B', 'Perempuan', 'oreilly.alene', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'AYsIvGeUDD'),
(82, 'Linnea Pfeffer', 'XII RPL B', 'Laki-Laki', 'curt.corkery', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'mEwzBPG2VZ'),
(83, 'Twila Nicolas Jr.', 'XII RPL B', 'Perempuan', 'aglae32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'EjnQby9xGX'),
(84, 'Nathan Luettgen', 'XII RPL A', 'Perempuan', 'wunsch.cyrus', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'WgrTqr40HJ'),
(85, 'Leola Hodkiewicz', 'XII RPL A', 'Laki-Laki', 'srempel', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'lzudIaWIby'),
(86, 'Bernice Cummerata', 'XII RPL A', 'Laki-Laki', 'kylee.jacobson', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'FmhUt5BEzN'),
(87, 'Cordelia Renner', 'XII RPL B', 'Perempuan', 'celine26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'l0EuWVqkz3'),
(88, 'Daisha Hackett', 'XII RPL B', 'Laki-Laki', 'zgerlach', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'CxP1zlZWh4'),
(89, 'Mariana Hilpert', 'XII RPL C', 'Perempuan', 'marianna.cremin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'r9ag41Ik6d'),
(90, 'Sarai Legros', 'XII RPL B', 'Perempuan', 'rolfson.diana', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'ZWW2tZUK1K'),
(91, 'Jaunita Conroy', 'XII RPL B', 'Laki-Laki', 'mdoyle', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'iD8tD0zQO7'),
(92, 'Carleton Ferry PhD', 'XII RPL B', 'Laki-Laki', 'devin.rath', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', '0MFQiJwYAz'),
(93, 'Davion Price', 'XII RPL A', 'Laki-Laki', 'loyal06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'RxY6YhogUw'),
(94, 'Mike Hagenes', 'XII RPL B', 'Laki-Laki', 'cdaniel', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', '2ES6KwAUyH'),
(95, 'Miss Adelle Friesen MD', 'XII RPL C', 'Perempuan', 'huel.denis', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'dEHxs7vGJN'),
(96, 'Candice Konopelski', 'XII RPL B', 'Perempuan', 'annabell.dibbert', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'C9tKUvex8i'),
(97, 'Laverna Kling DDS', 'XII RPL A', 'Laki-Laki', 'vspencer', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'k5lM0vaa9g'),
(98, 'Hazle Koss', 'XII RPL C', 'Perempuan', 'ernest68', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'whZzhpe98a'),
(99, 'Jordi Schmitt', 'XII RPL C', 'Laki-Laki', 'loberbrunner', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'XGUvmtGlkg'),
(100, 'Mr. Merl Bahringer', 'XII RPL A', 'Laki-Laki', 'sammie.huel', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BELUM MEMILIH', '2020-08-31 20:45:53', '2020-08-31 20:45:53', 'IXDDTH3kXr');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `username` (`username`);

--
-- Indeks untuk tabel `tbl_calon`
--
ALTER TABLE `tbl_calon`
  ADD PRIMARY KEY (`id_calon`);

--
-- Indeks untuk tabel `tbl_pemilih`
--
ALTER TABLE `tbl_pemilih`
  ADD PRIMARY KEY (`id_pemilih`),
  ADD KEY `username` (`username`),
  ADD KEY `username_2` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_calon`
--
ALTER TABLE `tbl_calon`
  MODIFY `id_calon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_pemilih`
--
ALTER TABLE `tbl_pemilih`
  MODIFY `id_pemilih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
