-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2024 at 06:31 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpkstudents`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(5) NOT NULL,
  `prefix` varchar(6) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `class` varchar(85) NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `prefix`, `fname`, `lname`, `class`, `link`) VALUES
(36006, 'นาย', 'ชยางกูร', 'ขำเถื่อน', 'ม.6/10', 'https://www.google.com'),
(36008, 'นาย', 'ไชยวัฒน์', 'มิตรานนท์', 'ม.6/10', 'https://www.google.com'),
(36019, 'นาย', 'วโรดม', 'กุนเรือง', 'ม.6/10', 'https://www.google.com'),
(36024, 'นาย', 'อภิวิชญ์', 'ชนะชล', 'ม.6/10', 'https://www.google.com'),
(36034, 'นางสาว', 'สุภาวิตา', 'บุญโภคอุดม', 'ม.6/10', 'https://www.facebook.com'),
(36041, 'นาย', 'ชานนท์', 'ชาวชายโขง', 'ม.6/10', 'https://www.google.com'),
(36045, 'นาย', 'นพดล', 'ละดาดก', 'ม.6/10', 'https://www.google.com'),
(36065, 'นางสาว', 'พิมพ์ชนก', 'สุขนุ่ม', 'ม.6/10', 'https://www.github.com'),
(36069, 'นางสาว', 'วรณัน', 'บุหงาเกษมสุข', 'ม.6/10', 'https://www.github.com'),
(36076, 'นาย', 'ชินกฤช', 'ธนกรณ์กุล', 'ม.6/10', 'https://www.google.com'),
(36083, 'นาย', 'พงศ์ภรณ์', 'สุนทรานุรักษ์', 'ม.6/10', 'https://www.google.com'),
(36084, 'นาย', 'พรเทพ', 'เอมอมร', 'ม.6/10', 'https://www.google.com'),
(36107, 'นางสาว', 'อภิชญา', 'ตะโกจีน', 'ม.6/10', 'https://www.github.com'),
(36114, 'นาย', 'วรชัย', 'เจนจบวิทยา', 'ม.6/10', 'https://www.google.com'),
(36115, 'นาย', 'สรวิชญ์', 'สิทธิบวรสกุล', 'ม.6/10', 'https://www.youtube.com'),
(36127, 'นางสาว', 'นัทธมน', 'วชิรสุดเลขา', 'ม.6/10', 'https://www.github.com'),
(36143, 'นางสาว', 'สิรินดา', 'อยู่เมฆ', 'ม.6/10', 'https://www.github.com'),
(36186, 'นาย', 'ไชยวัฒน์', 'จัดเจนนาวี', 'ม.6/10', 'https://www.youtube.com'),
(36188, 'นาย', 'วงศ์วริศ', 'ชัยกุลประดิษฐ์', 'ม.6/10', 'https://www.youtube.com'),
(36189, 'นาย', 'คณิศร', 'ศักดิ์ทอง', 'ม.6/10', 'https://www.youtube.com'),
(36216, 'นาย', 'ธนวัฒน์', 'ลบช้าง', 'ม.6/10', 'https://www.youtube.com'),
(36275, 'นาย', 'แทนไท', 'จันทร์ขจร', 'ม.6/10', 'https://www.youtube.com'),
(36277, 'นาย', 'ปรัญชัย', 'เพชรแสงโรจน์', 'ม.6/10', 'https://www.youtube.com'),
(36280, 'นาย', 'พัทธดนย์', 'สุวรรณรัตน์', 'ม.6/10', 'https://www.youtube.com'),
(36283, 'นาย', 'สัณหณัฐ', 'ครองธรรมศิริ', 'ม.6/10', 'https://www.youtube.com'),
(36314, 'นาย', 'จิรภัทร', 'ภูบรรทัด', 'ม.6/10', 'https://www.youtube.com'),
(36315, 'นาย', 'จิรานุวัฒน์', 'ขันธ์นิตย์', 'ม.6/10', 'https://www.facebook.com'),
(36324, 'นาย', 'สิปปกร', 'จันทร์พุ่ม', 'ม.6/10', 'https://www.facebook.com'),
(36326, 'นาย', 'อชิรวัตติ์', 'ศรีรัตนาม', 'ม.6/10', 'https://www.facebook.com'),
(36335, 'นาย', 'ปณิทัศน์', 'แซ่เจียม', 'ม.6/10', 'https://www.facebook.com'),
(36338, 'นางสาว', 'ปภาดา', 'เหลืองประภา', 'ม.6/10', 'https://www.github.com'),
(36354, 'นาย', 'กันตพัฒน์', 'โตใหญ่', 'ม.6/10', 'https://www.facebook.com'),
(36374, 'นางสาว', 'ณัฐชา', 'เท้าสมบุญ', 'ม.6/10', 'https://www.github.com'),
(36377, 'นางสาว', 'ธัญชนก', 'สุดธง', 'ม.6/10', 'https://www.github.com'),
(36396, 'นาย', 'ชุติเดช ', 'เทิดสถิตบุญฤทธิ์', 'ม.6/10', 'https://www.facebook.com'),
(38359, 'นางสาว', 'กัญญวรา', 'สายโส', 'ม.6/10', 'https://www.github.com'),
(38373, 'นาย', 'วชิรวิชญ์', 'ตะเภาทอง', 'ม.6/10', 'https://www.facebook.com'),
(38396, 'นาย', 'พุฒิเกียรติ', 'แก้วกล้า', 'ม.6/10', 'https://www.facebook.com'),
(38397, 'นางสาว', 'นภัสสร', 'กิจจารักษ์', 'ม.6/10', 'https://www.github.com'),
(38401, 'นาย', 'ศุภโชค', 'ปิยเจริญสิทธิ์', 'ม.6/10', 'https://www.facebook.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38402;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
