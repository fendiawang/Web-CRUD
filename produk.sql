-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Nov 2022 pada 08.38
-- Versi server: 8.0.28
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `produk`
--

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `ubahMH` (`nim_mh` INT(10), `nm_mh` VARCHAR(20), `tgl_mhs` DATE, `jenis` ENUM('Pria','Wanita'), `alamat_mh` VARCHAR(20))  BEGIN
UPDATE tb_mhs SET nama_mhs=nm_mh, tgl_lhrmhs=tgl_mhs, jns_kel=jenis, Alamat=alamat_mh 
WHERE NIM=nim_mh;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` varchar(4) NOT NULL,
  `Nama_mahasiswa` varchar(20) DEFAULT NULL,
  `Kode_jurusan` varchar(4) DEFAULT NULL,
  `IPK` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs`
--

CREATE TABLE `mhs` (
  `nim` int NOT NULL,
  `nama` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `jenis` enum('pria','wanita') DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `alamat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `mhs`
--

INSERT INTO `mhs` (`nim`, `nama`, `jenis`, `tgl`, `alamat`) VALUES
(101, 'Arkan', 'pria', '2001-03-07', 'Sleman'),
(123, 'Candi', 'pria', '2002-08-14', 'Surabaya'),
(202, 'dila', 'wanita', '2002-06-19', 'Bantul'),
(303, 'warta', 'pria', '2003-03-03', 'Solo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mhs`
--

CREATE TABLE `tb_mhs` (
  `NIM` int NOT NULL,
  `nama_mhs` varchar(20) DEFAULT NULL,
  `tgl_lhrmhs` date DEFAULT NULL,
  `jns_kel` enum('Pria','Wanita') DEFAULT NULL,
  `Alamat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mhs`
--

INSERT INTO `tb_mhs` (`NIM`, `nama_mhs`, `tgl_lhrmhs`, `jns_kel`, `Alamat`) VALUES
(3045, 'Habibi', '2003-10-14', 'Pria', 'Sleman'),
(3051, 'Arya', '2003-10-14', 'Pria', 'Bantul');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id` int NOT NULL,
  `nama` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stok` int NOT NULL,
  `gambar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `harga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_produk`
--

INSERT INTO `tb_produk` (`id`, `nama`, `code`, `stok`, `gambar`, `harga`) VALUES
(1, 'Beng-beng', '1BB', 10, 'gambar/beng_beng.jpg', 15000),
(2, 'Better', '2btr', 20, 'gambar/better.jpg', 1000),
(3, 'Indomie', '3mie', 15, 'gambar/indomie.png', 3000),
(4, 'Indomilk ', '4indo', 20, 'gambar/indomilk.jpg', 4000),
(5, 'Silverqueen', '5slr', 10, 'gambar/silverqueen.jpg', 15000),
(6, 'Yakult', '6ykl', 14, 'gambar/yakult.jpg', 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `nim` int NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `alamat` varchar(20) DEFAULT NULL,
  `jenis` enum('pria','wanita') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`nim`, `username`, `password`, `level`, `alamat`, `jenis`) VALUES
(1023, 'admin', 'admin123', 'admin', 'sleman', 'pria'),
(2034, 'aat', 'aat123', 'mahasiswa', 'bantul', 'pria'),
(4056, 'anya', 'anya123', 'mahasiswa', 'semarang', 'wanita');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indeks untuk tabel `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `tb_mhs`
--
ALTER TABLE `tb_mhs`
  ADD PRIMARY KEY (`NIM`);

--
-- Indeks untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nim`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
