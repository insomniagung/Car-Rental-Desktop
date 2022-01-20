-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2022 at 03:36 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms_rentalmobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_mobil`
--

CREATE TABLE `tb_mobil` (
  `id_mobil` int(20) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `tahun` varchar(20) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `harga` int(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mobil`
--

INSERT INTO `tb_mobil` (`id_mobil`, `merk`, `tipe`, `tahun`, `nopol`, `harga`, `status`) VALUES
(1, 'Honda', 'Mobilio', '2021', 'B 2021 AG', 500000, 'Keluar'),
(2, 'Honda', 'Jazz', '2021', 'B 2021 DN', 250000, 'Tersedia'),
(3, 'Daihatsu', 'Xenia', '2021', 'B 2020 IA', 250000, 'Tersedia'),
(6, 'Daihatsu', 'Ayla', '2019', 'B 2020 SM', 255000, 'Tersedia'),
(7, 'Daihatsu', 'City', '2019', 'B 2020 FM', 259900, 'Tersedia'),
(9, 'Toyota', 'Yaris', '2017', 'B 1544 JA', 600000, 'Tersedia'),
(10, 'Mitsubishi', 'Xpander', '2020', 'B 7777 MW', 799500, 'Tersedia'),
(11, 'Wuling', 'Almaz', '2020', 'B 1212 HU', 399000, 'Tersedia'),
(12, 'Chevrolet', 'Camaro', '2019', 'B 3434 CE', 350000, 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjam`
--

CREATE TABLE `tb_peminjam` (
  `id_peminjam` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_peminjam`
--

INSERT INTO `tb_peminjam` (`id_peminjam`, `nama`, `nik`, `alamat`, `telp`, `email`) VALUES
(3, 'Agung', '327507', 'Jl. Bekasi, RT 02 RW 04, Kel. Bekasi, Kec. Bekasi, Bekasi', '0857', 'agungg@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(20) NOT NULL,
  `peminjam` varchar(50) NOT NULL,
  `nopol` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `tgl_pinjaman` date NOT NULL,
  `tgl_kembali` varchar(20) NOT NULL,
  `lama` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `peminjam`, `nopol`, `harga`, `tgl_pinjaman`, `tgl_kembali`, `lama`, `total`) VALUES
(12, 'Agung', 'B 2021 AG', '500000', '2022-01-11', '2022-01-18', '7', '3500000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `hak_akses` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `username`, `password`, `hak_akses`) VALUES
(1, 'Karyawan', 'staff', 'staff', 'Staff'),
(2, 'Agung Gunawan', 'agung', '1234', 'Admin'),
(3, 'Dhino Rahmad Kusuma', 'dhino', '1234', 'Admin'),
(4, 'Imam Andrianto', 'imam', '1234', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_mobil`
--
ALTER TABLE `tb_mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_mobil`
--
ALTER TABLE `tb_mobil`
  MODIFY `id_mobil` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  MODIFY `id_peminjam` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
