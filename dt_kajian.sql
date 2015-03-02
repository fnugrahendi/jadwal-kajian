-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 02, 2015 at 04:28 AM
-- Server version: 5.5.40-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `k8446590_dt_kajian`
--

-- --------------------------------------------------------

--
-- Table structure for table `dt_hari`
--

CREATE TABLE IF NOT EXISTS `dt_hari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kodeHari` int(2) NOT NULL,
  `namaHari` varchar(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `dt_hari`
--

INSERT INTO `dt_hari` (`id`, `kodeHari`, `namaHari`) VALUES
(1, 0, 'Ahad'),
(2, 1, 'Senin'),
(3, 3, 'Rabu'),
(4, 4, 'Kamis'),
(5, 5, 'Jumat'),
(6, 6, 'Sabtu'),
(8, 2, 'Selasa');

-- --------------------------------------------------------

--
-- Table structure for table `dt_jadwal_kajian`
--

CREATE TABLE IF NOT EXISTS `dt_jadwal_kajian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namaHari` varchar(8) NOT NULL,
  `urutan` int(11) NOT NULL,
  `kajian` varchar(100) NOT NULL,
  `pengisi` varchar(100) NOT NULL,
  `tempat` varchar(200) NOT NULL,
  `waktu` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `dt_jadwal_kajian`
--

INSERT INTO `dt_jadwal_kajian` (`id`, `namaHari`, `urutan`, `kajian`, `pengisi`, `tempat`, `waktu`) VALUES
(1, 'Senin', 0, 'Tafsir Qur''an', 'Ust. Syatori', 'Masjid Nurul Ashri', '16:00:00'),
(2, 'Senin', 0, 'Bulughul Maram', 'Ust. Abduh Tuasikal', 'Masjid STPN', '18:00:00'),
(3, 'Rabu', 2, 'Ngaji Teras Dakwah', '-tidak tetap-', 'Teras Dakwah Nitikan', '18:00:00'),
(4, 'Kamis', 3, 'Majelis Jejak Nabi', 'Ust. Salim A. Fillah', 'Masjid Jogokariyan', '16:30:00'),
(5, 'Kamis', 3, 'Bulughul Maram', 'Ust. Sembodo', 'Masjid Al Ikhsan', '18:00:00'),
(6, 'Sabtu', 5, 'Tafsir Qur''an', '', 'Masjid Kauman', '18:00:00'),
(7, 'Ahad', 6, 'Tafsir Qur''an', 'Ust. Ridwan Hamidi', 'Masjid Kampus UGM', '06:30:00'),
(8, 'Kamis', 3, 'KRPH', '-tidak tetap-', 'Masjid Mardliyyah', '06:30:00'),
(9, 'Sabtu', 5, 'KRPH', '-tidak tetap-', 'Masjid Mardliyyah', '06:30:00'),
(10, 'Selasa', 1, 'KRPH (Muslimah)', '-tidak tetap-', 'Masjid Mardliyyah', '06:30:00'),
(11, 'Kamis', 3, 'Tafsir ', 'Ust. Yunahar Ilyas', 'PP Muhammadiyah', '06:30:00'),
(12, 'Ahad', 6, 'Riyadhussholihin', 'ust. Zaid Susanto', 'Masjid Al Hasanah', '18:00:00'),
(13, 'Ahad', 6, 'Riyadhussholihin', 'ust. Taufiq Ahmad ', 'Masjid Nur Rohman', '19:30:00'),
(14, 'Kamis', 3, 'Riyadhussholihin', 'ust. Bagus Priyo Sembodo', 'Apotek Afina', '07:30:00'),
(15, 'Rabu', 2, 'Bulughul Maram', 'ust. Taufiq Ahmad ', 'Masjid Babul Firdaus', '20:00:00'),
(16, 'Selasa', 1, 'Minhajul Qoshidin', 'ust. Ridwan Hamidi', 'masjid Madrasah Muallimin', '20:00:00'),
(17, 'Sabtu', 5, 'Umdatul Ahkam', 'ust. Ammi Nur Baits', 'masjid Muthohharoh', '09:00:00'),
(18, 'Ahad', 6, 'baitul hikmah', 'berganti-ganti', 'PDM kota Yogyakarta', '20:00:00'),
(20, 'Jumat', 4, 'Minhajul Qoshidin', 'ust. Fathurrahman Kamal', 'PP Budi Mulia', '06:00:00'),
(21, 'Jumat', 4, 'Bulughul Maram', 'ust. Aris Munandar', 'Masjid Pogung Raya', '18:00:00'),
(22, 'Ahad', 6, 'Tafsir ', 'ust. Cholid Mahmud', 'Islamic Centre Seturan', '06:00:00'),
(25, 'Sabtu', 5, 'Akidah', 'ust. Aris Munandar', 'Masjid Pogung Raya', '05:30:00'),
(24, 'Sabtu', 5, 'Bulughul Maram', 'ust. Cholid Mahmud', 'Wonocatur', '05:15:00'),
(26, 'Ahad', 6, 'Akidah', 'ust. Aris Munandar', 'masjid Al Ashri Pogung', '05:30:00'),
(27, 'Kamis', 3, 'Majelis Jelajah Hati', 'ust. syatori', 'Darush Sholihat', '16:00:00'),
(28, 'Kamis', 3, 'Kajian humaira (khusus putri)', 'tidak tetap', 'aula humaira (barat masjid Nurul Ashri)', '16:00:00'),
(29, 'Ahad', 6, 'DPK BKPRMI Banguntapan', 'tidak tetap', 'masjid darul ilmi Jl. Karang', '06:00:00'),
(30, 'Senin', 0, 'akidah', 'ust. Amir As-Soronji', 'masjid Ulil Albab Universitas Islam Indonesia', '18:00:00'),
(31, 'Rabu', 2, 'Tafsir ', 'ust. Supriyanto P.', 'masjid Ulil Albab Universitas Islam Indonesia', '18:00:00'),
(32, 'Kamis', 3, 'Tafsir juz amma dan Fiqih', 'pekan 1&2 ust. Okrizal Eka (tafs', 'masjid Ulil Albab Universitas Islam Indonesia', '18:00:00'),
(33, 'Jumat', 4, 'Akhlak', 'ust. Abu Abdirrahman', 'masjid Ulil Albab Universitas Islam Indonesia', '18:00:00'),
(34, 'Sabtu', 5, 'Pelatihan tilawah Al Qur''an', 'ust. Ngaliman', 'masjid Ulil Albab Universitas Islam Indonesia', '18:00:00'),
(35, 'Selasa', 1, 'Tematik', 'tidak tetap', 'masjid Ulil Albab Universitas Islam Indonesia', '12:15:00'),
(36, 'Rabu', 2, 'Tematik', 'tidak tetap', 'masjid Ulil Albab Universitas Islam Indonesia', '12:15:00'),
(37, 'Senin', 0, 'Riyadhussholihin', 'ust. Aris Munandar', 'masjid Al Hidayah purwosari ', '18:00:00'),
(38, 'Selasa', 1, 'Siroh Sahabat', 'ust. Asdi Nur Kholis', 'masjid Al Hidayah purwosari ', '18:00:00'),
(39, 'Rabu', 2, 'Fiqih', 'ust. Abu Abdirrahman', 'masjid Al Hidayah purwosari ', '18:00:00'),
(40, 'Jumat', 4, 'Akidah', 'ust. Abu Ayyub', 'masjid Al Hidayah purwosari ', '18:00:00'),
(41, 'Ahad', 6, 'tematik', 'ustadz pilihan', 'masjid Al Hidayah purwosari ', '07:30:00'),
(42, 'Selasa', 1, 'Tafsir Al Qur''an', 'ust. Zaid Susanto', 'masjid Syuhada', '18:00:00'),
(43, 'Senin', 0, 'obat hati', 'ust. Afifi Abdul Wadud', 'masjid Al Ikhlas karangbendo (utara fak. kehutanan UGM)', '18:00:00'),
(44, 'Selasa', 1, 'Riyadhussholihin', 'ust. Muhammad Abduh Tuasikal', 'Masjid siswa graha (utara fak. teknik UGM)', '18:00:00'),
(45, 'Rabu', 2, 'wasiat Nabi', 'ust. Afifi Abdul Wadud', 'Masjid Pogung Raya', '18:00:00'),
(46, 'Rabu', 2, 'Tafsir ', 'ust. Aris Munandar', 'masjid Al Ashri Pogung', '18:00:00'),
(47, 'Kamis', 3, 'fiqih dan hadits', 'ust. Muhammad Abduh Tuasikal', 'masjid Al Ikhlas karangbendo (utara fak. kehutanan UGM)', '18:00:00'),
(48, 'Jumat', 4, 'obat hati', 'ust. Afifi Abdul Wadud', 'masjid Al Ikhlas karangbendo (utara fak. kehutanan UGM)', '18:00:00'),
(49, 'Ahad', 6, 'fathul majid (syarah kitab at tauhid)', 'ust. Abu Muhammad Ahmad Halim', 'Masjid Pogung Dalangan', '16:00:00'),
(50, 'Senin', 0, 'Aqidah (kitab Aqidah Wasithiyah)', 'ust. Zaid Susanto', 'masjid Al Ashri Pogung', '16:00:00'),
(51, 'Rabu', 2, 'ushul fiqih (kitab al ushul min ilmil ushul)', 'ust. ammi Nur Baits', 'Masjid Pogung Dalangan', '16:00:00'),
(52, 'Jumat', 4, 'Fiqih (kitab Al Mulakhos fiqhiy)', 'ust. Aris Munandar', 'Masjid Pogung Raya', '16:00:00'),
(53, 'Sabtu', 5, 'tauhid (kitab at tauhid)', 'ust. Ikrimah', 'masjid Al Ashri Pogung', '16:00:00'),
(54, 'Senin', 0, 'tafsir', 'ust. Rahmadi Wibowo', 'masjid diponegoro (kompleks balai kot)', '16:30:00'),
(55, 'Kamis', 3, 'wisata hati', 'ust. Kustriyanto', 'masjid diponegoro (kompleks balai kota)', '16:30:00'),
(56, 'Rabu', 2, 'Tafsir ', 'ust. Talqis Nurdiyanto', 'masjid mujahidin UNY', '18:30:00'),
(57, 'Selasa', 1, 'Siroh Nabawiyah', 'ust. Deden Anjar', 'masjid mujahidin UNY', '18:30:00'),
(58, 'Senin', 0, 'Bulughul Maram', 'ust. Sholihun', 'masjid mujahidin UNY', '18:30:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
