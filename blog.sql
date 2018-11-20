/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL
 Source Server Type    : MySQL
 Source Server Version : 100135
 Source Host           : 127.0.0.1:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 100135
 File Encoding         : 65001

 Date: 11/11/2018 00:25:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for artikel
-- ----------------------------
DROP TABLE IF EXISTS `artikel`;
CREATE TABLE `artikel`  (
  `id_artikel` int(11) NOT NULL AUTO_INCREMENT,
  `judul_artikel` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `isi_artikel` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `author_artikel` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `tanggal_artikel` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_artikel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of artikel
-- ----------------------------
INSERT INTO `artikel` VALUES (1, 'Library JavaScript Menarik Tahun 2018', 'Dengan naik daun Bahasa Pemrograman JavaScript tentu para Developer akan menggali apakah yang membuat JavaScript tersebut menjadi Bahasa Pemrograman terpopuler, yang telah dilansir oleh StackOverflow dalam Surveynya tahun 2018. Tidak terlepas dari itu semua, Framework dan Library JavaScript merupakan alasan yang membuat JavaScript menjadi hebat seperti saat ini. Namun pada artikel kali ini akan membahasa Library JavaScript yang menarik untuk dipelajari di tahun 2018.', 'Codepolitan', 2, '2018-10-28 12:53:31');
INSERT INTO `artikel` VALUES (2, '100 Fungsi Paling Populer di PHP', 'PHP memiliki ribuan fungsi bawaan yang tentu tidak semuanya kita gunakan dalam proses pembuatan aplikasi. Diantara ribuan fungsi tersebut, ada 100 fungsi bawaan PHP yang paling sering oleh PHP Developer, berikut ini daftar lengkapnya:', 'Codepolitan', 1, '2018-10-28 12:54:21');
INSERT INTO `artikel` VALUES (3, 'Membangun Desktop App dengan 5 Framework Javascript', 'Tidak bisa kita pungkiri bahwa Javascript memang bahasa terbaik saat ini, yang telah dibuktikan dengan keunggulan pada framework dan library-nya. Javascript saat ini bukan hanya fokus pada website tetapi juga dapat diterapkan pada platform mobile dan desktop. Dilansir dari website brainhub.ue yang merupakan website yang bertujuan membangun Produk digital dalam pengembangan perangkat lunak Javascript bahwa terdapat 5 Framework Javascript terbaik untuk Aplikasi Desktop.', 'Codepolitan', 2, '2018-10-28 12:54:44');
INSERT INTO `artikel` VALUES (5, 'Inilah Ponsel Lipat Pertama di Dunia 				', 'Ponsel pertama di dunia dengan layar fleksibel yang bisa dilipat di bagian tengah telah resmi diperkenalkan pekan ini. Namanya Flexpai, bukan Samsung atau Huawei yang meluncurkannya. Sang pembuatnya adalah Royole, perusahaan asal California, Amerika Serikat, yang namanya tak sebesar Huawei, Samsung, atau LG yang telah sesumbar akan menelurkan smartphone lipat tahun depan', 'tekno.kompas.com', 5, '2018-11-10 23:35:12');
INSERT INTO `artikel` VALUES (6, '5 Free HTML5/CSS3 Responsive Website Template', 'HTML 5 sudah menjadi web standart terbaru bersanding dengan CSS3, banyak resource yang membahas tentang HTML 5 dan CSS 3, tidak sedikit pula website template yang mengusung HTML 5 dan CSS 3, Free atau GRATIS tidak selalu mempunyai kualitas yang jelek, dengan banyaknya web designer kelas dunia yang berbagi web template dengan mengikuti trend yang ada seperti flat design, responsive layout, jQuery, dan sebagainya. Bagi kamu yang tidak ada waktu untuk mencari web template yang responsive dan juga kekinian, saya hadirkan 5 free responsive html/css website template sebagai berikut: Folder, Retrospect, Timber, E-Shopper, Sublime, dan Zeni.', 'belajarwebdesign.com', 4, '2018-11-11 00:04:38');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (1, 'PHP');
INSERT INTO `kategori` VALUES (2, 'Javascript');
INSERT INTO `kategori` VALUES (3, 'HTML');
INSERT INTO `kategori` VALUES (4, 'CSS');
INSERT INTO `kategori` VALUES (5, 'Gadget');

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tittle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `author` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `picture` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `d_entry` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `d_update` timestamp(0) NOT NULL,
  `deleted` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES (1, 'Catat, Ini Tanggal Penjualan Perdana iPhone XR', 'Liputan6.com, Jakarta - Apple tengah bersiap menggelar penjualan salah satu varian baru smartphone miliknya, iPhone XR.\r\n\r\nMenurut laporan, badan independen yang mengurusi telekomunikasi Amerika Serikat (AS), Federal Communications Commission (FCC), telah memberikan restunya,\r\n\r\nDikutip dari Softpedia, Senin (1/10/2018), iPhone XR belum lama ini telah mendapatkan persetujuan dari FCC, sehingga hanya tinggal menunggu waktu peluncurannya pada bulan depan.\r\n\r\nApple sendiri sudah meminta persetujuan dari FCC pada 6 September, enam hari sebelum pengumumannya pada 12 September.\r\n\r\nBerbekal persetujuan FCC, iPhone XR bisa dirilis di AS. Apple dijadwalkan akan menggelar pre-order smartphone ini pada 19 Oktober dan penjualan perdananya dimulai pada 26 Oktober 2018.\r\n\r\niPhone XR diprediksi akan menghasilkan angka penjualan yang baik. Tidak hanya karena menjadi iPhone baru paling murah, tapi juga diperkirakan akan bisa membuat banyak pengguna lama beralih ke perangkat baru.\r\n\r\nMenurut sejumlah sumber, iPhone XR menguasai lebih dari 50 persen pemesanan yang diajukan oleh Apple kepada para mitra penyuplai materialnya. Hal ini menandakan perusahaan memperkirakan iPhone XR akan laris manis.\r\n\r\niPhone XR dijual dengan harga mulai dari US$ 749 di AS, lebih murah daripada XS dan XS Max.\r\n\r\nNamun, memang ada beberapa perbedaan spesifikasi, seperti iPhone XR menggunakan layar LCD dan tidak memiliki fitur 3D Touch. Ketiganya hadir tanpa Touch ID, sebaliknya fitur keamanan tersebut digantikan sepenuhnya oleh Face ID.', 'Liputan6.com', 'blog_1.jpg', '2018-10-14 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `t_article` VALUES (2, '5 Fitur Baru yang Wajib Dijajal di iOS 12.1', '<b>Liputan6.com, Jakarta</b> - Apple terus memperbarui sistem operasi iOS untuk pengguna iPhone dan iPad.\r\nKali ini, perangkat iOS dengan pembaruan teranyar, versi iOS 12.1, bakal melenggang dengan deretan fitur menarik.\r\nDikutip dari Tech Radar, Kamis (11/10/2018), iOS 12.1 hadir dengan beberapa fitur baru untuk kemudahan produktivitas pengguna. Apa saja? Berikut daftarnya:</br>\r\n<b>1. 70 Emoji Baru</b></br>\r\nNanti, akan ada lebih dari 70 karakter emoji yang bakal meramaikan iOS 12.1.\r\nIni artinya, pengguna iPhone dan iPad yang sudah memperbarui sistem operasinya ke iOS 12.1 sudah bisa menjajal deretan emoji anyar ini. Tak cuma itu, emoji baru ini nanti juga akan tersedia di sistem operasi macOS dan watchOS.\r\nAdapun 70 jenis emoji baru tersebut hadir dalam desain baru dan unik. Mulai dari emoji kepala botak, orang kasmaran, sepatu hiking, moon cake, softball, skateboard, firesbee, salt shaker, roti bagel, selada, dan beberapa hewan dan serangga seperti rakun, angsa, llama, dan nyamuk.</br>\r\n<b>2. Fitur Face Time Group</b></br>\r\nFace Timedi iOS 12.1 memungkinkan kita untuk melakukan video call ke 32 pengguna.</br>\r\n<b>3. Efek Bokeh Portrait Mode</b></br>\r\nBeralih ke sekor kamera, Apple memberikan perubahan efek bokeh Portrait Modde--khususnya iPhone XS dan XS Max.\r\nJadi, pengguna bisa mengambil gambar yang bagian latar belakangnya bisa diblur (bokeh) secara real time sebelum membidik foto.</br>\r\n<b>4. Dukungan e-SIM</b></br>\r\nPerangkat IOS 12.1 juga akan didukung dengan menu khusus e-SIM, tetapi pengguna nanti harus menunggu operator yang mendukung fitur ini saat dirilis secara resmi.</br>\r\n<b>5. Referensi iPad 2018</b></br>\r\nMeskipun bukan fitur utama iOS 12.1, nyatanya iOS 12.1 merujuk pada iPad terbaru yang bakal dirilis pada tahun ini, yakni sebuah referensi ke kode â€œiPadfall2018â€.', 'Liputan6.com', 'blog_2.jpg', '2018-10-14 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `t_article` VALUES (3, 'Xiaomi Boyong Mi TV 4A ke Indonesia', '<b>JAKARTA, KOMPAS.com</b> - Tak hanya ponsel, Xiaomi kini mulai berani masuk ke pasar penjualan televisi di Indonesia. Vendor asal China ini resmi memboyong Mi TV 4A, televisi pintar dengan harga Rp 2 juta. Menurut VP of Overseas Business Mi TV, Janet Zeng, televisi pintar ini diboyong untuk menyediakan konten berkualitas bagi para penikmat tayangan televisi di Indonesia. Ia menilai dengan televisi pintar, pengguna bakal memiliki pengalaman baru menonton televisi. \"Kami ingin memberi pengalaman yang berbeda lewat Mi TV 4A ini. Kami secara khusus memboyong smart TV ini dengan harga terbaik,\" ungkap Janet saat peluncuran di kawasan Kuningan, Jakarta Pusat, Selasa (4/9/2018). Televisi pintar ini memiliki bentang layar 32 inci dengan kerapatan 1366 x 768. Sayangnya layarnya belum mendukung gambar berkualitas Full HD (1080p). Televisi cerdas ini didukung sistem operasi Android yang dimodifikasi dengan UI bernama Xiaomi PatchWall. Artinya, lewat televisi ini pengguna bisa mengunduh aplikasi dari Google Play Store dan dapat terhubung dengan Chromecast. Istimewanya, televisi ini juga sudah mendukung Google Search dalam bahasa Indonesia. Pengguna cukup menekan tombol tertentu pada remote untuk mengaktifkan fitur Google Search, kemudian cukup menyebutkan judul film atau acara yang ingin ditonton dan secara otomatis televisi ini menyajikannya.</br>\r\nSistem on Chip (SoC) Mi TV ini mengandalkan Amlogic 950x quad-core yang dilengkapi prosesor grafis Mali-450. Televisi ini juga memiliki kapasitas penyimpanan 8GB eMMC yang dipadankan dengan RAM 1GB. Untuk konektivitas, Mi TV 4A memiliki tiga slot HDMI, dua port USB 2.0 dan port ethernet. Televisi ini juga mendukung jaringan Wi-Fi dan Bluetooth 4.2. Televisi dengan body plastik ini bisa dipesan lewat sistem pre order mulai tanggal 6 September mendatang di Lazada. Sedangkan pada 20 September nanti televisi ini akan mulai hadir di Mi.com. Kemudian 29 September akan tersedia di seluruh toko offline Mi Store.</br></br>\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"Xiaomi Boyong Mi TV 4A ke Indonesia, Banderol Rp 2 Juta\", https://tekno.kompas.com/read/2018/09/05/08190047/xiaomi-boyong-mi-tv-4a-ke-indonesia-banderol-rp-2-juta.\r\nPenulis : Yudha Pratomo\r\nEditor : Reza Wahyudi', 'Tekno Kompas', 'blog_3.jpg', '2018-10-14 00:00:00', '0000-00-00 00:00:00', 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_depan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_belakang` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
