-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Des 2019 pada 07.58
-- Versi server: 10.3.15-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumahsakit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_dokter`
--

CREATE TABLE `tb_dokter` (
  `id_dokter` varchar(50) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL,
  `spesialis` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_dokter`
--

INSERT INTO `tb_dokter` (`id_dokter`, `nama_dokter`, `spesialis`, `alamat`, `no_telp`) VALUES
('43da1a0d-a510-4458-b56d-fc5047d4df62', 'Aditia asdsa', 'mnavf', 'sewgsd', '23413'),
('4be39bad-8ae4-493d-a7fa-9589ce66cc50', 'Dr.Nirmalasari', 'Dokter Umum', 'Banowati, Semarang Utara ,Jawa Tengah', '08210349583'),
('542b727e-85af-4f79-acf7-df9ed70eb5a6', 'Dr.Erik Kristian', 'Penyakit Jiwa', 'Gembong,Pati,Jawa Tengah', '08210341112'),
('f253711a-42d7-47a7-9cf9-02f366db1383', 'Dr.Panji Cahyono', 'Penyakit Dalam', 'Purwodadi,Grobogan,Jawa Tengah', '08210123383'),
('f4c0493d-d9e2-4fb5-b2d5-22d52f94a833', 'a', 'a', 'a', 'a'),
('fa30abc9-62c5-4309-bb9b-3a3ca45549b6', 'Dr. Dwi Ningrum', 'Penyakit kulit', 'pulokulon,Grobogan ,Jawa Tengah', '0831243221');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_obat`
--

CREATE TABLE `tb_obat` (
  `id_obat` varchar(50) NOT NULL,
  `nama_obat` varchar(200) NOT NULL,
  `ket_obat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_obat`
--

INSERT INTO `tb_obat` (`id_obat`, `nama_obat`, `ket_obat`) VALUES
('5c8bfed1-93a3-4f77-9f75-2fae00e2bfa0', 'sada', 'yujdjs'),
('74f51dc4-e309-407b-bf45-34f976607f2a', 'sada', 'sadfa'),
('a24687c6-1bf1-46c4-9def-fd2b4d804684', 'Mixagrip', 'Obat Pusing'),
('bb8df4c0-742f-4a26-89a7-437c814a5d57', 'ultra flu', 'Obat flu'),
('beaf482c-c7d1-4200-92af-a3997c7f60f8', 'qqqww', 'qqwqwwe'),
('d57e58fb-e620-4ff1-8c20-26eaa7f153bb', 'sada', 'sadafe'),
('d66e33e8-9c15-11e9-8f88-00d8614ec34d', 'paramex', 'obat pusing'),
('fdb33914-9c15-11e9-8f88-00d8614ec34d', 'bodrexxin', 'obat anak'),
('fdb344c0-9c15-11e9-8f88-00d8614ec34d', 'komik', 'obat batuk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id_pasien` varchar(50) NOT NULL,
  `nomor_identitas` varchar(40) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_poliklinik`
--

CREATE TABLE `tb_poliklinik` (
  `id_poli` varchar(50) NOT NULL,
  `nama_poli` varchar(50) NOT NULL,
  `gedung` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_poliklinik`
--

INSERT INTO `tb_poliklinik` (`id_poli`, `nama_poli`, `gedung`) VALUES
('42df78fe-631c-4546-a5be-a9ef54f2ac9f', 'dad', '1313'),
('5184ac4e-9e6b-43d2-a8bd-2c38e18789c5', 'adada', '4321'),
('684cacc5-2e4c-464e-b3d5-651fb724df0e', 'asdsad', 'fsaf'),
('7b50c0eb-a1e8-4f2b-8509-4a81132a3113', 'adad', '13'),
('b57344c8-9ed7-4d1e-80d3-ae3c93a29df3', 'Poli Anak', 'B.lt.2'),
('bc84b1b2-036e-43dd-bf83-de08d19826c9', 'dda', 'dqdq'),
('d1b349fb-bf38-44c3-a244-6c0d82fa3c1d', 'dadsad', 'fdha'),
('d50d3955-fbe6-480a-8e80-4f32249c1941', 'sad', 'dad'),
('fe2b5566-3939-4847-b39d-63d2de65e4b9', 'Poli Anak2324324', 'B.lt.3'),
('fef7a011-dc13-4b31-9f21-4f0e1af2fdc4', 'asda', '141');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(50) NOT NULL,
  `nama_user` varchar(80) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`, `level`) VALUES
('590820921', 'NAELA SABILA ROSYADA', 'Naela', 'e86eaaa69f75bf43569a39cd73db69274b66fa1d', '1'),
('abc159a2-9beb-11e9-8f88-00d8614ec34d', 'Nayla Sabilla ', 'Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indeks untuk tabel `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indeks untuk tabel `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indeks untuk tabel `tb_poliklinik`
--
ALTER TABLE `tb_poliklinik`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
