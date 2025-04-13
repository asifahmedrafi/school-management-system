-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2025 at 09:06 AM
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
-- Database: `school_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `features` varchar(255) DEFAULT NULL,
  `version` float DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `unique_identifier` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `copies` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `copies`, `school_id`, `session_id`, `timestamp`, `created_at`, `updated_at`) VALUES
(1, 'Let’s Start English Writing Book-0', 'Margaret S Gomes', 5, 3, 4, 1739124000, '2025-02-10 17:00:38', '2025-02-10 17:00:38'),
(2, 'Rhymes for the Playgroup With Fun Activities', 'Hazera Khatoon', 5, 3, 4, 1739124000, '2025-02-10 17:01:20', '2025-02-10 17:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `issue_date` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_issues`
--

INSERT INTO `book_issues` (`id`, `book_id`, `class_id`, `student_id`, `issue_date`, `status`, `school_id`, `session_id`, `timestamp`, `created_at`, `updated_at`) VALUES
(1, 2, 8, 11, '1739124000', 1, 3, 4, 1739124000, '2025-02-10 17:01:35', '2025-02-10 17:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'One', 1, '2024-11-05 13:37:41', '2024-11-05 13:37:41'),
(2, 'Two', 1, '2024-11-05 13:37:51', '2024-11-05 13:37:51'),
(3, 'Three', 1, '2024-11-05 13:38:04', '2024-11-05 13:38:04'),
(4, 'Four', 1, '2024-11-05 13:38:15', '2024-11-05 13:38:15'),
(5, 'Five', 1, '2024-11-05 13:38:22', '2024-11-05 13:38:22'),
(6, 'Six', 1, '2024-11-25 09:20:33', '2024-11-25 09:20:33'),
(7, 'Seven', 1, '2024-11-25 09:26:24', '2024-11-25 09:26:24'),
(8, 'Play Group', 3, '2025-02-10 13:54:57', '2025-02-10 13:54:57'),
(9, 'Nursery', 3, '2025-02-10 13:55:29', '2025-02-10 13:55:29'),
(10, 'KG 1', 3, '2025-02-10 14:04:25', '2025-02-10 14:04:25'),
(11, 'KG 2', 3, '2025-02-10 14:04:41', '2025-02-10 14:04:41'),
(12, 'Class 1', 3, '2025-02-10 17:32:03', '2025-02-10 17:32:03'),
(13, 'Class 2', 3, '2025-02-10 17:32:22', '2025-02-10 17:32:22'),
(14, 'Class 3', 3, '2025-02-10 17:33:32', '2025-02-10 17:33:32'),
(15, 'Class 4', 3, '2025-02-10 17:34:03', '2025-02-10 17:34:03'),
(16, 'Class 5', 3, '2025-02-10 17:34:24', '2025-02-10 17:34:24'),
(17, 'Class 6', 3, '2025-04-13 03:51:03', '2025-04-13 03:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `class_rooms`
--

CREATE TABLE `class_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_rooms`
--

INSERT INTO `class_rooms` (`id`, `name`, `school_id`, `created_at`, `updated_at`) VALUES
(1, '101', 1, '2024-11-12 06:22:17', '2024-11-12 06:22:17'),
(2, 'Room 1', 3, '2025-02-10 13:53:29', '2025-02-10 16:45:43'),
(3, 'Room 2', 3, '2025-02-10 13:53:41', '2025-02-10 16:45:52'),
(4, 'Room 3', 3, '2025-02-10 13:53:49', '2025-02-10 16:46:02'),
(5, 'Room 4', 3, '2025-02-10 13:53:55', '2025-02-10 16:46:11'),
(6, 'Class Room 1', 19, '2025-04-12 19:49:58', '2025-04-12 19:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `flutterwave_supported` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `flutterwave_supported`) VALUES
(1, 'US Dollar', 'USD', '$', 1, 1, 1),
(2, 'Albanian Lek', 'ALL', 'Lek', 0, 1, 0),
(3, 'Algerian Dinar', 'DZD', 'دج', 1, 1, 0),
(4, 'Angolan Kwanza', 'AOA', 'Kz', 1, 1, 0),
(5, 'Argentine Peso', 'ARS', '$', 1, 1, 1),
(6, 'Armenian Dram', 'AMD', '֏', 1, 1, 0),
(7, 'Aruban Florin', 'AWG', 'ƒ', 1, 1, 0),
(8, 'Australian Dollar', 'AUD', '$', 1, 1, 0),
(9, 'Azerbaijani Manat', 'AZN', 'm', 1, 1, 0),
(10, 'Bahamian Dollar', 'BSD', 'B$', 1, 1, 0),
(11, 'Bahraini Dinar', 'BHD', '.د.ب', 1, 1, 0),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1, 1, 0),
(13, 'Barbadian Dollar', 'BBD', 'Bds$', 1, 1, 0),
(14, 'Belarusian Ruble', 'BYR', 'Br', 0, 0, 0),
(15, 'Belgian Franc', 'BEF', 'fr', 1, 1, 0),
(16, 'Belize Dollar', 'BZD', '$', 1, 1, 0),
(17, 'Bermudan Dollar', 'BMD', '$', 1, 1, 0),
(18, 'Bhutanese Ngultrum', 'BTN', 'Nu.', 1, 1, 0),
(19, 'Bitcoin', 'BTC', '฿', 1, 1, 0),
(20, 'Bolivian Boliviano', 'BOB', 'Bs.', 1, 1, 0),
(21, 'Bosnia', 'BAM', 'KM', 1, 1, 0),
(22, 'Botswanan Pula', 'BWP', 'P', 1, 1, 0),
(23, 'Brazilian Real', 'BRL', 'R$', 1, 1, 1),
(24, 'British Pound Sterling', 'GBP', '£', 1, 1, 1),
(25, 'Brunei Dollar', 'BND', 'B$', 1, 1, 0),
(26, 'Bulgarian Lev', 'BGN', 'Лв.', 1, 1, 0),
(27, 'Burundian Franc', 'BIF', 'FBu', 1, 1, 0),
(28, 'Cambodian Riel', 'KHR', 'KHR', 1, 1, 0),
(29, 'Canadian Dollar', 'CAD', '$', 1, 1, 1),
(30, 'Cape Verdean Escudo', 'CVE', '$', 1, 1, 1),
(31, 'Cayman Islands Dollar', 'KYD', '$', 1, 1, 0),
(32, 'CFA Franc BCEAO', 'XOF', 'CFA', 1, 1, 1),
(33, 'CFA Franc BEAC', 'XAF', 'FCFA', 1, 1, 1),
(34, 'CFP Franc', 'XPF', '₣', 1, 1, 0),
(35, 'Chilean Peso', 'CLP', '$', 1, 1, 1),
(36, 'Chinese Yuan', 'CNY', '¥', 1, 1, 0),
(37, 'Colombian Peso', 'COP', '$', 1, 1, 0),
(38, 'Comorian Franc', 'KMF', 'CF', 1, 1, 0),
(39, 'Congolese Franc', 'CDF', 'FC', 1, 1, 1),
(40, 'Costa Rican ColÃ³n', 'CRC', '₡', 1, 1, 0),
(41, 'Croatian Kuna', 'HRK', 'kn', 1, 1, 0),
(42, 'Cuban Convertible Peso', 'CUC', '$, CUC', 1, 1, 0),
(43, 'Czech Republic Koruna', 'CZK', 'Kč', 1, 1, 0),
(44, 'Danish Krone', 'DKK', 'Kr.', 1, 1, 0),
(45, 'Djiboutian Franc', 'DJF', 'Fdj', 1, 1, 0),
(46, 'Dominican Peso', 'DOP', '$', 1, 1, 0),
(47, 'East Caribbean Dollar', 'XCD', '$', 1, 1, 0),
(48, 'Egyptian Pound', 'EGP', 'ج.م', 1, 1, 1),
(49, 'Eritrean Nakfa', 'ERN', 'Nfk', 1, 1, 0),
(50, 'Estonian Kroon', 'EEK', 'kr', 1, 1, 0),
(51, 'Ethiopian Birr', 'ETB', 'Nkf', 1, 1, 0),
(52, 'Euro', 'EUR', '€', 1, 1, 1),
(53, 'Falkland Islands Pound', 'FKP', '£', 1, 1, 0),
(54, 'Fijian Dollar', 'FJD', 'FJ$', 1, 1, 0),
(55, 'Gambian Dalasi', 'GMD', 'D', 1, 1, 1),
(56, 'Georgian Lari', 'GEL', 'ლ', 1, 1, 0),
(57, 'German Mark', 'DEM', 'DM', 1, 1, 0),
(58, 'Ghanaian Cedi', 'GHS', 'GH₵', 1, 1, 1),
(59, 'Gibraltar Pound', 'GIP', '£', 1, 1, 0),
(60, 'Greek Drachma', 'GRD', '₯, Δρχ, Δρ', 1, 1, 0),
(61, 'Guatemalan Quetzal', 'GTQ', 'Q', 1, 1, 0),
(62, 'Guinean Franc', 'GNF', 'FG', 1, 1, 1),
(63, 'Guyanaese Dollar', 'GYD', '$', 1, 1, 0),
(64, 'Haitian Gourde', 'HTG', 'G', 1, 1, 0),
(65, 'Honduran Lempira', 'HNL', 'L', 1, 1, 0),
(66, 'Hong Kong Dollar', 'HKD', '$', 1, 1, 0),
(67, 'Hungarian Forint', 'HUF', 'Ft', 1, 1, 0),
(68, 'Icelandic KrÃ³na', 'ISK', 'kr', 1, 1, 0),
(69, 'Indian Rupee', 'INR', '₹', 1, 1, 0),
(70, 'Indonesian Rupiah', 'IDR', 'Rp', 1, 1, 0),
(71, 'Iranian Rial', 'IRR', '﷼', 1, 1, 0),
(72, 'Iraqi Dinar', 'IQD', 'د.ع', 1, 1, 0),
(73, 'Israeli New Sheqel', 'ILS', '₪', 1, 1, 0),
(74, 'Italian Lira', 'ITL', 'L,£', 1, 1, 0),
(75, 'Jamaican Dollar', 'JMD', 'J$', 1, 1, 0),
(76, 'Japanese Yen', 'JPY', '¥', 1, 1, 0),
(77, 'Jordanian Dinar', 'JOD', 'ا.د', 1, 1, 0),
(78, 'Kazakhstani Tenge', 'KZT', 'лв', 1, 1, 0),
(79, 'Kenyan Shilling', 'KES', 'KSh', 1, 1, 1),
(80, 'Kuwaiti Dinar', 'KWD', 'ك.د', 1, 1, 0),
(81, 'Kyrgystani Som', 'KGS', 'лв', 1, 1, 0),
(82, 'Laotian Kip', 'LAK', '₭', 1, 1, 0),
(83, 'Latvian Lats', 'LVL', 'Ls', 0, 0, 0),
(84, 'Lebanese Pound', 'LBP', '£', 1, 1, 0),
(85, 'Lesotho Loti', 'LSL', 'L', 1, 1, 0),
(86, 'Liberian Dollar', 'LRD', '$', 1, 1, 1),
(87, 'Libyan Dinar', 'LYD', 'د.ل', 1, 1, 0),
(88, 'Lithuanian Litas', 'LTL', 'Lt', 0, 0, 0),
(89, 'Macanese Pataca', 'MOP', '$', 1, 1, 0),
(90, 'Macedonian Denar', 'MKD', 'ден', 1, 1, 0),
(91, 'Malagasy Ariary', 'MGA', 'Ar', 1, 1, 0),
(92, 'Malawian Kwacha', 'MWK', 'MK', 1, 1, 1),
(93, 'Malaysian Ringgit', 'MYR', 'RM', 1, 1, 0),
(94, 'Maldivian Rufiyaa', 'MVR', 'Rf', 1, 1, 0),
(95, 'Mauritanian Ouguiya', 'MRO', 'MRU', 1, 1, 0),
(96, 'Mauritian Rupee', 'MUR', '₨', 1, 1, 0),
(97, 'Mexican Peso', 'MXN', '$', 1, 1, 0),
(98, 'Moldovan Leu', 'MDL', 'L', 1, 1, 0),
(99, 'Mongolian Tugrik', 'MNT', '₮', 1, 1, 0),
(100, 'Moroccan Dirham', 'MAD', 'MAD', 1, 1, 1),
(101, 'Mozambican Metical', 'MZM', 'MT', 1, 1, 0),
(102, 'Myanmar Kyat', 'MMK', 'K', 1, 1, 0),
(103, 'Namibian Dollar', 'NAD', '$', 1, 1, 0),
(104, 'Nepalese Rupee', 'NPR', '₨', 1, 1, 0),
(105, 'Netherlands Antillean Guilder', 'ANG', 'ƒ', 1, 1, 0),
(106, 'New Taiwan Dollar', 'TWD', '$', 1, 1, 0),
(107, 'New Zealand Dollar', 'NZD', '$', 1, 1, 0),
(108, 'Nicaraguan CÃ³rdoba', 'NIO', 'C$', 1, 1, 0),
(109, 'Nigerian Naira', 'NGN', '₦', 1, 1, 1),
(110, 'North Korean Won', 'KPW', '₩', 0, 0, 0),
(111, 'Norwegian Krone', 'NOK', 'kr', 1, 1, 0),
(112, 'Omani Rial', 'OMR', '.ع.ر', 0, 0, 0),
(113, 'Pakistani Rupee', 'PKR', '₨', 1, 1, 0),
(114, 'Panamanian Balboa', 'PAB', 'B/.', 1, 1, 0),
(115, 'Papua New Guinean Kina', 'PGK', 'K', 1, 1, 0),
(116, 'Paraguayan Guarani', 'PYG', '₲', 1, 1, 0),
(117, 'Peruvian Nuevo Sol', 'PEN', 'S/.', 1, 1, 0),
(118, 'Philippine Peso', 'PHP', '₱', 1, 1, 0),
(119, 'Polish Zloty', 'PLN', 'zł', 1, 1, 0),
(120, 'Qatari Rial', 'QAR', 'ق.ر', 1, 1, 0),
(121, 'Romanian Leu', 'RON', 'lei', 1, 1, 0),
(122, 'Russian Ruble', 'RUB', '₽', 1, 1, 0),
(123, 'Rwandan Franc', 'RWF', 'FRw', 1, 1, 1),
(124, 'Salvadoran ColÃ³n', 'SVC', '₡', 0, 0, 0),
(125, 'Samoan Tala', 'WST', 'SAT', 1, 1, 0),
(126, 'Saudi Riyal', 'SAR', '﷼', 1, 1, 0),
(127, 'Serbian Dinar', 'RSD', 'din', 1, 1, 0),
(128, 'Seychellois Rupee', 'SCR', 'SRe', 1, 1, 0),
(129, 'Sierra Leonean Leone', 'SLL', 'Le', 1, 1, 1),
(130, 'Singapore Dollar', 'SGD', '$', 1, 1, 0),
(131, 'Slovak Koruna', 'SKK', 'Sk', 1, 1, 0),
(132, 'Solomon Islands Dollar', 'SBD', 'Si$', 1, 1, 0),
(133, 'Somali Shilling', 'SOS', 'Sh.so.', 1, 1, 0),
(134, 'South African Rand', 'ZAR', 'R', 1, 1, 1),
(135, 'South Korean Won', 'KRW', '₩', 1, 1, 0),
(136, 'Special Drawing Rights', 'XDR', 'SDR', 1, 1, 0),
(137, 'Sri Lankan Rupee', 'LKR', 'Rs', 1, 1, 0),
(138, 'St. Helena Pound', 'SHP', '£', 1, 1, 0),
(139, 'Sudanese Pound', 'SDG', '.س.ج', 1, 1, 0),
(140, 'Surinamese Dollar', 'SRD', '$', 1, 1, 0),
(141, 'Swazi Lilangeni', 'SZL', 'E', 1, 1, 0),
(142, 'Swedish Krona', 'SEK', 'kr', 1, 1, 0),
(143, 'Swiss Franc', 'CHF', 'CHf', 1, 1, 0),
(144, 'Syrian Pound', 'SYP', 'LS', 0, 0, 0),
(145, 'São Tomé and Príncipe Dobra', 'STD', 'Db', 1, 1, 1),
(146, 'Tajikistani Somoni', 'TJS', 'SM', 1, 1, 0),
(147, 'Tanzanian Shilling', 'TZS', 'TSh', 1, 1, 1),
(148, 'Thai Baht', 'THB', '฿', 1, 1, 0),
(149, 'Tongan pa\'anga', 'TOP', '$', 1, 1, 0),
(150, 'Trinidad & Tobago Dollar', 'TTD', '$', 1, 1, 0),
(151, 'Tunisian Dinar', 'TND', 'ت.د', 1, 1, 0),
(152, 'Turkish Lira', 'TRY', '₺', 1, 1, 0),
(153, 'Turkmenistani Manat', 'TMT', 'T', 1, 1, 0),
(154, 'Ugandan Shilling', 'UGX', 'UGX', 1, 1, 1),
(155, 'Ukrainian Hryvnia', 'UAH', '₴', 1, 1, 0),
(156, 'United Arab Emirates Dirham', 'AED', 'إ.د', 1, 1, 0),
(157, 'Uruguayan Peso', 'UYU', '$', 1, 1, 0),
(158, 'Afghan Afghani', 'AFA', '؋', 1, 1, 0),
(159, 'Uzbekistan Som', 'UZS', 'лв', 1, 1, 0),
(160, 'Vanuatu Vatu', 'VUV', 'VT', 1, 1, 0),
(161, 'Venezuelan BolÃvar', 'VEF', 'Bs', 0, 0, 0),
(162, 'Vietnamese Dong', 'VND', '₫', 1, 1, 0),
(163, 'Yemeni Rial', 'YER', '﷼', 1, 1, 0),
(164, 'Zambian Kwacha', 'ZMK', 'ZK', 1, 1, 1),
(165, 'PesosColombian Peso', 'COP', '$', 0, 0, 1),
(166, 'SEPA', 'EUR', '€', 0, 0, 1),
(167, 'Mozambican Metical', 'MZN', 'MT', 0, 0, 1),
(168, 'Peruvian Sol', 'SOL', 'S/', 0, 0, 1),
(169, 'Zambian Kwacha', 'ZMW', 'ZK', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `daily_attendances`
--

CREATE TABLE `daily_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_attendances`
--

INSERT INTO `daily_attendances` (`id`, `class_id`, `section_id`, `student_id`, `status`, `session_id`, `school_id`, `timestamp`, `created_at`, `updated_at`) VALUES
(1, 8, 15, 11, 1, 4, 3, 1739124000, '2025-02-10 17:28:25', '2025-02-10 17:28:25'),
(2, 8, 15, 11, 0, 4, 3, 1739210400, '2025-02-11 10:47:13', '2025-02-11 10:47:13'),
(3, 8, 15, 11, 1, 4, 3, 1739728800, '2025-02-17 13:58:17', '2025-02-17 13:58:17'),
(4, 8, 15, 11, 0, 4, 3, 1744480800, '2025-04-12 18:53:01', '2025-04-13 05:59:55');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'Computer science and Engineering', 1, '2024-11-12 06:18:04', '2024-11-12 06:18:04'),
(2, 'English', 3, '2025-02-10 13:21:00', '2025-02-10 13:21:00'),
(3, 'Mathematics', 3, '2025-02-10 13:21:12', '2025-02-10 13:21:12'),
(4, 'Bengali', 3, '2025-02-10 13:21:25', '2025-02-10 13:21:25'),
(5, 'Science', 3, '2025-02-10 13:21:35', '2025-02-10 13:21:35'),
(6, 'Literature', 3, '2025-02-10 13:21:47', '2025-02-10 13:21:47'),
(7, 'Geography', 3, '2025-02-10 13:22:43', '2025-02-10 13:22:43'),
(8, 'History', 3, '2025-02-10 13:22:52', '2025-02-10 13:22:52'),
(9, 'English', 19, '2025-04-12 19:49:35', '2025-04-12 19:49:35'),
(10, 'English', 20, '2025-04-13 05:46:49', '2025-04-13 05:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `user_id`, `class_id`, `section_id`, `school_id`, `department_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 1, 1, NULL, 2, '2024-11-19 11:57:17', '2024-11-19 11:57:17'),
(2, 11, 8, 15, 3, NULL, 4, '2025-02-10 15:08:50', '2025-02-10 15:08:50'),
(3, 13, 9, 18, 3, NULL, 4, '2025-02-10 16:41:27', '2025-02-10 16:41:27'),
(4, 16, 10, 19, 3, NULL, 4, '2025-02-10 17:24:51', '2025-02-10 17:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `exam_type` varchar(255) NOT NULL,
  `starting_time` varchar(255) NOT NULL,
  `ending_time` varchar(255) NOT NULL,
  `total_marks` float NOT NULL,
  `status` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_categories`
--

CREATE TABLE `exam_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_categories`
--

INSERT INTO `exam_categories` (`id`, `name`, `school_id`, `session_id`, `timestamp`, `created_at`, `updated_at`) VALUES
(1, 'Written', 3, 4, 1739124000, '2025-02-10 16:18:49', '2025-02-10 16:19:23'),
(2, 'Oral', 3, 4, 1739124000, '2025-02-10 16:19:29', '2025-02-10 16:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expense_category_id`, `date`, `amount`, `school_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1740765600, '1000', 3, 4, '2025-02-10 16:57:23', '2025-02-10 16:57:23'),
(2, 4, 1738346400, '1000', 3, 4, '2025-02-10 16:58:33', '2025-02-10 16:58:33'),
(3, 5, 1744480800, '1200', 3, 4, '2025-04-12 19:08:19', '2025-04-12 19:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `school_id`, `session_id`, `created_at`, `updated_at`) VALUES
(6, 'Teachers Monthly Salary', 3, 4, '2025-04-12 19:15:36', '2025-04-12 19:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `title`, `description`) VALUES
(7, 'What is EduSmart?', 'EduSmart is an innovative software application that empowers educational institutions by automating and simplifying a range of administrative and academic tasks. With features designed for efficient student enrollment, accurate attendance tracking, seamless fee management, reliable grading, comprehensive library management, and improved communication with parents, EduSmart enhances overall productivity and fosters a thriving learning environment. Embrace EduSmart to transform your educational processes and focus more on what truly matters educating students.'),
(8, 'What are the benefits of using EduSmart?', 'By automating repetitive tasks, this system empowers staff to focus on what truly matters enhancing student learning. It significantly reduces human errors in data entry and record-keeping, ensuring greater accuracy and reliability. Furthermore, it fosters seamless communication among schools, teachers, parents, and students, building a strong support system for educational success. Equipped with valuable insights and data, school administrators can make informed decisions that drive improvement. The system enhances transparency in academic records and school operations, creating a more engaging and personalized learning experience that prioritizes the needs of every student.'),
(9, 'What features should I look for in EduSmart?', 'Student information management, attendance tracking, fee management, exam scheduling and grading, library management, communication tools, reporting and analytics, and integration with other systems.'),
(10, 'How much does an EduSmart cost?', 'Consider flexible payment options tailored to your needs choose between monthly or annual fees based on the number of users. Invest in a one-time license fee that opens the door to ongoing support and maintenance. Enjoy the advantage of free usage, with the option for customization and dedicated in house technical support to ensure optimal performance.');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_events`
--

CREATE TABLE `frontend_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontend_events`
--

INSERT INTO `frontend_events` (`id`, `title`, `timestamp`, `status`, `school_id`, `session_id`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'Annual Sports Day', 1739556000, 1, 3, 4, 7, '2025-02-10 17:38:45', '2025-02-10 17:38:45'),
(3, 'Pohela Boishakh', 1744567200, 1, 3, 4, 7, '2025-02-10 17:39:13', '2025-02-10 17:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_features`
--

CREATE TABLE `frontend_features` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `frontend_features`
--

INSERT INTO `frontend_features` (`id`, `title`, `description`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Students Admission', 'Develop effective strategies for boosting student enrollment and simplifying the process for new learners to join their communities.', 'fas fa-graduation-cap', '2023-11-30 10:15:46', '2025-01-20 21:45:11'),
(2, 'Daily Attendance', 'Streamline student attendance tracking to improve classroom management and engagement.', 'far fa-check-circle', '2023-11-30 10:18:02', '2025-01-20 21:46:16'),
(3, 'Class List', 'Manage the school\'s class list whenever necessary for better organization and efficiency.', 'fas fa-th-list', '2023-11-30 10:18:48', '2025-01-20 21:47:19'),
(4, 'Subjects', 'Include a variety of subjects in each class to ensure a comprehensive education.', 'far fa-address-book', '2023-11-30 10:25:05', '2025-01-20 21:48:01'),
(5, 'Event Calender', 'The school administrator manages each school\'s events separately, ensuring that every occasion meets the community\'s specific needs..', 'fas fa-calendar', '2023-12-11 07:51:50', '2025-01-20 21:49:15'),
(8, 'Routine', 'Enhance the management of the school\'s class schedule to improve efficiency and organization.', 'fas fa-clock', '2023-12-18 08:57:16', '2025-01-20 21:50:23'),
(11, 'Student Information', 'Please take a moment to enter the student\'s information quickly and help unlock their potential.', 'fas fa-info-circle', '2023-12-18 10:16:12', '2025-01-20 21:52:07'),
(12, 'Syllabus', 'Streamline and customize the syllabus to improve the educational experience for each class.', 'fas fa-th', '2023-12-18 10:16:22', '2025-01-20 21:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`id`, `key`, `value`) VALUES
(1, 'system_name', 'EduSmart'),
(2, 'system_title', 'EduSmart'),
(3, 'system_email', 'edusmart@info.bd'),
(4, 'phone', '01534982412'),
(5, 'address', 'Road 11/A House 148 Dhanmondi Dhaka 1209'),
(6, 'purchase_code', NULL),
(7, 'system_currency', 'BDT'),
(8, 'currency_position', 'left-space'),
(9, 'running_session', '1'),
(10, 'language', 'english'),
(11, 'payment_settings', '[]'),
(12, 'footer_text', 'By EduSmart'),
(13, 'footer_link', 'https://codexino.com/'),
(14, 'version', '1.9'),
(15, 'fax', '+880 69 34567890'),
(16, 'timezone', 'Asia/Dhaka'),
(17, 'smtp_protocol', 'smtp'),
(18, 'smtp_crypto', 'tls'),
(19, 'smtp_host', 'smtp.gmail.com'),
(20, 'smtp_port', '587'),
(21, 'smtp_user', 'rafiahmed221@gmail.com'),
(22, 'smtp_pass', 'czqqgthcvjkyrexj'),
(28, 'offline', '{\"status\":\"1\"}'),
(29, 'light_logo', '17372246762.png'),
(30, 'dark_logo', '17372246521.png'),
(31, 'favicon', 'favicon.png'),
(32, 'randCallRange', '30'),
(33, 'help_link', 'http://support.codexino.com/'),
(34, 'youtube_api_key', 'youtube-api-key'),
(35, 'vimeo_api_key', 'vimeo-api-key'),
(36, 'banner_title', 'Bringing Excellence To Students'),
(37, 'banner_subtitle', 'Empowering and inspiring all students to excel as life long learners'),
(38, 'facebook_link', 'https://www.facebook.com/EdusmartAcademyUk'),
(39, 'twitter_link', 'https://x.com/EduSmartScience'),
(40, 'linkedin_link', 'https://www.linkedin.com/company/edusmarttn/'),
(41, 'instagram_link', 'https://www.instagram.com/edusmart_study?igsh=MTl4OGozMW80YWIwaQ=='),
(42, 'price_subtitle', 'Choose the best subscription plan for your school'),
(43, 'copyright_text', '2025 All Rights Reserved'),
(44, 'contact_email', 'edusmart@info.bd'),
(45, 'frontend_footer_text', 'EduSmart is a comprehensive suite of programs designed to help educational institutions manage their executive functions efficiently.'),
(46, 'faq_subtitle', 'Frequently Asked Questions Through Email'),
(49, 'frontend_view', '1'),
(50, 'white_logo', 'white_logo.png'),
(51, 'navbar_title', 'EduSmart'),
(53, 'email_title', 'Subscription'),
(54, 'email_details', 'Feel free to reach out to us anytime if you have questions or feedback. We value your input and strive to provide the best experience possible.'),
(55, 'warning_text', 'This email is from an automat'),
(56, 'email_logo', '17371388611.png'),
(57, 'socialLogo1', '16907191042.png'),
(58, 'socialLogo2', '16907191913.png'),
(59, 'socialLogo3', '16907194544.png'),
(60, 'paypal', '{\"status\":\"0\",\"mode\":\"test\",\"test_client_id\":\"snd_cl_id_xxxxxxxxxxxxx\",\"test_secret_key\":\"snd_cl_sid_xxxxxxxxxxxx\",\"live_client_id\":\"lv_cl_id_xxxxxxxxxxxxxxx\",\"live_secret_key\":\"lv_cl_sid_xxxxxxxxxxxxxx\"}'),
(61, 'stripe', '{\"status\":\"0\",\"mode\":\"test\",\"test_key\":\"pk_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}'),
(62, 'razorpay', '{\"status\":\"0\",\"mode\":\"test\",\"test_key\":\"rzp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"rzs_test_xxxxxxxxxxxxx\",\"live_key\":\"rzp_live_xxxxxxxxxxxxx\",\"live_secret_key\":\"rzs_live_xxxxxxxxxxxxx\",\"theme_color\":\"#00ffff\"}'),
(63, 'paytm', '{\"status\":\"0\",\"mode\":\"test\",\"test_merchant_id\":\"tm_id_xxxxxxxxxxxx\",\"test_merchant_key\":\"tm_key_xxxxxxxxxx\",\"live_merchant_id\":\"lv_mid_xxxxxxxxxxx\",\"live_merchant_key\":\"lv_key_xxxxxxxxxxx\",\"environment\":\"provide-a-environment\",\"merchant_website\":\"merchant-website\",\"channel\":\"provide-channel-type\",\"industry_type\":\"provide-industry-type\"}'),
(64, 'flutterwave', '{\"status\":\"0\",\"mode\":\"test\",\"test_key\":\"flwp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"flws_test_xxxxxxxxxxxxx\",\"test_encryption_key\":\"flwe_test_xxxxxxxxxxxxx\",\"public_live_key\":\"flwp_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"flws_live_xxxxxxxxxxxxxx\",\"encryption_live_key\":\"flwe_live_xxxxxxxxxxxxxx\"}'),
(65, 'front_logo', '17372245435.png'),
(67, 'features_title', 'Features'),
(68, 'features_subtitle', 'Elevate with EduSmart, a cutting-edge platform that integrates advanced educational tools to enhance user experiences and streamline learning'),
(81, 'off_pay_ins_text', 'You can make payments using your mobile banking number.'),
(82, 'off_pay_ins_file', ''),
(83, 'recaptcha_switch_value', 'No'),
(84, 'recaptcha_site_key', NULL),
(85, 'recaptcha_secret_key', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gradebooks`
--

CREATE TABLE `gradebooks` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `exam_category_id` int(11) NOT NULL,
  `marks` varchar(255) DEFAULT NULL,
  `comment` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `grade_point` varchar(255) NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_upto` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `grade_point`, `mark_from`, `mark_upto`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'A', '10', 10, 10, 3, '2025-02-10 16:49:42', '2025-02-10 16:49:42'),
(2, 'B', '9', 10, 10, 3, '2025-02-10 17:26:45', '2025-02-10 17:26:45'),
(3, 'C', '8', 10, 10, 3, '2025-02-10 17:27:19', '2025-02-10 17:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phrase` varchar(300) DEFAULT NULL,
  `translated` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `phrase`, `translated`) VALUES
(1, 'english', 'Dashboard', 'Dashboard'),
(2, 'english', 'Home', 'Home'),
(3, 'english', 'Schools', 'Schools'),
(4, 'english', 'Total Schools', 'Total Schools'),
(5, 'english', 'Subscription', 'Subscription'),
(6, 'english', 'Total Active Subscription', 'Total Active Subscription'),
(7, 'english', 'Subscription Payment', 'Subscription Payment'),
(8, 'english', 'Superadmin | Ekator 8', 'Superadmin | Ekator 8'),
(9, 'english', 'Close', 'Close'),
(10, 'english', 'School List', 'School List'),
(11, 'english', 'Create school', 'Create school'),
(12, 'english', 'Pending List', 'Pending List'),
(13, 'english', 'Package', 'Package'),
(14, 'english', 'Subscriptions', 'Subscriptions'),
(15, 'english', 'Subscription Report', 'Subscription Report'),
(16, 'english', 'Pending Request', 'Pending Request'),
(17, 'english', 'Confirmed Payment', 'Confirmed Payment'),
(18, 'english', 'Addons', 'Addons'),
(19, 'english', 'Settings', 'Settings'),
(20, 'english', 'System Settings', 'System Settings'),
(21, 'english', 'Session Manager', 'Session Manager'),
(22, 'english', 'Payment Settings', 'Payment Settings'),
(23, 'english', 'Smtp settings', 'Smtp settings'),
(24, 'english', 'About', 'About'),
(25, 'english', 'Superadmin', 'Superadmin'),
(26, 'english', 'My Account', 'My Account'),
(27, 'english', 'Change Password', 'Change Password'),
(28, 'english', 'Log out', 'Log out'),
(29, 'english', 'Loading...', 'Loading...'),
(30, 'english', 'Heads up!', 'Heads up!'),
(31, 'english', 'Are you sure?', 'Are you sure?'),
(32, 'english', 'Back', 'Back'),
(33, 'english', 'Continue', 'Continue'),
(34, 'english', 'You won\'t able to revert this!', 'You won\'t able to revert this!'),
(35, 'english', 'Yes', 'Yes'),
(36, 'english', 'Cancel', 'Cancel'),
(37, 'english', 'Add School', 'Add School'),
(38, 'english', 'Name', 'Name'),
(39, 'english', 'Address', 'Address'),
(40, 'english', 'Phone', 'Phone'),
(41, 'english', 'Info', 'Info'),
(42, 'english', 'Status', 'Status'),
(43, 'english', 'Action', 'Action'),
(44, 'english', 'Active', 'Active'),
(45, 'english', 'Actions', 'Actions'),
(46, 'english', 'Edit School', 'Edit School'),
(47, 'english', 'Edit', 'Edit'),
(48, 'english', 'Delete', 'Delete'),
(49, 'english', 'School Form', 'School Form'),
(50, 'english', 'Provide all the information required for your school.', 'Provide all the information required for your school.'),
(51, 'english', 'Also provide a admin information with email and passwoard.', 'Also provide a admin information with email and passwoard.'),
(52, 'english', 'So that admin can access the created school.', 'So that admin can access the created school.'),
(53, 'english', 'SCHOOL INFO', 'SCHOOL INFO'),
(54, 'english', 'School Name', 'School Name'),
(55, 'english', 'School Address', 'School Address'),
(56, 'english', 'School Email', 'School Email'),
(57, 'english', 'School Phone', 'School Phone'),
(58, 'english', 'ADMIN INFO', 'ADMIN INFO'),
(59, 'english', 'Gender', 'Gender'),
(60, 'english', 'Select a gender', 'Select a gender'),
(61, 'english', 'Male', 'Male'),
(62, 'english', 'Female', 'Female'),
(63, 'english', 'Blood group', 'Blood group'),
(64, 'english', 'Select a blood group', 'Select a blood group'),
(65, 'english', 'A+', 'A+'),
(66, 'english', 'A-', 'A-'),
(67, 'english', 'B+', 'B+'),
(68, 'english', 'B-', 'B-'),
(69, 'english', 'AB+', 'AB+'),
(70, 'english', 'AB-', 'AB-'),
(71, 'english', 'O+', 'O+'),
(72, 'english', 'O-', 'O-'),
(73, 'english', 'Admin Address', 'Admin Address'),
(74, 'english', 'Admin Phone Number', 'Admin Phone Number'),
(75, 'english', 'Photo', 'Photo'),
(76, 'english', 'Admin Email', 'Admin Email'),
(77, 'english', 'Admin Password', 'Admin Password'),
(78, 'english', 'Submit', 'Submit'),
(79, 'english', 'Pending School List', 'Pending School List'),
(80, 'english', 'No data found', 'No data found'),
(81, 'english', 'Packages', 'Packages'),
(82, 'english', 'Add Package', 'Add Package'),
(83, 'english', 'Price', 'Price'),
(84, 'english', 'Interval', 'Interval'),
(85, 'english', 'Preiod', 'Preiod'),
(86, 'english', 'Filter', 'Filter'),
(87, 'english', 'Export', 'Export'),
(88, 'english', 'PDF', 'PDF'),
(89, 'english', 'CSV', 'CSV'),
(90, 'english', 'Print', 'Print'),
(91, 'english', 'Paid By', 'Paid By'),
(92, 'english', 'Purchase Date', 'Purchase Date'),
(93, 'english', 'Expire Date', 'Expire Date'),
(94, 'english', 'Confirmed Request', 'Confirmed Request'),
(95, 'english', 'Payment For', 'Payment For'),
(96, 'english', 'Payment Document', 'Payment Document'),
(97, 'english', 'Approve', 'Approve'),
(98, 'english', 'Manage Addons', 'Manage Addons'),
(99, 'english', 'Install addon', 'Install addon'),
(100, 'english', 'Add new addon', 'Add new addon'),
(101, 'english', 'System Name', 'System Name'),
(102, 'english', 'System Title', 'System Title'),
(103, 'english', 'System Email', 'System Email'),
(104, 'english', 'Fax', 'Fax'),
(105, 'english', 'Timezone', 'Timezone'),
(106, 'english', 'Footer Text', 'Footer Text'),
(107, 'english', 'Footer Link', 'Footer Link'),
(108, 'english', 'PRODUCT UPDATE', 'PRODUCT UPDATE'),
(109, 'english', 'File', 'File'),
(110, 'english', 'Update', 'Update'),
(111, 'english', 'SYSTEM LOGO', 'SYSTEM LOGO'),
(112, 'english', 'Dark logo', 'Dark logo'),
(113, 'english', 'Light logo', 'Light logo'),
(114, 'english', 'Favicon', 'Favicon'),
(115, 'english', 'Update Logo', 'Update Logo'),
(116, 'english', 'Create Session', 'Create Session'),
(117, 'english', 'Add Session', 'Add Session'),
(118, 'english', 'Active session ', 'Active session '),
(119, 'english', 'Select a session', 'Select a session'),
(120, 'english', 'Activate', 'Activate'),
(121, 'english', 'Session title', 'Session title'),
(122, 'english', 'Options', 'Options'),
(123, 'english', 'Edit Session', 'Edit Session'),
(124, 'english', 'Global Currency', 'Global Currency'),
(125, 'english', 'Select system currency', 'Select system currency'),
(126, 'english', 'Currency Position', 'Currency Position'),
(127, 'english', 'Left', 'Left'),
(128, 'english', 'Right', 'Right'),
(129, 'english', 'Left with a space', 'Left with a space'),
(130, 'english', 'Right with a space', 'Right with a space'),
(131, 'english', 'Update Currency', 'Update Currency'),
(132, 'english', 'Protocol', 'Protocol'),
(133, 'english', 'Smtp crypto', 'Smtp crypto'),
(134, 'english', 'Smtp host', 'Smtp host'),
(135, 'english', 'Smtp port', 'Smtp port'),
(136, 'english', 'Smtp username', 'Smtp username'),
(137, 'english', 'Smtp password', 'Smtp password'),
(138, 'english', 'Save', 'Save'),
(139, 'english', 'Not found', 'Not found'),
(140, 'english', 'About this application', 'About this application'),
(141, 'english', 'Software version', 'Software version'),
(142, 'english', 'Check update', 'Check update'),
(143, 'english', 'PHP version', 'PHP version'),
(144, 'english', 'Curl enable', 'Curl enable'),
(145, 'english', 'Enabled', 'Enabled'),
(146, 'english', 'Purchase code', 'Purchase code'),
(147, 'english', 'Product license', 'Product license'),
(148, 'english', 'invalid', 'invalid'),
(149, 'english', 'Enter valid purchase code', 'Enter valid purchase code'),
(150, 'english', 'Customer support status', 'Customer support status'),
(151, 'english', 'Support expiry date', 'Support expiry date'),
(152, 'english', 'Customer name', 'Customer name'),
(153, 'english', 'Get customer support', 'Get customer support'),
(154, 'english', 'Customer support', 'Customer support'),
(155, 'english', 'Email', 'Email'),
(156, 'english', 'Password', 'Password'),
(157, 'english', 'Forgot password', 'Forgot password'),
(158, 'english', 'Help', 'Help'),
(159, 'english', 'Login', 'Login'),
(160, 'english', 'Total Student', 'Total Student'),
(161, 'english', 'Teacher', 'Teacher'),
(162, 'english', 'Total Teacher', 'Total Teacher'),
(163, 'english', 'Parents', 'Parents'),
(164, 'english', 'Total Parent', 'Total Parent'),
(165, 'english', 'Staff', 'Staff'),
(166, 'english', 'Total Staff', 'Total Staff'),
(167, 'english', 'Todays Attendance', 'Todays Attendance'),
(168, 'english', 'Go to Attendance', 'Go to Attendance'),
(169, 'english', 'Income Report', 'Income Report'),
(170, 'english', 'Year', 'Year'),
(171, 'english', 'Month', 'Month'),
(172, 'english', 'Week', 'Week'),
(173, 'english', 'Upcoming Events', 'Upcoming Events'),
(174, 'english', 'See all', 'See all'),
(175, 'english', 'Admin', 'Admin'),
(176, 'english', 'Users', 'Users'),
(177, 'english', 'Accountant', 'Accountant'),
(178, 'english', 'Librarian', 'Librarian'),
(179, 'english', 'Parent', 'Parent'),
(180, 'english', 'Student', 'Student'),
(181, 'english', 'Teacher Permission', 'Teacher Permission'),
(182, 'english', 'Admissions', 'Admissions'),
(183, 'english', 'Examination', 'Examination'),
(184, 'english', 'Exam Category', 'Exam Category'),
(185, 'english', 'Offline Exam', 'Offline Exam'),
(186, 'english', 'Marks', 'Marks'),
(187, 'english', 'Grades', 'Grades'),
(188, 'english', 'Promotion', 'Promotion'),
(189, 'english', 'Academic', 'Academic'),
(190, 'english', 'Daily Attendance', 'Daily Attendance'),
(191, 'english', 'Class List', 'Class List'),
(192, 'english', 'Class Routine', 'Class Routine'),
(193, 'english', 'Subjects', 'Subjects'),
(194, 'english', 'Gradebooks', 'Gradebooks'),
(195, 'english', 'Syllabus', 'Syllabus'),
(196, 'english', 'Class Room', 'Class Room'),
(197, 'english', 'Department', 'Department'),
(198, 'english', 'Accounting', 'Accounting'),
(199, 'english', 'Student Fee Manager', 'Student Fee Manager'),
(200, 'english', 'Offline Payment Request', 'Offline Payment Request'),
(201, 'english', 'Expense Manager', 'Expense Manager'),
(202, 'english', 'Expense Category', 'Expense Category'),
(203, 'english', 'Back Office', 'Back Office'),
(204, 'english', 'Book List Manager', 'Book List Manager'),
(205, 'english', 'Book Issue Report', 'Book Issue Report'),
(206, 'english', 'Noticeboard', 'Noticeboard'),
(207, 'english', 'Events', 'Events'),
(208, 'english', 'School Settings', 'School Settings'),
(209, 'english', 'School information', 'School information'),
(210, 'english', 'Update settings', 'Update settings'),
(211, 'english', 'Deactive', 'Deactive'),
(212, 'english', 'Session has been activated', 'Session has been activated'),
(213, 'english', 'Update session', 'Update session'),
(214, 'english', 'Admins', 'Admins'),
(215, 'english', 'Create Admin', 'Create Admin'),
(216, 'english', 'User Info', 'User Info'),
(217, 'english', 'Oprions', 'Oprions'),
(218, 'english', 'Edit Admin', 'Edit Admin'),
(219, 'english', 'Teachers', 'Teachers'),
(220, 'english', 'Create Teacher', 'Create Teacher'),
(221, 'english', 'Create Accountant', 'Create Accountant'),
(222, 'english', 'Edit Accountant', 'Edit Accountant'),
(223, 'english', 'Librarians', 'Librarians'),
(224, 'english', 'Create Librarian', 'Create Librarian'),
(225, 'english', 'Edit Librarian', 'Edit Librarian'),
(226, 'english', 'Create Parent', 'Create Parent'),
(227, 'english', 'Edit Parent', 'Edit Parent'),
(228, 'english', 'Students', 'Students'),
(229, 'english', 'Create Student', 'Create Student'),
(230, 'english', 'Generate id card', 'Generate id card'),
(231, 'english', 'Assigned Permission For Teacher', 'Assigned Permission For Teacher'),
(232, 'english', 'Select a class', 'Select a class'),
(233, 'english', 'First select a class', 'First select a class'),
(234, 'english', 'Please select a class and section', 'Please select a class and section'),
(235, 'english', 'Attendance', 'Attendance'),
(236, 'english', 'Permission updated successfully.', 'Permission updated successfully.'),
(237, 'english', 'Admission', 'Admission'),
(238, 'english', 'Bulk student admission', 'Bulk student admission'),
(239, 'english', 'Class', 'Class'),
(240, 'english', 'Section', 'Section'),
(241, 'english', 'Select section', 'Select section'),
(242, 'english', 'Birthday', 'Birthday'),
(243, 'english', 'Select gender', 'Select gender'),
(244, 'english', 'Others', 'Others'),
(245, 'english', 'Student profile image', 'Student profile image'),
(246, 'english', 'Add Student', 'Add Student'),
(247, 'english', 'Create Exam Category', 'Create Exam Category'),
(248, 'english', 'Add Exam Category', 'Add Exam Category'),
(249, 'english', 'Title', 'Title'),
(250, 'english', 'Class test', 'Class test'),
(251, 'english', 'Edit Exam Category', 'Edit Exam Category'),
(252, 'english', 'Midterm exam', 'Midterm exam'),
(253, 'english', 'Final exam', 'Final exam'),
(254, 'english', 'Admission exam', 'Admission exam'),
(255, 'english', 'Create Exam', 'Create Exam'),
(256, 'english', 'Add Exam', 'Add Exam'),
(257, 'english', 'Exam', 'Exam'),
(258, 'english', 'Starting Time', 'Starting Time'),
(259, 'english', 'Ending Time', 'Ending Time'),
(260, 'english', 'Total Marks', 'Total Marks'),
(261, 'english', 'Edit Exam', 'Edit Exam'),
(262, 'english', 'Manage Marks', 'Manage Marks'),
(263, 'english', 'Select category', 'Select category'),
(264, 'english', 'Select class', 'Select class'),
(265, 'english', 'Please select all the fields', 'Please select all the fields'),
(266, 'english', 'Examknation', 'Examknation'),
(267, 'english', 'Create Grade', 'Create Grade'),
(268, 'english', 'Add grade', 'Add grade'),
(269, 'english', 'Grade', 'Grade'),
(270, 'english', 'Grade Point', 'Grade Point'),
(271, 'english', 'Mark From', 'Mark From'),
(272, 'english', 'Mark Upto', 'Mark Upto'),
(273, 'english', 'Promotions', 'Promotions'),
(274, 'english', 'Current session', 'Current session'),
(275, 'english', 'Session from', 'Session from'),
(276, 'english', 'Next session', 'Next session'),
(277, 'english', 'Session to', 'Session to'),
(278, 'english', 'Promoting from', 'Promoting from'),
(279, 'english', 'Promoting to', 'Promoting to'),
(280, 'english', 'Manage promotion', 'Manage promotion'),
(281, 'english', 'Take Attendance', 'Take Attendance'),
(282, 'english', 'Select a month', 'Select a month'),
(283, 'english', 'January', 'January'),
(284, 'english', 'February', 'February'),
(285, 'english', 'March', 'March'),
(286, 'english', 'April', 'April'),
(287, 'english', 'May', 'May'),
(288, 'english', 'June', 'June'),
(289, 'english', 'July', 'July'),
(290, 'english', 'August', 'August'),
(291, 'english', 'September', 'September'),
(292, 'english', 'October', 'October'),
(293, 'english', 'November', 'November'),
(294, 'english', 'December', 'December'),
(295, 'english', 'Select a year', 'Select a year'),
(296, 'english', 'Please select in all fields !', 'Please select in all fields !'),
(297, 'english', 'Classes', 'Classes'),
(298, 'english', 'Create Class', 'Create Class'),
(299, 'english', 'Add class', 'Add class'),
(300, 'english', 'Edit Section', 'Edit Section'),
(301, 'english', 'Edit Class', 'Edit Class'),
(302, 'english', 'Routines', 'Routines'),
(303, 'english', 'Add class routine', 'Add class routine'),
(304, 'english', 'Create Subject', 'Create Subject'),
(305, 'english', 'Add subject', 'Add subject'),
(306, 'english', 'Edit Subject', 'Edit Subject'),
(307, 'english', 'Select a exam category', 'Select a exam category'),
(308, 'english', 'Create syllabus', 'Create syllabus'),
(309, 'english', 'Add syllabus', 'Add syllabus'),
(310, 'english', 'Class Rooms', 'Class Rooms'),
(311, 'english', 'Create Class Room', 'Create Class Room'),
(312, 'english', 'Add class room', 'Add class room'),
(313, 'english', 'Edit Class Room', 'Edit Class Room'),
(314, 'english', 'Departments', 'Departments'),
(315, 'english', 'Create Department', 'Create Department'),
(316, 'english', 'Add department', 'Add department'),
(317, 'english', 'Edit Department', 'Edit Department'),
(318, 'english', 'Add Single Invoice', 'Add Single Invoice'),
(319, 'english', 'Add Mass Invoice', 'Add Mass Invoice'),
(320, 'english', 'All class', 'All class'),
(321, 'english', 'All status', 'All status'),
(322, 'english', 'Paid', 'Paid'),
(323, 'english', 'Unpaid', 'Unpaid'),
(324, 'english', 'Invoice No', 'Invoice No'),
(325, 'english', 'Invoice Title', 'Invoice Title'),
(326, 'english', 'Total Amount', 'Total Amount'),
(327, 'english', 'Created at', 'Created at'),
(328, 'english', 'Paid Amount', 'Paid Amount'),
(329, 'english', 'Expense', 'Expense'),
(330, 'english', 'Create Expense', 'Create Expense'),
(331, 'english', 'Add New Expense', 'Add New Expense'),
(332, 'english', 'Create Expense Category', 'Create Expense Category'),
(333, 'english', 'Add Expense Category', 'Add Expense Category'),
(334, 'english', 'Option', 'Option'),
(335, 'english', 'Edit Expense Category', 'Edit Expense Category'),
(336, 'english', 'Book', 'Book'),
(337, 'english', 'Add book', 'Add book'),
(338, 'english', 'Book name', 'Book name'),
(339, 'english', 'Author', 'Author'),
(340, 'english', 'Copies', 'Copies'),
(341, 'english', 'Available copies', 'Available copies'),
(342, 'english', 'Edit Book', 'Edit Book'),
(343, 'english', 'Book Issue', 'Book Issue'),
(344, 'english', 'Issue Book', 'Issue Book'),
(345, 'english', 'Noticeboard calendar', 'Noticeboard calendar'),
(346, 'english', 'Add New Notice', 'Add New Notice'),
(347, 'english', 'Locales:', 'Locales:'),
(348, 'english', 'Current Plan', 'Current Plan'),
(349, 'english', 'Silver', 'Silver'),
(350, 'english', 'Monthly', 'Monthly'),
(351, 'english', 'Subscription Renew Date', 'Subscription Renew Date'),
(352, 'english', 'Amount To Be Charged', 'Amount To Be Charged'),
(353, 'english', 'Create Event', 'Create Event'),
(354, 'english', 'Event title', 'Event title'),
(355, 'english', 'Date', 'Date'),
(356, 'english', 'Update event', 'Update event'),
(357, 'english', 'Upload addons zip file', 'Upload addons zip file'),
(358, 'english', 'Verified', 'Verified'),
(359, 'english', 'Details info', 'Details info'),
(360, 'english', 'Phone Number', 'Phone Number'),
(361, 'english', 'Designation', 'Designation'),
(362, 'english', 'Save Changes', 'Save Changes'),
(363, 'english', 'Select a status', 'Select a status'),
(364, 'english', 'Update school', 'Update school'),
(365, 'english', 'Package price', 'Package price'),
(366, 'english', 'Package Type', 'Package Type'),
(367, 'english', 'Select a package type', 'Select a package type'),
(368, 'english', 'Trail', 'Trail'),
(369, 'english', 'Select a interval', 'Select a interval'),
(370, 'english', 'Days', 'Days'),
(371, 'english', 'Yearly', 'Yearly'),
(372, 'english', 'Interval Preiod', 'Interval Preiod'),
(373, 'english', 'Description', 'Description'),
(374, 'english', 'Create package', 'Create package'),
(375, 'english', 'Update package', 'Update package'),
(376, 'english', 'Invalid purchase code', 'Invalid purchase code'),
(377, 'english', 'Inactive', 'Inactive'),
(378, 'english', 'Save event', 'Save event'),
(379, 'english', 'Create', 'Create'),
(380, 'english', 'Select a department', 'Select a department'),
(381, 'english', 'One', 'One'),
(382, 'english', 'Two', 'Two'),
(383, 'english', 'Three', 'Three'),
(384, 'english', 'Four', 'Four'),
(385, 'english', 'Five', 'Five'),
(386, 'english', 'Six', 'Six'),
(387, 'english', 'Seven', 'Seven'),
(388, 'english', 'Eight', 'Eight'),
(389, 'english', 'Nine', 'Nine'),
(390, 'english', 'Ten', 'Ten'),
(391, 'english', 'Add students', 'Add students'),
(392, 'english', 'Create category', 'Create category'),
(393, 'english', 'Exam Name', 'Exam Name'),
(394, 'english', 'Select exam category name', 'Select exam category name'),
(395, 'english', 'Subject', 'Subject'),
(396, 'english', 'Starting date', 'Starting date'),
(397, 'english', 'Ending date', 'Ending date'),
(398, 'english', 'Student name', 'Student name'),
(399, 'english', 'Mark', 'Mark'),
(400, 'english', 'Comment', 'Comment'),
(401, 'english', 'Value has been updated successfully', 'Value has been updated successfully'),
(402, 'english', 'Required mark field', 'Required mark field'),
(403, 'english', 'Image', 'Image'),
(404, 'english', 'Enroll to', 'Enroll to'),
(405, 'english', 'Select a section', 'Select a section'),
(406, 'english', 'Attendance Report Of', 'Attendance Report Of'),
(407, 'english', 'Last Update at', 'Last Update at'),
(408, 'english', 'Time', 'Time'),
(409, 'english', 'Please select the required fields', 'Please select the required fields'),
(410, 'english', 'Saturday', 'Saturday'),
(411, 'english', 'Sunday', 'Sunday'),
(412, 'english', 'Monday', 'Monday'),
(413, 'english', 'Tuesday', 'Tuesday'),
(414, 'english', 'Wednesday', 'Wednesday'),
(415, 'english', 'Update subject', 'Update subject'),
(416, 'english', 'Select subject', 'Select subject'),
(417, 'english', 'Assign a teacher', 'Assign a teacher'),
(418, 'english', 'Select a class room', 'Select a class room'),
(419, 'english', 'Day', 'Day'),
(420, 'english', 'Select a day', 'Select a day'),
(421, 'english', 'Thursday', 'Thursday'),
(422, 'english', 'Friday', 'Friday'),
(423, 'english', 'Starting hour', 'Starting hour'),
(424, 'english', 'Starting minute', 'Starting minute'),
(425, 'english', 'Ending hour', 'Ending hour'),
(426, 'english', 'Ending minute', 'Ending minute'),
(427, 'english', 'Add routine', 'Add routine'),
(428, 'english', 'Edit class routine', 'Edit class routine'),
(429, 'english', 'Tittle', 'Tittle'),
(430, 'english', 'Upload syllabus', 'Upload syllabus'),
(431, 'english', 'Select student', 'Select student'),
(432, 'english', 'Select a student', 'Select a student'),
(433, 'english', 'Payment method', 'Payment method'),
(434, 'english', 'Select a payment method', 'Select a payment method'),
(435, 'english', 'Cash', 'Cash'),
(436, 'english', 'Paypal', 'Paypal'),
(437, 'english', 'Paytm', 'Paytm'),
(438, 'english', 'Razorpay', 'Razorpay'),
(439, 'english', 'Create invoice', 'Create invoice'),
(440, 'english', 'Payment date', 'Payment date'),
(441, 'english', 'Print invoice', 'Print invoice'),
(442, 'english', 'Edit Invoice', 'Edit Invoice'),
(443, 'english', 'Amount', 'Amount'),
(444, 'english', 'Select an expense category', 'Select an expense category'),
(445, 'english', 'Edit Expense', 'Edit Expense'),
(446, 'english', 'Issue date', 'Issue date'),
(447, 'english', 'Select book', 'Select book'),
(448, 'english', 'Id', 'Id'),
(449, 'english', 'Pending', 'Pending'),
(450, 'english', 'Update issued book', 'Update issued book'),
(451, 'english', 'Return this book', 'Return this book'),
(452, 'english', 'Notice title', 'Notice title'),
(453, 'english', 'Start date', 'Start date'),
(454, 'english', 'Setup additional date & time', 'Setup additional date & time'),
(455, 'english', 'Start time', 'Start time'),
(456, 'english', 'End date', 'End date'),
(457, 'english', 'End time', 'End time'),
(458, 'english', 'Notice', 'Notice'),
(459, 'english', 'Show on website', 'Show on website'),
(460, 'english', 'Show', 'Show'),
(461, 'english', 'Do not need to show', 'Do not need to show'),
(462, 'english', 'Upload notice photo', 'Upload notice photo'),
(463, 'english', 'Save notice', 'Save notice'),
(464, 'english', 'School Currency', 'School Currency'),
(465, 'english', 'Exam List', 'Exam List'),
(466, 'english', 'Profile', 'Profile'),
(467, 'english', ' Download', ' Download'),
(468, 'english', 'Select a subject', 'Select a subject'),
(469, 'english', 'Welcome, to', 'Welcome, to'),
(470, 'english', 'Fee Manager', 'Fee Manager'),
(471, 'english', 'List Of Books', 'List Of Books'),
(472, 'english', 'Issued Book', 'Issued Book'),
(473, 'english', 'Student Code', 'Student Code'),
(474, 'english', 'Candice Kennedy', 'Candice Kennedy'),
(475, 'english', 'English', 'English'),
(476, 'english', 'Natalie Ashley', 'Natalie Ashley'),
(477, 'english', 'Byron Chase', 'Byron Chase'),
(478, 'english', 'Rafael Hardy', 'Rafael Hardy'),
(479, 'english', 'Mathematics', 'Mathematics'),
(480, 'english', 'Aphrodite Shaffer', 'Aphrodite Shaffer'),
(481, 'english', 'Bangla', 'Bangla'),
(482, 'english', 'Fatima Phillips', 'Fatima Phillips'),
(483, 'english', 'Sydney Pearson', 'Sydney Pearson'),
(484, 'english', 'Drawing', 'Drawing'),
(485, 'english', 'Imani Cooper', 'Imani Cooper'),
(486, 'english', 'Ulric Spencer', 'Ulric Spencer'),
(487, 'english', 'Yoshio Gentry', 'Yoshio Gentry'),
(488, 'english', 'Attendance report', 'Attendance report'),
(489, 'english', 'Of', 'Of'),
(490, 'english', 'Last updated at', 'Last updated at'),
(491, 'english', 'View Marks', 'View Marks'),
(492, 'english', 'Subject name', 'Subject name'),
(493, 'english', 'Pay', 'Pay'),
(494, 'english', 'List Of Book', 'List Of Book'),
(495, 'english', 'Child', 'Child'),
(496, 'english', 'Teaches', 'Teaches'),
(498, 'english', 'Student List', 'Student List'),
(499, 'english', 'Id card', 'Id card'),
(500, 'english', 'Code', 'Code'),
(501, 'english', 'Not found', 'Not found'),
(502, 'english', 'Contact', 'Contact'),
(503, 'english', 'Search Attendance Report', 'Search Attendance Report'),
(504, 'english', 'Please select in all fields !', 'Please select in all fields !'),
(505, 'english', 'Please select student', 'Please select student'),
(506, 'english', 'Download', 'Download'),
(507, 'english', 'Ekattor', 'Ekattor'),
(508, 'english', 'Add  Single Invoice', 'Add  Single Invoice'),
(509, 'english', 'Add  Mass Invoice', 'Add  Mass Invoice'),
(510, 'english', 'Update invoice', 'Update invoice'),
(511, 'english', 'Invoice', 'Invoice'),
(512, 'english', 'Please find below the invoice', 'Please find below the invoice'),
(513, 'english', 'Billing Address', 'Billing Address'),
(514, 'english', 'Due Amount', 'Due Amount'),
(515, 'english', 'Student Fee', 'Student Fee'),
(516, 'english', 'Subtotal', 'Subtotal'),
(517, 'english', 'Due', 'Due'),
(518, 'english', 'Grand Total', 'Grand Total'),
(519, 'english', 'Update book issue information', 'Update book issue information'),
(520, 'english', 'Not Subscribed', 'Not Subscribed'),
(521, 'english', 'You are not subscribed to any plan. Subscribe now.', 'You are not subscribed to any plan. Subscribe now.'),
(522, 'english', 'Subscribe', 'Subscribe'),
(523, 'english', 'Package List', 'Package List'),
(524, 'english', 'Payment | Ekator 8', 'Payment | Ekator 8'),
(525, 'english', 'Make Payment', 'Make Payment'),
(526, 'english', 'Payment Gateway', 'Payment Gateway'),
(527, 'english', 'Offline', 'Offline'),
(528, 'english', 'Addon', 'Addon'),
(529, 'english', 'Invoice Summary', 'Invoice Summary'),
(530, 'english', 'Document of your payment', 'Document of your payment'),
(531, 'english', 'Submit payment document', 'Submit payment document'),
(532, 'english', 'Instruction', 'Instruction'),
(533, 'english', 'Admin will review your payment document and then approve the Payment.', 'Admin will review your payment document and then approve the Payment.'),
(534, 'english', 'Pending Payment', 'Pending Payment'),
(535, 'english', 'You payment request has been sent to Superadmin ', 'You payment request has been sent to Superadmin '),
(536, 'english', 'Suspended', 'Suspended'),
(537, 'english', 'Enter your email address to reset your password.', 'Enter your email address to reset your password.'),
(538, 'english', 'Reset password', 'Reset password'),
(539, 'english', 'Language Settings', 'Language Settings'),
(540, 'english', 'Language', 'Language'),
(541, 'english', 'Edit phrase', 'Edit phrase'),
(542, 'english', 'Delete language', 'Delete language'),
(543, 'english', 'edit_phrase', 'edit_phrase'),
(544, 'english', 'delete_language', 'delete_language'),
(545, 'english', 'System default language can not be removed', 'System default language can not be removed'),
(546, 'english', 'language_list', 'language_list'),
(547, 'english', 'add_language', 'add_language'),
(548, 'english', 'Language list', 'Language list'),
(549, 'english', 'Add language', 'Add language'),
(550, 'english', 'Add new phrase', 'Add new phrase'),
(551, 'english', 'add_new_language', 'add_new_language'),
(552, 'english', 'No special character or space is allowed', 'No special character or space is allowed'),
(553, 'english', 'valid_examples', 'valid_examples'),
(554, 'english', 'No special character or space is allowed', 'No special character or space is allowed'),
(555, 'english', 'Validexamples', 'Validexamples'),
(556, 'english', 'Add new language', 'Add new language'),
(557, 'english', 'Valid examples', 'Valid examples'),
(560, 'english', 'Phrase updated', 'Phrase updated'),
(561, 'english', 'System Language', 'System Language'),
(562, 'english', 'Edit Grade', 'Edit Grade'),
(563, 'english', 'Number of scopy', 'Number of scopy'),
(564, 'english', 'Save book', 'Save book'),
(565, 'english', 'New Password', 'New Password'),
(566, 'english', 'Confirm Password', 'Confirm Password'),
(567, 'english', 'Current Password', 'Current Password'),
(568, 'english', 'Add Parent', 'Add Parent'),
(569, 'english', 'Parent profile image', 'Parent profile image'),
(570, 'english', 'Allowances', 'Allowances'),
(571, 'english', 'Type', 'Type'),
(572, 'english', 'Select child', 'Select child'),
(573, 'english', 'Show student list', 'Show student list'),
(574, 'english', 'Update attendance', 'Update attendance'),
(575, 'english', 'Present All', 'Present All'),
(576, 'english', 'Absent All', 'Absent All'),
(577, 'english', 'present', 'present'),
(578, 'english', 'absent', 'absent'),
(579, 'english', 'not_updated_yet', 'not_updated_yet'),
(580, 'english', '31', '31'),
(581, 'english', 'Not updated yet', 'Not updated yet'),
(582, 'english', 'Update class', 'Update class'),
(583, 'english', 'Edit syllabus', 'Edit syllabus'),
(584, 'english', 'Select expense category', 'Select expense category'),
(585, 'english', 'Filter Options', 'Filter Options'),
(586, 'english', 'Reset', 'Reset'),
(587, 'english', 'Apply', 'Apply'),
(588, 'english', 'Profile info updated successfully', 'Profile info updated successfully'),
(589, 'english', 'not_found', 'not_found'),
(590, 'english', 'No date found', 'No date found'),
(591, 'english', 'No date found', 'No date found'),
(592, 'english', 'Blood ', 'Blood '),
(593, 'english', 'Blood Type', 'Blood Type'),
(594, 'english', 'Help Link', 'Help Link'),
(595, 'english', 'From', 'From'),
(596, 'english', 'To', 'To'),
(597, 'english', 'Select a parent', 'Select a parent'),
(598, 'english', 'Add', 'Add'),
(599, 'english', 'Document', 'Document'),
(600, 'english', 'Decline', 'Decline'),
(601, 'english', 'Number of child:', 'Number of child:'),
(602, 'english', 'Number of child', 'Number of child'),
(603, 'english', 'Parent Create', 'Parent Create'),
(604, 'english', 'Parent Update', 'Parent Update'),
(2452, 'english', 'Version updated successfully', 'Version updated successfully'),
(2453, 'english', 'Subcription', 'Subcription'),
(2454, 'english', 'Expired Subscription', 'Expired Subscription'),
(2455, 'english', 'Website Settings', 'Website Settings'),
(2456, 'english', 'Manage Faq', 'Manage Faq'),
(2457, 'english', 'Visit Website', 'Visit Website'),
(2458, 'english', 'Navbar Title', 'Navbar Title'),
(2459, 'english', 'Frontend View', 'Frontend View'),
(2460, 'english', 'No', 'No'),
(2461, 'english', 'Youtube Api Key', 'Youtube Api Key'),
(2462, 'english', 'Vimeo Api Key', 'Vimeo Api Key'),
(2463, 'english', 'Has to be bigger than', 'Has to be bigger than'),
(2464, 'english', 'Nav Bar Logo', 'Nav Bar Logo'),
(2465, 'english', 'Email Template Settings', 'Email Template Settings'),
(2466, 'english', 'Email Title', 'Email Title'),
(2467, 'english', 'Email Details', 'Email Details'),
(2468, 'english', 'Remaining characters is', 'Remaining characters is'),
(2469, 'english', 'Warning Text', 'Warning Text'),
(2470, 'english', 'Email logo', 'Email logo'),
(2471, 'english', 'Social logo-1', 'Social logo-1'),
(2472, 'english', 'Social logo-2', 'Social logo-2'),
(2473, 'english', 'Social logo-3', 'Social logo-3'),
(2474, 'english', 'Images for email templates will only support if the application is hosted on a live server. Localhost will not support this.', 'Images for email templates will only support if the application is hosted on a live server. Localhost will not support this.'),
(2475, 'english', 'School Logo', 'School Logo'),
(2476, 'english', 'Admin List', 'Admin List'),
(2477, 'english', 'Archive ', 'Archive '),
(2478, 'english', 'Trial', 'Trial'),
(2479, 'english', 'GENERAL SETTINGS', 'GENERAL SETTINGS'),
(2480, 'english', 'Banner Title', 'Banner Title'),
(2481, 'english', 'Banner Subtitle', 'Banner Subtitle'),
(2482, 'english', 'Price Subtitle', 'Price Subtitle'),
(2483, 'english', 'Faq Subtitle', 'Faq Subtitle'),
(2484, 'english', 'Facebook Link', 'Facebook Link'),
(2485, 'english', 'Twitter Link', 'Twitter Link'),
(2486, 'english', 'Linkedin Link', 'Linkedin Link'),
(2487, 'english', 'Instagram Link', 'Instagram Link'),
(2488, 'english', 'Contact Mail', 'Contact Mail'),
(2489, 'english', 'Frontend Footer Text', 'Frontend Footer Text'),
(2490, 'english', 'Copyright Text', 'Copyright Text'),
(3131, 'english', 'Password changed successfully', 'Password changed successfully'),
(3133, 'english', 'Feature', 'Feature'),
(3135, 'english', 'FAQ', 'FAQ'),
(3137, 'english', 'Register', 'Register'),
(3139, 'english', 'School Register Form', 'School Register Form'),
(3141, 'english', 'Admin Name', 'Admin Name'),
(3143, 'english', 'User Account', 'User Account'),
(3145, 'english', 'Our Features', 'Our Features'),
(3147, 'english', 'Features', 'Features'),
(3149, 'english', 'Students Admission', 'Students Admission'),
(3151, 'english', 'Your schools can add their students in two different ways', 'Your schools can add their students in two different ways'),
(3153, 'english', 'Take your students attendance in a smart way', 'Take your students attendance in a smart way'),
(3155, 'english', 'Manage your schools class list whenever you want', 'Manage your schools class list whenever you want'),
(3157, 'english', 'Add different subjects for different classes', 'Add different subjects for different classes'),
(3159, 'english', 'Event Calender', 'Event Calender'),
(3161, 'english', 'The school admin can manage their schools events separately', 'The school admin can manage their schools events separately'),
(3163, 'english', 'Routine', 'Routine'),
(3165, 'english', 'Manage your schools class routine easily', 'Manage your schools class routine easily'),
(3167, 'english', 'Student Information', 'Student Information'),
(3169, 'english', 'Add your students information within a few minute', 'Add your students information within a few minute'),
(3171, 'english', 'Manage syllabuses based on the classes', 'Manage syllabuses based on the classes'),
(3173, 'english', 'Fees Management', 'Fees Management'),
(3175, 'english', 'Pay academic fees in a smart way with Ekattor 8', 'Pay academic fees in a smart way with Ekattor 8'),
(3177, 'english', 'ID Card Generator', 'ID Card Generator'),
(3179, 'english', 'Generate your students ID card whenever you want', 'Generate your students ID card whenever you want'),
(3181, 'english', 'Online Payment Gateway', 'Online Payment Gateway'),
(3183, 'english', 'Pay your subscription and academic fees', 'Pay your subscription and academic fees'),
(3185, 'english', 'Invoice Generator', 'Invoice Generator'),
(3187, 'english', 'Generate invoices to make the payments more reliable', 'Generate invoices to make the payments more reliable'),
(3189, 'english', 'Offline Payment', 'Offline Payment'),
(3191, 'english', 'Complete payment with local money', 'Complete payment with local money'),
(3193, 'english', 'Book List', 'Book List'),
(3195, 'english', 'Manage your schools library within a few clicks', 'Manage your schools library within a few clicks'),
(3197, 'english', 'Manage your schools notices smartly', 'Manage your schools notices smartly'),
(3199, 'english', 'Create and manage your schools exams and categories', 'Create and manage your schools exams and categories'),
(3201, 'english', 'Marks Management', 'Marks Management'),
(3203, 'english', 'Manage your students exam marks', 'Manage your students exam marks'),
(3205, 'english', 'Add and manage grades in the examination', 'Add and manage grades in the examination'),
(3207, 'english', 'Have Any Question', 'Have Any Question'),
(3209, 'english', 'Contact us with any questions', 'Contact us with any questions'),
(3211, 'english', 'Contact Us', 'Contact Us'),
(3213, 'english', 'Social Link', 'Social Link'),
(3215, 'english', 'Admin Profile', 'Admin Profile'),
(3217, 'english', 'Showing', 'Showing'),
(3219, 'english', 'data', 'data'),
(3221, 'english', 'Excel upload', 'Excel upload'),
(3223, 'english', 'Teacher Profile', 'Teacher Profile'),
(3225, 'english', 'Accountant Profile', 'Accountant Profile'),
(3227, 'english', 'librarian Profile', 'librarian Profile'),
(3229, 'english', '', ''),
(3231, 'english', 'Student Profile', 'Student Profile'),
(3233, 'english', 'Email receipt title', 'Email receipt title'),
(3235, 'english', 'Social Link 1', 'Social Link 1'),
(3237, 'english', 'Social Link 2', 'Social Link 2'),
(3239, 'english', 'Social Link 3', 'Social Link 3'),
(3241, 'english', 'Email template Logo', 'Email template Logo'),
(3243, 'english', 'Update routine', 'Update routine'),
(3245, 'english', 'Class & Section', 'Class & Section'),
(3247, 'english', 'Stripe', 'Stripe'),
(3249, 'english', 'Flutterwave', 'Flutterwave'),
(3251, 'english', 'Paystack', 'Paystack'),
(3253, 'english', 'Expense category name', 'Expense category name'),
(3255, 'english', 'Save category', 'Save category'),
(3257, 'english', 'Number of copy', 'Number of copy'),
(3259, 'english', 'Update book info', 'Update book info'),
(3261, 'english', 'Parent Profile', 'Parent Profile'),
(3263, 'english', 'Returned', 'Returned'),
(3265, 'english', 'Addon updated successfully', 'Addon updated successfully'),
(3267, 'english', 'Bundle name', 'Bundle name'),
(3269, 'english', 'Version', 'Version'),
(3271, 'english', 'Purchase code verification failed', 'Purchase code verification failed'),
(3273, 'english', 'Addon installed successfully', 'Addon installed successfully'),
(3275, 'english', 'Transport', 'Transport'),
(3277, 'english', 'Driver', 'Driver'),
(3279, 'english', 'Vehicle', 'Vehicle'),
(3281, 'english', 'Assign student', 'Assign student'),
(3283, 'english', 'Alumni', 'Alumni'),
(3285, 'english', 'Manage Alumni', 'Manage Alumni'),
(3287, 'english', 'Gallery', 'Gallery'),
(3289, 'english', 'Sms Center', 'Sms Center'),
(3291, 'english', 'Sms Settings', 'Sms Settings'),
(3293, 'english', 'Sms sender', 'Sms sender'),
(3295, 'english', 'Create Driver', 'Create Driver'),
(3297, 'english', 'Edit Driver', 'Edit Driver'),
(3299, 'english', 'Create Vehicle', 'Create Vehicle'),
(3301, 'english', 'Vehicle Number', 'Vehicle Number'),
(3303, 'english', 'Vehicle Model', 'Vehicle Model'),
(3305, 'english', 'Chassis Number', 'Chassis Number'),
(3307, 'english', 'Seat Capacity', 'Seat Capacity'),
(3309, 'english', 'Assign driver', 'Assign driver'),
(3311, 'english', 'Select a driver', 'Select a driver'),
(3313, 'english', 'Route', 'Route'),
(3315, 'english', 'Made Year', 'Made Year'),
(3317, 'english', 'Vehicle Info', 'Vehicle Info'),
(3319, 'english', 'Driver Info', 'Driver Info'),
(3321, 'english', 'Capacity', 'Capacity'),
(3323, 'english', 'Vh No: ', 'Vh No: '),
(3325, 'english', 'Ch No: ', 'Ch No: '),
(3327, 'english', 'Name: ', 'Name: '),
(3329, 'english', 'Phone: ', 'Phone: '),
(3331, 'english', 'Edit Vehicle', 'Edit Vehicle'),
(3333, 'english', 'Individual', 'Individual'),
(3335, 'english', 'Assign by class', 'Assign by class'),
(3337, 'english', 'By Class', 'By Class'),
(3339, 'english', 'Category', 'Category'),
(3341, 'english', 'First select category', 'First select category'),
(3343, 'english', 'Selecct vehicle', 'Selecct vehicle'),
(3345, 'english', 'Select a vehicle', 'Select a vehicle'),
(3347, 'english', 'Selecct class', 'Selecct class'),
(3349, 'english', 'First select class', 'First select class'),
(3351, 'english', 'Assign', 'Assign'),
(3353, 'english', 'Driver Name', 'Driver Name'),
(3355, 'english', 'Remove', 'Remove'),
(3357, 'english', 'Selecct a vehicle', 'Selecct a vehicle'),
(3359, 'english', 'Create Alumni ', 'Create Alumni '),
(3361, 'english', 'Add Alumni', 'Add Alumni'),
(3363, 'english', 'Edit Alumni', 'Edit Alumni'),
(3365, 'english', 'Alumni Events', 'Alumni Events'),
(3367, 'english', 'Add new event ', 'Add new event '),
(3369, 'english', 'Upcoming Event', 'Upcoming Event'),
(3371, 'english', 'Archive Events', 'Archive Events'),
(3373, 'english', 'No event ', 'No event '),
(3375, 'english', 'No  event ', 'No  event '),
(3377, 'english', 'Event starting date', 'Event starting date'),
(3379, 'english', 'Event ending date', 'Event ending date'),
(3381, 'english', 'Visibility on website', 'Visibility on website'),
(3383, 'english', 'Upload event photo', 'Upload event photo'),
(3385, 'english', 'Event photo', 'Event photo'),
(3387, 'english', 'Visible', 'Visible'),
(3389, 'english', 'Alumni Gallery', 'Alumni Gallery'),
(3391, 'english', 'Add new Gallery', 'Add new Gallery'),
(3393, 'english', 'No Gallery found', 'No Gallery found'),
(3395, 'english', 'Gallery title', 'Gallery title'),
(3397, 'english', 'No need to show', 'No need to show'),
(3399, 'english', 'Save Gellary', 'Save Gellary'),
(3401, 'english', 'Add Image', 'Add Image'),
(3403, 'english', 'Add Photo', 'Add Photo'),
(3405, 'english', 'No Photos found', 'No Photos found'),
(3407, 'english', 'Upload gallery photo', 'Upload gallery photo'),
(3409, 'english', 'Save Image ', 'Save Image '),
(3411, 'english', 'Active a sms getway', 'Active a sms getway'),
(3413, 'english', 'Twilio', 'Twilio'),
(3415, 'english', 'MSG91', 'MSG91'),
(3417, 'english', 'None', 'None'),
(3419, 'english', 'SID', 'SID'),
(3421, 'english', 'token', 'token'),
(3423, 'english', 'sender phone number', 'sender phone number'),
(3425, 'english', 'auth key', 'auth key'),
(3427, 'english', 'sender id', 'sender id'),
(3429, 'english', 'country code', 'country code'),
(3431, 'english', 'Choose sms receiver', 'Choose sms receiver'),
(3433, 'english', 'Select receiver', 'Select receiver'),
(3435, 'english', 'Show receiver', 'Show receiver'),
(3437, 'english', 'List of receivers', 'List of receivers'),
(3439, 'english', 'message', 'message'),
(3441, 'english', 'Message to send', 'Message to send'),
(3443, 'english', 'Write down your message within 160 characters', 'Write down your message within 160 characters'),
(3445, 'english', 'Send sms', 'Send sms'),
(3447, 'english', 'Before sending sms to the receivers please make sure that you have set up sms settings perfectly.', 'Before sending sms to the receivers please make sure that you have set up sms settings perfectly.'),
(3449, 'english', 'You can set sms settings', 'You can set sms settings'),
(3451, 'english', 'here', 'here'),
(3453, 'english', 'Currently activated', 'Currently activated'),
(3455, 'english', 'Please select a receiver !', 'Please select a receiver !'),
(3457, 'english', 'Please select class and section !', 'Please select class and section !'),
(3459, 'english', 'Receiver can not be empty', 'Receiver can not be empty'),
(3461, 'english', 'Event', 'Event'),
(3463, 'english', 'Trips', 'Trips'),
(3465, 'english', 'Total Trips', 'Total Trips'),
(3467, 'english', 'Vehicles', 'Vehicles'),
(3469, 'english', 'Total vehicles', 'Total vehicles'),
(3471, 'english', 'Total students', 'Total students'),
(3473, 'english', 'Bcak Office', 'Bcak Office'),
(3475, 'english', 'Assigned student', 'Assigned student'),
(3477, 'english', 'Search', 'Search'),
(3479, 'english', 'Vehicle No', 'Vehicle No'),
(3481, 'english', 'Start Trip', 'Start Trip'),
(3483, 'english', 'End Trip', 'End Trip'),
(3485, 'english', 'Check all', 'Check all'),
(3487, 'english', 'Live class ', 'Live class '),
(3489, 'english', 'Add new ', 'Add new '),
(3491, 'english', 'Live Classes ', 'Live Classes '),
(3493, 'english', 'Add New Live Class', 'Add New Live Class'),
(3495, 'english', 'Enable Waiting', 'Enable Waiting'),
(3497, 'english', 'Upload attachment', 'Upload attachment'),
(3499, 'english', 'Live Class Url', 'Live Class Url'),
(3501, 'english', 'Topic', 'Topic'),
(3503, 'english', 'Create meeting', 'Create meeting'),
(3505, 'english', 'Your Live classes', 'Your Live classes'),
(3507, 'english', 'Upcoming ', 'Upcoming '),
(3509, 'english', 'Schedule', 'Schedule'),
(3511, 'english', 'Date : ', 'Date : '),
(3513, 'english', 'Time : ', 'Time : '),
(3515, 'english', 'Start class', 'Start class'),
(3517, 'english', 'Edit Meeting', 'Edit Meeting'),
(3519, 'english', 'Join', 'Join'),
(3521, 'english', 'Online Courses', 'Online Courses'),
(3523, 'english', 'Inventory', 'Inventory'),
(3525, 'english', 'Inventory Manager', 'Inventory Manager'),
(3527, 'english', 'Inventory Category', 'Inventory Category'),
(3529, 'english', 'Buy & Sell Report', 'Buy & Sell Report'),
(3531, 'english', 'Create Inventory', 'Create Inventory'),
(3533, 'english', 'Add Inventory', 'Add Inventory'),
(3535, 'english', 'Create Inventory Category', 'Create Inventory Category'),
(3537, 'english', 'Add inventory category', 'Add inventory category'),
(3539, 'english', 'Buy Report', 'Buy Report'),
(3541, 'english', 'Sell Report', 'Sell Report'),
(3543, 'english', 'All Courses', 'All Courses'),
(3545, 'english', 'Create new course', 'Create new course'),
(3547, 'english', 'Active Courses', 'Active Courses'),
(3549, 'english', 'Inactive Courses', 'Inactive Courses'),
(3551, 'english', 'Add new course', 'Add new course'),
(3553, 'english', 'Online Course', 'Online Course'),
(3555, 'english', 'COURSE ADDING FORM', 'COURSE ADDING FORM'),
(3557, 'english', 'Go Back', 'Go Back'),
(3559, 'english', 'Basic', 'Basic'),
(3561, 'english', 'Outcomes', 'Outcomes'),
(3563, 'english', 'Media', 'Media'),
(3565, 'english', 'Finish', 'Finish'),
(3567, 'english', 'Course title', 'Course title'),
(3569, 'english', 'Instructor', 'Instructor'),
(3571, 'english', 'Select a teacher', 'Select a teacher'),
(3573, 'english', 'Course overview provider', 'Course overview provider'),
(3575, 'english', 'Youtube', 'Youtube'),
(3577, 'english', 'Vimeo', 'Vimeo'),
(3579, 'english', 'HTML5', 'HTML5'),
(3581, 'english', 'Course overview url', 'Course overview url'),
(3583, 'english', 'Course thumbnail', 'Course thumbnail'),
(3585, 'english', 'Thank you', 'Thank you'),
(3587, 'english', 'You are just one click away', 'You are just one click away'),
(3589, 'english', 'Administrator', 'Administrator'),
(3591, 'english', 'Lesson and Section', 'Lesson and Section'),
(3593, 'english', 'Total section', 'Total section'),
(3595, 'english', 'Total lesson', 'Total lesson'),
(3597, 'english', 'Edit course', 'Edit course'),
(3599, 'english', 'COURSE EDITING FORM', 'COURSE EDITING FORM'),
(3601, 'english', 'Curriculum', 'Curriculum'),
(3603, 'english', 'Add new section', 'Add new section'),
(3605, 'english', 'Add section', 'Add section'),
(3607, 'english', 'Add new lesson', 'Add new lesson'),
(3609, 'english', 'Add lesson', 'Add lesson'),
(3611, 'english', 'Sort Section', 'Sort Section'),
(3613, 'english', 'Sort sections', 'Sort sections'),
(3615, 'english', 'Provide a section name', 'Provide a section name'),
(3617, 'english', 'Sort Lesson ', 'Sort Lesson '),
(3619, 'english', 'Update Section ', 'Update Section '),
(3621, 'english', 'Delete section', 'Delete section'),
(3623, 'english', 'Lesson type', 'Lesson type'),
(3625, 'english', 'Select type of lesson', 'Select type of lesson'),
(3627, 'english', 'Video', 'Video'),
(3629, 'english', 'Text file', 'Text file'),
(3631, 'english', 'Pdf file', 'Pdf file'),
(3633, 'english', 'Document file', 'Document file'),
(3635, 'english', 'Image file', 'Image file'),
(3637, 'english', 'Lesson provider', 'Lesson provider'),
(3639, 'english', 'For web application', 'For web application'),
(3641, 'english', 'Select lesson provider', 'Select lesson provider'),
(3643, 'english', 'Video url', 'Video url'),
(3645, 'english', 'This video will be shown on web application', 'This video will be shown on web application'),
(3647, 'english', 'Analyzing the url', 'Analyzing the url'),
(3649, 'english', 'Invalid url', 'Invalid url'),
(3651, 'english', 'Your video source has to be either youtube or vimeo', 'Your video source has to be either youtube or vimeo'),
(3653, 'english', 'Duration', 'Duration'),
(3655, 'english', 'Attachment', 'Attachment'),
(3657, 'english', 'Summary', 'Summary'),
(3659, 'english', 'Lesson', 'Lesson'),
(3661, 'english', 'Edit Lesson ', 'Edit Lesson '),
(3663, 'english', 'List of Sections', 'List of Sections'),
(3665, 'english', 'Update Sorting', 'Update Sorting'),
(3667, 'english', 'Sections have been Sorted', 'Sections have been Sorted'),
(3669, 'english', 'Continue lesson ', 'Continue lesson '),
(3671, 'english', 'Back to Course', 'Back to Course'),
(3673, 'english', 'Note:', 'Note:'),
(3675, 'english', 'No Added Summary ', 'No Added Summary '),
(3677, 'english', 'Course content', 'Course content'),
(3679, 'english', 'Product Name', 'Product Name'),
(3681, 'english', 'Select an Inventory', 'Select an Inventory'),
(3683, 'english', 'Quantity', 'Quantity'),
(3685, 'english', 'Unit Price', 'Unit Price'),
(3687, 'english', 'Total Price', 'Total Price'),
(3689, 'english', 'Sell', 'Sell'),
(3691, 'english', 'Buy Invoice', 'Buy Invoice'),
(3693, 'english', 'Nayda Bonner', 'Nayda Bonner'),
(3695, 'english', 'Odessa Holman', 'Odessa Holman'),
(3697, 'english', '08-23-23', '08-23-23'),
(3699, 'english', 'Total', 'Total'),
(3701, 'english', '1', '1'),
(3703, 'english', '811', '811'),
(3705, 'english', '299', '299'),
(3707, 'english', '242489', '242489'),
(3709, 'english', 'Regan Benson', 'Regan Benson'),
(3711, 'english', '2', '2'),
(3713, 'english', '435', '435'),
(3715, 'english', '120', '120'),
(3717, 'english', '52200', '52200'),
(3719, 'english', 'Human Resource', 'Human Resource'),
(3721, 'english', 'User Roles', 'User Roles'),
(3723, 'english', 'User List', 'User List'),
(3725, 'english', 'Take Attendence', 'Take Attendence'),
(3727, 'english', 'Leave', 'Leave'),
(3729, 'english', 'Payroll', 'Payroll'),
(3731, 'english', 'Pay by Paypal ', 'Pay by Paypal '),
(3733, 'english', 'Pay by Stripe ', 'Pay by Stripe '),
(3735, 'english', 'Pay by Paytm ', 'Pay by Paytm '),
(3737, 'english', 'Pay by Flutterwave ', 'Pay by Flutterwave '),
(3739, 'english', 'Create Roles', 'Create Roles'),
(3741, 'english', 'Role', 'Role'),
(3743, 'english', 'Permanent', 'Permanent'),
(3745, 'english', 'Not Editable', 'Not Editable'),
(3747, 'english', 'Role name', 'Role name'),
(3749, 'english', 'Create role', 'Create role'),
(3751, 'english', 'Peon', 'Peon'),
(3753, 'english', 'Update role', 'Update role'),
(3755, 'english', 'User Lists', 'User Lists'),
(3757, 'english', 'Import Users', 'Import Users'),
(3759, 'english', 'Create New User', 'Create New User'),
(3761, 'english', 'Select a role', 'Select a role'),
(3763, 'english', 'Please select a role', 'Please select a role'),
(3765, 'english', 'Import user', 'Import user'),
(3767, 'english', 'Lila Vazquez', 'Lila Vazquez'),
(3769, 'english', 'Admin2@gmail.com', 'Admin2@gmail.com'),
(3771, 'english', 'Similique occaecat q', 'Similique occaecat q'),
(3773, 'english', 'Update user', 'Update user'),
(3775, 'english', 'Attendence', 'Attendence'),
(3777, 'english', 'Show user list', 'Show user list'),
(3779, 'english', 'please_select_in_all_fields !', 'please_select_in_all_fields !'),
(3781, 'english', 'Leave Lists', 'Leave Lists'),
(3783, 'english', 'Leave List', 'Leave List'),
(3785, 'english', 'Crete new leave', 'Crete new leave'),
(3787, 'english', 'Create New Leave', 'Create New Leave'),
(3789, 'english', ' No data found', ' No data found'),
(3791, 'english', 'Roles', 'Roles'),
(3793, 'english', 'User name', 'User name'),
(3795, 'english', 'Select a user', 'Select a user'),
(3797, 'english', 'Reason', 'Reason'),
(3799, 'english', 'User role', 'User role'),
(3801, 'english', 'Joining salary', 'Joining salary'),
(3803, 'english', 'Create user', 'Create user'),
(3805, 'english', 'Rina Avila', 'Rina Avila'),
(3807, 'english', 'Librarian@gmail.com', 'Librarian@gmail.com'),
(3809, 'english', 'Iure dolores consequ', 'Iure dolores consequ'),
(3811, 'english', 'Kareem Kidd', 'Kareem Kidd'),
(3813, 'english', 'Accounted@gmail.com', 'Accounted@gmail.com'),
(3815, 'english', 'Voluptatem commodo', 'Voluptatem commodo'),
(3817, 'english', 'Pogulil', 'Pogulil');
INSERT INTO `language` (`id`, `name`, `phrase`, `translated`) VALUES
(3819, 'english', 'Waryhu@mailinator.com', 'Waryhu@mailinator.com'),
(3821, 'english', 'Et placeat eum ea o', 'Et placeat eum ea o'),
(3823, 'english', 'Employee', 'Employee'),
(3825, 'english', 'Payslip list', 'Payslip list'),
(3827, 'english', 'Create payslip', 'Create payslip'),
(3829, 'english', 'Select a role first', 'Select a role first'),
(3831, 'english', 'Deductions', 'Deductions'),
(3833, 'english', 'Total allowance', 'Total allowance'),
(3835, 'english', 'Total deduction', 'Total deduction'),
(3837, 'english', 'Net salary', 'Net salary'),
(3839, 'english', 'select_a_role_first', 'select_a_role_first'),
(3841, 'english', 'USER', 'USER'),
(3843, 'english', 'Payslip details', 'Payslip details'),
(3845, 'english', 'view payslip details', 'view payslip details'),
(3847, 'english', 'Teachers List', 'Teachers List'),
(3849, 'english', 'Accountant List', 'Accountant List'),
(3851, 'english', 'Librarian List', 'Librarian List'),
(3853, 'english', 'Parent List', 'Parent List'),
(3855, 'english', 'Admin Students', 'Admin Students'),
(3857, 'english', ' Students List', ' Students List'),
(3859, 'english', 'Driver List', 'Driver List'),
(3861, 'english', 'Vehicle List', 'Vehicle List'),
(3863, 'english', 'Corrupti aut amet', 'Corrupti aut amet'),
(3865, 'english', 'Pion', 'Pion'),
(3867, 'english', 'Pion@gmail.com', 'Pion@gmail.com'),
(3869, 'english', 'Sff', 'Sff'),
(3871, 'english', 'Pion2', 'Pion2'),
(3873, 'english', 'Pion2@gmail.com', 'Pion2@gmail.com'),
(3875, 'english', 'Sf', 'Sf'),
(3877, 'english', 'Brenden Faulkner', 'Brenden Faulkner'),
(3879, 'english', 'Attendence Report', 'Attendence Report'),
(3881, 'english', 'You payment request has been suspended', 'You payment request has been suspended'),
(3883, 'english', 'You payment request has been <span style=\"color:red;\"> suspended </span>', 'You payment request has been <span style=\"color:red;\"> suspended </span>'),
(3885, 'english', 'Department List', 'Department List'),
(3887, 'english', '3', '3'),
(3889, 'english', '4', '4'),
(3891, 'english', '5', '5'),
(3893, 'english', '6', '6'),
(3895, 'english', '7', '7'),
(3897, 'english', '9', '9'),
(3899, 'english', '10', '10'),
(3901, 'english', '11', '11'),
(3903, 'english', '12', '12'),
(3905, 'english', '13', '13'),
(3907, 'english', '14', '14'),
(3909, 'english', '15', '15'),
(3911, 'english', '16', '16'),
(3913, 'english', '17', '17'),
(3915, 'english', '18', '18'),
(3917, 'english', '19', '19'),
(3919, 'english', '20', '20'),
(3921, 'english', '21', '21'),
(3923, 'english', '22', '22'),
(3925, 'english', '23', '23'),
(3927, 'english', '24', '24'),
(3929, 'english', '25', '25'),
(3931, 'english', '26', '26'),
(3933, 'english', '27', '27'),
(3935, 'english', '28', '28'),
(3937, 'english', '29', '29'),
(3939, 'english', '30', '30'),
(3941, 'english', 'Alumni List', 'Alumni List'),
(3943, 'english', 'Book issue list', 'Book issue list'),
(3945, 'english', 'Event List', 'Event List'),
(3947, 'english', 'Paypal settings', 'Paypal settings'),
(3949, 'english', 'Live', 'Live'),
(3951, 'english', 'Sandbox', 'Sandbox'),
(3953, 'english', 'Client ID (Sandbox)', 'Client ID (Sandbox)'),
(3955, 'english', 'Client Secrect (Sandbox)', 'Client Secrect (Sandbox)'),
(3957, 'english', 'Client ID (Live)', 'Client ID (Live)'),
(3959, 'english', 'Client Secrect (Live)', 'Client Secrect (Live)'),
(3961, 'english', 'Update Paypal', 'Update Paypal'),
(3963, 'english', 'Stripe settings', 'Stripe settings'),
(3965, 'english', 'Test', 'Test'),
(3967, 'english', 'Test Public Key', 'Test Public Key'),
(3969, 'english', 'Test Secrect Key', 'Test Secrect Key'),
(3971, 'english', 'Live Public Key', 'Live Public Key'),
(3973, 'english', 'Live Secrect Key', 'Live Secrect Key'),
(3975, 'english', 'Update Stripe ', 'Update Stripe '),
(3977, 'english', 'Razorpay settings', 'Razorpay settings'),
(3979, 'english', 'Theme Color', 'Theme Color'),
(3981, 'english', 'Update razorpay ', 'Update razorpay '),
(3983, 'english', 'Paytm settings', 'Paytm settings'),
(3985, 'english', 'Test Merchant Id', 'Test Merchant Id'),
(3987, 'english', 'Test Merchant Key', 'Test Merchant Key'),
(3989, 'english', 'Live Merchant Id', 'Live Merchant Id'),
(3991, 'english', 'Live Merchant Key', 'Live Merchant Key'),
(3993, 'english', 'Environment', 'Environment'),
(3995, 'english', 'Merchant_Website', 'Merchant_Website'),
(3997, 'english', 'Channel', 'Channel'),
(3999, 'english', 'industry_type', 'industry_type'),
(4001, 'english', 'Update Paytm ', 'Update Paytm '),
(4003, 'english', 'Flutterwave settings', 'Flutterwave settings'),
(4005, 'english', 'Test Encryption Key', 'Test Encryption Key'),
(4007, 'english', 'Live Encryption Key', 'Live Encryption Key'),
(4009, 'english', 'List of Lesson', 'List of Lesson'),
(4011, 'english', 'Lesson have been Sorted', 'Lesson have been Sorted'),
(4013, 'english', 'Add Leave', 'Add Leave'),
(4015, 'english', 'Add New Leave', 'Add New Leave'),
(4017, 'english', 'Child List', 'Child List'),
(4019, 'english', 'Test Sectect Key', 'Test Sectect Key'),
(4021, 'english', 'Edit Leave', 'Edit Leave'),
(4023, 'english', 'Student Limit', 'Student Limit'),
(4025, 'english', 'Life Time', 'Life Time'),
(4027, 'english', 'Students Limit', 'Students Limit'),
(4029, 'english', 'Write Features', 'Write Features'),
(4031, 'english', 'Write service', 'Write service'),
(4033, 'english', 'Write a new features', 'Write a new features'),
(4035, 'english', 'Subscription Purchase Date', 'Subscription Purchase Date'),
(4037, 'english', 'Upgrade Subscribe ', 'Upgrade Subscribe '),
(4039, 'english', 'Payment', 'Payment'),
(4041, 'english', 'Deliverable', 'Deliverable'),
(4043, 'english', 'Rate', 'Rate'),
(4045, 'english', ' All Rights Reserved', ' All Rights Reserved'),
(4047, 'english', 'Features Title', 'Features Title'),
(4049, 'english', 'Features Subtitle', 'Features Subtitle'),
(4051, 'english', 'Frontend Features', 'Frontend Features'),
(4053, 'english', 'Add Frontend Features', 'Add Frontend Features'),
(4055, 'english', 'Features List Title', 'Features List Title'),
(4057, 'english', 'Short Description', 'Short Description'),
(4059, 'english', 'Features List Image', 'Features List Image'),
(4061, 'english', 'Features List Icon', 'Features List Icon'),
(4063, 'english', 'Website Logo', 'Website Logo'),
(4065, 'english', 'Frontend logo', 'Frontend logo'),
(4067, 'english', 'Select a valid zip file', 'Select a valid zip file'),
(4069, 'english', 'Add question and answer', 'Add question and answer'),
(4071, 'english', 'Faq List', 'Faq List'),
(4073, 'english', 'Update question and answer', 'Update question and answer'),
(4075, 'english', 'Offline Payment Instruction', 'Offline Payment Instruction'),
(4077, 'english', 'Offline Payment Instruction Image/PDF', 'Offline Payment Instruction Image/PDF'),
(4079, 'english', 'Question Title', 'Question Title'),
(4081, 'english', 'Question Description', 'Question Description'),
(4083, 'english', 'It looks like you are skipping a version', 'It looks like you are skipping a version'),
(4085, 'english', 'Please update version', 'Please update version'),
(4087, 'english', 'first', 'first'),
(4089, 'english', ' Pending Requests', ' Pending Requests'),
(4091, 'english', 'Heads up', 'Heads up'),
(4093, 'english', 'Are you sure', 'Are you sure'),
(4095, 'english', 'Documents', 'Documents'),
(4097, 'english', 'Files', 'Files'),
(4099, 'english', 'File upload', 'File upload'),
(4101, 'english', 'File Name', 'File Name'),
(4103, 'english', 'Upload', 'Upload'),
(4105, 'english', 'Pending Requests', 'Pending Requests'),
(4107, 'english', 'Recaptcha', 'Recaptcha'),
(4109, 'english', 'Recaptcha Site Key', 'Recaptcha Site Key'),
(4111, 'english', 'Recaptcha Secret Key', 'Recaptcha Secret Key'),
(4113, 'english', 'Update category', 'Update category'),
(4114, 'english', 'All Rights Reservedz', 'All Rights Reservedz'),
(4115, 'english', 'Data not found', 'Data not found');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice_title` longtext NOT NULL,
  `notice` longtext NOT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `show_on_website` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `package_type` varchar(255) NOT NULL,
  `interval` varchar(255) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `studentLimit` varchar(255) DEFAULT NULL,
  `features` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `package_type`, `interval`, `days`, `studentLimit`, `features`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Silver', '5999', 'paid', 'Yearly', 1, '100', '[null]', 1, 'This package is designed for schools with 100 students and provides a comprehensive set of features to streamline school operations.', '2024-02-18 17:52:01', '2025-01-27 13:27:32'),
(2, 'Platinum', '10999', 'paid', 'Yearly', 1, '250', '[]', 1, 'This package offers a comprehensive and intuitive solution for managing all aspects of your school with up to 250 students.', '2024-02-18 17:56:15', '2025-01-27 13:53:35'),
(3, 'Gold', '20999', 'paid', 'Yearly', 1, '500', '[]', 1, 'This package is for medium-sized schools with up to 500 students, providing tools to streamline operations and enhance communication.', '2024-02-18 17:59:20', '2025-01-27 13:32:10'),
(4, 'Diamond', '50999', 'paid', 'Yearly', 1, 'Unlimited', '[]', 1, 'This package is a complete solution for schools with unlimited students, offering tools for administration, student management, and communication.', '2024-02-18 18:04:09', '2025-01-27 19:02:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `expense_type` longtext NOT NULL,
  `expense_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `transaction_keys` longtext NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `configuration` longtext NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `transaction_keys` longtext DEFAULT NULL,
  `document_image` varchar(255) DEFAULT NULL,
  `paid_by` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_history`
--

INSERT INTO `payment_history` (`id`, `payment_type`, `user_id`, `course_id`, `package_id`, `amount`, `school_id`, `transaction_keys`, `document_image`, `paid_by`, `status`, `timestamp`, `created_at`, `updated_at`) VALUES
(1, 'subscription', 2, NULL, 3, 18499, 1, '[]', '12. Login Audits.png', 'offline', 'approve', 1708279908, '2024-02-18 18:11:48', '2024-02-18 18:13:08'),
(2, 'subscription', 6, NULL, 4, 75000, 2, '[]', 'image_1bb7wol.png', 'offline', 'approve', 1736095740, '2025-01-05 16:49:00', '2025-01-05 16:50:13'),
(3, 'subscription', 7, NULL, 3, 20999, 3, '[]', 'images.jpeg', 'offline', 'approve', 1738599963, '2025-02-03 16:26:03', '2025-02-03 16:27:07'),
(4, 'subscription', 32, NULL, 2, 10999, 18, '[]', 'White Color Modern Invoice A4 Document.png', 'offline', 'approve', 1744462200, '2025-04-12 12:50:00', '2025-04-12 12:50:30'),
(5, 'subscription', 33, NULL, 1, 5999, 19, '[]', 'White Color Modern Invoice A4 Document.png', 'offline', 'approve', 1744487224, '2025-04-12 19:47:04', '2025-04-12 19:47:36'),
(6, 'subscription', 35, NULL, 2, 10999, 20, '[]', 'Mastermind Invoice.png', 'offline', 'approve', 1744523087, '2025-04-13 05:44:47', '2025-04-13 05:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `payment_keys` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=inactive , 1=active',
  `mode` varchar(255) NOT NULL DEFAULT 'test' COMMENT 'test / live',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `payment_keys`, `image`, `status`, `mode`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'offline', '{}', 'offline.png', 1, 'offline', '', '', NULL),
(11, 'paypal', '{\"test_client_id\":\"snd_cl_id_xxxxxxxxxxxxx\",\"test_secret_key\":\"snd_cl_sid_xxxxxxxxxxxx\",\"live_client_id\":\"lv_cl_id_xxxxxxxxxxxxxxx\",\"live_secret_key\":\"lv_cl_sid_xxxxxxxxxxxxxx\"}', 'paypal.png', 1, 'test', NULL, NULL, 2),
(12, 'stripe', '{\"test_key\":\"pk_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'stripe.png', 1, 'test', NULL, NULL, 2),
(13, 'razorpay', '{\"test_key\":\"rzp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"rzs_test_xxxxxxxxxxxxx\",\"live_key\":\"rzp_live_xxxxxxxxxxxxx\",\"live_secret_key\":\"rzs_live_xxxxxxxxxxxxx\",\"theme_color\":\"#c7a600\"}', 'razorpay.png', 1, 'test', NULL, NULL, 2),
(14, 'paytm', '{\"test_merchant_id\":\"tm_id_xxxxxxxxxxxx\",\"test_merchant_key\":\"tm_key_xxxxxxxxxx\",\"live_merchant_id\":\"lv_mid_xxxxxxxxxxx\",\"live_merchant_key\":\"lv_key_xxxxxxxxxxx\",\"environment\":\"provide-a-environment\",\"merchant_website\":\"merchant-website\",\"channel\":\"provide-channel-type\",\"industry_type\":\"provide-industry-type\"}', 'paytm.png', 1, 'test', NULL, NULL, 2),
(15, 'flutterwave', '{\"test_key\":\"flwp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"flws_test_xxxxxxxxxxxxx\",\"test_encryption_key\":\"flwe_test_xxxxxxxxxxxxx\",\"public_live_key\":\"flwp_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"flws_live_xxxxxxxxxxxxxx\",\"encryption_live_key\":\"flwe_live_xxxxxxxxxxxxxx\"}', 'flutterwave.png', 1, 'test', NULL, NULL, 2),
(16, 'paystack', '{\"test_key\":\"pk_test_xxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'paystack.png', 1, 'test', NULL, NULL, 2),
(17, 'flutterwave', '{\"test_key\":\"flwp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"flws_test_xxxxxxxxxxxxx\",\"test_encryption_key\":\"flwe_test_xxxxxxxxxxxxx\",\"public_live_key\":\"flwp_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"flws_live_xxxxxxxxxxxxxx\",\"encryption_live_key\":\"flwe_live_xxxxxxxxxxxxxx\"}', 'flutterwave.png', 1, 'test', NULL, NULL, 1),
(18, 'paypal', '{\"test_client_id\":\"snd_cl_id_xxxxxxxxxxxxx\",\"test_secret_key\":\"snd_cl_sid_xxxxxxxxxxxx\",\"live_client_id\":\"lv_cl_id_xxxxxxxxxxxxxxx\",\"live_secret_key\":\"lv_cl_sid_xxxxxxxxxxxxxx\"}', 'paypal.png', 1, 'test', NULL, NULL, 1),
(19, 'stripe', '{\"test_key\":\"pk_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'stripe.png', 1, 'test', NULL, NULL, 1),
(20, 'razorpay', '{\"test_key\":\"rzp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"rzs_test_xxxxxxxxxxxxx\",\"live_key\":\"rzp_live_xxxxxxxxxxxxx\",\"live_secret_key\":\"rzs_live_xxxxxxxxxxxxx\",\"theme_color\":\"#c7a600\"}', 'razorpay.png', 1, 'test', NULL, NULL, 1),
(21, 'paytm', '{\"test_merchant_id\":\"tm_id_xxxxxxxxxxxx\",\"test_merchant_key\":\"tm_key_xxxxxxxxxx\",\"live_merchant_id\":\"lv_mid_xxxxxxxxxxx\",\"live_merchant_key\":\"lv_key_xxxxxxxxxxx\",\"environment\":\"provide-a-environment\",\"merchant_website\":\"merchant-website\",\"channel\":\"provide-channel-type\",\"industry_type\":\"provide-industry-type\"}', 'paytm.png', 1, 'test', NULL, NULL, 1),
(22, 'paystack', '{\"test_key\":\"pk_test_xxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'paystack.png', 1, 'test', NULL, NULL, 1),
(23, 'paypal', '{\"test_client_id\":\"snd_cl_id_xxxxxxxxxxxxx\",\"test_secret_key\":\"snd_cl_sid_xxxxxxxxxxxx\",\"live_client_id\":\"lv_cl_id_xxxxxxxxxxxxxxx\",\"live_secret_key\":\"lv_cl_sid_xxxxxxxxxxxxxx\"}', 'paypal.png', 1, 'test', NULL, NULL, 3),
(24, 'stripe', '{\"test_key\":\"pk_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'stripe.png', 1, 'test', NULL, NULL, 3),
(25, 'razorpay', '{\"test_key\":\"rzp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"rzs_test_xxxxxxxxxxxxx\",\"live_key\":\"rzp_live_xxxxxxxxxxxxx\",\"live_secret_key\":\"rzs_live_xxxxxxxxxxxxx\",\"theme_color\":\"#c7a600\"}', 'razorpay.png', 1, 'test', NULL, NULL, 3),
(26, 'paytm', '{\"test_merchant_id\":\"tm_id_xxxxxxxxxxxx\",\"test_merchant_key\":\"tm_key_xxxxxxxxxx\",\"live_merchant_id\":\"lv_mid_xxxxxxxxxxx\",\"live_merchant_key\":\"lv_key_xxxxxxxxxxx\",\"environment\":\"provide-a-environment\",\"merchant_website\":\"merchant-website\",\"channel\":\"provide-channel-type\",\"industry_type\":\"provide-industry-type\"}', 'paytm.png', 1, 'test', NULL, NULL, 3),
(27, 'flutterwave', '{\"test_key\":\"flwp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"flws_test_xxxxxxxxxxxxx\",\"test_encryption_key\":\"flwe_test_xxxxxxxxxxxxx\",\"public_live_key\":\"flwp_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"flws_live_xxxxxxxxxxxxxx\",\"encryption_live_key\":\"flwe_live_xxxxxxxxxxxxxx\"}', 'flutterwave.png', 1, 'test', NULL, NULL, 3),
(28, 'paystack', '{\"test_key\":\"pk_test_xxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'paystack.png', 1, 'test', NULL, NULL, 3),
(29, 'paypal', '{\"test_client_id\":\"snd_cl_id_xxxxxxxxxxxxx\",\"test_secret_key\":\"snd_cl_sid_xxxxxxxxxxxx\",\"live_client_id\":\"lv_cl_id_xxxxxxxxxxxxxxx\",\"live_secret_key\":\"lv_cl_sid_xxxxxxxxxxxxxx\"}', 'paypal.png', 1, 'test', NULL, NULL, 4),
(30, 'stripe', '{\"test_key\":\"pk_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'stripe.png', 1, 'test', NULL, NULL, 4),
(31, 'razorpay', '{\"test_key\":\"rzp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"rzs_test_xxxxxxxxxxxxx\",\"live_key\":\"rzp_live_xxxxxxxxxxxxx\",\"live_secret_key\":\"rzs_live_xxxxxxxxxxxxx\",\"theme_color\":\"#c7a600\"}', 'razorpay.png', 1, 'test', NULL, NULL, 4),
(32, 'paytm', '{\"test_merchant_id\":\"tm_id_xxxxxxxxxxxx\",\"test_merchant_key\":\"tm_key_xxxxxxxxxx\",\"live_merchant_id\":\"lv_mid_xxxxxxxxxxx\",\"live_merchant_key\":\"lv_key_xxxxxxxxxxx\",\"environment\":\"provide-a-environment\",\"merchant_website\":\"merchant-website\",\"channel\":\"provide-channel-type\",\"industry_type\":\"provide-industry-type\"}', 'paytm.png', 1, 'test', NULL, NULL, 4),
(33, 'flutterwave', '{\"test_key\":\"flwp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"flws_test_xxxxxxxxxxxxx\",\"test_encryption_key\":\"flwe_test_xxxxxxxxxxxxx\",\"public_live_key\":\"flwp_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"flws_live_xxxxxxxxxxxxxx\",\"encryption_live_key\":\"flwe_live_xxxxxxxxxxxxxx\"}', 'flutterwave.png', 1, 'test', NULL, NULL, 4),
(34, 'paystack', '{\"test_key\":\"pk_test_xxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'paystack.png', 1, 'test', NULL, NULL, 4),
(35, 'paypal', '{\"test_client_id\":\"snd_cl_id_xxxxxxxxxxxxx\",\"test_secret_key\":\"snd_cl_sid_xxxxxxxxxxxx\",\"live_client_id\":\"lv_cl_id_xxxxxxxxxxxxxxx\",\"live_secret_key\":\"lv_cl_sid_xxxxxxxxxxxxxx\"}', 'paypal.png', 1, 'test', NULL, NULL, 11),
(36, 'stripe', '{\"test_key\":\"pk_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'stripe.png', 1, 'test', NULL, NULL, 11),
(37, 'razorpay', '{\"test_key\":\"rzp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"rzs_test_xxxxxxxxxxxxx\",\"live_key\":\"rzp_live_xxxxxxxxxxxxx\",\"live_secret_key\":\"rzs_live_xxxxxxxxxxxxx\",\"theme_color\":\"#c7a600\"}', 'razorpay.png', 1, 'test', NULL, NULL, 11),
(38, 'paytm', '{\"test_merchant_id\":\"tm_id_xxxxxxxxxxxx\",\"test_merchant_key\":\"tm_key_xxxxxxxxxx\",\"live_merchant_id\":\"lv_mid_xxxxxxxxxxx\",\"live_merchant_key\":\"lv_key_xxxxxxxxxxx\",\"environment\":\"provide-a-environment\",\"merchant_website\":\"merchant-website\",\"channel\":\"provide-channel-type\",\"industry_type\":\"provide-industry-type\"}', 'paytm.png', 1, 'test', NULL, NULL, 11),
(39, 'flutterwave', '{\"test_key\":\"flwp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"flws_test_xxxxxxxxxxxxx\",\"test_encryption_key\":\"flwe_test_xxxxxxxxxxxxx\",\"public_live_key\":\"flwp_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"flws_live_xxxxxxxxxxxxxx\",\"encryption_live_key\":\"flwe_live_xxxxxxxxxxxxxx\"}', 'flutterwave.png', 1, 'test', NULL, NULL, 11),
(40, 'paystack', '{\"test_key\":\"pk_test_xxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'paystack.png', 1, 'test', NULL, NULL, 11),
(41, 'paypal', '{\"test_client_id\":\"snd_cl_id_xxxxxxxxxxxxx\",\"test_secret_key\":\"snd_cl_sid_xxxxxxxxxxxx\",\"live_client_id\":\"lv_cl_id_xxxxxxxxxxxxxxx\",\"live_secret_key\":\"lv_cl_sid_xxxxxxxxxxxxxx\"}', 'paypal.png', 1, 'test', NULL, NULL, 13),
(42, 'stripe', '{\"test_key\":\"pk_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'stripe.png', 1, 'test', NULL, NULL, 13),
(43, 'razorpay', '{\"test_key\":\"rzp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"rzs_test_xxxxxxxxxxxxx\",\"live_key\":\"rzp_live_xxxxxxxxxxxxx\",\"live_secret_key\":\"rzs_live_xxxxxxxxxxxxx\",\"theme_color\":\"#c7a600\"}', 'razorpay.png', 1, 'test', NULL, NULL, 13),
(44, 'paytm', '{\"test_merchant_id\":\"tm_id_xxxxxxxxxxxx\",\"test_merchant_key\":\"tm_key_xxxxxxxxxx\",\"live_merchant_id\":\"lv_mid_xxxxxxxxxxx\",\"live_merchant_key\":\"lv_key_xxxxxxxxxxx\",\"environment\":\"provide-a-environment\",\"merchant_website\":\"merchant-website\",\"channel\":\"provide-channel-type\",\"industry_type\":\"provide-industry-type\"}', 'paytm.png', 1, 'test', NULL, NULL, 13),
(45, 'flutterwave', '{\"test_key\":\"flwp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"flws_test_xxxxxxxxxxxxx\",\"test_encryption_key\":\"flwe_test_xxxxxxxxxxxxx\",\"public_live_key\":\"flwp_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"flws_live_xxxxxxxxxxxxxx\",\"encryption_live_key\":\"flwe_live_xxxxxxxxxxxxxx\"}', 'flutterwave.png', 1, 'test', NULL, NULL, 13),
(46, 'paystack', '{\"test_key\":\"pk_test_xxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'paystack.png', 1, 'test', NULL, NULL, 13),
(47, 'paypal', '{\"test_client_id\":\"snd_cl_id_xxxxxxxxxxxxx\",\"test_secret_key\":\"snd_cl_sid_xxxxxxxxxxxx\",\"live_client_id\":\"lv_cl_id_xxxxxxxxxxxxxxx\",\"live_secret_key\":\"lv_cl_sid_xxxxxxxxxxxxxx\"}', 'paypal.png', 1, 'test', NULL, NULL, 14),
(48, 'stripe', '{\"test_key\":\"pk_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'stripe.png', 1, 'test', NULL, NULL, 14),
(49, 'razorpay', '{\"test_key\":\"rzp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"rzs_test_xxxxxxxxxxxxx\",\"live_key\":\"rzp_live_xxxxxxxxxxxxx\",\"live_secret_key\":\"rzs_live_xxxxxxxxxxxxx\",\"theme_color\":\"#c7a600\"}', 'razorpay.png', 1, 'test', NULL, NULL, 14),
(50, 'paytm', '{\"test_merchant_id\":\"tm_id_xxxxxxxxxxxx\",\"test_merchant_key\":\"tm_key_xxxxxxxxxx\",\"live_merchant_id\":\"lv_mid_xxxxxxxxxxx\",\"live_merchant_key\":\"lv_key_xxxxxxxxxxx\",\"environment\":\"provide-a-environment\",\"merchant_website\":\"merchant-website\",\"channel\":\"provide-channel-type\",\"industry_type\":\"provide-industry-type\"}', 'paytm.png', 1, 'test', NULL, NULL, 14),
(51, 'flutterwave', '{\"test_key\":\"flwp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"flws_test_xxxxxxxxxxxxx\",\"test_encryption_key\":\"flwe_test_xxxxxxxxxxxxx\",\"public_live_key\":\"flwp_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"flws_live_xxxxxxxxxxxxxx\",\"encryption_live_key\":\"flwe_live_xxxxxxxxxxxxxx\"}', 'flutterwave.png', 1, 'test', NULL, NULL, 14),
(52, 'paystack', '{\"test_key\":\"pk_test_xxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'paystack.png', 1, 'test', NULL, NULL, 14),
(53, 'paypal', '{\"test_client_id\":\"snd_cl_id_xxxxxxxxxxxxx\",\"test_secret_key\":\"snd_cl_sid_xxxxxxxxxxxx\",\"live_client_id\":\"lv_cl_id_xxxxxxxxxxxxxxx\",\"live_secret_key\":\"lv_cl_sid_xxxxxxxxxxxxxx\"}', 'paypal.png', 1, 'test', NULL, NULL, 17),
(54, 'stripe', '{\"test_key\":\"pk_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'stripe.png', 1, 'test', NULL, NULL, 17),
(55, 'razorpay', '{\"test_key\":\"rzp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"rzs_test_xxxxxxxxxxxxx\",\"live_key\":\"rzp_live_xxxxxxxxxxxxx\",\"live_secret_key\":\"rzs_live_xxxxxxxxxxxxx\",\"theme_color\":\"#c7a600\"}', 'razorpay.png', 1, 'test', NULL, NULL, 17),
(56, 'paytm', '{\"test_merchant_id\":\"tm_id_xxxxxxxxxxxx\",\"test_merchant_key\":\"tm_key_xxxxxxxxxx\",\"live_merchant_id\":\"lv_mid_xxxxxxxxxxx\",\"live_merchant_key\":\"lv_key_xxxxxxxxxxx\",\"environment\":\"provide-a-environment\",\"merchant_website\":\"merchant-website\",\"channel\":\"provide-channel-type\",\"industry_type\":\"provide-industry-type\"}', 'paytm.png', 1, 'test', NULL, NULL, 17),
(57, 'flutterwave', '{\"test_key\":\"flwp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"flws_test_xxxxxxxxxxxxx\",\"test_encryption_key\":\"flwe_test_xxxxxxxxxxxxx\",\"public_live_key\":\"flwp_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"flws_live_xxxxxxxxxxxxxx\",\"encryption_live_key\":\"flwe_live_xxxxxxxxxxxxxx\"}', 'flutterwave.png', 1, 'test', NULL, NULL, 17),
(58, 'paystack', '{\"test_key\":\"pk_test_xxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'paystack.png', 1, 'test', NULL, NULL, 17),
(59, 'paypal', '{\"test_client_id\":\"snd_cl_id_xxxxxxxxxxxxx\",\"test_secret_key\":\"snd_cl_sid_xxxxxxxxxxxx\",\"live_client_id\":\"lv_cl_id_xxxxxxxxxxxxxxx\",\"live_secret_key\":\"lv_cl_sid_xxxxxxxxxxxxxx\"}', 'paypal.png', 1, 'test', NULL, NULL, 18),
(60, 'stripe', '{\"test_key\":\"pk_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'stripe.png', 1, 'test', NULL, NULL, 18),
(61, 'razorpay', '{\"test_key\":\"rzp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"rzs_test_xxxxxxxxxxxxx\",\"live_key\":\"rzp_live_xxxxxxxxxxxxx\",\"live_secret_key\":\"rzs_live_xxxxxxxxxxxxx\",\"theme_color\":\"#c7a600\"}', 'razorpay.png', 1, 'test', NULL, NULL, 18),
(62, 'paytm', '{\"test_merchant_id\":\"tm_id_xxxxxxxxxxxx\",\"test_merchant_key\":\"tm_key_xxxxxxxxxx\",\"live_merchant_id\":\"lv_mid_xxxxxxxxxxx\",\"live_merchant_key\":\"lv_key_xxxxxxxxxxx\",\"environment\":\"provide-a-environment\",\"merchant_website\":\"merchant-website\",\"channel\":\"provide-channel-type\",\"industry_type\":\"provide-industry-type\"}', 'paytm.png', 1, 'test', NULL, NULL, 18),
(63, 'flutterwave', '{\"test_key\":\"flwp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"flws_test_xxxxxxxxxxxxx\",\"test_encryption_key\":\"flwe_test_xxxxxxxxxxxxx\",\"public_live_key\":\"flwp_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"flws_live_xxxxxxxxxxxxxx\",\"encryption_live_key\":\"flwe_live_xxxxxxxxxxxxxx\"}', 'flutterwave.png', 1, 'test', NULL, NULL, 18),
(64, 'paystack', '{\"test_key\":\"pk_test_xxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'paystack.png', 1, 'test', NULL, NULL, 18),
(65, 'paypal', '{\"test_client_id\":\"snd_cl_id_xxxxxxxxxxxxx\",\"test_secret_key\":\"snd_cl_sid_xxxxxxxxxxxx\",\"live_client_id\":\"lv_cl_id_xxxxxxxxxxxxxxx\",\"live_secret_key\":\"lv_cl_sid_xxxxxxxxxxxxxx\"}', 'paypal.png', 1, 'test', NULL, NULL, 19),
(66, 'stripe', '{\"test_key\":\"pk_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'stripe.png', 1, 'test', NULL, NULL, 19),
(67, 'razorpay', '{\"test_key\":\"rzp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"rzs_test_xxxxxxxxxxxxx\",\"live_key\":\"rzp_live_xxxxxxxxxxxxx\",\"live_secret_key\":\"rzs_live_xxxxxxxxxxxxx\",\"theme_color\":\"#c7a600\"}', 'razorpay.png', 1, 'test', NULL, NULL, 19),
(68, 'paytm', '{\"test_merchant_id\":\"tm_id_xxxxxxxxxxxx\",\"test_merchant_key\":\"tm_key_xxxxxxxxxx\",\"live_merchant_id\":\"lv_mid_xxxxxxxxxxx\",\"live_merchant_key\":\"lv_key_xxxxxxxxxxx\",\"environment\":\"provide-a-environment\",\"merchant_website\":\"merchant-website\",\"channel\":\"provide-channel-type\",\"industry_type\":\"provide-industry-type\"}', 'paytm.png', 1, 'test', NULL, NULL, 19),
(69, 'flutterwave', '{\"test_key\":\"flwp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"flws_test_xxxxxxxxxxxxx\",\"test_encryption_key\":\"flwe_test_xxxxxxxxxxxxx\",\"public_live_key\":\"flwp_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"flws_live_xxxxxxxxxxxxxx\",\"encryption_live_key\":\"flwe_live_xxxxxxxxxxxxxx\"}', 'flutterwave.png', 1, 'test', NULL, NULL, 19),
(70, 'paystack', '{\"test_key\":\"pk_test_xxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'paystack.png', 1, 'test', NULL, NULL, 19),
(71, 'paypal', '{\"test_client_id\":\"snd_cl_id_xxxxxxxxxxxxx\",\"test_secret_key\":\"snd_cl_sid_xxxxxxxxxxxx\",\"live_client_id\":\"lv_cl_id_xxxxxxxxxxxxxxx\",\"live_secret_key\":\"lv_cl_sid_xxxxxxxxxxxxxx\"}', 'paypal.png', 1, 'test', NULL, NULL, 20),
(72, 'stripe', '{\"test_key\":\"pk_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'stripe.png', 1, 'test', NULL, NULL, 20),
(73, 'razorpay', '{\"test_key\":\"rzp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"rzs_test_xxxxxxxxxxxxx\",\"live_key\":\"rzp_live_xxxxxxxxxxxxx\",\"live_secret_key\":\"rzs_live_xxxxxxxxxxxxx\",\"theme_color\":\"#c7a600\"}', 'razorpay.png', 1, 'test', NULL, NULL, 20),
(74, 'paytm', '{\"test_merchant_id\":\"tm_id_xxxxxxxxxxxx\",\"test_merchant_key\":\"tm_key_xxxxxxxxxx\",\"live_merchant_id\":\"lv_mid_xxxxxxxxxxx\",\"live_merchant_key\":\"lv_key_xxxxxxxxxxx\",\"environment\":\"provide-a-environment\",\"merchant_website\":\"merchant-website\",\"channel\":\"provide-channel-type\",\"industry_type\":\"provide-industry-type\"}', 'paytm.png', 1, 'test', NULL, NULL, 20),
(75, 'flutterwave', '{\"test_key\":\"flwp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"flws_test_xxxxxxxxxxxxx\",\"test_encryption_key\":\"flwe_test_xxxxxxxxxxxxx\",\"public_live_key\":\"flwp_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"flws_live_xxxxxxxxxxxxxx\",\"encryption_live_key\":\"flwe_live_xxxxxxxxxxxxxx\"}', 'flutterwave.png', 1, 'test', NULL, NULL, 20),
(76, 'paystack', '{\"test_key\":\"pk_test_xxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'paystack.png', 1, 'test', NULL, NULL, 20);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', '2022-05-17 07:14:27', '2022-05-17 07:14:27'),
(2, 'admin', '2022-05-17 07:14:27', '2022-05-17 07:14:27'),
(3, 'teacher', '2022-05-17 07:15:14', '2022-05-17 07:14:27'),
(4, 'accountant', '2022-05-17 07:15:14', '2022-05-17 07:14:27'),
(5, 'librarian', '2022-05-17 07:15:14', '2022-05-17 07:14:27'),
(6, 'parent', '2022-05-17 07:15:14', '2022-05-17 07:14:27'),
(7, 'student', '2022-05-17 07:15:14', '2022-05-17 07:14:27'),
(8, 'user', '2023-05-24 06:06:50', '2023-05-24 06:06:50'),
(9, 'alumni', '2023-06-01 11:38:30', '2023-06-01 11:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `routines`
--

CREATE TABLE `routines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `starting_hour` int(11) NOT NULL,
  `ending_hour` int(11) NOT NULL,
  `starting_minute` int(11) NOT NULL,
  `ending_minute` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routines`
--

INSERT INTO `routines` (`id`, `class_id`, `section_id`, `subject_id`, `starting_hour`, `ending_hour`, `starting_minute`, `ending_minute`, `day`, `teacher_id`, `room_id`, `school_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 10, 10, 0, 45, 'saturday', 3, 1, 1, 2, '2024-11-12 06:23:46', '2024-11-12 06:23:46'),
(2, 8, 15, 2, 8, 9, 0, 0, 'sunday', 8, 2, 3, 4, '2025-02-10 15:03:44', '2025-02-10 15:03:44'),
(4, 8, 15, 4, 9, 10, 0, 0, 'monday', 14, 2, 3, 4, '2025-04-12 19:03:26', '2025-04-12 19:03:26'),
(5, 8, 15, 4, 8, 9, 0, 0, 'tuesday', 15, 2, 3, 4, '2025-04-12 19:04:24', '2025-04-12 19:04:24'),
(6, 8, 15, 2, 9, 10, 0, 0, 'wednesday', 8, 2, 3, 4, '2025-04-12 19:04:56', '2025-04-12 19:04:56'),
(7, 8, 15, 5, 8, 9, 0, 0, 'thursday', 15, 2, 3, 4, '2025-04-12 19:05:29', '2025-04-12 19:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `school_info` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `running_session` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_currency` varchar(255) DEFAULT NULL,
  `currency_position` varchar(255) DEFAULT NULL,
  `school_logo` varchar(255) DEFAULT NULL,
  `email_title` varchar(255) DEFAULT NULL,
  `email_details` varchar(255) DEFAULT NULL,
  `warning_text` varchar(255) DEFAULT NULL,
  `socialLink1` varchar(255) DEFAULT NULL,
  `socialLink2` varchar(255) DEFAULT NULL,
  `socialLink3` varchar(255) DEFAULT NULL,
  `email_logo` varchar(255) DEFAULT NULL,
  `socialLogo1` varchar(255) DEFAULT NULL,
  `socialLogo2` varchar(255) DEFAULT NULL,
  `socialLogo3` varchar(255) DEFAULT NULL,
  `off_pay_ins_text` varchar(255) DEFAULT NULL,
  `off_pay_ins_file` varchar(255) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `title`, `email`, `phone`, `address`, `school_info`, `status`, `running_session`, `created_at`, `updated_at`, `school_currency`, `currency_position`, `school_logo`, `email_title`, `email_details`, `warning_text`, `socialLink1`, `socialLink2`, `socialLink3`, `email_logo`, `socialLogo1`, `socialLogo2`, `socialLogo3`, `off_pay_ins_text`, `off_pay_ins_file`, `category`) VALUES
(1, 'Oxford International School', 'school1@gmail.com', '01926000714', 'House # 34, Road # 27 (old), New 16, Dhanmondi R/A, Dhaka 1209', 'Welcome to Oxford International School, established in 1987. As a leading English medium institution registered with Cambridge International Examinations, we excel in IGCSE O and A Level exams.', 1, 2, '2024-02-18 08:40:17', '2025-04-12 12:10:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'TinyTots School', 'tinytots1@gmail.com', '01684764821', 'Iqbal Road, Dhaka 1207', 'Tiny Tots School, founded in 1974 by Mrs. Faizi Chowdhury and Swedish educationist Margot Enander, nurtures children with a blend of Western and traditional culture, shaping them into global citizens.', 1, 3, '2025-01-05 16:47:16', '2025-02-03 16:53:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Maple Leaf International School', 'info@mlis.edu.bd', '01810199271', 'House No. 95/1, Road No. 11/A, Dhanmondi', 'Maple Leaf International School, founded in 1972, is a leading English Medium School in Dhaka, Bangladesh offering a comprehensive education from Kindergarten to A-Levels.', 1, 4, '2025-02-03 16:23:17', '2025-02-10 13:13:37', NULL, NULL, '0ujpWN8y.jpeg', 'mlis.edu.bd', 'info@mlis.edu.bd', NULL, NULL, NULL, NULL, 'MGg4DkRP.jpeg', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Green Gems International School', 'voliri1969@dmener.com', '01833330201', 'House 33/A Road No. 9A, Dhaka 1205', 'Green Gems International School is an English language middle school located in Dhanmondi, Dhaka, Bangladesh. It follows the overseas syllabus of the University of London, allowing its students to sit for GCSE, O Level and A Level examinations', 1, 5, '2025-03-20 07:44:14', '2025-04-12 12:12:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Daffodil International School', 'abc123@gmail.com', '029143026', 'House#11 Rd Number 14, Dhaka 1209', 'Daffodil International School (DIS), founded in 2009 by Dr. Sabur Khan, focuses on the motto: ‘Value, Culture and Innovation.’ It combines respect for Bangladeshi traditions with advancements in science and technology.', 1, 6, '2025-03-21 11:43:47', '2025-04-12 12:14:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Scholastica', 'de@mail.com', '0258815222', 'House No., 78 Rd No. 8A, Dhaka 1209', 'Scholastica was established in 1977 by Mrs. Yasmeen Murshed. It was founded with a mission to provide a balanced and well-rounded education for all of our students, using English as the primary medium of instruction but placing equal emphasis on Bangla.', 1, 8, '2025-03-21 12:49:45', '2025-04-12 12:16:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Junior Laboratory High School', 'asd@mail.com', '01764538009', 'House No: 38, Road No: 10/A, Dhaka 1209', 'Junior Laboratory High School was established in 1984 in Dhaka, Bangladesh. The school is located in the heart of Dhaka city in the Dhanmondi area. It teaches students from nursery to SSC level in Bangla medium and up to O level in English medium.', 1, 9, '2025-03-21 12:56:26', '2025-04-12 12:17:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Dhanmondi Tutorial', 'asd@gmail.com', '029665811', 'House No. 14, Road No. 8, Dhanmondi R/A, Dhaka, 1205', 'Dhanmondi Tutorial is a private English-medium school in Dhanmondi, Dhaka, founded in 1972. As of 2016, it serves around 1500 students from kindergarten to A Levels, with separate campuses for junior and senior sections.', 1, 10, '2025-03-30 08:15:02', '2025-04-12 12:31:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Loreeto School', 'tg@somthing.com', '0241020571', 'House 21 Road No. 9A, Dhaka 1209', 'To upgrade the education system in Bangladesh and give students the opportunity to enhance their knowledge, leading them towards a better future', 1, 11, '2025-03-30 08:21:07', '2025-04-12 12:32:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Wisdom International School', 'info@wisdomschoolbd.com', '01793267689', 'House- 40, Rd No. 14/A, Satmasjid Road, Dhaka 1209', 'Wisdom International School is a standard English medium school based on Islamic core values (Faith, Honesty, Integrity, Tolerance, Dedication, Discipline, Respect) along with English, Math, Science, etc.', 1, 17, '2025-04-12 12:42:34', '2025-04-12 12:50:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'English Medium'),
(20, 'Mastermind School', 'adminuttara@mastermindschool.org', '0255026528', 'House No, 05 Rd No 12, Dhaka 1209', 'Mastermind School is a British-curriculum private school in Bangladesh established in 1997. It offers English-medium education to students from Play Group age to grade 12.', 1, 19, '2025-04-13 05:43:30', '2025-04-13 05:45:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'English Version');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `class_id`, `created_at`, `updated_at`) VALUES
(1, 'A', 1, '2024-11-05 13:37:41', '2024-11-05 18:44:59'),
(2, 'A', 2, '2024-11-05 13:37:51', '2024-11-05 13:41:03'),
(3, 'A', 3, '2024-11-05 13:38:04', '2024-11-05 13:41:14'),
(4, 'A', 4, '2024-11-05 13:38:15', '2024-11-05 13:41:27'),
(5, 'A', 5, '2024-11-05 13:38:22', '2024-11-05 13:41:41'),
(6, 'B', 1, '2024-11-05 13:40:43', '2024-11-05 18:44:59'),
(7, 'B', 2, '2024-11-05 13:41:03', '2024-11-05 13:41:03'),
(8, 'B', 3, '2024-11-05 13:41:14', '2024-11-05 13:41:14'),
(9, 'B', 4, '2024-11-05 13:41:27', '2024-11-05 13:41:27'),
(10, 'B', 5, '2024-11-05 13:41:41', '2024-11-05 13:41:41'),
(11, 'A', 6, '2024-11-25 09:20:33', '2024-11-25 09:21:20'),
(12, 'B', 6, '2024-11-25 09:21:20', '2024-11-25 09:21:20'),
(13, 'C', 6, '2024-11-25 09:21:20', '2024-11-25 09:21:20'),
(14, 'A', 7, '2024-11-25 09:26:24', '2024-11-25 09:26:24'),
(15, 'A', 8, '2025-02-10 13:54:57', '2025-02-10 14:03:57'),
(16, 'A', 9, '2025-02-10 13:55:29', '2025-02-10 14:04:15'),
(17, 'B', 8, '2025-02-10 14:03:57', '2025-02-10 14:03:57'),
(18, 'B', 9, '2025-02-10 14:04:15', '2025-02-10 14:04:15'),
(19, 'A', 10, '2025-02-10 14:04:25', '2025-02-10 14:04:34'),
(20, 'B', 10, '2025-02-10 14:04:34', '2025-02-10 14:04:34'),
(21, 'A', 11, '2025-02-10 14:04:41', '2025-02-10 14:04:53'),
(22, 'B', 11, '2025-02-10 14:04:53', '2025-02-10 14:04:53'),
(23, 'A', 12, '2025-02-10 17:32:03', '2025-02-10 17:32:13'),
(24, 'B', 12, '2025-02-10 17:32:13', '2025-02-10 17:32:13'),
(25, 'A', 13, '2025-02-10 17:32:22', '2025-02-10 17:32:33'),
(26, 'B', 13, '2025-02-10 17:32:33', '2025-02-10 17:32:33'),
(27, 'A', 14, '2025-02-10 17:33:32', '2025-02-10 17:33:46'),
(28, 'B', 14, '2025-02-10 17:33:46', '2025-02-10 17:33:46'),
(29, 'A', 15, '2025-02-10 17:34:03', '2025-02-10 17:34:14'),
(30, 'B', 15, '2025-02-10 17:34:14', '2025-02-10 17:34:14'),
(31, 'A', 16, '2025-02-10 17:34:24', '2025-02-10 17:34:36'),
(32, 'B', 16, '2025-02-10 17:34:36', '2025-02-10 17:34:36'),
(33, 'A', 17, '2025-04-13 03:51:03', '2025-04-13 03:51:14'),
(34, 'B', 17, '2025-04-13 03:51:14', '2025-04-13 03:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_title` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `session_title`, `status`, `school_id`, `created_at`, `updated_at`) VALUES
(1, '2024', 1, NULL, NULL, NULL),
(2, '2024', 1, 1, '2024-02-18 08:40:17', '2024-02-18 18:17:55'),
(3, '2025', 1, 2, '2025-01-05 16:47:16', '2025-01-05 16:47:16'),
(4, '2025', 1, 3, '2025-02-03 16:23:17', '2025-02-03 16:23:17'),
(5, '2025', 1, 4, '2025-03-20 07:44:14', '2025-03-20 07:44:14'),
(6, '2025', 1, 5, '2025-03-21 11:43:47', '2025-03-21 11:43:47'),
(7, '2025', 1, 6, '2025-03-21 11:55:20', '2025-03-21 11:55:20'),
(8, '2025', 1, 7, '2025-03-21 12:49:45', '2025-03-21 12:49:45'),
(9, '2025', 1, 8, '2025-03-21 12:56:26', '2025-03-21 12:56:26'),
(10, '2025', 1, 9, '2025-03-30 08:15:02', '2025-03-30 08:15:02'),
(11, '2025', 1, 10, '2025-03-30 08:21:07', '2025-03-30 08:21:07'),
(12, '2025', 1, 11, '2025-03-30 08:27:35', '2025-03-30 08:27:35'),
(13, '2025', 1, 12, '2025-03-30 09:14:02', '2025-03-30 09:14:02'),
(14, '2025', 1, 13, '2025-03-30 09:15:58', '2025-03-30 09:15:58'),
(15, '2025', 1, 14, '2025-03-30 09:30:34', '2025-03-30 09:30:34'),
(16, '2025', 1, 17, '2025-03-30 10:21:17', '2025-03-30 10:21:17'),
(17, '2025', 1, 18, '2025-04-12 12:42:34', '2025-04-12 12:42:34'),
(18, '2025', 1, 19, '2025-04-12 19:46:13', '2025-04-12 19:46:13'),
(19, '2025', 1, 20, '2025-04-13 05:43:31', '2025-04-13 05:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `student_fee_managers`
--

CREATE TABLE `student_fee_managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `paid_amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `document_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_fee_managers`
--

INSERT INTO `student_fee_managers` (`id`, `title`, `total_amount`, `class_id`, `student_id`, `parent_id`, `payment_method`, `paid_amount`, `status`, `school_id`, `session_id`, `timestamp`, `created_at`, `updated_at`, `document_image`) VALUES
(1, 'Fees', 1000, 8, 11, 12, 'cash', 1000, 'paid', 3, 4, 1739124000, '2025-02-10 16:55:07', '2025-02-10 16:55:07', NULL),
(2, 'Monthly Fees', 8000, 9, 13, 17, 'cash', 8000, 'paid', 3, 4, 1739815200, '2025-02-18 10:21:53', '2025-02-18 10:21:53', NULL),
(3, 'Monthly Fees', 1000, 9, 13, 17, 'cash', 1000, 'paid', 3, 4, 1741629600, '2025-03-10 18:52:35', '2025-03-10 18:52:35', NULL),
(4, 'Monthly Fees', 1000, 8, 11, 12, 'cash', 1000, 'paid', 3, 4, 1744480800, '2025-04-12 18:55:31', '2025-04-12 18:55:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `class_id`, `school_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'Bangla', 1, 1, 2, '2024-11-12 06:21:30', '2024-11-12 06:21:30'),
(2, 'English', 8, 3, 4, '2025-02-10 14:57:32', '2025-02-10 14:57:32'),
(3, 'Mathematics', 8, 3, 4, '2025-02-10 14:57:47', '2025-02-10 14:57:47'),
(4, 'Drawing', 8, 3, 4, '2025-02-10 14:58:03', '2025-02-10 14:58:03'),
(5, 'Music', 8, 3, 4, '2025-02-10 14:58:15', '2025-02-10 14:58:15'),
(6, 'English', 9, 3, 4, '2025-02-10 14:58:52', '2025-02-10 14:58:52'),
(7, 'Mathematics', 9, 3, 4, '2025-02-10 14:59:07', '2025-02-10 14:59:07'),
(8, 'Drawing', 9, 3, 4, '2025-02-10 14:59:20', '2025-02-10 14:59:20'),
(9, 'Singing', 9, 3, 4, '2025-02-10 14:59:34', '2025-02-10 14:59:34'),
(10, 'English', 10, 3, 4, '2025-02-10 14:59:56', '2025-02-10 14:59:56'),
(11, 'Mathematics', 10, 3, 4, '2025-02-10 15:00:07', '2025-02-10 15:00:07'),
(12, 'Bengali', 10, 3, 4, '2025-02-10 15:00:24', '2025-02-10 15:00:24'),
(13, 'Literature', 10, 3, 4, '2025-02-10 15:00:51', '2025-02-10 15:00:51'),
(14, 'English', 11, 3, 4, '2025-02-10 15:01:28', '2025-02-10 15:01:28'),
(15, 'Mathematics', 11, 3, 4, '2025-02-10 15:02:31', '2025-02-10 15:02:31'),
(16, 'Bengali', 11, 3, 4, '2025-02-10 15:02:48', '2025-02-10 15:02:48'),
(17, 'Literature', 11, 3, 4, '2025-02-10 15:02:58', '2025-02-10 15:02:58'),
(18, 'History', 12, 3, 4, '2025-02-10 17:35:13', '2025-02-10 17:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `paid_amount` double(8,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `transaction_keys` longtext NOT NULL,
  `expire_date` int(11) NOT NULL,
  `studentLimit` varchar(255) DEFAULT NULL,
  `date_added` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `package_id`, `school_id`, `paid_amount`, `payment_method`, `transaction_keys`, `expire_date`, `studentLimit`, `date_added`, `active`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 18499.00, 'Offline', '{\"document_file\":\"12. Login Audits.png\"}', 1839815988, '500', 1708279200, 1, 1, '2024-02-18 18:13:08', '2024-02-18 18:13:08'),
(2, 4, 2, 75000.00, 'Offline', '{\"document_file\":\"image_1bb7wol.png\"}', 0, '1000', 1736013600, 1, 1, '2025-01-05 16:50:13', '2025-01-05 16:50:13'),
(3, 3, 3, 20999.00, 'Offline', '{\"document_file\":\"images.jpeg\"}', 1770136027, '500', 1738519200, 1, 1, '2025-02-03 16:27:07', '2025-02-03 16:27:07'),
(4, 2, 18, 10999.00, 'Offline', '{\"document_file\":\"White Color Modern Invoice A4 Document.png\"}', 1775998230, '250', 1744394400, 1, 1, '2025-04-12 12:50:30', '2025-04-12 12:50:30'),
(6, 2, 20, 10999.00, 'Offline', '{\"document_file\":\"Mastermind Invoice.png\"}', 1776059132, '250', 1744480800, 1, 1, '2025-04-13 05:45:32', '2025-04-13 05:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `syllabuses`
--

CREATE TABLE `syllabuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `syllabuses`
--

INSERT INTO `syllabuses` (`id`, `title`, `class_id`, `section_id`, `subject_id`, `file`, `school_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'English', 8, 15, 2, 'images (2).jpg', 3, 4, '2025-02-10 17:31:15', '2025-02-10 17:31:15'),
(4, 'Mathematics', 8, 15, 3, 'localhost-127-0-0-1-school_system-phpMyAdmin-5-2-1.png', 3, 4, '2025-04-12 19:01:13', '2025-04-12 19:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_permissions`
--

CREATE TABLE `teacher_permissions` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `attendance` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_permissions`
--

INSERT INTO `teacher_permissions` (`id`, `class_id`, `section_id`, `school_id`, `teacher_id`, `marks`, `attendance`, `updated_at`) VALUES
(1, 1, 1, 1, 3, 1, 1, NULL),
(2, 8, 15, 3, 8, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `user_information` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_confirm` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role_id`, `parent_id`, `school_id`, `password`, `code`, `user_information`, `status`, `department_id`, `designation`, `language`, `remember_token`, `created_at`, `updated_at`, `is_confirm`) VALUES
(2, 'Parvin Akter Bristi', 'bristi.edu.bd@gmail.com', NULL, 2, NULL, 1, '$2y$10$JObOPOmBOfEJ7RKx43e2r.5sR6g4/qgeeJr9NLeDODvaLg4fTj6/y', NULL, '{\"birthday\":869594400,\"gender\":\"Female\",\"phone\":\"01517054018\",\"address\":\"Karnosuti, KamarKhand, Sirajganj\",\"photo\":\"1708245617.jpg\"}', 1, NULL, 'Principal', NULL, NULL, '2024-02-18 08:40:17', '2025-01-31 19:47:13', 1),
(3, 'Jahida Khatun', 'jahidakhatun@gmail.com', NULL, 3, NULL, 1, '$2y$10$LoCMlA4O/sVQnfgwB8Zk9O7UOCuJ8t5LX4YCPjVZSbBlbledAcVeO', NULL, '{\"gender\":\"Female\",\"blood_group\":\"a+\",\"birthday\":662666400,\"phone\":\"01759724410\",\"address\":\"Sukrabad, Dhaka\",\"photo\":\"\"}', 1, 1, 'Junior Software Engineer', NULL, NULL, '2024-11-12 06:18:55', '2024-11-12 06:19:14', 1),
(4, 'Tanem Rahman', 'tahmedur@gmail.com', NULL, 7, 5, 1, '$2y$10$ABgqLEfKkuPbVQMZ01mpDu/YJorDd3TSIxBtxdlrmMCeAB0oBZy8S', '2024-3120-9857', '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":1230746400,\"phone\":\"01759724410\",\"address\":\"Sukrabad, Dhaka\",\"photo\":\"\"}', 1, NULL, NULL, NULL, NULL, '2024-11-19 11:57:17', '2024-11-19 12:00:06', 1),
(5, 'Tanem Rahman', 'tanemrah1998@gmail.com', NULL, 6, NULL, 1, '$2y$10$lYa7e6F3AZaKcawznrlm/Ompax3/r5IwI0Sn60z60UzX4E5opNJDi', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":1731952800,\"phone\":\"01759724410\",\"address\":\"Sukrabad, Dhaka\",\"photo\":\"\"}', 1, NULL, NULL, NULL, NULL, '2024-11-19 12:00:06', '2024-11-19 12:00:06', 1),
(6, 'Tiny Tots', 'tinytots@gmail.com', NULL, 2, NULL, 2, '$2y$10$Jlsff3VnZQYMmeYYMBt/7e2FGb5bp8vDKlquy73kN0wl6.D3WPg16', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":\"\",\"phone\":\"016573767734\",\"address\":\"Dhaka, Bangladesh\",\"photo\":\"\"}', 1, NULL, NULL, NULL, NULL, '2025-01-05 16:47:16', '2025-01-05 16:47:16', 1),
(7, 'Zeba Ali', 'zebaali123@gmail.com', NULL, 2, NULL, 3, '$2y$10$uGfgRdkgkhN2DNLq16KoHO5tied37UnDi.akpnYd0.53tWHTWhGwW', NULL, '{\"birthday\":53114400,\"gender\":\"Female\",\"phone\":\"01918863005\",\"address\":\"zebaali123@gmail.com\",\"photo\":\"i1KXed9mjY.png\"}', 1, NULL, 'Principal', NULL, NULL, '2025-02-03 16:23:18', '2025-02-10 13:35:48', 1),
(8, 'Sifat Rahman', 'sifatrahman123@gmail.com', NULL, 3, NULL, 3, '$2y$10$lDs4.20lBv2zxdmy1e0yAuYVFdpOUnvrngax08BFW6DgzdWtzuNmK', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":790970400,\"phone\":\"01869517098\",\"address\":\"Jigatola Dhanmondi Dhaka\",\"photo\":\"1739193964.jpg\"}', 1, 2, 'Teacher', NULL, NULL, '2025-02-10 13:26:04', '2025-02-10 13:36:38', 1),
(9, 'Akib Hossain', 'akibhossain123@gmail.com', NULL, 4, NULL, 3, '$2y$10$fQz1efwhXaaKxIvuwb63/unbyP35aCn63D0Hu/Tg6ob/lTzt.TK/a', NULL, '{\"gender\":\"Male\",\"blood_group\":\"o+\",\"birthday\":884109600,\"phone\":\"01918863005\",\"address\":\"Rayer Bazar Dhanmondi Dhaka\",\"photo\":\"1739194439.jpg\"}', 1, NULL, NULL, NULL, NULL, '2025-02-10 13:33:59', '2025-02-10 13:33:59', 1),
(10, 'Azaan Khan', 'azaankhan123@gmail.com', NULL, 5, NULL, 3, '$2y$10$PR.ixNtdeu3zm9qwZxKSPevf.G7bbI/otATjUWUhSkg/PL515U/um', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":681415200,\"phone\":\"01534904356\",\"address\":\"Hazaribagh Dhanmondi Dhaka\",\"photo\":\"1739194856.jpg\"}', 1, NULL, NULL, NULL, NULL, '2025-02-10 13:40:56', '2025-02-10 13:42:05', 1),
(11, 'Nyzan Mollah', 'nyzanmollah123@gmail.com', NULL, 7, 12, 3, '$2y$10$HQ6QBVUoopLvVhwU9peWge9CC5s7Gm3GPz4vJ5xLsCnabBvfnEhXG', '2025-7485-0316', '{\"gender\":\"Male\",\"blood_group\":\"o+\",\"birthday\":1607623200,\"phone\":\"01869517098\",\"address\":\"House 142 Road 10\\/A Dhanmondi Dhaka\",\"photo\":\"1739200130.jpg\"}', 1, NULL, NULL, NULL, NULL, '2025-02-10 15:08:50', '2025-02-10 15:12:20', 1),
(12, 'Nafisa Ahmed', 'nafisaahmed123@gmail.com', NULL, 6, NULL, 3, '$2y$10$aMW0d.cUAZmlgOOl.v0odO.yZ7Y.vvbPLt6IRG8WQRK/4dGRNY3Xe', NULL, '{\"gender\":\"Male\",\"blood_group\":\"o+\",\"birthday\":855165600,\"phone\":\"01869517098\",\"address\":\"House 142 Road 10\\/A Dhanmondi Dhaka\",\"photo\":\"1739200340.png\"}', 1, NULL, NULL, NULL, NULL, '2025-02-10 15:12:20', '2025-02-10 15:12:20', 1),
(13, 'Faiza Rahman', 'faizarahman123@gmail.com', NULL, 7, 17, 3, '$2y$10$ym/dK22FQpPIPfmop5miuuxdTA6NbcW79rGjm0KwCT5ryztO.S1/K', '2025-8756-3902', '{\"gender\":\"Female\",\"blood_group\":\"b+\",\"birthday\":1528740000,\"phone\":\"01714221268\",\"address\":\"House 52 Road 9\\/A Dhanmondi Dhaka\",\"photo\":\"1739205687.jpg\"}', 1, NULL, NULL, NULL, NULL, '2025-02-10 16:41:27', '2025-02-10 17:42:45', 1),
(14, 'Taifur Rahaman', 'taifurrahaman123@gmail.com', NULL, 3, NULL, 3, '$2y$10$tGykN9U8oHyDEss3hGq7hOfNHEYkL4AiUdiQ9zSG.jMHfjlX5dVS.', NULL, '{\"gender\":\"Male\",\"blood_group\":\"b+\",\"birthday\":784404000,\"phone\":\"01534991123\",\"address\":\"Hazaribagh Dhanmondi Dhaka\",\"photo\":\"1739207744.jpg\"}', 1, 3, 'Teacher', NULL, NULL, '2025-02-10 17:15:44', '2025-02-10 17:15:44', 1),
(15, 'Imrul Hassan', 'imrulhassan123@gmail.com', NULL, 3, NULL, 3, '$2y$10$UM/6jESsbWEsAN0GNmESOu/G9YvC4jzt4agtB6/eA27DYdNDNlUM.', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":650052000,\"phone\":\"01911533354\",\"address\":\"Lalmatia Dhaka\",\"photo\":\"1739208013.jpg\"}', 1, 4, 'Teacher', NULL, NULL, '2025-02-10 17:20:13', '2025-02-10 17:20:13', 1),
(16, 'Areeb Ahmed', 'areebahmed123@gmail.com', NULL, 7, 18, 3, '$2y$10$cNSK52YjTZyhzg.aX1Mw2.M/trKYJuBhczRP7ifBxc4gG3HTBjCbi', '2025-6805-4932', '{\"gender\":\"Male\",\"blood_group\":\"ab+\",\"birthday\":1557856800,\"phone\":\"01711533354\",\"address\":\"House 257 Road 12\\/A Dhanmondi Dhaka\",\"photo\":\"1739208291.jpg\"}', 1, NULL, NULL, NULL, NULL, '2025-02-10 17:24:51', '2025-02-10 17:45:37', 1),
(17, 'Afroza Khatun', 'afrozakhatun123@gmail.com', NULL, 6, NULL, 3, '$2y$10$eClHdbFFDyn9Cgy/pd5wx.l.72UO.OJFzZ9NAuAJtOg7lYFAWHLve', NULL, '{\"gender\":\"Female\",\"blood_group\":\"b+\",\"birthday\":925840800,\"phone\":\"01714221268\",\"address\":\"House 52 Road 9\\/A Dhanmondi Dhaka\",\"photo\":\"1739209365.jpg\"}', 1, NULL, NULL, NULL, NULL, '2025-02-10 17:42:45', '2025-02-10 17:42:45', 1),
(18, 'Kazi Afreen', 'kaziafreen123@gmail.com', NULL, 6, NULL, 3, '$2y$10$jnIJhorudQj85P.0Wp0L1.NqHhM9sxRpSSy7qJwZ08DXtHsnhvWpC', NULL, '{\"gender\":\"Male\",\"blood_group\":\"ab+\",\"birthday\":905364000,\"phone\":\"01711533354\",\"address\":\"House 257 Road 12\\/A Dhanmondi Dhaka\",\"photo\":\"1739209537.jpg\"}', 1, NULL, NULL, NULL, NULL, '2025-02-10 17:45:37', '2025-02-10 17:45:37', 1),
(19, 'Imran Khan', 'imrankhan123@gmail.com', NULL, 2, NULL, 3, '$2y$10$YOxfE9EyywDK12Q3RMyHDuZlv9jMtI.mHoz0JPmaaTVxTvf/IZM2C', NULL, '{\"gender\":\"Male\",\"blood_group\":\"o+\",\"birthday\":661197600,\"phone\":\"01733361416\",\"address\":\"Road 5\\/A Dhanmondi Dhaka\",\"photo\":\"1739264003.jpg\"}', 1, NULL, NULL, NULL, NULL, '2025-02-11 08:53:23', '2025-02-11 08:53:23', 1),
(20, 'Rahad', 'voliri1969@dmener.com', NULL, 2, NULL, 4, '$2y$10$ScnnyqQJ1qwWB8KQNV/9s.rQabbwzFOR0ff0LVDurABJPut2l4Xo2', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":\"\",\"phone\":\"01714221268\",\"address\":\"Dhanmondi\",\"photo\":\"1742456654.jpg\"}', 1, NULL, NULL, NULL, NULL, '2025-03-20 07:44:15', '2025-03-20 07:44:15', 1),
(21, 'Suktana Begum', 'gohav95258@boyaga.com', NULL, 2, NULL, 5, '$2y$10$ZWTctF59tRhmJfJtaSK5ROlCMyOcZJKwhGl0KDJqcI8BgfbRQOfXC', NULL, '{\"gender\":\"Female\",\"blood_group\":\"a+\",\"birthday\":\"\",\"phone\":\"01534982412\",\"address\":\"Dhanmondi\",\"photo\":\"1742557427.jpg\"}', 1, NULL, NULL, NULL, NULL, '2025-03-21 11:43:47', '2025-03-21 11:43:47', 1),
(29, 'Asif Ahmed Rafi', 'rafiahmed221@gmail.com', NULL, 1, NULL, 13, '$2y$10$pawMOmOw5PWncLE1L0iJQO2TLZ2cTpyP4h0P1uMbaGWPJycHzEKXq', NULL, '{\"birthday\":false,\"gender\":\"Male\",\"phone\":\"01534982412\",\"address\":\"Dhanmondi Dhaka\",\"photo\":\"oX3MSEFHvw.png\"}', 1, NULL, NULL, NULL, NULL, '2025-03-30 09:15:58', '2025-04-02 18:51:54', 1),
(30, 'abc', 'lexebo9151@flektel.com', NULL, 2, NULL, 14, '$2y$10$470b1gj6dbN4yU5Vkjl8jO4AIk.pLvYqBtzOqvoKW5mH/wOUF3QvK', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":\"\",\"phone\":\"acd\",\"address\":\"avd\",\"photo\":\"\"}', 1, NULL, NULL, NULL, NULL, '2025-03-30 09:30:34', '2025-03-30 09:30:54', 1),
(31, 'kkk', 'pafiwik139@infornma.com', NULL, 2, NULL, 17, '$2y$10$pawMOmOw5PWncLE1L0iJQO2TLZ2cTpyP4h0P1uMbaGWPJycHzEKXq', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":\"\",\"phone\":\"1234\",\"address\":\"kkk\",\"photo\":\"\"}', 1, NULL, NULL, NULL, NULL, '2025-03-30 10:21:17', '2025-03-30 10:21:31', 1),
(32, 'Reza Ahmed', 'yeheg92200@dpcos.com', NULL, 2, NULL, 18, '$2y$10$KTNv/OPR0vYDFW00MPHJ/./WHfiiud9L/N8fTgK5U.Gow0/yygp5.', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":\"\",\"phone\":\"01714221268\",\"address\":\"Dhanmondi Dhaka\",\"photo\":\"1744461754.jpg\"}', 1, NULL, NULL, NULL, NULL, '2025-04-12 12:42:34', '2025-04-12 12:42:53', 1),
(35, 'Sohel Rana', 'xatito9575@insfou.com', NULL, 2, NULL, 20, '$2y$10$Cywnj32Ee53gAK0NJwIaKeh/4Mrf/eXFcB65sEPJCyFmcypcoa5Su', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":\"\",\"phone\":\"01714221268\",\"address\":\"Dhanmondi\",\"photo\":\"\"}', 1, NULL, NULL, NULL, NULL, '2025-04-13 05:43:31', '2025-04-13 05:43:58', 1),
(36, 'Fardin Hossain', 'fardinhossain678@gmail.com', NULL, 3, NULL, 20, '$2y$10$rxnPZNGvztkWeh9bti4JuecB6k.LDdyRcjrlHsnbS6y78sWKLAFAy', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":663271200,\"phone\":\"01918863005\",\"address\":\"Dhanmondi\",\"photo\":\"1744523309.jpg\"}', 1, 10, 'Teacher', NULL, NULL, '2025-04-13 05:48:29', '2025-04-13 05:48:29', 0),
(37, 'Navid Islam', 'navidislam345@gmail.com', NULL, 4, NULL, 20, '$2y$10$fEkERyK/jknBIjAUSCEI2utBzkxT6Cn7U5gQF7z6GC/cx4WTSGwA.', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":789069600,\"phone\":\"01918863005\",\"address\":\"Dhanmondi\",\"photo\":\"1744523448.jpg\"}', 1, NULL, NULL, NULL, NULL, '2025-04-13 05:50:48', '2025-04-13 05:50:48', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_rooms`
--
ALTER TABLE `class_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_attendances`
--
ALTER TABLE `daily_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_categories`
--
ALTER TABLE `exam_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_events`
--
ALTER TABLE `frontend_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_features`
--
ALTER TABLE `frontend_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gradebooks`
--
ALTER TABLE `gradebooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fee_managers`
--
ALTER TABLE `student_fee_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabuses`
--
ALTER TABLE `syllabuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_permissions`
--
ALTER TABLE `teacher_permissions`
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
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `class_rooms`
--
ALTER TABLE `class_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `daily_attendances`
--
ALTER TABLE `daily_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_categories`
--
ALTER TABLE `exam_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `frontend_events`
--
ALTER TABLE `frontend_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `frontend_features`
--
ALTER TABLE `frontend_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `gradebooks`
--
ALTER TABLE `gradebooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4116;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `routines`
--
ALTER TABLE `routines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `student_fee_managers`
--
ALTER TABLE `student_fee_managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `syllabuses`
--
ALTER TABLE `syllabuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teacher_permissions`
--
ALTER TABLE `teacher_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
