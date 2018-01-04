-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01 Mei 2016 pada 13.04
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bengkel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akhirupdatebarangservice`
--

CREATE TABLE `akhirupdatebarangservice` (
  `id_barang` varchar(50) NOT NULL,
  `stock_akhir_service` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori_barang` varchar(50) NOT NULL,
  `kualitas` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `id_supplier` varchar(50) NOT NULL,
  `tanggal_terima` datetime NOT NULL,
  `selisih` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `kategori_barang`, `kualitas`, `merk`, `harga_beli`, `harga_jual`, `warna`, `stock`, `satuan`, `id_supplier`, `tanggal_terima`, `selisih`) VALUES
('IDB0000000000', '0', '0', '0', '0', 0, 0, '0', 0, '0', '0', '2016-04-16 00:00:00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `faktur_pembayaran_service`
--

CREATE TABLE `faktur_pembayaran_service` (
  `id_faktur_pembayaran_service` varchar(50) NOT NULL,
  `tanggal_bayar` datetime NOT NULL,
  `biaya_service` int(11) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `dibayar_pembayaran_service` int(11) NOT NULL,
  `kembalian_pembayaran_service` int(11) NOT NULL,
  `id_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `faktur_pembayaran_service`
--

INSERT INTO `faktur_pembayaran_service` (`id_faktur_pembayaran_service`, `tanggal_bayar`, `biaya_service`, `jumlah_barang`, `total_bayar`, `dibayar_pembayaran_service`, `kembalian_pembayaran_service`, `id_user`) VALUES
('FPS0000000000', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faktur_penjualan_barang`
--

CREATE TABLE `faktur_penjualan_barang` (
  `id_faktur_penjualan_barang` varchar(50) NOT NULL,
  `tanggal_jual` datetime NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `total_jual` int(11) NOT NULL,
  `dibayar_penjualan_barang` int(11) NOT NULL,
  `kembalian_penjualan_barang` int(11) NOT NULL,
  `id_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `faktur_penjualan_barang`
--

INSERT INTO `faktur_penjualan_barang` (`id_faktur_penjualan_barang`, `tanggal_jual`, `jumlah_barang`, `total_jual`, `dibayar_penjualan_barang`, `kembalian_penjualan_barang`, `id_user`) VALUES
('FJB0000000000', '2016-04-16 00:00:00', 0, 0, 0, 0, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jasa_service`
--

CREATE TABLE `jasa_service` (
  `id_service` varchar(50) NOT NULL,
  `nama_service` varchar(50) NOT NULL,
  `biaya_service` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_barang`
--

CREATE TABLE `kategori_barang` (
  `kategori_barang` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kualitas_barang`
--

CREATE TABLE `kualitas_barang` (
  `kualitas_barang` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `merk_barang`
--

CREATE TABLE `merk_barang` (
  `merk_barang` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendaftaran` varchar(50) NOT NULL,
  `nomor_polisi` varchar(50) NOT NULL,
  `nama_pemilik` varchar(50) NOT NULL,
  `keluhan` varchar(50) NOT NULL,
  `kendaraan` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `tanggal_daftar` datetime NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `pembayaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_pendaftaran`, `nomor_polisi`, `nama_pemilik`, `keluhan`, `kendaraan`, `status`, `tanggal_daftar`, `id_user`, `pembayaran`) VALUES
('IDP0000000000', '0', '0', '0', '0', '0', '2016-04-16 00:00:00', '0', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rincian_pembayaran_service`
--

CREATE TABLE `rincian_pembayaran_service` (
  `id_faktur_pembayaran_service` int(11) NOT NULL,
  `id_barang` varchar(50) NOT NULL,
  `id_service` varchar(50) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `id_pendaftaran` varchar(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori_barang` varchar(50) NOT NULL,
  `kualitas` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `harga_bayar` int(11) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `stock_bayar` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `id_supplier` varchar(50) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rincian_penjualan_barang`
--

CREATE TABLE `rincian_penjualan_barang` (
  `id_faktur_penjualan_barang` varchar(50) NOT NULL,
  `id_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori_barang` varchar(50) NOT NULL,
  `kualitas` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `stock_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `id_supplier` varchar(50) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `stock` int(11) NOT NULL,
  `jumlah` bigint(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rincian_service`
--

CREATE TABLE `rincian_service` (
  `id_barang` varchar(50) NOT NULL,
  `id_service` varchar(50) NOT NULL,
  `nama_service` varchar(50) NOT NULL,
  `biaya_service` int(11) NOT NULL,
  `id_mekanik` varchar(50) NOT NULL,
  `id_pendaftaran` varchar(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori_barang` varchar(50) NOT NULL,
  `kualitas` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `harga_bayar` int(11) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `stock_service` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `id_supplier` varchar(50) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `service`
--

CREATE TABLE `service` (
  `id_barang` varchar(50) NOT NULL,
  `id_service` varchar(50) NOT NULL,
  `nama_service` varchar(50) NOT NULL,
  `biaya_service` int(11) NOT NULL,
  `id_mekanik` varchar(50) NOT NULL,
  `id_pendaftaran` varchar(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori_barang` varchar(50) NOT NULL,
  `kualitas` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `harga_bayar` int(11) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `stock_service` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `id_supplier` varchar(50) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` varchar(50) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `telepon_supplier` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `s_faktur_pembayaran_service`
--

CREATE TABLE `s_faktur_pembayaran_service` (
  `id_faktur_pembayaran_service` varchar(50) NOT NULL,
  `tanggal_bayar` datetime NOT NULL,
  `biaya_service` int(11) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `dibayar_pembayaran_service` int(11) NOT NULL,
  `kembalian_pembayaran_service` int(11) NOT NULL,
  `id_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `s_faktur_penjualan_barang`
--

CREATE TABLE `s_faktur_penjualan_barang` (
  `id_faktur_penjualan_barang` varchar(50) NOT NULL,
  `tanggal_jual` datetime NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `total_jual` int(11) NOT NULL,
  `dibayar_penjualan_barang` int(11) NOT NULL,
  `kembalian_penjualan_barang` int(11) NOT NULL,
  `id_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `s_trans_jual_barang`
--

CREATE TABLE `s_trans_jual_barang` (
  `id_faktur_penjualan_barang` varchar(50) NOT NULL,
  `stock_jual` int(11) NOT NULL,
  `id_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori_barang` varchar(50) NOT NULL,
  `kualitas` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `warna` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `s_trans_service`
--

CREATE TABLE `s_trans_service` (
  `stock_service` int(11) NOT NULL,
  `id_barang` varchar(50) NOT NULL,
  `id_service` varchar(50) NOT NULL,
  `id_mekanik` varchar(50) NOT NULL,
  `id_pendaftaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trans_jual_barang`
--

CREATE TABLE `trans_jual_barang` (
  `id_faktur_penjualan_barang` varchar(50) NOT NULL,
  `stock_jual` int(11) NOT NULL,
  `id_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori_barang` varchar(50) NOT NULL,
  `kualitas` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `warna` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trans_pembayaran_service`
--

CREATE TABLE `trans_pembayaran_service` (
  `id_faktur_pembayaran_service` varchar(50) NOT NULL,
  `id_pendaftaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trans_service`
--

CREATE TABLE `trans_service` (
  `stock_service` int(11) NOT NULL,
  `id_barang` varchar(50) NOT NULL,
  `id_service` varchar(50) NOT NULL,
  `id_mekanik` varchar(50) NOT NULL,
  `id_pendaftaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `updatebarang`
--

CREATE TABLE `updatebarang` (
  `id_barang` varchar(50) NOT NULL,
  `stock_akhir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `updatebarangservice`
--

CREATE TABLE `updatebarangservice` (
  `id_barang` varchar(50) NOT NULL,
  `stock_akhir` int(11) NOT NULL,
  `stock_sekarang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `password_user` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `level` varchar(50) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `password_user`, `tempat_lahir`, `tanggal_lahir`, `level`, `telepon`, `alamat`) VALUES
('01', 'Mochamad Yusuf', '01', 'Kuningan', '2013-01-02', 'pemilik', '0815107501', 'Kuningan'),
('02', '5432', '02', 'kuningan', '2016-04-03', 'gudang', '07105175091', 'kuningan'),
('03', 'tes', '03', 'Kuningan', '2016-04-03', 'kasir', '0175901730', 'Kuningan'),
('04', '1234', '04', 'kuningan', '2016-04-03', 'mekanik', '051570179', 'kuningan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `faktur_pembayaran_service`
--
ALTER TABLE `faktur_pembayaran_service`
  ADD PRIMARY KEY (`id_faktur_pembayaran_service`);

--
-- Indexes for table `faktur_penjualan_barang`
--
ALTER TABLE `faktur_penjualan_barang`
  ADD PRIMARY KEY (`id_faktur_penjualan_barang`);

--
-- Indexes for table `jasa_service`
--
ALTER TABLE `jasa_service`
  ADD PRIMARY KEY (`id_service`);

--
-- Indexes for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  ADD PRIMARY KEY (`kategori_barang`);

--
-- Indexes for table `kualitas_barang`
--
ALTER TABLE `kualitas_barang`
  ADD PRIMARY KEY (`kualitas_barang`);

--
-- Indexes for table `merk_barang`
--
ALTER TABLE `merk_barang`
  ADD PRIMARY KEY (`merk_barang`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indexes for table `rincian_penjualan_barang`
--
ALTER TABLE `rincian_penjualan_barang`
  ADD PRIMARY KEY (`id_barang`,`id_faktur_penjualan_barang`);

--
-- Indexes for table `rincian_service`
--
ALTER TABLE `rincian_service`
  ADD PRIMARY KEY (`id_barang`,`id_pendaftaran`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id_barang`,`id_pendaftaran`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `s_faktur_pembayaran_service`
--
ALTER TABLE `s_faktur_pembayaran_service`
  ADD PRIMARY KEY (`id_faktur_pembayaran_service`);

--
-- Indexes for table `s_trans_jual_barang`
--
ALTER TABLE `s_trans_jual_barang`
  ADD PRIMARY KEY (`id_barang`,`id_faktur_penjualan_barang`);

--
-- Indexes for table `s_trans_service`
--
ALTER TABLE `s_trans_service`
  ADD PRIMARY KEY (`id_barang`,`id_pendaftaran`);

--
-- Indexes for table `trans_jual_barang`
--
ALTER TABLE `trans_jual_barang`
  ADD PRIMARY KEY (`id_barang`,`id_faktur_penjualan_barang`);

--
-- Indexes for table `trans_service`
--
ALTER TABLE `trans_service`
  ADD PRIMARY KEY (`id_barang`,`id_pendaftaran`);

--
-- Indexes for table `updatebarangservice`
--
ALTER TABLE `updatebarangservice`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
