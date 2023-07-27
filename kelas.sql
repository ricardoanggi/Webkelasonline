-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jul 2023 pada 08.43
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
-- Database: `kelas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inventori`
--

CREATE TABLE `tbl_inventori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `kondisi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_inventori`
--

INSERT INTO `tbl_inventori` (`id`, `nama`, `jumlah`, `kondisi`) VALUES
(1, 'Meja', 38, 'Baik'),
(3, 'Kursi', 38, 'Baik'),
(4, 'Papan Tulis', 1, 'Baik'),
(5, 'Penghapus', 3, 'Baik'),
(6, 'Sapu', 6, 'Rusak Ringan'),
(7, 'Spidol', 3, 'Baik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id` int(11) NOT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `wali_kelas` varchar(40) DEFAULT NULL,
  `sekolah` varchar(50) DEFAULT NULL,
  `alamat_sekolah` varchar(255) DEFAULT NULL,
  `tahun_ajaran` varchar(15) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id`, `kelas`, `wali_kelas`, `sekolah`, `alamat_sekolah`, `tahun_ajaran`, `semester`) VALUES
(1, 'Genius Course', 'Bu Maryam', 'Universitas Muhammadiyah Surakarta', 'Jl. A. Yani, Mendungan, Pabelan, Kec. Kartasura, Kab. Sukoharjo, Jawa Tengah 57162', '2022/2023', 'Semester 4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mahasiswa`
--

CREATE TABLE `tbl_mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(45) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tanggal_lahir` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`id`, `nim`, `nama`, `agama`, `tempat_lahir`, `tanggal_lahir`, `alamat`) VALUES
(1, '200210031', 'Bagas Adi Saputra', 'Islam', 'Boyolali', '2001-11-02', 'Andong'),
(3, '200210024', 'Gilang Ridho Utama', 'Islam', 'Kalimantan Barat', '2002-07-23', 'Ngemplak'),
(4, '200210043', 'Anggi Fani Saputra', 'Islam', 'Boyolali', '2002-01-07', 'Boyolali');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_matkul`
--

CREATE TABLE `tbl_matkul` (
  `id` int(11) NOT NULL,
  `matkul` varchar(255) DEFAULT NULL,
  `jumlah_jam` int(11) DEFAULT NULL,
  `dosen_pengampu` varchar(255) DEFAULT NULL,
  `ruangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_matkul`
--

INSERT INTO `tbl_matkul` (`id`, `matkul`, `jumlah_jam`, `dosen_pengampu`, `ruangan`) VALUES
(1, 'Praktikum Pemrograman WEB', 2, 'Widi Widayat, S.Kom., M.Eng.', 'LABRPL'),
(2, 'Praktikum Algoritma Struktur Data', 2, 'Yudi Wahyu Wibowo,  S.T, M.Eng', 'LSITIF'),
(3, 'Bahasa Indonesia', 2, 'Lusiana Pujiastuti, S.Pd., M.Pd', 'J0403'),
(4, 'Algoritma Struktur Data', 3, 'Endang Wahyu Pamungkas, S.Kom., M.Kom', 'J0410'),
(5, 'Jaringan Komputer', 3, 'Fatah Yasin Al Irsyadi, S.T., M.T', 'Jsem2'),
(6, 'Praktikum Sistem Basis Data', 2, 'Azizah Fatmawati, M.Sc., S.T', 'LABRPL'),
(7, 'Rekayasa Perangkat Lunak', 3, 'Yusuf Sulistyo Nugroho, Dr.Eng', 'J0407'),
(8, 'Sistem Basis Data', 3, 'Helmi Imaduddin, S.Kom., M.Eng', 'J0408'),
(9, 'Praktikum Jaringan Komputer', 2, 'Ihsan Cahyo Utomo, M.Kom', 'LJKTIF'),
(10, 'Kewarganegaraan', 2, 'Haryono Yuwono, Drs. M.Pd', 'Jsem1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `nama`, `username`, `password`) VALUES
(17, 'Admin', 'admin123', '$2y$10$3r41FoRb1IUjSMv.edS/VulBObJ.7MaBtRd1agKzV8mRYxqb.knV2'),
(18, 'Bagas Adi Saputra', 'Bagas', '$2y$10$fa54WFg.YM4SsuObNsi3p.mPNGv7cMz5RvqGs6z/OAVuAvqRbSDPO');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_inventori`
--
ALTER TABLE `tbl_inventori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_matkul`
--
ALTER TABLE `tbl_matkul`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_inventori`
--
ALTER TABLE `tbl_inventori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_matkul`
--
ALTER TABLE `tbl_matkul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
