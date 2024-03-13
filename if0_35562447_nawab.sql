-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql204.infinityfree.com
-- Generation Time: Mar 13, 2024 at 02:19 PM
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
  `fee` varchar(255) NOT NULL,
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

INSERT INTO `admissions` (`id`, `full_name`, `certificate`, `fee`, `father_name`, `cnic`, `phone_number`, `email`, `image_path`, `select_option`, `status`, `created_at`) VALUES
(1, 'Ali Jan', '', '', 'Nazeer Ahmad', '3840447772063', '03143444215', 'alijaan.web@gmail.com', 'generalist.jpg', 'Web Development', 'Continue', '2023-06-21 16:45:12'),
(2, 'Mustafa  Ahsan Baksh', '', '', 'Ahsan Ullah', '5742688852147', '03496807311', 'im262897tt@gmail.com', 'Picsart_24-01-26_21-26-29-576.jpg', 'Web Development', 'Continue', '2023-06-21 16:44:49'),
(3, 'Fahad', '', '', 'Qadir', '0000000000000', '03021664377', 'fahadqad374@gmail.com', '81E68653-5299-400C-A3E8-A237C7F46D59.jpeg', 'Web Designing', 'Continue', '2023-11-15 16:07:58'),
(4, 'Abdul wassay', '', '', 'Qaisar javed', '3840447889863', '03153126329', 'killerwase165@gmail.com', '1000220754.jpg', 'Web Development', 'Continue', '2023-11-15 16:08:23'),
(5, 'Ali Hassan', 'alihassan.png', '', 'Khalid', '0000000000000', '12345678911', 'hgfhfggfhfgghf', 'alikhan.jpg', 'Web Designing', 'Completed', '2023-11-15 05:00:00'),
(6, 'Hafiz Muhammad Bilal', 'hafizbilal.png', '', 'Ghulam Mustafa', '3333333333333', '12345678911', 'dummy', 'hafizbilal.jpg', 'Web Designing', 'Completed', '2023-11-14 05:00:00'),
(7, 'M Ameer Hamza', 'ammerhamza.png', '', 'Khushi M', '2426462552863', '03092286074', 'ah7786736@gmail.com', '1708937167125.jpg', 'Web Designing', 'Completed', '2023-08-09 13:51:37'),
(8, 'Umar Malik', 'umarmalik.png', '', 'Muhammad Riaz', '3333333333333', '12345678911', 'dumy', 'umarmalik.jpg', 'Web Designing', 'Completed', '2023-11-14 05:00:00'),
(9, 'Muhammad Bilal', '', 'Defaulter', 'Muhammad Nasar', '3333333333333', '12345678911', 'demo', 'bilal.png', 'Web Designing', 'Completed', '2023-11-13 05:00:00');

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
(11, 'HTML5', 1),
(12, 'CSS', 1),
(13, 'JAVASCRIPT', 1);

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
(33, 11, 'caption', 0, 'Defines a table caption', 0, '490406659_caption-tag.png', '<iframe src=\"https://www.youtube.com/embed/lYscuo1aznw?si=KErcFMfN2VQ4Cqdw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a table captionDefines a table caption', 0, 'caption tag nawab academy', 'caption tag nawab academy', 'caption tag nawab academy', 1),
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
(46, 11, 'dl', 0, 'Defines a description list', 0, '640788584_dl-tag.png', '<iframe src=\"https://www.youtube.com/embed/Ogz9s4EZII4?si=mH4omir8-KhB3UIl\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a description list', 0, 'dl tag nawab academy', 'dl tag nawab academy', 'dl tag nawab academy', 1),
(47, 11, 'dt', 0, 'Defines a term/name in a description list', 0, '915264674_dt-tag.png', '<iframe src=\"https://www.youtube.com/embed/Ogz9s4EZII4?si=VFevZDKaZb3lyMsN\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a term/naDefines a term/name in a description listme in a description list', 0, 'dt tag nawab academy', 'dt tag nawab academy', 'dt tag nawab academy', 1),
(48, 11, 'em', 0, 'Defines emphasized text', 0, '629413396_em-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=ae3OFalOMIFVW1kE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines emphasized text', 0, 'em tag nawab academy', 'em tag nawab academy', 'em tag nawab academy', 1),
(49, 11, 'embed', 0, 'Defines a container for an external application', 0, '506253880_embed-tag.png', '<iframe src=\"https://www.youtube.com/embed/rlwx1Kb7oKI?si=JjyR7101oycw_epp\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a container for an external application', 0, 'embed tag nawab academy', 'embed tag nawab academy', 'embed tag nawab academy', 1),
(50, 11, 'fieldset', 0, 'Groups related elements in a form', 0, '460208356_fieldset-tag.png', '<iframe src=\"https://www.youtube.com/embed/6xyxntC2F6k?si=xQVZwSmst4x78Ruf\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Groups related elements in a form', 0, 'fieldset tag nawab academy', 'fieldset tag nawab academy', 'fieldset tag nawab academy', 1),
(51, 11, 'figcaption', 0, 'Defines a caption for a figure element', 0, '987617036_figcaption-tag.png', '<iframe src=\"https://www.youtube.com/embed/bCQio9wW1yM?si=_2wlivUz68298QVB\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a caption for a figure element', 0, 'figcaption tag nawab academy', 'figcaption tag nawab academy', 'figcaption tag nawab academy', 1),
(52, 11, 'figure', 0, 'Specifies self-contained content', 0, '936731978_figure-tag.png', '<iframe src=\"https://www.youtube.com/embed/bCQio9wW1yM?si=_2wlivUz68298QVB\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Specifies self-contained content', 0, 'figure tag nawab academy', 'figure tag nawab academy', 'figure tag nawab academy', 1),
(53, 11, 'footer', 0, 'Defines a footer for a document or section', 0, '583483242_footer-tag.png', '<iframe src=\"https://www.youtube.com/embed/IIUvXAhCrRY?si=9fgVyCwBEB3gAyyK\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a footer for a document or section', 0, 'footer tag nawab academy', 'footer tag nawab academy', 'footer tag nawab academy', 1),
(54, 11, 'form', 0, 'Defines an HTML form for user input', 0, '664111650_form-tag.png', '<iframe src=\"https://www.youtube.com/embed/r2LXJnjOi7Q?si=ocIAPN6uyvSmmcz4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines an HTML form for user input', 0, 'form tag nawab academy', 'form tag nawab academy', 'form tag nawab academy', 1),
(55, 11, 'h1 to h6', 0, 'Defines HTML headings', 0, '594250751_h1toh6-tag.png', '<iframe src=\"https://www.youtube.com/embed/pIwUtaQn4RE?si=j5lARx0G_hpJPm0E\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines HTML headings', 0, 'h1 to h6 tag nawab academy', 'h1 to h6 tag nawab academy', 'h1 to h6 tag nawab academy', 1),
(56, 11, 'head', 0, 'Contains metadata/information for the document', 0, '641966300_head-tag.png', '<iframe src=\"https://www.youtube.com/embed/DIDfwlJ3zDQ?si=fpEPA2Q8sqETic0h\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Contains metadata/information for the document', 0, 'head tag nawab academy', 'head tag nawab academy', 'head tag nawab academy', 1),
(57, 11, 'header', 0, 'Defines a header for a document or section', 0, '479053322_header-tag.png', '<iframe src=\"https://www.youtube.com/embed/HHs9sSQ3GTw?si=xBIKYsnfUuRR7kpa\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a header for a document or section', 0, 'header tag nawab academy', 'header tag nawab academy', 'header tag nawab academy', 1),
(58, 11, 'hgroup', 0, 'Defines a header and related content', 0, '688088648_hgroup-tag.png', '<iframe src=\"https://www.youtube.com/embed/HHs9sSQ3GTw?si=8AbqBSla4rgHheh-\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a header and related content', 0, 'hgroup tag nawab academy', 'hgroup tag nawab academy', 'hgroup tag nawab academy', 1),
(59, 11, 'hr', 0, 'Defines a thematic change in the content', 0, '331779721_hr-tag.png', '<iframe src=\"https://www.youtube.com/embed/uJK5KgIZRBA?si=X0TZIk2ezMFd0ofk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a thematic change in the content', 0, 'hr tag nawab academy', 'hr tag nawab academy', 'hr tag nawab academy', 1),
(60, 11, 'html', 0, 'Defines the root of an HTML document', 0, '746934879_html-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=O61eD4cldpj-fEGX\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines the root of an HTML document', 0, 'html tag nawab academy', 'html tag nawab academy', 'html tag nawab academy', 1),
(61, 11, 'i', 0, 'Defines a part of text in an alternate voice or mood', 0, '115208791_i-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=BfT3yaK9qrDpBSsw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a part of text in an alternate voice or mood', 0, 'i tag nawab academy', 'i tag nawab academy', 'i tag nawab academy', 1),
(62, 11, 'iframe', 0, 'Defines an inline frame', 0, '426631386_iframe-tag.png', '<iframe src=\"https://www.youtube.com/embed/N1TDWtNn08o?si=cptiic-cdkkZKdK4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines an inline frame', 0, 'iframe tag nawab academy', 'iframe tag nawab academy', 'iframe tag nawab academy', 1),
(64, 11, 'img', 0, 'Defines an image', 0, '505829063_img-tag.png', '<iframe src=\"https://www.youtube.com/embed/xSP8l2rDP2Y?si=onN2PvdD-V8aUK6x\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines an image', 0, 'img tag nawab academy', 'img tag nawab academy', 'img tag nawab academy', 1),
(65, 11, 'input', 0, 'Defines an input control', 0, '338927390_input-tag.png', '<iframe src=\"https://www.youtube.com/embed/BE_pWbPCLP0?si=jWqIWQI7lfTvkS4A\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines an input control', 0, 'input tag nawab academy', 'input tag nawab academy', 'input tag nawab academy', 1),
(66, 11, 'ins', 0, 'Defines a text that has been inserted into a document', 0, '184645579_ins-tag.png', '<iframe  src=\"https://www.youtube.com/embed/87GjA2-28b0?si=L9zTpNTDqBg0HNu4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a text that has been inserted into a document', 0, 'ins tag nawab academy', 'ins tag nawab academy', 'ins tag nawab academy', 1),
(67, 11, 'kbd', 0, 'Defines keyboard input', 0, '930720128_kbd-tag.png', '<iframe src=\"https://www.youtube.com/embed/Gdh5m5rNHGU?si=ZFgnJBBrFtvZW5IU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines keyboard input', 0, 'kbd tag nawab academy', 'kbd tag nawab academy', 'kbd tag nawab academy', 1),
(68, 11, 'label', 0, 'Defines a label for an input element', 0, '718141767_label-tag.png', '<iframe src=\"https://www.youtube.com/embed/BE_pWbPCLP0?si=GhhH97C5Z6Wayie_\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a label for an input element', 0, 'label tag nawab academy', 'label tag nawab academy', 'label tag nawab academy', 1),
(69, 11, 'legend', 0, 'Defines a caption for a fieldset element', 0, '913066641_legend-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=NPbus5yaIbftJvA5\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a caption for a fieldset element', 0, 'legend tag nawab academy', 'legend tag nawab academy', 'legend tag nawab academy', 1),
(70, 11, 'li', 0, 'Defines a list item', 0, '258580582_li-tag.png', '<iframe src=\"https://www.youtube.com/embed/nSLUK6lVjgs?si=9U2AybzWjA3TtEdG\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a list item', 0, 'li tag nawab academy', 'li tag nawab academy', 'li tag nawab academy', 1),
(71, 11, 'link', 0, 'Defines the relationship between a document and an external resource (most used to link to style sheets)', 0, '617069733_link.png', '<iframe src=\"https://www.youtube.com/embed/N3ssxa7y-h4?si=aSBL8sZpPK3-fTYl\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines the relationship between a document and an external resource (most used to link to style sheets)', 0, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/N3ssxa7y-h4?si=aSBL8sZpPK3-fTYl\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'link tag nawab academy', 'link tag nawab academy', 1),
(72, 11, 'main', 0, 'Specifies the main content of a document', 0, '904548938_main-tag.png', '<iframe src=\"https://www.youtube.com/embed/ht0rDj7H6xA?si=MuYFuLffJpd58BYt\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Specifies the main content of a document', 0, 'main tag nawab academy', 'main tag nawab academy', 'main tag nawab academy', 1),
(73, 11, 'map', 0, 'Defines an image map', 0, '837404642_map-tag.png', '<iframe src=\"https://www.youtube.com/embed/xjYREZEEkTE?si=AK4JfoVafts50ULz\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines an image map', 0, 'map tag nawab academy', 'map tag nawab academy', 'map tag nawab academy', 1),
(74, 0, 'mark', 0, 'Defines marked/highlighted text', 0, '713467397_mark-tag.png', '<iframe src=\"https://www.youtube.com/embed/fozwx7vkkMo?si=OuPLXcACqvc75BL0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines marked/highlighted text', 0, 'mark tag nawab academy', 'mark tag nawab academy', 'mark tag nawab academy', 1),
(75, 11, 'menu', 0, 'Defines an unordered list', 0, '790492001_menu-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=pZvr5oouxrvG10Ds\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines an unordered list', 0, 'menu tag nawab academy', 'menu tag nawab academy', 'menu tag nawab academy', 1),
(76, 11, 'meta', 0, 'Defines metadata about an HTML document', 0, '155377987_meta-tag.png', '<iframe src=\"https://www.youtube.com/embed/6EMdt-KYWWM?si=37PzfkQCS180Yi2j\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines metadata about an HTML document', 0, 'meta tag nawab academy', 'meta tag nawab academy', 'meta tag nawab academy', 1),
(77, 11, 'meter', 0, 'Defines a scalar measurement within a known range (a gauge)', 0, '961482216_meter-tag.png', '<iframe src=\"https://www.youtube.com/embed/PwQin4dQVE4?si=Mzkok0xrOBjMSCwS\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a scalar measurement within a known range (a gauge)', 0, 'meter tag nawab academy', 'meter tag nawab academy', 'meter tag nawab academy', 1),
(78, 11, 'nav', 0, 'Defines navigation links', 0, '177099273_nav-tag.png', '<iframe src=\"https://www.youtube.com/embed/K5A1JzAzJns?si=QGLlkV0ztCtmzJmU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines navigation links', 0, 'nav tag nawab academy', 'nav tag nawab academy', 'nav tag nawab academy', 1),
(79, 11, 'noscript', 0, 'Defines an alternate content for users that do not support client-side scripts', 0, '175159764_noscript-tag.png', '<iframe src=\"https://www.youtube.com/embed/fM-XDw5cmks?si=PL90zpc8ya6TDzXF\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines an alternate content for users that do not support client-side scripts', 0, 'noscript tag nawab academy', 'noscript tag nawab academy', 'noscript tag nawab academy', 1),
(80, 11, 'object', 0, 'Defines a container for an external application', 0, '288785151_object-tag.png', '<iframe src=\"https://www.youtube.com/embed/MW47x0ZmouY?si=6Xw2KH8tBUR5PJCm\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a container for an external application', 0, 'object tag nawab academy', 'object tag nawab academy', 'object tag nawab academy', 1),
(81, 11, 'ol', 0, 'Defines an ordered list', 0, '125575905_ol-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=ECwb_fSHKfumsf63\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines an ordered list', 0, 'ol tag nawab academy', 'ol tag nawab academy', 'ol tag nawab academy', 1),
(82, 11, 'optgroup', 0, 'Defines a group of related options in a drop-down list', 0, '741354726_optgroup-tag.png', '<iframe src=\"https://www.youtube.com/embed/HBPXe5SBxqw?si=cLJAySnS2IDqsjoQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a group of related options in a drop-down list', 0, 'optgroup tag nawab academy', 'optgroup tag nawab academy', 'optgroup tag nawab academy', 1),
(83, 11, 'option', 0, 'Defines an option in a drop-down list', 0, '589162416_option-tag.png', '<iframe src=\"https://www.youtube.com/embed/HBPXe5SBxqw?si=cLJAySnS2IDqsjoQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines an option in a drop-down list', 0, 'option tag nawab academy', 'option tag nawab academy', 'option tag nawab academy', 1),
(84, 11, 'output', 0, 'Defines the result of a calculation', 0, '167092471_output-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=CjI5EzLRHJDheeYR\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines the result of a calculation', 0, 'output tag nawab academy', 'output tag nawab academy', 'output tag nawab academy', 1),
(85, 11, 'p', 0, 'Defines a paragraph', 0, '830484451_p-tag.png', '<iframe src=\"https://www.youtube.com/embed/PIgeurgeZUk?si=PSgKwoEWoaVKBFb6\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a paragraph', 0, 'p tag nawab academy', 'p tag nawab academy', 'p tag nawab academy', 1),
(86, 11, 'param', 0, 'Defines a parameter for an object', 0, '538531878_param-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=D6MGHGVtPMvxT0ny\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a parameter for an object', 0, 'param tag nawab academy', 'param tag nawab academy', 'param tag nawab academy', 1),
(87, 11, 'picture', 0, 'Defines a container for multiple image resources', 0, '124530366_picture-tag.png', '<iframe src=\"https://www.youtube.com/embed/JDHLtcYOJgk?si=Q7KGZ_x1IyJ7zapi\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a container for multiple image resources', 0, 'picture tag nawab academy', 'picture tag nawab academy', 'picture tag nawab academy', 1),
(88, 11, 'pre', 0, 'Defines preformatted text', 0, '284673167_pre-tag.png', '<iframe src=\"https://www.youtube.com/embed/auYq0AmaaUc?si=I25p2TlU4W-wj-ky\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines preformatted text', 0, 'pre tag nawab academy', 'pre tag nawab academy', 'pre tag nawab academy', 1),
(89, 11, 'progress', 0, 'Represents the progress of a task', 0, '745352237_progress-tag.png', '<iframe src=\"https://www.youtube.com/embed/ZYYafcmead0?si=RiK7QRFIGxROcUU0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Represents the progress of a task', 0, 'progress tag nawab academy', 'progress tag nawab academy', 'progress tag nawab academy', 1),
(90, 11, 'q', 0, 'Defines a short quotation', 0, '504849637_q-tag.png', '<iframe src=\"https://www.youtube.com/embed/k1FELvO95f4?si=ta3XujNAriDXpBDj\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a short quotation', 0, 'q tag nawab academy', 'q tag nawab academy', 'q tag nawab academy', 1),
(91, 11, 'rp', 0, 'Defines what to show in browsers that do not support ruby annotations', 0, '303567396_rp-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=x0l6w9OA3Lm0j31l\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines what to show in browsers that do not support ruby annotations', 0, 'rp tag nawab academy', 'rp tag nawab academy', 'rp tag nawab academy', 1),
(92, 11, 'rt', 0, 'Defines an explanation/pronunciation of characters (for East Asian typography)', 0, '151293238_rt-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=x0l6w9OA3Lm0j31l\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines an explanation/pronunciation of characters (for East Asian typography)', 0, 'rt tag nawab academy', 'rt tag nawab academy', 'rt tag nawab academy', 1),
(93, 11, 'ruby', 0, 'Defines a ruby annotation (for East Asian typography)', 0, '314959522_ruby-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=x0l6w9OA3Lm0j31l\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a ruby annotation (for East Asian typography)', 0, 'ruby tag nawab academy', 'ruby tag nawab academy', 'ruby tag nawab academy', 1),
(94, 11, 's', 0, 'Defines text that is no longer correct', 0, '457858879_s-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=KotMvMvqQ5YKW6sy\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines text that is no longer correct', 0, 's tag nawab academy', 's tag nawab academy', 's tag nawab academy', 1),
(95, 11, 'samp', 0, 'Defines sample output from a computer program', 0, '452117749_samp-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=KotMvMvqQ5YKW6sy\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines sample output from a computer program', 0, 'samp tag nawab academy', 'samp tag nawab academy', 'samp tag nawab academy', 1),
(96, 11, 'script', 0, 'Defines a client-side script', 0, '780625202_script-tag.png', '<iframe src=\"https://www.youtube.com/embed/XwZ-TpKTk7c?si=xlU-htoEtiNgLqdR\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a client-side script', 0, 'script tag nawab academy', 'script tag nawab academy', 'script tag nawab academy', 1),
(97, 11, 'search', 0, 'Defines a search section', 0, '457487090_search-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=Uqm2bzPNQTcrTG6z\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a search section', 0, 'search tag nawab academy', 'search tag nawab academy', 'search tag nawab academy', 1),
(98, 11, 'section', 0, 'Defines a section in a document', 0, '656777979_section-tag.png', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/P2p4vqP0-3w?si=SPvUvKq-eKACU4kL\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a section in a document', 0, 'section tag nawab academy', 'section tag nawab academy', 'section tag nawab academy', 1),
(99, 11, 'select', 0, 'Defines a drop-down list', 0, '768995201_select-tag.png', '<iframe src=\"https://www.youtube.com/embed/HBPXe5SBxqw?si=cLJAySnS2IDqsjoQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a drop-down list', 0, 'select tag nawab academy', 'select tag nawab academy', 'select tag nawab academy', 1),
(100, 11, 'small', 0, 'Defines smaller text', 0, '129188141_small-tag.png', '<iframe src=\"https://www.youtube.com/embed/mZ4He3rxe2o?si=fKsQw1gsl6mpb8ix\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines smaller text', 0, 'small tag nawab academy', 'small tag nawab academy', 'small tag nawab academy', 1),
(101, 11, 'source', 0, 'Defines multiple media resources for media elements (video and audio)', 0, '913254345_source-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=7Hd-KnZS36UAvxIU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines multiple media resources for media elements (video and audio)', 0, 'source tag nawab academy', 'source tag nawab academy', 'source tag nawab academy', 1),
(102, 11, 'span', 0, 'Defines a section in a document', 0, '577548365_span-tag.png', '<iframe src=\"https://www.youtube.com/embed/hOrE9ks0ZSw?si=WRkKcQFn4-xIn7cZ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a section in a document', 0, 'span tag nawab academy', 'span tag nawab academy', 'span tag nawab academy', 1),
(103, 11, 'strong', 0, 'Defines important text', 0, '390899297_strong-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=d2hXgYwGO4lwZxfY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines important text', 0, 'strong tag nawab academy', 'strong tag nawab academy', 'strong tag nawab academy', 1),
(104, 11, 'style', 0, 'Defines style information for a document', 0, '527032550_style-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=d2hXgYwGO4lwZxfY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines style information for a document', 0, 'style tag nawab academy', 'style tag nawab academy', 'style tag nawab academy', 1),
(105, 11, 'sub', 0, 'Defines subscripted text', 0, '852035231_sub-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=d2hXgYwGO4lwZxfY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines subscripted text', 0, 'sub tag nawab academy', 'sub tag nawab academy', 'sub tag nawab academy', 1),
(106, 11, 'summary', 0, 'Defines a visible heading for a details element', 0, '687593941_summary-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=d2hXgYwGO4lwZxfY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a visible heading for a details element', 0, 'summary tag nawab academy', 'summary tag nawab academy', 'summary tag nawab academy', 1),
(107, 11, 'sup', 0, 'Defines superscripted text', 0, '447196717_sup-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=d2hXgYwGO4lwZxfY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines superscripted text', 0, 'sup tag nawab academy', 'sup tag nawab academy', 'sup tag nawab academy', 1),
(108, 11, 'svg', 0, 'Defines a container for SVG graphics', 0, '664652771_svg-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=d2hXgYwGO4lwZxfY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a container for SVG graphics', 0, 'svg tag nawab academy', 'svg tag nawab academy', 'svg tag nawab academy', 1),
(109, 11, 'table', 0, 'Defines a table', 0, '443547059_table-tag.png', '<iframe src=\"https://www.youtube.com/embed/lYscuo1aznw?si=KErcFMfN2VQ4Cqdw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a table', 0, 'table tag nawab academy', 'table tag nawab academy', 'table tag nawab academy', 1),
(110, 11, 'tbody', 0, 'Groups the body content in a table', 0, '466847787_tbody-tag.png', '<iframe src=\"https://www.youtube.com/embed/lYscuo1aznw?si=KErcFMfN2VQ4Cqdw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Groups the body content in a table', 0, 'tbody tag nawab academy', 'tbody tag nawab academy', 'tbody tag nawab academy', 1),
(111, 11, 'td', 0, 'Defines a cell in a table', 0, '840035034_td-tag.png', '<iframe src=\"https://www.youtube.com/embed/lYscuo1aznw?si=KErcFMfN2VQ4Cqdw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a cell in a table', 0, 'td tag nawab academy', 'td tag nawab academy', 'td tag nawab academy', 1),
(112, 11, 'template', 0, 'Defines a container for content that should be hidden when the page loads', 0, '837635136_template-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=_78KKUU1r-m5YWIg\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a container for content that should be hidden when the page loads', 0, 'template tag nawab academy', 'template tag nawab academy', 'template tag nawab academy', 1),
(113, 11, 'textarea', 0, 'Defines a multiline input control (text area)', 0, '395229834_textarea-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=_78KKUU1r-m5YWIg\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a multiline input control (text area)', 0, 'textarea tag nawab academy', 'textarea tag nawab academy', 'textarea tag nawab academy', 1),
(114, 11, 'tfoot', 0, 'Groups the footer content in a table', 0, '766543103_tfoot-tag.png', '<iframe src=\"https://www.youtube.com/embed/lYscuo1aznw?si=B5plr5cxOvGANcn1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Groups the footer content in a table', 0, 'tfoot tag nawab academy', 'tfoot tag nawab academy', 'tfoot tag nawab academy', 1),
(115, 11, 'th', 0, 'Defines a header cell in a table', 0, '610425656_th-tag.png', '<iframe src=\"https://www.youtube.com/embed/lYscuo1aznw?si=B5plr5cxOvGANcn1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a header cell in a table', 0, 'th tag nawab academy', 'th tag nawab academy', 'th tag nawab academy', 1),
(116, 11, 'thead', 0, 'Groups the header content in a table', 0, '414794936_thead-tag.png', '<iframe src=\"https://www.youtube.com/embed/lYscuo1aznw?si=B5plr5cxOvGANcn1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Groups the header content in a table', 0, 'thead tag nawab academy', 'thead tag nawab academy', 'thead tag nawab academy', 1),
(117, 11, 'time', 0, 'Defines a specific time (or datetime)', 0, '973719979_time-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=CBKvtSN3f_ylAYue\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a specific time (or datetime)', 0, 'time tag nawab academy', 'time tag nawab academy', 'time tag nawab academy', 1),
(118, 11, 'title', 0, 'Defines a title for the document', 0, '701208268_title-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=CBKvtSN3f_ylAYue\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a title for the document', 0, 'title tag nawab academy', 'title tag nawab academy', 'title tag nawab academy', 1);
INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(119, 11, 'track', 0, 'Defines text tracks for media elements (video and audio)', 0, '128335292_track-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=CBKvtSN3f_ylAYue\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines text tracks for media elements (video and audio)', 0, 'track tag nawab academy', 'track tag nawab academy', 'track tag nawab academy', 1),
(120, 11, 'tr', 0, 'Defines a row in a table', 0, '765907271_tr-tag.png', '<iframe src=\"https://www.youtube.com/embed/lYscuo1aznw?si=K5GrHfHldlCOZLro\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a row in a table', 0, 'tr tag nawab academy', 'tr tag nawab academy', 'tr tag nawab academy', 1),
(121, 11, 'u', 0, 'Defines some text that is unarticulated and styled differently from normal text', 0, '983862244_u-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=G6fAG20io914Ts0x\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines some text that is unarticulated and styled differently from normal text', 0, 'u tag nawab academy', 'u tag nawab academy', 'u tag nawab academy', 1),
(122, 11, 'ul', 0, 'Defines an unordered list', 0, '321541170_ul-tag.png', '<iframe src=\"https://www.youtube.com/embed/nSLUK6lVjgs?si=aOJobeSJWdJMNiYK\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines an unordered list', 0, 'ul tag nawab academy', 'ul tag nawab academy', 'ul tag nawab academy', 1),
(123, 11, 'var', 0, 'Defines a variable', 0, '574281099_var-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=QCYgrdT15EM9oLq3\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a variable', 0, 'var tag nawab academy', 'var tag nawab academy', 'var tag nawab academy', 1),
(124, 11, 'video', 0, 'Defines embedded video content', 0, '174518112_video-tag.png', '<iframe src=\"https://www.youtube.com/embed/cq97F98B3jM?si=hwDmKF5-LOGpLkH-\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines embedded video content', 0, 'video tag nawab academy', 'video tag nawab academy', 'video tag nawab academy', 1),
(125, 11, 'wbr', 0, 'Defines a possible line-break', 0, '540850359_wbr-tag.png', '<iframe src=\"https://www.youtube.com/embed/87GjA2-28b0?si=dhfgD1zPW_yuU1iY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Defines a possible line-break', 0, 'wbr tag nawab academy', 'wbr tag nawab academy', 'wbr tag nawab academy', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
