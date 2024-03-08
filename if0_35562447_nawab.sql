-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql204.infinityfree.com
-- Generation Time: Mar 08, 2024 at 11:14 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_35562447_nawab`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `certificate` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `cnic` varchar(15) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `select_option` varchar(50) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`id`, `full_name`, `certificate`, `father_name`, `cnic`, `phone_number`, `email`, `image_path`, `select_option`, `status`, `created_at`) VALUES
(1, 'Ali Jan', '', 'Nazeer Ahmad', '3840447772063', '03143444215', 'alijaan.web@gmail.com', 'generalist.jpg', 'Web Development', 'Continue', '2023-06-21 16:45:12'),
(2, 'Mustafa  Ahsan Baksh', '', 'Ahsan Ullah', '5742688852147', '03496807311', 'im262897tt@gmail.com', 'Picsart_24-01-26_21-26-29-576.jpg', 'Web Development', 'Continue', '2023-06-21 16:44:49'),
(3, 'Fahad', '', 'Qadir', '0000000000000', '03021664377', 'fahadqad374@gmail.com', '81E68653-5299-400C-A3E8-A237C7F46D59.jpeg', 'Web Designing', 'Continue', '2023-11-15 16:07:58'),
(4, 'Abdul wassay', '', 'Qaisar javed', '3840447889863', '03153126329', 'killerwase165@gmail.com', '1000220754.jpg', 'Web Development', 'Continue', '2023-11-15 16:08:23'),
(5, 'Ali Hassan', 'alihassan.png', 'Khalid', '0000000000000', '12345678911', 'hgfhfggfhfgghf', 'alikhan.jpg', 'Web Designing', 'Completed', '2023-11-15 05:00:00'),
(8, 'Hafiz Muhammad Bilal', 'hafizbilal.png', 'Ghulam Mustafa', '3333333333333', '12345678911', 'dummy', 'hafizbilal.jpg', 'Web Designing', 'Completed', '2023-11-14 05:00:00'),
(9, 'M Ameer Hamza', 'ammerhamza.png', 'Khushi M', '2426462552863', '03092286074', 'ah7786736@gmail.com', '1708937167125.jpg', 'Web Designing', 'Completed', '2023-08-09 13:51:37'),
(10, 'Umar Malik', 'umarmalik.png', 'Muhammad Riaz', '3333333333333', '12345678911', 'dumy', 'umarmalik.jpg', 'Web Designing', 'Completed', '2023-11-14 05:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `heading1` varchar(255) NOT NULL,
  `heading2` varchar(255) NOT NULL,
  `btn_txt` varchar(255) DEFAULT NULL,
  `btn_link` varchar(55) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `order_no` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `heading1`, `heading2`, `btn_txt`, `btn_link`, `image`, `order_no`, `status`) VALUES
(0, '1', '1', '1', '1', '377892178_ai-banner2.webp', 0, 1),
(0, '2', '2', '2', '2', '797943074_banner1.webp', 2, 1),
(0, '3', '3', '3', '3', '624163056_banner3.webp', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(11, 'HTML5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(7, 'Shahid Iqbal', 'shahidjhawari@gmail.com', '03447014153', 'hjhg', '2024-03-05 08:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` varchar(1000) NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(16, 11, 'a', 0, 'Defines a hyperlink', 0, '614918937_a-tag.png', '<iframe src=\"https://www.youtube.com/embed/uLXNGMQW-R0?si=byJcZrM36hbEgyKq\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a hyperlink', 0, 'a tag nawab acdemy', 'a tag nawab acdemy', 'a tag nawab acdemy', 1),
(17, 11, 'abbr', 0, 'Defines an abbreviation or an acronym', 0, '801287949_abbr-tag.png', '<iframe src=\"https://www.youtube.com/embed/iJb5cvcwg3w?si=q0TCD5iO7vrtjbIk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines an abbreviation or an acronym', 0, 'abbr tag nawab acdemy', 'abbr tag nawab acdemy', 'abbr tag nawab acdemy', 1),
(18, 11, 'address', 0, 'Defines contact information for the author/owner of a document', 0, '490931391_address-tag.png', '<iframe src=\"https://www.youtube.com/embed/cSDlkEIm1FA?si=uhfmpDWKWFf2MXpy\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines contact information for the author/owner of a document', 0, 'address tag nawab acdemy', 'address tag nawab acdemy', 'address tag nawab acdemy', 1),
(19, 11, 'area', 0, 'Defines an area inside an image map', 0, '914863127_area-tag.png', '<iframe  src=\"https://www.youtube.com/embed/xjYREZEEkTE?si=N8xbD0SHfYRoApRD\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines an area inside an image map', 0, 'area tag nawab acdemy', 'area tag nawab acdemy', 'area tag nawab acdemy', 1),
(20, 11, 'article', 0, 'Defines an article', 0, '399083670_article-tag.png', '<iframe src=\"https://www.youtube.com/embed/bgT0JwKCqDs?si=3KyI5Ms-uAUS70xU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines an article', 0, 'article tag nawab acdemy', 'article tag nawab acdemy', 'article tag nawab acdemy', 1),
(21, 11, 'aside', 0, 'Defines content aside from the page content', 0, '535853013_aside-tag.png', '<iframe src=\"https://www.youtube.com/embed/ZRQFHX-7LRA?si=glBpc311mwuc6IHs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines content aside from the page content', 0, 'aside tag nawab acdemy', 'aside tag nawab acdemy', 'aside tag nawab acdemy', 1),
(22, 11, 'audio', 0, 'Defines embedded sound content', 0, '806545561_audio-tag.png', '<iframe src=\"https://www.youtube.com/embed/zIr5pq4RTbU?si=_vSL_l8s6O3T5y7O\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines embedded sound content', 0, 'audio tag nawab acdemy', 'audio tag nawab acdemy', 'audio tag nawab acdemy', 1),
(23, 11, 'b', 0, 'Defines bold text', 0, '181231322_b-tag.png', '<iframe  src=\"https://www.youtube.com/embed/B8806GcV66k?si=MgC5aCV3MtIEpg64\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines bold text', 0, 'b tag nawab acdemy', 'b tag nawab acdemy', 'b tag nawab acdemy', 1),
(24, 11, 'base', 0, 'Specifies the base URL/target for all relative URLs in a document', 0, '875135291_base-tag.png', '<iframe src=\"https://www.youtube.com/embed/UAlUQmR4ZSc?si=HnLGQPJ8_F_FHGlb\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Specifies the base URL/target for all relative URLs in a document', 0, 'base tag nawab acdemy', 'base tag nawab acdemy', 'base tag nawab acdemy', 1),
(25, 11, 'bdi', 0, 'Isolates a part of text that might be formatted in a different direction from other text outside it', 0, '607907282_bdi-tag.png', '<iframe src=\"https://www.youtube.com/embed/h5e039ckWUg?si=2C1rVSLmiOyob3PL\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Isolates a part of text that might be formatted in a different direction from other text outside it', 0, 'bdi tag nawab acdemy', 'bdi tag nawab acdemy', 'bdi tag nawab acdemy', 1),
(26, 11, 'bdo', 0, 'Overrides the current text direction', 0, '741754042_bdo-tag.png', '<iframe src=\"https://www.youtube.com/embed/h5e039ckWUg?si=QIPkABEMoj2UmjR2\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Overrides the current text direction', 0, 'bdo tag nawab acdemy', 'bdo tag nawab acdemy', 'bdo tag nawab acdemy', 1),
(27, 11, 'blockquote', 0, 'Defines a section that is quoted from another source', 0, '134337113_blockqout-tag.png', '<iframe src=\"https://www.youtube.com/embed/ak_yC1kd3R4?si=qxM70U7TZYbQS16f\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a section that is quoted from another source', 0, 'blockquote tag nawab acedmy', 'blockquote tag nawab acedmy', 'blockquote tag nawab acedmy', 1),
(28, 11, 'body', 0, 'Defines the document\'s body', 0, '768885130_body-tag.png', '<iframe src=\"https://www.youtube.com/embed/dIJbXrx8vY0?si=k9ZxhCiHhXneWqj5\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines the document\'s body', 0, 'body tag nawab acdemy', 'body tag nawab acdemy', 'body tag nawab acdemy', 1),
(29, 11, 'br', 0, 'Defines a single line break', 0, '724827075_br-tag.png', '<iframe src=\"https://www.youtube.com/embed/DGtq8jtct_Y?si=l7XMwP0257vIYLEw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a single line break', 0, 'br tag nawab acdemy', 'br tag nawab acdemy', 'br tag nawab acdemy', 1),
(30, 11, 'button', 0, 'Defines a clickable button', 0, '628663560_button-tag.png', '<iframe src=\"https://www.youtube.com/embed/95fp4cuPc4g?si=dTe0w379tgjZN_EZ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a clickable button', 0, 'button tag nawab acdemy', 'button tag nawab acdemy', 'button tag nawab acdemy', 1),
(32, 11, 'canvas', 0, 'Used to draw graphics, on the fly, via scripting (usually JavaScript)', 0, '450698742_canvas-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=VlWws6geNh2Bo_7S\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Used to draw graphics, on the fly, via scripting (usually JavaScript)', 0, 'canvas tag nawab academy', 'canvas tag nawab academy', 'canvas tag nawab academy', 1),
(33, 11, 'caption', 0, 'Defines a table caption', 0, '490406659_caption-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=3mArAhpMP3vGc6CU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a table captionDefines a table caption', 0, 'caption tag nawab academy', 'caption tag nawab academy', 'caption tag nawab academy', 1),
(34, 11, 'city', 0, 'Defines the title of a work', 0, '212951061_cite-tag.png', '<iframe src=\"https://www.youtube.com/embed/wB4_crX9xP8?si=-0pDxfm30U4RL9RI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines the title of a work', 0, 'cite tag nawab academy', 'cite tag nawab academy', 'cite tag nawab academy', 1),
(35, 11, 'code', 0, 'Defines a piece of computer code', 0, '417255922_code-tag.png', '<iframe src=\"https://www.youtube.com/embed/9KIZ8ztXndg?si=56KaJ-n21tgufFbb\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a piece of computer code', 0, 'code tag nawab academy', 'code tag nawab academy', 'code tag nawab academy', 1),
(36, 11, 'col', 0, 'Specifies column properties for each column within a colgroup element', 0, '528622395_col-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=M3FAbCjqiaSj1Obv\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Specifies column properties for each column within a colgroup element', 0, 'col tag nawab academy', 'col tag nawab academy', 'col tag nawab academy', 1),
(37, 11, 'colgroup', 0, 'Specifies a group of one or more columns in a table for formatting', 0, '465313899_colgroup-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=zSMaGRvxPQ76t7IH\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Specifies a group of one or more columns in a table for formatting', 0, 'colgroup tag nawab academy', 'colgroup tag nawab academy', 'colgroup tag nawab academy', 1),
(38, 11, 'data', 0, 'Adds a machine-readable translation of a given content', 0, '570722508_data-tag.png', '<iframe  src=\"https://www.youtube.com/embed/fWa-_2Zy6Z4?si=w83QSRGCP_SRLfR7\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Adds a machine-readable translation of a given content', 0, 'data tag nawab academy', 'data tag nawab academy', 'data tag nawab academy', 1),
(39, 11, 'datalist', 0, 'Specifies a list of pre-defined options for input controls', 0, '701983917_datalist-tag.png', '<iframe src=\"https://www.youtube.com/embed/Si2RaeX_smo?si=HvH7Ul-_hQy5OVSN\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Specifies a list of pre-defined options for input controls', 0, 'datalist tag nawab academy', 'datalist tag nawab academy', 'datalist tag nawab academy', 1),
(40, 11, 'dd', 0, 'Defines a description/value of a term in a description list', 0, '350526868_dd-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=xS5A_X6pOeu557oO\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a description/value of a term in a description list', 0, 'dd tag nawab academy', 'dd tag nawab academy', 'dd tag nawab academy', 1),
(41, 11, 'del', 0, 'Defines text that has been deleted from a document', 0, '879074373_del-tag.png', '<iframe src=\"https://www.youtube.com/embed/x9NbGgN5DKI?si=H-YrzRgH3p6_1avg\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines text that has been deleted from a document', 0, 'del tag nawab academy', 'del tag nawab academy', 'del tag nawab academy', 1),
(42, 11, 'details', 0, 'Defines additional details that the user can view or hide', 0, '449501598_detail-tag.png', '<iframe src=\"https://www.youtube.com/embed/g7brpCW219o?si=oJuIWxaWqRRU0gPI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines additional details that the user can view or hide', 0, 'details tag nawab academy', 'details tag nawab academy', 'details tag nawab academy', 1),
(43, 11, 'dfn', 0, 'Specifies a term that is going to be defined within the content', 0, '221897585_dfn-tag.png', '<iframe src=\"https://www.youtube.com/embed/28_2Easlw-U?si=aafG4t8xz9KGrsQB\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Specifies a term that is going to be defined within the content', 0, 'dfn tag nawab academy', 'dfn tag nawab academy', 'dfn tag nawab academy', 1),
(44, 11, 'dialog', 0, 'Defines a dialog box or window', 0, '603267424_dialog-tag.png', '<iframe src=\"https://www.youtube.com/embed/wW8PgczsvoU?si=o_ioGX4reWKkHBtq\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a dialog box or window', 0, 'dialog tag nawab academy', 'dialog tag nawab academy', 'dialog tag nawab academy', 1),
(45, 11, 'div', 0, 'Defines a section in a document', 0, '469931860_div-tag.png', '<iframe src=\"https://www.youtube.com/embed/e74fH_Go8Nk?si=pwO13HapiCrMM3_r\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a section in a document', 0, 'div tag nawab academy', 'div tag nawab academy', 'div tag nawab academy', 1),
(46, 11, 'dl', 0, 'Defines a description list', 0, '640788584_dl-tag.png', '<iframe src=\"https://www.youtube.com/embed/Ogz9s4EZII4?si=mH4omir8-KhB3UIl\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a description list', 0, 'dl tag nawab academy', 'dl tag nawab academy', 'dl tag nawab academy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(12, 'Shahid Iqbal', '55513', 'shahidjhawari@gmail.com', '03447014153', '2024-03-05 11:29:14'),
(13, 'Shahid Iqbal', '123', 'shahidiqbaljhawari@gmail.com', '03447014153', '2024-03-06 08:34:18'),
(14, 'Ali Jan', 'alijann.web@77$', 'alijaan.web@gmail.com', '03143444215', '2024-03-06 10:08:53'),
(15, 'Ali Jan', 'alijaan.web@786$', 'jan897101@gmail.com', '03143444215', '2024-03-06 10:21:07'),
(16, 'Mustafa', 'imshazada', 'im262897tt@gmail.com', '03496807311', '2024-03-06 10:41:14'),
(17, 'Fahad Qadir', 'fahadqadir', 'fahadqad374@gmail.com', '3021664377', '2024-03-06 11:05:37'),
(18, 'Wassi Ahmad', 'killerwase165@1122#', 'killerwase165@gmail.com', '03153126329', '2024-03-06 11:05:49'),
(19, 'M Ameer hamza', 'MHs38404_8218629_5', 'ah7786736@gmail.com', '03104071597', '2024-03-07 09:11:42'),
(20, 'Tariq Masood', 'Masood_1', 'tm323141@gmail.com', '923022980062', '2024-03-07 08:29:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
