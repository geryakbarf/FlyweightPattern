-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Agu 2019 pada 01.06
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db10117049penyewaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `nip` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`nip`, `nama`, `alamat`, `no_tlp`, `username`, `password`) VALUES
('PEG01', 'Gery Adam Kurniawan', 'Jalan Manggahang 2 No 6', '082214399380', 'geryaf', '*EDDE4626DE7BCF7E8DCC2C8B7CF51441B0D6ACB8'),
('PEG02', 'Muhammad Riswanda Hasan', 'Kp sumur Desa cangkuang Kecamatan Leles', '085523985784', 'riswanganteng', '*3A91A8A83308EB866A9448DEEF03E752E94AC6BE'),
('PEG03', 'Wahid Herlambang', 'Jalan Karawang No 15', '085443220989', 'bambang', '*775F86D820D960E444E49842603069EECC4DA307');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(6) NOT NULL,
  `nama_barang` varchar(60) NOT NULL,
  `harga_sewa_perhari` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `harga_sewa_perhari`) VALUES
('CAM01', 'Canon C200 Cinema Camera', 1250000),
('CAM02', 'Pentax 645Z Medium Format Camera', 750000),
('CAM03', 'DSLR Canon EOS-1DX Mark II', 800000),
('CAM04', 'Canon EOS R Full-Frame Mirrorless (4K 30MP)', 500000),
('CAM05', 'DSLR Canon EOS 5D Mark IV', 500000),
('CAM06', 'DSLR Canon EOS 6D Mark II', 325000),
('CAM07', 'Camera Nikon D850 ( Full Frame )', 600000),
('CAM08', 'Nikon Z6 Full-Frame mirrorless (Z-mount)', 500000),
('CAM09', 'DSLR Canon EOS 700D', 125000),
('CAM10', 'DSLR Canon EOS 77D', 225000),
('LGH01', 'Manfrotto 043 Sky Hook Adjustable Gaffer Clamp', 25000),
('LGH02', 'Rime Lite I6 600W Mobile Strobe (1 Titik)', 275000),
('LGH03', 'Godox AD600 PRO Outdoor Flash Light', 225000),
('LGH04', 'YN-320 Pro LED Video Light (3200K-5500K)', 60000),
('LGH05', 'Aputure LS C120D II LED Continuous Video Light (5500K)', 250000),
('TRP01', 'Monopod Video Benro S4', 50000),
('TRP02', 'Monopod Video Manfrotto', 75000),
('TRP03', 'Slider 80CM Konova K5', 150000),
('TRP04', 'Glidecam HD2000 Stabilizer System', 150000),
('TRP05', 'Tripod Video E-Image EG04AS', 60000),
('TRP06', 'SECCED Reach plus 3 Tripod Kit (100mm Video Tripod)', 225000),
('TRP07', 'Tripod Manfrotto MK190XPRO4-BHQ2', 60000),
('TRP08', 'Tripod Ballhead Beike-777', 25000),
('TRP09', 'Tripod Velbon CX-888', 25000),
('TRP10', 'DJI Ronin L 3-Axis Handheld Gimbal Stabilizer', 750000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penyewaan`
--

CREATE TABLE `detail_penyewaan` (
  `kode_barang` varchar(6) NOT NULL,
  `no_penyewaan` varchar(5) NOT NULL,
  `qty` int(2) NOT NULL,
  `sub_total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_penyewaan`
--

INSERT INTO `detail_penyewaan` (`kode_barang`, `no_penyewaan`, `qty`, `sub_total`) VALUES
('CAM01', 'PS002', 1, 1250000),
('CAM01', 'PS008', 1, 1250000),
('CAM01', 'PS011', 2, 2500000),
('CAM01', 'PS014', 1, 1250000),
('CAM01', 'PS047', 1, 1250000),
('CAM02', 'PS001', 2, 1500000),
('CAM02', 'PS023', 2, 1500000),
('CAM02', 'PS037', 3, 2250000),
('CAM03', 'PS003', 2, 1600000),
('CAM03', 'PS017', 2, 1600000),
('CAM03', 'PS030', 2, 1600000),
('CAM03', 'PS041', 2, 1600000),
('CAM04', 'PS007', 1, 500000),
('CAM04', 'PS022', 2, 1000000),
('CAM04', 'PS026', 3, 1500000),
('CAM04', 'PS033', 2, 1000000),
('CAM04', 'PS045', 2, 1000000),
('CAM04', 'PS050', 3, 1500000),
('CAM05', 'PS012', 2, 1000000),
('CAM05', 'PS018', 2, 1000000),
('CAM05', 'PS028', 2, 1000000),
('CAM05', 'PS035', 2, 1000000),
('CAM05', 'PS040', 3, 1500000),
('CAM05', 'PS049', 3, 1500000),
('CAM06', 'PS005', 1, 325000),
('CAM06', 'PS030', 2, 650000),
('CAM06', 'PS038', 2, 650000),
('CAM07', 'PS005', 1, 600000),
('CAM07', 'PS020', 2, 1200000),
('CAM08', 'PS008', 1, 500000),
('CAM08', 'PS020', 3, 1500000),
('CAM09', 'PS004', 2, 250000),
('CAM09', 'PS006', 2, 250000),
('CAM09', 'PS025', 2, 250000),
('LGH01', 'PS007', 3, 75000),
('LGH01', 'PS013', 2, 50000),
('LGH01', 'PS034', 2, 50000),
('LGH01', 'PS043', 4, 100000),
('LGH02', 'PS032', 2, 550000),
('LGH02', 'PS044', 1, 275000),
('LGH02', 'PS047', 3, 825000),
('LGH03', 'PS019', 1, 225000),
('LGH03', 'PS021', 1, 225000),
('LGH03', 'PS024', 1, 225000),
('LGH03', 'PS036', 2, 450000),
('LGH03', 'PS038', 2, 450000),
('LGH03', 'PS049', 3, 675000),
('LGH04', 'PS011', 2, 120000),
('LGH04', 'PS015', 2, 120000),
('LGH04', 'PS017', 2, 120000),
('LGH04', 'PS027', 2, 120000),
('LGH04', 'PS032', 3, 180000),
('LGH05', 'PS010', 3, 750000),
('LGH05', 'PS041', 2, 500000),
('LGH05', 'PS046', 3, 750000),
('TRP01', 'PS002', 1, 50000),
('TRP01', 'PS013', 1, 50000),
('TRP01', 'PS035', 3, 150000),
('TRP01', 'PS050', 3, 150000),
('TRP02', 'PS004', 2, 150000),
('TRP02', 'PS014', 1, 75000),
('TRP02', 'PS031', 1, 75000),
('TRP02', 'PS037', 2, 150000),
('TRP02', 'PS044', 2, 150000),
('TRP03', 'PS042', 3, 450000),
('TRP04', 'PS006', 2, 300000),
('TRP04', 'PS024', 2, 300000),
('TRP04', 'PS039', 2, 300000),
('TRP05', 'PS016', 3, 180000),
('TRP05', 'PS026', 3, 180000),
('TRP05', 'PS046', 3, 180000),
('TRP06', 'PS009', 2, 450000),
('TRP06', 'PS019', 1, 225000),
('TRP06', 'PS040', 4, 900000),
('TRP06', 'PS048', 2, 450000),
('TRP07', 'PS009', 2, 120000),
('TRP07', 'PS029', 1, 60000),
('TRP08', 'PS015', 3, 75000),
('TRP08', 'PS022', 2, 50000),
('TRP09', 'PS023', 3, 75000),
('TRP09', 'PS031', 3, 75000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewa`
--

CREATE TABLE `penyewa` (
  `id_penyewa` varchar(6) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `alamat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyewa`
--

INSERT INTO `penyewa` (`id_penyewa`, `nama`, `no_tlp`, `alamat`) VALUES
('PY001', 'Irfan Salim Hakim', '089696696696', 'Jalan Sekeloa No 7'),
('PY002', 'Rocky Gerung Utama', '082345678654', 'Jalan Jakarta'),
('PY003', 'Joko Purnomo Senjaya', '087675342156', 'Gedung Merdeka No 90'),
('PY004', 'Riswandi Husni Akbar', '087234900765', 'Jalan Sekeloa No 57 Bandung'),
('PY005', 'Bambang Husno Prayitna', '081394555647', 'Jalan Dipati Ukur Bandung'),
('PY006', 'Okto Putra Yahya', '085678443278', 'Jalan Ganesha No 13'),
('PY007', 'Putra Nur Jaya', '089776431295', 'Jalan Ganesha No 14'),
('PY008', 'Gita Nasution', '082764638372', 'Jalan Bara No. 21'),
('PY009', 'Latifah Khoerunnisa', '087654728296', 'Jalan Pahlawan No. 11'),
('PY010', 'Adit Hermawan', '081126473839', 'Jalan Antapani No. 88'),
('PY011', 'Syabina Nur Nadiva', '085789294729', 'Jalan Ciumbuleuit No. 23'),
('PY012', 'Agis Fikri', '082116763829', 'Jalan Jawa No. 221'),
('PY013', 'Alif Firmansyah', '087654826291', 'Jalan Jalak Harupat No. 22'),
('PY014', 'Nisa Cahyani Budi', '089997648290', 'Jalan Japati No. 45'),
('PY015', 'Suryono Ahmad Joyo', '082197649208', 'Jalan Manyar No. 11'),
('PY016', 'Wina Rizky Utami', '082156228907', 'Jalan Setiabudi No. 74'),
('PY017', 'Eka Mulyani Mutia', '085797929427', 'Jalan Titimplik No. 33'),
('PY018', 'Fanny Eka Putri', '087899017404', 'Jalan Sukajadi No. 30'),
('PY019', 'Eki Setiawati', '089782864810', 'Jalan Pajajaran No. 102'),
('PY020', 'Cindy Carla Hariyah', '087907391046', 'Jalan Cijerah No. 12'),
('PY021', 'Hardi Maulana Yusuf', '087658926492', 'Jalan Sumatra No. 54'),
('PY022', 'Adam Hanif Hafizh', '089178473893', 'Jalan Anjatan No. 33'),
('PY023', 'Ridwan Alif Putra', '082117748279', 'Jalan Bagus Rangin No. 18'),
('PY024', 'Rizal Yusuf Putra', '085765473924', 'Jalan Babakan Loa No. 07'),
('PY025', 'Agustina Heriawan Sudibjo', '089648292980', 'Jalan Sukasari No. 11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewaan`
--

CREATE TABLE `penyewaan` (
  `no_penyewaan` varchar(5) NOT NULL,
  `id_penyewa` varchar(5) NOT NULL,
  `tgl_sewa` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `tgl_dikembalikan` varchar(11) DEFAULT '-',
  `total_biaya_sewa` int(10) NOT NULL,
  `status` enum('Dikembalikan','Belum Dikembalikan') NOT NULL,
  `penanggung_jawab` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyewaan`
--

INSERT INTO `penyewaan` (`no_penyewaan`, `id_penyewa`, `tgl_sewa`, `tgl_pengembalian`, `tgl_dikembalikan`, `total_biaya_sewa`, `status`, `penanggung_jawab`) VALUES
('PS001', 'PY001', '2019-07-31', '2019-08-01', '2019-08-01', 1500000, 'Dikembalikan', 'PEG01'),
('PS002', 'PY002', '2019-07-31', '2019-08-02', '2019-08-02', 2600000, 'Dikembalikan', 'PEG01'),
('PS003', 'PY001', '2019-08-02', '2019-08-03', '2019-08-03', 1600000, 'Dikembalikan', 'PEG01'),
('PS004', 'PY003', '2019-08-02', '2019-08-05', '2019-08-05', 1200000, 'Dikembalikan', 'PEG02'),
('PS005', 'PY004', '2019-08-02', '2019-08-03', '2019-08-03', 925000, 'Dikembalikan', 'PEG02'),
('PS006', 'PY005', '2019-08-03', '2019-08-04', '2019-08-04', 550000, 'Dikembalikan', 'PEG02'),
('PS007', 'PY006', '2019-08-04', '2019-08-05', '2019-08-05', 575000, 'Dikembalikan', 'PEG03'),
('PS008', 'PY007', '2019-08-04', '2019-08-06', '2019-08-06', 3500000, 'Dikembalikan', 'PEG03'),
('PS009', 'PY002', '2019-08-05', '2019-08-06', '2019-08-06', 570000, 'Dikembalikan', 'PEG01'),
('PS010', 'PY003', '2019-08-05', '2019-08-07', '2019-08-07', 1500000, 'Dikembalikan', 'PEG01'),
('PS011', 'PY006', '2019-08-05', '2019-08-08', '2019-08-08', 7860000, 'Dikembalikan', 'PEG02'),
('PS012', 'PY005', '2019-08-06', '2019-08-08', '2019-08-08', 2000000, 'Dikembalikan', 'PEG01'),
('PS013', 'PY007', '2019-08-06', '2019-08-08', '2019-08-08', 200000, 'Dikembalikan', 'PEG02'),
('PS014', 'PY004', '2019-08-06', '2019-08-08', '2019-08-08', 2650000, 'Dikembalikan', 'PEG01'),
('PS015', 'PY010', '2019-08-06', '2019-08-08', '2019-08-08', 390000, 'Dikembalikan', 'PEG01'),
('PS016', 'PY015', '2019-08-06', '2019-08-09', '2019-08-09', 540000, 'Dikembalikan', 'PEG01'),
('PS017', 'PY013', '2019-08-06', '2019-08-09', '2019-08-09', 5160000, 'Dikembalikan', 'PEG01'),
('PS018', 'PY015', '2019-08-06', '2019-08-09', '2019-08-09', 3000000, 'Dikembalikan', 'PEG01'),
('PS019', 'PY012', '2019-08-06', '2019-08-09', '2019-08-09', 1350000, 'Dikembalikan', 'PEG01'),
('PS020', 'PY011', '2019-08-06', '2019-08-09', '2019-08-09', 8100000, 'Dikembalikan', 'PEG01'),
('PS021', 'PY013', '2019-08-07', '2019-08-09', '2019-08-09', 450000, 'Dikembalikan', 'PEG01'),
('PS022', 'PY014', '2019-08-07', '2019-08-09', '2019-08-09', 2100000, 'Dikembalikan', 'PEG01'),
('PS023', 'PY010', '2019-08-07', '2019-08-09', '2019-08-09', 3150000, 'Dikembalikan', 'PEG01'),
('PS024', 'PY011', '2019-08-07', '2019-08-09', '2019-08-09', 1050000, 'Dikembalikan', 'PEG01'),
('PS025', 'PY017', '2019-08-08', '2019-08-09', '2019-08-09', 250000, 'Dikembalikan', 'PEG01'),
('PS026', 'PY012', '2019-08-08', '2019-08-09', '2019-08-09', 1680000, 'Dikembalikan', 'PEG01'),
('PS027', 'PY014', '2019-08-09', '2019-08-11', '2019-08-11', 240000, 'Dikembalikan', 'PEG01'),
('PS028', 'PY016', '2019-08-09', '2019-08-11', '2019-08-11', 2000000, 'Dikembalikan', 'PEG01'),
('PS029', 'PY018', '2019-08-09', '2019-08-11', '2019-08-11', 120000, 'Dikembalikan', 'PEG01'),
('PS030', 'PY016', '2019-08-10', '2019-08-11', '2019-08-11', 2250000, 'Dikembalikan', 'PEG01'),
('PS031', 'PY019', '2019-08-10', '2019-08-11', '2019-08-11', 150000, 'Dikembalikan', 'PEG01'),
('PS032', 'PY017', '2019-08-10', '2019-08-12', '2019-08-12', 1460000, 'Dikembalikan', 'PEG01'),
('PS033', 'PY008', '2019-08-11', '2019-08-12', '2019-08-12', 1000000, 'Dikembalikan', 'PEG01'),
('PS034', 'PY019', '2019-08-11', '2019-08-12', '2019-08-12', 50000, 'Dikembalikan', 'PEG01'),
('PS035', 'PY020', '2019-08-11', '2019-08-13', '2019-08-13', 2300000, 'Dikembalikan', 'PEG01'),
('PS036', 'PY018', '2019-08-12', '2019-08-13', '2019-08-13', 450000, 'Dikembalikan', 'PEG01'),
('PS037', 'PY020', '2019-08-12', '2019-08-14', '2019-08-14', 4800000, 'Dikembalikan', 'PEG01'),
('PS038', 'PY009', '2019-08-12', '2019-08-14', '2019-08-14', 2200000, 'Dikembalikan', 'PEG01'),
('PS039', 'PY008', '2019-08-13', '2019-08-14', '2019-08-14', 300000, 'Dikembalikan', 'PEG01'),
('PS040', 'PY009', '2019-08-13', '2019-08-14', '2019-08-14', 2400000, 'Dikembalikan', 'PEG01'),
('PS041', 'PY021', '2019-08-13', '2019-08-14', '2019-08-14', 2100000, 'Dikembalikan', 'PEG01'),
('PS042', 'PY024', '2019-08-14', '2019-08-16', '2019-08-16', 900000, 'Dikembalikan', 'PEG01'),
('PS043', 'PY023', '2019-08-14', '2019-08-16', '2019-08-16', 200000, 'Dikembalikan', 'PEG01'),
('PS044', 'PY021', '2019-08-15', '2019-08-17', '2019-08-17', 850000, 'Dikembalikan', 'PEG01'),
('PS045', 'PY025', '2019-08-15', '2019-08-17', '2019-08-17', 2000000, 'Dikembalikan', 'PEG01'),
('PS046', 'PY022', '2019-08-15', '2019-08-17', '2019-08-17', 1860000, 'Dikembalikan', 'PEG01'),
('PS047', 'PY023', '2019-08-16', '2019-08-17', '2019-08-17', 2075000, 'Dikembalikan', 'PEG01'),
('PS048', 'PY025', '2019-08-16', '2019-08-18', '2019-08-18', 900000, 'Dikembalikan', 'PEG01'),
('PS049', 'PY022', '2019-08-17', '2019-08-19', '2019-08-19', 4350000, 'Dikembalikan', 'PEG01'),
('PS050', 'PY024', '2019-08-17', '2019-08-19', '2019-08-19', 3300000, 'Dikembalikan', 'PEG01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indeks untuk tabel `detail_penyewaan`
--
ALTER TABLE `detail_penyewaan`
  ADD PRIMARY KEY (`kode_barang`,`no_penyewaan`),
  ADD KEY `detail_penyewaan_ibfk_2` (`no_penyewaan`);

--
-- Indeks untuk tabel `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`id_penyewa`);

--
-- Indeks untuk tabel `penyewaan`
--
ALTER TABLE `penyewaan`
  ADD PRIMARY KEY (`no_penyewaan`),
  ADD KEY `id_penyewa` (`id_penyewa`),
  ADD KEY `penanggung_jawab` (`penanggung_jawab`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_penyewaan`
--
ALTER TABLE `detail_penyewaan`
  ADD CONSTRAINT `detail_penyewaan_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_penyewaan_ibfk_2` FOREIGN KEY (`no_penyewaan`) REFERENCES `penyewaan` (`no_penyewaan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penyewaan`
--
ALTER TABLE `penyewaan`
  ADD CONSTRAINT `penyewaan_ibfk_1` FOREIGN KEY (`id_penyewa`) REFERENCES `penyewa` (`id_penyewa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penyewaan_ibfk_2` FOREIGN KEY (`penanggung_jawab`) REFERENCES `admin` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
