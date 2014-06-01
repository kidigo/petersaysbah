-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 01, 2014 at 12:05 PM
-- Server version: 5.5.32-MariaDB
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `psb`
--

-- --------------------------------------------------------

--
-- Table structure for table `calon`
--

CREATE TABLE IF NOT EXISTS `calon` (
  `calon_id` int(11) NOT NULL AUTO_INCREMENT,
  `calon_waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `calon_email` varchar(100) NOT NULL,
  `calon_passwd` varchar(225) NOT NULL,
  `calon_selfie` varchar(500) NOT NULL,
  `calon_nama` varchar(50) NOT NULL,
  `calon_panggilan` varchar(50) NOT NULL,
  `calon_kelamin` varchar(20) NOT NULL,
  `calon_tempatlahir` varchar(10) NOT NULL,
  `calon_tanggallahir` varchar(20) NOT NULL,
  `calon_agama` varchar(50) NOT NULL,
  `calon_alamat` varchar(225) NOT NULL,
  `calon_asal` varchar(50) NOT NULL,
  `calon_nis` varchar(10) NOT NULL,
  `calon_nama_ayah` varchar(50) NOT NULL,
  `calon_nama_ibu` varchar(50) NOT NULL,
  `calon_pendidikan_ayah` varchar(50) NOT NULL,
  `calon_pendidikan_ibu` varchar(50) NOT NULL,
  `calon_pekerjaan_ayah` varchar(50) NOT NULL,
  `calon_pekerjaan_ibu` varchar(50) NOT NULL,
  `calon_alamat_ortu` varchar(255) NOT NULL,
  `calon_notelp` varchar(20) NOT NULL,
  `calon_nilai_a` float NOT NULL,
  `calon_nilai_b` float NOT NULL,
  `calon_nilai_c` float NOT NULL,
  `calon_nilai_d` float NOT NULL,
  `calon_nilai_e` float NOT NULL,
  `calon_nilai_f` float NOT NULL,
  `calon_nilai_g` float NOT NULL,
  `calon_nilai_bi_1` float NOT NULL,
  `calon_nilai_bi_2` float NOT NULL,
  `calon_nilai_bi_3` float NOT NULL,
  `calon_nilai_bi_4` float NOT NULL,
  `calon_nilai_bi_5` float NOT NULL,
  `calon_nilai_bi_av` float NOT NULL,
  `calon_nilai_ma_1` float NOT NULL,
  `calon_nilai_ma_2` float NOT NULL,
  `calon_nilai_ma_3` float NOT NULL,
  `calon_nilai_ma_4` float NOT NULL,
  `calon_nilai_ma_5` float NOT NULL,
  `calon_nilai_ma_av` float NOT NULL,
  `calon_nilai_en_1` float NOT NULL,
  `calon_nilai_en_2` float NOT NULL,
  `calon_nilai_en_3` float NOT NULL,
  `calon_nilai_en_4` float NOT NULL,
  `calon_nilai_en_5` float NOT NULL,
  `calon_nilai_en_av` float NOT NULL,
  `calon_nilai_sc_1` float NOT NULL,
  `calon_nilai_sc_2` float NOT NULL,
  `calon_nilai_sc_3` float NOT NULL,
  `calon_nilai_sc_4` float NOT NULL,
  `calon_nilai_sc_5` float NOT NULL,
  `calon_nilai_sc_av` float NOT NULL,
  `calon_status` varchar(3) NOT NULL,
  `calon_alasandis` varchar(500) NOT NULL,
  PRIMARY KEY (`calon_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE IF NOT EXISTS `halaman` (
  `halaman_id` int(5) NOT NULL,
  `halaman_judul` varchar(50) NOT NULL,
  `halaman_isi` mediumtext NOT NULL,
  PRIMARY KEY (`halaman_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`halaman_id`, `halaman_judul`, `halaman_isi`) VALUES
(0, 'welcome', '<p>Selamat datang di portal di Penerimaan Peserta Didik Baru - SMA Negeri 1 Dompu.</p><p>Sebagai upaya untuk melaksanakan kegiatan pendidikan yang berkualitas, maka suatu hal yang mutlak dilakukan adalah seleksi awal calon-calon siswa baru. &nbsp;Kegiatan ini merupakan input yang menentukan keberhasilan pelaksanaan proses pendidikan yang menghasilkan out put dan outcome terhadap siswa-siswa yang akan melanjutkan studi ke perguruan tinggi.&nbsp;&nbsp;&nbsp;</p><p>&nbsp;</p><p><strong>Tujuan</strong></p><ol><li><p>Memberi kesempatan siswa-siswa terbaik lulusan SMP/MTs untuk belajar di SMA &nbsp;Negeri 1 Dompu melalui jalur &nbsp;seleksi</p></li><li><p>Siswa yang terpilih diharapkan mempunyai kemampuan akademik, kematangan pribadi dan keterampilan untuk menyelesaikan pendidikan di SMAN 1 Dompu sesuai dengan ketentuan yang berlaku.</p></li><li><p>Siswa &nbsp;yang terpilih mempunyai daya saing yang tinggi sehingga dapat melanjutkan ke perguruan tinggi &nbsp;favorit baik melalui SMNPTN &nbsp;ataupun SBMPTN.</p></li><li><p>Menciptakan SDM yang berkualitas tinggi.</p></li></ol><p>&nbsp;</p><p><strong>Daya Tampung</strong></p><p>Daya tampung Penerimaan Peserta Didik Baru tahun ajaran 2014/2015 adalah 120 orang.</p><p>Sebelum memulai silakan baca <strong>Syarat</strong> dan <strong>Alur</strong> Pendaftaran.</p><p>&nbsp;</p>'),
(1, 'alur', '<p>Langkah-langkah untuk menjadi peserta didik di SMAN 1 Negeri Dompu adalah sebagai berikut :</p><ol><li>Tes</li><li>Tes</li><li>Dst...</li></ol>'),
(2, 'jadwal', '<p>Jadwal penyelenggaraan PPDB Online&nbsp; tahun ajaran 2014 / 2015 :</p><p><strong>Pendaftaran Online</strong></p><ul><li><p>Batas akhir pendaftaran Online&nbsp; adalah tanggal : <em>10 Juni 2014</em></p></li><li><p>Pelamar yang lulus &nbsp;melalui PPDB Online akan diumumkan pada &nbsp;tanggal &nbsp;: <em>15 Juni &nbsp;2014</em> &nbsp;melalui website SMA Negeri 1 Dompu <a href="http://sman1dompu.sch.id">http://sman1dompu.sch.id</a></p></li></ul><p><strong>Pendaftaran Ulang</strong></p><ul><li><p>Bagi siwa yang dinyatakan lulus, data yang dikirimkan akan dicocokan dengan berkas asli yang akan diminta pada saat Pendaftaran Ulang. Waktu dan persyaratan Pendaftaran Ulang lainnya akan &nbsp;ditentukan kemudian.</p></li><li><p>Pendaftaran ulang dilaksanakan mulai tanggal ---- sampai dengan tanggal -----</p></li></ul>'),
(3, 'dayatampung', '<p>Daya tampung peserta didik untuk tahun ajaran 2014 / 2015 adalah 140 orang</p>'),
(4, 'faq', '<p>Bila informasi di halaman ini tidak mencukupi kebutuhan anda, silakan hubungi kami di nomor telepon 1234567890.</p><p>&nbsp;</p><p><strong><em>Tanya : Ini situs apa?</em></strong></p><p>Jawab : Ini portal PSB online milik Smansadom</p><p>&nbsp;</p><p><strong><em>Tanya : Biaya pendaftarannya berapa?</em></strong></p><p>Jawab : Gratis. Penyelenggaraan PSB ini tidak dipungut biaya.</p><p>&nbsp;</p><p><strong><em>Tanya : Saya tidak dapat login. Setiap klik Login, saya diarahkan ke halaman &quot;Kirim ulang email verifikasi...&quot;.</em></strong></p><p>Jawab : Mungkin anda belum verifikasi email. Silakan cek email anda untuk verifikasi. Jika ini masih terjadi setelah verifikasi, hapus cookies dan cache peramban web anda, kemudian coba lagi.</p><p>&nbsp;</p><p><strong><em>Tanya : Data yang saya masukkan ternyata ada kekeliruan.</em></strong></p><p>Jawab : Silakan login kemudian masuk ke halaman Profil. Anda dapat menyunting sebagian data anda. Sementara itu, anda tidak dapat menyunting data nilai dan asal sekolah kecuali anda membatalkan pendaftaran dan mencoba mendaftar kembali. Oleh sebab itu, periksalah formulir pendaftaran anda sebelum mengklik &quot;Daftar&quot;</p><p>&nbsp;</p><p><em><strong>Tanya : Pada halaman Peringkat, nama saya berada di daftar merah.</strong></em></p><p>Jawab : Nilai anda tidak mencukupi untuk seleksi penerimaan siswa baru, silakan mencoba mendaftar di sekolah lain. Mungkin sebelumnya anda berada di daftar urutan atas, tapi sampai tanggal penutupan pendaftaran, urutan daftar tersebut bersifat sementara dan relatif berubah. Silakan pantau halaman peringkat untuk melihat apakah anda masih dapat diterima atau tidak.</p><p>&nbsp;</p><p><em><strong>Tanya : Profil saya ditandai &quot;Belum divalidasi&quot;.</strong></em></p><p>Jawab : Anda belum menyerahkan berkas hardcopy ke pihak sekolah atau anda sudah menyerahkan tetapi belum diperiksa oleh pihak sekolah. Jika sudah divalidasi, profil anda akan ditandai &quot;Data valid&quot;</p><p>&nbsp;</p><p><em><strong>Tanya : Saya tidak dapat mengklik tombol &quot;Daftar&quot;. Sepertinya tidak merespon.</strong></em></p><p>Jawab : Mungkin ada form yang belum anda isi atau formatnya salah. Silakan cek kembali. Jika masih tidak bisa, coba untuk merefresh halaman/mengklik lagi menu Pendaftaran.</p>'),
(5, 'persyaratan', '<p><strong>PERSYARATAN UMUM</strong></p><ol><li><p>Siswa &nbsp;SMP/MTs yang pada tahun 20013/2014 duduk di kelas IX.</p></li><li><p>Lulus Ujian Nasional tahun 2013/2014.</p></li></ol><p>&nbsp;</p><p><strong>PERSYARATAN KHUSUS</strong></p><ol><li><p>Mengentri Nilai Rata-rata Raport &nbsp;SMP / MTS Semester V.</p></li><li><p>Mengentri Nilai Rata-rata Ujian Sekolah ( NUS ) SMP/MTs.</p></li><li><p>Mengentri Nilai Rata-rata Ujian Nasinoal.</p></li><li><p>Berkas pas foto sesuai aturan (format .jpg, ukuran maksimal 500kb) untuk diunggah.</p></li><li><p>Berkas fotocopy dari Ijazah, Transkrip nilai, raport semester V yang dilegalisir Kepala Sekolah SMP/MTs.</p></li></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sekolah_asal`
--

CREATE TABLE IF NOT EXISTS `sekolah_asal` (
  `sch_id` int(11) NOT NULL,
  `sch_name` varchar(50) NOT NULL,
  `sch_multipler` int(11) NOT NULL,
  PRIMARY KEY (`sch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sekolah_asal`
--

INSERT INTO `sekolah_asal` (`sch_id`, `sch_name`, `sch_multipler`) VALUES
(1, 'SMP Negeri 1 Dompu', 8),
(2, 'SMP Negeri 2 Dompu', 5),
(3, 'SMP Negeri 3 Dompu', 3),
(4, 'SMP Negeri 4 Dompu', 5),
(5, 'SMP Negeri 5 Dompu', 3),
(6, 'SMP Negeri 6 Dompu', 3),
(7, 'SMP Negeri 7 Dompu', 3),
(8, 'SMP Negeri 1 Woja', 5),
(9, 'SMP Negeri 2 Woja', 5),
(10, 'SMP Negeri 3 Woja', 5),
(11, 'SMP Negeri 4 Woja', 3),
(12, 'MTs Kandai II Woja', 3),
(13, 'SMP Negeri 1 Pajo', 5),
(14, 'SMP Negeri 2 Pajo', 2),
(15, 'MTs Al-Kautsar Pajo', 5),
(16, 'SMP Negeri 1 Manggelewa', 5),
(17, 'SMP Negeri 2 Manggelewa', 3),
(18, 'SMP Negeri 3 Manggelewa', 3),
(19, 'SMP Negeri 1 Kempo', 6),
(20, 'SMP Negeri 2 Kempo', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tetapan`
--

CREATE TABLE IF NOT EXISTS `tetapan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tetapan` varchar(225) NOT NULL,
  `nilai` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tetapan`
--

INSERT INTO `tetapan` (`id`, `tetapan`, `nilai`) VALUES
(1, 'dayatampung', '120'),
(2, 'tglbuka', '31-05-2014'),
(3, 'tgltutup', '10-06-2014'),
(4, 'tglpengumuman', '31-05-2014');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `level` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT 'calon',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`, `level`) VALUES
(1, 'admin', '$2a$08$BuC7Kl8cFMc6FyQ7JmBCj.PHIsS/6GVSUs/ILraRSRrCcW/.iln8C', 'ppdb@sman1dompu.sch.id', 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '2014-05-31 14:36:30', '2014-03-31 10:46:51', '2014-05-31 06:36:30', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_autologin`
--

CREATE TABLE IF NOT EXISTS `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE IF NOT EXISTS `user_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=80 ;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `country`, `website`) VALUES
(1, 1, NULL, NULL),
(2, 7, NULL, NULL),
(3, 9, NULL, NULL),
(4, 10, NULL, NULL),
(5, 11, NULL, NULL),
(6, 15, NULL, NULL),
(7, 16, NULL, NULL),
(8, 18, NULL, NULL),
(9, 22, NULL, NULL),
(10, 23, NULL, NULL),
(11, 24, NULL, NULL),
(12, 25, NULL, NULL),
(13, 26, NULL, NULL),
(14, 27, NULL, NULL),
(15, 28, NULL, NULL),
(16, 29, NULL, NULL),
(17, 30, NULL, NULL),
(18, 31, NULL, NULL),
(19, 32, NULL, NULL),
(20, 33, NULL, NULL),
(21, 34, NULL, NULL),
(22, 35, NULL, NULL),
(23, 36, NULL, NULL),
(24, 37, NULL, NULL),
(25, 38, NULL, NULL),
(26, 39, NULL, NULL),
(27, 40, NULL, NULL),
(28, 41, NULL, NULL),
(29, 42, NULL, NULL),
(30, 43, NULL, NULL),
(31, 44, NULL, NULL),
(32, 45, NULL, NULL),
(33, 46, NULL, NULL),
(34, 47, NULL, NULL),
(35, 50, NULL, NULL),
(36, 51, NULL, NULL),
(37, 52, NULL, NULL),
(38, 53, NULL, NULL),
(39, 54, NULL, NULL),
(40, 55, NULL, NULL),
(41, 56, NULL, NULL),
(42, 57, NULL, NULL),
(43, 58, NULL, NULL),
(44, 59, NULL, NULL),
(45, 61, NULL, NULL),
(46, 63, NULL, NULL),
(47, 64, NULL, NULL),
(48, 65, NULL, NULL),
(49, 66, NULL, NULL),
(50, 68, NULL, NULL),
(51, 69, NULL, NULL),
(52, 70, NULL, NULL),
(53, 71, NULL, NULL),
(54, 75, NULL, NULL),
(55, 76, NULL, NULL),
(56, 77, NULL, NULL),
(57, 78, NULL, NULL),
(58, 79, NULL, NULL),
(59, 80, NULL, NULL),
(60, 81, NULL, NULL),
(61, 82, NULL, NULL),
(62, 83, NULL, NULL),
(63, 84, NULL, NULL),
(64, 85, NULL, NULL),
(65, 86, NULL, NULL),
(66, 87, NULL, NULL),
(67, 88, NULL, NULL),
(68, 89, NULL, NULL),
(69, 91, NULL, NULL),
(70, 92, NULL, NULL),
(71, 99, NULL, NULL),
(72, 2, NULL, NULL),
(73, 3, NULL, NULL),
(74, 6, NULL, NULL),
(75, 14, NULL, NULL),
(76, 16, NULL, NULL),
(77, 17, NULL, NULL),
(78, 19, NULL, NULL),
(79, 20, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;