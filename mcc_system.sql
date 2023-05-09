-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2023 at 03:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcc_system1`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id_area` int(11) NOT NULL,
  `nm_area` varchar(100) NOT NULL,
  `nm_singkat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id_area`, `nm_area`, `nm_singkat`) VALUES
(1, 'MALANG', 'MLG'),
(2, 'SURABAYA', 'SBY'),
(3, 'PASURUAN', 'PSN'),
(4, 'SIDOARJO', 'SDA'),
(5, 'BANDUNG', 'BDG');

-- --------------------------------------------------------

--
-- Table structure for table `banquetorder`
--

CREATE TABLE `banquetorder` (
  `no_bo` int(11) NOT NULL,
  `nama_org_kom` varchar(100) NOT NULL,
  `no_hp` varchar(200) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `tgl_surat` date DEFAULT NULL,
  `nama_event` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `jml_peserta` int(100) NOT NULL,
  `kelengkapan` varchar(255) NOT NULL,
  `potensi` int(11) NOT NULL,
  `skala_kegiatan` varchar(11) NOT NULL,
  `durasi_kegiatan` varchar(30) NOT NULL,
  `rincian_kegiatan` text NOT NULL,
  `color` varchar(10) NOT NULL,
  `tgl_event` date DEFAULT NULL,
  `tgl_event_end` date DEFAULT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `banquetorder`
--

INSERT INTO `banquetorder` (`no_bo`, `nama_org_kom`, `no_hp`, `no_surat`, `tgl_surat`, `nama_event`, `lokasi`, `jml_peserta`, `kelengkapan`, `potensi`, `skala_kegiatan`, `durasi_kegiatan`, `rincian_kegiatan`, `color`, `tgl_event`, `tgl_event_end`, `keterangan`, `tgl_input`, `updated`) VALUES
(21, 'Anto', '081', '', NULL, 'PROFILE IMAGE STUDIO', 'Lantai 6 - Ruang Perpustakaan 2', 0, '', 0, '', '15.00 WIB - selesai', '15.00 WIB - selesai', '#dd33ff', '2023-02-25', '2023-02-25', 'FIX', '2023-01-04 09:21:12', '2023-01-05'),
(22, 'MACROSCOPE', '08', '', NULL, 'Lokakarya Macroscope School Network x SMA Negeri 3 Malang', 'Lantai 3 - Ruang Baca 2', 0, '', 0, '', '13.00 - 16.00 WIB', '13.00 - 16.00 WIB', '#ff5733', '2023-02-25', '2023-02-25', 'FIX', '2023-01-04 10:44:08', '2023-01-05'),
(23, 'PT INAGATA PERSADA', '081295802674', '', NULL, 'Workshop/Study Banding UNIDA 10.00 - 13.00 WIB', 'Lantai 4 - Ruang Public', 0, '', 0, '', '10.00 - 13.00 WIB', 'Workshop/Study Banding UNIDA 10.00 - 13.00 WIB', '#5bc0f8', '2023-02-26', '2023-02-26', 'FIX', '2023-01-04 10:46:10', '2023-01-05'),
(24, 'PT INAGATA PERSADA', '081295802674', '', NULL, 'Workshop/Study Banding UNIDA, 10.00 - 13.00 WIB', 'Lantai 4 - Ruang Public', 0, '', 0, '', '10.00 - 13.00 WIB', 'Workshop/Study Banding UNIDA, 10.00 - 13.00 WIB', '#c23d3d', '2023-02-25', '2023-02-25', 'DONE', '2023-01-04 10:47:00', '2023-01-05'),
(25, 'FOUNDER MALANG CERDAS', '081', '', NULL, 'LT. 5, Co Working Space 1, 05 Januari 2023', 'Lantai 4 - Ruang Public', 0, '', 0, '', '10.00 - 13.00 WIB', 'LT. 5, Co Working Space 1, 05 Januari 2023', '#30f3dc', '2023-02-05', '2023-02-05', 'DONE', '2023-01-05 11:49:42', '2023-01-05'),
(26, 'MULTIVERSE E-SPORT', '08', '', NULL, 'Liga Siswa E-Sports Mobile Legends Bang Bang Season 2, Lt.2, Hall MCC', 'Lantai 4 - Ruang Public', 0, '', 0, '', '10.00 - 13.00 WIB', 'Liga Siswa E-Sports Mobile Legends Bang Bang Season 2, Lt.2, Hall MCC', '#ffde38', '2023-02-11', '2023-02-11', 'DONE', '2023-01-05 11:51:03', '2023-01-05'),
(27, 'NUSANTARA CULTURE ACADEMY', '007/VENUE/OYING', '', NULL, 'Talkshow dan Gelar Seni Spirit Budaya dan Kepahlawanan Malang Raya OYINGNGALAM SOCIETY FORUM 2023, Lt. 7 Auditorium', 'Lantai 4 - Ruang Public', 0, '', 0, '', '10.00 - 13.00 WIB', 'Talkshow dan Gelar Seni Spirit Budaya dan Kepahlawanan Malang Raya OYINGNGALAM SOCIETY FORUM 2023, Lt. 7 Auditorium', '#b5fc4a', '2023-02-28', '2023-02-28', 'DONE', '2023-01-05 11:52:21', '2023-01-05'),
(28, 'MACROSCOPE', 'MCRSCP/I/IZIN/2', '', NULL, 'Lokakarya Macroscope School Network x SMA Negeri 3 Malang', 'Lantai 4 - Ruang Public', 0, '', 0, '', '10.00 - 13.00 WIB', 'Lokakarya Macroscope School Network x SMA Negeri 3 Malang', '#65a6fb', '2023-02-11', '2023-01-11', 'DONE', '2023-01-05 11:54:29', '2023-01-05'),
(29, 'KOCHIRO', 'FAHMI (082230968450)', 'A.002/1/DPD-IIBF/Peminjaman/02/2023', '2023-02-17', 'Koordinasi dan Penguatan Pendamping Leaders ', 'Lantai 6 - Ruang Perpustakaan 2', 30, '', 0, 'Lokal', '08.30 - 15.00 WIB', 'Koordinasi dan Penguatan Pendamping Leaders ', '#5bc0f8', '2023-02-23', '2023-02-23', 'FIX', '2023-02-25 05:50:02', '2023-02-25');

-- --------------------------------------------------------

--
-- Table structure for table `coworking`
--

CREATE TABLE `coworking` (
  `id_coworking` int(10) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `judul_kegiatan` text NOT NULL,
  `tgl_pelaksanaan` date DEFAULT NULL,
  `tgl_pelaksanaan_end` date DEFAULT NULL,
  `color` varchar(10) NOT NULL,
  `pukul` time NOT NULL,
  `sd_pukul` time NOT NULL,
  `ruangan` varchar(255) NOT NULL,
  `kebutuhan` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `update_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coworking`
--

INSERT INTO `coworking` (`id_coworking`, `nama_user`, `judul_kegiatan`, `tgl_pelaksanaan`, `tgl_pelaksanaan_end`, `color`, `pukul`, `sd_pukul`, `ruangan`, `kebutuhan`, `pic`, `update_status`) VALUES
(1, 'Kochiro', 'Meeting Setup', '2023-03-18', '2023-03-18', '#5bc0f8', '09:00:00', '21:00:00', 'Lantai 4 Co-Working Spaces 4', 'Bean Bags Setup, 8 pax Capacity', 'Fahmi', 'Progress');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `phone` varchar(16) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `nama`, `gender`, `phone`, `alamat`, `deskripsi`, `created`, `updated`) VALUES
(1, 'Andi', 'P', '080324234', 'ngijo', 'pembeli tetap\r\n', '0000-00-00 00:00:00', '2020-12-18 05:04:43'),
(22, 'Iqbal', 'L', '085647854', 'Malang', 'Chef Resto', '2020-12-18 11:01:31', '2021-01-05 10:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id_event` int(10) NOT NULL,
  `nama_org_kom` varchar(255) NOT NULL,
  `no_surat` varchar(100) NOT NULL,
  `tgl_surat` date DEFAULT NULL,
  `judul_kegiatan` text NOT NULL,
  `tgl_pelaksanaan` date DEFAULT NULL,
  `tgl_pelaksanaan_end` date DEFAULT NULL,
  `color` varchar(10) NOT NULL,
  `pukul` time NOT NULL,
  `sd_pukul` time NOT NULL,
  `ruangan` varchar(255) NOT NULL,
  `jml_peserta` int(11) NOT NULL,
  `potensi_pengunjung` int(11) NOT NULL,
  `kebutuhan` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `update_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id_event`, `nama_org_kom`, `no_surat`, `tgl_surat`, `judul_kegiatan`, `tgl_pelaksanaan`, `tgl_pelaksanaan_end`, `color`, `pukul`, `sd_pukul`, `ruangan`, `jml_peserta`, `potensi_pengunjung`, `kebutuhan`, `status`, `pic`, `update_status`) VALUES
(1, 'KOCHIRO', '', NULL, 'Meeting Lanjutan Render Panorama Kebutuhan AR/VR Pameran', '2023-03-27', '2023-03-27', '#007bff', '09:00:00', '18:00:00', 'Lantai 5 Coworking Space 4', 0, 0, 'LCD 1 UNIT\nPROYEKTOR 1 UNIT\nPAPAN TULIS 1 UNIT\nMIC WIRELESS 1 SET', 'READY', 'FAHMI (082230968450)', 'DONE'),
(2, 'TALENT FILM MALANG', '', NULL, 'Basecamp Syuting', '2023-03-27', '2023-03-27', '#007bff', '12:00:00', '20:00:00', 'Lantai 1 Basement Parkiran', 0, 0, '-', 'READY', '-', 'DONE'),
(3, 'PASSANG ORNAMEN INDONESIA', '', '2023-03-01', 'Meeting Bulanan', '2023-03-01', '2023-03-01', '#007bff', '00:00:00', '00:00:00', 'Lantai 5 Coworking Space 1', 0, 1, '1', 'READY', 'ODEA - 08113601200', 'DONE'),
(4, 'PT PAGAK TV', '', '2023-03-01', 'Shooting Video Baca Berita Malang Raya', '2023-03-01', '2023-03-01', '#007bff', '00:00:00', '00:00:00', 'Lantai 2 Studio Broadcast', 0, 0, '-', '', '-', 'DONE'),
(5, 'TALENT FILM MALANG', '', '2023-03-01', 'Basecamp Syuting', '2023-03-02', '2023-03-02', '#007bff', '00:00:00', '00:00:00', 'Lantai 1 Basement Parkiran', 0, 0, '-', 'READY', 'AMIN - 08515664312', 'DONE'),
(6, 'KOCHIRO', '', '2023-03-01', 'Edukasi & Pengetahuan Dasar Softwere ', '2023-03-02', '2023-03-02', '#007bff', '00:00:00', '00:00:00', 'Lantai 4 Lab Komputer', 0, 1, '1', 'READY', 'FAHMI - 082230968450', 'DONE'),
(7, 'IKAPI', '', '2023-03-01', 'PAMERAN PRA GRAND LAUNCHING', '2023-03-02', '2023-03-02', '#007bff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Meeting', 0, 1, '1', 'READY', 'GEDEON - 081233340088', 'DONE'),
(8, 'KOCHIRO', '', '2023-03-01', 'Edukasi & Pengetahuan Dasar Gambar Tangan Handsketching', '2023-03-02', '2023-03-02', '#007bff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Kelas', 0, 1, '1', 'READY', 'FAHMI - 082230968450', 'DONE'),
(9, 'UB RADIO', '', NULL, 'Kegiatan Podcast (Aspirasi Podcast)', '2023-03-02', '2023-03-02', '#007bff', '00:00:00', '00:00:00', 'Lantai 2 Ruang Podcast', 20, 40, '-', 'READY', 'AJENG 081336596266', 'DONE'),
(10, 'DISKOMINFO KOTA MALANG', '', NULL, 'Awarding Lomba Logo HUT 109 Kota Malang', '2023-03-02', '2023-03-02', '#007bff', '00:00:00', '00:00:00', 'Lantai 2 Hall', 0, 0, 'FORM LOADING', 'READY', '-', 'DONE'),
(11, 'UB RADIO', '', NULL, 'Kegiatan Podcast (Aspirasi Podcast)', '2023-03-02', '2023-03-02', '#007bff', '00:00:00', '00:00:00', 'Lantai 2 Ruang Podcast', 20, 40, '-', 'READY', 'AJENG 081336596266', 'DONE'),
(12, 'DISKOMINFO KOTA MALANG', '', NULL, 'Awarding Lomba Logo HUT 109 Kota Malang', '2023-03-02', '2023-03-02', '#007bff', '00:00:00', '00:00:00', 'Lantai 2 Hall', 0, 0, 'FORM LOADING', 'READY', '-', 'DONE'),
(13, 'IKAPI', '', NULL, 'PAMERAN PRA GRAND LAUNCHING', '2023-03-03', '2023-03-03', '#007bff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Meeting', 0, 0, 'LCD PROYEKTOR', 'READY', 'GEDEON - 081233340088', 'DONE'),
(14, 'KOCHIRO', '', NULL, 'Edukasi & Pengetahuan Dasar Membangun Merk', '2023-03-03', '2023-03-03', '#007bff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Kelas', 0, 0, 'LCD PROYEKTOR', 'READY', 'FAHMI - 082230968450', 'DONE'),
(15, 'KOCHIRO', '', NULL, 'Edukasi & Pengetahuan Dasar Softwere ', '2023-03-03', '2023-03-03', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 4 Lab Komputer', 0, 0, 'PAPAN TULIS', 'READY', 'FAHMI - 082230968450', 'DONE'),
(16, 'BUANG DISINI', '', NULL, 'Meeting Divisi Supply Chain', '2023-03-03', '2023-03-03', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Co Working Space 4', 0, 0, 'LCD PROYEKTOR', 'READY', 'ULIMAZ 082289112770', 'DONE'),
(17, 'NUSANTARA CULTURE ACADEMY', '', NULL, 'Podcast Ngalam Bicara', '2023-03-03', '2023-03-03', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 2 Studio Podcast', 0, 0, '-', '-', 'Wibie 081357155137', 'DONE'),
(18, 'AKARTULI', '', NULL, 'Kelas Bahasa Isyarat', '2023-03-25', '2023-03-25', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Kelas', 0, 0, 'PAPAN TULIS', 'READY', 'MUTYA - 089531867213', 'DONE'),
(19, 'IKAPI', '', NULL, 'PAMERAN PRA GRAND LAUNCHING', '2023-03-25', '2023-03-25', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Meeting', 0, 0, 'LCD PROYEKTOR', 'READY', 'GEDEON - 081233340088', 'DONE'),
(20, 'PT. MACROSCOPE', '', NULL, 'Kegiatan Meeting Evaluasi setiap Awal Bulan', '2023-03-04', '2023-03-04', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Co Working Space 4', 0, 0, 'LCD PROYEKTOR', 'READY', 'REVANO 081906037547', 'DONE'),
(21, 'NUSANTARA CULTURE ACADEMY', '', NULL, 'Podcast Ngalam Bicara', '2023-03-04', '2023-03-04', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 2 Studio Podcast', 0, 0, '-', '-', 'Wibie - 081357155137', 'PENDING'),
(22, 'KOMUNITAS RAJUT MALANG', '', NULL, 'Kopdar Komunitas', '2023-03-05', '2023-03-05', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Area Selasar Bean Bag', 0, 0, 'TIDAK ADA', 'READY', 'DINI - 085793535400', 'DONE'),
(23, 'AKARTULI', '', NULL, 'Kelas Bahasa Isyarat', '2023-03-05', '2023-03-05', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Kelas', 0, 0, 'PAPAN TULIS', 'READY', 'MUTYA - 089531867213', 'DONE'),
(24, 'IKAPI', '', NULL, 'PAMERAN PRA GRAND LAUNCHING', '2023-03-05', '2023-03-05', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Meeting', 0, 0, 'LCD PROYEKTOR', 'READY', 'GEDEON - 081233340088', 'DONE'),
(25, 'MAIN EC', '', NULL, 'Meeting Mingguan English Club \" English for All Purposes', '2023-03-05', '2023-03-05', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Area Bean Bag', 0, 0, 'TIDAK ADA', 'READY', 'CHRIS - 08176316062', 'DONE'),
(26, 'ATHENA MODEL AGENCY', '', NULL, 'Pelatihan Modeling Catwalk', '2023-03-05', '2023-03-05', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Studi Foto', 0, 0, 'TIDAK ADA', 'READY', 'ENJI - 081937798927', 'DONE'),
(27, 'NUSANTARA CULTURE ACADEMY', '', NULL, 'Podcast Ngalam Bicara', '2023-03-05', '2023-03-05', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 2 Studio Podcast', 0, 0, '-', '-', 'Wibie 081357155137', 'DONE'),
(28, 'IKAPI', '', NULL, 'PAMERAN PRA GRAND LAUNCHING', '2023-03-06', '2023-03-06', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Meeting', 0, 0, 'LCD PROYEKTOR', 'READY', 'GEDEON - 081233340088', 'DONE'),
(29, 'PT KREADI NGALAM MEDIA (ABOUT MALANG.COM)', '', NULL, 'Aktivitas Redaksi About MAlang', '2023-03-06', '2023-03-06', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Co Working Space 1', 0, 0, 'TIDAK ADA', 'READY', '', 'DONE'),
(30, 'BANG BELI', '', NULL, 'Kegiatan Onsite Magang Merdeka Bangbeli', '2023-03-06', '2023-03-06', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 6 Ruang Perpustakaan 2', 0, 0, 'TV LED SAMSUNG', 'READY', 'DETHA - 082255937845', 'DONE'),
(31, 'NUSANTARA CULTURE ACADEMY', '', NULL, 'Podcast Ngalam Bicara', '2023-03-06', '2023-03-06', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 2 Studio Podcast', 0, 0, '-', '-', 'Wibie 081357155137', 'DONE'),
(32, 'PT PAGAK TV', '', NULL, 'Shooting Talkshow', '2023-03-06', '2023-03-06', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Studio Foto', 0, 0, 'FORM LOADING', '-', 'SUGIANTO 081913327888', 'DONE'),
(33, 'RES PRODUCTION', '', NULL, 'Kegiatan Koordinasi Crew Film dan Reading Skenario Film', '2023-03-06', '2023-03-06', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Meeting', 0, 0, 'LCD PROYEKTOR', 'READY', 'ELVIN - 082333886501', 'DONE'),
(34, 'DISKOPINDAG KOTA MALANG', '', '2023-03-01', 'Membangun Brand Sebagai Citra Produk', '2023-03-06', '2023-03-06', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Kelas', 10, 25, 'LCD PROYEKTOR', 'READY', 'BU YUSTIN - 082244844265', 'DONE'),
(35, 'BANG BELI', '', '0000-00-00', 'Kegiatan Onsite Magang Merdeka Bangbeli', '2023-03-07', '2023-03-07', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 6 Ruang Perpustakaan 2', 0, 0, 'TV LED SAMSUNG', 'READY', 'DETHA - 082255937845', 'DONE'),
(36, 'KEK', '', NULL, 'FGD Sub Sektor Musik & Aktivasi Museum Musik Malang', '2023-03-07', '2023-03-07', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Meeting', 0, 0, 'MIC WIRELESS', 'READY', 'SAM WES ', 'DONE'),
(37, 'RADIO ELFARA FM MALANG', '', NULL, 'Gladi Kotor', '2023-03-07', '2023-03-07', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Bioskop Studio 2', 0, 0, 'TIDAK ADA', 'READY', 'AFGIAN - 085732964432', 'DONE'),
(38, 'TALENTA KIDS MALANG', '', NULL, 'Kelas Public Speaking', '2023-03-07', '2023-03-07', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 4 Co Working Space 4', 0, 0, 'LCD PROYEKTOR', 'READY', 'SHINTA - 082231080106', 'DONE'),
(39, 'PASSANG ORNAMEN', '', NULL, 'Rapat Evaluasi Mingguan', '2023-03-07', '2023-03-07', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Co Working Space 4', 0, 0, 'LCD PROYEKTOR', '', 'ODEA - 08113601200', 'DONE'),
(40, 'BUANG DISINI', '', NULL, 'Meeting Operation', '2023-03-07', '2023-03-07', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Co Working Space 1', 0, 0, 'LCD PROYEKTOR', 'READY', 'ULIMAZ - 082289112770', 'DONE'),
(41, 'DINAS KOMUNIKASI DAN INFORMATIKA KOTA MALANG', '', NULL, 'Satu Data (SATA) Awarding Kota Malang 2023', '2023-03-07', '2023-03-07', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 7 Auditorium', 0, 0, 'FORM LOADING', '-', '', 'DONE'),
(42, 'RES PRODUCTION', '', NULL, 'Kegiatan Koordinasi Crew Film dan Reading Skenario Film', '2023-03-07', '2023-03-07', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 6 Perpustakaan 2', 0, 0, 'TV LED SAMSUNG', '', 'ELVIN - 082333886501', 'DONE'),
(43, 'BALAI DIKLAT INDUSTRI SURABAYA', '', NULL, 'Diklat Sosial Media Marketing', '2023-03-08', '2023-03-08', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Meeting & Lantai 4 Lab Kompouter', 0, 0, '-', '', 'WINDI 082382341376', 'DONE'),
(44, 'PT INAGATA PERSADA', '', NULL, 'Monthly Report Program Internship ', '2023-03-08', '2023-03-08', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Kelas', 0, 0, 'LCD PROYEKTOR', 'READY', 'FAJRUL 081295802674', 'DONE'),
(45, 'BANG BELI', '', NULL, 'Kegiatan Onsite Magang Merdeka Bangbeli', '2023-03-08', '2023-03-08', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 6 Ruang Perpustakaan 2', 0, 0, 'TV LED SAMSUNG', 'READY', 'DETHA - 082255937845', 'DONE'),
(46, 'KOMUNITAS ONLINE MARKETER GROUP (OMG)', '', NULL, 'Sharing Session \"Pemasaran Produk Menggunakan Platform digital Tik Tok\"', '2023-03-08', '2023-03-08', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Kelas', 0, 0, 'LCD PROYEKTOR', 'READY', 'AHADIAN - 083834801000', 'DONE'),
(47, 'RES PRODUCTION', '', NULL, 'Kegiatan Koordinasi Crew Film dan Reading Skenario Film', '2023-03-08', '2023-03-08', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 6 Perpustakaan 2', 0, 0, 'LCD PROYEKTOR', '', 'ELVIN - 082333886501', 'DONE'),
(48, 'BALAI DIKLAT INDUSTRI SURABAYA', '', NULL, 'Diklat Sosial Media Marketing', '2023-03-09', '2023-03-09', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Meeting & Lantai 4 Lab Komputer', 0, 0, '-', '', 'WINDI 082382341376', 'DONE'),
(49, 'DISKOPINDAG KOTA MALANG', '', NULL, '-', '2023-03-09', '2023-03-09', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Kelas', 0, 0, 'LCD PROYEKTOR', 'READY', 'BU YUSTIN - 082244844265', 'DONE'),
(50, 'BANG BELI', '', NULL, 'Kegiatan On Site Magang Merdeka Bangbeli', '2023-03-09', '2023-03-09', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Co-Working Space 1', 0, 0, '-', '-', 'DETHA - 082255937845', 'DONE'),
(51, 'RADIO ELFARA FM MALANG', '', NULL, 'The Meet Gala \" Elfara Broadcaster Hunt\"', '2023-03-09', '2023-03-09', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Bioskop Studio 2', 0, 0, 'SOUND SYSTEM', '', '', 'DONE'),
(52, 'ELSANI ART PAINTING', '', NULL, 'Pelatihan Lukis Kain', '2023-03-09', '2023-03-09', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Hotel Kapsul & Selasar', 0, 0, 'LCD PROYEKTOR', 'READY', 'ELSANI - 085229553784', 'PENDING'),
(53, 'UB RADIO', '', NULL, 'Kegiatan Podcast \"Aspirasi Podcast\"', '2023-03-09', '2023-03-09', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 2 Ruang Podcast', 0, 0, '-', '-', '', 'DONE'),
(54, 'RES PRODUCTION', '', NULL, 'Kegiatan Koordinasi Crew Film dan Reading Skenario Film', '2023-03-09', '2023-03-09', '#dd33ff', '08:00:00', '00:00:00', 'Lantai 3 Ruang Meeting', 0, 0, 'LCD PROYEKTOR', 'READY', 'ELVIN - 082333886501', 'DONE'),
(55, 'DINAS TENAGA KERJA, PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU KOTA MALANG', '', NULL, 'Penganugerahan Kepatuhan LKPM bagi Pelaku Usaha', '2023-03-10', '2023-03-10', '#dd33ff', '08:00:00', '16:30:00', 'Lantai 7 Auditorium', 0, 0, '-', '-', '-', 'DONE'),
(56, 'BALAI DIKLAT INDUSTRI SURABAYA', '', NULL, 'Diklat Sosial Media Marketing', '2023-03-10', '2023-03-10', '#dd33ff', '08:00:00', '16:30:00', 'Lantai 3 Ruang Meeting & Lantai 4 Lab Komputer', 0, 0, '-', '', 'WINDI 082382341376', 'DONE'),
(57, 'BANG BELI', '', NULL, 'Kegiatan On Site Magang Merdeka Bangbeli', '2023-03-10', '2023-03-10', '#dd33ff', '09:00:00', '17:00:00', 'Lantai 5 Co-Working Space 1', 0, 0, '-', '-', 'DETHA - 082255937845', 'DONE'),
(58, 'CONE FAIR \"COMMUNICATIONS ENTERTAIMENT FAIR -ILKOM UM', '', NULL, 'Screening Film', '2023-03-10', '2023-03-10', '#dd33ff', '10:00:00', '20:00:00', 'Lantai 5 Bioskop Studio 1', 0, 0, 'FORM LOADING', 'READY', 'AFGIAN - 085732964432', 'DONE'),
(59, 'TRIAKSARA DEPARTEMEN TEKNIK PENGAIRAN UNIVERSITAS BRAWIJAYA', '', NULL, 'Pameran Seni Triaksara Art Fair 2023 \"Kalang Exhibition\"', '2023-03-10', '2023-03-10', '#dd33ff', '11:00:00', '20:00:00', 'Lantai 4 Selasar', 0, 0, 'FORM LOADING', '', 'ABDI - 0895422397936', 'DONE'),
(60, 'ROYAL ENGLISH', '', NULL, 'Seminar Scholarship S1,S2,S3 Universitas Dalam & Luar Negeri (Beasiswa LPDP)', '2023-03-10', '2023-03-10', '#dd33ff', '13:30:00', '15:30:00', 'Lantai 5 Ruang Bioskop (Studio 2)', 0, 0, 'LCD PROYEKTOR', 'READY', 'SUNU - 082244848810', 'DONE'),
(61, 'DINAS TENAGA KERJA, PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU KOTA MALANG', '', NULL, 'Penganugerahan Kepatuhan LKPM bagi Pelaku Usaha', '2023-03-10', '2023-03-10', '#dd33ff', '18:00:00', '00:00:00', 'Lantai 7 Auditorium', 0, 0, '-', '-', '-', 'DONE'),
(62, 'KARANG WERDA', '', NULL, 'Kegiatan Talkshow & Melek Digital bagi Lansia, Bazar, dan Pertunjukkan Angklung', '2023-03-11', '2023-03-11', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 2 Open Publik Space', 0, 0, '', '', 'BU WIWIK - 081335605590', 'DONE'),
(63, 'MALANG CUBE SOLVER COMMUNITY NUSANTARA SPEEDCUBING ASSOCIATION', '', NULL, 'Kompetisi Rubik Resmi Malang Cube Open 2023', '2023-03-11', '2023-03-11', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Bioskop 2', 0, 0, 'MIC WIRELESS', 'READY', 'FARHAN - 081334117890', 'DONE'),
(64, 'BALAI DIKLAT INDUSTRI SURABAYA', '', NULL, 'Diklat Sosial Media Marketing', '2023-03-11', '2023-03-11', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Meeting & Lantai 4 Lab Komputer', 0, 0, '-', '', 'WINDI - 082382341376', 'DONE'),
(65, 'AKARTULI', '', NULL, 'Kelas Bahasa Isyarat', '2023-03-11', '2023-03-11', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Kelas', 0, 0, 'LCD PROYEKTOR', 'READY', 'MUTYA - 089531867213', 'DONE'),
(66, 'ARTGORITMA', '', NULL, 'Opening Ceremonial Pameran KEN KAYANA dan 20 Pelukis Cilik Malang', '2023-03-11', '2023-03-11', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Selasar & Hotel Kapsul', 0, 0, '-', '-', 'ARTGORITMA - 081318813936', 'DONE'),
(67, 'COMMUNICATIONS ENTERTAIMENT FAIR - ILKOM UM', '', NULL, 'Screening Film', '2023-03-10', '2023-03-10', '#dd33ff', '10:00:00', '20:00:00', 'Lantai 5 Bioskop Studio 1', 0, 0, 'FORM LOADING', 'READY', 'AFGIAN - 085732964432', 'DONE'),
(68, 'TRIAKSARA DEPARTEMEN TEKNIK PENGAIRAN UNIVERSITAS BRAWIJAYA', '', NULL, 'Pameran Seni Triaksara Art Fair 2023 \"Kalang Exhibition\"', '2023-03-11', '2023-03-11', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 4 Selasar', 0, 0, 'FORM LOADING', '', 'ABDI - 0895422397936', 'DONE'),
(69, 'NGALAM  BEKSA COMMUNITY', '', NULL, 'Sosialisasi Tradisional Dancesport Bersama Ngalambeksa Community', '2023-03-11', '2023-03-11', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 2 Open Publik Space', 0, 0, 'MEJA', 'READY', 'ABE - 085853385182', 'DONE'),
(70, 'AL - BANJARI FEST', '', NULL, 'Technical Meeting Finalis Festival Kreasi Al-Banjari', '2023-03-12', '2023-03-12', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Bioskop Studio 2', 0, 0, '-', '', '', 'DONE'),
(71, 'NGALAM  BEKSA COMMUNITY', '', NULL, 'Sosialisasi Tradisional Dancesport Bersama Ngalambeksa Community', '2023-03-12', '2023-03-12', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 2 Open Publik Space', 0, 0, 'MEJA', 'READY', 'ABE - 085853385182', 'DONE'),
(72, 'PRONUSA', '', NULL, 'Pelatihan Softskill Start UP dan UMKM', '2023-03-12', '2023-03-12', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 6 Perpustakaan 2', 0, 0, 'LCD PROYEKTOR', '', 'HERU 081333290390', 'DONE'),
(73, 'BALAI DIKLAT INDUSTRI SURABAYA', '', NULL, 'Diklat Sosial Media Marketing', '2023-03-12', '2023-03-12', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Meeting & Lantai 4 Lab Komputer', 0, 0, '-', '', 'WINDI 082382341376', 'DONE'),
(74, 'HELLO KIDZ EO', '', NULL, 'Ajang Kreativitas Anak', '2023-03-12', '2023-03-12', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Bioskop 1 dan Selasar', 0, 0, 'MEJA ', '', 'RINDA 085646328211', 'DONE'),
(75, 'KUBS MEDIA ', '', NULL, 'Kegiatan Shooting Video Youtube', '2023-03-12', '2023-03-12', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Studio Foto', 0, 0, '-', '-', 'FARAH - 081230570923', 'DONE'),
(76, 'ARTGORITMA', '', NULL, 'Parenting Talkshow', '2023-03-12', '2023-03-12', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Kelas', 0, 0, '-', '-', 'ARTGORITMA - 081318813936', 'DONE'),
(77, 'TRIAKSARA DEPARTEMEN TEKNIK PENGAIRAN UNIVERSITAS BRAWIJAYA', '', NULL, 'Pameran Seni Triaksara Art Fair 2023 \"Kalang Exhibition\"', '2023-03-12', '2023-03-12', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 4 Selasar', 0, 0, 'FORM LOADING', '', 'ABDI - 0895422397936', 'DONE'),
(78, 'MAIN EC', '', NULL, 'Meeting Mingguan English Club English for All Purposes', '2023-03-12', '2023-03-12', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Area Bean Bag', 0, 0, 'TIDAK ADA', 'READY', 'CHRIS - 08176316062', 'DONE'),
(79, 'PLATINUM', '', NULL, 'Kegiatan Technical Meeting Badminton Usia Dini', '2023-03-12', '2023-03-12', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Bioskop Studio 2', 0, 0, 'LCD PROYEKTOR', 'READY', 'ANDRE - 081334141935', 'DONE'),
(80, 'VOLUMINIOUS', '', NULL, 'Shooting Dance Cover', '2023-03-12', '2023-03-12', '#dd33ff', '00:00:00', '00:00:00', 'Lt.7 Open Public Space & Lt.8 Rooftop', 0, 0, 'FORM LOADING', '-', 'BIMANTARA 085745835261', 'DONE'),
(81, 'BALAI DIKLAT INDUSTRI SURABAYA', '', NULL, 'Diklat Sosial Media Marketing', '2023-03-13', '2023-03-13', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Meeting & Lantai 4 Lab Komputer', 0, 0, '-', '', 'WINDI 082382341376', 'DONE'),
(82, 'ARTGORITMA', '', NULL, 'Presenter Cilik & Acting', '2023-03-13', '2023-03-13', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Selasar & Hotel Kapsul', 0, 0, '-', '-', 'ARTGORITMA - 081318813936', 'DONE'),
(83, 'BALAI DIKLAT INDUSTRI SURABAYA', '', NULL, 'Diklat Sosial Media Marketing', '2023-03-14', '2023-03-14', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Meeting & Lantai 4 Lab Komputer', 0, 0, '-', '', 'WINDI 082382341376', 'DONE'),
(84, 'DISKOPINDAG KOTA MALANG', '', NULL, '-', '2023-03-14', '2023-03-14', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Kelas', 0, 0, 'LCD PROYEKTOR', 'READY', 'BU YUSTIN - 082244844265', 'DONE'),
(85, 'KOMUNITAS CINTA BERKAIN INDONESIA (KCBI)', '', NULL, 'Pertemuan Anggota Komunitas', '2023-03-14', '2023-03-14', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 6 Perpustakaan 2', 0, 0, 'LCD PROYEKTOR', 'READY', 'BU NOVIANI - 081281212003', 'DONE'),
(86, 'ARTGORITMA', '', NULL, 'Teenager Dance Competation', '2023-03-14', '2023-03-14', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Selasar Belakang', 0, 0, '-', '-', 'ARTGORITMA - 081318813936', 'DONE'),
(87, 'TALENTA KIDS MALANG', '', NULL, 'Kelas Public Speaking', '2023-03-14', '2023-03-14', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 4 Co Working Space 4', 0, 0, 'LCD PROYEKTOR', 'READY', 'SHINTA - 082231080106', 'DONE'),
(88, 'GLAMAZING', '', NULL, 'Photoshoot Produk', '2023-03-15', '2023-03-15', '#dd33ff', '00:00:00', '00:00:00', 'Lt.5 Studio Foto', 0, 0, 'FORM LOADING', '-', 'EDO 081231267322', 'DONE'),
(89, 'MALANG FEMALE MOTRET', '', NULL, 'Pelatihan Foto Produk', '2023-03-15', '2023-03-15', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 6 Perpustakaan 2', 0, 0, 'LCD PROYEKTOR', '', 'MONICA 081805177567', 'DONE'),
(90, 'ARTGORITMA', '', NULL, 'Teenager Singing Competition ', '2023-03-15', '2023-03-15', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Selasar Belakang', 0, 0, '-', '-', 'ARTGORITMA - 081318813936', 'DONE'),
(91, 'DISKOPINDAG KOTA MALANG', '', NULL, '-', '2023-03-16', '2023-03-16', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Kelas', 0, 0, 'LCD PROYEKTOR', 'READY', 'BU YUSTIN - 082244844265', 'DONE'),
(92, 'ARTGORITMA', '', NULL, 'Pameran KEN KAYANA dan 20 Pelukis Malang', '2023-03-16', '2023-03-16', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Hotel Kapsul', 0, 0, '-', '-', 'ARTGORITMA - 081318813936', 'DONE'),
(93, 'DIGITAL SOLUTION GROUP', '', NULL, 'Workshop Bisnis dan Implementasi Teknologi  Pada Microsoft Azure', '2023-03-16', '2023-03-16', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Bioskop Studio 2', 0, 0, 'BEAN BAG ', 'READY', 'NOVALDI - 081321553686', 'DONE'),
(94, 'PT KREADI NGALAM MEDIA (ABOUT MALANG.COM)', '', NULL, 'Workshop Kepenulisan  SEO di Media Online dan Penyususan soal USP', '2023-03-16', '2023-03-16', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 6 Perpustakaan 2', 0, 0, 'TV 65 IN', 'READY', 'SHINTIYA - 081358332442', 'DONE'),
(95, 'UB RADIO', '', NULL, 'Kegiatan Podcast (Aspirasi Podcast)', '2023-03-16', '2023-03-16', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 2 Ruang Podcast', 0, 0, '-', '-', '-', 'DONE'),
(96, 'ARTGORITMA', '', NULL, 'Oldiest Show', '2023-03-17', '2023-03-17', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Selasar', 0, 0, '', 'BELUM', 'ARTGORITMA - 081318813936', 'DONE'),
(97, 'FOCUS MODEL MANAGEMENT & ASOSIASI MODELING MALANG', '', NULL, 'Fashion Parade dan Lomba Bertema Tahta Wastra Nusantara', '2023-03-17', '2023-03-17', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 7 Auditorium', 0, 0, 'FORM LOADING', '', 'BUKHARI - 085855688015', 'DONE'),
(98, 'PAGUYUBAN DUTA PARIWISATA JAWA TIMUR', '', NULL, 'Seleksi Wawancara dan Tes Tulis Duta Pariwisata', '2023-03-18', '2023-03-18', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Bioskop Studio 1 dan Coworking Space 4', 0, 0, '-', '-', 'DAFA - 081231380071', 'DONE'),
(99, 'RANGKUL MALANG', '', NULL, 'Kegiatan Sesi Berbagi Cerita Pengasuhan', '2023-03-18', '2023-03-18', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 6 Perpustakaan 2', 0, 0, 'MIC WIRELESS', 'READY', 'KAMELIA - 08125225362', 'DONE'),
(100, 'ARTGORITMA', '', NULL, 'Model Cilik & Singing Competation', '2023-03-18', '2023-03-18', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Selasar Belakang', 0, 0, '-', 'BELUM', 'ARTGORITMA - 081318813936', 'DONE'),
(101, 'AL BANJARI FEST', '', NULL, 'Grand Final', '2023-03-18', '2023-03-18', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 2 Hall', 0, 0, 'FORM LOADING', '', '', 'DONE'),
(102, 'NOL DERAJAT FILM UB', '', NULL, 'Screening Film Pendek', '2023-03-18', '2023-03-18', '#dd33ff', '00:00:00', '00:00:00', 'Lt.5 Ruang Bioskop (Studio 1)', 0, 0, 'LCD PROYEKTOR', 'READY', 'FAHRIE 082142430870', 'DONE'),
(103, 'ARTGORITMA', '', NULL, 'Kids Activity', '2023-03-19', '2023-03-19', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Selasar Belakang', 0, 0, '-', 'BELUM', 'ARTGORITMA - 081318813936', 'DONE'),
(104, 'MAIN EC', '', NULL, 'Meeting Mingguan English Club English for All Purposes', '2023-03-19', '2023-03-19', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Area Bean Bag', 0, 0, 'TIDAK ADA', 'READY', 'CHRIS - 08176316062', 'DONE'),
(105, 'DISKOPINDAG KOTA MALANG', '', NULL, '-', '2023-03-21', '2023-03-21', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Kelas', 0, 0, 'LCD PROYEKTOR', 'READY', 'BU YUSTIN - 082244844265', 'DONE'),
(106, 'TALENTA KIDS MALANG', '', NULL, 'Kelas Public Speaking', '2023-03-28', '2023-03-28', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 4 Co Working Space 4', 0, 0, 'LCD PROYEKTOR', 'READY', 'SHINTA - 082231080106', 'DONE'),
(107, 'TALENTA KIDS MALANG', '', NULL, 'Kelas Public Speaking', '2023-03-28', '2023-03-28', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Co Working Space 1', 0, 0, 'LCD PROYEKTOR', 'READY', 'SHINTA - 082231080106', 'DONE'),
(108, 'DISKOPINDAG KOTA MALANG', '', NULL, '-', '2023-03-28', '2023-03-28', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Kelas', 0, 0, 'LCD PROYEKTOR', 'READY', 'BU YUSTIN - 082244844265', 'DONE'),
(109, 'TALENTA KIDS MALANG', '', NULL, 'Kelas Public Speaking', '2023-03-28', '2023-03-28', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Co Working Space 1', 0, 0, 'LCD PROYEKTOR', 'READY', 'SHINTA - 082231080106', 'DONE'),
(110, 'UB RADIO', '', NULL, 'Kegiatan Podcast Aspirasi Podcast', '2023-03-28', '2023-03-28', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 2 Studio Podcast', 0, 0, '-', '-', '-', 'DONE'),
(111, 'ASOSIASI PENGUSAHA & PENGRAJIN BATIK KOTA MALANG', '', NULL, 'Diskusi Bedah Desain Batik Malang', '2023-03-28', '2023-03-28', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Kelas', 0, 0, '-', '-', 'BU AULYA - 081334585892', 'DONE'),
(112, 'MAIN EC', '', NULL, 'Meeting Mingguan English Club English for All Purposes', '2023-03-28', '2023-03-28', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 5 Area Bean Bag', 0, 0, 'TIDAK ADA', 'READY', 'CHRIS - 08176316062', 'DONE'),
(113, 'DISKOPINDAG KOTA MALANG', '', NULL, '-', '2023-03-28', '2023-03-28', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Kelas', 0, 0, 'LCD PROYEKTOR', 'READY', 'BU YUSTIN - 082244844265', 'DONE'),
(114, 'TALENTA KIDS MALANG', '', NULL, 'Kelas Public Speaking', '2023-03-28', '2023-03-28', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 4 Co Working Space 4', 0, 0, 'LCD PROYEKTOR', 'READY', 'SHINTA - 082231080106', 'DONE'),
(115, 'DISKOPINDAG KOTA MALANG', '', NULL, '-', '2023-03-30', '2023-03-30', '#dd33ff', '00:00:00', '00:00:00', 'Lantai 3 Ruang Kelas', 0, 0, 'LCD PROYEKTOR', 'READY', 'BU YUSTIN - 082244844265', 'DONE'),
(116, 'QIRANA PROJECT', '', '2023-03-07', 'Kelas Public Speaking', '2023-03-10', '2023-03-10', '#dd33ff', '13:00:00', '17:00:00', 'Lt.4, Co-Working Space 4', 7, 0, '', 'DONE', 'Kelas Public Speaking', ''),
(117, 'QIRANA PROJECT', '', '2023-03-07', 'Kelas Public Speaking', '2023-03-10', '2023-03-10', '#dd33ff', '13:00:00', '17:00:00', 'Lt.4, Co-Working Space 4', 7, 0, '', 'DONE', 'Kelas Public Speaking', ''),
(118, 'KOCHIRO', '', '2023-03-07', 'Office Daily & Briefing Mingguan', '2023-03-10', '2023-03-10', '#5bc0f8', '09:00:00', '18:00:00', 'Lt.5, Co-Working Space 4', 10, 0, 'LCD\r\nMIC', 'FIX', '-', 'DONE');

-- --------------------------------------------------------

--
-- Table structure for table `event1`
--

CREATE TABLE `event1` (
  `no` int(10) NOT NULL,
  `nama_organisasi` varchar(255) NOT NULL,
  `no_surat` varchar(100) NOT NULL,
  `tanggal_surat` date DEFAULT NULL,
  `judul_kegiatan` text NOT NULL,
  `tanggal_pelaksanaan` date DEFAULT NULL,
  `lokasi_ruangan` varchar(250) NOT NULL,
  `jumlah_peserta` int(10) NOT NULL,
  `potensi_pengenjung` int(10) NOT NULL,
  `sd_pukul` varchar(250) NOT NULL,
  `ruangan` varchar(255) NOT NULL,
  `jml_peserta` int(11) NOT NULL,
  `potensi_pengunjung` int(11) NOT NULL,
  `skala_kegiatan` varchar(255) NOT NULL,
  `durasi_kegiatan` varchar(20) NOT NULL,
  `rincian_kegiatan` varchar(255) NOT NULL,
  `ket` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event1`
--

INSERT INTO `event1` (`no`, `nama_organisasi`, `no_surat`, `tanggal_surat`, `judul_kegiatan`, `tanggal_pelaksanaan`, `lokasi_ruangan`, `jumlah_peserta`, `potensi_pengenjung`, `sd_pukul`, `ruangan`, `jml_peserta`, `potensi_pengunjung`, `skala_kegiatan`, `durasi_kegiatan`, `rincian_kegiatan`, `ket`) VALUES
(1, 'KOCHIRO', '-', '0003-01-23', 'Meeting Lanjutan Render Panorama Kebutuhan AR/VR Pameran', '2023-03-01', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 18.00 WIB', 'Meeting Lanjutan Render Panorama Kebutuhan AR/VR Pameran', 'DONE'),
(2, 'TALENT FILM MALANG', '-', '0000-00-00', 'Basecamp Syuting', '2023-03-01', 'Basement, Parkiran', 4, 0, '', '', 0, 0, 'Lokal', '12.00 - 20.00 WIB', 'Basecamp Syuting', 'DONE'),
(3, 'PASSANG ORNAMEN', '-', '0000-00-00', 'Meeting Bulanan', '2023-03-01', 'Lt.5, Co-Working Space 1', 8, 0, '', '', 0, 0, 'Lokal', '13.00 - 16.00 WIB', 'Meeting Bulanan', 'DONE'),
(4, 'PT PAGAK TV', ' Malang/PT.PMTV/M/II/\'2023', '0000-00-00', 'Shooting Video Baca Berita Malang Raya', '2023-03-01', 'Lt.2, Ruang Broadcast', 3, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Shooting Video Baca Berita Malang Raya', 'DONE'),
(5, 'TALENT FILM MALANG', '-', '0000-00-00', 'Basecamp Syuting', '2023-03-02', 'Basement, Parkiran', 4, 0, '', '', 0, 0, 'Lokal', '05.30 - 21.00 WIB', 'Basecamp Syuting', 'DONE'),
(6, 'DISKOPINDAG KOTA MALANG', '-', '0000-00-00', 'KLINIK', '2023-03-02', 'Lt.3, Ruang Kelas', 30, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'KLINIK', 'CANCEL'),
(7, 'KOCHIRO', '-', '0000-00-00', 'Edukasi & Pengetahuan Dasar Softwere ', '2023-03-02', 'Lt.4, Lab. Komputer', 15, 0, '', '', 0, 0, 'Lokal', '08.00 - 17.00 WIB', 'Edukasi & Pengetahuan Dasar Software', 'DONE'),
(8, 'INTERNAL MCC', '-', '0000-00-00', 'Technical Meeting Stand Bazar', '2023-03-02', 'Lt.3, Ruang Meeting', 0, 0, '', '', 0, 0, 'Lokal', '10.00 - 11.00 WIB', 'Technical Meeting Stand Bazar', 'DONE'),
(9, 'KOCHIRO', '-', '0000-00-00', 'Edukasi & Pengetahuan Dasar Gambar Tangan Handsketching', '2023-03-02', 'Lt.3, Ruang Kelas', 55, 0, '', '', 0, 0, 'Lokal', '08.00 - 17.00 WIB', 'Edukasi & Pengetahuan Dasar Gambar Tangan Handsketching', 'FIX'),
(10, 'UB RADIO', '02.001/UBR/I/2023', '0000-00-00', '\"Kegiatan Podcast \"\"Aspirasi Podcast\"\"\"', '2023-03-02', 'Lt.2, Ruang Podcast', 5, 0, '', '', 0, 0, 'Lokal', '13.00 - 15.00 WIB', '\"Kegiatan Podcast \"\"Aspirasi Podcast\"\"\"', 'DONE'),
(11, 'NUSANTARA CULTURE ACADEMY - NGALAM SOCIETY', '-', '0003-01-23', 'Podcast - Ngalam Bicara', '2023-03-02', 'Lt.2, Ruang Podcast', 8, 0, '', '', 0, 0, 'Lokal', '16.00 - 18.00 WIB', 'Podcast - Ngalam Bicara', 'DONE'),
(12, 'DISKOMINFO KOTA MALANG', '896/300/35.73.411/2023', '0000-00-00', 'Awarding Lomba Logo HUT 109 Kota Malang', '2023-03-02', 'Lt.2, Hall MCC', 140, 0, '', '', 0, 0, 'Lokal', '18.30 WIB - selesai', 'Awarding Lomba Logo HUT 109 Kota Malang', 'DONE'),
(13, 'KOCHIRO', '-', '0000-00-00', 'Workshop Digitalisasi & Marketing Strategy', '2023-03-03', 'Lt.4, Lab. Komputer', 20, 0, '', '', 0, 0, 'Lokal', '08.00 - 14.00', 'Workshop Digitalisasi & Marketing Strategy', 'DONE'),
(14, 'KOCHIRO', '-', '0000-00-00', 'Edukasi & Pengetahuan Dasar Membangun Merk ', '2023-03-03', 'Lt.3, Ruang Kelas', 22, 0, '', '', 0, 0, 'Lokal', '09.00 - 13.00 WIB', 'Edukasi & Pengetahuan Dasar Membangun Merk ', 'DONE'),
(15, 'BUANG DISINI', '03/31/BD/III/2023', '0003-01-23', 'Meeting Divisi Supply Chain', '2023-03-03', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '10.00 - 12.00 WIB', 'Meeting Divisi Supply Chain', 'DONE'),
(16, 'NUSANTARA CULTURE ACADEMY', '-', '0003-01-23', 'Podcast - Ngalam Bicara', '2023-03-03', 'Lt.2, Ruang Podcast', 8, 0, '', '', 0, 0, 'Lokal', '16.00 - 18.00 WIB', 'Podcast - Ngalam Bicara', 'DONE'),
(17, 'KOMUNITAS AKAR TULI MALANG', '006/AKARTULI/II/2023', '0002-08-23', 'Kelas Bahasa Isyarat', '2023-03-04', 'Lt.3, Ruang Kelas', 50, 0, '', '', 0, 0, 'Lokal', '08.30 - 15.30 WIB', 'Kelas Bahasa Isyarat', 'DONE'),
(18, 'PT MACROSCOPE BERDIRKARI NUSANTARA ', '-', '0000-00-00', 'Kegiatan Meeting Evaluasi setiap Awal Bulan', '2023-03-04', 'Lt.5, Co-Working Space 4', 5, 0, '', '', 0, 0, 'Lokal', '10.00 - 14.00 WIB', 'Kegiatan Meeting Evaluasi setiap Awal Bulan', 'DONE'),
(19, 'NUSANTARA CULTURE ACADEMY', '-', '0003-01-23', 'Podcast - Ngalam Bicara', '2023-03-04', 'Lt.2, Ruang Podcast', 8, 0, '', '', 0, 0, 'Lokal', '16.00 - 18.00 WIB', 'Podcast - Ngalam Bicara', 'CANCEL'),
(20, 'KOMUNITAS RAJUT MALANG', '010/KRM/Ext/II/2023', '0000-00-00', 'Kopdar Komunitas', '2023-03-05', 'Lt.5, Area Bean Bag', 40, 0, '', '', 0, 0, 'Lokal', '08.30 - 10.30 WIB', 'Kopdar Komunitas', 'DONE'),
(21, 'KOMUNITAS AKAR TULI MALANG', '006/AKARTULI/II/2023', '0002-08-23', 'Kelas Bahasa Isyarat', '2023-03-05', 'Lt.3, Ruang Kelas', 50, 0, '', '', 0, 0, 'Lokal', '08.30 - 15.30 WIB', 'Kelas Bahasa Isyarat', 'DONE'),
(22, 'MAIN EC', '003/Maret/2023', '0003-03-23', '\"Meeting Mingguan English Club \"\"English for All Purpose\"\"\"', '2023-03-05', 'Lt.5, Area Bean Bag', 10, 0, '', '', 0, 0, 'Lokal', '13.00 16.00 WIB', '\"Meeting Mingguan English Club \"\"English for All Purpose\"\"\"', 'DONE'),
(23, 'ATHENA MODEL AGENCY', 'Ijin/02AMA/II/2023', '0003-02-23', 'Pelatihan Modeling Catwalk', '2023-03-05', 'Lt.5, Studio Foto', 30, 0, '', '', 0, 0, 'Lokal', '14.30 - 18.30 WIB', 'Pelatihan Modeling Catwalk', 'DONE'),
(24, 'NUSANTARA CULTURE ACADEMY', '-', '0003-01-23', 'Podcast - Ngalam Bicara', '2023-03-05', 'Lt.2, Ruang Podcast', 8, 0, '', '', 0, 0, 'Lokal', '16.00 - 18.00 WIB', 'Podcast - Ngalam Bicara', 'DONE'),
(25, 'BANG BELI', '-', '0000-00-00', 'Kegiatan Onsite Magang Merdeka Bangbeli', '2023-03-06', 'Lt.6, Ruang Perpustakaan 2', 60, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Kegiatan Onsite Magang Merdeka Bangbeli', 'DONE'),
(26, 'PT KREASI NGALAM MEDIA (ABOUTMALANG.COM)', '-', '0003-05-23', 'Aktivitas Redaksi About Malang', '2023-03-06', 'Lt.5, Co-Working Space 1', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 16.30 WIB', 'Aktivitas Redaksi About Malang', 'DONE'),
(27, 'NUSANTARA CULTURE ACADEMY', '-', '0003-01-23', 'Podcast - Ngalam Bicara', '2023-03-06', 'Lt.2, Ruang Podcast', 8, 0, '', '', 0, 0, 'Lokal', '16.00 - 18.00 WIB', 'Podcast - Ngalam Bicara', 'DONE'),
(28, 'PT PAGAK TV', '', '0000-00-00', 'Shooting Talkshow', '2023-03-06', 'Lt.5, Studio Foto', 7, 0, '', '', 0, 0, 'Lokal', '17.00 - 20.00 WIB', 'Shooting Talkshow', 'DONE'),
(29, 'RES PRODUCTION', '-', '0002-12-23', 'Kegiatan Koordinasi Crew Film dan Reading Skenario Film', '2023-03-06', 'Lt.6, Ruang Perpustakaan 2', 25, 0, '', '', 0, 0, 'Lokal', '18.00 - 21.00 WIB', 'Kegiatan Koordinasi Crew Film dan Reading Skenario Film', 'DONE'),
(30, 'DISKOPINDAG KOTA MALANG', '-', '0000-00-00', 'KLINIK (Membangun Brand sebagai Citra Produk)', '2023-03-07', 'Lt.3, Ruang Kelas', 30, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'KLINIK (Membangun Brand sebagai Citra Produk)', 'DONE'),
(31, 'PT KREASI NGALAM MEDIA (ABOUTMALANG.COM)', '-', '0003-05-23', 'Aktivitas Redaksi About Malang', '2023-03-07', 'Lt.5, Co-Working Space 1', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 16.30 WIB', 'Aktivitas Redaksi About Malang', 'DONE'),
(32, 'BANG BELI', '-', '0000-00-00', 'Kegiatan Onsite Magang Merdeka Bangbeli', '2023-03-07', 'Lt.6, Ruang Perpustakaan 2', 60, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Kegiatan Onsite Magang Merdeka Bangbeli', 'DONE'),
(33, 'KEK KOTA MALANG', '-', '0003-03-23', 'FGD Sub Sektor Musik & Aktivasi Komunitas Musik', '2023-03-07', 'Lt.3, Ruang Meeting', 35, 0, '', '', 0, 0, 'Lokal', '10.00 - 12.00 WIB', 'FGD Sub Sektor Musik & Aktivasi Komunitas Musik', 'DONE'),
(34, 'RADIO ELFARA FM MALANG', '-', '0000-00-00', '\"GLADI KOTOR \"\"THE MEET GALA: ELFARA BROADCASTER HUNT\"\"\"', '2023-03-07', 'Lt.5, Ruang Bioskop (Studio 2)', 30, 0, '', '', 0, 0, 'Lokal', '10.00 - 20.00 WIB', '\"GLADI KOTOR \"\"THE MEET GALA: ELFARA BROADCASTER HUNT\"\"\"', 'DONE'),
(35, 'TALENTA KIDS MALANG', '-', '0003-03-23', 'Kelas Public Speaking', '2023-03-07', 'Lt.4, Co-Working Space 4', 3, 0, '', '', 0, 0, 'Lokal', '11.00 - 15.00 WIB', 'Kelas Public Speaking', 'DONE'),
(36, 'PASSANG ORNAMEN', '-', '0003-06-23', 'Rapat Evaluasi Mingguan', '2023-03-07', 'Lt.5, Co-Working Space 4', 8, 0, '', '', 0, 0, 'Lokal', '13.00 - 17.00 WIB', 'Rapat Evaluasi Mingguan', 'DONE'),
(37, 'BUANG DISINI', '-', '0000-00-00', 'Meeting Operation', '2023-03-07', 'Lt.5, Co-Working Space 1', 12, 0, '', '', 0, 0, 'Lokal', '16.00 - 19.00 WIB', 'Meeting Operation', 'CANCEL'),
(38, 'RES PRODUCTION', '-', '0002-12-23', 'Kegiatan Koordinasi Crew Film dan Reading Skenario Film', '2023-03-07', 'Lt.6, Ruang Perpustakaan 2', 25, 0, '', '', 0, 0, 'Lokal', '18.00 - 21.00 WIB', 'Kegiatan Koordinasi Crew Film dan Reading Skenario Film', 'DONE'),
(39, 'BALAI DIKLAT INDUSTRI SURABAYA', '-', '0000-00-00', 'Diklat Sosial Media Marketing', '2023-03-08', 'Lt.4, Lab. Komputer & Lt.3, Ruang Meeting', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Diklat Sosial Media Marketing', 'DONE'),
(40, 'PT INAGATA PERSADA', '-', '0000-00-00', 'Monthly Report Program Internship PT Inagata Persada', '2023-03-08', 'Lt.3, Ruang Kelas', 15, 0, '', '', 0, 0, 'Lokal', '08.00 - 12.00 WIB', 'Monthly Report Program Internship PT Inagata Persada', 'DONE'),
(41, 'Panitia Grand Launching', '', '0000-00-00', 'Rapat Koordinasi Grand Launching MCC', '2023-03-08', 'Lt.3 Ruang  Meeting', 0, 0, '', '', 0, 0, 'Lokal', '15', '', 'DONE'),
(42, 'QUADBLUE.CO', '-', '0000-00-00', 'Strategic Planning Meeting', '2023-03-08', 'Lt.4, Co-Working Space 4', 5, 0, '', '', 0, 0, 'Lokal', '09.00 - 16.00 WIB', 'Strategic Planning Meeting', 'DONE'),
(43, 'BANG BELI', '-', '0000-00-00', 'Kegiatan Onsite Magang Merdeka Bangbeli', '2023-03-08', 'Lt.6, Ruang Perpustakaan 2', 60, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Kegiatan Onsite Magang Merdeka Bangbeli', 'DONE'),
(44, 'KOCHIRO', '-', '0003-07-23', 'Office Daily & Briefing Mingguan', '2023-03-08', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 18.00 WIB', 'Office Daily & Briefing Mingguan', 'DONE'),
(45, 'CHAKA CREATIVE STUDIO', '-', '0003-06-23', 'Meeting Internal', '2023-03-08', 'Lt.5, Co-Working Space 1', 5, 0, '', '', 0, 0, 'Lokal', '10.00 - 16.00 WIB', 'Meeting Internal', 'DONE'),
(46, 'KOMUNITAS ONLINE MARKETER GROUP (OMG) INDONESIA', '013/OMG/2023', '0003-02-23', 'Sharing Season Pemasaran Produk menggunakan Platform TIKTOK', '2023-03-08', 'Lt.3, Ruang Kelas', 25, 0, '', '', 0, 0, 'Lokal', '13.00 - 16.00 WIB', 'Sharing Season Pemasaran Produk menggunakan Platform TIKTOK', 'DONE'),
(47, 'DINAS KOMUNIKASI DAN INFORMATIKA KOTA MALANG', '896/241/35.73.411/2023', '0000-00-00', 'Satu Data (SATA) Awarding Kota Malang 2023', '2023-03-08', 'Lt.7, Auditorium', 0, 0, '', '', 0, 0, 'Lokal', '18.00 WIB - selesai', 'Satu Data (SATA) Awarding Kota Malang 2023', 'DONE'),
(48, 'RES PRODUCTION', '-', '0002-12-23', 'Kegiatan Koordinasi Crew Film dan Reading Skenario Film', '2023-03-08', 'Lt.6, Ruang Perpustakaan 2', 25, 0, '', '', 0, 0, 'Lokal', '18.00 - 21.00 WIB', 'Kegiatan Koordinasi Crew Film dan Reading Skenario Film', 'DONE'),
(49, 'MCC', '-', '0000-00-00', 'Talkshow bersama Wamendag', '2023-03-09', 'Lt.2, Hall MCC', 0, 0, '', '', 0, 0, 'Lokal', '08.00 = selesai', 'Talkshow bersama Wamendag', 'DONE'),
(50, 'BALAI DIKLAT INDUSTRI SURABAYA', '', '0000-00-00', 'Diklat Sosial Media Marketing', '2023-03-09', 'Lt.4, Lab. Komputer & Lt.3, Ruang Meeting', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Diklat Sosial Media Marketing', 'DONE'),
(51, 'INDIGO - SMPN 14 MALANG', '-', '0000-00-00', 'Belajar Podcast MCC X TIM INDIGO SMPN 14 MALANG X UB RADIO', '2023-03-09', 'Lt.2, Ruang Podcast', 20, 0, '', '', 0, 0, 'Lokal', '08.00 - 14.00 WIB', 'Belajar Podcast MCC X TIM INDIGO SMPN 14 MALANG X UB RADIO', 'DONE'),
(52, 'DISKOPINDAG KOTA MALANG', '-', '0000-00-00', 'KLINIK (Menghitung HPP untuk Menentukan Harga Jual)', '2023-03-09', 'Lt.3, Ruang Kelas', 30, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'KLINIK (Menghitung HPP untuk Menentukan Harga Jual)', 'DONE'),
(53, 'SOLUTIVE', '-', '0003-06-23', 'Workshop Pembuatan Konten', '2023-03-09', 'Lt.5, Co-Working Space 1', 6, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Workshop Pembuatan Konten', 'DONE'),
(54, 'BANG BELI', '-', '0000-00-00', 'Kegiatan Onsite Magang Merdeka Bangbeli', '2023-03-09', 'Lt.6, Ruang Perpustakaan 2', 60, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Kegiatan Onsite Magang Merdeka Bangbeli', 'DONE'),
(55, 'HOUSE OF ZAMA (HOZ)', '-', '0003-07-23', 'Meeting Internal', '2023-03-09', 'Lt.4, Co-Working Space 4', 8, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Meeting Internal', 'DONE'),
(56, 'KOCHIRO', '-', '0003-07-23', 'Office Daily & Briefing Mingguan', '2023-03-09', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 18.00 WIB', 'Office Daily & Briefing Mingguan', 'DONE'),
(57, 'ELSANI ART PAINTING', '-', '0002-06-23', 'Pelatihan Lukis Kain', '2023-03-09', 'Lt.3, Hotel Kapsul', 0, 0, '', '', 0, 0, 'Lokal', '10.30 - 14.00 WIB', 'Pelatihan Lukis Kain', 'PENDING'),
(58, 'RADIO ELFARA FM MALANG', '-', '0000-00-00', '\" \"\"THE MEET GALA: ELFARA BROADCASTER HUNT\"\"\"', '2023-03-09', 'Lt.5, Studio Foto', 30, 0, '', '', 0, 0, 'Lokal', '10.00 - 20.00 WIB', '\"\"\"THE MEET GALA: ELFARA BROADCASTER HUNT\"\"\"', 'DONE'),
(59, 'UB RADIO', '02.001/UBR/I/2023', '0000-00-00', '\"Kegiatan Podcast \"\"Aspirasi Podcast\"\"\"', '2023-03-09', 'Lt.2, Ruang Podcast', 5, 0, '', '', 0, 0, 'Lokal', '13.00 - 15.00 WIB', '\"Kegiatan Podcast \"\"Aspirasi Podcast\"\"\"', 'DONE'),
(60, 'TALENT FILM MALANG', '-', '0003-07-23', 'Pelatihan Akting', '2023-03-09', 'Lt.3, Hotel Kapsul', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 20.00 WIB', 'Pelatihan Akting', 'DONE'),
(61, 'RES PRODUCTION', '-', '0002-12-23', 'Kegiatan Koordinasi Crew Film dan Reading Skenario Film', '2023-03-09', 'Lt.6, Ruang Perpustakaan 2', 25, 0, '', '', 0, 0, 'Lokal', '18.00 - 21.00 WIB', 'Kegiatan Koordinasi Crew Film dan Reading Skenario Film', 'DONE'),
(62, 'BALAI DIKLAT INDUSTRI SURABAYA', '', '0000-00-00', 'Diklat Sosial Media Marketing', '2023-03-10', 'Lt.4, Lab. Komputer & Lt.3, Ruang Meeting', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Diklat Sosial Media Marketing', 'DONE'),
(63, 'BANG BELI', '-', '0000-00-00', 'Kegiatan Onsite Magang Merdeka Bangbeli', '2023-03-10', 'Lt.5, Co-Working Space 1', 60, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Kegiatan Onsite Magang Merdeka Bangbeli', 'DONE'),
(64, 'KOCHIRO', '-', '0003-07-23', 'Office Daily & Briefing Mingguan', '2023-03-10', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 18.00 WIB', 'Office Daily & Briefing Mingguan', 'DONE'),
(65, '\"CONE FAIR \"\"COMMUNICATIONS ENTERTAIMENT FAIR -ILKOM UM\"', '-', '0003-03-23', 'Screening Film', '2023-03-10', 'Lt.5, Ruang Bioskop (Studio 1)', 150, 0, '', '', 0, 0, 'Lokal', '10.00 - 20.00 WIB', 'Screening Film', 'DONE'),
(66, 'TRIAKSARA DEPARTEMEN TEKNIK PENGAIRAN UNIVERSITAS BRAWIJAYA', '081/TRIAKSARA/HMP_FTUB/II/2023', '0000-00-00', '\"Pameran Seni Triaksara Art Fair 2023 \"\"Kalang Exhibition\"\"\"', '2023-03-10', 'Lt.4, Selasar', 100, 0, '', '', 0, 0, 'Lokal', '11.00 - 20.00 WIB', '\"Pameran Seni Triaksara Art Fair 2023 \"\"Kalang Exhibition\"\"\"', 'DONE'),
(67, 'QIRANA PROJECT', '-', '0003-07-23', 'Kelas Public Speaking', '2023-03-10', 'Lt.4, Co-Working Space 4', 7, 0, '', '', 0, 0, 'Lokal', '13.00 - 17.00 WIB', 'Kelas Public Speaking', 'DONE'),
(68, 'ROYAL ENGLISH', '-', '0000-00-00', 'Seminar Scholarship S1,S2,S3 Universitas Dalam & Luar Negeri (Beasiswa LPDP)', '2023-03-10', 'Lt.5, Ruang Bioskop (Studio 2)', 150, 0, '', '', 0, 0, 'Lokal', '13.30 - 15.30 WIB', 'Seminar Scholarship S1,S2,S3 Universitas Dalam & Luar Negeri (Beasiswa LPDP)', 'DONE'),
(69, 'BIG G NATION', '02//BGN-SIMT/II/2023', '0003-08-23', 'Shooting Dance Cover', '2023-03-10', 'Lt.8, Rooftop', 15, 0, '', '', 0, 0, 'Lokal', '16.00 - 21.00 WIB', 'Shooting Dance Cover', 'DONE'),
(70, 'BUANG DISINI', '03/37/BD/III/2023', '0003-06-23', 'Townhall Meeting', '2023-03-10', 'Lt.5, Ruang Bioskop (Studio 2)', 65, 0, '', '', 0, 0, 'Lokal', '17.00 - 20.45 WIB', 'Townhall Meeting', 'DONE'),
(71, 'TALENT FILM MALANG', '-', '0003-07-23', 'Pelatihan Akting', '2023-03-10', 'Lt.3, Hotel Kapsul & Open Public Space (Menyesuaikan)', 25, 0, '', '', 0, 0, 'Lokal', '18.00 - 20.00 WIB', 'Pelatihan Akting', 'DONE'),
(72, 'DINAS TENAGA KERJA, PENANAMAN MODAL, DAN PELAYANAN TERPADU SATU PINTU KOTA MALANG', '005/181/35.73.406/2023', '0002-09-23', 'Backstage Artis', '2023-03-10', 'Lt.6, Ruang Perpustakaan 2', 0, 0, '', '', 0, 0, 'Lokal', '18.00 WIB - selesai', 'Backstage Artis', 'DONE'),
(73, 'DINAS TENAGA KERJA, PENANAMAN MODAL, DAN PELAYANAN TERPADU SATU PINTU KOTA MALANG', '005/181/35.73.406/2023', '0002-09-23', 'Penganugerahan Kepatuhan LKPM bagi Pelaku Usaha ', '2023-03-10', 'Lt.7, Auditorium ', 115, 0, '', '', 0, 0, 'Lokal', '18.00 WIB - selesai', 'Penganugerahan Kepatuhan LKPM bagi Pelaku Usaha ', 'DONE'),
(74, 'SWARA NARWASTU', '-', '0003-10-23', 'Take Content Vocal Group', '2023-03-10', 'Lt.5, Studio Foto', 8, 0, '', '', 0, 0, 'Lokal', '19.00 - 21.00 WIB', 'Take Content Vocal Group', 'DONE'),
(75, 'KARANG WERDA', '001/II/KWRD/2023', '0002-10-23', 'Kegiatan Talkshow & Melek Digital bagi Lansia, Bazar, dan Pertunjukkan Angklung', '2023-03-11', 'Lt.2, Open Public Space', 60, 0, '', '', 0, 0, 'Lokal', '07.00 - 12.00 WIB', 'Kegiatan Talkshow & Melek Digital bagi Lansia, Bazar, dan Pertunjukkan Angklung', 'DONE'),
(76, 'MALANG CUBE SOLVER COMMUNITY', '01/MCO/2023/MCSC', '0000-00-00', 'Kompetisi Rubik Resmi Malang Cube Open 2023', '2023-03-11', 'Lt.5, Ruang Bioskop (Studio 2)', 70, 100, '', '', 0, 0, 'Lokal', '07.00 - 21.00 WIB', 'Kompetisi Rubik Resmi Malang Cube Open 2023', 'DONE'),
(77, 'LUXOR PHOTOWORKS', '-', '0003-07-23', 'Pengambilan Foto untuk Portofolio', '2023-03-11', 'Lt.8, Rooftop', 4, 0, '', '', 0, 0, 'Lokal', '07.30 - 11.00 WIB', 'Pengambilan Foto untuk Portofolio', 'DONE'),
(78, 'BALAI DIKLAT INDUSTRI SURABAYA', '', '0000-00-00', 'Diklat Sosial Media Marketing', '2023-03-11', 'Lt.4, Lab. Komputer & Lt.3, Ruang Meeting', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Diklat Sosial Media Marketing', 'DONE'),
(79, 'TALENT FILM MALANG', '-', '0003-07-23', 'Pelatihan Akting', '2023-03-11', 'Lt.3, Hotel Kapsul & Open Public Space (Menyesuaikan)', 25, 0, '', '', 0, 0, 'Lokal', '08.00 - 15.00 WIB', 'Pelatihan Akting', 'DONE'),
(80, 'LSO TRIAKSARA DEPARTEMEN TEKNIK PENGAIRAN FT-UB', '-', '0003-09-23', 'Ruang Panitia Triaksara Art Fair 2023', '2023-03-11', 'Lt.4, Co-Working Space 4', 25, 0, '', '', 0, 0, 'Lokal', '08.00 - 21.00 WIB', 'Ruang Panitia Triaksara Art Fair 2023', 'DONE'),
(81, 'SEC FIA UB', '014/SPM/SEKBENTAR/SEC-FIA/III/2023', '0003-06-23', 'Sharing Session Organisasi', '2023-03-11', 'Lt.6, Ruang Perpustakaan 2', 70, 0, '', '', 0, 0, 'Lokal', '08.00 - 12.00 WIB', 'Sharing Session Organisasi', 'DONE'),
(82, 'KOMUNITAS AKAR TULI MALANG', '006/AKARTULI/II/2023', '0002-08-23', 'Kelas Bahasa Isyarat', '2023-03-11', 'Lt.3, Ruang Kelas', 50, 0, '', '', 0, 0, 'Lokal', '08.30 - 12.30 WIB', 'Kelas Bahasa Isyarat', 'DONE'),
(83, 'KEDAI WEDANG OEBAN', '-', '0003-07-23', 'Bincang Kopi dengan Tema Sisi Lain Tugas Seorang Barista dalam Edukasi Minum Kopi', '2023-03-11', 'Lt.3, Food Lab', 20, 0, '', '', 0, 0, 'Lokal', '09.00 - selesai', 'Bincang Kopi dengan Tema Sisi Lain Tugas Seorang Barista dalam Edukasi Minum Kopi', 'DONE'),
(84, 'LAZIS SABILLILAH', '-', '0003-09-23', 'Meeting Kegiatan bulan Ramadhan', '2023-03-11', 'Lt.7, Selasar', 25, 0, '', '', 0, 0, 'Lokal', '10.00 - 13.00 WIB', 'Meeting Kegiatan bulan Ramadhan', 'DONE'),
(85, '\"CONE FAIR \"\"COMMUNICATIONS ENTERTAIMENT FAIR -ILKOM UM\"', '', '0003-03-23', 'Screening Film', '2023-03-11', 'Lt.5, Ruang Bioskop (Studio 1)', 150, 0, '', '', 0, 0, 'Lokal', '10.00 - 20.00 WIB', 'Screening Film', 'DONE'),
(86, 'ARTGORITMA', '-', '0001-02-23', 'Opening Ceremonial Pameran KEN KAYANA dan 20 Pelukis Cilik Malang', '2023-03-11', 'Lt.3, Hotel Kapsul & Selasar Belakang', 100, 200, '', '', 0, 0, 'Lokal', '10.00 - 20.00 WIB', 'Opening Ceremonial Pameran KEN KAYANA dan 20 Pelukis Cilik Malang', 'DONE'),
(87, 'TRIAKSARA DEPARTEMEN TEKNIK PENGAIRAN UNIVERSITAS BRAWIJAYA', '081/TRIAKSARA/HMP_FTUB/II/2023', '0000-00-00', '\"Pameran Seni Triaksara Art Fair 2023 \"\"Kalang Exhibition\"\"\"', '2023-03-11', 'Lt.4, Selasar', 100, 0, '', '', 0, 0, 'Lokal', '11.00 - 20.00 WIB', '\"Pameran Seni Triaksara Art Fair 2023 \"\"Kalang Exhibition\"\"\"', 'DONE'),
(88, 'KOMUNITAS AKAR TULI MALANG', '-', '0003-06-23', 'Seminar dengan Tema Etika Dasar Presentasi dan Persiapan Materi', '2023-03-11', 'Lt.3, Ruang Kelas', 40, 0, '', '', 0, 0, 'Lokal', '11.00 - 14.00 WIB', 'Seminar dengan Tema Etika Dasar Presentasi dan Persiapan Materi', 'DONE'),
(89, 'NGALAMBEKSA COMMUNITY', '010.005/NBC/VI/2023', '0000-00-00', 'Sosialisasi Tradisional Dancesport Bersama Ngalambeksa Community', '2023-03-11', 'Lt.2, Open Public Space', 100, 0, '', '', 0, 0, 'Lokal', '12.00 - 18.00 WIB', 'Sosialisasi Tradisional Dancesport Bersama Ngalambeksa Community', 'DONE'),
(90, 'KOMUNITAS AVERROES', '077/AVE/03/2023', '0003-07-23', 'Literasi Keuangan UMKM dengan Tema Digital Strengthening Resilience of SIMEs', '2023-03-11', 'Lt.3, Ruang Kelas', 50, 0, '', '', 0, 0, 'Lokal', '14.00 - 16.30 WIB', 'Literasi Keuangan UMKM dengan Tema Digital Strengthening Resilience of SIMEs', 'DONE'),
(91, 'MUSEUM MUSIK INDONESIA', '-', '0003-09-23', 'Konferensi Pers Musik Nasional', '2023-03-11', 'Lt.6, Ruang Perpustakaan 2', 70, 0, '', '', 0, 0, 'Lokal', '16.00 - 21.00 WIB', 'Konferensi Pers Musik Nasional', 'DONE'),
(92, 'AL-BANJARI FEST', '', '0000-00-00', 'Technical Meeting Finalis Festival Kreasi Al-Banjari', '2023-03-12', 'Lt.5, Ruang Bioskop (Studio 2)', 140, 0, '', '', 0, 0, 'Lokal', '07.30 - 12.00 WIB', 'Technical Meeting Finalis Festival Kreasi Al-Banjari', 'DONE'),
(93, 'CV ALPHA ROCKET NUSANTARA', '-', '0003-10-23', 'Meeting Evaluasi Project dengan Siswa Binaan', '2023-03-12', 'Lt.5, Co-Working Space 1', 6, 0, '', '', 0, 0, 'Lokal', '08.00 - 10.00 WIB', 'Meeting Evaluasi Project dengan Siswa Binaan', 'DONE'),
(94, 'NGALAMBEKSA COMMUNITY', '010.005/NBC/VI/2023', '0000-00-00', 'Sosialisasi Tradisional Dancesport Bersama Ngalambeksa Community', '2023-03-12', 'Lt.2, Open Public Space', 100, 0, '', '', 0, 0, 'Lokal', '08.00 - 15.00 WIB', 'Sosialisasi Tradisional Dancesport Bersama Ngalambeksa Community', 'DONE'),
(95, 'PRONUSA', '', '0000-00-00', 'Pelatihan Softskill Start Up dan UMKM', '2023-03-12', 'Lt.6, Ruang Perpustakaan 2', 40, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.00 WIB', 'Pelatihan Softskill Start Up dan UMKM', 'DONE'),
(96, 'BALAI DIKLAT INDUSTRI SURABAYA', '', '0000-00-00', 'Diklat Sosial Media Marketing', '2023-03-12', 'Lt.4, Lab. Komputer & Lt.3, Ruang Meeting', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Diklat Sosial Media Marketing', 'DONE'),
(97, 'LSO TRIAKSARA DEPARTEMEN TEKNIK PENGAIRAN FT-UB', '-', '0003-09-23', 'Ruang Panitia Triaksara Art Fair 2023', '2023-03-12', 'Lt.4, Co-Working Space 4', 25, 0, '', '', 0, 0, 'Lokal', '08.00 - 21.00 WIB', 'Ruang Panitia Triaksara Art Fair 2023', 'DONE'),
(98, 'HELLO KIDZ EO', '771/EHK.II/2023', '0000-00-00', 'Ajang Kreativitas Anak', '2023-03-12', 'Lt.5, Ruang Bioskop (Studio 1) dan Selasar', 200, 0, '', '', 0, 0, 'Lokal', '08.30 - 15.00 WIB', 'Ajang Kreativitas Anak', 'DONE'),
(99, 'KUBS MEDIA ', '03.01/KUBS-Media/II/2023', '0000-00-00', 'Kegiatan Shooting Video Youtube', '2023-03-12', 'Lt.5, Studio Foto', 15, 0, '', '', 0, 0, 'Lokal', '08.00 - 19.00 WIB', 'Kegiatan Shooting Video Youtube', 'DONE'),
(100, 'ARTGORITMA', '-', '0001-02-23', 'Parenting Talkshow ', '2023-03-12', 'Lt.3, Hotel Kapsul & Selasar Belakang', 100, 0, '', '', 0, 0, 'Lokal', '10.00 - 20.00 WIB', 'Parenting Talkshow ', 'DONE'),
(101, 'TRIAKSARA DEPARTEMEN TEKNIK PENGAIRAN UNIVERSITAS BRAWIJAYA', '081/TRIAKSARA/HMP_FTUB/II/2023', '0000-00-00', '\"Pameran Seni Triaksara Art Fair 2023 \"\"Kalang Exhibition\"\"\"', '2023-03-12', 'Lt.4, Selasar', 100, 0, '', '', 0, 0, 'Lokal', '11.00 - 20.00 WIB', '\"Pameran Seni Triaksara Art Fair 2023 \"\"Kalang Exhibition\"\"\"', 'DONE'),
(102, 'KOMUNITAS INVESTOR SAHAM PEMULA (ISP) KOTA MALANG', '-', '0003-10-23', 'Workshop Investasi Saham', '2023-03-12', 'Lt.3, Ruang Kelas', 38, 0, '', '', 0, 0, 'Lokal', '12.00 - 18.00 WIB', 'Workshop Investasi Saham', 'DONE'),
(103, 'MAIN EC', '', '0003-03-23', '\"Meeting Mingguan English Club \"\"English for All Purpose\"\"\"', '2023-03-12', 'Lt.5, Area Bean Bag', 10, 0, '', '', 0, 0, 'Lokal', '13.00 - 16.00 WIB', '\"Meeting Mingguan English Club \"\"English for All Purpose\"\"\"', 'DONE'),
(104, 'FORTYNINE PICTURE', '-', '0003-09-23', 'Take Video Clip Band (Zanzibar Arabian)', '2023-03-12', 'Lt.8, Rooftop', 20, 0, '', '', 0, 0, 'Lokal', '13.00 - 17.00 WIB', 'Take Video Clip Band (Zanzibar Arabian)', 'DONE'),
(105, 'PLATINUM', '0230/PLATINUM/PK/I/2023', '0002-08-23', 'Kegiatan Technical Meeting Badminton Usia Dini', '2023-03-12', 'Lt.5, Ruang Bioskop (Studio 2)', 100, 0, '', '', 0, 0, 'Lokal', '14.00 - 20.00 WIB', 'Kegiatan Technical Meeting Badminton Usia Dini', 'DONE'),
(106, 'ATHENA MODEL AGENCY', 'Ijin/03/AMA/II/2023', '0003-07-23', 'Pelatihan Modelling Catwalk', '2023-03-12', 'Lt.6, Ruang Perpustakaan 2', 30, 0, '', '', 0, 0, 'Lokal', '14.30 - 19.00 WIB', 'Pelatihan Modelling Catwalk', 'DONE'),
(107, 'VOLUMINIOUS', '', '0000-00-00', 'Shooting Dance Cover', '2023-03-12', 'Lt.7, Open Public Space & Lt.8, Rooftop', 10, 0, '', '', 0, 0, 'Lokal', '16.00 - 21.00 WIB', 'Shooting Dance Cover', 'DONE'),
(108, 'TALENT FILM MALANG', '-', '0003-07-23', 'Pelatihan Akting', '2023-03-12', 'Lt.3, Hotel Kapsul & Open Public Space (Menyesuaikan)', 25, 0, '', '', 0, 0, 'Lokal', '18.00 - 20.00 WIB', 'Pelatihan Akting', 'DONE'),
(109, 'BALAI DIKLAT INDUSTRI SURABAYA', '', '0000-00-00', 'Diklat Sosial Media Marketing', '2023-03-13', 'Lt.4, Lab. Komputer & Lt.3, Ruang Meeting', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Diklat Sosial Media Marketing', 'DONE'),
(110, 'CV ALPHA ROCKET NUSANTARA', '-', '0003-10-23', 'Meeting Evaluasi Project dengan Siswa Binaan', '2023-03-13', 'Lt.4, Co-Working Space 4', 6, 0, '', '', 0, 0, 'Lokal', '08.00 - 10.00 WIB', 'Meeting Evaluasi Project dengan Siswa Binaan', 'DONE'),
(111, 'UIN MAULANA MALIK IBRAHIM MALANG', '248/T.A/HM.00.6/03/2023', '0003-10-23', 'Observasi Arsitektual & Struktural Gedung MCC', '2023-03-13', 'Lt.5, Ruang Bioskop (Studio 2)', 86, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Observasi Arsitektual & Struktural Gedung MCC', 'DONE'),
(112, 'KOCHIRO', '-', '0003-07-23', 'Office Daily & Briefing Mingguan', '2023-03-13', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 18.00 WIB', 'Office Daily & Briefing Mingguan', 'DONE'),
(113, 'BANG BELI', '-', '0003-07-23', 'Kegiatan Onsite Magang Merdeka Bangbeli', '2023-03-13', 'Lt.5, Co-Working Space 1', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Kegiatan Onsite Magang Merdeka Bangbeli', 'DONE'),
(114, 'PT KREASI NGALAM MEDIA (ABOUTMALANG.COM)', '-', '0003-10-23', 'Aktivitas Redaksi About Malang', '2023-03-13', 'Lt.5, Co-Working Space 1', 7, 0, '', '', 0, 0, 'Lokal', '09.00 - 16.30 WIB', 'Aktivitas Redaksi About Malang', 'DONE'),
(115, 'ARTGORITMA', '-', '0001-02-23', 'Presenter Cilik & Acting ', '2023-03-13', 'Lt.3, Hotel Kapsul & Selasar Belakang', 100, 0, '', '', 0, 0, 'Lokal', '10.00 - 18.00 WIB', 'Presenter Cilik & Acting ', 'DONE'),
(116, 'NEOTONE CREATIVE ', '-', '0003-10-23', 'Neotone Working Hours', '2023-03-13', 'Lt.5, Area Open Public Space', 5, 0, '', '', 0, 0, 'Lokal', '10.00 - 17.00 WIB', 'Neotone Working Hours', 'DONE'),
(117, 'SMKN 3 MALANG', '421.5/169/101.6.10.13/2023', '0003-06-23', 'Foto Album', '2023-03-13', 'Lt.5, Area Open Public Space & Ruang Bioskop (Studio 1), Lt.8, Rooftop, Lt.4, Lab. Komputer, Lt.2, Tangga Depan MCC', 36, 0, '', '', 0, 0, 'Lokal', '13.00 - 15.00 WIB', 'Foto Album', 'DONE'),
(118, 'PT PAGAK TV', '-', '0000-00-00', 'Shooting Video Klip Sholawatan', '2023-03-13', 'Lt.2, Halaman Depan MCC & Lt.8, Rooftop', 6, 0, '', '', 0, 0, 'Lokal', '15.30 - 18.00 WIB', 'Shooting Video Klip Sholawatan', 'DONE'),
(119, 'TALENT FILM MALANG', '-', '0003-07-23', 'Pelatihan Akting', '2023-03-13', 'Lt.3, Hotel Kapsul & Open Public Space (Menyesuaikan)', 25, 0, '', '', 0, 0, 'Lokal', '18.00 - 20.00 WIB', 'Pelatihan Akting', 'DONE'),
(120, 'BALAI DIKLAT INDUSTRI SURABAYA', '', '0000-00-00', 'Diklat Sosial Media Marketing', '2023-03-14', 'Lt.4, Lab. Komputer ', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Diklat Sosial Media Marketing', 'DONE'),
(121, 'BALAI DIKLAT INDUSTRI SURABAYA', '', '0000-00-00', 'Diklat Sosial Media Marketing', '2023-03-14', 'Lt.3, Ruang Meeting', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Diklat Sosial Media Marketing', 'DONE'),
(122, 'D3 ADMINISTRASI NIAGA -  POLINEMA', '-', '0003-09-23', 'Observasi dan Pengenalan Fasilitas MCC', '2023-03-14', 'Lt.5, Ruang Bioskop (Studio 2)', 75, 0, '', '', 0, 0, 'Lokal', '09.00 - 11.00 WIB', 'Observasi dan Pengenalan Fasilitas MCC', 'DONE'),
(123, 'PT KREASI NGALAM MEDIA (ABOUTMALANG.COM)', '-', '0003-10-23', 'Aktivitas Redaksi About Malang', '2023-03-14', 'Lt.5, Co-Working Space 1', 7, 0, '', '', 0, 0, 'Lokal', '09.00 - 16.30 WIB', 'Aktivitas Redaksi About Malang', 'DONE'),
(124, 'BANG BELI', '-', '0003-07-23', 'Kegiatan Onsite Magang Merdeka Bangbeli', '2023-03-14', 'Lt.5, Co-Working Space 1', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Kegiatan Onsite Magang Merdeka Bangbeli', 'DONE'),
(125, 'DISKOPINDAG KOTA MALANG', '', '0000-00-00', 'KLINIK', '2023-03-14', 'Lt.3, Ruang Kelas', 30, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'KLINIK', 'CANCEL'),
(126, 'KOCHIRO', '-', '0003-07-23', 'Office Daily & Briefing Mingguan', '2023-03-14', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 18.00 WIB', 'Office Daily & Briefing Mingguan', 'DONE'),
(127, 'NEOTONE CREATIVE ', '-', '0003-10-23', 'Neotone Working Hours', '2023-03-14', 'Lt.5, Area Open Public Space', 5, 0, '', '', 0, 0, 'Lokal', '10.00 - 17.00 WIB', 'Neotone Working Hours', 'DONE'),
(128, 'ARTGORITMA', '-', '0001-02-23', 'Teenager Dance Competation', '2023-03-14', 'Lt.3, Hotel Kapsul & Selasar Belakang', 100, 0, '', '', 0, 0, 'Lokal', '10.00 - 18.00 WIB', 'Teenager Dance Competation', 'DONE'),
(129, 'TALENTA KIDS MALANG', '-', '0003-03-23', 'Kelas Public Speaking', '2023-03-14', 'Lt.4, Co-Working Space 4', 3, 0, '', '', 0, 0, 'Lokal', '11.00 - 15.00 WIB', 'Kelas Public Speaking', 'DONE'),
(130, 'KOMUNITAS CINTA BERKAIN INDONESIA', '-', '0000-00-00', 'Pertemuan Anggota Komunitas', '2023-03-14', 'Lt.6, Ruang Perpustakaan 2', 40, 0, '', '', 0, 0, 'Lokal', '13.00 - 15.00 WIB', 'Pertemuan Anggota Komunitas', 'DONE'),
(131, 'SMAN 3 MALANG', '13/08/GARKABHASU/II/2023', '0000-00-00', 'Creative Talent Competation Garkabhasu', '2023-03-14', 'Lt.5, Ruang Bioskop (Studio 1)', 230, 0, '', '', 0, 0, 'Lokal', '14.00 - 20.30 WIB', 'Creative Talent Competation Garkabhasu', 'DONE'),
(132, 'SOCIETO SINEKLUB - FISIP UB', '-', '0003-11-23', 'Pra-produksi Film Pendek', '2023-03-14', 'Lt.3, Ruang Kelas', 15, 0, '', '', 0, 0, 'Lokal', '17.00 - 21.00 WIB', 'Pra-produksi Film Pendek', 'DONE'),
(133, 'TALENT FILM MALANG', '-', '0003-07-23', 'Pelatihan Akting', '2023-03-14', 'Lt.3, Hotel Kapsul & Open Public Space (Menyesuaikan)', 25, 0, '', '', 0, 0, 'Lokal', '18.00 - 20.00 WIB', 'Pelatihan Akting', 'DONE'),
(134, 'CV ALPHA ROCKET NUSANTARA', '-', '0003-10-23', 'Meeting Evaluasi Project dengan Siswa Binaan', '2023-03-15', 'Lt.4, Co-Working Space 4', 6, 0, '', '', 0, 0, 'Lokal', '08.00 - 10.00 WIB', 'Meeting Evaluasi Project dengan Siswa Binaan', 'DONE'),
(135, 'GLAMAZING', '', '0000-00-00', 'Photoshoot Produk', '2023-03-15', 'Lt.5, Studio Foto', 11, 0, '', '', 0, 0, 'Lokal', '08.00 - 21.00 WIB', 'Photoshoot Produk', 'DONE'),
(136, 'MAFINDO', '-', '0003-03-23', 'Akademi Digital Lansia Tematik Youtube Wilayah Malang', '2023-03-15', 'Lt.3, Ruang Kelas', 20, 0, '', '', 0, 0, 'Lokal', '08.30 - 12.00 WIB', 'Akademi Digital Lansia Tematik Youtube Wilayah Malang', 'DONE'),
(137, 'MERCY CORPS INDONESIA', '024/MISC/MCI/III/2023', '0000-00-00', 'Pemberdayaan Perempuan Pengusaha Kecil dalam Inklusi Keuangan Digital', '2023-03-15', 'Lt.3, Ruang Meeting', 32, 0, '', '', 0, 0, 'Lokal', '08.30 - 17.00 WIB', 'Pemberdayaan Perempuan Pengusaha Kecil dalam Inklusi Keuangan Digital', 'DONE'),
(138, 'DISPORAPAR KOTA MALANG', '', '0000-00-00', '-', '2023-03-15', 'Lt.2 Main Hall MCC', 100, 0, '', '', 0, 0, 'Lokal', '09.00 WIB - selesai', '-', 'DONE'),
(139, 'DISKOPINDAG KOTA MALANG', '-', '0000-00-00', '-', '2023-03-15', 'Lt.4, Lab. Komputer', 30, 0, '', '', 0, 0, 'Lokal', '09.00 WIB - selesai', '-', 'DONE'),
(140, 'BANG BELI', '-', '0003-07-23', 'Kegiatan Onsite Magang Merdeka Bangbeli', '2023-03-15', 'Lt.5, Co-Working Space 1', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Kegiatan Onsite Magang Merdeka Bangbeli', 'DONE'),
(141, 'KOCHIRO', '-', '0003-07-23', 'Office Daily & Briefing Mingguan', '2023-03-15', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 18.00 WIB', 'Office Daily & Briefing Mingguan', 'DONE'),
(142, 'MALANG FEMALE MOTRET', '', '0000-00-00', 'Pelatihan Foto Produk', '2023-03-15', 'Lt.6, Ruang Perpustakaan 2', 70, 0, '', '', 0, 0, 'Lokal', '09.00 - 12.00  WIB', 'Pelatihan Foto Produk', 'DONE'),
(143, 'NEOTONE CREATIVE ', '-', '0003-10-23', 'Neotone Working Hours', '2023-03-15', 'Lt.5, Area Open Public Space', 5, 0, '', '', 0, 0, 'Lokal', '10.00 - 17.00 WIB', 'Neotone Working Hours', 'DONE'),
(144, 'ARTGORITMA', '-', '0001-02-23', 'Teenager Singing Competition ', '2023-03-15', 'Lt.3, Hotel Kapsul & Selasar Belakang', 100, 0, '', '', 0, 0, 'Lokal', '10.00 - 18.00 WIB', 'Teenager Singing Competition ', 'DONE'),
(145, 'TALENT FILM MALANG', '-', '0003-07-23', 'Pelatihan Akting', '2023-03-15', 'Lt.3, Hotel Kapsul & Open Public Space (Menyesuaikan)', 25, 0, '', '', 0, 0, 'Lokal', '18.00 - 20.00 WIB', 'Pelatihan Akting', 'DONE'),
(146, 'LET\'S PLAY INDONESIA', '-', '0003-10-23', '\"Let\'s Talk by Let\'s Play dengan Pelaku Industri Game yang bertema \"\"Perkembangan Industri Game, dan Potensi Industri Game\"\"\"', '2023-03-15', 'Lt.2, Ruang Podcast', 5, 0, '', '', 0, 0, 'Lokal', '18.00 - 20.00 WIB', '\"Let\'s Talk by Let\'s Play dengan Pelaku Industri Game yang bertema \"\"Perkembangan Industri Game, dan Potensi Industri Game\"\"\"', 'DONE'),
(147, 'MERCY CORPS INDONESIA', '024/MISC/MCI/III/2023', '0000-00-00', 'Pemberdayaan Perempuan Pengusaha Kecil dalam Inklusi Keuangan Digital', '2023-03-16', 'Lt.3, Ruang Meeting', 32, 0, '', '', 0, 0, 'Lokal', '08.30 - 17.00 WIB', 'Pemberdayaan Perempuan Pengusaha Kecil dalam Inklusi Keuangan Digital', 'DONE'),
(148, 'DISKOPINDAG KOTA MALANG', '-', '0000-00-00', 'KLINIK', '2023-03-16', 'Lt.3, Ruang Kelas', 30, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'KLINIK', 'DONE'),
(149, 'BANG BELI', '-', '0003-07-23', 'Kegiatan Onsite Magang Merdeka Bangbeli', '2023-03-16', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Kegiatan Onsite Magang Merdeka Bangbeli', 'DONE'),
(150, 'SOLUTIVE', '-', '0003-06-23', 'Workshop Pembuatan Konten', '2023-03-16', 'Lt.5, Co-Working Space 1', 6, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Workshop Pembuatan Konten', 'DONE'),
(151, 'KOCHIRO', '-', '0000-00-00', 'Office Daily & Progress MCC Komersial', '2023-03-16', 'Lt.4, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 18.00 WIB', 'Office Daily & Progress MCC Komersial', 'DONE'),
(152, 'DISKOPINDAG KOTA MALANG', '-', '0000-00-00', 'Diklatpim III', '2023-03-16', 'Lt.6, Ruang Perpustakaan 2', 20, 0, '', '', 0, 0, 'Lokal', '09.00 - 11.30 WIB', 'Diklatpim III', 'DONE'),
(153, 'NEOTONE CREATIVE ', '-', '0003-10-23', 'Neotone Working Hours', '0000-00-00', 'Lt.5, Area Open Public Space', 5, 0, '', '', 0, 0, 'Lokal', '10.00 - 17.00 WIB', 'Neotone Working Hours', 'DONE'),
(154, 'ARTGORITMA', '-', '0001-02-23', 'Pameran KEN KAYANA dan 20 Pelukis Malang', '2023-03-16', 'Lt.3, Hotel Kapsul & Selasar Belakang', 0, 200, '', '', 0, 0, 'Lokal', '10.00 - 18.00 WIB', 'Pameran KEN KAYANA dan 20 Pelukis Malang', 'DONE'),
(155, 'PT KREASI NGALAM MEDIA (ABOUTMALANG.COM)', '-', '0000-00-00', 'Workshop Kepenulisan SEO di Media Online ', '2023-03-16', 'Lt.6, Ruang Perpustakaan 2', 30, 0, '', '', 0, 0, 'Lokal', '12.00 - 18.00 WIB', 'Workshop Kepenulisan SEO di Media Online ', 'DONE'),
(156, 'DIGITAL SOLUTION GROUP', '-', '0000-00-00', 'Workshop Bisnis dan Implementasi Teknologi pada Microsoft Azure', '2023-03-16', 'Lt.5, Ruang Bioskop (Studio 2)', 100, 0, '', '', 0, 0, 'Lokal', '12.00 - 17.00 WIB', 'Workshop Bisnis dan Implementasi Teknologi pada Microsoft Azure', 'DONE'),
(157, 'INDIEKRAF INDONESIA', '-', '0003-10-23', 'Tax Talks #01 bersama Wajibpajak.id', '2023-03-16', 'Lt.4, Lab. Komputer', 40, 0, '', '', 0, 0, 'Lokal', '12.00 - 18.00 WIB', 'Tax Talks #01 bersama Wajibpajak.id', 'DONE'),
(158, 'UB RADIO', '02.001/UBR/I/2023', '0000-00-00', '\"Kegiatan Podcast \"\"Aspirasi Podcast\"\"\"', '2023-03-16', 'Lt.2, Ruang Podcast', 5, 0, '', '', 0, 0, 'Lokal', '13.00 - 15.00 WIB', '\"Kegiatan Podcast \"\"Aspirasi Podcast\"\"\"', 'DONE'),
(159, 'DINAS SOSIAL, PEMBERDAYAAN PEREMPUAN, PERLINDUNGAN ANAK, PENGENDALIAN PENDUDUK, DAN KELUARGA BERENCANA', '400/662/35.73.405/2023', '0000-00-00', 'Pemilihan Duta Generasi Berencana (GenRe)', '2023-03-16', 'Lt.7, Auditorium', 250, 0, '', '', 0, 0, 'Lokal', '15.00 WIB - selesai', 'Pemilihan Duta Generasi Berencana (GenRe)', 'DONE'),
(160, 'SMAN 3 MALANG', '13/08/GARKABHASU/II/2023', '0000-00-00', 'Creative Talent Competation Garkabhasu', '2023-03-16', 'Lt.5, Ruang Bioskop (Studio 1)', 230, 0, '', '', 0, 0, 'Lokal', '14.00 - 20.30 WIB', 'Creative Talent Competation Garkabhasu', 'DONE'),
(161, 'TEATER SAGALOKA', '-', '0003-11-23', 'Latihan Reguler Teater Sagaloka', '2023-03-16', 'Open Public Space (Lantai Tentatif)', 5, 0, '', '', 0, 0, 'Lokal', '17.00 - 21.00 WIB', 'Latihan Reguler Teater Sagaloka', 'DONE'),
(162, 'SOCIETO SINEKLUB', '-', '0000-00-00', 'Pra-produksi Film Pendek', '2023-03-16', 'Lt.3, Ruang Kelas', 15, 0, '', '', 0, 0, 'Lokal', '17.00 - 21.00 WIB', 'Pra-produksi Film Pendek', 'DONE'),
(163, 'TALENT FILM MALANG', '-', '0003-07-23', 'Pelatihan Akting', '2023-03-16', 'Lt.3, Hotel Kapsul & Open Public Space (Menyesuaikan)', 25, 0, '', '', 0, 0, 'Lokal', '18.00 - 20.00 WIB', 'Pelatihan Akting', 'DONE'),
(164, 'DAKO BRAND AND COMMUNICATION', '-', '0003-11-23', 'Sprint Review, Planning & Restropective', '2023-03-17', 'Lt.6, Ruang Perpustakaan 2', 20, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.00 WIB', 'Sprint Review, Planning & Restropective', 'DONE'),
(165, 'MERCY CORPS INDONESIA', '-', '0003-10-23', 'Pemberdayaan Perempuan Pengusaha Kecil dalam Inklusi Keuangan Digital', '2023-03-17', 'Lt.3, Ruang Meeting', 32, 0, '', '', 0, 0, 'Lokal', '08.30 - 16.00 WIB', 'Pemberdayaan Perempuan Pengusaha Kecil dalam Inklusi Keuangan Digital', 'DONE'),
(166, 'SEAL', '-', '0003-11-23', 'Workshop Desaign Thinking & Desain Sprint SIB SEAL AWS #4 Chapter Malang', '2023-03-17', 'Lt.3, Ruang Kelas', 25, 0, '', '', 0, 0, 'Lokal', '08.30 - 16.30 WIB', 'Workshop Desaign Thinking & Desain Sprint SIB SEAL AWS #4 Chapter Malang', 'DONE'),
(167, 'BANG BELI', '-', '0003-07-23', 'Kegiatan Onsite Magang Merdeka Bangbeli', '2023-03-17', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Kegiatan Onsite Magang Merdeka Bangbeli', 'DONE'),
(168, 'KOCHIRO', '-', '0000-00-00', 'Office Daily & Progress MCC Komersial', '2023-03-17', 'Lt.5, Co-Working Space 1', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 18.00 WIB', 'Office Daily & Progress MCC Komersial', 'DONE'),
(169, 'NEOTONE CREATIVE ', '-', '0003-10-23', 'Neotone Working Hours', '2023-03-17', 'Lt.5, Area Open Public Space', 5, 0, '', '', 0, 0, 'Lokal', '10.00 - 17.00 WIB', 'Neotone Working Hours', 'DONE'),
(170, 'ARTGORITMA', '-', '0001-02-23', 'Oldiest Show', '2023-03-17', 'Lt.3, Hotel Kapsul & Selasar Belakang', 100, 0, '', '', 0, 0, 'Lokal', '10.00 - 18.00 WIB', 'Oldiest Show', 'DONE'),
(171, 'IKISINEMAKER', '-', '0003-02-23', 'Shooting Film Pendek', '2023-03-17', 'Lt.8, Rofftop', 17, 0, '', '', 0, 0, 'Lokal', '13.00 - 17.00 WIB', 'Shooting Film Pendek', 'DONE'),
(172, 'FOCUS MODEL MANAGEMENT & ASOSIASI MODELING MALANG', '-', '0003-04-23', 'Fashion Parade & Lomba bertema Tahta Wastra Nusantara', '2023-03-17', 'Lt.7, Auditorium', 500, 0, '', '', 0, 0, 'Lokal', '14.00 - 21.00 WIB', 'Fashion Parade & Lomba bertema Tahta Wastra Nusantara', 'DONE'),
(173, 'SMAN 3 MALANG', '13/08/GARKABHASU/II/2023', '0000-00-00', 'Creative Talent Competation Garkabhasu', '2023-03-17', 'Lt.5, Ruang Bioskop (Studio 1)', 230, 0, '', '', 0, 0, 'Lokal', '14.00 - 20.30 WIB', 'Creative Talent Competation Garkabhasu', 'DONE'),
(174, 'BEM VOKASI UB', '--', '0000-00-00', 'Training Organisasi BEM Vokasi UB', '2023-03-17', 'Lt.5, Ruang Bioskop (Studio 2)', 100, 0, '', '', 0, 0, 'Lokal', '15.30 - 20.40 WIB', 'Training Organisasi BEM Vokasi UB', 'DONE'),
(175, 'TEATER SAGALOKA', '-', '0003-11-23', 'Latihan Reguler Teater Sagaloka', '2023-03-17', 'Open Public Space (Lantai Tentatif)', 5, 0, '', '', 0, 0, 'Lokal', '17.00 - 21.00 WIB', 'Latihan Reguler Teater Sagaloka', 'DONE'),
(176, 'SOCIETO SINEKLUB', '-', '0000-00-00', 'Pra-produksi Film Pendek', '2023-03-17', 'Lt.3, Ruang Kelas', 15, 0, '', '', 0, 0, 'Lokal', '17.00 - 21.00 WIB', 'Pra-produksi Film Pendek', 'DONE'),
(177, 'TALENT FILM MALANG', '-', '0003-07-23', 'Pelatihan Akting', '2023-03-17', 'Lt.3, Hotel Kapsul & Open Public Space (Menyesuaikan)', 25, 0, '', '', 0, 0, 'Lokal', '18.00 - 20.00 WIB', 'Pelatihan Akting', 'DONE'),
(178, 'PAGUYUBAN DUTA PARIWISATA JAWA TIMUR', '016/DPIJATIM/II/2023', '0000-00-00', 'Seleksi Wawancara dan Tes Tulis Duta Pariwisata', '2023-03-18', 'Lt.5, Ruang Bioskop (Studio 1) & Lt.3, Ruang Kelas', 150, 0, '', '', 0, 0, 'Lokal', '06.00 - 17.00 WIB', 'Seleksi Wawancara dan Tes Tulis Duta Pariwisata', 'DONE'),
(179, 'AL-BANJARI FEST', '-', '0000-00-00', 'Grand Final Finalis Festival Kreasi Al-Banjari', '2023-03-18', 'Lt.2, Hall MCC', 250, 0, '', '', 0, 0, 'Lokal', '07.00 - 18.00 WIB', 'Grand Final Finalis Festival Kreasi Al-Banjari', 'DONE'),
(180, 'CAPITOL DANCE', '-', '0000-00-00', 'Shooting Dance Video Project', '2023-03-18', 'Lt.5, Studio Foto, Lt.3, Salazar Belakang, Lt.8, Rooftop', 15, 0, '', '', 0, 0, 'Lokal', '08.00 - 12.00 WIB', 'Shooting Dance Video Project', 'DONE'),
(181, 'TALENT FILM MALANG', '-', '0003-07-23', 'Pelatihan Akting', '2023-03-18', 'Lt.3, Hotel Kapsul & Open Public Space (Menyesuaikan)', 25, 0, '', '', 0, 0, 'Lokal', '08.00 - 15.00 WIB', 'Pelatihan Akting', 'DONE'),
(182, 'HIPMI UNISMA', '07/HIPMI-PT-UNISMA/III/7354-7455/II/2023', '0003-06-23', 'Seminar Enterpreneurship', '2023-03-18', 'Lt.3, Ruang Meeting', 70, 0, '', '', 0, 0, 'Lokal', '08.00 - 13.00 WIB', 'Seminar Enterpreneurship', 'DONE'),
(183, 'BALAI DIKLAT INDUSTRI SURABAYA', '-', '0000-00-00', 'Diklat 3in1 Sosial Media Marketing Batch 2', '2023-03-18', 'Lt.4, Lab. Komputer', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Diklat 3in1 Sosial Media Marketing Batch 2', 'DONE'),
(184, 'RANGKUL', '02/RM/III/2023', '0003-04-23', 'Kegiatan Sesi Berbagi Cerita Pengasuhan', '2023-03-18', 'Lt.6, Ruang Perpustakaan 2', 20, 0, '', '', 0, 0, 'Lokal', '09.00 - 12.00 WIB', 'Kegiatan Sesi Berbagi Cerita Pengasuhan', 'DONE'),
(185, 'NEOTONE CREATIVE ', '-', '0003-10-23', 'Neotone Working Hours', '2023-03-18', 'Lt.5, Area Open Public Space', 5, 0, '', '', 0, 0, 'Lokal', '10.00 - 17.00 WIB', 'Neotone Working Hours', 'DONE'),
(186, 'ARTGORITMA', '-', '0001-02-23', 'Model Cilik & Singing Competation', '2023-03-18', 'Lt.3, Hotel Kapsul & Selasar Belakang', 100, 0, '', '', 0, 0, 'Lokal', '10.00 - 18.00 WIB', 'Model Cilik & Singing Competation', 'DONE'),
(187, 'RS31', '-', '0000-00-00', 'Shooting Video Konten', '2023-03-18', 'Lt.7, Selasar & Lt.8, Rooftop', 3, 0, '', '', 0, 0, 'Lokal', '10.30 - 12.30 WIB', 'Shooting Video Konten', 'DONE'),
(188, 'READ ALOUD MALANG RAYA', '-', '0000-00-00', 'Take Video Konten bertema Hari Dongeng Sedunia', '2023-03-18', 'Lt.5, Co-Working Space 4', 2, 0, '', '', 0, 0, 'Lokal', '13.30 - 18.00 WIB', 'Take Video Konten bertema Hari Dongeng Sedunia', 'DONE'),
(189, 'KOMUNITAS AVERROES', '-', '0000-00-00', 'Digital Transformation & Strengthening Resilience of SME\'s', '2023-03-18', 'Lt.3, Ruang Meeting', 40, 0, '', '', 0, 0, 'Lokal', '14.00 - 16.30 WIB', 'Digital Transformation & Strengthening Resilience of SME\'s', 'DONE'),
(190, 'IKISINEMAKER', '-', '0000-00-00', 'Shooting Film Pendek', '2023-03-18', 'Lt.8, Rooftop', 15, 0, '', '', 0, 0, 'Lokal', '15.00 - 18.00 WIB', 'Shooting Film Pendek', 'DONE'),
(191, 'NOL DERAJAT FILM UB', '031/SP/NDF-UB/II/2023', '0000-00-00', 'Screening Film Pendek', '2023-03-18', 'Lt.5, Ruang Bioskop (Studiop 2)', 60, 0, '', '', 0, 0, 'Lokal', '16.00 - 21.00 WIB', 'Screening Film Pendek', 'DONE'),
(192, 'TEATER SAGALOKA', '-', '0003-11-23', 'Latihan Reguler Teater Sagaloka', '2023-03-18', 'Open Public Space (Lantai Tentatif)', 5, 0, '', '', 0, 0, 'Lokal', '17.00 - 21.00 WIB', 'Latihan Reguler Teater Sagaloka', 'DONE'),
(193, 'BALAI DIKLAT INDUSTRI SURABAYA', '-', '0000-00-00', 'Diklat 3in1 Sosial Media Marketing Batch 2', '2023-03-19', 'Lt.4, Lab. Komputer', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Diklat 3in1 Sosial Media Marketing Batch 2', 'DONE'),
(194, 'TALENT FILM MALANG', '-', '0003-07-23', 'Pelatihan Akting', '2023-03-19', 'Lt.3, Hotel Kapsul & Open Public Space (Menyesuaikan)', 25, 0, '', '', 0, 0, 'Lokal', '08.00 - 15.00 WIB', 'Pelatihan Akting', 'DONE'),
(195, 'UNIVERSITAS BRAWIJAYA', '-', '0000-00-00', 'Pelatihan EO & Diskusi Pengembangan Desa Wisata ', '2023-03-19', 'Lt.6, Ruang Perpustakaan 2', 25, 0, '', '', 0, 0, 'Lokal', '09.00 - 13.00 WIB', 'Pelatihan EO & Diskusi Pengembangan Desa Wisata ', 'DONE'),
(196, 'PT RAHMAT SEJAHTERA', '-', '0003-12-23', 'Internal Refreshment Anggota Security MCC', '2023-03-19', 'Lt.3, Ruang Meeting', 15, 0, '', '', 0, 0, 'Lokal', '09.00 - 11.00 WIB', 'Internal Refreshment Anggota Security MCC', 'DONE'),
(197, 'KOMUNITAS AKAR TULI MALANG', '-', '0003-06-23', 'Seminar dengan Tema Etika Dasar Presentasi dan Persiapan Materi', '2023-03-19', 'Lt.3, Ruang Kelas', 40, 0, '', '', 0, 0, 'Lokal', '09.00 - 12.00 WIB', 'Seminar dengan Tema Etika Dasar Presentasi dan Persiapan Materi', 'DONE'),
(198, 'NEOTONE CREATIVE ', '-', '0003-10-23', 'Neotone Working Hours', '2023-03-19', 'Lt.5, Area Open Public Space', 5, 0, '', '', 0, 0, 'Lokal', '10.00 - 17.00 WIB', 'Neotone Working Hours', 'DONE'),
(199, 'ARTGORITMA', '-', '0001-02-23', 'Kids Activity', '2023-03-19', 'Lt.3, Hotel Kapsul & Selasar Belakang', 100, 0, '', '', 0, 0, 'Lokal', '10.00 - 18.00 WIB', 'Kids Activity', 'DONE'),
(200, 'MAIN EC', '', '0003-03-23', '\"Meeting Mingguan English Club \"\"English for All Pupose\"\"\"', '2023-03-19', 'Lt.5, Area Bean Bag', 10, 0, '', '', 0, 0, 'Lokal', '13.00 - 16.00 WIB', '\"Meeting Mingguan English Club \"\"English for All Pupose\"\"\"', 'DONE'),
(201, 'GUYUB FILM MALANG RAYA', '-', '0003-12-23', 'Pemutaran Film, Talkshow, dan Diskusi dalam Rangka Satu Dekade Film Malang Raya', '2023-03-19', 'Lt.5, Ruang Bioskop (Studio 2)', 250, 1000, '', '', 0, 0, 'Lokal', '13.00 - 21.00 WIB', 'Pemutaran Film, Talkshow, dan Diskusi dalam Rangka Satu Dekade Film Malang Raya', 'DONE'),
(202, 'ATHENA MODEL AGENCY', '-', '0003-06-23', 'Pelatihan Modeling Catwalk', '2023-03-19', 'Lt.5, Studio Foto', 30, 0, '', '', 0, 0, 'Lokal', '14.30 - 19.00 WIB', 'Pelatihan Modeling Catwalk', 'DONE'),
(203, 'NUSANTARA CULTURE ACADEMY', '-', '0003-12-23', 'Pertemuan Internal Kepengurusan NCA', '2023-03-19', 'Lt.5, Co-Working Space 1', 12, 0, '', '', 0, 0, 'Lokal', '16.00 - 20.00 WIB', 'Pertemuan Internal Kepengurusan NCA', 'DONE'),
(204, 'TEATER SAGALOKA', '-', '0003-11-23', 'Latihan Reguler Teater Sagaloka', '2023-03-19', 'Open Public Space (Lantai Tentatif)', 5, 0, '', '', 0, 0, 'Lokal', '17.00 - 21.00 WIB', 'Latihan Reguler Teater Sagaloka', 'DONE'),
(205, 'BALAI DIKLAT INDUSTRI SURABAYA', '-', '0000-00-00', 'Diklat 3in1 Sosial Media Marketing Batch 2', '2023-03-20', 'Lt.4, Lab. Komputer', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Diklat 3in1 Sosial Media Marketing Batch 2', 'DONE'),
(206, 'PT KREASI NGALAM MEDIA (ABOUTMALANG.COM)', '-', '0000-00-00', 'Aktivitas Redaksi AboutMalang', '2023-03-20', 'Lt.4, Co-Working Space 4', 5, 0, '', '', 0, 0, 'Lokal', '08.00 - 14.00 WIB', 'Aktivitas Redaksi AboutMalang', 'DONE'),
(207, 'MENGERTI.ID', '-', '0000-00-00', 'Meeting Persiapan Konten Ramadan', '2023-03-20', 'Lt.5, Co-Working Space 1', 10, 0, '', '', 0, 0, 'Lokal', '08.30 - 17.00 WIB', 'Meeting Persiapn Konten Ramadan', 'DONE'),
(208, 'KOCHIRO', '-', '0000-00-00', 'Office Daily & Progress MCC Komersial', '2023-03-20', 'Lt.3, Ruang Meeting', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'Office Daily & Progress MCC Komersial', 'DONE'),
(209, 'BANG BELI', '-', '0003-12-23', 'Kegiatan Onsite Magang Merdeka', '2023-03-20', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Kegiatan Onsite Magang Merdeka', 'DONE'),
(210, 'UPT MTROLOGI LEGAL DISKOPINDAG', '-', '0003-09-23', 'Edukasi BDKT (Barang Dalam Keadaan Terbungkus)', '2023-03-20', 'Lt.3, Ruang Kelas', 30, 0, '', '', 0, 0, 'Lokal', '10.00 - 15.00 WIB', 'Edukasi BDKT (Barang Dalam Keadaan Terbungkus)', 'DONE'),
(211, 'NEOTONE CREATIVE ', '-', '0003-10-23', 'Neotone Working Hours', '2023-03-20', 'Lt.5, Area Open Public Space', 5, 0, '', '', 0, 0, 'Lokal', '10.00 - 17.00 WIB', 'Neotone Working Hours', 'DONE'),
(212, 'GUYUB FILM MALANG RAYA', '-', '0003-12-23', 'Pemutaran Film, Talkshow, dan Diskusi dalam Rangka Satu Dekade Film Malang Raya', '2023-03-20', 'Lt.5, Ruang Bioskop (Studio 2)', 250, 1000, '', '', 0, 0, 'Lokal', '13.00 - 21.00 WIB', 'Pemutaran Film, Talkshow, dan Diskusi dalam Rangka Satu Dekade Film Malang Raya', 'DONE'),
(213, 'UNIVERSITAS BRAWIJAYA', '-', '0000-00-00', 'Kuliah Sistem Inovasi dan Daya Saing Pariwisata ', '2023-03-20', 'Lt.6, Ruang Perpustakaan 2', 100, 0, '', '', 0, 0, 'Lokal', '15.00 - 20.30 WIB', 'Kuliah Sistem Inovasi dan Daya Saing Pariwisata ', 'DONE');
INSERT INTO `event1` (`no`, `nama_organisasi`, `no_surat`, `tanggal_surat`, `judul_kegiatan`, `tanggal_pelaksanaan`, `lokasi_ruangan`, `jumlah_peserta`, `potensi_pengenjung`, `sd_pukul`, `ruangan`, `jml_peserta`, `potensi_pengunjung`, `skala_kegiatan`, `durasi_kegiatan`, `rincian_kegiatan`, `ket`) VALUES
(214, 'TEATER SAGALOKA', '-', '0003-11-23', 'Latihan Reguler Teater Sagaloka', '2023-03-20', 'Open Public Space (Lantai Tentatif)', 5, 0, '', '', 0, 0, 'Lokal', '17.00 - 21.00 WIB', 'Latihan Reguler Teater Sagaloka', 'DONE'),
(215, 'BALAI DIKLAT INDUSTRI SURABAYA', '-', '0000-00-00', 'Diklat 3in1 Sosial Media Marketing Batch 2', '2023-03-21', 'Lt.4, Lab. Komputer', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Diklat 3in1 Sosial Media Marketing Batch 2', 'DONE'),
(216, 'KOCHIRO', '-', '0000-00-00', 'Office Daily & Progress MCC Komersial', '2023-03-21', 'Lt.5, Co-Working Space 1', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'Office Daily & Progress MCC Komersial', 'DONE'),
(217, 'BANG BELI', '-', '0003-12-23', 'Kegiatan Onsite Magang Merdeka', '2023-03-21', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Kegiatan Onsite Magang Merdeka', 'DONE'),
(218, 'DISKOPINDAG KOTA MALANG', '-', '0000-00-00', 'KLINIK', '2023-03-21', 'Lt.3, Ruang Kelas', 30, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'KLINIK', 'CANCEL'),
(219, 'NEOTONE CREATIVE ', '-', '0003-10-23', 'Neotone Working Hours', '2023-03-21', 'Lt.5, Area Open Public Space', 5, 0, '', '', 0, 0, 'Lokal', '10.00 - 17.00 WIB', 'Neotone Working Hours', 'DONE'),
(220, 'UPT METROLOGI LEGAL DISKOPINDAG', '-', '0003-09-23', 'Edukasi BDKT (Barang Dalam Keadaan Terbungkus)', '2023-03-21', 'Lt.3, Ruang Meeting', 30, 0, '', '', 0, 0, 'Lokal', '10.00 - 15.00 WIB', 'Edukasi BDKT (Barang Dalam Keadaan Terbungkus)', 'DONE'),
(221, 'TALENTA KIDS MALANG', '-', '0003-03-23', 'Kelas Public Speaking', '2023-03-21', 'Lt.4, Co-Working Space 4', 3, 0, '', '', 0, 0, 'Lokal', '11.00 - 15.00 WIB', 'Kelas Public Speaking', 'DONE'),
(222, 'DISKOPINDAG KOTA MALANG', '-', '0000-00-00', 'Business Matching UMKM', '2023-03-21', 'Lt.3, Hotel Kapsul', 30, 0, '', '', 0, 0, 'Lokal', '13.00 WIB - selesai', 'Business Matching UMKM', 'DONE'),
(223, 'SATU PROJECT EVENT', '-', '0000-00-00', 'Meeting Internal', '2023-03-21', 'Lt.5, Co-Working Space 1', 15, 0, '', '', 0, 0, 'Lokal', '19.00 - 21.00 WIB', 'Meeting Internal', 'DONE'),
(224, 'BALAI DIKLAT INDUSTRI SURABAYA', '-', '0000-00-00', 'Diklat 3in1 Sosial Media Marketing Batch 2', '2023-03-22', 'Lt.4, Lab. Komputer', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Diklat 3in1 Sosial Media Marketing Batch 2', 'CANCEL'),
(225, 'KOCHIRO', '-', '0000-00-00', 'Office Daily & Progress MCC Komersial', '2023-03-22', 'Lt.4, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'Office Daily & Progress MCC Komersial', 'DONE'),
(226, 'BANG BELI', '-', '0003-12-23', 'Kegiatan Onsite Magang Merdeka', '2023-03-22', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Kegiatan Onsite Magang Merdeka', 'CANCEL'),
(227, 'HIMAPRO SASTRA JEPANG - UB', '-', '0003-10-23', 'FGD & Team Building', '2023-03-22', 'Lt.5, Ruang Bioskop (Studio 1)', 67, 0, '', '', 0, 0, 'Lokal', '09.00 - 19.00 WIB', 'FGD & Team Building', 'DONE'),
(228, 'TALENT FILM MALANG', '-', '0000-00-00', 'Pelatihan Akting', '2023-03-22', 'Lt.3, Hotel Kapsul', 25, 0, '', '', 0, 0, 'Lokal', '09.00 - 15.00 WIB', 'Pelatihan Akting', 'DONE'),
(229, 'HIMPUNAN MAHASISWA PROGRAM STUDI ILMU PERPUSTAKAAN (FIA UB)', '4137/UN10.F03.03/KM/2023', '0000-00-00', '\"\"\"King of Nongkrong\"\" dengan tema Selaraskan Rasa, Wujudkan Cita\"', '2023-03-22', 'Lt.2, Ruang Podcast', 7, 0, '', '', 0, 0, 'Lokal', '10.00 - 14.00 WIB', '\"\"\"King of Nongkrong\"\" dengan tema Selaraskan Rasa, Wujudkan Cita\"', 'DONE'),
(230, 'NEOTONE CREATIVE ', '-', '0003-10-23', 'Neotone Working Hours', '2023-03-22', 'Lt.5, Area Open Public Space', 5, 0, '', '', 0, 0, 'Lokal', '10.00 - 17.00 WIB', 'Neotone Working Hours', 'DONE'),
(231, 'TALENTA KIDS MALANG', '-', '0003-03-23', 'Kelas Public Speaking', '2023-03-22', 'Lt.5, Co-Working Space 1', 10, 0, '', '', 0, 0, 'Lokal', '11.00 - 15.00 WIB', 'Kelas Public Speaking', 'DONE'),
(232, 'LET\'S PLAY INDONESIA', '-', '0003-10-23', '\"Let\'s Talk by Let\'s Play dengan Pelaku Industri Game yang bertema \"\"Perkembangan Industri Game, dan Potensi Industri Game\"\"\"', '2023-03-22', 'Lt.2, Ruang Podcast', 5, 0, '', '', 0, 0, 'Lokal', '18.00 - 20.00 WIB', '\"Let\'s Talk by Let\'s Play dengan Pelaku Industri Game yang bertema \"\"Perkembangan Industri Game, dan Potensi Industri Game\"\"\"', 'DONE'),
(233, 'BALAI DIKLAT INDUSTRI SURABAYA', '-', '0000-00-00', 'Diklat 3in1 Sosial Media Marketing Batch 2', '2023-03-23', 'Lt.4, Lab. Komputer', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Diklat 3in1 Sosial Media Marketing Batch 2', 'RESCHEDULE'),
(234, 'DISKOPINDAG KOTA MALANG', '-', '0000-00-00', 'KLINIK', '2023-03-23', 'Lt.3, Ruang Kelas', 30, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'KLINIK', 'CANCEL'),
(235, 'KOCHIRO', '-', '0000-00-00', 'Office Daily & Progress MCC Komersial', '2023-03-23', 'Lt.3, Ruang Meeting', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'Office Daily & Progress MCC Komersial', 'DONE'),
(236, 'PT HOMPIMPA MAHAKARYA NUSANTARA ', '-', '0000-00-00', 'Project Meeting', '2023-03-23', 'Lt.5, Co-Working Space 4', 6, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Project Meeting', 'DONE'),
(237, 'SOLUTIVE', '-', '0003-06-23', 'Workshop Pembuatan Konten', '2023-03-23', 'Lt.4, Co-Working Space 4', 6, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Workshop Pembuatan Konten', 'DONE'),
(238, 'NEOTONE CREATIVE ', '-', '0003-10-23', 'Neotone Working Hours', '2023-03-23', 'Lt.5, Area Open Public Space', 5, 0, '', '', 0, 0, 'Lokal', '10.00 - 17.00 WIB', 'Neotone Working Hours', 'DONE'),
(239, 'TALENTA KIDS MALANG', '-', '0003-03-23', 'Kelas Public Speaking', '2023-03-23', 'Lt.4, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '10.00 - 15.00 WIB', 'Kelas Public Speaking', 'DONE'),
(240, 'UB RADIO', '02.001/UBR/I/2023', '0000-00-00', '\"Kegiatan Podcast \"\"Aspirasi Podcast\"\"\"', '2023-03-23', 'Lt.2, Ruang Podcast', 5, 0, '', '', 0, 0, 'Lokal', '13.00 - 14.00 WIB', '\"Kegiatan Podcast \"\"Aspirasi Podcast\"\"\"', 'CANCEL'),
(241, 'BALAI DIKLAT INDUSTRI SURABAYA', '-', '0000-00-00', 'Diklat 3in1 Sosial Media Marketing Batch 2', '2023-03-24', 'Lt.4, Lab. Komputer', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Diklat 3in1 Sosial Media Marketing Batch 2', 'DONE'),
(242, 'QIRANA PROJECT', '-', '0000-00-00', 'Public Speaking for Kids', '2023-03-24', 'Lt.4, Co-Working Space 4', 7, 0, '', '', 0, 0, 'Lokal', '08.00 - 13.00 WIB', 'Public Speaking for Kids', 'DONE'),
(243, 'BANG BELI', '-', '0000-00-00', 'Kegiatan Onsite Magang Merdeka', '2023-03-24', 'Lt.5, Co-Working Space 1', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Kegiatan Onsite Magang Merdeka', 'DONE'),
(244, 'KOCHIRO', '-', '0000-00-00', 'Office Daily & Progress MCC Komersial', '2023-03-24', 'Lt.6, Supermarket', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'Office Daily & Progress MCC Komersial', 'DONE'),
(245, 'PT HOMPIMPA MAHAKARYA NUSANTARA ', '-', '0000-00-00', 'Project Meeting', '2023-03-24', 'Lt.5, Co-Working Space 4', 6, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Project Meeting', 'DONE'),
(246, 'DISKOPINDAG KOTA MALANG', '-', '0000-00-00', 'KLINIK', '2023-03-24', 'Lt.3, Ruang Kelas', 30, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'KLINIK', 'CANCEL'),
(247, 'NEOTONE CREATIVE ', '-', '0003-10-23', 'Neotone Working Hours', '2023-03-24', 'Lt.5, Area Open Public Space', 5, 0, '', '', 0, 0, 'Lokal', '10.00 - 17.00 WIB', 'Neotone Working Hours', 'DONE'),
(248, 'TALENTA KIDS MALANG', '-', '0003-03-23', 'Kelas Public Speaking', '2023-03-24', 'Lt.5, Studio Foto', 10, 0, '', '', 0, 0, 'Lokal', '11.00 - 15.00 WIB', 'Kelas Public Speaking', 'CANCEL'),
(249, 'OSIS/PK SMAN 3 MALANG', '-', '0003-11-23', 'Festival Bahasa & Sastra SMANTI (FBSS)', '2023-03-25', 'Lt.5, Ruang Bioskop (Studio 1)', 75, 0, '', '', 0, 0, 'Lokal', '07.00 - 20.00 WIB', 'Festival Bahasa & Sastra SMANTI (FBSS)', 'CANCEL'),
(250, 'SRE UB', '-', '0000-00-00', 'FGD & Pelatihan SRE', '2023-03-25', 'Lt.3, Ruang Kelas', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 15.15 WIB', 'FGD & Pelatihan SRE', 'DONE'),
(251, 'BALAI DIKLAT INDUSTRI SURABAYA', '-', '0000-00-00', 'Diklat 3in1 Sosial Media Marketing Batch 2', '2023-03-25', 'Lt.4, Lab. Komputer', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Diklat 3in1 Sosial Media Marketing Batch 2', 'DONE'),
(252, 'KOMUNITAS AKAR TULI MALANG', '-', '0000-00-00', 'Kelas Bahasa Isyarat', '2023-03-25', 'Lt.3, Ruang Meeting', 50, 0, '', '', 0, 0, 'Lokal', '09.00 - 15.00 WIB', 'Kelas Bahasa Isyarat', 'DONE'),
(253, 'NEOTONE CREATIVE ', '-', '0003-10-23', 'Neotone Working Hours', '2023-03-25', 'Lt.5, Area Open Public Space', 5, 0, '', '', 0, 0, 'Lokal', '10.00 - 17.00 WIB', 'Neotone Working Hours', 'DONE'),
(254, 'HUMANISTIK FAKULTAS ILMU ADMINISTRASI UNIVERSITAS BRAWIJAYA', '-', '0000-00-00', '\"TANAM (Talk About Administration) dengan tema \"\"Membangun Karakter Mahasiswa melalui Transparansi Kinerja\"\"\"', '2023-03-25', 'Lt.2, Ruang Bioskop (Studio 2)', 120, 0, '', '', 0, 0, 'Lokal', '11.30 - 17.00 WIB', '\"TANAM (Talk About Administration) dengan tema \"\"Membangun Karakter Mahasiswa melalui Transparansi Kinerja\"\"\"', 'DONE'),
(255, 'BALAI DIKLAT INDUSTRI SURABAYA', '-', '0000-00-00', 'Diklat 3in1 Sosial Media Marketing Batch 2', '2023-03-26', 'Lt.4, Lab. Komputer', 50, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.30 WIB', 'Diklat 3in1 Sosial Media Marketing Batch 2', 'DONE'),
(256, 'KAMI FOUNDATION', '-', '0000-00-00', 'Open Talent - Tjorak Sorai 2023', '2023-03-26', 'Lt.6, Ruang Perpustakaan 2', 20, 0, '', '', 0, 0, 'Lokal', '09.00 - 16.00 WIB', 'Open Talent - Tjorak Sorai 2023', 'DONE'),
(257, 'ASOSIASI PENGUSAHA & PENGRAJIN BATIK KOTA MALANG', '1/B/APPBKM/2/2023', '0000-00-00', 'Diskusi Bedah Desain Batik Malang', '2023-03-26', 'Lt.3, Ruang Kelas', 35, 0, '', '', 0, 0, 'Lokal', '10.00 - 12.00 WIB', 'Diskusi Bedah Desain Batik Malang', 'DONE'),
(258, 'NEOTONE CREATIVE ', '-', '0003-10-23', 'Neotone Working Hours', '2023-03-26', 'Lt.5, Area Open Public Space', 5, 0, '', '', 0, 0, 'Lokal', '10.00 - 17.00 WIB', 'Neotone Working Hours', 'DONE'),
(259, 'MAIN EC', '', '0003-03-23', '\"Meeting Mingguan English Club \"\" English for All Purpose \"\"\"', '2023-03-26', 'Lt.5, Area Bean Bag', 10, 0, '', '', 0, 0, 'Lokal', '13.00 - 16.00 WIB', '\"Meeting Mingguan English Club \"\" English for All Purpose \"\"\"', 'DONE'),
(260, 'UKM BAND BINUS UNIVERSITY', '-', '0003-10-23', 'FGD Musik & Team Building UKM Band Binus University', '2023-03-26', 'Lt.3, Ruang Kelas', 45, 0, '', '', 0, 0, 'Lokal', '13.00 - 17.00 WIB', 'FGD Musik & Team Building UKM Band Binus University', 'DONE'),
(261, 'SBSQUAD', '-', '0000-00-00', 'Photoshoot K-Pop Dance Cover', '2023-03-26', 'Lt.8, Rooftop', 12, 0, '', '', 0, 0, 'Lokal', '16.00 - 20.00 WIB', 'Pengambilan Foto Teaser Talent SBSQUAD untuk Konten Instagram', 'DONE'),
(262, 'KOMUNITAS AKAR TULI MALANG', '-', '0000-00-00', 'Kelas Bahasa Isyarat', '2023-03-27', 'Lt.3, Ruang Kelas', 9, 0, '', '', 0, 0, 'Lokal', '09.00 - 11.00 WIB', 'Kelas Bahasa Isyarat', 'DONE'),
(263, 'BANG BELI', '-', '0000-00-00', 'Kegiatan Onsite Magang Merdeka', '2023-03-27', 'Lt.5, Co-Working Space 1', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Kegiatan Onsite Magang Merdeka', 'DONE'),
(264, 'DINAS LINGKUNGAN HIDUP KOTA MALANG', '-', '0000-00-00', 'Diskusi Rapat NA Ranperda', '2023-03-27', 'Lt.2, Podcast', 4, 0, '', '', 0, 0, 'Lokal', '09.00 - 11.00 WIB', 'Diskusi pembahasan NA Ranperda Perijinan Berbasis OSS', 'DONE'),
(265, 'PT HOMPIMPA MAHAKARYA NUSANTARA ', '-', '0000-00-00', 'Project Meeting', '2023-03-27', 'Lt.5, Co-Working Space 4', 6, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Project Meeting', 'DONE'),
(266, 'CHAKA CREATIVE STUDIO', '-', '0000-00-00', 'Internal Framework Meeting', '2023-03-27', 'Lt. 4, Co-Working Space 4', 4, 0, '', '', 0, 0, 'Lokal', '10.00 - 16.00 WIB', 'Internal Framework Meeting', 'DONE'),
(267, '', '', '0000-00-00', '', '2023-03-27', 'Lt.3, Ruang Kelas', 0, 0, '', '', 0, 0, 'Lokal', '', '', 'RESCHEDULE 4 APRIL 2'),
(268, 'BADAN PERENCANAAN PEMBANGUNAN  DAERAH (BAPPEDA) KOTA MALANG', '-', '0000-00-00', 'Kegiatan Desk/Verifikasi terhadap Hasil Rancangan Akhir Rencana Strategis Perangkat Daerah Tahun 2024 - 2026', '2023-03-28', 'Lt.7, Auditorium', 170, 0, '', '', 0, 0, 'Lokal', '08.00 WIB - selesai', 'Kegiatan Desk/Verifikasi terhadap Hasil Rancangan Akhir Rencana Strategis Perangkat Daerah Tahun 2024 - 2026', 'DONE'),
(269, 'PT KREASI NGALAM MEDIA (ABOUTMALANG.COM)', '-', '0000-00-00', 'Aktivitas Redaksi About Malang', '2023-03-28', 'Lt.3, Ruang Meeting', 5, 0, '', '', 0, 0, 'Lokal', '08.00 - 14.00 WIB', 'Aktivitas Redaksi About Malang', 'DONE'),
(270, 'DISKOPINDAG KOTA MALANG', '-', '0000-00-00', 'KLINIK', '2023-03-28', 'Lt.3, Ruang Kelas', 30, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'KLINIK', 'DONE'),
(271, 'PELANUSA', '-', '0000-00-00', 'Pelatihan Menjahit', '2023-03-28', 'Lt.5, Ruang Fashion', 15, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'Pelatihan Menjahit', 'DONE'),
(272, 'BANG BELI', '-', '0000-00-00', 'Kegiatan Onsite Magang Merdeka', '2023-03-28', 'Lt.5, Co-Working Space 1', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Kegiatan Onsite Magang Merdeka', 'DONE'),
(273, 'PT HOMPIMPA MAHAKARYA NUSANTARA ', '-', '0000-00-00', 'Project Meeting', '2023-03-28', 'Lt.5, Co-Working Space 4', 6, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Project Meeting', 'DONE'),
(274, 'BATIK APOZHE (ANGGOTA APPBI MALANG)', '-', '0000-00-00', 'Tahap Awal Proses Produksi Batik', '2023-03-28', 'Lt.4, Depan Ruang Kriya', 4, 0, '', '', 0, 0, 'Lokal', '10.00 - 16.00 WIB', 'Menggambar Pola Batik di Kain Besar sebagai Tahap Awal Proses Produksi Batik', 'DONE'),
(275, 'TALENTA KIDS MALANG', '-', '0003-03-23', 'Kelas Public Speaking', '2023-03-28', 'Lt.4, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '15.00 - 18.00 WIB', 'Kelas Public Speaking', 'DONE'),
(276, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '0003-09-23', 'Pelatihan Akting', '2023-03-28', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'DONE'),
(277, 'BADAN PERENCANAAN PEMBANGUNAN  DAERAH (BAPPEDA) KOTA MALANG', '-', '0000-00-00', 'Kegiatan Desk/Verifikasi terhadap Hasil Rancangan Akhir Rencana Strategis Perangkat Daerah Tahun 2024 - 2026', '2023-03-29', 'Lt.7, Auditorium', 170, 0, '', '', 0, 0, 'Lokal', '08.00 WIB - selesai', 'Kegiatan Desk/Verifikasi terhadap Hasil Rancangan Akhir Rencana Strategis Perangkat Daerah Tahun 2024 - 2026', 'FIX'),
(278, 'PT KREASI NGALAM MEDIA (ABOUTMALANG.COM)', '-', '0000-00-00', 'Aktivitas Redaksi About Malang', '2023-03-29', 'Lt.4, Co-Working Space 4', 5, 0, '', '', 0, 0, 'Lokal', '08.00 - 14.00 WIB', 'Aktivitas Redaksi About Malang', 'FIX'),
(279, 'BANG BELI', '-', '0000-00-00', 'Kegiatan Onsite Magang Merdeka', '2023-03-29', 'Lt.5, Co-Working Space 1', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Kegiatan Onsite Magang Merdeka', 'FIX'),
(280, 'KOMUNITAS AKAR TULI MALANG', '-', '0000-00-00', 'Kelas Bahasa Isyarat', '2023-03-29', 'Lt.3, Ruang Meeting', 15, 0, '', '', 0, 0, 'Lokal', '09.00 - 11.00 WIB', 'Kelas Bahasa Isyarat', 'FIX'),
(281, 'PASSANG ORNAMEN', '-', '0000-00-00', 'Meeting Internal ', '2023-03-29', 'Lt.5, Co-Working Space 4', 8, 0, '', '', 0, 0, 'Lokal', '13.00 - 17.00 WIB', 'Kegiatan Rapat Mingguan, Koordinasi Proyek dan Evaluasi Proyek', 'FIX'),
(282, 'KAMMI  MALANG', '019/PH/C/KU-e/14.PD-2/KAMMI/III/2023', '0000-00-00', 'Semarak Ramadhan PD KAMMI MALANG 2023', '2023-03-29', 'Lt.5, Ruang Bioskop (Studio 1)', 80, 0, '', '', 0, 0, 'Lokal', '14.00 - 18.15 WIB', 'Gathering Anggota KAMMI antar Kampus se-Kota Malang', 'FIX'),
(283, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '0003-09-23', 'Pelatihan Akting', '2023-03-29', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(284, 'SATU PROJECT EVENT PRODUCTION', '-', '0000-00-00', 'Meeting Internal ', '2023-03-29', 'Lt.3, Ruang Kelas', 17, 0, '', '', 0, 0, 'Lokal', '16.00 - 19.00 WIB', 'Meeting Internal', 'FIX'),
(285, 'LET\'S PLAY INDONESIA', '-', '0003-10-23', '\"\"\"Let\'s Talk\"\" by Let\'s Play\"', '2023-03-29', 'Lt.2, Ruang Podcast', 5, 0, '', '', 0, 0, 'Lokal', '18.00 - 20.00 WIB', '\"Let\'s Talk by Let\'s Play dengan Pelaku Industri Game yang bertema \"\"Perkembangan Industri Game, dan Potensi Industri Game\"\"\"', 'FIX'),
(286, 'BANG BELI', '-', '0000-00-00', 'Kegiatan Onsite Magang Merdeka', '2023-03-30', 'Lt.6, Ruang Perpustakaan 2', 10, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.00 WIB', 'Kegiatan Onsite Magang Merdeka', 'FIX'),
(287, 'INDIGO SMPN 14 MALANG', '-', '0000-00-00', 'Podcast Indigo', '2023-03-30', 'Lt.2, Ruang Podcast', 10, 0, '', '', 0, 0, 'Lokal', '08.30 - 13.00 WIB', 'Pengembangan Bakat & Minat melalui Kegiatan Recording Podcast', 'FIX'),
(288, 'DISKOPINDAG KOTA MALANG', '-', '0000-00-00', 'KLINIK', '2023-03-30', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'KLINIK', 'FIX'),
(289, 'SOLUTIVE', '-', '0003-06-23', 'Workshop Pembuatan Konten', '2023-03-30', 'Lt.5, Co-Working Space 1', 6, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Workshop Pembuatan Konten', 'FIX'),
(290, 'KOMUNITAS AKAR TULI MALANG', '-', '0000-00-00', 'Kelas Bahasa Isyarat', '2023-03-30', 'Lt.3, Ruang Meeting', 15, 0, '', '', 0, 0, 'Lokal', '09.00 - 11.00 WIB', 'Kelas Bahasa Isyarat', 'FIX'),
(291, 'KOMUNITAS PEMERHATI PENYANDANG DISABILITAS OMAH GEMBIRA', '-', '0000-00-00', 'Podcast Gembira by Omah Gembira X Akar Tuli Malang', '2023-03-30', 'Lt.2, Ruang Podcast', 6, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', '\"Podcast Gembira \"\"Tuli atau Tuna Rungu\"\"\"', 'FIX'),
(292, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '0003-09-23', 'Pelatihan Akting', '2023-03-30', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(293, 'BANG BELI', '-', '0000-00-00', 'Kegiatan Onsite Magang Merdeka', '2023-03-31', 'Lt.5, Co-Working Space 1', 10, 0, '', '', 0, 0, 'Lokal', '08.00 - 16.00 WIB', 'Kegiatan Onsite Magang Merdeka', 'FIX'),
(294, 'IKISINEMAKER', '-', '0000-00-00', '\"Gala Premiere \"\"Rundung Paling Palung\"\"\"', '2023-03-31', 'Lt.5, Ruang Bioskop (Studio 1)', 100, 0, '', '', 0, 0, 'Lokal', '10.00 - 17.00 WIB', 'Penayangan Terbatas Film Pendek sekaligus Perkenalan IKISINEMAKER sebagai Pelaku Produksi Film kepada Mahasiswa Umum, Antusias Visual, dan warga Fakultas Ilmu Budaya Universitas Brawijaya', 'FIX'),
(295, 'KOPERASI PAYUNG BISNIS BRAWIJAYA', '-', '0000-00-00', 'Pelatihan UMKM Binaan Koperasi Payung Bisnis Brawijaya', '2023-03-31', 'Lt.3, Ruang Kelas', 40, 0, '', '', 0, 0, 'Lokal', '13.00 - 17.00 WIB', 'Pelatihan UMKM Binaan Koperasi Payung Bisnis Brawijaya', 'FIX'),
(296, 'KOMUNITAS AKAR TULI MALANG', '-', '0000-00-00', 'Kelas Bahasa Isyarat', '2023-03-31', 'Lt.3, Ruang Meeting', 15, 0, '', '', 0, 0, 'Lokal', '13.00 - 15.00 WIB', 'Kelas Bahasa Isyarat', 'FIX'),
(297, 'KOMUNITAS PEMERHATI PENYANDANG DISABILITAS OMAH GEMBIRA', '-', '0000-00-00', 'Menata Masa Depan dengan Investasi', '2023-03-31', 'Lt.6, Ruang Perpustakaan 2', 30, 0, '', '', 0, 0, 'Lokal', '13.30 - 15.30 WIB', 'Pembinaan untuk Komunitas Disabilitas berkolaborasi dengan Bursa Efek Indonesia untuk Sosialisasi Pasar Modal bagi Komunitas Disabilitas Kelompok Kewirausahaan', 'FIX'),
(298, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '0003-09-23', 'Pelatihan Akting', '2023-03-31', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(299, 'MKKM', '-', '0000-00-00', 'Rapat Anggota Tahunan (RAT)', '2023-03-31', 'Lt.3, Ruang Meeting', 40, 0, '', '', 0, 0, 'Lokal', '15.00 - 19.00 WIB', 'Rapat Anggota Tahunan (RAT)', 'FIX'),
(300, 'KOMUNITAS PEMERHATI DISABILITAS OMAH GEMBIRA', '-', '2023-03-24', 'Aksi Merubah Seragam Bekas menjadi Baju Lebaran', '2023-04-01', 'Lt.3, Selasar Belakang', 120, 0, '', '', 0, 0, 'Lokal', '09.00 - 13.00 WIB', 'Workshop Celup Shibori Baju Bekas untuk Lebaran dengan Pewarna Tekstil, terdapat Materi & Praktek Mencelup serta menjemur baju, yang meliputi 109 peserta umum / penyandang disabilitas', 'FIX'),
(301, 'KOMUNITAS AVERROES', '-', '2023-03-28', 'Literasi Penyusunan Company Profile Usaha dengan Tema Digital mTransformation and Strengthening Resiliance of SME\'s', '2023-04-01', 'Lt.3, Ruang Kelas', 40, 0, '', '', 0, 0, 'Lokal', '09.30 - 11.30 WIB', 'Literasi Penyusunan Company Profile Usaha dengan Tema Digital mTransformation and Strengthening Resiliance of SME\'s', 'FIX'),
(302, 'PT MACROSCOPE BERDIKARI NUSANTARA ', '-', '2023-02-17', 'Kegiatan Meeting Evaluasi setiap Awal Bulan', '2023-04-01', 'Lt.5, Co-Working Space 4', 5, 0, '', '', 0, 0, 'Lokal', '10.00 - 14.00 WIB', 'Kegiatan Meeting Evaluasi setiap Awal Bulan', 'FIX'),
(303, 'NOL DERAJAT FIM UB', '-', '2023-03-27', 'Seminar Perfilman', '2023-04-01', 'Lt.5, Ruang Bioskop (Studio 1)', 80, 0, '', '', 0, 0, 'Lokal', '11.00 - 17.00 WIB', '\"Pemberian Materi kepada Seluruh Anggota Departemen Nol DErajat Film untuk Optimalisasi Produksi Film dalm Proyek \"\" Freshman Production\"\" yang nantinya akan disertakan dalam berbagai Festival Film\"', 'FIX'),
(304, 'KOMUNITAS AKAR TULI MALANG', '-', '2023-03-28', 'Kelas Bahasa Isyarat', '2023-04-01', 'Lt.3, Ruang Meeting', 15, 0, '', '', 0, 0, 'Lokal', '13.00 - 15.00 WIB', 'Kelas Bahasa Isyarat', 'FIX'),
(305, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-01', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(306, 'KOMUNITAS RAJUT MALANG', '-', '2023-03-20', 'Sharing & Merajut Bersama dengan Anggota Komunitas Rajut Malang', '2023-04-02', 'Lt.3, Ruang Kelas', 40, 0, '', '', 0, 0, 'Lokal', '08.30 - 10.00 WIB', 'Sharing & Merajut Bersama dengan Anggota Komunitas Rajut Malang', 'FIX'),
(307, 'KOMUNITAS AKAR TULI MALANG', '-', '2023-03-28', 'Kelas Bahasa Isyarat', '2023-04-02', 'Lt.3, Ruang Meeting', 15, 0, '', '', 0, 0, 'Lokal', '13.00 - 15.00 WIB', 'Kelas Bahasa Isyarat', 'FIX'),
(308, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-02', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(309, 'SOLUTIVE', '-', '2023-03-27', 'Meeting Internal', '2023-04-03', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '08.00 - 14.00 WIB', 'Meeting Internal untuk Next Project', 'FIX'),
(310, 'CHAKA CREATIVE STUDIO', '-', '2023-03-20', 'Meeting Internal', '2023-04-03', 'Lt.5, Co-Working Space 1', 4, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'Meeting Internal', 'FIX'),
(311, 'KOMUNITAS AKAR TULI MALANG', '-', '2023-03-28', 'Kelas Bahasa Isyarat', '2023-04-03', 'Lt.3, Ruang Meeting', 15, 0, '', '', 0, 0, 'Lokal', '09.00 - 11.00 WIB', 'Kelas Bahasa Isyarat', 'FIX'),
(312, 'PAREKRAF KOTA MALANG', '-', '2023-03-16', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', '2023-04-03', 'Lt.4, Selasar', 200, 1000, '', '', 0, 0, 'Lokal', '10.00 - 21.00 WIB', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', ''),
(313, 'ASTRA CITRA PERUPA MALANG (ACPM)', '-', '2023-03-17', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', '2023-04-03', 'Lt.4, Selasar Depan', 100, 1000, '', '', 0, 0, 'Lokal', '11.00 - 21.00 WIB', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', ''),
(314, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-03', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(315, 'IVENDO JATIM', '', '0000-00-00', 'IVENDO JATIM', '2023-04-04', 'Lt.3. Ruang Meeting & Ruang Kelas', 0, 0, '', '', 0, 0, 'Lokal', '', '', 'FIX'),
(316, 'PAREKRAF KOTA MALANG', '-', '2023-03-16', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', '2023-04-04', 'Lt.4, Selasar', 200, 1000, '', '', 0, 0, 'Lokal', '10.00 - 21.00 WIB', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', ''),
(317, 'ASTRA CITRA PERUPA MALANG (ACPM)', '-', '2023-03-17', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', '2023-04-04', 'Lt.4, Selasar Depan', 100, 1000, '', '', 0, 0, 'Lokal', '11.00 - 21.00 WIB', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', ''),
(318, 'MOOI FILMS', '-', '2023-03-27', 'Maffest - Workshop dan Workflow Tech Film dan Broadcast', '2023-04-04', 'Lt.5, Ruang Bioskop (Studio 1&2)', 100, 0, '', '', 0, 0, 'Lokal', '12.00 - 17.00 WIB', 'Workshop dan Workflow Tech dari Industri Film Nasional untuk Membangun Ekosistem Film Pendek di Malang Raya', 'FIX'),
(319, 'TALENTA KIDS MALANG', '-', '2023-03-24', 'Kelas Public Speaking', '2023-04-04', 'Lt.4, Co-Working Space 4', 4, 0, '', '', 0, 0, 'Lokal', '15.00 - 20.00 WIB', 'Pelatihan Dasar Public Speaking disertai Praktek sebagai Public Speaker', 'FIX'),
(320, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-04', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(321, 'KOMUNITAS AKAR TULI MALANG', '-', '2023-03-28', 'Kelas Bahasa Isyarat', '2023-04-05', 'Lt.3, Ruang Meeting', 15, 0, '', '', 0, 0, 'Lokal', '09.00 - 11.00 WIB', 'Kelas Bahasa Isyarat', 'FIX'),
(322, 'PAREKRAF KOTA MALANG', '-', '2023-03-16', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', '2023-04-05', 'Lt.4, Selasar', 200, 1000, '', '', 0, 0, 'Lokal', '10.00 - 21.00 WIB', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', ''),
(323, 'ASTRA CITRA PERUPA MALANG (ACPM)', '-', '2023-03-17', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', '2023-04-05', 'Lt.4, Selasar Depan', 100, 1000, '', '', 0, 0, 'Lokal', '11.00 - 21.00 WIB', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', ''),
(324, 'MOOI FILMS', '-', '2023-03-27', 'Maffest - Workshop dan Workflow Tech Film dan Broadcast', '2023-04-05', 'Lt.5, Ruang Bioskop (Studio 1&2)', 100, 0, '', '', 0, 0, 'Lokal', '12.00 - 17.00 WIB', 'Workshop dan Workflow Tech dari Industri Film Nasional untuk Membangun Ekosistem Film Pendek di Malang Raya', 'FIX'),
(325, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-05', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(326, 'SOLUTIVE', '-', '2023-03-27', 'Meeting Internal', '2023-04-06', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '08.00 - 14.00 WIB', 'Meeting Internal untuk Next Project', 'FIX'),
(327, 'KOMUNITAS AKAR TULI MALANG', '-', '2023-03-28', 'Kelas Bahasa Isyarat', '2023-04-06', 'Lt.3, Ruang Meeting', 15, 0, '', '', 0, 0, 'Lokal', '09.00 - 11.00 WIB', 'Kelas Bahasa Isyarat', 'FIX'),
(328, 'PT HOMPIMPA MAHAKARYA NUSANTARA ', '-', '2023-03-16', 'Project Meeting', '2023-04-06', 'Lt.5, Co-Working Space 1', 6, 0, '', '', 0, 0, 'Lokal', '09.00 - 17.00 WIB', 'Project Meeting', 'FIX'),
(329, 'PAREKRAF KOTA MALANG', '-', '2023-03-16', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', '2023-04-06', 'Lt.4, Selasar', 200, 1000, '', '', 0, 0, 'Lokal', '10.00 - 21.00 WIB', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', ''),
(330, 'ASTRA CITRA PERUPA MALANG (ACPM)', '-', '2023-03-17', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', '2023-04-06', 'Lt.4, Selasar Depan', 100, 1000, '', '', 0, 0, 'Lokal', '11.00 - 21.00 WIB', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', ''),
(331, 'KOMUNITAS PASAR SANTAI', '001/II/2023', '2023-02-23', 'Pasar Santai - Bazar FnB & Fashion', '2023-04-06', 'Lt.3, Hotel Kapsul & Selasar Belakang', 300, 0, '', '', 0, 0, 'Lokal', '15.00 - 21.00 WIB', 'Pasar Santai - Bazar FnB & Fashion', 'FIX'),
(332, 'PAREKRAF KOTA MALANG', '-', '2023-03-16', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', '2023-04-06', 'Lt.4, Selasar', 200, 1000, '', '', 0, 0, 'Lokal', '10.00 - 21.00 WIB', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', ''),
(333, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-06', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(334, 'KOMUNITAS AKAR TULI MALANG', '-', '2023-03-20', 'Kelas Bahasa Isyarat', '2023-04-07', 'Lt.3, Ruang Meeting', 50, 0, '', '', 0, 0, 'Lokal', '09.00 - 15.00 WIB', 'Kelas Bahasa Isyarat', 'FIX'),
(335, 'PAREKRAF KOTA MALANG', '-', '2023-03-16', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', '2023-04-07', 'Lt.4, Selasar', 200, 1000, '', '', 0, 0, 'Lokal', '10.00 - 21.00 WIB', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', ''),
(336, 'ASTRA CITRA PERUPA MALANG (ACPM)', '-', '2023-03-17', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', '2023-04-07', 'Lt.4, Selasar Depan', 100, 1000, '', '', 0, 0, 'Lokal', '11.00 - 21.00 WIB', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', ''),
(337, 'KOMUNITAS AKAR TULI MALANG', '-', '2023-03-28', 'Kelas Bahasa Isyarat', '2023-04-07', 'Lt.3, Ruang Meeting', 15, 0, '', '', 0, 0, 'Lokal', '13.00 - 15.00 WIB', 'Kelas Bahasa Isyarat', 'FIX'),
(338, 'KOMUNITAS PASAR SANTAI', '001/II/2023', '2023-02-23', 'Pasar Santai - Bazar FnB & Fashion', '2023-04-07', 'Lt.3, Hotel Kapsul & Selasar Belakang', 300, 0, '', '', 0, 0, 'Lokal', '15.00 - 21.00 WIB', 'Pasar Santai - Bazar FnB & Fashion', 'FIX'),
(339, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-07', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(340, 'MIXTH EVENT ORGANIZER FISIB UB', '-', '2023-03-24', 'Workshop Pengelolaan Event Organizer ', '2023-04-08', 'Lt.5, Ruang Bioskop (Studio 1)', 70, 0, '', '', 0, 0, 'Lokal', '08.00 - 15.00 WIB', 'Pelatihan tentang Event Organizer dan Pengembangan Diri oleh Pembicara Berpengalaman untuk meningkatkan Kualitas SDM Internal Tim MITXH EVENT ORGANIZER', 'FIX'),
(341, 'ACTIONS.ID', '-', '2023-03-24', '\"Workshop \"\"Cara Mendapatkan Pendanaan Untuk Startup Batch 1\"\"\"', '2023-04-08', 'Lt.6, Ruang Perpustakaan 2', 30, 0, '', '', 0, 0, 'Lokal', '08.00 - 11.00 WIB', 'Workshop & Sharing Season Cara Memperoleh Pendanaan, Mulai dari Persiapan, Cara mencari Pendanaan, hingga Pengelolaan dan Pelaporan Penggunaan Dana untuk Start Up yang belum mendapatkan Investor', 'FIX'),
(342, 'KOMUNITAS AKAR TULI MALANG', '-', '2023-03-20', 'Kelas Bahasa Isyarat', '2023-04-08', 'Lt.3, Ruang Meeting', 50, 0, '', '', 0, 0, 'Lokal', '09.00 - 15.00 WIB', 'Kelas Bahasa Isyarat', 'FIX'),
(343, 'PAREKRAF KOTA MALANG', '-', '2023-03-16', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', '2023-04-08', 'Lt.4, Selasar', 200, 1000, '', '', 0, 0, 'Lokal', '10.00 - 21.00 WIB', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', ''),
(344, 'SANGGAR TARI SRIWEDARI', '38A/STS/I/2023', '2023-01-23', 'Make Up Class', '2023-04-08', 'Lt.3, Ruang Kelas', 40, 0, '', '', 0, 0, 'Lokal', '10.00 - 13.00 WIB', 'Make Up Class', 'FIX'),
(345, 'ASTRA CITRA PERUPA MALANG (ACPM)', '-', '2023-03-17', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', '2023-04-08', 'Lt.4, Selasar Depan', 100, 1000, '', '', 0, 0, 'Lokal', '11.00 - 21.00 WIB', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', ''),
(346, 'SEAL', '-', '2023-03-28', 'Workshop Desain Thinking & Desain Sprint SIB SEAL AWS #4 Chapter Malang', '2023-04-08', 'Lt.6, Ruang Perpustakaan 2', 25, 0, '', '', 0, 0, 'Lokal', '12.00 - 20.00 WIB', 'Workshop Desain Thinking & Desain Sprint SIB SEAL AWS #4 Chapter Malang dengan Materi mengenai Penggalian Ide hingga Perencanaan Solusi', 'fix'),
(347, 'HIMAPAR UB', '004/Pn.e.4/HIMAPAR/FIA/UB/III/2023', '2023-03-03', 'Tourism Group Discussion', '2023-04-08', 'Lt.3, Ruang Kelas', 45, 0, '', '', 0, 0, 'Lokal', '14.00 - 20.00 WIB', 'Tourism Group Discussion', 'FIX'),
(348, 'LKSA HARAPAN UMMAT', '-', '2023-03-25', 'Membuat Kreasi Manik-Manik & Buka Bersama', '2023-04-08', 'Lt.3, Ruang Kelas', 60, 0, '', '', 0, 0, 'Lokal', '15.00 - 19.00 WIB', 'Membuat Kreasi Manik-Manik berupa Cincin dan Tasbih', 'FIX'),
(349, 'KOMUNITAS PASAR SANTAI', '001/II/2023', '2023-02-23', 'Pasar Santai - Bazar FnB & Fashion', '2023-04-08', 'Lt.3, Hotel Kapsul & Selasar Belakang', 300, 0, '', '', 0, 0, 'Lokal', '15.00 - 21.00 WIB', 'Pasar Santai - Bazar FnB & Fashion', 'FIX'),
(350, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-08', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(351, 'PAREKRAF KOTA MALANG', '-', '2023-03-16', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', '2023-04-09', 'Lt.4, Selasar', 200, 1000, '', '', 0, 0, 'Lokal', '10.00 - 21.00 WIB', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', ''),
(352, 'AREMA VOICE', '-', '2023-03-17', 'Launching Album AREMA VOICE', '2023-04-09', 'Lt.2, Hall MCC', 70, 0, '', '', 0, 0, 'Lokal', '10.00 - 18.00 WIB', 'Launching Album AREMA VOICE', ''),
(353, 'ASTRA CITRA PERUPA MALANG (ACPM)', '-', '2023-03-17', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', '2023-04-09', 'Lt.4, Selasar Depan', 100, 1000, '', '', 0, 0, 'Lokal', '11.00 - 21.00 WIB', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', ''),
(354, 'KOMUNITAS AKAR TULI MALANG', '-', '2023-03-28', 'Kelas Bahasa Isyarat', '2023-04-09', 'Lt.3, Ruang Meeting', 15, 0, '', '', 0, 0, 'Lokal', '13.00 - 15.00 WIB', 'Kelas Bahasa Isyarat', 'FIX'),
(355, 'KOMUNITAS PASAR SANTAI', '001/II/2023', '2023-02-23', 'Pasar Santai - Bazar FnB & Fashion', '2023-04-09', 'Lt.3, Hotel Kapsul & Selasar Belakang', 300, 0, '', '', 0, 0, 'Lokal', '15.00 - 21.00 WIB', 'Pasar Santai - Bazar FnB & Fashion', 'FIX'),
(356, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-09', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(357, 'PAREKRAF KOTA MALANG', '-', '2023-03-16', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', '2023-04-10', 'Lt.4, Selasar', 200, 1000, '', '', 0, 0, 'Lokal', '10.00 - 21.00 WIB', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', ''),
(358, 'ASTRA CITRA PERUPA MALANG (ACPM)', '-', '2023-03-17', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', '2023-04-10', 'Lt.4, Selasar Depan', 100, 1000, '', '', 0, 0, 'Lokal', '11.00 - 21.00 WIB', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', ''),
(359, 'KOMUNITAS PASAR SANTAI', '001/II/2023', '2023-02-23', 'Pasar Santai - Bazar FnB & Fashion', '2023-04-10', 'Lt.3, Hotel Kapsul & Selasar Belakang', 300, 0, '', '', 0, 0, 'Lokal', '15.00 - 21.00 WIB', 'Pasar Santai - Bazar FnB & Fashion', 'FIX'),
(360, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-10', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(361, 'ACTIONS.ID', '-', '2023-03-24', '\"Workshop \"\"Cara Mendapatkan Pendanaan Untuk Startup Batch 2\"\"\"', '2023-04-11', 'Lt.6, Ruang Perpustakaan 2', 30, 0, '', '', 0, 0, 'Lokal', '08.00 - 11.00 WIB', 'Workshop & sharing session cara memperoleh pendanaan, mulai dari persiapan, cara mencari pendanaan hingga pengelolaan dan pelaporan penggunaan dana untuk Start Up yang belum mendapatkan Investor', ''),
(362, 'SOLUTIVE', '-', '2023-03-27', 'Meeting Internal', '2023-04-11', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '08.00 - 14.00 WIB', 'Meeting Internal untuk Next Project', 'FIX'),
(363, 'PAREKRAF KOTA MALANG', '-', '2023-03-16', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', '2023-04-11', 'Lt.4, Selasar', 200, 1000, '', '', 0, 0, 'Lokal', '10.00 - 21.00 WIB', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', ''),
(364, 'ASTRA CITRA PERUPA MALANG (ACPM)', '-', '2023-03-17', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', '2023-04-11', 'Lt.4, Selasar Depan', 100, 1000, '', '', 0, 0, 'Lokal', '11.00 - 21.00 WIB', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', ''),
(365, 'TALENTA KIDS MALANG', '-', '2023-03-24', 'Kelas Public Speaking', '2023-04-11', 'Lt.4, Co-Working Space 4', 4, 0, '', '', 0, 0, 'Lokal', '15.00 - 20.00 WIB', 'Pelatihan Dasar Public Speaking disertai Praktek sebagai Public Speaker', 'FIX'),
(366, 'KOMUNITAS PASAR SANTAI', '001/II/2023', '2023-02-23', 'Pasar Santai - Bazar FnB & Fashion', '2023-04-11', 'Lt.3, Hotel Kapsul & Selasar Belakang', 300, 0, '', '', 0, 0, 'Lokal', '15.00 - 21.00 WIB', 'Pasar Santai - Bazar FnB & Fashion', 'FIX'),
(367, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-11', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(368, 'KOMUNITAS AKAR TULI MALANG', '-', '2023-03-28', 'Kelas Bahasa Isyarat', '2023-04-12', 'Lt.3, Ruang Meeting', 15, 0, '', '', 0, 0, 'Lokal', '09.00 - 12.00 WIB', 'Kelas Bahasa Isyarat', 'FIX'),
(369, 'PAREKRAF KOTA MALANG', '-', '2023-03-16', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', '2023-04-12', 'Lt.4, Selasar', 200, 1000, '', '', 0, 0, 'Lokal', '10.00 - 21.00 WIB', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', ''),
(370, 'SOBAT UKM INDONESIA.ID', '-', '2023-03-25', 'Sharing Tik Tok dan Tiktok Shop untuk Pemasaran Online', '2023-04-12', 'Lt.3, Ruang Meeting', 25, 0, '', '', 0, 0, 'Lokal', '10.00 - 14.00 WIB', '\"Pelatihan Digital Marketing terkait \"\"Memaksimalkan Tiktok & Tiktok Shop Platform untuk Pemasaran Online\"\".\"', 'FIX'),
(371, 'ASTRA CITRA PERUPA MALANG (ACPM)', '-', '2023-03-17', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', '2023-04-12', 'Lt.4, Selasar Depan', 100, 1000, '', '', 0, 0, 'Lokal', '11.00 - 21.00 WIB', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', ''),
(372, 'KOMUNITAS PASAR SANTAI', '001/II/2023', '2023-02-23', 'Pasar Santai - Bazar FnB & Fashion', '2023-04-12', 'Lt.3, Hotel Kapsul & Selasar Belakang', 300, 0, '', '', 0, 0, 'Lokal', '15.00 - 21.00 WIB', 'Pasar Santai - Bazar FnB & Fashion', 'FIX'),
(373, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-12', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(374, 'SOLUTIVE', '-', '2023-03-27', 'Meeting Internal', '2023-04-13', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '08.00 - 14.00 WIB', 'Meeting Internal untuk Next Project', 'FIX'),
(375, 'PAREKRAF KOTA MALANG', '-', '2023-03-16', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', '2023-04-13', 'Lt.4, Selasar', 200, 1000, '', '', 0, 0, 'Lokal', '10.00 - 21.00 WIB', '\"Kolaborasi HUT 109 Kota Malang bertema \"\" Sewelas Dino Ngenteni Blanggur \"\"\"', ''),
(376, 'ASTRA CITRA PERUPA MALANG (ACPM)', '-', '2023-03-17', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', '2023-04-13', 'Lt.4, Selasar Depan', 100, 1000, '', '', 0, 0, 'Lokal', '11.00 - 21.00 WIB', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', ''),
(377, 'KOMUNITAS PASAR SANTAI', '001/II/2023', '2023-02-23', 'Pasar Santai - Bazar FnB & Fashion', '2023-04-13', 'Lt.3, Hotel Kapsul & Selasar Belakang', 300, 0, '', '', 0, 0, 'Lokal', '15.00 - 21.00 WIB', 'Pasar Santai - Bazar FnB & Fashion', 'FIX'),
(378, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-13', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(379, 'KOMUNITAS AKAR TULI MALANG', '-', '2023-03-20', 'Kelas Bahasa Isyarat', '2023-04-14', 'Lt.3, Ruang Meeting', 50, 0, '', '', 0, 0, 'Lokal', '09.00 - 15.00 WIB', 'Kelas Bahasa Isyarat', 'FIX'),
(380, 'ASTRA CITRA PERUPA MALANG (ACPM)', '-', '2023-03-17', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', '2023-04-14', 'Lt.4, Selasar Depan', 100, 1000, '', '', 0, 0, 'Lokal', '11.00 - 21.00 WIB', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', ''),
(381, 'ASTRA CITRA PERUPA MALANG (ACPM)', '-', '2023-03-17', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', '2023-04-14', 'Lt.4, Selasar Depan', 100, 1000, '', '', 0, 0, 'Lokal', '11.00 - 21.00 WIB', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', ''),
(382, 'KOMUNITAS PASAR SANTAI', '001/II/2023', '2023-02-23', 'Pasar Santai - Bazar FnB & Fashion', '2023-04-14', 'Lt.3, Hotel Kapsul & Selasar Belakang', 300, 0, '', '', 0, 0, 'Lokal', '15.00 - 21.00 WIB', 'Pasar Santai - Bazar FnB & Fashion', 'FIX'),
(383, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-14', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(384, 'ACTIONS.ID', '-', '2023-03-28', 'Workshop Cara Menekan Kerugian dalam Bisnis FnB', '2023-04-15', 'Lt.3, Ruang Kelas', 30, 0, '', '', 0, 0, 'Lokal', '08.00 - 12.00 WIB', 'Workshop & Sharing Session Cara Menekan Kerugian dalam Bisnis FnB', 'FIX'),
(385, 'KOMUNITAS AKAR TULI MALANG', '-', '2023-03-20', 'Kelas Bahasa Isyarat', '2023-04-15', 'Lt.3, Ruang Meeting', 50, 0, '', '', 0, 0, 'Lokal', '09.00 - 12.00 WIB', 'Kelas Bahasa Isyarat', 'FIX'),
(386, 'ASTRA CITRA PERUPA MALANG (ACPM)', '-', '2023-03-17', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', '2023-04-15', 'Lt.4, Selasar Depan', 100, 1000, '', '', 0, 0, 'Lokal', '11.00 - 21.00 WIB', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', ''),
(387, 'LAZIS SABILLILLAH', '10/IV/LZS-Sab/III/2023', '2023-03-10', 'Buka Bersama & Santunan Parcel Lebaran kepada Anak Yatim, Dhuafa, Marbot Musholla, dan Guru TPQ', '2023-04-15', 'Lt.2, Hall MCC', 430, 0, '', '', 0, 0, 'Lokal', '14.00 - 18.00 WIB', 'Buka Bersama & Santunan Parcel Lebaran kepada Anak Yatim, Dhuafa, Marbot Musholla, dan Guru TPQ', 'FIX'),
(388, 'KOMUNITAS PASAR SANTAI', '001/II/2023', '2023-02-23', 'Pasar Santai - Bazar FnB & Fashion', '2023-04-15', 'Lt.3, Hotel Kapsul & Selasar Belakang', 300, 0, '', '', 0, 0, 'Lokal', '15.00 - 21.00 WIB', 'Pasar Santai - Bazar FnB & Fashion', 'FIX'),
(389, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-15', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(390, 'ASTRA CITRA PERUPA MALANG (ACPM)', '-', '2023-03-17', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', '2023-04-16', 'Lt.4, Selasar Depan', 100, 1000, '', '', 0, 0, 'Lokal', '11.00 - 21.00 WIB', '\"Gebyar Pameran Lukisan bertema \"\"ART MALANG KUCECWARA\"\" dalam rangka HUT 109 Kota Malang\"', ''),
(391, 'KOMUNITAS PASAR SANTAI', '001/II/2023', '2023-02-23', 'Pasar Santai - Bazar FnB & Fashion', '2023-04-16', 'Lt.3, Hotel Kapsul & Selasar Belakang', 300, 0, '', '', 0, 0, 'Lokal', '15.00 - 21.00 WIB', 'Pasar Santai - Bazar FnB & Fashion', 'FIX'),
(392, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-16', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(393, 'SOLUTIVE', '-', '2023-03-27', 'Meeting Internal', '2023-04-17', 'Lt.5, Co-Working Space 4', 10, 0, '', '', 0, 0, 'Lokal', '08.00 - 14.00 WIB', 'Meeting Internal untuk Next Project', 'FIX'),
(394, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-17', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(395, 'TALENTA KIDS MALANG', '-', '2023-03-24', 'Kelas Public Speaking', '2023-04-18', 'Lt.4, Co-Working Space 4', 4, 0, '', '', 0, 0, 'Lokal', '15.00 - 20.00 WIB', 'Pelatihan Dasar Public Speaking disertai Praktek sebagai Public Speaker', 'FIX'),
(396, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-18', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(397, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-19', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(398, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-20', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(399, 'KOMUNITAS AKAR TULI MALANG', '-', '2023-03-20', 'Kelas Bahasa Isyarat', '2023-04-21', 'Lt.3, Ruang Meeting', 50, 0, '', '', 0, 0, 'Lokal', '09.00 - 15.00 WIB', 'Kelas Bahasa Isyarat', 'FIX'),
(400, 'TALENT FILM MALANG (SANGGAR ANGKASA)', '-', '2023-03-09', 'Pelatihan Akting', '2023-04-21', 'Lt.3, Hotel Kapsul (Tentatif)', 25, 0, '', '', 0, 0, 'Lokal', '15.00 - 17.00 WIB', 'Pelatihan Akting', 'FIX'),
(401, 'TALENTA KIDS MALANG', '-', '2023-03-24', 'Kelas Public Speaking', '2023-04-25', 'Lt.4, Co-Working Space 4', 4, 0, '', '', 0, 0, 'Lokal', '15.00 - 20.00 WIB', 'Pelatihan Dasar Public Speaking disertai Praktek sebagai Public Speaker', 'FIX'),
(402, 'SANGGAR TARI SRIWEDARI', '38B/STS/I/2023', '2023-01-23', 'Gladi Bersih Pagelaran Seni Tari', '2023-04-29', 'Lt.5, Ruang Bioskop (Studio 2)', 80, 0, '', '', 0, 0, 'Lokal', '14.00 - 17.00 WIB', 'Gladi Bersih Pagelaran Seni Tari', 'FIX'),
(403, 'SANGGAR TARI SRIWEDARI', '38C/STS/I/2023', '2023-01-23', 'Pagelaran Seni Tari', '2023-04-30', 'Lt.5, Ruang Bioskop (Studio 2)', 80, 0, '', '', 0, 0, 'Lokal', '09.00 - 14.00 WIB', 'Pagelaran Seni Tari', 'FIX');

-- --------------------------------------------------------

--
-- Table structure for table `form_feedback`
--

CREATE TABLE `form_feedback` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `pic` varchar(250) NOT NULL,
  `kegiatan` varchar(255) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `ruang` varchar(250) NOT NULL,
  `kategori` varchar(250) NOT NULL,
  `jumlahpeserta` int(100) NOT NULL,
  `jumlahtrans` int(100) NOT NULL,
  `media` varchar(250) NOT NULL,
  `kesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form_feedback`
--

INSERT INTO `form_feedback` (`id`, `nama`, `pic`, `kegiatan`, `tanggal`, `ruang`, `kategori`, `jumlahpeserta`, `jumlahtrans`, `media`, `kesan`) VALUES
(1, 'STT MALANG ', 'Aurel - 085894631344', 'PODCAST THREE 2 SHOW', '2023-03-31', 'Lantai 2, Ruang Podcast', 'Televisi & Radio', 5, 0, 'Televisi,', 'Crew nya baik\"ruangan luas'),
(2, 'Satu Project Event Production', 'Salma Rasheeda - 083834621073', 'Rapat Divisi Internal', '2023-04-01', 'Lantai 5, Co-Working Space 1', 'Pertunjukan', 11, 0, 'instagram,', 'Para pegawai MCC sangat ramah dan snagat membantu kita sebagai peminjam untuk menggunakan ruangan ini'),
(3, 'CV Alurra Entertainment', 'Ryan - 082141634572', 'Pengembangan kreatifitas talent', '2023-04-05', 'Lantai 4, Studio Band & Recording', 'Musik', 8, 0, 'instagram,', 'Sangat membantu untuk umum dalam mengembangkan usahanya'),
(4, 'Chaka Creative Studio', '08990343476', 'Meeting internal', '2023-04-10', 'Lantai 5, Co-Working Space 4', 'Desain Kom. Visual', 5, 0, 'instagram,', 'MCC sangat membantu industri seperti kami yang biasanya hanya kerja remote, kini menjadi mudah koordinasi karena ada tempat untuk meeting, bahkan saat puasa saat kita hanya perlu bertemu membahas pekerjaan tanpa harus makan dan minum. Masukan saja, mungkin yang harus diperbaiki adalah wifi sangat tidak mendukung untuk bekerja karena lemot, dan public space di luar coworking space sangat minim colokan listrik, yang mana era saat ini colokan adalah elemen yang sangat dibutuhkan setiap pekerja. terima kasih');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id_item` int(11) NOT NULL,
  `sn` varchar(255) NOT NULL,
  `nama_item` varchar(100) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `lokasi` varchar(40) NOT NULL,
  `id_lokasi` int(11) NOT NULL,
  `lantai` varchar(40) NOT NULL,
  `spesifikasi` varchar(255) NOT NULL,
  `tgl_terima` date DEFAULT current_timestamp(),
  `pic` varchar(255) NOT NULL,
  `departemen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id_item`, `sn`, `nama_item`, `id_satuan`, `deskripsi`, `status`, `lokasi`, `id_lokasi`, `lantai`, `spesifikasi`, `tgl_terima`, `pic`, `departemen`) VALUES
(1, 'UDVUYSD004234007B00601', 'Komputer 1', 8, '', 'Aktif', '7', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7 RAM : 16Gb DDR4 Type : SSD 1 Tera Graphics : Intel UHD Graphics 750', '2022-12-06', 'Diskopindag', 'IT'),
(2, 'UDVUYSD00423102D080601', 'Komputer 2', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7 RAM : 16Gb DDR4 Type : SSD 1 Tera Graphics : Intel UHD Graphics 750', '2023-01-30', 'Diskopindag', 'IT'),
(3, 'UDVUYSD004234008080601', 'Komputer 3', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7 RAM : 16Gb DDR4 Type : SSD 1 Tera Graphics : Intel UHD Graphics 750', '2023-01-30', 'Diskopindag', 'IT'),
(4, 'UDVUYSD004234007E20601', 'Komputer 4', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7 RAM 16GB DDR4 Type : SSD 1 Tera Graphics : Intel UHD Graphic 750', '2023-01-30', 'Diskopindag', 'IT'),
(5, 'UDVUYSD004234007D80601', 'Komputer 5', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7 RAM 16GB DDR4 Type : SSD 1 Tera Graphics : Intel UHD Graphic 750', '2023-01-30', 'Diskopindag', 'IT'),
(6, 'UDVUYSD004234007DA0601', 'Komputer 6', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7 RAM : 16Gb DDR4 Type : SSD 1 Tera Graphics : Intel UHD Graphics 750', '2023-01-30', 'Diskopindag', 'IT'),
(7, 'UDVUYSD0042340080A0601', 'Komputer 7', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7 RAM : 16Gb DDR4 Type : ssd 1TB Graphics : Intel UHD Graphics 750', '2023-01-30', 'Diskopindag', 'IT'),
(8, 'UDVUYSD004234007DB0601', 'Komputer 8', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7 RAM : 16Gb DDR4 Type : ssd 1TB Graphics : Intel UHD Graphics 750', '2023-01-30', 'Diskopindag', 'IT'),
(9, 'UDVUYSD004234007E60601', 'Komputer 9', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7RAM : 16Gb DDR4Type : SSD 1 TeraGraphics : Intel UHD Graphics 750', '2023-01-30', 'Diskopindag', 'IT'),
(10, 'UDVUYSD004234007CD0601', 'Komputer 10', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7RAM : 16Gb DDR4Type : SSD 1 TeraGraphics : Intel UHD Graphics 750', '2023-01-30', 'Diskopindag', 'IT'),
(11, 'UDVUYSD004234007B50601', 'Komputer 11', 8, '', 'Aktif', 'R. Customer Service', 22, 'Lantai 2', 'CPU : 11th Gen Intel Core i7RAM : 16Gb DDR4Type : SSD 1 TeraGraphics : Intel UHD Graphics 750', '2023-01-30', 'Diskopindag', 'IT'),
(12, 'UDVUYSD004234007CA0601', 'Komputer 12', 8, '', 'Aktif', 'R. Customer Service', 22, 'Lantai 2', 'CPU : 11th Gen Intel Core i7RAM 16GB DDR4Type : SSD 1 TeraGraphics : Intel UHD Graphic 750', '2023-01-30', 'Diskopindag', 'IT'),
(13, 'UDVUYSD004234007E70601', 'Komputer 13', 8, '', 'Aktif', '7', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : SSD 1 Tera\r\nGraphics : Intel UHD Graphics 750\r\n', '2022-12-06', 'Diskopindag', 'IT'),
(14, 'UDVUYSD004234007CB0601', 'Komputer 14', 8, '', 'Aktif', '7', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM 16GB DDR4\r\nType : SSD 1 Tera\r\nGraphics : Intel UHD Graphic 750', '2022-12-06', 'Diskopindag', 'IT'),
(15, 'UDVUYSD00423102CD80601', 'Komputer 15', 8, '', 'Aktif', '7', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : SSD 1 Tera\r\nGraphics : Intel UHD Graphics 750\r\n', '2022-12-06', 'Diskopindag', 'IT'),
(16, 'UDVUYSD004234007E50601', 'Komputer 16', 8, '', 'Aktif', '7', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM 16GB DDR4\r\nType : SSD 1 Tera\r\nGraphics : Intel UHD Graphic 750\r\n', '2022-12-06', 'Diskopindag', 'IT'),
(17, 'UDVUYSD008242018F90601', 'Komputer 17', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM 16GB DDR4\r\nType : SSD 500GB\r\nGraphics : Intel UHD Graphic 750\r\nGraphics 2 : Nvidia GeForce GT 720\r\n', '2022-12-06', 'Diskopindag', 'IT'),
(18, 'UDVUYSD008242019020601', 'Komputer 18', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : ssd 500 gb\r\nGraphics : Intel UHD Graphics 750\r\nGraphics 2 : Nvidia GeForce GT 720', '2022-12-06', 'Diskopindag', 'IT'),
(19, 'UDVUYSD008242018C70601', 'Komputer 19', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : SSD 1 Tera\r\nGraphics : Intel UHD Graphics 750\r\n', '2022-12-06', 'Diskoperindag', 'IT'),
(20, 'UDVUYSD0042300370C0601', 'Komputer 20', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : SSD 1 Tera\r\nGraphics : Intel UHD Graphics 750\r\n', '2022-12-06', 'Diskoperindag', 'IT'),
(21, 'UDVUYSD008242019200601', 'Komputer 21', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : hdd 500 gb\r\nGraphics : Intel UHD Graphics 750\r\nGraphics 2 : Nvidia GeForce GT 720\r\n\r\n', '2022-12-06', 'Diskoperindag', 'IT'),
(22, 'UDVUYSD008242018DB0601', 'Komputer 22', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : SSD 500Gb\r\nGraphics : Intel UHD Graphics 750\r\nGraphics 2 : Nvidia GeForce GT 720\r\n', '2022-12-06', 'Diskoperindag', 'IT'),
(23, 'UDVUYSD008242018E40601', 'Komputer 23', 8, 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : Hdd 500 gb\r\nGraphics : Intel UHD Graphics 750\r\nGraphics 2 : Nvidia GeForce GT 720\r\nSN : UDVUYSD008242018E40601\r\n', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : Hdd 500 gb\r\nGraphics : Intel UHD Graphics 750\r\nGraphics 2 : Nvidia GeForce GT 720\r\n', '2022-12-06', 'Diskoperindag', 'IT'),
(24, 'UDVUYSD008242019060601', 'Komputer 24', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : SSD 1 Tera\r\nGraphics : Intel UHD Graphics 750\r\n', '2022-12-06', 'Diskoperindag', 'IT'),
(25, 'UDVUYSD008242018C50601', 'Komputer 25', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : ssd 500 gb\r\nGraphics : Intel UHD Graphics 750\r\nGraphics 2 : Nvidia GeForce GT 720\r\n', '2022-12-06', 'Disperindag', 'IT'),
(26, 'UDVUYSD008242018BF0601', 'Komputer 26', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : SSD 500Gb\r\nGraphics : Intel UHD Graphics 750\r\nGraphics 2 : Nvidia GeForce GT 720\r\n', '2022-12-06', 'Disperindag', 'IT'),
(27, 'UDVUYSD008242018C80601', 'Komputer 27', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : SSD 500Gb\r\nGraphics : Intel UHD Graphics 750\r\nGraphics 2 : Nvidia GeForce GT 720\r\n', '2022-12-06', 'Disperindag', 'IT'),
(28, 'UDVUYSD08242018C60601', 'Komputer 28', 8, '', 'Aktif', 'R. Control Room', 20, 'Lantai 1', 'CPU : 11th Gen Intel Core i7RAM : 16Gb DDR4Type : ssd 500 gbGraphics : Intel UHD Graphics 750Graphics 2 : Nvidia GeForce GT 720', '2023-01-30', 'Disperindag', 'IT'),
(29, 'C02J71HJQ6W8', 'IMAC 1', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB Internal: 512GB\nSN Mouse: CC2213200080YXGAR\nSN Keyboard: F0T139600050XV7AX', '2023-01-26', 'Diskopindag', 'IT'),
(30, 'C02J713YQ6W8', 'IMAC 3', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB Internal: 512GB SN: C02J713YQ6W8\nSN Mouse: CC2213200360YXGAJ\nSN Keyboard: F0T2126RM2G0XV7A6\n', '2023-01-26', 'Diskopindag', 'IT'),
(31, 'N6NRKD00358526F', 'ASUS ROG ', 8, 'Laptop', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(32, '4549292142327', 'CANON EOS M200 ', 8, 'Kamera', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(33, 'SNCABLE200120230001', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(34, 'SNSNYA72001202300002', 'SONY A7 III (p-32829440-E)', 8, 'Kamera', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(35, 'SNLENSASNYFE2020012023003', 'LENSA SONY FE 20 F 1.8 G (p-32848340-E)', 8, 'Lensa Kamera', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(36, 'SNLENSASNYFE3520012023004', 'LENSA SONY FE 35MM F 1.8 (p-32848140-c)', 8, 'Lensa Kamera', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(37, 'SNLENSASNYFE852001202300005', 'LENSA SONY FE 85 F 1.8 (p-32846940-i) ', 8, 'Lensa Kamera', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(38, 'SNCABLELINEIN200120230006', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(39, 'SNCABLELINEIN200120230007', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(40, 'SNCABLELINEIN200120230008', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(41, '7900137', 'SONY FX 6 (7900137)', 8, 'Kamera (Body only)', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(42, 'SNCABLELINEIN200120230009', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(43, '7900138', 'SONY FX 6 (7900138)', 8, 'Kamera (Body only)', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(44, 'SNCABLELINEIN200120230010', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(45, '7900155', 'SONY FX 6 (7900155)', 8, 'Kamera (Body only)', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(46, 'SNMMSNY64GB200120230011', 'MEMORI SONY TOUGH (SF-M64T/T1) 64GB', 8, 'Memory Card', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(47, 'SNCABLELINEIN200120230012', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(48, 'SNCABLELINEIN200120230013', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(49, 'SNTRIPODGA752200120230014', 'TRIPOD E-IMAGE GA752', 8, 'Tripod Kamera', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(50, 'SNCABLELINEXLR200120230015', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(51, '9338716007978', 'BLACKMAGIC ATEM SDI  EXTREME ISO (9338716007978)', 8, '', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(52, 'S211004754571', 'BEHRINGER XENYX 1202FX (S211004754571)', 8, '', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(53, 'SNCABLEMICMGMGLD200120230016', 'Kabel Microphone Mogami Gold Studio', 8, 'Cable', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'Neutrix XLR-Male to XLR-Female 5 meter', '2023-01-27', 'Diskoperindag', 'Media Production'),
(54, '2182386', 'TASCAM MIXCAST 4 (2182386)', 8, '', 'Aktif', '', 0, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(55, 'SNCABLEMICMGMGLD200120230017', 'Kabel Microphone Mogami Gold Studio', 8, 'Cable', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'Neutrix XLR-Male to XLR-Female 5 meter', '2023-01-27', 'Diskoperindag', 'Media Production'),
(56, 'SNCABLEHDMIBAFO200120230018', 'HDMI BAFO', 8, '', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(57, 'S27AG320NE ', 'MONITOR SAMSUNG ', 8, 'Monitor', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(58, 'SNCABLEMICMGMGLD200120230019', 'Kabel Microphone Mogami Gold Studio', 8, 'Cable', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'Neutrix XLR-Male to XLR-Female 5 meter', '2023-01-27', 'Diskoperindag', 'Media Production'),
(59, '249922349712', 'PC CORE I9 ', 8, 'PC', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(60, 'SNCABLEMICMGMGLD200120230020', 'Kabel Microphone Mogami Gold Studio', 8, 'Cable', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'Neutrik XLR-Male to XLR-Female 5 meter', '2023-01-27', 'Diskoperindag', 'Media Production'),
(61, 'SNCABLERLUTCN200120230021', 'Kabel roll Uticon ', 8, '25 meter 4 Lubang', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(62, '10222026|17509', 'Mixer Adlive 20 Pro ', 8, 'Mixer', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(63, 'SNCABLEINSTGTRMGMGLD200120230022', 'Kabel Instrument Guitar Mogami Gold', 8, 'Cable', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'Neutrik Silent Plug S R - 5 meter ', '2023-01-27', 'Diskoperindag', 'Media Production'),
(64, 'SNCBLMICQA200120230023', 'Microphone Cable merk QA electronic', 8, '', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(65, 'SNCBLPWRTM2021200120230024', 'Cable Power Tm 2021 ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(66, 'SNCBLPWRJCK65200120230025', 'Cable Power + Jack 6,5 ', 8, 'Panjang 1/2 meter', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(67, 'SNCBLINSGTRMGMGLD200120230026', 'Kabel Instrument Guitar Mogami Gold', 8, 'Cable', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'Neutrik Silent Plug S R - 5 meter ', '2023-01-27', 'Diskoperindag', 'Media Production'),
(68, 'SNCBLPWRLP2013200120230027', 'Cable Power Longwell-P 2013 ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(69, 'SNCBLPWRSMWN2014200120230028', 'Cable Power Sam Won 2014', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(70, 'SN200120230029', 'Cable Power Longwell-P 2014', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(71, 'SN200120230030', 'Kabel Instrument Guitar Mogami Gold', 8, 'Cable', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'Neutrik Silent Plug S R - 5 meter ', '2023-01-27', 'Diskoperindag', 'Media Production'),
(72, 'SN200120230031', 'Cable Power Longwell-P 2012', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(73, 'SN200120230032', 'Cable Power RD 2021 ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(74, 'SN200120230033', 'Cable Blue Tweeter Yurito ', 8, 'Cable ', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(75, 'SN200120230034', 'Speaker Monito HR Audio ', 8, 'Speaker ', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(76, '1882A ', 'Subwoofer ', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(77, 'N290622 ', 'Tweeter ', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(78, 'SN200120230035', 'Cable Power Sucofindo', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(79, 'SN200120230036', 'Kabel Instrument Guitar Mogami Gold', 8, 'Cable', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'Neutrik Silent Plug S R - 5 meter ', '2023-01-27', 'Diskoperindag', 'Media Production'),
(80, 'GB5023-1997 ', 'Cable power Mitoyouri ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(81, 'SN200120230037', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(82, 'SN200120230038', 'Mic Audio Technica ', 8, 'Microphone', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'AT2020 7126', '2023-01-27', 'Diskoperindag', 'Media Production'),
(83, 'SN200120230039', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(84, 'SN200120230040', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(85, 'SN200120230041', 'Mic Audio Technica ', 8, 'Microphone', 'Aktif', 'R. Podcast', 0, 'Lantai 2', 'AT2020 7085', '2023-01-27', 'Diskoperindag', 'Media Production'),
(86, 'SN200120230042', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(87, 'SN200120230043', 'Mic Audio Technica ', 8, 'Microphone', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'AT2020 7097', '2023-01-27', 'Diskoperindag', 'Media Production'),
(88, 'SN200120230044', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(89, 'SN200120230045', 'Cable Blue Tweeter Yurito ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(90, 'SN200120230046', 'Mic Audio Technica ', 8, 'Microphone', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'AT2020 6661', '2023-01-27', 'Diskoperindag', 'Media Production'),
(91, 'SN200120230047', 'Professional Microphone Stand ', 8, 'Microphone Stand ', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(92, 'N290622 ', 'Tweeter ', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(93, 'SN200120230048', 'Pro Microphone Stand ', 8, 'Microphone Stand ', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(94, '1882A ', 'Subwoofer ', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(95, 'SN200120230049', 'Speaker Monitor HR Audio ', 8, 'Speaker ', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(96, 'SN200120230050', 'Headphone Audio Technica ', 8, 'Headphone', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'ATH-M20X 214909001758', '2023-01-27', 'Diskoperindag', 'Media Production'),
(97, 'SN200120230051', 'Headphone Audio Technica ', 8, 'Headphone ', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'ATH-M20X 220409000737', '2023-01-27', 'Diskoperindag', 'Media Production'),
(98, 'SN200120230052', 'HDMI BAFO', 8, '', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(99, 'SN200120230053', 'Cable Power + Jack 6,5 ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', 'Panjang 1/2 meter', '2023-01-28', 'Diskoperindag', 'Media Production'),
(100, 'SN200120230054', 'Cable Power Tm 2021 ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(101, 'SN200120230055', 'Cable Power Tm 2021 ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(102, 'SN200120230056', 'Headphone Audio Technica ', 8, 'Headphone ', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'ATH-M20X 214409011908', '2023-01-27', 'Diskoperindag', 'Media Production'),
(103, 'SN200120230057', 'Cable Power Tm 2021 ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(104, 'SN200120230058', 'Kabel roll Uticon ', 8, '25 meter 4 Lubang', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(105, 'SN200120230059', 'Kabel roll Uticon ', 8, '25 meter 4 Lubang ', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(106, '220409000731', 'Headphone Audio Technica ', 8, 'Headphone ', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'ATH-M20X ', '2023-01-28', 'Diskoperindag', 'Media Production'),
(107, 'SN200120230060', 'Monitor Speaker Pro HR', 8, 'Monitor Speaker', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(108, 'SN200120230061', 'Primatech Sound Out 2', 8, 'Sound', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(109, 'SN200120230062', 'Monitor Speaker Pro HR ', 8, 'Monitor Speaker', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(110, 'SN200120230063', 'Set box kabel jack', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(111, 'SN200120230064', 'Keyboard Korg - Kross', 8, 'Keyboard', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(112, '68806207001030', 'Microphone Wireless Primatech PR-688 ', 8, 'Microphone Wireless', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(113, 'SN200120230065', 'Pro Microphone Stand', 8, 'Micorphone Stand', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(114, '68806207001005', 'Microphone Wireless Primatech PR-688 ', 8, 'Microphone Wireless', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(115, 'SN200120230066', 'Pro Microphone Stand', 8, 'Micorphone Stand', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(116, 'SN200120230067', 'Pro Microphone Stand', 8, 'Micorphone Stand', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(117, '2051373CPOL0186', 'Mixer Mackie Pro FX 10 V3 ', 8, 'Mixer ', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(119, '90006201001605', 'Microphone PR - 900 Primatech Dynamic ', 8, 'Microphone', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(120, 'SN200120230068', 'Microphone Stand Circle - PMX BS 109', 8, 'Microphone Stand', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(121, 'SN200120230069', 'Dynamic Kit Drum Krezt', 8, 'Drum', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Krezt - KR 7 ANV', '2023-01-28', 'Diskoperindag', 'Media Production'),
(122, 'SN200120230070', 'Guitar - Darieos', 8, 'Guitar', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(123, 'SN200120230071', 'Guitar - Darieos 2', 8, 'Guitar', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(124, 'QA202204000356', 'Microphone Wireless QA Electronic', 8, 'Microphone Wireless ', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(125, '1B1D22217609', 'UPS ICA CE1200 ', 8, 'UPS', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(126, 'SN200120230072', 'Bass - Basesinten', 8, 'Bass ', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(127, 'SN200120230073', 'Stand Arm Tascam TM-AM2', 8, 'Stand Arm Tascam ', 'Aktif', 'R. Podcast', 5, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(128, 'SN200120230074', 'Amplifier Guitar - Roland Jazz Chorus - Jazz Chorus 120', 8, 'Amplifier Guitar', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(129, 'Ultra G - GI 100', 'DI Box Behringer (Ultra DI – D100) ', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(130, 'SN200120230075', 'Stand Arm Tascam TM-AM2', 8, 'Stand Arm Tascam', 'Aktif', 'R. Podcast', 5, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(131, 'ZBTP390-A', 'Cymbal Set up - ZBT ', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(132, 'STARMTM-AM2', 'Stand Arm Tascam TM-AM2', 8, 'Stand Arm Tascam ', 'Aktif', 'R. Podcast', 5, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(133, 'KYBAMPKC550', 'Keyboard amplifier - KC 550', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(134, 'AMPRLNDKC990Z7N4062', 'Amplifier Roland KC-990 Z7N4062', 8, 'Amplifier', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(135, 'STMARMTSCMTM-AM2', 'Stand Arm Tascam TM-AM2', 8, 'Stand Arm Tascam', 'Aktif', 'R. Podcast', 5, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(136, 'GTRAMPRH200SCG2', 'Guitar Amplifier - RH 200SC - G2 Series', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(137, 'AMPGTRDLRCTFR', 'Amplifier Guitar Dual Rectifier ', 8, 'Amplifier Guitar', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Dual Rectifier - Solo Head', '2023-01-28', 'Diskoperindag', 'Media Production'),
(138, 'SUBPRS15A00598', 'Subwoofer Proel S15A 00598', 8, 'Subwoofer', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production '),
(139, 'KBLPWRJCKSPKR', 'Kabel Power + Jack Speaker ', 10, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(140, 'HDPNAKGK52', 'Headphone AKG K52 ', 8, 'Headphone ', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'MI4021-551300', '2023-01-27', 'Diskoperindag', 'Media Production'),
(141, 'SBWPRS15A00317', 'Subwoofer Proel S15A 00317', 8, 'Subwoofer', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(142, 'KBLPWRJKPKR', 'Kabel Power + Jack Speaker ', 10, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(143, 'MCBYRDYNFD803', 'Mic Beyerdynamic FD803', 8, 'Microphone', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(144, 'HDMRKLTMRK800', 'Headamp Markbass Little Mark 800', 8, 'Headamp', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(145, 'MCBYDYNMCFD803', 'Mic Beyerdynamic FD803', 8, 'Microphone', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(146, 'AMPMRKBASS', 'Amplifier Markbass', 8, 'Amplifier', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(147, 'SPKGTADCNTR', 'Speaker Gantung Audio Center', 8, 'Speaker Gantung ', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media production '),
(148, 'STDMNTREIKNEK8NF00324', 'Studio Monitor Eikon EK8NF 00324', 8, 'Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(149, 'SPKRGNTGAUDIOCTR', 'Speaker Gantung Audio Center', 8, 'Speaker Ganatung ', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(150, 'STDMNTREIKONEK8NF00323', 'Studio Monitor Eikon EK8NF 00323', 8, 'Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(151, 'STDSUBEIKNEK10SW00068', 'Studio Subwoofer Eikon EK10SW 00068', 8, 'Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(152, 'S210400054C47', 'Studio Monitor Tannoy Reveal 502 ', 8, 'Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(153, 'KBLSNAKE', 'Kabel Snake', 8, 'Kabel Snake', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(154, 'S210400065C47', 'Studio Monitor Tannoy Reveal 502 ', 8, 'Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(155, '2206LZ009E29', 'Logitech Brio 4K Pro Webcam  C1000e ', 8, 'Webcam ', 'Aktif', 'R. Podcast', 5, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(156, 'KBLINSTRMN01', 'Kabel Instrument', 8, 'Kabel Instrument', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(157, 'KBLINSTRMN02', 'Kabel Instrument', 8, 'Kabel Instrument\n', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(158, 'KBLINSTRMN03', 'Kabel Instrument', 8, 'Kabel Instrument\n', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(159, 'KBLINSTRMN04', 'Kabel Instrument', 8, 'Kabel Instrument\n', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(160, 'SN200120230097', 'Kabel Instrument', 8, 'Kabel Instrument\n', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(161, 'INAFBX01148', 'Yamaha HS5 ', 8, 'Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(162, 'SN200120230098', 'Kabel Instrument', 8, 'Kabel Instrument\n', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(163, 'SN200120230099', 'Kabel XLR Male to XLR Female', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(164, 'SN200120230100', 'Kabel XLR Male to XLR Female', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media production'),
(165, 'SN200120230101', 'Kabel XLR Male to XLR Female', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(166, 'SN200120230102', 'Mixer Studiolive 32SX', 8, 'Mixer ', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(167, 'SN200120230103', 'Kabel XLR Male to XLR Female', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(168, 'SN200120230104', 'Kabel XLR Male to XLR Female', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(169, 'SN200120230105', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production'),
(170, 'SN200120230106', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production'),
(171, 'SN200120230107', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production '),
(172, 'SN200120230108', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production'),
(173, 'SN200120230109', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production'),
(174, 'SN200120230110', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production'),
(175, 'SN200120230111', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production'),
(176, 'SN200120230112', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production'),
(177, 'SN200120230113', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production'),
(178, 'SN200120230114', 'Kabel XLR Male to XLR Female', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang  5m', '2023-01-28', 'Diskoperindag', 'Media Production'),
(179, 'SN200120230115', 'Kabel Roll isi 4 ', 8, 'Kabel Roll', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production'),
(180, 'SN200120230116', 'Kabel Roll isi 4 ', 8, 'Kabel Roll', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production'),
(181, 'SN200120230117', 'Kabel Roll isi 4 ', 8, 'Kabel Roll', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production'),
(182, 'SN200120230118', 'Kabel Roll isi 4 ', 8, 'Kabel Roll ', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production'),
(183, 'SN200120230119', 'Kabel Roll isi 6', 8, 'Kabel Roll', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media production'),
(184, 'SN200120230120', 'Kabel Roll isi 6', 8, 'Kabel Roll', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(185, 'SN200120230121', 'Kabel Roll isi 1', 8, 'Kabel Roll', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(186, 'KBLRLISI1', 'Kabel Roll isi 1', 8, 'Kabel Roll', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(187, 'DRUMSET01', 'Drumset ', 8, 'Drumset', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Tom 2, Floor 2, Bass drum + pedal, hihat, crash 16\", crash 18\", Ride', '2023-01-28', 'Diskoperindag', 'Media Production'),
(188, 'TASCAMAKSTKCTRLFLTR', 'Tascam Acoustic Control Filter', 8, 'Tascam Acoustic Control Filter', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Tascam Acoustic Control Filter TM-AR1 + Stand', '2023-01-28', 'Diskoperindag', 'Media Production'),
(189, 'VFII01487', 'RCF HDL Speaker ', 8, 'RCF HDL Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(190, 'VHID00069', 'RCF HDL Speaker ', 8, 'RCF HDL Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(191, 'VFIZ01512', 'RCF HDL Speaker ', 5, 'Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(192, 'VHIQ00072', 'RCF HDL Speaker ', 8, 'RCF HDL Speake', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(193, 'VFIH01478', 'RCF HDL Speaker ', 8, 'RCF HDL Speaker ', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(194, 'VFIC01489', 'RCF HDL Speaker ', 8, 'RCF HDL Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(195, 'VFID01492', 'RCF HDL Speaker ', 8, 'RCF HDL Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(196, '22031505', 'RCF DX4008 Digital audio processor ', 8, 'Digital Audio Processor', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '4 input 8 out ', '2023-01-28', 'Diskoperindag', 'Media Production'),
(197, 'PRIMATCHFX6MXR8CHNL', 'Primatech FX 6 Mixer 8 Channel ', 8, 'Primatech', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production'),
(199, 'WIPROBENGLSTRKKNCL', 'Wipro Obeng Listrik dan Kunci L', 8, 'Obeng Listrik dan Kunci L', 'Aktif', 'R. Podcast', 5, 'Lantai 2', '(Ruang Broadcast)', '2023-01-28', 'Diskoperindag', 'MEP'),
(200, '', 'Wipro Kunci L bentuk T ', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Kunci L 1 set', '2023-01-28', 'Diskoperindag', 'MEP'),
(201, '', 'Wipro Tang ', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Tang Satu Set', '2023-01-28', 'Diskoperindag', 'MEP'),
(202, '', 'Wipro Kunci Shock', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Kunci Shock Satu Set', '2023-01-28', 'Diskoperindag', 'MEP'),
(203, '', 'Wipro Obeng Mekanik ', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Obeng Mekanik Satu Set', '2023-01-28', 'Diskoperindag', 'MEP'),
(204, '', 'Wipro Tang Press ', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Tang Press Satu Set', '2023-01-28', 'Diskoperindag', 'MEP'),
(205, '', 'Wipro Palu ', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Palu Satu Set', '2023-01-28', 'Diskoperindag', 'MEP'),
(206, '33020062669', 'Ryu Grinder Baterai                   ', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Grinder Baterai  ', '2023-01-28', 'Diskoperindag', 'MEP'),
(207, '1682423Y', 'Makita Bor Listrik Portable                            ', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Bor Listrik Portable  ', '2023-01-28', 'Diskoperindag', 'MEP'),
(208, '33020062669', 'Ryu Grinder Baterai                   ', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Grinder Baterai  ', '2023-01-28', 'Diskoperindag', 'MEP'),
(209, '', 'Sicco Mask Filter ', 8, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Mask Filter 2 Pieces', '2023-01-28', 'Diskoperindag', 'MEP'),
(210, '2182386', 'TASCAM MIXCAST 4', 8, 'Tascam', 'Aktif', 'R. Podcast', 0, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(211, 'S211004754571', 'BEHRINGER XENYX 1202FX ', 8, 'BEHRINGER ', 'Aktif', 'R. Podcast', 0, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(212, 'S27AG320N', 'MONITOR SAMSUNG ', 8, 'Monitor', 'Aktif', 'R. Recording', 0, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(213, 'Ultra DI – D100', 'DI Box Behringer', 8, '', 'Aktif', 'R. Studio band', 0, 'Lantai 4', '', '2023-01-28', 'Diskopindag', 'Media Production'),
(214, '', 'New Bowens Grid Softbox ', 8, 'Softbox Octa 140cm', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(215, '', 'New Bowens Grid Softbox', 8, 'Softbox (35cm x 160cm)', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(216, '', 'Bowens Mount Octangular Umbrella Grid Softbox ', 8, 'Umbrella Grid Softbox (Octa 80 cm)', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(217, '', 'Pro One Lumos SL-360A', 8, 'LED', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(218, '6MH02W20791', 'Aputure Light Storm 600d ', 8, 'Light Storm', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(219, '6MH02V15829', 'Aputure Light Storm 600d ', 8, 'Light Storm', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(220, '21G00162649', 'Godox AD600 Pro ', 8, 'Video Light', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(221, '', 'New Bowens Grid Softbox', 8, 'Softbox (35cm x 160cm)', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(222, '6LT01J18150', 'Aputure Nova P600c Kit ', 8, 'LED Panel', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(223, '6ET05A69014', 'Aputure Nova P300c ', 8, 'LED Panel', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(224, '706427511197', 'Background Set', 8, 'Background Set\n', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production'),
(225, '9B2221A24751', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 2)', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(226, '9B2221A24743', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 2)', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(227, '9B2221A24755', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 2)', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(228, 'C02JG023Q6W8', 'IMAC 2', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB Internal: 512GB\nSN: C02JG023Q6W8\nSN Mouse: CC2213200500YXGAJ\nSN Keyboard: F0T2386RKHC0XV7AF', '2023-01-30', 'Diskoperindag', 'IT'),
(229, '9B2221A24749', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 2)', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(230, '9B2221A24746', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 2)', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(231, 'C02J7147Q6W8', 'IMAC 4', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512GB\nSN: C02J7147Q6W8\nSN Mouse: CC2213200430YXGAJ\nSN Keyboard: F0T2126RM360XV7AD', '2023-01-30', 'Diskoperindag', 'IT'),
(232, '9B2152A06158', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 2)\n', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(233, 'C02J7143Q6W8', 'IMAC 5', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512GB\nSN: C02J7143Q6W8\nSN Mouse: CC2213200450YXGAG\nSN Keyboard: F0T2126RM400XV7AG', '2023-01-30', 'Diskoperindag', 'IT'),
(234, '9B2221A24744', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 2)\n', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(235, 'C02J80EXQ6W8', 'IMAC 6', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512Gb\nSN: C02J80EXQ6W8\nSN Mouse: CC2213200590YXGA9\nSN Keyboard: F0T2326RGQQ0XV7A3', '2023-01-30', 'Diskoperindag', 'IT'),
(236, '9B2151A03332', 'APC BX1600MI-MS', 8, 'UPS (Ruang komputer 2)\n', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(237, 'C02JG01MQ6W8', 'IMAC 7', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512Gb\nSN: C02JG01MQ6W8\nSN Mouse: CC2213200630YXGAC\nSN Keyboard: F0T2363RGT60XV7A3', '2023-01-30', 'Diskoperindag', 'IT'),
(238, 'C02J80F4Q6W8', 'IMAC 8', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512GB\nSN: C02J80F4Q6W8\nSN Mouse: CC22132008D0YXGAW\nSN Keyboard: F0T2126RM3H0XV7A2', '2023-01-30', 'Diskoperindag', 'IT'),
(239, 'C02J80F8Q6W8', 'IMAC 9', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512GB\nSN: C02J80F8Q6W8\nSN Mouse: CC2213200830YXGA6\nSN Keyboard: F0T2326RGPX0XV7AZ', '2023-01-30', 'Diskoperindag', 'IT'),
(240, 'C02J713TQ6W8', 'IMAC 10', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512GB\nSN: C02J713TQ6W8\nSN Mouse: CC22132006N0YXGAT\nSN Keyboard: F0T2126RM4D0XV7A3', '2023-01-30', 'Diskoperindag', 'IT'),
(241, 'C02J713XQ6W8', 'IMAC 11', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512Gb\nSN: C02J713XQ6W8\nSN Mouse: CC2213200350YXGAK\nSN Keyboard: F0T2126RM320XV7AH', '2023-01-30', 'Diskoperindag', 'IT'),
(242, 'C02J7141Q6W8', 'IMAC 12', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512GB\nSN: C02J7141Q6W8\nSN Mouse: CC22132006R0YXGAQ\nSN Keyboard: F0T2126RM3AOXV7A9', '2023-01-30', 'Diskoperindag', 'IT'),
(243, '9B2221A24759', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 1)', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', ' Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(244, '9B2151A03448', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 1)', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(245, '9B2221A24756', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 1)', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(246, '9B2221A24753', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 1)', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT '),
(247, '9B2221A24761', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 1)\n', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(248, '9B2221A24770', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 1)', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(249, '9B2221A24752', 'APC BX1600MI-MS', 8, 'UPS', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(250, '9B2144A35411', 'APC BX1600MI-MS', 8, 'UPS', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(251, '9B2217A11265', 'APC BX1600MI-MS', 8, 'UPS', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(252, '9B2140A07201', 'APC BX1600MI-MS', 8, 'UPS ', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(253, '9B2144A35431', 'APC BX1600MI-MS', 8, 'UPS', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(254, '9B2152A05641', 'APC BX1600MI-MS', 8, 'UPS', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(255, '9B2144A35428', 'APC BX1600MI-MS', 8, 'UPS', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT'),
(256, '9B2144A35425', 'APC BX1600MI-MS', 8, 'UPS', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT '),
(257, 'UDVUYSD0082420190F0601', 'Komputer 29', 8, 'Komputer', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7\nRAM : 16Gb DDR4\nType : SSD 500gb\nGraphics : Intel UHD Graphics 750\nGraphics : Nvidia GeForce GT 720\nSN : UDVUYSD0082420190F0601', '2023-01-30', 'Diskoperindag', 'IT'),
(258, 'UDVUYSD008242018D40601', 'Komputer 30', 8, 'Komputer', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7\nRAM : 16Gb DDR4\nType : SSD 500gb\nGraphics : Intel UHD Graphics 750\nGraphics : Nvidia GeForce GT 720\nSN : UDVUYSD008242018D40601\n', '2023-01-30', 'Diskoperindag', 'IT'),
(259, 'UDVUYSD008242018FC0601', 'Komputer 31', 8, 'Komputer', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7\nRAM : 16Gb DDR4\nType : SSD 500gb\nGraphics : Intel UHD Graphics 750\nGraphics : Nvidia GeForce GT 720\nSN : UDVUYSD008242018FC0601', '2023-01-30', 'Diskoperindag', 'IT'),
(260, 'UDVUYSD008242018CD0601', 'Komputer 32', 8, 'Komputer', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7\nRAM : 16Gb DDR4\nType : SSD 500G\nGraphics 1 : Intel UHD Graphics 750\nGraphics 2 : NVIDIA GeGorce GT 720\nSN : UDVUYSD008242018CD0601', '2023-01-30', 'Diskoperindag', 'IT'),
(261, 'UDVUYSD008242018F20601', 'Komputer 33', 8, 'Komputer', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7\nRAM : 16Gb DDR4\nType : SSD 500G\nGraphics 1 : Intel UHD Graphics 750\nGraphics 2 : NVIDIA GeGorce GT 720\nSN : UDVUYSD008242018F20601', '2023-01-30', 'Diskoperindag', 'IT'),
(262, 'UDVUYSD008242018F50601', 'Komputer 34', 8, 'Komputer', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7\nRAM : 16Gb DDR4\nType : SSD 500G\nGraphics 1 : Intel UHD Graphics 750\nGraphics 2 : NVIDIA GeGorce GT 720\nSN : UDVUYSD008242018F50601\n', '2023-01-30', 'Diskoperindag', 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id_item` int(11) NOT NULL,
  `sn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nama_item` varchar(100) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `lokasi` varchar(40) NOT NULL,
  `id_lokasi` int(11) NOT NULL,
  `lantai` varchar(40) NOT NULL,
  `spesifikasi` varchar(255) NOT NULL,
  `tgl_terima` date DEFAULT current_timestamp(),
  `pic` varchar(255) NOT NULL,
  `departemen` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id_item`, `sn`, `nama_item`, `id_satuan`, `deskripsi`, `status`, `lokasi`, `id_lokasi`, `lantai`, `spesifikasi`, `tgl_terima`, `pic`, `departemen`, `created`, `updated`) VALUES
(1, 'UDVUYSD004234007B00601', 'Komputer 1', 8, '', 'Aktif', '7', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7 RAM : 16Gb DDR4 Type : SSD 1 Tera Graphics : Intel UHD Graphics 750', '2022-12-06', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(2, 'UDVUYSD00423102D080601', 'Komputer 2', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7 RAM : 16Gb DDR4 Type : SSD 1 Tera Graphics : Intel UHD Graphics 750', '2023-01-30', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(3, 'UDVUYSD004234008080601', 'Komputer 3', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7 RAM : 16Gb DDR4 Type : SSD 1 Tera Graphics : Intel UHD Graphics 750', '2023-01-30', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(4, 'UDVUYSD004234007E20601', 'Komputer 4', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7 RAM 16GB DDR4 Type : SSD 1 Tera Graphics : Intel UHD Graphic 750', '2023-01-30', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(5, 'UDVUYSD004234007D80601', 'Komputer 5', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7 RAM 16GB DDR4 Type : SSD 1 Tera Graphics : Intel UHD Graphic 750', '2023-01-30', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(6, 'UDVUYSD004234007DA0601', 'Komputer 6', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7 RAM : 16Gb DDR4 Type : SSD 1 Tera Graphics : Intel UHD Graphics 750', '2023-01-30', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(7, 'UDVUYSD0042340080A0601', 'Komputer 7', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7 RAM : 16Gb DDR4 Type : ssd 1TB Graphics : Intel UHD Graphics 750', '2023-01-30', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(8, 'UDVUYSD004234007DB0601', 'Komputer 8', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7 RAM : 16Gb DDR4 Type : ssd 1TB Graphics : Intel UHD Graphics 750', '2023-01-30', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(9, 'UDVUYSD004234007E60601', 'Komputer 9', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7RAM : 16Gb DDR4Type : SSD 1 TeraGraphics : Intel UHD Graphics 750', '2023-01-30', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(10, 'UDVUYSD004234007CD0601', 'Komputer 10', 8, '', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7RAM : 16Gb DDR4Type : SSD 1 TeraGraphics : Intel UHD Graphics 750', '2023-01-30', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(11, 'UDVUYSD004234007B50601', 'Komputer 11', 8, '', 'Aktif', 'R. Customer Service', 22, 'Lantai 2', 'CPU : 11th Gen Intel Core i7RAM : 16Gb DDR4Type : SSD 1 TeraGraphics : Intel UHD Graphics 750', '2023-01-30', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(12, 'UDVUYSD004234007CA0601', 'Komputer 12', 8, '', 'Aktif', 'R. Customer Service', 22, 'Lantai 2', 'CPU : 11th Gen Intel Core i7RAM 16GB DDR4Type : SSD 1 TeraGraphics : Intel UHD Graphic 750', '2023-01-30', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(13, 'UDVUYSD004234007E70601', 'Komputer 13', 8, '', 'Aktif', '7', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : SSD 1 Tera\r\nGraphics : Intel UHD Graphics 750\r\n', '2022-12-06', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(14, 'UDVUYSD004234007CB0601', 'Komputer 14', 8, '', 'Aktif', '7', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM 16GB DDR4\r\nType : SSD 1 Tera\r\nGraphics : Intel UHD Graphic 750', '2022-12-06', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(15, 'UDVUYSD00423102CD80601', 'Komputer 15', 8, '', 'Aktif', '7', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : SSD 1 Tera\r\nGraphics : Intel UHD Graphics 750\r\n', '2022-12-06', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(16, 'UDVUYSD004234007E50601', 'Komputer 16', 8, '', 'Aktif', '7', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM 16GB DDR4\r\nType : SSD 1 Tera\r\nGraphics : Intel UHD Graphic 750\r\n', '2022-12-06', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(17, 'UDVUYSD008242018F90601', 'Komputer 17', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM 16GB DDR4\r\nType : SSD 500GB\r\nGraphics : Intel UHD Graphic 750\r\nGraphics 2 : Nvidia GeForce GT 720\r\n', '2022-12-06', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(18, 'UDVUYSD008242019020601', 'Komputer 18', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : ssd 500 gb\r\nGraphics : Intel UHD Graphics 750\r\nGraphics 2 : Nvidia GeForce GT 720', '2022-12-06', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(19, 'UDVUYSD008242018C70601', 'Komputer 19', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : SSD 1 Tera\r\nGraphics : Intel UHD Graphics 750\r\n', '2022-12-06', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(20, 'UDVUYSD0042300370C0601', 'Komputer 20', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : SSD 1 Tera\r\nGraphics : Intel UHD Graphics 750\r\n', '2022-12-06', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(21, 'UDVUYSD008242019200601', 'Komputer 21', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : hdd 500 gb\r\nGraphics : Intel UHD Graphics 750\r\nGraphics 2 : Nvidia GeForce GT 720\r\n\r\n', '2022-12-06', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(22, 'UDVUYSD008242018DB0601', 'Komputer 22', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : SSD 500Gb\r\nGraphics : Intel UHD Graphics 750\r\nGraphics 2 : Nvidia GeForce GT 720\r\n', '2022-12-06', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(23, 'UDVUYSD008242018E40601', 'Komputer 23', 8, 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : Hdd 500 gb\r\nGraphics : Intel UHD Graphics 750\r\nGraphics 2 : Nvidia GeForce GT 720\r\nSN : UDVUYSD008242018E40601\r\n', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : Hdd 500 gb\r\nGraphics : Intel UHD Graphics 750\r\nGraphics 2 : Nvidia GeForce GT 720\r\n', '2022-12-06', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(24, 'UDVUYSD008242019060601', 'Komputer 24', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : SSD 1 Tera\r\nGraphics : Intel UHD Graphics 750\r\n', '2022-12-06', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(25, 'UDVUYSD008242018C50601', 'Komputer 25', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : ssd 500 gb\r\nGraphics : Intel UHD Graphics 750\r\nGraphics 2 : Nvidia GeForce GT 720\r\n', '2022-12-06', 'Disperindag', 'IT', '2023-03-04 13:20:08', NULL),
(26, 'UDVUYSD008242018BF0601', 'Komputer 26', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : SSD 500Gb\r\nGraphics : Intel UHD Graphics 750\r\nGraphics 2 : Nvidia GeForce GT 720\r\n', '2022-12-06', 'Disperindag', 'IT', '2023-03-04 13:20:08', NULL),
(27, 'UDVUYSD008242018C80601', 'Komputer 27', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'CPU : 11th Gen Intel Core i7\r\nRAM : 16Gb DDR4\r\nType : SSD 500Gb\r\nGraphics : Intel UHD Graphics 750\r\nGraphics 2 : Nvidia GeForce GT 720\r\n', '2022-12-06', 'Disperindag', 'IT', '2023-03-04 13:20:08', NULL),
(28, 'UDVUYSD08242018C60601', 'Komputer 28', 8, '', 'Aktif', 'R. Control Room', 20, 'Lantai 1', 'CPU : 11th Gen Intel Core i7RAM : 16Gb DDR4Type : ssd 500 gbGraphics : Intel UHD Graphics 750Graphics 2 : Nvidia GeForce GT 720', '2023-01-30', 'Disperindag', 'IT', '2023-03-04 13:20:08', NULL),
(29, 'C02J71HJQ6W8', 'IMAC 1', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB Internal: 512GB\nSN Mouse: CC2213200080YXGAR\nSN Keyboard: F0T139600050XV7AX', '2023-01-26', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(30, 'C02J713YQ6W8', 'IMAC 3', 8, '', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB Internal: 512GB SN: C02J713YQ6W8\nSN Mouse: CC2213200360YXGAJ\nSN Keyboard: F0T2126RM2G0XV7A6\n', '2023-01-26', 'Diskopindag', 'IT', '2023-03-04 13:20:08', NULL),
(31, 'N6NRKD00358526F', 'ASUS ROG ', 8, 'Laptop', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(32, '4549292142327', 'CANON EOS M200 ', 8, 'Kamera', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(33, 'SNCABLE200120230001', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(34, 'SNSNYA72001202300002', 'SONY A7 III (p-32829440-E)', 8, 'Kamera', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(35, 'SNLENSASNYFE2020012023003', 'LENSA SONY FE 20 F 1.8 G (p-32848340-E)', 8, 'Lensa Kamera', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(36, 'SNLENSASNYFE3520012023004', 'LENSA SONY FE 35MM F 1.8 (p-32848140-c)', 8, 'Lensa Kamera', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(37, 'SNLENSASNYFE852001202300005', 'LENSA SONY FE 85 F 1.8 (p-32846940-i) ', 8, 'Lensa Kamera', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(38, 'SNCABLELINEIN200120230006', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(39, 'SNCABLELINEIN200120230007', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(40, 'SNCABLELINEIN200120230008', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(41, '7900137', 'SONY FX 6 (7900137)', 8, 'Kamera (Body only)', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(42, 'SNCABLELINEIN200120230009', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(43, '7900138', 'SONY FX 6 (7900138)', 8, 'Kamera (Body only)', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(44, 'SNCABLELINEIN200120230010', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(45, '7900155', 'SONY FX 6 (7900155)', 8, 'Kamera (Body only)', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(46, 'SNMMSNY64GB200120230011', 'MEMORI SONY TOUGH (SF-M64T/T1) 64GB', 8, 'Memory Card', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(47, 'SNCABLELINEIN200120230012', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(48, 'SNCABLELINEIN200120230013', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(49, 'SNTRIPODGA752200120230014', 'TRIPOD E-IMAGE GA752', 8, 'Tripod Kamera', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(50, 'SNCABLELINEXLR200120230015', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(51, '9338716007978', 'BLACKMAGIC ATEM SDI  EXTREME ISO (9338716007978)', 8, '', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(52, 'S211004754571', 'BEHRINGER XENYX 1202FX (S211004754571)', 8, '', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(53, 'SNCABLEMICMGMGLD200120230016', 'Kabel Microphone Mogami Gold Studio', 8, 'Cable', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'Neutrix XLR-Male to XLR-Female 5 meter', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(54, '2182386', 'TASCAM MIXCAST 4 (2182386)', 8, '', 'Aktif', '', 0, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(55, 'SNCABLEMICMGMGLD200120230017', 'Kabel Microphone Mogami Gold Studio', 8, 'Cable', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'Neutrix XLR-Male to XLR-Female 5 meter', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(56, 'SNCABLEHDMIBAFO200120230018', 'HDMI BAFO', 8, '', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(57, 'S27AG320NE ', 'MONITOR SAMSUNG ', 8, 'Monitor', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(58, 'SNCABLEMICMGMGLD200120230019', 'Kabel Microphone Mogami Gold Studio', 8, 'Cable', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'Neutrix XLR-Male to XLR-Female 5 meter', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(59, '249922349712', 'PC CORE I9 ', 8, 'PC', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(60, 'SNCABLEMICMGMGLD200120230020', 'Kabel Microphone Mogami Gold Studio', 8, 'Cable', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'Neutrik XLR-Male to XLR-Female 5 meter', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(61, 'SNCABLERLUTCN200120230021', 'Kabel roll Uticon ', 8, '25 meter 4 Lubang', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(62, '10222026|17509', 'Mixer Adlive 20 Pro ', 8, 'Mixer', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(63, 'SNCABLEINSTGTRMGMGLD200120230022', 'Kabel Instrument Guitar Mogami Gold', 8, 'Cable', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'Neutrik Silent Plug S R - 5 meter ', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(64, 'SNCBLMICQA200120230023', 'Microphone Cable merk QA electronic', 8, '', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(65, 'SNCBLPWRTM2021200120230024', 'Cable Power Tm 2021 ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(66, 'SNCBLPWRJCK65200120230025', 'Cable Power + Jack 6,5 ', 8, 'Panjang 1/2 meter', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(67, 'SNCBLINSGTRMGMGLD200120230026', 'Kabel Instrument Guitar Mogami Gold', 8, 'Cable', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'Neutrik Silent Plug S R - 5 meter ', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(68, 'SNCBLPWRLP2013200120230027', 'Cable Power Longwell-P 2013 ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(69, 'SNCBLPWRSMWN2014200120230028', 'Cable Power Sam Won 2014', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(70, 'SN200120230029', 'Cable Power Longwell-P 2014', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(71, 'SN200120230030', 'Kabel Instrument Guitar Mogami Gold', 8, 'Cable', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'Neutrik Silent Plug S R - 5 meter ', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(72, 'SN200120230031', 'Cable Power Longwell-P 2012', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(73, 'SN200120230032', 'Cable Power RD 2021 ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(74, 'SN200120230033', 'Cable Blue Tweeter Yurito ', 8, 'Cable ', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(75, 'SN200120230034', 'Speaker Monito HR Audio ', 8, 'Speaker ', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(76, '1882A ', 'Subwoofer ', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(77, 'N290622 ', 'Tweeter ', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(78, 'SN200120230035', 'Cable Power Sucofindo', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(79, 'SN200120230036', 'Kabel Instrument Guitar Mogami Gold', 8, 'Cable', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'Neutrik Silent Plug S R - 5 meter ', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(80, 'GB5023-1997 ', 'Cable power Mitoyouri ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(81, 'SN200120230037', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(82, 'SN200120230038', 'Mic Audio Technica ', 8, 'Microphone', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'AT2020 7126', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(83, 'SN200120230039', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(84, 'SN200120230040', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(85, 'SN200120230041', 'Mic Audio Technica ', 8, 'Microphone', 'Aktif', 'R. Podcast', 0, 'Lantai 2', 'AT2020 7085', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(86, 'SN200120230042', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(87, 'SN200120230043', 'Mic Audio Technica ', 8, 'Microphone', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'AT2020 7097', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(88, 'SN200120230044', 'Cable Made In Italy Line In / Out XLR ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(89, 'SN200120230045', 'Cable Blue Tweeter Yurito ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(90, 'SN200120230046', 'Mic Audio Technica ', 8, 'Microphone', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'AT2020 6661', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(91, 'SN200120230047', 'Professional Microphone Stand ', 8, 'Microphone Stand ', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(92, 'N290622 ', 'Tweeter ', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(93, 'SN200120230048', 'Pro Microphone Stand ', 8, 'Microphone Stand ', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(94, '1882A ', 'Subwoofer ', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(95, 'SN200120230049', 'Speaker Monitor HR Audio ', 8, 'Speaker ', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(96, 'SN200120230050', 'Headphone Audio Technica ', 8, 'Headphone', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'ATH-M20X 214909001758', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(97, 'SN200120230051', 'Headphone Audio Technica ', 8, 'Headphone ', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'ATH-M20X 220409000737', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(98, 'SN200120230052', 'HDMI BAFO', 8, '', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(99, 'SN200120230053', 'Cable Power + Jack 6,5 ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', 'Panjang 1/2 meter', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(100, 'SN200120230054', 'Cable Power Tm 2021 ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(101, 'SN200120230055', 'Cable Power Tm 2021 ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(102, 'SN200120230056', 'Headphone Audio Technica ', 8, 'Headphone ', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'ATH-M20X 214409011908', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(103, 'SN200120230057', 'Cable Power Tm 2021 ', 8, 'Cable', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(104, 'SN200120230058', 'Kabel roll Uticon ', 8, '25 meter 4 Lubang', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(105, 'SN200120230059', 'Kabel roll Uticon ', 8, '25 meter 4 Lubang ', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(106, '220409000731', 'Headphone Audio Technica ', 8, 'Headphone ', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'ATH-M20X ', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(107, 'SN200120230060', 'Monitor Speaker Pro HR', 8, 'Monitor Speaker', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(108, 'SN200120230061', 'Primatech Sound Out 2', 8, 'Sound', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(109, 'SN200120230062', 'Monitor Speaker Pro HR ', 8, 'Monitor Speaker', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(110, 'SN200120230063', 'Set box kabel jack', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(111, 'SN200120230064', 'Keyboard Korg - Kross', 8, 'Keyboard', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(112, '68806207001030', 'Microphone Wireless Primatech PR-688 ', 8, 'Microphone Wireless', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(113, 'SN200120230065', 'Pro Microphone Stand', 8, 'Micorphone Stand', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(114, '68806207001005', 'Microphone Wireless Primatech PR-688 ', 8, 'Microphone Wireless', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(115, 'SN200120230066', 'Pro Microphone Stand', 8, 'Micorphone Stand', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(116, 'SN200120230067', 'Pro Microphone Stand', 8, 'Micorphone Stand', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(117, '2051373CPOL0186', 'Mixer Mackie Pro FX 10 V3 ', 8, 'Mixer ', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(119, '90006201001605', 'Microphone PR - 900 Primatech Dynamic ', 8, 'Microphone', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(120, 'SN200120230068', 'Microphone Stand Circle - PMX BS 109', 8, 'Microphone Stand', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(121, 'SN200120230069', 'Dynamic Kit Drum Krezt', 8, 'Drum', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Krezt - KR 7 ANV', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(122, 'SN200120230070', 'Guitar - Darieos', 8, 'Guitar', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(123, 'SN200120230071', 'Guitar - Darieos 2', 8, 'Guitar', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(124, 'QA202204000356', 'Microphone Wireless QA Electronic', 8, 'Microphone Wireless ', 'Aktif', 'R. Recording', 10, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(125, '1B1D22217609', 'UPS ICA CE1200 ', 8, 'UPS', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(126, 'SN200120230072', 'Bass - Basesinten', 8, 'Bass ', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(127, 'SN200120230073', 'Stand Arm Tascam TM-AM2', 8, 'Stand Arm Tascam ', 'Aktif', 'R. Podcast', 5, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(128, 'SN200120230074', 'Amplifier Guitar - Roland Jazz Chorus - Jazz Chorus 120', 8, 'Amplifier Guitar', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(129, 'Ultra G - GI 100', 'DI Box Behringer (Ultra DI – D100) ', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(130, 'SN200120230075', 'Stand Arm Tascam TM-AM2', 8, 'Stand Arm Tascam', 'Aktif', 'R. Podcast', 5, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(131, 'ZBTP390-A', 'Cymbal Set up - ZBT ', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(132, '', 'Stand Arm Tascam TM-AM2', 8, 'Stand Arm Tascam ', 'Aktif', 'R. Podcast', 5, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(133, '', 'Keyboard amplifier - KC 550', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(134, '', 'Amplifier Roland KC-990 Z7N4062', 8, 'Amplifier', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(135, '', 'Stand Arm Tascam TM-AM2', 8, 'Stand Arm Tascam', 'Aktif', 'R. Podcast', 5, 'Lantai 2', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(136, '', 'Guitar Amplifier - RH 200SC - G2 Series', 8, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(137, '', 'Amplifier Guitar Dual Rectifier ', 8, 'Amplifier Guitar', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Dual Rectifier - Solo Head', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(138, '', 'Subwoofer Proel S15A 00598', 8, 'Subwoofer', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production ', '2023-03-04 13:20:08', NULL),
(139, '', 'Kabel Power + Jack Speaker ', 10, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(140, '', 'Headphone AKG K52 ', 8, 'Headphone ', 'Aktif', 'R. Podcast', 5, 'Lantai 2', 'MI4021-551300', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(141, '', 'Subwoofer Proel S15A 00317', 8, 'Subwoofer', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(142, '', 'Kabel Power + Jack Speaker ', 10, '', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(143, '', 'Mic Beyerdynamic FD803', 8, 'Microphone', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(144, '', 'Headamp Markbass Little Mark 800', 8, 'Headamp', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(145, '', 'Mic Beyerdynamic FD803', 8, 'Microphone', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(146, '', 'Amplifier Markbass', 8, 'Amplifier', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(147, '', 'Speaker Gantung Audio Center', 8, 'Speaker Gantung ', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media production ', '2023-03-04 13:20:08', NULL),
(148, '', 'Studio Monitor Eikon EK8NF 00324', 8, 'Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(149, '', 'Speaker Gantung Audio Center', 8, 'Speaker Ganatung ', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(150, '', 'Studio Monitor Eikon EK8NF 00323', 8, 'Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(151, '', 'Studio Subwoofer Eikon EK10SW 00068', 8, 'Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(152, 'S210400054C47', 'Studio Monitor Tannoy Reveal 502 ', 8, 'Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(153, '', 'Kabel Snake', 8, 'Kabel Snake', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(154, 'S210400065C47', 'Studio Monitor Tannoy Reveal 502 ', 8, 'Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(155, '2206LZ009E29', 'Logitech Brio 4K Pro Webcam  C1000e ', 8, 'Webcam ', 'Aktif', 'R. Podcast', 5, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(156, '', 'Kabel Instrument', 8, 'Kabel Instrument', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(157, '', 'Kabel Instrument', 8, 'Kabel Instrument\n', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(158, '', 'Kabel Instrument', 8, 'Kabel Instrument\n', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(159, '', 'Kabel Instrument', 8, 'Kabel Instrument\n', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(160, 'SN200120230097', 'Kabel Instrument', 8, 'Kabel Instrument\n', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(161, 'INAFBX01148', 'Yamaha HS5 ', 8, 'Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(162, 'SN200120230098', 'Kabel Instrument', 8, 'Kabel Instrument\n', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(163, 'SN200120230099', 'Kabel XLR Male to XLR Female', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(164, 'SN200120230100', 'Kabel XLR Male to XLR Female', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media production', '2023-03-04 13:20:08', NULL),
(165, 'SN200120230101', 'Kabel XLR Male to XLR Female', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(166, 'SN200120230102', 'Mixer Studiolive 32SX', 8, 'Mixer ', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(167, 'SN200120230103', 'Kabel XLR Male to XLR Female', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(168, 'SN200120230104', 'Kabel XLR Male to XLR Female', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(169, 'SN200120230105', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(170, 'SN200120230106', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(171, 'SN200120230107', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production ', '2023-03-04 13:20:08', NULL),
(172, 'SN200120230108', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(173, 'SN200120230109', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(174, 'SN200120230110', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(175, 'SN200120230111', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(176, 'SN200120230112', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(177, 'SN200120230113', 'Kabel XLR Male to XLR Female ', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(178, 'SN200120230114', 'Kabel XLR Male to XLR Female', 8, 'Kabel', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang  5m', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(179, 'SN200120230115', 'Kabel Roll isi 4 ', 8, 'Kabel Roll', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(180, 'SN200120230116', 'Kabel Roll isi 4 ', 8, 'Kabel Roll', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(181, 'SN200120230117', 'Kabel Roll isi 4 ', 8, 'Kabel Roll', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(182, 'SN200120230118', 'Kabel Roll isi 4 ', 8, 'Kabel Roll ', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Panjang 5m', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(183, 'SN200120230119', 'Kabel Roll isi 6', 8, 'Kabel Roll', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media production', '2023-03-04 13:20:08', NULL),
(184, 'SN200120230120', 'Kabel Roll isi 6', 8, 'Kabel Roll', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(185, 'SN200120230121', 'Kabel Roll isi 1', 8, 'Kabel Roll', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(186, '', 'Kabel Roll isi 1', 8, 'Kabel Roll', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(187, '', 'Drumset ', 8, 'Drumset', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Tom 2, Floor 2, Bass drum + pedal, hihat, crash 16\", crash 18\", Ride', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(188, '', 'Tascam Acoustic Control Filter', 8, 'Tascam Acoustic Control Filter', 'Aktif', 'R. Studio band', 13, 'Lantai 4', 'Tascam Acoustic Control Filter TM-AR1 + Stand', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(189, 'VFII01487', 'RCF HDL Speaker ', 8, 'RCF HDL Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(190, 'VHID00069', 'RCF HDL Speaker ', 8, 'RCF HDL Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(191, 'VFIZ01512', 'RCF HDL Speaker ', 5, 'Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(192, 'VHIQ00072', 'RCF HDL Speaker ', 8, 'RCF HDL Speake', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(193, 'VFIH01478', 'RCF HDL Speaker ', 8, 'RCF HDL Speaker ', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(194, 'VFIC01489', 'RCF HDL Speaker ', 8, 'RCF HDL Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(195, 'VFID01492', 'RCF HDL Speaker ', 8, 'RCF HDL Speaker', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(196, '22031505', 'RCF DX4008 Digital audio processor ', 8, 'Digital Audio Processor', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '4 input 8 out ', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(197, '', 'Primatech FX 6 Mixer 8 Channel ', 8, 'Primatech', 'Aktif', 'R. Studio band', 13, 'Lantai 4', '', '2023-01-27', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(199, '', 'Wipro Obeng Listrik dan Kunci L', 8, 'Obeng Listrik dan Kunci L', 'Aktif', 'R. Podcast', 5, 'Lantai 2', '(Ruang Broadcast)', '2023-01-28', 'Diskoperindag', 'MEP', '2023-03-04 13:20:08', NULL),
(200, '', 'Wipro Kunci L bentuk T ', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Kunci L 1 set', '2023-01-28', 'Diskoperindag', 'MEP', '2023-03-04 13:20:08', NULL),
(201, '', 'Wipro Tang ', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Tang Satu Set', '2023-01-28', 'Diskoperindag', 'MEP', '2023-03-04 13:20:08', NULL),
(202, '', 'Wipro Kunci Shock', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Kunci Shock Satu Set', '2023-01-28', 'Diskoperindag', 'MEP', '2023-03-04 13:20:08', NULL),
(203, '', 'Wipro Obeng Mekanik ', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Obeng Mekanik Satu Set', '2023-01-28', 'Diskoperindag', 'MEP', '2023-03-04 13:20:08', NULL),
(204, '', 'Wipro Tang Press ', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Tang Press Satu Set', '2023-01-28', 'Diskoperindag', 'MEP', '2023-03-04 13:20:08', NULL),
(205, '', 'Wipro Palu ', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Palu Satu Set', '2023-01-28', 'Diskoperindag', 'MEP', '2023-03-04 13:20:08', NULL),
(206, '33020062669', 'Ryu Grinder Baterai                   ', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Grinder Baterai  ', '2023-01-28', 'Diskoperindag', 'MEP', '2023-03-04 13:20:08', NULL),
(207, '1682423Y', 'Makita Bor Listrik Portable                            ', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Bor Listrik Portable  ', '2023-01-28', 'Diskoperindag', 'MEP', '2023-03-04 13:20:08', NULL),
(208, '33020062669', 'Ryu Grinder Baterai                   ', 10, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Grinder Baterai  ', '2023-01-28', 'Diskoperindag', 'MEP', '2023-03-04 13:20:08', NULL),
(209, 'A0002', 'Sicco Mask Filter ', 8, '', 'Aktif', 'R. Broadcast', 0, 'Lantai 2', 'Mask Filter 2 Pieces', '2023-01-28', 'Diskoperindag', 'MEP', '2023-03-04 13:20:08', NULL),
(210, '2182386', 'TASCAM MIXCAST 4', 8, 'Tascam', 'Aktif', 'R. Podcast', 0, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(211, 'S211004754571', 'BEHRINGER XENYX 1202FX ', 8, 'BEHRINGER ', 'Aktif', 'R. Podcast', 0, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(212, 'S27AG320N', 'MONITOR SAMSUNG ', 8, 'Monitor', 'Aktif', 'R. Recording', 0, 'Lantai 2', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(213, 'Ultra DI – D100', 'DI Box Behringer', 8, '', 'Aktif', 'R. Studio band', 0, 'Lantai 4', '', '2023-01-28', 'Diskopindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(214, '', 'New Bowens Grid Softbox ', 8, 'Softbox Octa 140cm', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(215, '', 'New Bowens Grid Softbox', 8, 'Softbox (35cm x 160cm)', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(216, '', 'Bowens Mount Octangular Umbrella Grid Softbox ', 8, 'Umbrella Grid Softbox (Octa 80 cm)', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(217, '', 'Pro One Lumos SL-360A', 8, 'LED', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(218, '6MH02W20791', 'Aputure Light Storm 600d ', 8, 'Light Storm', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(219, '6MH02V15829', 'Aputure Light Storm 600d ', 8, 'Light Storm', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(220, '21G00162649', 'Godox AD600 Pro ', 8, 'Video Light', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(221, '', 'New Bowens Grid Softbox', 8, 'Softbox (35cm x 160cm)', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(222, '6LT01J18150', 'Aputure Nova P600c Kit ', 8, 'LED Panel', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(223, '6ET05A69014', 'Aputure Nova P300c ', 8, 'LED Panel', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(224, '706427511197', 'Background Set', 8, 'Background Set\n', 'Aktif', 'R. Fotografi', 0, 'Lantai 5', '', '2023-01-28', 'Diskoperindag', 'Media Production', '2023-03-04 13:20:08', NULL),
(225, '9B2221A24751', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 2)', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(226, '9B2221A24743', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 2)', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(227, '9B2221A24755', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 2)', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(228, 'C02JG023Q6W8', 'IMAC 2', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB Internal: 512GB\nSN: C02JG023Q6W8\nSN Mouse: CC2213200500YXGAJ\nSN Keyboard: F0T2386RKHC0XV7AF', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(229, '9B2221A24749', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 2)', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(230, '9B2221A24746', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 2)', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(231, 'C02J7147Q6W8', 'IMAC 4', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512GB\nSN: C02J7147Q6W8\nSN Mouse: CC2213200430YXGAJ\nSN Keyboard: F0T2126RM360XV7AD', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(232, '9B2152A06158', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 2)\n', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(233, 'C02J7143Q6W8', 'IMAC 5', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512GB\nSN: C02J7143Q6W8\nSN Mouse: CC2213200450YXGAG\nSN Keyboard: F0T2126RM400XV7AG', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(234, '9B2221A24744', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 2)\n', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(235, 'C02J80EXQ6W8', 'IMAC 6', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512Gb\nSN: C02J80EXQ6W8\nSN Mouse: CC2213200590YXGA9\nSN Keyboard: F0T2326RGQQ0XV7A3', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(236, '9B2151A03332', 'APC BX1600MI-MS', 8, 'UPS (Ruang komputer 2)\n', 'Aktif', 'R. Lab Komp.', 7, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(237, 'C02JG01MQ6W8', 'IMAC 7', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512Gb\nSN: C02JG01MQ6W8\nSN Mouse: CC2213200630YXGAC\nSN Keyboard: F0T2363RGT60XV7A3', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(238, 'C02J80F4Q6W8', 'IMAC 8', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512GB\nSN: C02J80F4Q6W8\nSN Mouse: CC22132008D0YXGAW\nSN Keyboard: F0T2126RM3H0XV7A2', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(239, 'C02J80F8Q6W8', 'IMAC 9', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512GB\nSN: C02J80F8Q6W8\nSN Mouse: CC2213200830YXGA6\nSN Keyboard: F0T2326RGPX0XV7AZ', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(240, 'C02J713TQ6W8', 'IMAC 10', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512GB\nSN: C02J713TQ6W8\nSN Mouse: CC22132006N0YXGAT\nSN Keyboard: F0T2126RM4D0XV7A3', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(241, 'C02J713XQ6W8', 'IMAC 11', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512Gb\nSN: C02J713XQ6W8\nSN Mouse: CC2213200350YXGAK\nSN Keyboard: F0T2126RM320XV7AH', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL);
INSERT INTO `items` (`id_item`, `sn`, `nama_item`, `id_satuan`, `deskripsi`, `status`, `lokasi`, `id_lokasi`, `lantai`, `spesifikasi`, `tgl_terima`, `pic`, `departemen`, `created`, `updated`) VALUES
(242, 'C02J7141Q6W8', 'IMAC 12', 8, 'Komputer', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Chip: Apple M1\nRAM: 8GB\nInternal: 512GB\nSN: C02J7141Q6W8\nSN Mouse: CC22132006R0YXGAQ\nSN Keyboard: F0T2126RM3AOXV7A9', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(243, '9B2221A24759', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 1)', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', ' Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(244, '9B2151A03448', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 1)', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(245, '9B2221A24756', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 1)', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(246, '9B2221A24753', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 1)', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT ', '2023-03-04 13:20:08', NULL),
(247, '9B2221A24761', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 1)\n', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(248, '9B2221A24770', 'APC BX1600MI-MS', 8, 'UPS (Ruang Komputer 1)', 'Aktif', 'R. Lab Komp.', 0, 'Lantai 4', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(249, '9B2221A24752', 'APC BX1600MI-MS', 8, 'UPS', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(250, '9B2144A35411', 'APC BX1600MI-MS', 8, 'UPS', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(251, '9B2217A11265', 'APC BX1600MI-MS', 8, 'UPS', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(252, '9B2140A07201', 'APC BX1600MI-MS', 8, 'UPS ', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(253, '9B2144A35431', 'APC BX1600MI-MS', 8, 'UPS', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(254, '9B2152A05641', 'APC BX1600MI-MS', 8, 'UPS', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(255, '9B2144A35428', 'APC BX1600MI-MS', 8, 'UPS', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(256, '9B2144A35425', 'APC BX1600MI-MS', 8, 'UPS', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'Daya 1600Va/900Watt', '2023-01-30', 'Diskoperindag', 'IT ', '2023-03-04 13:20:08', NULL),
(257, 'UDVUYSD0082420190F0601', 'Komputer 29', 8, 'Komputer', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7\nRAM : 16Gb DDR4\nType : SSD 500gb\nGraphics : Intel UHD Graphics 750\nGraphics : Nvidia GeForce GT 720\nSN : UDVUYSD0082420190F0601', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(258, 'UDVUYSD008242018D40601', 'Komputer 30', 8, 'Komputer', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7\nRAM : 16Gb DDR4\nType : SSD 500gb\nGraphics : Intel UHD Graphics 750\nGraphics : Nvidia GeForce GT 720\nSN : UDVUYSD008242018D40601\n', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(259, 'UDVUYSD008242018FC0601', 'Komputer 31', 8, 'Komputer', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7\nRAM : 16Gb DDR4\nType : SSD 500gb\nGraphics : Intel UHD Graphics 750\nGraphics : Nvidia GeForce GT 720\nSN : UDVUYSD008242018FC0601', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(260, 'UDVUYSD008242018CD0601', 'Komputer 32', 8, 'Komputer', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7\nRAM : 16Gb DDR4\nType : SSD 500G\nGraphics 1 : Intel UHD Graphics 750\nGraphics 2 : NVIDIA GeGorce GT 720\nSN : UDVUYSD008242018CD0601', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(261, 'UDVUYSD008242018F20601', 'Komputer 33', 8, 'Komputer', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7\nRAM : 16Gb DDR4\nType : SSD 500G\nGraphics 1 : Intel UHD Graphics 750\nGraphics 2 : NVIDIA GeGorce GT 720\nSN : UDVUYSD008242018F20601', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL),
(262, 'UDVUYSD008242018F50601', 'Komputer 34', 8, 'Komputer', 'Aktif', 'R. Pengelola gedung', 21, 'Lantai 6', 'CPU : 11th Gen Intel Core i7\nRAM : 16Gb DDR4\nType : SSD 500G\nGraphics 1 : Intel UHD Graphics 750\nGraphics 2 : NVIDIA GeGorce GT 720\nSN : UDVUYSD008242018F50601\n', '2023-01-30', 'Diskoperindag', 'IT', '2023-03-04 13:20:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` int(11) NOT NULL,
  `nm_lokasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `nm_lokasi`) VALUES
(0, 'R. Broadcast'),
(1, 'R. Animasi'),
(2, 'R. CO Working'),
(3, 'R. Rapat'),
(4, 'R. Kelas'),
(5, 'R. Podcast'),
(7, 'R. Lab Komp.'),
(8, 'R. Design Archive'),
(9, 'R. Creative Store'),
(10, 'R. Recording'),
(11, 'R. Workshop Batik'),
(12, 'R. Workshop Seni'),
(13, 'R. Studio Band'),
(14, 'R. Fashion'),
(15, 'R. Bioskop 1'),
(16, 'R. Bioskop 2'),
(17, 'R. Perpustakaan'),
(18, 'R. Pustakawan'),
(19, 'R. Informasi'),
(20, 'R. Control Room'),
(21, 'R. Pengelola Gedung'),
(22, 'R. Customer Service');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id_ruangan` int(11) NOT NULL,
  `nm_ruangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id_ruangan`, `nm_ruangan`) VALUES
(1, 'Lantai 2, Main Hall'),
(2, 'Lantai 2, Halaman Depan (Open Stage)'),
(3, 'Lantai 2, Ruang City Planning Gallery'),
(4, 'Lantai 2, Gallery UMKM'),
(5, 'Lantai 2, Open Public Space'),
(6, 'Lantai 2, Ruang Broadcast'),
(7, 'Lantai 2, Ruang Podcast'),
(8, 'Lantai 2, Ruang Animasi'),
(9, 'Lantai 3 Ruang Meeting'),
(10, 'Lantai 3, Food Lab'),
(11, 'Lantai 3, Hotel Kapsul'),
(12, 'Lantai 3, Kids Zone'),
(13, 'Lantai 3, Open Public Space'),
(14, 'Lantai 3, Ruang Kelas'),
(15, 'Lantai 3, Selasar Belakang'),
(16, 'Lantai 4, Shared Office Space 3'),
(17, 'Lantai 4, Co-Working Space 4'),
(18, 'Lantai 4, Lab. Komputer'),
(19, 'Lantai 4, Open Public Space'),
(20, 'Lantai 4, Ruang Workshop Batik / Kriya'),
(21, 'Lantai 4, Selasar Depan'),
(22, 'Lantai 4, Studio Band & Recording'),
(23, 'Lantai 4, R. Workshop Seni'),
(24, 'Lantai 5, Area Bean Bag'),
(25, 'Lantai 5, Area Open Public Space'),
(26, 'Lantai 5, Co-Working Space 1'),
(27, 'Lantai 5, Shared Office Space 2'),
(28, 'Lantai 5, Shared Office Space 3'),
(29, 'Lantai 5, Co-Working Space 4'),
(30, 'Lantai 5, Ruang Bioskop (Studio 1)'),
(31, 'Lantai 5, Ruang Bioskop (Studio 2)'),
(32, 'Lantai 5, Selasar Area Sofa'),
(33, 'Lantai 5, Studio Foto'),
(34, 'Lantai 5, Ruang Fashion'),
(35, 'Lantai 6, Ruang perpustakaan 1'),
(36, 'Lantai 6, Ruang Perpustakaan 2'),
(37, 'Lantai 6, Supermarket'),
(38, 'Lantai 6, Open Public Space'),
(39, 'Lantai 7, Auditorium'),
(40, 'Lantai 7, Ruang VVIP'),
(41, 'Lantai 7, Open Public Space'),
(42, 'Lantai 7, Selasar Sofa'),
(43, 'Lantai 8, Rooftop');

-- --------------------------------------------------------

--
-- Table structure for table `satker`
--

CREATE TABLE `satker` (
  `id_satker` int(11) NOT NULL,
  `kode_satker` int(11) NOT NULL,
  `nm_satker` varchar(100) NOT NULL,
  `jenis_kew` int(11) NOT NULL,
  `alamat_kantor` varchar(100) NOT NULL,
  `dt_satker` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `satker`
--

INSERT INTO `satker` (`id_satker`, `kode_satker`, `nm_satker`, `jenis_kew`, `alamat_kantor`, `dt_satker`) VALUES
(2, 876, 'Admin Building', 1, 'Malang', 2),
(3, 764, 'Admin CS', 2, 'Malang', 3),
(5, 234, 'Admin Enginering', 3, 'Malang', 5),
(6, 7654, 'Admin Media', 2, 'Malang', 6);

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `id_satuan` int(11) NOT NULL,
  `nm_satuan` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `eceran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `nm_satuan`, `jumlah`, `eceran`) VALUES
(1, 'lusin', 12, 'buah'),
(2, 'kodi', 20, 'buah'),
(3, 'gross', 144, 'buah'),
(4, 'rim', 500, 'lembar'),
(5, 'giga', 1000000, 'kilo'),
(8, 'unit', 1, '1'),
(9, 'galon', 16, 'liter'),
(10, 'box', 100, 'unit');

-- --------------------------------------------------------

--
-- Table structure for table `sop`
--

CREATE TABLE `sop` (
  `id_sop` int(10) NOT NULL,
  `nama_sop` varchar(30) NOT NULL,
  `pdf` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tgl` date NOT NULL DEFAULT current_timestamp(),
  `deskripsi_sop` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sop`
--

INSERT INTO `sop` (`id_sop`, `nama_sop`, `pdf`, `gambar`, `tgl`, `deskripsi_sop`) VALUES
(1, 'SOP Control Room', 'sop_control_room.pdf', '1.png', '2023-02-16', 'Ruang Control Room IT MEP\nListrik\nTabel Persyaratan Ruang Control Room \nFlow Chart Akses Ruang Control Room\nFormulir Keluar Masuk Peralatan Ruang Control Room \nFormat Log Book Ruang Control Room \nFormat Checklist AC dan UPS \nContoh Denah Ruang Control Room \nDaftar Inventaris Ruang Control Room \nDaftar Nomor Darurat '),
(2, 'SOP CCTV', 'sop_cctv.pdf', '2.png', '2023-02-16', 'PENGGUNAAN CLOSED CIRCUIT TELEVISION  PENGOPERASIAN CCTV MEMUTAR ULANG (PLAYBACK) MEMINDAHKAN/MENGCOPY DATA DARI DVR KE HARD DISK  PENYIMPANAN HDD EXTERNAL YANG BERISI HASIL REKAMAN KONTROL DAN VERIFIKASI KONFIGURASI CCTV MEKANISME KERJA CLOSED CIRCUIT TELEVISION (CCTV) GAMBAR DAN FUNGSI DIGITAL VIDEO RECORDING (DVR) PADA CCTV PENEMPATAN, PEMELIHARAAN DAN PENGAMANAN CCTV IT'),
(3, 'SOP Operation Gedung', 'sop_operation_gedung.pdf', '3.png', '2023-02-16', 'Manager Operation Building Operation OPERASIONAL GEDUNG Bangunan gedung adalah wujud fisik hasil pekerjaan konstruksi yang menyatu dengan tempat kedudukannya, sebagian atau seluruhnya berada di atas dan/atau di dalam tanah dan/atau air, yang berfungsi sebagai tempat manusia melakukan kegiatannya maupun kegiatan khusus. Pemeliharaan bangunan gedung adalah kegiatan menjaga keandalan bangunan gedung beserta prasarana dan sarananya agar bangunan gedung selalu layak fungsi. Perawatan bangunan gedung adalah kegiatan memperbaiki dan/atau mengganti bagian bangunan gedung, komponen, bahan bangunan, dan/atau prasarana dan sarana agar bangunan gedung tetap layak fungsi. Pengguna bangunan gedung adalah masyarakat perorangan, kelompok, badan hukum atau usaha dan lembaga atau organisasi / komunitas berdasarkan kesepakatan dengan pengelola gedung Jam operasional Gedung DISHUB dengan SOP KTP Jam Buka :  06:00 Jam Tutup : 22:00 matrix pemegang kunci Building Manager proses perijinan diatur dalam SOP Keamanan penyelenggara event / pameran Keselamatan bangunan gedung Kesehatan bangunan gedung Kenyamanan & kemudahan bangunan gedung Akses Utama Berada di Lt 2 dan mempunyai 2 masuk Akses Lift Berada di Basement s.d & Lt 8, baik untuk pengunjung & barang MEP Pintu Darurat Staft Marketing / Program Kolabolator form loading / unloading IT MEP Production (Unit Support) Mekanisme Pemakaian Ruangan Name tag Visitor/ Kolabolator Mengajukan Proposal dan Surat pengantar, dengan isi surat Tanggal Pelaksanaan Tema Acara Jumlah Peserta Potensi pengunjung Skala Kegiatan (lokal atau Umum) Durasi Lokasi ruangan yang diusulkan Kebutuahan Matrix pemegang kunci logbook SOP Business Countiniue Plan (SOP BCP) Form Loading & Unloading Flowchart Mekanisme Peminjaman Barang Event Flowchart Mekanisme Kerjasama Flowchart Mekanisme Pengembalian Barang'),
(4, 'SOP Admin', 'sop_admin.pdf', '4.png', '2023-02-16', 'ATK ADMINISTRASI Administrasi Iventarisasi (Fixed Asset) Administrasi Permintaan dan Penyerahan Barang Administrasi Pengelolaan ATK Administrasi Surat Menyurat Surat Masuk Flowchart Pencatatan Barang Keluar Flowchart Pencatatan Barang Masuk Surat Keluar Administrasi Peminjaman Ruang / Gedung Security satpam bertanggungjawab terhadap barang masuk dan keluar proses loading Administrasi Peminjaman dan Pengambilan Barang SOP Keamanan Matrix Pemegang Kunci Form resmi peminjaman & pengembalian Barang Flowchart Mekanisme Surat Menyurat Tim Marketing Program Stock Opname dilakukan untuk memastikan bahwa jumlah yang tertera di kartu stock barang sesuai dengan jumlah real stock barang'),
(5, 'SOP Customer Service', 'sop_cs.pdf', '5.png', '2023-02-16', 'CUSTOMER RELATION Berseragam rapi Bersepatu van tovel berkaos kaki hitam bagi pria, dan flat shoes bagi wanita Menggunakan minyak rambut bagi laki-laki dan berkerudung rapi seragam dengan rekan customer relation yang lain bagi perempuan dan menggunakan manset Menggunakan gesper standart yang tidak terlalu mencolok Dilarang menggunakan aksesoris selain jam tangan dan cincin pernikahan Senin-Selasa Kemeja biru lengan Panjang/Formal Rabu-Kamis Kemeja biru lengan Panjang Jumat	Batik Customer Relation Officers Prosedur Office Sabtu-Minggu Casual Bersepatu van tovel berkaos kaki hitam bagi pria, dan flat shoes bagi wanita Menggunakan minyak rambut bagi laki-laki dan berkerudung rapi seragam dengan rekan customer relation yang lain bagi perempuan dan menggunakan manset Menggunakan gesper standart yang tidak terlalu mencolok Dilarang menggunakan aksesoris selain jam tangan dan cincin pernikahan Front Desk Pelayanan  Budayakan 5S : Senyum, Sapa, Salam, Sopan, dan SantUN Menyambut pelanggan dengan mengucapkan  “Selamat Pagi, Ada yang bisa  kami bantu” “Selamat Datang di MCC, Ada yang bisa kami bantu” “Good (Morning/Afternoon/Evening) How may I help you?/How may I assist you?”  “Welcome to MCC How may I help you?/How may I assist you?” Apabila terdapat tamu langganan, pengunjung tetap, atau orang yang sudah dikenal usahakan sapa menggunakan  nama (Selamat Pagi Pak Haris). Prioritaskan untuk mengantar tamu ke tujuan apabila memungkinkan secara  Operasional. Pergunakan Bahasa dan pemilihan kata yang sesuai dengan standart pelayanan dalam melayani pelanggan Hindari basa-basi yang tidak diperlukan atau yang menyangkut kepentingan pribadi Hindari berbicara sambil mengunyah makanan, permen, atau semacamnya di depan pengunjung Tidak menunjukkan gestur yang kurang sopan (Bersandar di meja dengan satu tangan, Menyilangkan tangan di depan dada, meletakkan tangan di pinggang Dilarang bernyanyi, bersiul, berteriak, atau mengeluarkan suara yang mengganggu di area pelayanan Saling sapa antar sesama rekan kerja dengan sapaann yang sesuai Selalu senantiasa menjaga kebersihan dan kerapian Area Office Mengembalikan barang yang diambil dan digunakan, kembali ke tempat semula Tidak mengotak-atik peralatan kerja dengan tidak bertanggung jawab Dilarang membawa binatang dan disimpan di dalam Office Tidak diperkenankan menyimpan alat kebersihan di dalam Office wajib mengikuti briefing untuk morning dan afternoon shift Public Relation '),
(6, 'SOP Cleaning Service', 'sop_cleaning_service.pdf', '6.png', '2023-02-16', 'Cleaning Service adalah layanan kebersihan, kerapihan, dan hygenisasi dari sebuah gedung CS Membersihkan meja dan kursi Menyapu hingga mengepel semua ruangan dan halaman Membersihkan lampu yang ada di kamar mandi dan toilet Membersihkan tembok kamar mandi Membersihkan wastafel Membersihkan kaca Membuang sampah secara rutin Mengepel kamar mandi Menyikat dan membersihkan closet Mengisi dan membersihkan handsoap Merapikan tanaman yang berada di daerah sekitar halaman & Melakukan perawatan pada bunga hias dengan cara menyemprot, memupuk hingga penyiraman.(apabila tidak menggunakan pihak 3 yang mengkhususkan perawatan) Membersihkan tembok indoor dan outdoor Melakukan pembersihan peralatan gedung secara rutin dan berkala Membersihkan hydrant Membersihkan tangga Membersihkan jendela dan pintu kaca Dan lain-lain sesuai sudut pandang dari Supervisor/ penanggung jawab tiap ruangan / lantai'),
(7, 'SOP IT', 'sop_it.pdf', '7.png', '2023-02-16', 'Hardware	Perangkat keras/fisik yang merupakan  bagian dari computer / peralatan pendukung komputer /  Peralatan Komunikasi Non Selular. (misal : Monitor,  Mouse, Hardisk, Printer, UPS dll) Software	Perangkat lunak/aplikasi yang beroperasi  pada komputer. (misal: Microsoft Windows, Microsoft  Office dll). Standard	Hardware	Daftar perangkat keras (hardware) sesuai dengan klasifikasi yang telah ditentukan oleh perusahaan. Validator	Pihak yang melakukan validasi terhadap permohonan fasilitas teknologi informasi dan komunikasi,  IT OPERATO CONTROL ROOM IT HELPDESK IT OPERATOR COMPUTER CCTV untuk Operator Control Room di area gedung MCC.'),
(8, 'SOP MEP', 'sop_mep.pdf', '8.png', '2023-02-16', 'Mekanic Electrical dan Plumbing Air Conditioning Sistim Sistem System Listrik Sistim Mekanikal Laporan kejadian-kejadian (bila ada) Blackout PLN Machinery Breakdown genset Rapat Koordinasi Equipment Operation Manual Bench Marking Inspeksi Bersama Pemakaian energi listrik untuk peralatan-peralatan utama seperti chiller, lampu, pompa dan lift. Maintenance Cost untuk peralatan-peralatan utama seperti chiller lift pompa-pompa Waktu yang diperlukan untuk menyelesaikan suatu pekerjaan sperti mengganti lampu yang rusak, ganti oli genset, ganti seal pompa, service ac filter, kabel, fuse, cat karena mesin-mesin masih baru dan masih garansi. Jika seandainya pengadaan suku cadang semakin lengkap juga semakin bagus. Sesudah tahun pertama memasuki tahun kedua pengadaan suku cadang sudah mulai diperbanyak jenisnya seperti Motor listrik untuk peralatan vital yang tidak mempunyai stand-by unit Grease Kabel untuk elektrikal arus tinggi telepon Lightings bearing untuk elevator Flexible coupling untuk pompa-pompa Flexible joints Sumur well Raw Water Reservoir Clean Water Reservoir MCFA (Master Control Fire Alarm) P3K Emergency Push Button Fire Drill Smoke atau heat detector Handy Talky Listrik (Lighting, Panel, Travo) Genset tank, aki, fuel pump, dip sick oil dan radiator Fire Fighting Equipment Kitchen (Hood, Kitchen Equipment) Pemipaan (Plumbing) Clorination: 1 (satu) hari sekali Blower Reducer speed disk Disk Pump Sump pit Sludge Tank Deffuser'),
(9, 'SOP Med. Prod', 'sop_med_prod.pdf', '9.png', '2023-02-16', 'SPV Line Media Production MEDIA PRODUCTION , SOUND SYSTEM , SOSIAL MEDIA , KONTEN , STREAMING,  RECORDING beserta peralatannya Melakukan penjadwalan produksi konten dan publishing Bertanggung jawab membuat rencana aktivitas konten sosial media harian Membuat dan menjalankan rencana peningkatan bulanan untukIklan Facebook, Instagram, tiktok dan twitter Merancang CONTENT & DESAIN Membangun dan pertahankan hubungan yang baik dengan target pasar Memfollow up / negosiasi dengan influencer Membuat dan menjalankan content plan Mendukung tim marketing dan public relation dalam penyebaran informasi tentang perusahaan Membantu pengawasan, perawatan  setiap ruangan atau studio yg berhubungan dengan alat multimedia Mengevaluasi perkembangan konten dan akun media sosial perusahaan Bertanggung jawab atas segala equipment Mampu mengoperasikan mixer semua channel Menyiapkan perlengkapan sound sistem Mampu seting microphone condensor atau dynamic Mampu menata kabel secara rapi Menyeimbangakan suara di setiap ruangan Editing sound untuk kebutuhan audio visual Bertanggung jawab atas segala equipment Pasca event atau produksi wajib merapikan alat sesuai dengan tempat yang telah disediakan Opr. Streaming & Recording Melakukan recording podcast Membantu pengawasan soundsystem panggung Melakukan proses live streaming event Melakukan editing audio Bertanggung jawab atas segala equipment dari segi penggunaan dan perawatan Menjaga keamanan studio beserta asset didalamnya Operator Kamera Bertanggung jawab untuk menjaga asset video Mengopresikan kamera baik kebutuhan foto ndan video Membuat konten video untuk kebutuhan perusahaan Membuat sebuah konsep video Membuat video motion sebuah produk Bertanggung jawab menjaga asset equipment beserta perawatannya Desainer Grafis Membuat konsep dari informasi dan material berkaitan dengan desain yang akan dikerjakan.  Melakukan brainstorming bersama tim, memberikan masukan, memadukan unsur seni, visual, dan bahasa dalam sebuah desain untuk menyampaikan suatu pesan hingga membuat ilustrasi konsep dalam bentuk draf. Membuat desain komunikatif serta mudah dipahami dengan cara unik dan kreatif yang berangkat dari fenomena di masyarakat Mengaplikasikan elemen desain, layout, serta proses teknis sesuai dengan kebutuhan dan hasil akhir yang diinginkan. Memberikan solusi atas permasalahan tertentu, dalam hal ini melalui platform seperti iklan layanan masyarakat Mengikuti perkembangan gaya dan inovasi desain, menyelesaikan proyek serta mengoordinasikannya bersama pihak terkait. Desainer harus mampu bekerja sama dalam tim. Menjaga asset grafis sesuai GSM Menjaga asset grafis dan memilah untuk publik Admin Media Sosial Sound system'),
(10, 'SOP Security', 'sop_sec.pdf', '10.png', '2023-02-16', 'STANDARD KOMPETENSI Mendapatkan Pelatihan Minimal Gada Pratama yang wajib dimiliki oleh anggota satpam dalam mendukung pelaksanaan tugas dan fungsi secara optimal. III.	SERAGAM & ALAT KELENGKAPAN  Dalam aktivitas kesehariannya, pemakaian Seragam ditentukan sebagai berikut : 1.	Seragam PDH (Pakaian Dinas Harian) PDH, dilengkapi kerah, kancing, dan kantong pada bagian depan dengan logo dari perusahaan berlengan pendek, dikenakan di shift 1. 2.	Seragam PDL(Pakaian Dinas Lapangan)  PDL, dilengkapi kerah, kancing, dan kantong pada bagian depan dengan logo dari perusahaan berlengan panjang, dikenakan di shift 2. security satpam'),
(11, 'Form Load & Unload', 'all_form.pdf', '11.png', '2023-02-16', 'FORM LOADING DAN UNLOADING Penyelenggara event menunjukkan formulir surat ijin loading in / out  yang sudah disetujui oleh Pengelola MCC & meninggaklan KTP kepada Security											 Security akan memberikan Name tag \"Vendor\" dan melakukan menunjukkan lokasinya & pengawasan saat proses tersebut											 Jam loading in/out  dari pukul 22.00 WIB s/d pukul 06.00 WIB melalui pintu loading / Lift barang.											 Loading barang harus menggunakan troly beroda karet/ sarana lain yang aman. Pihak pengelola tidak bertanggung jawab atas segala bentuk 											 kerusakan / kehilangan yang  timbul akibat pengerjaan tersebut. Dan segala biaya yang timbul atas kerusakan atau cacat yang ditimbulkan oleh 											 kegiatan tersebut akan dibebankan kepada penyelenggara event.											 Kebersihan dan kerapihan di sekitar lokasi event pada saat loading in / out menjadi tanggung jawab penyelenggara event. Segala macam 											 bentuk sampah atau sisa barang material milik penyelenggara even wajib dikeluarkan / dibersihkan.											 Pengelola tidak bertanggung jawab atas kehilangan barang / property dari penyelenggara 	 Form Peminjaman & Pengembalian Barang FORM PINJAM RUANGAN Building'),
(12, 'Matrix Kunci', 'matrix_kunci.pdf', '12.png', '2023-02-16', 'Matrix Pemegang Kunci  Gudang Security Gudang Properti Lift Pengunjung	Ruang Kontrol CCTV Lift Barang Lift Pengunjung Ruang Pompa Power House Ruang Podcast Ruang Broadcast Ruang Recording Lift Barang	Animation & Motion Capture Studio	City Planning Gallery	Lift Pengunjung	Tangga Darurat	Gudang 		Food Lab	Lift Barang 	Co-Working Space	Ruang Meeting	Ruang Rapat Kelas	Hotel Kapsul	Lift Pengunjung	Tangga Darurat		Co-Working Space 1	Co-Working Space 2	Co-Working Space 3	Lift Barang	Galeri Seni	Ruang Komputer 1	Ruang Komputer 2	Ruang Kriya Luar	Ruang Kriya Luar	Lift Pengunjung	Tangga Darurat		Studio Foto	Fashion Room 	Co-Working Space 1	Co-Working Space 2	Co-Working Space 3	Co-Working Space 4	Lift Barang	Gedung Bioskop	Bioskop 1	Bioskop 2	Ruang Karyawan	Lift Pengunjung	Ruang Panel	Tangga Darurat		Perpustakaan 	Perpustakaan 	Ruang Baca	Kantor Pengelola	Lift Barang	Supermarket	Lift Pengunjung Tangga Darurat Ruang VIP Ruang Operator Ruang Panel Lift Barang Kantor Dinas Auditorium 1 Auditorium 2 Ruang Ganti Lift Pengunjung Tangga Darurat Rooftop Bar Cafe Toilet Ruang Operator Lift Barang Area Maintenance Lift Pengunjung Tangga Darurat Pemegang Kunci Door lock Jumlah Kunci per Lantai Cleaning Service	Production IT MEP Satpam Dinas (Kunci II)'),
(13, 'sop penyusunan manajemen organ', 'sop_peny_man_org.pdf', '13.png', '2023-02-17', 'Manajemen Gedung Manajemen Ruang Manajemen Organisasi  Parkir parking park Manajemen Pengunjung Personel SISTEM MANAJEMEN PERAWATAN Peralatan Genset Security Name Tag Penempatan Operasional Gedung Menggunakan kartas 2 ply. Putih/ Arsip Pengelola, Merah/ Pemohon & arsip Security Alur Untuk Engineering : 1 Base Station, 3 Handy Talky\nSecurity : 1 Base Station, 3 Handy Talky House Keeping : 2 Handy Talky logbook Flow Chart Loading & unloading Barang Front Office : 2 Handy Talky Flow Chart Peminjaman Barang Event Regulasi Operasional Gedung Flow Chart Peminjaman Barang Event Ruang - Ruang Empowerment flow Chart Mekanisme Kerja Sama\nRuang - Ruang Komersil Flow Chart Mekanisme Pengembalian Barang Skema Manajemen mekanisme Surat Menyurat Kualifikasi PERAWATAN MEKANIK, ELEKTRIK, PLUMBING, DAN SIPIl Scoop of Work Sistem Penangkalan Petir AC Job Description . Kitchen (Hood, Kitchen Equipment Pengunjung Fire Fighting Equipment Pelaku Fire Extinguisher Portable Extinguisher Sprinkler hydrant lat Komunikasi Penyewa Bak Penampungan Kolaborator peminjaman Pengembalian Kunci MEP IT & Customer Service Ketentuan Umum Pencatatan Barang Keluar Fungsi bangunan gedung meliputi fungsi Staff Operasional, usaha, sosial dan budaya. Pemeliharaan bangunan gedung adalah kegiatan menjaga keandalan bangunan gedung beserta prasarana dan sarananya agar bangunan gedung selalu layak fungsi Freight Elevator/ Lift Barang\nMengajukan Proposal dan Surat pengantar, dengan isi surat Tanggal Pelaksanaan Tema Acara Pemipaan (Plumbing) Jumlah Peserta Potensi pengunjung Skala Kegiatan (lokal atau Umum) Mekanisme Pemakaian Ruangan Setelah mendapatkan persetujuan dari Pengelola Gedung, ketentuan sebagai berikut: Membawa Form Penggunaan Ruangan kepada Customer Service.\nPenanggung Jawab Peminjam memberikan KTP yang mewakili semua peserta. Penanggung Jawab Peminjam memberikan KTP yang mewakili semua peserta. Customer service memberikan Name tag “Visitor/ Kolabolator” sesuai jumlah peserta dalam form peminjaman dan menginformasikan lokasi ruangan tersebut. Peminjam menuju ruangan dengan mambawa Form rekomendasi untuk diberikan kepada Staff \nMCC yang standby dilokasi LATIHAN PEMADAMAN KEBAKARAN/FIRE DRILL Staff MCC yang berada di lokasi, mencatat dalam logbook mulai s.d akhir dari peminjam berkativitas Visitor pengelolaan ATK Permintaan & Penyerahan Barang TIM PEMADAM KEBAKARAN Tamu yang akan menemui pengelola MCC pengadaan suku cadang\nTamu lainnya yang melakukan aktivitas/ kegiatan dalam jangka waktu min 1 X 24 Jam di MCC Penanggung Jawab Panitia Event menukarkan Name tag kepanitiaan dengan Name tag MCC Vendor administrasi Iventarisasi (Fixed Asset) sISTEM PENGOLAHAN LIMBAH UMUM peneranganpengaturan suhu ruangan Petugas loading & unloading  Filling & Dokumentasi keselamatan kerja\nPihak ke 3 yang melakukan maintenance/ perawatan di MCC (Teknisi Telkom/ PLN/ Genset/ Lift dls) yang mempunyai keahlian tertentu Matrix pemegang kunci Form Loading & Unloading Logbook Serah terima gedung  Administrasi Logbook Segel kunci Sebagai pedoman dan rujukan proses permintaan atau pengadaan dan penyerahan barang Sebagai bahan pertimbangan untuk pengadaan atau pemeliharaan barang inventaris\nSebagai pertanggungjawaban atas barang yang keluar atau mengurangi stock Memastikan kesesuaian antara jumlah barang yang tersedia di realstock dengen yang ada di kartu stock Merencanakan, mengelola, memelihara, dan menyimpan kebutuhan yang ada di kantor Manajemen Gedung 01  Peminjaman Ruangan Gedung  Peminjaman & Pengembalian Barang\nKetentuan Umum Surat Menyurat Customer Relation  Uniform Mekanic Electrical and Plumbing Prosedur Operasional SPV Cleaning Service IT Operator Control Room Melakukan pengecekan jumlah realstock barang dilokasi IT Operator Control Room Melakukan pencatatan list barang yang perlu ditambahkan Operator Control Room\nMelakukan permintaan pengadaan atau order barang yang dibutuhkan Melakukan pengecekan dan pencatatan jika ada barang yang masuk atau barang yan keluar Melakukan kategorisasi berdasarkan klasifikasi barang Melakukan stock opname untuk mengecek kesesuaian barang di lokasi, dengan catatan di kartu stock\nMembuat dan memproses surat dinas sesuai disposisi IT Operator Computer Pemberian nomer surat, kode, tanggal dan stempel Operator Kamera Menggandakan sesuai banyaknya alamat yang dituju Desainer Grafis Memasukkan dalam amplop tertutup bench Marking\nMemberikan pada kurir untuk kemudian dikirim ke alamat tujuan Prosedur mengoperasikan pompa pemadam api Prosedur mengoperasikan panel utama fire alarm Traction machine, control panel, pintu ,sangkar, rel ,control safety.  Perawatan cable/roofing : 6 (enam) bulan sekaliPerawatan\nTraction machine : 6 (enam) bulan sekali Operator Streaming & Recording Perawatan safety device: 1 (satu) minggu sekali sPV lINE MEDIA PRODUCTION Admin Media Sosial \nPerawatan control system: 1 (satu) minggu sekal\n'),
(14, 'SOP Pengamanan Gedung (K3)', 'sop_pengamanan_gedung_(K3).pdf', '14.png', '2023-03-02', 'Pengamanan Gedung bahaya kebakaran, tindak pencurian/perampokan dan ancaman \r\nteror bom berkaitan langsung dengan operasional gedung  pencegahan dan penanggulangan terhadap \r\nmusibah/bahaya seperti kebakaran dan pencurian yang cukup canggih di setiap ruangan \r\nbukanlah merupakan jaminan mutlak bagi keselamatan bangunan, harta benda maupun \r\npenghuni yang ada di dalamnya Ruang lingkup / cakupan bahasan :\r\nSOP ini hanya mengatur tentang kebijakan dan prosedur pengamanan gedung terhadap halhal di luar kendali yang telah disebutkan diatas.\r\nSedangkan untuk kebijakan dan panduan penanganan secara keseluruhan terhadap hal-hal di \r\nluar kendali seperti huru-hara, bencana alam (banjir, gempa), keadaan darurat (contigency), \r\ndsb yang dapat membahayakan kelangsungan bisnis perusahaan, keamanan asset, dan \r\nkaryawan, merujuk ke Corporate Business Continuity Management (BCM) Framework MCC \r\ntelah diatur pada SOP tersendiri Tombol Fire Alarm Pilot Lamp Bell Alarm Fire Hydrant Sprinkler Heat Detector Smoke Detector Fire Extinguisher Portable Fire Extinguisher Portable Fire Extinguisher Tabung Pemadam Api Asisten bidang Penyelamatan Penghuni Gedung per lantai (Floor Marshall), dijabat \r\noleh karyawan yang menguasai situasi lingkungan per lantai.\r\nSeluruh nama anggota Tim Penyelamat dan nomor handphone-nya sebaiknya juga \r\ndilaporkan ke Dinas terkait dan seluruh Tim Penyelamat harus mendapatkan \r\npelatihan khusus secara regular. Rekaman/record pelatihan harus \r\ndidokumentasikan dengan baik Tugas dan tanggung jawab anggota Tim Penyelamat Memastikan peralatan kantor yang menggunakan tenaga listrik dan digunakan secara \r\ntidak rutin (seperti : laptop, infocus projector, OHP, peralatan audio, sound system, \r\ndll) sudah terputus aliran listriknya pada saat peralatan tersebut sudah selesai \r\ndigunakan (kabel power dicabut dari stop kontak) Untuk peralatan kantor yang tidak memungkinkan mencabut kabel power dari stop \r\nkontak (komputer, mesin fax, printer, AC, peralatan alarm) maka harus dilakukan \r\nlangkah-langkah pengamanan sbb :\r\na) Hindari penyambungan kabel listrik langsung pada stop kontak atau tanpa steker.\r\nb) Pastikan alat pengharum ruangan otomatis dan mesin AC berfungsi dengan baik.\r\nc) Hindari pembebanan muatan listrik secara berlebihan pada satu stop kontak.\r\nd) Untuk lantai yang memiliki peralatan masak (kompor gas, microwave, toaster, dll) \r\ndi pantry-nya harus dipastikan pengamanan pemakaian peralatan tersebut jangan \r\nsampai menimbulkan percikan-percikan api yang sampai menyebabkan \r\nkebakaran Secara periodik semua peralatan pencegahan tindak kejahatan (safety alarm dan \r\nCCTV) wajib diperiksa cara kerjanya serta harus dibuatkan Berita Acara Pemeriksaannya oleh petugas yang ditunjuk oleh Pejabat Berwenang. Petugas yang ditunjuk terdiri \r\ndari dua orang atau lebih untuk memastikan berjalannya dual control\r\n PENGAMANAN TERHADAP TINDAK KEJAHATAN Pengaturan, pengendalian dan pengawasan pelaksanaan tugas penjagaan menjadi \r\ntanggung jawab pengendali harian Satpam Alarm adalah alat deteksi yang dapat mengeluarkan tanda/signal berupa bunyi/suara \r\nmaupun lampu sorot, yang berfungsi sebagai peringatan dini terhadap adanya bahaya \r\nkeamanan/kebakaran/gempa bumi, dsb.\r\n2. Beberapa Jenis/Tipe alarm yang digunakan di MCC saat ini terdiri dari : Setiap tindakan yang berkaitan dengan mematikan alarm wajib diketahui \r\noleh divisi MEP\r\na) Alarm Internal, yaitu alarm yg tidak terkoneksi ke Vendor/Kepolisian Pada saat melihat sumber api:\r\n• Pecahkan kaca tombol Fire Alarm yang akan mengaktifkan Bell Alarm ke \r\nseluruh gedung.\r\n• Usahakan memadamkan api dengan Tabung Pemadam Api yang tersedia \r\n(terhadap api yang besar, gunakan Fire Hydrant)\r\nCatatan:\r\nJangan gunakan Fire Hydrant, terhadap sumber api yang disebabkan oleh \r\narus pendek.\r\n2. Pada saat mendengar Bell Alarm:\r\n• Usahakan untuk tetap tenang/ tidak panik dan tunggu informasi dari petugas \r\nMEP/ Team Penyelamat.\r\n16\r\n• Simpan semua surat berharga dan dokumen-dokumen penting dalam tempat \r\npenyimpan tahan api.\r\n• Putuskan aliran listrik peralatan-peralatan yang menggunakan tenaga listrik.\r\n3. Jika ada instruksi dari Tim Penyelamat untuk meninggalkan gedung:\r\n• Usahakan untuk tetap tenang/ tidak panik.\r\n• Tinggalkan ruangan dan segera menuju ke tangga darurat, jangan gunakan lift \r\natau tangga penghubung di depan lift (kemungkinan lift akan macet atau \r\nterbuka pada lantai di mana terjadi kebakaran).\r\n• Bawa barang-barang berharga seperlunya seperti tas tangan atau tas kantor.\r\n• Keluar menuju halaman belakang gedung/ lapangan parkir atau lokasi yang \r\ntelah ditentukan.\r\n• Jangan kembali ke dalam gedung sebelum adanya pengumuman dari petugas \r\nTim Penyelamat bahwa keadaan di dalam gedung telah aman.\r\nA.3 PENGGUNAAN TABUNG PEMADAM API Ambil Tabung Pemadam Api dari tempatnya dengan cara melepaskan \r\npengikatnya.\r\n2. Bawa Tabung Pemadam Api sedekat mungkin dengan sumber api.\r\n3. Ambil posisi berdiri dengan membelakangi arah angin.\r\n4. Pegang Tabung Pemadam Api dengan posisi tegak.\r\n5. Lepaskan selang dari tempatnya dengan cara melepaskan pengikatnya.\r\n6. Cabut alat pengamannya/ memutuskan segelnya.\r\n7. Arahkan ujung selang ke sumber api.\r\n8. Tekan alat/ tombol penyemprot isi Tabung Pemadam Api.\r\n9. Semprotkan merata/ menyapu ke arah sumber api.\r\n10. Ulangi penyemprotan secara terputus-putus sampai api padam Ambil Tabung Pemadam Api dari tempatnya dengan cara melepaskan \r\npengikatnya.\r\n2. Bawa Tabung Pemadam Api sedekat mungkin dengan sumber api.\r\n3. Ambil posisi berdiri dengan membelakangi arah angin.\r\n4. Pegang Tabung Pemadam Api dengan posisi tegak.\r\n5. Lepaskan selang dari tempatnya dengan cara melepaskan pengikatnya.\r\n6. Cabut alat pengamannya/ memutuskan segelnya.\r\n7. Arahkan ujung selang ke sumber api.\r\n8. Tekan alat/ tombol penyemprot isi Tabung Pemadam Api.\r\n9. Semprotkan merata/ menyapu ke arah sumber api.\r\n10. Ulangi penyemprotan secara terputus-putus sampai api padam\r\n14\r\nb) Alarm Button (Tombol), yaitu alarm yang akan berbunyi jika tombol ditekan\r\n3. Petugas jaga tidak diperkenankan meninggalkan pos jaga, jika ada keperluan yang \r\nmendesak, harus ada petugas lain yang menggantikannya dan harus diketahui oleh \r\nKepala Keamanan/ Chief perihal adanya penggantian sementara ini.\r\n4. Untuk menunjang usaha-usaha pencegahan terhadap tindak kejahatan pencurian, \r\nmaka pada tempat-tempat tertentu seperti ruang pengelola/ Dinas, pintu keluar/ \r\nmasuk (depan dan belakang) harus dipasang peralatan peringatan dini (safety alarm) \r\ndan CCTV (Closed Circuit Television).');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id_surat` int(11) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `lamp_surat` varchar(50) NOT NULL,
  `hal_surat` varchar(50) NOT NULL,
  `tgl_surat` date DEFAULT NULL,
  `kepada_surat` varchar(50) NOT NULL,
  `up_surat` varchar(50) NOT NULL,
  `isi_surat` text NOT NULL,
  `hari_tgl` varchar(250) NOT NULL,
  `pukul` varchar(50) NOT NULL,
  `penanggung` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id_surat`, `no_surat`, `lamp_surat`, `hal_surat`, `tgl_surat`, `kepada_surat`, `up_surat`, `isi_surat`, `hari_tgl`, `pukul`, `penanggung`, `status`) VALUES
(1, ' S.0280', '', 'Persetujuan Perijinan Pemakaian Tempat', '2023-03-23', 'Solutive', 'Muhammad Taufan Haidan', 'Dengan hormat, Menindaklanjuti permohonan pemakaian tempat di Malang Creative Center (MCC) untuk Kegiatan Meeting Internal di Lantai 5 Ruang Co-working space 4, dapat kami sampaikan bahwa permohonan tersebut telah kami SETUJUI dengan informasi sebagai berikut :', 'Senin, 3 & 17 Maret 2023\n Selasa, 11 Maret 2023\n Kamis, 6 & 13 Maret 2023', '08.00 s.d 14.00', 'Taufan (085607488620)', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_sale`
--

CREATE TABLE `t_sale` (
  `sale_id` int(11) NOT NULL,
  `invoice` varchar(50) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `total_price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `final_price` int(11) NOT NULL,
  `cash` int(11) NOT NULL,
  `change` int(11) NOT NULL,
  `note` text NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_sale`
--

INSERT INTO `t_sale` (`sale_id`, `invoice`, `customer_id`, `total_price`, `discount`, `final_price`, `cash`, `change`, `note`, `date`, `user_id`, `created`) VALUES
(16, 'YP1902040001', NULL, 7000, 1000, 6000, 1000, -5000, 'ssd', '2019-02-04', 1, '2019-02-04 09:10:07'),
(18, 'YP1902040002', 2, 5500, 0, 5500, 6000, 500, '', '2019-02-04', 1, '2019-02-04 11:43:54'),
(19, 'YP1902050001', NULL, 10000, 0, 10000, 10000, 0, '', '2019-02-05', 1, '2019-02-05 07:15:47'),
(20, 'YP1902060001', 3, 5000, 0, 5000, 5000, 0, '', '2019-02-06', 1, '2019-02-06 07:16:07'),
(21, 'YP1902090001', NULL, 8000, 1000, 7000, 10000, 3000, '', '2019-02-09', 1, '2019-02-09 07:18:05'),
(23, 'YP2102160001', NULL, 535000, 30, 534970, 600000, 65030, '', '2021-02-16', 1, '2021-02-16 19:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `t_sale_detail`
--

CREATE TABLE `t_sale_detail` (
  `detail_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(10) NOT NULL,
  `discount_item` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_sale_detail`
--

INSERT INTO `t_sale_detail` (`detail_id`, `sale_id`, `id_item`, `price`, `qty`, `discount_item`, `total`) VALUES
(27, 16, 4, 3000, 1, 500, 2500),
(28, 16, 5, 2500, 2, 500, 4500),
(31, 18, 4, 3000, 1, 0, 3000),
(32, 18, 5, 2500, 1, 0, 2500),
(33, 19, 2, 5000, 2, 0, 10000),
(34, 20, 6, 5000, 1, 0, 5000),
(35, 21, 7, 1500, 2, 0, 3000),
(36, 21, 5, 2500, 2, 0, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(225) DEFAULT NULL,
  `level` int(1) NOT NULL COMMENT '1:admin, 2:kasir, 3:manager, 4:marketing ',
  `gambar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `nama`, `alamat`, `level`, `gambar`) VALUES
(1, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Wahyu Artadianto', 'Malang', 1, 'user1-128x128.jpg'),
(5, 'admin1', '8cb2237d0679ca88db6464eac60da96345513964', 'Devia Putri', 'Malang', 2, 'admin1.png'),
(9, 'admin2', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Karina Endahlia', ' Malang', 2, 'Admin2.png'),
(10, 'admin3', '8cb2237d0679ca88db6464eac60da96345513964', 'Yulia Ifatur Rohma', 'Malang', 2, 'yulia.jpg'),
(11, 'Guest', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Achmad Aburizal Bakhri', 'Malang', 2, 'abu.jpg'),
(12, 'admin4', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Dito Wedyahusada', 'Malang', 4, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banquetorder`
--
ALTER TABLE `banquetorder`
  ADD PRIMARY KEY (`no_bo`);

--
-- Indexes for table `coworking`
--
ALTER TABLE `coworking`
  ADD PRIMARY KEY (`id_coworking`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `event1`
--
ALTER TABLE `event1`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `form_feedback`
--
ALTER TABLE `form_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banquetorder`
--
ALTER TABLE `banquetorder`
  MODIFY `no_bo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `coworking`
--
ALTER TABLE `coworking`
  MODIFY `id_coworking` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `event1`
--
ALTER TABLE `event1`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

--
-- AUTO_INCREMENT for table `form_feedback`
--
ALTER TABLE `form_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
