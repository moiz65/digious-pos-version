-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 09, 2024 at 01:07 PM
-- Server version: 10.6.19-MariaDB-cll-lve
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digivjvv_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `total_products` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adjustment_items`
--

CREATE TABLE `adjustment_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adjustment_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` double DEFAULT NULL,
  `method_type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `base_units`
--

CREATE TABLE `base_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `base_units`
--

INSERT INTO `base_units` (`id`, `name`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'piece', 1, '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(2, 'meter', 1, '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(3, 'kilogram', 1, '2023-07-11 05:53:39', '2023-07-11 05:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(4, 'Drip down frosty', NULL, '2024-09-08 17:44:12', '2024-09-08 17:57:21'),
(5, 'Tokyo', NULL, '2024-09-08 17:44:49', '2024-09-08 17:44:49'),
(6, 'VGOD', NULL, '2024-09-08 17:45:12', '2024-09-08 17:45:12'),
(7, 'Ripper', NULL, '2024-09-08 17:45:47', '2024-09-08 17:45:47'),
(8, 'Infinity Vapes', NULL, '2024-09-08 17:45:55', '2024-09-08 17:45:55'),
(9, 'Ice POP', NULL, '2024-09-08 17:46:26', '2024-09-08 17:46:26'),
(10, 'DAZE REDS', NULL, '2024-09-08 17:46:52', '2024-09-08 17:47:09'),
(11, 'DRAG BAR', NULL, '2024-09-08 17:47:44', '2024-09-08 17:47:44'),
(12, 'IVG REGAL 6000 PUFF', NULL, '2024-09-08 17:47:53', '2024-09-08 17:58:27'),
(13, 'AIR BAR 20k Puff', NULL, '2024-09-08 17:48:01', '2024-09-08 20:48:49'),
(14, 'MNKE BAR', NULL, '2024-09-08 17:48:07', '2024-09-08 17:48:21'),
(15, 'RELX', NULL, '2024-09-08 17:48:50', '2024-09-08 17:48:50'),
(16, 'SKWEZED', NULL, '2024-09-08 17:49:15', '2024-09-08 17:49:15'),
(17, 'VAPORIESSO', NULL, '2024-09-08 17:49:42', '2024-09-08 17:49:42'),
(18, 'OXVA', NULL, '2024-09-08 17:49:56', '2024-09-08 17:49:56'),
(19, 'WOOPOO', NULL, '2024-09-08 17:50:08', '2024-09-08 17:50:08'),
(20, 'UWELL', NULL, '2024-09-08 17:50:21', '2024-09-08 17:50:21'),
(21, 'GEEKVAPE', NULL, '2024-09-08 17:50:33', '2024-09-08 17:50:33'),
(22, 'FIREBOLD', NULL, '2024-09-08 17:54:46', '2024-09-08 17:54:46'),
(23, 'Drip down edition', NULL, '2024-09-08 17:57:33', '2024-09-08 18:04:37'),
(24, 'IVG 8k', NULL, '2024-09-08 17:58:49', '2024-09-08 17:58:49'),
(25, 'Tokyo Crazy Fruit', NULL, '2024-09-08 19:23:45', '2024-09-08 19:23:45'),
(26, 'Smok', NULL, '2024-09-08 21:36:28', '2024-09-08 21:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(170) NOT NULL,
  `short_code` varchar(170) DEFAULT NULL,
  `phone_code` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `short_code`, `phone_code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', 93, NULL, NULL),
(2, 'Albania', 'AL', 355, NULL, NULL),
(3, 'Algeria', 'DZ', 213, NULL, NULL),
(4, 'American Samoa', 'AS', 1684, NULL, NULL),
(5, 'Andorra', 'AD', 376, NULL, NULL),
(6, 'Angola', 'AO', 244, NULL, NULL),
(7, 'Anguilla', 'AI', 1264, NULL, NULL),
(8, 'Antarctica', 'AQ', 0, NULL, NULL),
(9, 'Antigua And Barbuda', 'AG', 1268, NULL, NULL),
(10, 'Argentina', 'AR', 54, NULL, NULL),
(11, 'Armenia', 'AM', 374, NULL, NULL),
(12, 'Aruba', 'AW', 297, NULL, NULL),
(13, 'Australia', 'AU', 61, NULL, NULL),
(14, 'Austria', 'AT', 43, NULL, NULL),
(15, 'Azerbaijan', 'AZ', 994, NULL, NULL),
(16, 'Bahamas The', 'BS', 1242, NULL, NULL),
(17, 'Bahrain', 'BH', 973, NULL, NULL),
(18, 'Bangladesh', 'BD', 880, NULL, NULL),
(19, 'Barbados', 'BB', 1246, NULL, NULL),
(20, 'Belarus', 'BY', 375, NULL, NULL),
(21, 'Belgium', 'BE', 32, NULL, NULL),
(22, 'Belize', 'BZ', 501, NULL, NULL),
(23, 'Benin', 'BJ', 229, NULL, NULL),
(24, 'Bermuda', 'BM', 1441, NULL, NULL),
(25, 'Bhutan', 'BT', 975, NULL, NULL),
(26, 'Bolivia', 'BO', 591, NULL, NULL),
(27, 'Bosnia and Herzegovina', 'BA', 387, NULL, NULL),
(28, 'Botswana', 'BW', 267, NULL, NULL),
(29, 'Bouvet Island', 'BV', 0, NULL, NULL),
(30, 'Brazil', 'BR', 55, NULL, NULL),
(31, 'British Indian Ocean Territory', 'IO', 246, NULL, NULL),
(32, 'Brunei', 'BN', 673, NULL, NULL),
(33, 'Bulgaria', 'BG', 359, NULL, NULL),
(34, 'Burkina Faso', 'BF', 226, NULL, NULL),
(35, 'Burundi', 'BI', 257, NULL, NULL),
(36, 'Cambodia', 'KH', 855, NULL, NULL),
(37, 'Cameroon', 'CM', 237, NULL, NULL),
(38, 'Canada', 'CA', 1, NULL, NULL),
(39, 'Cape Verde', 'CV', 238, NULL, NULL),
(40, 'Cayman Islands', 'KY', 1345, NULL, NULL),
(41, 'Central African Republic', 'CF', 236, NULL, NULL),
(42, 'Chad', 'TD', 235, NULL, NULL),
(43, 'Chile', 'CL', 56, NULL, NULL),
(44, 'China', 'CN', 86, NULL, NULL),
(45, 'Christmas Island', 'CX', 61, NULL, NULL),
(46, 'Cocos (Keeling) Islands', 'CC', 672, NULL, NULL),
(47, 'Colombia', 'CO', 57, NULL, NULL),
(48, 'Comoros', 'KM', 269, NULL, NULL),
(49, 'Republic Of The Congo', 'CG', 242, NULL, NULL),
(50, 'Democratic Republic Of The Congo', 'CD', 242, NULL, NULL),
(51, 'Cook Islands', 'CK', 682, NULL, NULL),
(52, 'Costa Rica', 'CR', 506, NULL, NULL),
(53, 'Cote D\'\'Ivoire (Ivory Coast)', 'CI', 225, NULL, NULL),
(54, 'Croatia (Hrvatska)', 'HR', 385, NULL, NULL),
(55, 'Cuba', 'CU', 53, NULL, NULL),
(56, 'Cyprus', 'CY', 357, NULL, NULL),
(57, 'Czech Republic', 'CZ', 420, NULL, NULL),
(58, 'Denmark', 'DK', 45, NULL, NULL),
(59, 'Djibouti', 'DJ', 253, NULL, NULL),
(60, 'Dominica', 'DM', 1767, NULL, NULL),
(61, 'Dominican Republic', 'DO', 1809, NULL, NULL),
(62, 'East Timor', 'TP', 670, NULL, NULL),
(63, 'Ecuador', 'EC', 593, NULL, NULL),
(64, 'Egypt', 'EG', 20, NULL, NULL),
(65, 'El Salvador', 'SV', 503, NULL, NULL),
(66, 'Equatorial Guinea', 'GQ', 240, NULL, NULL),
(67, 'Eritrea', 'ER', 291, NULL, NULL),
(68, 'Estonia', 'EE', 372, NULL, NULL),
(69, 'Ethiopia', 'ET', 251, NULL, NULL),
(70, 'External Territories of Australia', 'XA', 61, NULL, NULL),
(71, 'Falkland Islands', 'FK', 500, NULL, NULL),
(72, 'Faroe Islands', 'FO', 298, NULL, NULL),
(73, 'Fiji Islands', 'FJ', 679, NULL, NULL),
(74, 'Finland', 'FI', 358, NULL, NULL),
(75, 'France', 'FR', 33, NULL, NULL),
(76, 'French Guiana', 'GF', 594, NULL, NULL),
(77, 'French Polynesia', 'PF', 689, NULL, NULL),
(78, 'French Southern Territories', 'TF', 0, NULL, NULL),
(79, 'Gabon', 'GA', 241, NULL, NULL),
(80, 'Gambia The', 'GM', 220, NULL, NULL),
(81, 'Georgia', 'GE', 995, NULL, NULL),
(82, 'Germany', 'DE', 49, NULL, NULL),
(83, 'Ghana', 'GH', 233, NULL, NULL),
(84, 'Gibraltar', 'GI', 350, NULL, NULL),
(85, 'Greece', 'GR', 30, NULL, NULL),
(86, 'Greenland', 'GL', 299, NULL, NULL),
(87, 'Grenada', 'GD', 1473, NULL, NULL),
(88, 'Guadeloupe', 'GP', 590, NULL, NULL),
(89, 'Guam', 'GU', 1671, NULL, NULL),
(90, 'Guatemala', 'GT', 502, NULL, NULL),
(91, 'Guernsey and Alderney', 'XU', 44, NULL, NULL),
(92, 'Guinea', 'GN', 224, NULL, NULL),
(93, 'Guinea-Bissau', 'GW', 245, NULL, NULL),
(94, 'Guyana', 'GY', 592, NULL, NULL),
(95, 'Haiti', 'HT', 509, NULL, NULL),
(96, 'Heard and McDonald Islands', 'HM', 0, NULL, NULL),
(97, 'Honduras', 'HN', 504, NULL, NULL),
(98, 'Hong Kong S.A.R.', 'HK', 852, NULL, NULL),
(99, 'Hungary', 'HU', 36, NULL, NULL),
(100, 'Iceland', 'IS', 354, NULL, NULL),
(101, 'India', 'IN', 91, NULL, NULL),
(102, 'Indonesia', 'ID', 62, NULL, NULL),
(103, 'Iran', 'IR', 98, NULL, NULL),
(104, 'Iraq', 'IQ', 964, NULL, NULL),
(105, 'Ireland', 'IE', 353, NULL, NULL),
(106, 'Israel', 'IL', 972, NULL, NULL),
(107, 'Italy', 'IT', 39, NULL, NULL),
(108, 'Jamaica', 'JM', 1876, NULL, NULL),
(109, 'Japan', 'JP', 81, NULL, NULL),
(110, 'Jersey', 'XJ', 44, NULL, NULL),
(111, 'Jordan', 'JO', 962, NULL, NULL),
(112, 'Kazakhstan', 'KZ', 7, NULL, NULL),
(113, 'Kenya', 'KE', 254, NULL, NULL),
(114, 'Kiribati', 'KI', 686, NULL, NULL),
(115, 'Korea North', 'KP', 850, NULL, NULL),
(116, 'Korea South', 'KR', 82, NULL, NULL),
(117, 'Kuwait', 'KW', 965, NULL, NULL),
(118, 'Kyrgyzstan', 'KG', 996, NULL, NULL),
(119, 'Laos', 'LA', 856, NULL, NULL),
(120, 'Latvia', 'LV', 371, NULL, NULL),
(121, 'Lebanon', 'LB', 961, NULL, NULL),
(122, 'Lesotho', 'LS', 266, NULL, NULL),
(123, 'Liberia', 'LR', 231, NULL, NULL),
(124, 'Libya', 'LY', 218, NULL, NULL),
(125, 'Liechtenstein', 'LI', 423, NULL, NULL),
(126, 'Lithuania', 'LT', 370, NULL, NULL),
(127, 'Luxembourg', 'LU', 352, NULL, NULL),
(128, 'Macau S.A.R.', 'MO', 853, NULL, NULL),
(129, 'Macedonia', 'MK', 389, NULL, NULL),
(130, 'Madagascar', 'MG', 261, NULL, NULL),
(131, 'Malawi', 'MW', 265, NULL, NULL),
(132, 'Malaysia', 'MY', 60, NULL, NULL),
(133, 'Maldives', 'MV', 960, NULL, NULL),
(134, 'Mali', 'ML', 223, NULL, NULL),
(135, 'Malta', 'MT', 356, NULL, NULL),
(136, 'Man (Isle of)', 'XM', 44, NULL, NULL),
(137, 'Marshall Islands', 'MH', 692, NULL, NULL),
(138, 'Martinique', 'MQ', 596, NULL, NULL),
(139, 'Mauritania', 'MR', 222, NULL, NULL),
(140, 'Mauritius', 'MU', 230, NULL, NULL),
(141, 'Mayotte', 'YT', 269, NULL, NULL),
(142, 'Mexico', 'MX', 52, NULL, NULL),
(143, 'Micronesia', 'FM', 691, NULL, NULL),
(144, 'Moldova', 'MD', 373, NULL, NULL),
(145, 'Monaco', 'MC', 377, NULL, NULL),
(146, 'Mongolia', 'MN', 976, NULL, NULL),
(147, 'Montserrat', 'MS', 1664, NULL, NULL),
(148, 'Morocco', 'MA', 212, NULL, NULL),
(149, 'Mozambique', 'MZ', 258, NULL, NULL),
(150, 'Myanmar', 'MM', 95, NULL, NULL),
(151, 'Namibia', 'NA', 264, NULL, NULL),
(152, 'Nauru', 'NR', 674, NULL, NULL),
(153, 'Nepal', 'NP', 977, NULL, NULL),
(154, 'Netherlands Antilles', 'AN', 599, NULL, NULL),
(155, 'Netherlands The', 'NL', 31, NULL, NULL),
(156, 'New Caledonia', 'NC', 687, NULL, NULL),
(157, 'New Zealand', 'NZ', 64, NULL, NULL),
(158, 'Nicaragua', 'NI', 505, NULL, NULL),
(159, 'Niger', 'NE', 227, NULL, NULL),
(160, 'Nigeria', 'NG', 234, NULL, NULL),
(161, 'Niue', 'NU', 683, NULL, NULL),
(162, 'Norfolk Island', 'NF', 672, NULL, NULL),
(163, 'Northern Mariana Islands', 'MP', 1670, NULL, NULL),
(164, 'Norway', 'NO', 47, NULL, NULL),
(165, 'Oman', 'OM', 968, NULL, NULL),
(166, 'Pakistan', 'PK', 92, NULL, NULL),
(167, 'Palau', 'PW', 680, NULL, NULL),
(168, 'Palestinian Territory Occupied', 'PS', 970, NULL, NULL),
(169, 'Panama', 'PA', 507, NULL, NULL),
(170, 'Papua new Guinea', 'PG', 675, NULL, NULL),
(171, 'Paraguay', 'PY', 595, NULL, NULL),
(172, 'Peru', 'PE', 51, NULL, NULL),
(173, 'Philippines', 'PH', 63, NULL, NULL),
(174, 'Pitcairn Island', 'PN', 0, NULL, NULL),
(175, 'Poland', 'PL', 48, NULL, NULL),
(176, 'Portugal', 'PT', 351, NULL, NULL),
(177, 'Puerto Rico', 'PR', 1787, NULL, NULL),
(178, 'Qatar', 'QA', 974, NULL, NULL),
(179, 'Reunion', 'RE', 262, NULL, NULL),
(180, 'Romania', 'RO', 40, NULL, NULL),
(181, 'Russia', 'RU', 70, NULL, NULL),
(182, 'Rwanda', 'RW', 250, NULL, NULL),
(183, 'Saint Helena', 'SH', 290, NULL, NULL),
(184, 'Saint Kitts And Nevis', 'KN', 1869, NULL, NULL),
(185, 'Saint Lucia', 'LC', 1758, NULL, NULL),
(186, 'Saint Pierre and Miquelon', 'PM', 508, NULL, NULL),
(187, 'Saint Vincent And The Grenadines', 'VC', 1784, NULL, NULL),
(188, 'Samoa', 'WS', 684, NULL, NULL),
(189, 'San Marino', 'SM', 378, NULL, NULL),
(190, 'Sao Tome and Principe', 'ST', 239, NULL, NULL),
(191, 'Saudi Arabia', 'SA', 966, NULL, NULL),
(192, 'Senegal', 'SN', 221, NULL, NULL),
(193, 'Serbia', 'RS', 381, NULL, NULL),
(194, 'Seychelles', 'SC', 248, NULL, NULL),
(195, 'Sierra Leone', 'SL', 232, NULL, NULL),
(196, 'Singapore', 'SG', 65, NULL, NULL),
(197, 'Slovakia', 'SK', 421, NULL, NULL),
(198, 'Slovenia', 'SI', 386, NULL, NULL),
(199, 'Smaller Territories of the UK', 'XG', 44, NULL, NULL),
(200, 'Solomon Islands', 'SB', 677, NULL, NULL),
(201, 'Somalia', 'SO', 252, NULL, NULL),
(202, 'South Africa', 'ZA', 27, NULL, NULL),
(203, 'South Georgia', 'GS', 0, NULL, NULL),
(204, 'South Sudan', 'SS', 211, NULL, NULL),
(205, 'Spain', 'ES', 34, NULL, NULL),
(206, 'Sri Lanka', 'LK', 94, NULL, NULL),
(207, 'Sudan', 'SD', 249, NULL, NULL),
(208, 'Suriname', 'SR', 597, NULL, NULL),
(209, 'Svalbard And Jan Mayen Islands', 'SJ', 47, NULL, NULL),
(210, 'Swaziland', 'SZ', 268, NULL, NULL),
(211, 'Sweden', 'SE', 46, NULL, NULL),
(212, 'Switzerland', 'CH', 41, NULL, NULL),
(213, 'Syria', 'SY', 963, NULL, NULL),
(214, 'Taiwan', 'TW', 886, NULL, NULL),
(215, 'Tajikistan', 'TJ', 992, NULL, NULL),
(216, 'Tanzania', 'TZ', 255, NULL, NULL),
(217, 'Thailand', 'TH', 66, NULL, NULL),
(218, 'Togo', 'TG', 228, NULL, NULL),
(219, 'Tokelau', 'TK', 690, NULL, NULL),
(220, 'Tonga', 'TO', 676, NULL, NULL),
(221, 'Trinidad And Tobago', 'TT', 1868, NULL, NULL),
(222, 'Tunisia', 'TN', 216, NULL, NULL),
(223, 'Turkey', 'TR', 90, NULL, NULL),
(224, 'Turkmenistan', 'TM', 7370, NULL, NULL),
(225, 'Turks And Caicos Islands', 'TC', 1649, NULL, NULL),
(226, 'Tuvalu', 'TV', 688, NULL, NULL),
(227, 'Uganda', 'UG', 256, NULL, NULL),
(228, 'Ukraine', 'UA', 380, NULL, NULL),
(229, 'United Arab Emirates', 'AE', 971, NULL, NULL),
(230, 'United Kingdom', 'GB', 44, NULL, NULL),
(231, 'United States', 'US', 1, NULL, NULL),
(232, 'United States Minor Outlying Islands', 'UM', 1, NULL, NULL),
(233, 'Uruguay', 'UY', 598, NULL, NULL),
(234, 'Uzbekistan', 'UZ', 998, NULL, NULL),
(235, 'Vanuatu', 'VU', 678, NULL, NULL),
(236, 'Vatican City State (Holy See)', 'VA', 39, NULL, NULL),
(237, 'Venezuela', 'VE', 58, NULL, NULL),
(238, 'Vietnam', 'VN', 84, NULL, NULL),
(239, 'Virgin Islands (British)', 'VG', 1284, NULL, NULL),
(240, 'Virgin Islands (US)', 'VI', 1340, NULL, NULL),
(241, 'Wallis And Futuna Islands', 'WF', 681, NULL, NULL),
(242, 'Western Sahara', 'EH', 212, NULL, NULL),
(243, 'Yemen', 'YE', 967, NULL, NULL),
(244, 'Yugoslavia', 'YU', 38, NULL, NULL),
(245, 'Zambia', 'ZM', 260, NULL, NULL),
(246, 'Zimbabwe', 'ZW', 26, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_codes`
--

CREATE TABLE `coupon_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `how_many_time_can_use` int(11) NOT NULL,
  `discount_type` int(11) NOT NULL,
  `discount` double NOT NULL,
  `how_many_time_used` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_product`
--

CREATE TABLE `coupon_product` (
  `coupon_code_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`) VALUES
(2, 'PKR', 'RS', 'Rs', '2024-09-03 22:19:12', '2024-09-03 22:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `dob`, `country`, `city`, `address`, `created_at`, `updated_at`) VALUES
(1, 'walk-in-customer', 'vaperzcafe@gmail.com', '123456789', NULL, 'Pakistan', 'Karachi', 'Karachi', '2023-07-11 05:53:39', '2024-09-07 06:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `expense_category_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'fdgfds', NULL, '2024-09-04 00:56:37', '2024-09-04 00:56:37');

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
-- Table structure for table `holds`
--

CREATE TABLE `holds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `received_amount` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hold_items`
--

CREATE TABLE `hold_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hold_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_price` double DEFAULT NULL,
  `net_unit_price` double DEFAULT NULL,
  `tax_type` int(11) NOT NULL,
  `tax_value` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_value` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `sale_unit` int(11) NOT NULL,
  `quantity` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `iso_code` varchar(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `iso_code`, `is_default`, `created_at`, `updated_at`) VALUES
(3, 'English', 'en', 1, '2023-07-11 05:53:39', '2023-07-11 05:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `mail_templates`
--

CREATE TABLE `mail_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_name` text NOT NULL,
  `content` longtext NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_templates`
--

INSERT INTO `mail_templates` (`id`, `template_name`, `content`, `type`, `created_at`, `updated_at`, `status`) VALUES
(1, 'GREETING TO CUSTOMER ON SALES !', '<p>Hi, {customer_name}</p><p>Your sales Id is {sales_id}</p><p>Sales Date: {sales_date}</p><p>Total Amount: {sales_amount}</p><p>You have paid: {paid_amount}</p><p>Due amount: {due_amount}</p><p>Regards,  {app_name}</p>', '1', '2023-07-11 05:53:38', '2024-09-04 01:03:38', 0),
(2, 'GREETING TO CUSTOMER ON SALES RETURN !', '<p>Hi, {customer_name}</p><p>Your sales return Id is {sales_return_id}</p><p>Sales return Date: {sales_return_date}</p><p>Total Amount: {sales_return_amount}</p><p>Regards,  {app_name}</p>', '2', '2023-07-11 05:53:38', '2024-09-04 01:03:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `manage_stocks`
--

CREATE TABLE `manage_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alert` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_stocks`
--

INSERT INTO `manage_stocks` (`id`, `warehouse_id`, `product_id`, `quantity`, `created_at`, `updated_at`, `alert`) VALUES
(12, 1, 12, 1, '2024-09-08 18:07:03', '2024-09-08 22:24:21', 1),
(13, 1, 13, 3, '2024-09-08 18:13:03', '2024-09-08 18:13:03', 0),
(14, 1, 14, 3, '2024-09-08 18:14:22', '2024-09-08 18:14:22', 0),
(15, 1, 15, 3, '2024-09-08 18:15:25', '2024-09-08 18:15:25', 0),
(16, 1, 16, 3, '2024-09-08 18:16:39', '2024-09-08 18:16:39', 0),
(17, 1, 17, 3, '2024-09-08 18:17:50', '2024-09-08 18:17:50', 0),
(18, 1, 18, 3, '2024-09-08 18:18:47', '2024-09-08 18:18:47', 0),
(19, 1, 19, 3, '2024-09-08 18:19:28', '2024-09-08 18:19:28', 0),
(20, 1, 20, 3, '2024-09-08 18:20:23', '2024-09-08 18:20:23', 0),
(21, 1, 21, 3, '2024-09-08 18:21:52', '2024-09-08 18:21:52', 0),
(22, 1, 22, 2, '2024-09-08 18:23:01', '2024-09-08 18:23:01', 0),
(23, 1, 23, 2, '2024-09-08 18:23:45', '2024-09-08 18:23:45', 0),
(24, 1, 24, 2, '2024-09-08 18:24:32', '2024-09-08 18:24:32', 0),
(25, 1, 25, 2, '2024-09-08 18:25:13', '2024-09-08 18:25:13', 0),
(26, 1, 26, 2, '2024-09-08 18:25:59', '2024-09-08 18:25:59', 0),
(27, 1, 27, 2, '2024-09-08 18:26:57', '2024-09-08 18:26:57', 0),
(28, 1, 28, 2, '2024-09-08 18:27:50', '2024-09-08 18:27:50', 0),
(29, 1, 29, 2, '2024-09-08 18:29:13', '2024-09-08 18:29:13', 0),
(30, 1, 30, 2, '2024-09-08 18:30:04', '2024-09-08 18:30:04', 0),
(31, 1, 31, 2, '2024-09-08 18:30:38', '2024-09-08 18:30:38', 0),
(32, 1, 32, 2, '2024-09-08 18:34:12', '2024-09-08 18:34:12', 0),
(33, 1, 33, 2, '2024-09-08 18:34:47', '2024-09-08 18:34:47', 0),
(34, 1, 34, 2, '2024-09-08 18:35:19', '2024-09-08 18:35:19', 0),
(35, 1, 35, 2, '2024-09-08 18:35:55', '2024-09-08 18:35:55', 0),
(36, 1, 36, 2, '2024-09-08 18:38:25', '2024-09-08 18:38:25', 0),
(37, 1, 37, 2, '2024-09-08 18:39:13', '2024-09-08 18:39:13', 0),
(38, 1, 38, 2, '2024-09-08 18:39:52', '2024-09-08 18:39:52', 0),
(39, 1, 39, 2, '2024-09-08 18:40:40', '2024-09-08 18:40:40', 0),
(40, 1, 40, 2, '2024-09-08 18:41:31', '2024-09-08 18:41:31', 0),
(41, 1, 41, 2, '2024-09-08 18:42:42', '2024-09-08 18:42:42', 0),
(42, 1, 42, 2, '2024-09-08 18:46:28', '2024-09-08 18:46:28', 0),
(43, 1, 43, 2, '2024-09-08 18:47:52', '2024-09-08 18:47:52', 0),
(44, 1, 44, 2, '2024-09-08 18:48:34', '2024-09-08 18:48:34', 0),
(45, 1, 45, 2, '2024-09-08 18:49:13', '2024-09-08 18:49:13', 0),
(46, 1, 46, 2, '2024-09-08 18:49:49', '2024-09-08 18:49:49', 0),
(47, 1, 47, 2, '2024-09-08 18:50:37', '2024-09-08 18:50:37', 0),
(48, 1, 48, 2, '2024-09-08 18:51:30', '2024-09-08 18:51:30', 0),
(49, 1, 49, 2, '2024-09-08 18:52:21', '2024-09-08 18:52:21', 0),
(50, 1, 50, 2, '2024-09-08 18:52:57', '2024-09-08 18:52:57', 0),
(51, 1, 51, 2, '2024-09-08 18:53:33', '2024-09-08 18:53:33', 0),
(52, 1, 52, 2, '2024-09-08 18:54:25', '2024-09-08 18:54:25', 0),
(53, 1, 53, 2, '2024-09-08 18:55:11', '2024-09-08 18:55:11', 0),
(54, 1, 54, 1, '2024-09-08 18:56:34', '2024-09-08 18:56:34', 0),
(55, 1, 55, 1, '2024-09-08 18:57:11', '2024-09-08 18:57:11', 0),
(56, 1, 56, 1, '2024-09-08 18:57:51', '2024-09-08 18:57:51', 0),
(57, 1, 57, 1, '2024-09-08 18:58:22', '2024-09-08 18:58:22', 0),
(58, 1, 58, 1, '2024-09-08 18:58:50', '2024-09-08 18:58:50', 0),
(59, 1, 59, 1, '2024-09-08 18:59:26', '2024-09-08 18:59:26', 0),
(60, 1, 60, 1, '2024-09-08 19:00:24', '2024-09-08 19:00:24', 0),
(61, 1, 61, 2, '2024-09-08 19:05:35', '2024-09-08 19:05:35', 0),
(62, 1, 62, 2, '2024-09-08 19:06:44', '2024-09-08 19:06:44', 0),
(63, 1, 63, 2, '2024-09-08 19:07:59', '2024-09-08 19:07:59', 0),
(64, 1, 64, 2, '2024-09-08 19:09:53', '2024-09-08 19:09:53', 0),
(65, 1, 65, 2, '2024-09-08 19:10:39', '2024-09-08 19:10:39', 0),
(66, 1, 66, 2, '2024-09-08 19:11:33', '2024-09-08 19:11:33', 0),
(67, 1, 67, 2, '2024-09-08 19:13:55', '2024-09-08 19:13:55', 0),
(68, 1, 68, 2, '2024-09-08 19:14:29', '2024-09-08 19:14:29', 0),
(69, 1, 69, 2, '2024-09-08 19:15:48', '2024-09-08 19:21:34', 0),
(70, 1, 70, 1, '2024-09-08 19:16:31', '2024-09-08 19:16:31', 0),
(71, 1, 71, 1, '2024-09-08 19:22:47', '2024-09-08 19:22:47', 0),
(72, 1, 72, 2, '2024-09-08 19:24:29', '2024-09-08 19:24:29', 0),
(73, 1, 73, 2, '2024-09-08 19:25:45', '2024-09-08 19:25:45', 0),
(74, 1, 74, 3, '2024-09-08 19:28:21', '2024-09-08 19:28:21', 0),
(75, 1, 75, 2, '2024-09-08 19:29:52', '2024-09-08 19:29:52', 0),
(76, 1, 76, 1, '2024-09-08 19:30:21', '2024-09-08 19:30:21', 0),
(77, 1, 77, 1, '2024-09-08 19:33:49', '2024-09-08 19:33:49', 0),
(78, 1, 78, 1, '2024-09-08 19:35:15', '2024-09-08 19:35:15', 0),
(79, 1, 79, 1, '2024-09-08 19:36:07', '2024-09-08 19:36:07', 1),
(80, 1, 80, 1, '2024-09-08 19:36:48', '2024-09-08 19:36:48', 0),
(81, 1, 81, 1, '2024-09-08 19:37:26', '2024-09-08 19:37:26', 1),
(82, 1, 82, 1, '2024-09-08 19:38:39', '2024-09-08 19:38:39', 0),
(83, 1, 83, 1, '2024-09-08 19:39:52', '2024-09-08 19:39:52', 0),
(84, 1, 84, 1, '2024-09-08 19:41:13', '2024-09-08 19:41:13', 0),
(85, 1, 85, 1, '2024-09-08 19:41:53', '2024-09-08 19:41:53', 0),
(86, 1, 86, 1, '2024-09-08 19:42:58', '2024-09-08 19:42:58', 0),
(87, 1, 87, 1, '2024-09-08 19:43:42', '2024-09-08 19:43:42', 0),
(88, 1, 88, 1, '2024-09-08 19:44:26', '2024-09-08 19:44:26', 0),
(89, 1, 89, 1, '2024-09-08 19:46:34', '2024-09-08 19:46:34', 0),
(90, 1, 90, 1, '2024-09-08 19:47:10', '2024-09-08 19:47:10', 0),
(91, 1, 91, 1, '2024-09-08 19:47:38', '2024-09-08 19:47:38', 0),
(92, 1, 92, 2, '2024-09-08 19:51:10', '2024-09-08 19:51:10', 0),
(93, 1, 93, 2, '2024-09-08 19:52:17', '2024-09-08 19:52:17', 0),
(94, 1, 94, 2, '2024-09-08 19:53:01', '2024-09-08 19:53:01', 0),
(95, 1, 95, 2, '2024-09-08 19:55:56', '2024-09-08 19:55:56', 0),
(96, 1, 96, 30, '2024-09-08 20:02:24', '2024-09-08 20:02:24', 0),
(97, 1, 97, 10, '2024-09-08 20:03:25', '2024-09-08 20:03:25', 0),
(98, 1, 98, 10, '2024-09-08 20:04:33', '2024-09-08 20:04:33', 0),
(99, 1, 99, 10, '2024-09-08 20:05:30', '2024-09-08 20:05:30', 0),
(100, 1, 100, 10, '2024-09-08 20:06:24', '2024-09-08 20:06:24', 0),
(101, 1, 101, 10, '2024-09-08 20:07:16', '2024-09-08 20:07:16', 0),
(102, 1, 102, 10, '2024-09-08 20:07:54', '2024-09-08 20:07:54', 0),
(103, 1, 103, 10, '2024-09-08 20:09:00', '2024-09-08 20:09:00', 0),
(104, 1, 104, 5, '2024-09-08 20:11:01', '2024-09-08 20:11:01', 0),
(105, 1, 105, 5, '2024-09-08 20:12:50', '2024-09-08 20:12:50', 0),
(106, 1, 106, 2, '2024-09-08 20:15:17', '2024-09-08 20:15:17', 0),
(107, 1, 107, 5, '2024-09-08 20:16:07', '2024-09-08 20:16:07', 0),
(108, 1, 108, 5, '2024-09-08 20:16:58', '2024-09-08 20:16:58', 0),
(109, 1, 109, 5, '2024-09-08 20:19:02', '2024-09-08 20:19:02', 1),
(110, 1, 110, 5, '2024-09-08 20:20:06', '2024-09-08 20:20:06', 0),
(111, 1, 111, 5, '2024-09-08 20:20:59', '2024-09-08 20:20:59', 0),
(112, 1, 112, 5, '2024-09-08 20:21:56', '2024-09-08 20:21:56', 0),
(113, 1, 113, 5, '2024-09-08 20:23:33', '2024-09-08 20:23:33', 0),
(114, 1, 114, 10, '2024-09-08 20:24:17', '2024-09-08 20:25:17', 0),
(115, 1, 115, 10, '2024-09-08 20:26:57', '2024-09-08 20:26:57', 0),
(116, 1, 116, 5, '2024-09-08 20:28:25', '2024-09-08 20:28:25', 0),
(117, 1, 117, 5, '2024-09-08 20:29:25', '2024-09-08 20:29:25', 0),
(118, 1, 118, 5, '2024-09-08 20:29:58', '2024-09-08 20:29:58', 0),
(119, 1, 119, 5, '2024-09-08 20:30:34', '2024-09-08 20:30:34', 0),
(120, 1, 120, 5, '2024-09-08 20:31:22', '2024-09-08 20:31:22', 0),
(121, 1, 121, 5, '2024-09-08 20:32:18', '2024-09-08 20:32:18', 0),
(122, 1, 122, 5, '2024-09-08 20:33:07', '2024-09-08 20:33:07', 0),
(123, 1, 123, 5, '2024-09-08 20:40:06', '2024-09-08 20:40:06', 0),
(124, 1, 124, 5, '2024-09-08 20:40:46', '2024-09-08 20:40:46', 0),
(125, 1, 125, 0, '2024-09-08 20:41:41', '2024-09-08 22:31:09', 1),
(126, 1, 126, 5, '2024-09-08 20:42:36', '2024-09-08 20:42:36', 0),
(127, 1, 127, 5, '2024-09-08 20:43:23', '2024-09-08 20:43:23', 0),
(128, 1, 128, 5, '2024-09-08 20:43:54', '2024-09-08 20:43:54', 0),
(129, 1, 129, 3, '2024-09-08 20:45:19', '2024-09-08 20:45:19', 0),
(130, 1, 130, 3, '2024-09-08 20:46:25', '2024-09-08 20:46:25', 0),
(131, 1, 131, 3, '2024-09-08 20:47:07', '2024-09-08 20:47:07', 0),
(132, 1, 132, 3, '2024-09-08 20:48:35', '2024-09-08 20:48:35', 0),
(133, 1, 133, 1, '2024-09-08 20:51:17', '2024-09-08 20:51:17', 0),
(134, 1, 134, 2, '2024-09-08 20:53:55', '2024-09-08 20:53:55', 0),
(135, 1, 135, 2, '2024-09-08 20:54:43', '2024-09-08 20:54:43', 0),
(136, 1, 136, 1, '2024-09-08 20:55:47', '2024-09-08 20:55:47', 0),
(137, 1, 137, 10, '2024-09-08 20:59:34', '2024-09-08 20:59:34', 0),
(138, 1, 138, 10, '2024-09-08 21:00:31', '2024-09-08 21:00:31', 0),
(139, 1, 139, 1, '2024-09-08 21:02:08', '2024-09-08 21:02:08', 0),
(140, 1, 140, 1, '2024-09-08 21:03:08', '2024-09-08 21:03:08', 0),
(141, 1, 141, 1, '2024-09-08 21:04:03', '2024-09-08 21:04:03', 0),
(142, 1, 142, 15, '2024-09-08 21:05:36', '2024-09-08 21:05:36', 0),
(143, 1, 143, 1, '2024-09-08 21:07:51', '2024-09-08 21:07:51', 0),
(144, 1, 144, 1, '2024-09-08 21:08:51', '2024-09-08 21:08:51', 0),
(145, 1, 145, 1, '2024-09-08 21:09:25', '2024-09-08 21:09:25', 0),
(146, 1, 146, 20, '2024-09-08 21:11:34', '2024-09-08 21:11:34', 0),
(147, 1, 147, 20, '2024-09-08 21:12:26', '2024-09-08 21:12:26', 0),
(148, 1, 148, 20, '2024-09-08 21:14:44', '2024-09-08 21:14:44', 0),
(149, 1, 149, 1, '2024-09-08 21:16:16', '2024-09-08 21:16:16', 0),
(150, 1, 150, 1, '2024-09-08 21:17:09', '2024-09-08 21:17:09', 0),
(151, 1, 151, 10, '2024-09-08 21:20:08', '2024-09-08 21:20:08', 0),
(152, 1, 152, 10, '2024-09-08 21:21:39', '2024-09-08 21:21:39', 0),
(153, 1, 153, 12, '2024-09-08 21:23:10', '2024-09-08 21:23:10', 0),
(154, 1, 154, 10, '2024-09-08 21:25:12', '2024-09-08 21:25:12', 0),
(155, 1, 155, 10, '2024-09-08 21:26:37', '2024-09-08 21:26:37', 0),
(156, 1, 156, 15, '2024-09-08 21:28:03', '2024-09-08 21:28:03', 0),
(157, 1, 157, 15, '2024-09-08 21:30:51', '2024-09-08 21:30:51', 0),
(158, 1, 158, 1, '2024-09-08 21:34:41', '2024-09-08 21:34:41', 0),
(159, 1, 159, 1, '2024-09-08 21:36:09', '2024-09-08 21:36:09', 0),
(160, 1, 160, 1, '2024-09-08 21:37:50', '2024-09-08 21:37:50', 0),
(161, 1, 161, 1, '2024-09-08 21:38:42', '2024-09-08 21:38:42', 0),
(162, 1, 162, 1, '2024-09-08 21:41:07', '2024-09-08 21:41:07', 0),
(163, 1, 163, 1, '2024-09-08 21:41:53', '2024-09-08 21:41:53', 0),
(164, 1, 164, 15, '2024-09-08 21:43:48', '2024-09-08 21:43:48', 0),
(165, 1, 165, 15, '2024-09-08 21:44:44', '2024-09-08 21:44:44', 0),
(166, 1, 166, 15, '2024-09-08 21:46:38', '2024-09-08 21:46:38', 0),
(167, 1, 167, 10, '2024-09-08 21:47:53', '2024-09-08 21:47:53', 1),
(168, 1, 168, 10, '2024-09-08 21:49:45', '2024-09-08 21:49:45', 0),
(169, 1, 169, 30, '2024-09-08 21:50:45', '2024-09-08 21:50:45', 0),
(170, 1, 170, 10, '2024-09-08 21:51:55', '2024-09-08 21:51:55', 0),
(171, 1, 171, 12, '2024-09-08 21:53:44', '2024-09-08 21:53:44', 0),
(172, 1, 172, 1, '2024-09-08 21:55:05', '2024-09-08 21:55:05', 0),
(173, 1, 173, 1, '2024-09-08 21:55:45', '2024-09-08 21:55:45', 0),
(174, 1, 174, 1, '2024-09-08 21:59:45', '2024-09-08 21:59:45', 0),
(175, 1, 175, 1, '2024-09-08 22:00:26', '2024-09-08 22:00:26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Setting', 34, '3c5c76f7-bc21-40bd-966c-345f25a6a9fa', 'settings', 'Untitled-3-01-removebg-preview', 'Untitled-3-01-removebg-preview.png', 'image/png', 'public', 'public', 22301, '[]', '[]', '[]', '[]', 1, '2024-09-03 22:19:58', '2024-09-03 22:19:58'),
(2, 'App\\Models\\Product', 1, '997c3efd-bd09-4fa7-a88f-65417b8a6953', 'product', 'voopoo-vmate-max-vape-kit_2', 'voopoo-vmate-max-vape-kit_2.jpg', 'image/jpeg', 'public', 'public', 138778, '[]', '[]', '[]', '[]', 1, '2024-09-04 00:14:33', '2024-09-04 00:14:33'),
(3, 'App\\Models\\Product', 2, '36238595-17e1-431d-89a3-be60e31ccf4a', 'product', 'innokin_gomax_tube_80w_starter_kit_-_black_1_Online_sale_in_pakistan', 'innokin_gomax_tube_80w_starter_kit_-_black_1_Online_sale_in_pakistan.jpg', 'image/jpeg', 'public', 'public', 9633, '[]', '[]', '[]', '[]', 1, '2024-09-04 00:24:15', '2024-09-04 00:24:15'),
(4, 'App\\Models\\Product', 3, '93354f86-5166-4496-9e05-6e3ca0070db5', 'product', 'smoant_pasito_pod_kit_1100mah_8_-600x600', 'smoant_pasito_pod_kit_1100mah_8_-600x600.jpg', 'image/jpeg', 'public', 'public', 48631, '[]', '[]', '[]', '[]', 1, '2024-09-04 00:26:23', '2024-09-04 00:26:23'),
(5, 'App\\Models\\Product', 4, '6e4940e6-fda3-4b0f-b263-590f7853eb99', 'product', 'reds-apple-grape-iced-saltnic-600x600', 'reds-apple-grape-iced-saltnic-600x600.png', 'image/png', 'public', 'public', 285124, '[]', '[]', '[]', '[]', 1, '2024-09-04 00:30:57', '2024-09-04 00:30:57'),
(6, 'App\\Models\\Product', 5, 'd7d1e7ef-d6e3-4b74-8217-ec0609b655e6', 'product', 'brain-freeze60ml', 'brain-freeze60ml.jpg', 'image/jpeg', 'public', 'public', 88073, '[]', '[]', '[]', '[]', 1, '2024-09-04 00:33:49', '2024-09-04 00:33:49'),
(7, 'App\\Models\\Product', 6, '37aae5f2-d673-42f5-bfb8-7abe6da7feff', 'product', 'Coastal-Clouds-Iced-Melon-Berries-30ml-By-Karachi-Vapers', 'Coastal-Clouds-Iced-Melon-Berries-30ml-By-Karachi-Vapers.jpg', 'image/jpeg', 'public', 'public', 76649, '[]', '[]', '[]', '[]', 1, '2024-09-04 00:37:02', '2024-09-04 00:37:02'),
(8, 'App\\Models\\Product', 7, '3533fd07-a65b-4289-80fc-3b3d09ee8635', 'product', 'Beyond-Berry-Melonade-Blitz-By-Karachi-Vapers', 'Beyond-Berry-Melonade-Blitz-By-Karachi-Vapers.jpg', 'image/jpeg', 'public', 'public', 102841, '[]', '[]', '[]', '[]', 1, '2024-09-04 00:39:18', '2024-09-04 00:39:18'),
(9, 'App\\Models\\Product', 8, 'b35f42fe-bbc1-421c-85f4-d2c2a1ad2bd5', 'product', 'Pineapple-Grapefruit-50mg', 'Pineapple-Grapefruit-50mg.jpg', 'image/jpeg', 'public', 'public', 135159, '[]', '[]', '[]', '[]', 1, '2024-09-04 00:43:39', '2024-09-04 00:43:39'),
(10, 'App\\Models\\Product', 9, 'e6fcb79c-d43f-4826-9fcb-7b52876fadbc', 'product', 'innokin_gomax_tube_80w_starter_kit_-_black_1_Online_sale_in_pakistan', 'innokin_gomax_tube_80w_starter_kit_-_black_1_Online_sale_in_pakistan.jpg', 'image/jpeg', 'public', 'public', 9633, '[]', '[]', '[]', '[]', 1, '2024-09-04 00:49:51', '2024-09-04 00:49:51'),
(11, 'App\\Models\\Product', 10, '4d6f86e4-2de5-46df-b1b1-76e612dc193a', 'product', 'vape-2F', 'vape-2F.png', 'image/png', 'public', 'public', 193259, '[]', '[]', '[]', '[]', 1, '2024-09-07 04:17:44', '2024-09-07 04:17:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_18_051026_create_brands', 1),
(6, '2022_02_18_063507_create_media_table', 1),
(7, '2022_02_21_073634_create_permission_tables', 1),
(8, '2022_03_01_045721_add_display_name_into_permissions_and_roles', 1),
(9, '2022_03_02_042109_create_currencies_table', 1),
(10, '2022_03_02_050637_create_product_categories_table', 1),
(11, '2022_03_02_071803_create_units_table', 1),
(12, '2022_03_02_125151_create_warehouse_table', 1),
(13, '2022_03_03_094656_create_product_table', 1),
(14, '2022_03_04_112848_create_customer_table', 1),
(15, '2022_03_05_045741_create_suppliers_table', 1),
(16, '2022_03_05_064104_add_columns_in_users_table', 1),
(17, '2022_03_08_051830_create_sales_table', 1),
(18, '2022_03_08_055549_creat_sale_items_table', 1),
(19, '2022_03_09_095426_create_expense_categories_table', 1),
(20, '2022_03_09_105321_create_expenses_table', 1),
(21, '2022_03_10_101744_create_settings_table', 1),
(22, '2022_03_14_101110_create_purchases_table', 1),
(23, '2022_03_15_072023_create_purchase_items_table', 1),
(24, '2022_03_15_122143_add_column_barcode_symbol_products_table', 1),
(25, '2022_03_16_050519_change_description_filed_type_expense_category_table', 1),
(26, '2022_05_10_104622_add_language_field_in_users', 1),
(27, '2022_05_13_111052_add_title_field_in_expenses', 1),
(28, '2022_05_20_093240_add_new_field_to_sales_table', 1),
(29, '2022_05_23_061225_create_sales_return_table', 1),
(30, '2022_05_23_065104_create_sale_return_items_table', 1),
(31, '2022_05_24_045822_create_purchases_return_table', 1),
(32, '2022_05_24_050431_create_purchases_return_items_table', 1),
(33, '2022_05_31_123143_remove_warehouse_id_field_into_products_table', 1),
(34, '2022_06_01_100610_create_manage_stocks_table', 1),
(35, '2022_07_12_102722_add_new_filed_to_manage_stocks_table', 1),
(36, '2022_07_29_085151_create_sales_payments_table', 1),
(37, '2022_08_04_061313_add_reference_field_to_sales_payments_table', 1),
(38, '2022_08_04_114100_add_received_amount_field_to_sales_payments_table', 1),
(39, '2022_08_05_105849_create_adjustments_table', 1),
(40, '2022_08_05_110241_create_adjustment_items_table', 1),
(41, '2022_08_29_093912_create_transfers_table', 1),
(42, '2022_08_29_094749_create_transfer_items_table', 1),
(43, '2022_09_06_113032_version_1_3_0_seeder', 1),
(44, '2022_09_10_075820_create_mail_templates_table', 1),
(45, '2022_09_12_041933_add_email_template_seeder', 1),
(46, '2022_09_14_050339_create_countries_table', 1),
(47, '2022_09_14_050458_create_states_table', 1),
(48, '2022_09_14_065609_assign_all_permission_seeder', 1),
(49, '2022_09_14_071523_countries_seeder', 1),
(50, '2022_09_15_052207_create_quotations_table', 1),
(51, '2022_09_15_053604_create_quotation_items_table', 1),
(52, '2022_09_15_100204_add_post_code_seeder_migration', 1),
(53, '2022_09_15_104720_add_date_format_seeder_migration', 1),
(54, '2022_09_15_113413_default_email_report_quotation_seeder_migration', 1),
(55, '2022_09_16_062735_add_setting_prefix_code_seeder', 1),
(56, '2022_09_27_103942_add_new_field_in_sales', 1),
(57, '2022_09_27_115534_add_new_field_in_quotations', 1),
(58, '2022_10_03_074141_create_sms_templates_table', 1),
(59, '2022_10_03_090646_add_sms_template_seeder', 1),
(60, '2022_10_03_095418_create_sms_settings_table', 1),
(61, '2022_10_03_102421_add_sms_settings_seeder', 1),
(62, '2022_10_08_074726_add_status_to_mail_templates_table', 1),
(63, '2022_10_08_074912_add_status_to_sms_templates_table', 1),
(64, '2022_10_11_110325_add_default_currency_right_setting_seeder', 1),
(65, '2022_10_14_041746_add_sms_permissions_seeder', 1),
(66, '2022_10_15_044226_add_sale_id_to_sales_return_table', 1),
(67, '2022_10_17_052105_add_is_return_field_to_sales_table', 1),
(68, '2022_10_17_062353_add_sold_quantity_field_to_sale_return_items_table', 1),
(69, '2022_11_08_050601_create_holds_table', 1),
(70, '2022_11_08_051309_create_hold_items_table', 1),
(71, '2022_11_10_105949_add_quantity_limit_to_products_table', 1),
(72, '2022_11_29_070305_create_base_units_table', 1),
(73, '2022_11_30_071556_add_base_units_seeder', 1),
(74, '2022_12_20_044834_add_dob_field_to_customers_table', 1),
(75, '2022_12_22_000000_add_expires_at_to_personal_access_tokens_table', 1),
(76, '2023_01_06_052856_create_languages_table', 1),
(77, '2023_01_06_053950_language_table_seeder', 1),
(78, '2023_01_09_103904_add_is_default_to_base_units_table', 1),
(79, '2023_01_09_104123_add_base_unit_default_seeder', 1),
(80, '2023_01_09_112217_change_datatype_base_unit_field_to_units_table', 1),
(81, '2023_06_13_112717_add_pos_register_table', 1),
(82, '2023_06_16_115153_add_new_field_into_sales_table', 1),
(83, '2023_07_07_064405_create_coupon_codes_table', 1),
(84, '2023_07_07_083655_create_coupon_product_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `guard_name` varchar(255) NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage_adjustments', 'Manage Adjustments', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(2, 'manage_transfers', 'Manage Transfers', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(3, 'manage_roles', 'Manage Roles', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(4, 'manage_brands', 'Manage Brands', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(5, 'manage_currency', 'Manage Currency', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(6, 'manage_warehouses', 'Manage Warehouses', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(7, 'manage_units', 'Manage Units', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(8, 'manage_product_categories', 'Manage Product Categories', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(9, 'manage_products', 'Manage Products ', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(10, 'manage_suppliers', 'Manage Suppliers', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(11, 'manage_customers', 'Manage Customers', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(12, 'manage_users', 'Manage Users', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(13, 'manage_expense_categories', 'Manage Expense Categories', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(14, 'manage_expenses', 'Manage Expenses', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(15, 'manage_setting', 'Manage Setting', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(16, 'manage_dashboard', 'Manage Dashboard', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(17, 'manage_pos_screen', 'Manage Pos Screen', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(18, 'manage_purchase', 'Manage Purchase', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(19, 'manage_sale', 'Manage Sale', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(20, 'manage_purchase_return', 'Manage Purchase Return', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(21, 'manage_sale_return', 'Manage Sale Return', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(22, 'manage_email_templates', 'Manage Email Templates', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(23, 'manage_reports', 'Manage Reports', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(24, 'manage_quotations', 'Manage Quotations', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(25, 'manage_sms_templates', 'Manage Sms Templates', 'web', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(26, 'manage_sms_apis', 'Manage Sms Apis', 'web', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(27, 'manage_language', 'Manage Language', 'web', '2023-07-11 05:53:39', '2023-07-11 05:53:39');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token', 'f2bb002f18b8bc913c1f3bdfc8fa3d3b6f050ed3748ab3465c68b39a61fc4944', '[\"*\"]', '2024-09-03 22:30:51', NULL, '2024-09-03 21:52:24', '2024-09-03 22:30:51'),
(4, 'App\\Models\\User', 1, 'token', '57f2e4be0b351da3491ee8d601cf311fe4565262f8cba3ec0caf26db9898640b', '[\"*\"]', '2024-09-03 22:35:44', NULL, '2024-09-03 22:33:12', '2024-09-03 22:35:44'),
(5, 'App\\Models\\User', 1, 'token', '836d0b5b5de9e22081e88f440a6c92a55191bfaf1ca8b9f11b55d35c5255e9f0', '[\"*\"]', '2024-09-03 23:44:39', NULL, '2024-09-03 22:36:26', '2024-09-03 23:44:39'),
(6, 'App\\Models\\User', 2, 'token', '2fa7020ccd3a97fd6742a452d665e7c59403bcb284d4ca8706621a7a0b26e1c1', '[\"*\"]', '2024-09-03 23:27:25', NULL, '2024-09-03 23:26:53', '2024-09-03 23:27:25'),
(7, 'App\\Models\\User', 1, 'token', '05043ba90616f464594ab3c339aa0766bb64754ff843b456b603f5e2fbdc8165', '[\"*\"]', '2024-09-04 01:17:35', NULL, '2024-09-04 00:08:25', '2024-09-04 01:17:35'),
(9, 'App\\Models\\User', 2, 'token', '4efa23c108b0e67b6576e35c4d4f43f887eb9eb3b58014f6dcfa57c46bd885c5', '[\"*\"]', '2024-09-04 01:16:37', NULL, '2024-09-04 01:11:29', '2024-09-04 01:16:37'),
(10, 'App\\Models\\User', 1, 'token', 'ee4f91c6c9501519fe0260d7f33599c959cfa03931b588edeb21addc6414ea69', '[\"*\"]', '2024-09-05 20:56:12', NULL, '2024-09-05 20:55:42', '2024-09-05 20:56:12'),
(24, 'App\\Models\\User', 3, 'token', '3c80e33016b7bc216c2b8fee6e2ba7a77688db7acb16d9c8bf6cb08248a332d2', '[\"*\"]', '2024-09-07 04:47:59', NULL, '2024-09-07 04:12:12', '2024-09-07 04:47:59'),
(29, 'App\\Models\\User', 2, 'token', '2d0ba3c65619dd0afe53a4c25bc091b337c738bd020fcf2fc0b093b76dfe8b10', '[\"*\"]', '2024-09-07 05:26:41', NULL, '2024-09-07 05:18:55', '2024-09-07 05:26:41'),
(30, 'App\\Models\\User', 3, 'token', 'ce8d38ba9237ac93c77468301eae9191393a0cc3bbb552372bbc46cdf4b1b90c', '[\"*\"]', '2024-09-07 06:36:48', NULL, '2024-09-07 06:23:56', '2024-09-07 06:36:48'),
(31, 'App\\Models\\User', 2, 'token', '74c45a3ed49751d5b9a789d5d25068adebfb2a1e6d904ea5114b144405660360', '[\"*\"]', '2024-09-07 06:29:22', NULL, '2024-09-07 06:24:22', '2024-09-07 06:29:22'),
(33, 'App\\Models\\User', 3, 'token', '841e35b91e10c52a23fb4aff7aa5a38ed2af3eba815db6d70c1dd5c81e6347e5', '[\"*\"]', '2024-09-07 19:59:16', NULL, '2024-09-07 18:14:44', '2024-09-07 19:59:16'),
(34, 'App\\Models\\User', 4, 'token', '9a6797bcedf0c5261501813e9b993fe0369a486fe56b19db7016deec90ba1551', '[\"*\"]', '2024-09-07 18:45:44', NULL, '2024-09-07 18:18:28', '2024-09-07 18:45:44'),
(35, 'App\\Models\\User', 4, 'token', '50445991ee74b2afe024ae6dbd0858dc6d80a83516d6e3fa493718576450fe61', '[\"*\"]', '2024-09-07 19:13:35', NULL, '2024-09-07 19:12:30', '2024-09-07 19:13:35'),
(36, 'App\\Models\\User', 4, 'token', '741276f124f741307242f9920a87c7d560e2611e57d89042f342ba85aead0589', '[\"*\"]', '2024-09-08 18:53:19', NULL, '2024-09-08 17:05:08', '2024-09-08 18:53:19'),
(37, 'App\\Models\\User', 3, 'token', '7e3d705e9665cd74b89dc514491bffc01c9a3f58796edb20626bb5277476e991', '[\"*\"]', '2024-09-08 19:28:40', NULL, '2024-09-08 17:28:46', '2024-09-08 19:28:40'),
(38, 'App\\Models\\User', 4, 'token', '2e3912030e70e4fbba4e01657d8a15c781c9df33c9f4d8143b087631b9dfdc25', '[\"*\"]', '2024-09-08 21:12:34', NULL, '2024-09-08 19:25:03', '2024-09-08 21:12:34'),
(39, 'App\\Models\\User', 3, 'token', '60c18a9db5c278245243d1d78467da9c9e477750d2ed13ed07fa19c5173b9417', '[\"*\"]', '2024-09-08 21:29:02', NULL, '2024-09-08 19:29:06', '2024-09-08 21:29:02'),
(40, 'App\\Models\\User', 4, 'token', '19a4c78dfb8c9e8bd96b49c2a372542d73ffff895bd45eb4f9ae99d38e5494ba', '[\"*\"]', '2024-09-08 22:01:51', NULL, '2024-09-08 21:13:12', '2024-09-08 22:01:51'),
(41, 'App\\Models\\User', 3, 'token', '1ea38c553978a59f34e0d7fc255c62b7ba9b899998bc4ba6e5c731ad24655fea', '[\"*\"]', '2024-09-08 22:17:29', NULL, '2024-09-08 21:29:10', '2024-09-08 22:17:29'),
(42, 'App\\Models\\User', 4, 'token', '454429507ca83e6ea30f901aa13fd782c93a3f08c9f5483bd837440bc7bc86b5', '[\"*\"]', '2024-09-08 22:39:31', NULL, '2024-09-08 22:02:06', '2024-09-08 22:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `pos_register`
--

CREATE TABLE `pos_register` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cash_in_hand` double NOT NULL,
  `closed_at` datetime DEFAULT NULL,
  `cash_in_hand_while_closing` double DEFAULT NULL,
  `bank_transfer` double DEFAULT NULL,
  `cheque` double DEFAULT NULL,
  `other` double DEFAULT NULL,
  `total_sale` double DEFAULT NULL,
  `total_return` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_register`
--

INSERT INTO `pos_register` (`id`, `cash_in_hand`, `closed_at`, `cash_in_hand_while_closing`, `bank_transfer`, `cheque`, `other`, `total_sale`, `total_return`, `total_amount`, `notes`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-09-03 21:54:20', '2024-09-03 21:54:20'),
(2, 15000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-09-04 01:13:30', '2024-09-04 01:13:30'),
(3, 5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2024-09-07 03:39:04', '2024-09-07 03:39:04'),
(4, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2024-09-07 04:19:19', '2024-09-07 04:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `barcode_symbol` int(11) NOT NULL DEFAULT 1,
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `product_cost` double NOT NULL,
  `product_price` double NOT NULL,
  `product_unit` varchar(255) NOT NULL,
  `sale_unit` varchar(255) DEFAULT NULL,
  `purchase_unit` varchar(255) DEFAULT NULL,
  `stock_alert` varchar(255) DEFAULT NULL,
  `quantity_limit` varchar(255) DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `tax_type` enum('1','2') DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `barcode_symbol`, `product_category_id`, `brand_id`, `product_cost`, `product_price`, `product_unit`, `sale_unit`, `purchase_unit`, `stock_alert`, `quantity_limit`, `order_tax`, `tax_type`, `notes`, `created_at`, `updated_at`) VALUES
(12, 'Apple peach 25MG', '2002', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:07:02', '2024-09-08 18:07:02'),
(13, 'Blue Razz  Peach 30ml', '5555', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:13:03', '2024-09-08 18:13:03'),
(14, 'Mango Guava 25MG', '123', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:14:22', '2024-09-08 18:14:22'),
(15, 'Mango Peach 25MG', '223', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:15:25', '2024-09-08 18:15:25'),
(16, 'Straw Melon Kiwi 25MG', '444', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:16:39', '2024-09-08 18:16:39'),
(17, 'Passion Lychee 25MG', '43', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:17:50', '2024-09-08 18:17:50'),
(18, 'Lychee Blueberry 25MG', '34', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:18:47', '2024-09-08 18:18:47'),
(19, 'Watermelon Grape 25MG', '23', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:19:28', '2024-09-08 18:19:28'),
(20, 'Kiwi Dragon Fruit 25MG', '4432', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:20:23', '2024-09-08 18:20:23'),
(21, 'Grape Apple 25MG', '65', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:21:52', '2024-09-08 18:21:52'),
(22, 'Mango Peach 50MG', '78', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:23:01', '2024-09-08 18:23:01'),
(23, 'Grape Apple 50MG', '454', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:23:45', '2024-09-08 18:23:45'),
(24, 'Blue Razz  Peach 50MG', '344', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:24:32', '2024-09-08 18:24:32'),
(25, 'Mango Guava 50MG', '76', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:25:13', '2024-09-08 18:25:13'),
(26, 'Passion Lychee 50MG', '233', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:25:59', '2024-09-08 18:25:59'),
(27, 'Apple peach 50MG', '77', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:26:57', '2024-09-08 18:26:57'),
(28, 'Watermelon Grape 50MG', '98', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:27:50', '2024-09-08 18:27:50'),
(29, 'Kiwi Dragon Fruit 50MG', '8787', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:29:13', '2024-09-08 18:29:13'),
(30, 'Lychee Blueberry 50MG', '678', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:30:04', '2024-09-08 18:30:04'),
(31, 'Straw Melon Kiwi 50MG', '767676', 1, 6, 23, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:30:38', '2024-09-08 18:30:38'),
(32, 'Passion Fruit Ice 25MG', '56465', 1, 6, 4, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:34:12', '2024-09-08 18:34:12'),
(33, 'Peach Ice 25MG', '6756', 1, 6, 4, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:34:47', '2024-09-08 18:34:47'),
(34, 'Apple Ice 25MG', '5645', 1, 6, 4, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:35:19', '2024-09-08 18:35:19'),
(35, 'Grape Ice 25MG', '53433', 1, 6, 4, 1750, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:35:55', '2024-09-08 18:35:55'),
(36, 'Dry Tobacco 25MG', '7567', 1, 6, 6, 1800, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:38:25', '2024-09-08 18:38:25'),
(37, 'Berry Bomb Ice 25MG', '5645454', 1, 6, 6, 1800, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:39:13', '2024-09-08 18:39:13'),
(38, 'Mango Bomb Ice 50MG', '756756', 1, 6, 6, 1800, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:39:52', '2024-09-08 18:39:52'),
(39, 'Cubano Silver 50MG', '7896789', 1, 6, 6, 1800, 2800, '1', '1', '1', NULL, '100', NULL, '1', NULL, '2024-09-08 18:40:40', '2024-09-08 18:40:40'),
(40, 'Purple Bomb Ice 50MG', '968978', 1, 6, 6, 1800, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:41:31', '2024-09-08 18:41:31'),
(41, 'Berry Bomb Ice 50MG', '7876876', 1, 6, 6, 1800, 2800, '1', '1', '1', '1', '100', NULL, '1', NULL, '2024-09-08 18:42:42', '2024-09-08 18:42:42'),
(42, 'Ravishing Raspberry Watermelon Ice 35MG', '8768', 1, 6, 7, 1800, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 18:46:28', '2024-09-08 18:46:28'),
(43, 'Wow Watermelon Ice 35MG', '65756', 1, 6, 7, 1800, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 18:47:52', '2024-09-08 18:47:52'),
(44, 'Groovy Grape Cherry Ice 35MG', '857664756', 1, 6, 7, 1800, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 18:48:34', '2024-09-08 18:48:34'),
(45, 'Poppin Peach Raspberry Ice 35MG', '5435345', 1, 6, 7, 1800, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 18:49:13', '2024-09-08 18:49:13'),
(46, 'Bomb Blue Razz 35MG', '6756765', 1, 6, 7, 1800, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 18:49:49', '2024-09-08 18:49:49'),
(47, 'Pretty Passion Fruit Lychee Ice 35MG', '3423432', 1, 6, 7, 1800, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 18:50:37', '2024-09-08 18:50:37'),
(48, 'Beatific Blue Raspberry Lemonade Ice 35MG', '43534534', 1, 6, 7, 1800, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 18:51:30', '2024-09-08 18:51:30'),
(49, 'Bubbly Strawberry Watermelon Ice', '54645654', 1, 6, 7, 1800, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 18:52:21', '2024-09-08 18:52:21'),
(50, 'Mighty Mango Peach Ice 35MG', '1312312', 1, 6, 7, 1800, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 18:52:57', '2024-09-08 18:52:57'),
(51, 'Primo Peach Pear Ice 35MG', '12312312', 1, 6, 7, 1800, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 18:53:33', '2024-09-08 18:53:33'),
(52, 'Best Blue Razz Peach Ice 35MG', '123123123', 1, 6, 7, 1800, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 18:54:25', '2024-09-08 18:54:25'),
(53, 'Gracious Grape Watermelon Ice 35MG', '1231231231', 1, 6, 7, 1800, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 18:55:11', '2024-09-08 18:55:11'),
(54, 'Pretty Passion Fruit Lychee Ice 55MG', '43433', 1, 6, 7, 1800, 2800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 18:56:34', '2024-09-08 18:56:34'),
(55, 'Bubbly Strawberry Watermelon Ice 55MG', '54645645', 1, 6, 7, 1800, 2800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 18:57:11', '2024-09-08 18:57:11'),
(56, 'Bomb Blue Razz 55MG', '43564645', 1, 6, 7, 1800, 2800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 18:57:51', '2024-09-08 18:57:51'),
(57, 'Ravishing Raspberry Watermelon Ice 55MG', '4766765', 1, 6, 7, 1800, 2800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 18:58:22', '2024-09-08 18:58:22'),
(58, 'Wow Watermelon Ice 55MG', '4234234', 1, 6, 7, 1800, 2800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 18:58:50', '2024-09-08 18:58:50'),
(59, 'Gracious Grape Watermelon Ice 55MG', '98987798', 1, 6, 7, 1800, 2800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 18:59:26', '2024-09-08 18:59:26'),
(60, 'Beatific Blue Raspberry Lemonade Ice 55MG', '43534', 1, 6, 7, 1800, 2800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:00:24', '2024-09-08 19:00:24'),
(61, 'Blueberry Raspberry Lemon Ice 35MG', '756765', 1, 6, 8, 1700, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 19:05:35', '2024-09-08 19:05:35'),
(62, 'Mango Black Currant Guava Ice 35MG', '43534543', 1, 6, 8, 1700, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 19:06:44', '2024-09-08 19:06:44'),
(63, 'Watermelon Strawberry Bubblegum Ice 35MG', '5645654', 1, 6, 8, 1700, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 19:07:59', '2024-09-08 19:07:59'),
(64, 'Guava Kiwi Blueberry Ice 35MG', '4764765', 1, 6, 8, 1700, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 19:09:52', '2024-09-08 19:09:52'),
(65, 'Strawberry Pear Ice 35MG', '23423423', 1, 6, 8, 1700, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 19:10:39', '2024-09-08 19:10:39'),
(66, 'Mango Strawberry Lychee Ice 35MG', '365654', 1, 6, 8, 1700, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 19:11:33', '2024-09-08 19:11:33'),
(67, 'Gold Kiwi Iced', '34534534', 1, 6, 10, 1800, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 19:13:55', '2024-09-08 19:13:55'),
(68, 'Mango Iced', '56756756', 1, 6, 10, 1800, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 19:14:29', '2024-09-08 19:14:29'),
(69, 'Iced Passion Fruit 30MG', '35654654', 1, 6, 5, 1800, 2800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:15:48', '2024-09-08 19:15:48'),
(70, 'Iced Cranberry Raspberry 30MG', '645645', 1, 6, 5, 1800, 2800, '1', '1', '1', NULL, NULL, NULL, '1', 'null', '2024-09-08 19:16:31', '2024-09-08 19:26:34'),
(71, 'Iced Passion Fruit 50MG', '67567567', 1, 6, 5, 1800, 2800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:22:47', '2024-09-08 19:22:47'),
(72, 'Guava Peach Kiwi 50Mg', '65756754', 1, 6, 5, 1800, 2800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:24:29', '2024-09-08 19:24:29'),
(73, 'Iced Cranberry Raspberry 50Mg', '5675667', 1, 6, 5, 1800, 2800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:25:45', '2024-09-08 19:25:45'),
(74, 'Guava Ice 50MG', '65756756', 1, 6, 25, 1800, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 19:28:20', '2024-09-08 19:28:20'),
(75, 'Pineapple Ice 50MG', '45645645', 1, 6, 5, 1800, 2800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 19:29:52', '2024-09-08 19:29:52'),
(76, 'Pineapple Ice 35MG', '45654645', 1, 6, 5, 1800, 2800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:30:21', '2024-09-08 19:30:21'),
(77, 'Mango Peach 6MG', '45645654', 1, 7, 23, 2750, 3800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:33:49', '2024-09-08 19:33:49'),
(78, 'Kiwi Dragon Fruit 6MG', '353434', 1, 7, 23, 2750, 3800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:35:15', '2024-09-08 19:35:15'),
(79, 'Passion Lychee 6MG', '675756', 1, 7, 23, 2750, 3800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 19:36:07', '2024-09-08 19:36:07'),
(80, 'Apple Peach 6MG', '66', 1, 7, 23, 2750, 3800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:36:48', '2024-09-08 19:36:48'),
(81, 'Blue Razz Peach 6MG', '34554', 1, 7, 23, 2750, 3800, '1', '1', '1', '1', NULL, NULL, '1', NULL, '2024-09-08 19:37:26', '2024-09-08 19:37:26'),
(82, 'Mango Guava 6MG', '75676', 1, 7, 23, 2750, 3800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:38:39', '2024-09-08 19:38:39'),
(83, 'Grape Apple 6MG', '456456', 1, 7, 23, 2750, 2800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:39:52', '2024-09-08 19:39:52'),
(84, 'Watermelon Grape 6MG', '56756765', 1, 7, 23, 2750, 3800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:41:13', '2024-09-08 19:41:13'),
(85, 'Strawmelon Kiwi 6MG', '7567563', 1, 7, 23, 2750, 3800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:41:53', '2024-09-08 19:41:53'),
(86, 'Grape Apple 3MG', '4645645645', 1, 7, 23, 2750, 3800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:42:58', '2024-09-08 19:42:58'),
(87, 'Apple Peach 3MG', '56565', 1, 7, 23, 2750, 3800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:43:41', '2024-09-08 19:43:41'),
(88, 'Strawmelon Kiwi 3MG', '43445342', 1, 7, 23, 2750, 3800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:44:26', '2024-09-08 19:44:26'),
(89, 'Blue Razz Peach 3MG', '553345', 1, 7, 23, 2750, 3800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:46:34', '2024-09-08 19:46:34'),
(90, 'Watermelon Grape 3MG', '34563453', 1, 7, 23, 2750, 3800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:47:09', '2024-09-08 19:47:09'),
(91, 'Mango Peach 3MG', '3452342', 1, 7, 23, 2750, 3800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:47:38', '2024-09-08 19:47:38'),
(92, 'Peach 3MG', '345345', 1, 7, 9, 3500, 4500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:51:10', '2024-09-08 19:51:10'),
(93, 'Blueberry Lemonade 0MG', '34543534', 1, 7, 9, 3500, 4500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:52:17', '2024-09-08 19:52:17'),
(94, 'Juicy Mango Strawberry 3MG', '35654645', 1, 7, 9, 3500, 4500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:53:01', '2024-09-08 19:53:01'),
(95, 'Mango Ice 0MG', '34534', 1, 7, 16, 2500, 3800, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 19:55:56', '2024-09-08 19:55:56'),
(96, 'Watermelon Ice 3%', '465645645', 1, 12, 15, 750, 1100, '1', '1', '1', '25', NULL, NULL, '1', NULL, '2024-09-08 20:02:24', '2024-09-08 20:02:24'),
(97, 'Passion Fruit 3%', '32453423', 1, 12, 15, 750, 1100, '1', '1', '1', '8', NULL, NULL, '1', NULL, '2024-09-08 20:03:25', '2024-09-08 20:03:25'),
(98, 'Fresh Peach 3%', '4534534534', 1, 12, 15, 750, 1100, '1', '1', '1', '8', NULL, NULL, '1', NULL, '2024-09-08 20:04:33', '2024-09-08 20:04:33'),
(99, 'Tangy Grape 3%', '43543534', 1, 12, 15, 750, 1100, '1', '1', '1', '8', NULL, NULL, '1', NULL, '2024-09-08 20:05:30', '2024-09-08 20:05:30'),
(100, 'Dark Sparkle', '35634543', 1, 12, 15, 750, 1100, '1', '1', '1', '8', NULL, NULL, '1', NULL, '2024-09-08 20:06:24', '2024-09-08 20:06:24'),
(101, 'Honey Dew Melon 3%', '5345354', 1, 12, 15, 750, 1100, '1', '1', '1', '8', NULL, NULL, '1', NULL, '2024-09-08 20:07:16', '2024-09-08 20:07:16'),
(102, 'Blueberry Splash 3%', '6456456', 1, 12, 15, 750, 1100, '1', '1', '1', '8', NULL, NULL, '1', NULL, '2024-09-08 20:07:54', '2024-09-08 20:07:54'),
(103, 'Rich Tobacco 5%', '5645645', 1, 12, 15, 750, 1100, '1', '1', '1', '8', NULL, NULL, '1', NULL, '2024-09-08 20:09:00', '2024-09-08 20:09:00'),
(104, 'Blue Raspberry Lemon 8000 Puff 50MG', '3534534', 1, 5, 11, 1700, 3500, '1', '1', '1', '3', NULL, NULL, '1', 'null', '2024-09-08 20:11:00', '2024-09-08 20:13:37'),
(105, 'Grape Blackberry 8000 Puff 50MG', '435345345', 1, 5, 11, 1700, 3500, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:12:50', '2024-09-08 20:12:50'),
(106, 'Pineapple Coconut Rum 8000 Puff 50MG', '24234234', 1, 5, 11, 1700, 3500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 20:15:17', '2024-09-08 20:15:17'),
(107, 'Peach Snow Pear 8000 Puff 50MG', '42332234', 1, 5, 11, 1700, 3500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 20:16:07', '2024-09-08 20:16:07'),
(108, 'Passion Fruit Guava 8000 Puff 50MG', '34543543', 1, 5, 11, 1700, 3500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 20:16:58', '2024-09-08 20:16:58'),
(109, 'Blueberry Cotton Candy Ice 35MG', '345345345', 1, 5, 24, 2400, 3800, '1', '1', '1', '5', NULL, NULL, '1', NULL, '2024-09-08 20:19:02', '2024-09-08 20:19:02'),
(110, 'Fashion Fruit lychee Ice 35MG', '2543534', 1, 5, 24, 2400, 3800, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:20:06', '2024-09-08 20:20:06'),
(111, 'Guava Ice 35MG', '234234234', 1, 5, 24, 2400, 3800, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:20:59', '2024-09-08 20:20:59'),
(112, 'Watermelon Cotton Candy Ice 35MG', '234523423', 1, 5, 24, 2400, 3800, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:21:56', '2024-09-08 20:21:56'),
(113, 'Berry lemonade Ice 50MG', '5345345', 1, 5, 12, 2100, 3300, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:23:33', '2024-09-08 20:23:33'),
(114, 'Ruby Guava Ice 50MG', '24324324', 1, 5, 12, 2100, 3300, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:24:17', '2024-09-08 20:24:17'),
(115, 'Mango lychee Ice 50MG', '45654654', 1, 5, 12, 2100, 3300, '1', '1', '1', '8', NULL, NULL, '1', NULL, '2024-09-08 20:26:57', '2024-09-08 20:26:57'),
(116, 'Passion Fruit Ice 20MG', '34534543', 1, 5, 12, 2100, 3300, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:28:25', '2024-09-08 20:28:25'),
(117, 'Kiwi Passion Fruit Guava Ice 20MG', '35345345', 1, 5, 12, 2100, 3300, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:29:25', '2024-09-08 20:29:25'),
(118, 'Watermelon Ice 20MG', '52435345', 1, 5, 12, 2100, 3300, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:29:57', '2024-09-08 20:29:57'),
(119, 'Aloe Grape Ice 20MG', '23423432', 1, 5, 12, 2100, 3300, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:30:34', '2024-09-08 20:30:34'),
(120, 'Berry lemonade Ice 20MG', '35435345', 1, 5, 12, 2100, 3300, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:31:22', '2024-09-08 20:31:22'),
(121, 'Strawberry Watermelon Ice 20MG', '4534534', 1, 5, 12, 2100, 3300, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:32:18', '2024-09-08 20:32:18'),
(122, 'Ruby Guava Ice 20MG', '3123', 1, 5, 12, 2100, 3300, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:33:07', '2024-09-08 20:33:07'),
(123, 'Blue Kiwi Ice 5%', '324324234', 1, 5, 14, 2400, 3500, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:40:06', '2024-09-08 20:40:06'),
(124, 'Fresh Mint 5%', '4543543', 1, 5, 14, 2400, 3500, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:40:46', '2024-09-08 20:40:46'),
(125, 'Cucumber Mint 5%', '4534543', 1, 5, 14, 2400, 3500, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:41:41', '2024-09-08 20:41:41'),
(126, 'Straw Kiwi Ice 5%', '3232', 1, 5, 14, 2400, 3500, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:42:36', '2024-09-08 20:42:36'),
(127, 'Grapple 5%', '45', 1, 5, 14, 2400, 3500, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:43:23', '2024-09-08 20:43:23'),
(128, 'Straw Melon 5%', '23432432', 1, 5, 14, 2400, 3500, '1', '1', '1', '4', NULL, NULL, '1', NULL, '2024-09-08 20:43:54', '2024-09-08 20:43:54'),
(129, 'Kiwi Dragon Berry 5%', '32423', 1, 5, 13, 2800, 6000, '1', '1', '1', '2', NULL, NULL, '1', NULL, '2024-09-08 20:45:19', '2024-09-08 20:45:19'),
(130, 'Arctic Icy 5%', '43543543', 1, 5, 13, 2800, 6000, '1', '1', '1', '2', NULL, NULL, '1', NULL, '2024-09-08 20:46:25', '2024-09-08 20:46:25'),
(131, 'Dragon Fruit Berries 5%', '66545', 1, 5, 13, 2800, 6000, '1', '1', '1', '2', NULL, NULL, '1', NULL, '2024-09-08 20:47:07', '2024-09-08 20:47:07'),
(132, 'Blueberry Watermelon 5%', '7686', 1, 5, 13, 2800, 6000, '1', '1', '1', '2', NULL, NULL, '1', NULL, '2024-09-08 20:48:34', '2024-09-08 20:48:34'),
(133, 'Eco Nano Universal Gray', '456456456', 1, 8, 17, 2900, 4500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 20:51:17', '2024-09-08 20:51:17'),
(134, 'Eco Nano Kit -Black Truffle', '32432432', 1, 8, 17, 2900, 4500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 20:53:55', '2024-09-08 20:53:55'),
(135, 'Eco Nano Kit -Midnight Black', '6546456', 1, 8, 17, 2900, 4500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 20:54:42', '2024-09-08 20:54:42'),
(136, 'Eco Nano Kit -Phantom Blue', '4234', 1, 8, 17, 2900, 4500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 20:55:47', '2024-09-08 20:55:47'),
(137, 'Eco Nano Mesh Pod 0.8', '34234', 1, 10, 17, 650, 1000, '1', '1', '1', '8', NULL, NULL, '1', NULL, '2024-09-08 20:59:34', '2024-09-08 20:59:34'),
(138, 'Eco Nano Mesh Pod 1.2', '32423432', 1, 10, 17, 650, 1000, '1', '1', '1', '8', NULL, NULL, '1', NULL, '2024-09-08 21:00:31', '2024-09-08 21:00:31'),
(139, 'Wenax Q Pod Kit-Black', '234', 1, 8, 21, 3800, 6000, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 21:02:08', '2024-09-08 21:02:08'),
(140, 'Wenax Q Pod Kit-Cobalt Blue', '2342423', 1, 8, 21, 3800, 6000, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 21:03:08', '2024-09-08 21:03:08'),
(141, 'Wenax Q Pod Kit-Gradient Dark', '543534', 1, 8, 21, 3800, 6000, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 21:04:03', '2024-09-08 21:04:03'),
(142, 'Cartridge 0.8', '55454', 1, 10, 21, 550, 900, '1', '1', '1', '14', NULL, NULL, '1', NULL, '2024-09-08 21:05:36', '2024-09-08 21:05:36'),
(143, 'Xros Pro Kit -Black', '353543', 1, 8, 17, 5800, 7500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 21:07:51', '2024-09-08 21:07:51'),
(144, 'Xros Pro Kit -Blue', '434', 1, 8, 17, 5800, 7500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 21:08:51', '2024-09-08 21:08:51'),
(145, 'Xros Pro Kit -Sliver', '23343', 1, 8, 17, 5800, 7500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 21:09:25', '2024-09-08 21:09:25'),
(146, 'Xros Pro Series Mesh POD 3ML 0.4', '2131231', 1, 10, 17, 550, 900, '1', '1', '1', '18', NULL, NULL, '1', NULL, '2024-09-08 21:11:34', '2024-09-08 21:11:34'),
(147, 'Xros 3 Series Mesh POD 3ML 0.6', '9798', 1, 10, 17, 550, 900, '1', '1', '1', '19', NULL, NULL, '1', NULL, '2024-09-08 21:12:26', '2024-09-08 21:12:26'),
(148, 'Xros Mesh POD 03ML 0.7', '989898', 1, 9, 17, 550, 900, '1', '1', '1', '19', NULL, NULL, '1', NULL, '2024-09-08 21:14:44', '2024-09-08 21:14:44'),
(149, 'Luke X Pro Kit -Black', '6757676', 1, 9, 17, 7500, 9700, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 21:16:16', '2024-09-08 21:16:16'),
(150, 'Luke X Pro Kit -Gunmetal Lime', '7967868', 1, 9, 17, 7500, 9700, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 21:17:09', '2024-09-08 21:17:09'),
(151, 'Luke X Mesh Pod 5ML 0.4', '766', 1, 10, 17, 650, 1000, '1', '1', '1', '9', NULL, NULL, '1', NULL, '2024-09-08 21:20:08', '2024-09-08 21:20:08'),
(152, 'Luke X Mesh Pod 5ML 0.8', '3453456546', 1, 10, 17, 650, 1000, '1', '1', '1', '9', NULL, NULL, '1', NULL, '2024-09-08 21:21:39', '2024-09-08 21:21:39'),
(153, 'Luke Q Mesh POD OHM 0.6', '656645645', 1, 10, 17, 550, 800, '1', '1', '1', '10', NULL, NULL, '1', NULL, '2024-09-08 21:23:10', '2024-09-08 21:23:10'),
(154, 'VOOPOO VMATE TOP FILL CARTIDGE 03ML  OHM 0.4', '657657', 1, 10, 19, 600, 900, '1', '1', '1', '9', NULL, NULL, '1', NULL, '2024-09-08 21:25:12', '2024-09-08 21:25:12'),
(155, 'VOOPOO VMATE TOP FILL CARTIDGE 03ML  OHM 0.7', '867867', 1, 10, 19, 600, 900, '1', '1', '1', '9', NULL, NULL, '1', NULL, '2024-09-08 21:26:37', '2024-09-08 21:26:37'),
(156, 'VOOPOO ARGUS TOP FILL CARTIDGE 03ML OHM 0.7', '46456', 1, 10, 19, 600, 900, '1', '1', '1', '14', NULL, NULL, '1', NULL, '2024-09-08 21:28:03', '2024-09-08 21:28:03'),
(157, 'VOOPOO ARGUS TOP FILL CARTIDGE 03ML OHM 0.4', '46765765', 1, 10, 19, 600, 900, '1', '1', '1', '14', NULL, NULL, '1', NULL, '2024-09-08 21:30:51', '2024-09-08 21:30:51'),
(158, 'Argus E40 -Spray Black', '242323', 1, 9, 19, 6300, 8500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 21:34:41', '2024-09-08 21:34:41'),
(159, 'Argus E40 -Sky Blue', '9079878', 1, 9, 19, 6300, 8500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 21:36:09', '2024-09-08 21:36:09'),
(160, 'Nord 4 Kit -Red', '46765756', 1, 9, 26, 6600, 8500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 21:37:50', '2024-09-08 21:37:50'),
(161, 'Nord 4 Kit -Brown', '3543534', 1, 9, 26, 6600, 8500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 21:38:42', '2024-09-08 21:38:42'),
(162, 'LUXE XR MAX KIT -Gray', '7826348723', 1, 9, 17, 8500, 1100, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 21:41:07', '2024-09-08 21:41:07'),
(163, 'LUXE XR MAX KIT -Blue', '7562342', 1, 9, 17, 8500, 1100, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 21:41:53', '2024-09-08 21:41:53'),
(164, 'Oneo Pod 0.8', '45645', 1, 10, 18, 600, 1000, '1', '1', '1', '14', NULL, NULL, '1', NULL, '2024-09-08 21:43:48', '2024-09-08 21:43:48'),
(165, 'Oneo Pod 0.6', '87878', 1, 10, 18, 600, 1000, '1', '1', '1', '14', NULL, NULL, '1', NULL, '2024-09-08 21:44:44', '2024-09-08 21:44:44'),
(166, 'U Pod  0.7', '9876786', 1, 10, 21, 600, 900, '1', '1', '1', '14', NULL, NULL, '1', NULL, '2024-09-08 21:46:38', '2024-09-08 21:46:38'),
(167, 'E 40 Pod 0.45', '986876', 1, 10, 19, 700, 1000, '1', '1', '1', '14', NULL, NULL, '1', NULL, '2024-09-08 21:47:53', '2024-09-08 21:47:53'),
(168, 'Zeus Coil 0.2', '9867', 1, 10, 21, 600, 900, '1', '1', '1', '9', NULL, NULL, '1', NULL, '2024-09-08 21:49:45', '2024-09-08 21:49:45'),
(169, 'Xlim Pod 0.4', '866756', 1, 10, 18, 616, 900, '1', '1', '1', '29', NULL, NULL, '1', NULL, '2024-09-08 21:50:45', '2024-09-08 21:50:45'),
(170, 'RPM  2 Coil 0.6', '5675675', 1, 10, 26, 600, 1000, '1', '1', '1', '9', NULL, NULL, '1', NULL, '2024-09-08 21:51:55', '2024-09-08 21:51:55'),
(171, 'A3 Pod 1.0', '67543', 1, 10, 20, 600, 900, '1', '1', '1', '10', NULL, NULL, '1', NULL, '2024-09-08 21:53:44', '2024-09-08 21:53:44'),
(172, 'Ak3 Pod Kit -Silver', '7867867', 1, 8, 20, 3600, 6000, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 21:55:04', '2024-09-08 21:55:04'),
(173, 'Ak3 Pod Kit -Gray', '98765', 1, 8, 20, 3600, 6000, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 21:55:45', '2024-09-08 21:55:45'),
(174, 'Arbitter 2 RTA - Gun Metal', '23434543', 1, 10, 18, 4500, 6500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 21:59:45', '2024-09-08 21:59:45'),
(175, 'Arbitter 2 RTA - Black', '23534654', 1, 10, 18, 4500, 6500, '1', '1', '1', NULL, NULL, NULL, '1', NULL, '2024-09-08 22:00:26', '2024-09-08 22:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(5, 'DISPOSABLE', '2024-09-08 17:52:36', '2024-09-08 17:52:36'),
(6, 'E LIQUID 30ML', '2024-09-08 17:52:49', '2024-09-08 17:52:49'),
(7, 'E LIQUID 100ML', '2024-09-08 17:52:59', '2024-09-08 17:52:59'),
(8, 'POD KIT', '2024-09-08 17:53:20', '2024-09-08 17:53:20'),
(9, 'POD MOD', '2024-09-08 17:53:35', '2024-09-08 17:53:35'),
(10, 'ACCESSORIES', '2024-09-08 17:53:53', '2024-09-08 17:53:53'),
(11, 'COTTON', '2024-09-08 17:54:20', '2024-09-08 17:54:20'),
(12, 'Pre Filled Pod', '2024-09-08 19:59:10', '2024-09-08 19:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `received_amount` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `date`, `supplier_id`, `warehouse_id`, `tax_rate`, `tax_amount`, `discount`, `shipping`, `grand_total`, `received_amount`, `paid_amount`, `payment_type`, `status`, `notes`, `reference_code`, `created_at`, `updated_at`) VALUES
(13, '2024-09-08', 5, 1, 0, 0, 0, 0, 5250, NULL, NULL, 0, 1, NULL, 'PU_11113', '2024-09-08 18:07:03', '2024-09-08 18:07:03'),
(14, '2024-09-08', 5, 1, 0, 0, 0, 0, 5250, NULL, NULL, 0, 1, NULL, 'PU_11114', '2024-09-08 18:13:03', '2024-09-08 18:13:03'),
(15, '2024-09-08', 5, 1, 0, 0, 0, 0, 5250, NULL, NULL, 0, 1, NULL, 'PU_11115', '2024-09-08 18:14:22', '2024-09-08 18:14:22'),
(16, '2024-09-08', 5, 1, 0, 0, 0, 0, 5250, NULL, NULL, 0, 1, NULL, 'PU_11116', '2024-09-08 18:15:25', '2024-09-08 18:15:25'),
(17, '2024-09-08', 5, 1, 0, 0, 0, 0, 5250, NULL, NULL, 0, 1, NULL, 'PU_11117', '2024-09-08 18:16:39', '2024-09-08 18:16:39'),
(18, '2024-09-08', 5, 1, 0, 0, 0, 0, 5250, NULL, NULL, 0, 1, NULL, 'PU_11118', '2024-09-08 18:17:50', '2024-09-08 18:17:50'),
(19, '2024-09-08', 5, 1, 0, 0, 0, 0, 5250, NULL, NULL, 0, 1, NULL, 'PU_11119', '2024-09-08 18:18:47', '2024-09-08 18:18:47'),
(20, '2024-09-08', 5, 1, 0, 0, 0, 0, 5250, NULL, NULL, 0, 1, NULL, 'PU_11120', '2024-09-08 18:19:28', '2024-09-08 18:19:28'),
(21, '2024-09-08', 5, 1, 0, 0, 0, 0, 5250, NULL, NULL, 0, 1, NULL, 'PU_11121', '2024-09-08 18:20:23', '2024-09-08 18:20:23'),
(22, '2024-09-08', 5, 1, 0, 0, 0, 0, 5250, NULL, NULL, 0, 1, NULL, 'PU_11122', '2024-09-08 18:21:52', '2024-09-08 18:21:52'),
(23, '2024-09-08', 5, 1, 0, 0, 0, 0, 3500, NULL, NULL, 0, 1, NULL, 'PU_11123', '2024-09-08 18:23:01', '2024-09-08 18:23:01'),
(24, '2024-09-08', 5, 1, 0, 0, 0, 0, 3500, NULL, NULL, 0, 1, NULL, 'PU_11124', '2024-09-08 18:23:45', '2024-09-08 18:23:45'),
(25, '2024-09-08', 5, 1, 0, 0, 0, 0, 3500, NULL, NULL, 0, 1, NULL, 'PU_11125', '2024-09-08 18:24:32', '2024-09-08 18:24:32'),
(26, '2024-09-08', 5, 1, 0, 0, 0, 0, 3500, NULL, NULL, 0, 1, NULL, 'PU_11126', '2024-09-08 18:25:13', '2024-09-08 18:25:13'),
(27, '2024-09-08', 5, 1, 0, 0, 0, 0, 3500, NULL, NULL, 0, 1, NULL, 'PU_11127', '2024-09-08 18:25:59', '2024-09-08 18:25:59'),
(28, '2024-09-08', 5, 1, 0, 0, 0, 0, 3500, NULL, NULL, 0, 1, NULL, 'PU_11128', '2024-09-08 18:26:57', '2024-09-08 18:26:57'),
(29, '2024-09-08', 5, 1, 0, 0, 0, 0, 3500, NULL, NULL, 0, 1, NULL, 'PU_11129', '2024-09-08 18:27:50', '2024-09-08 18:27:50'),
(30, '2024-09-08', 5, 1, 0, 0, 0, 0, 3500, NULL, NULL, 0, 1, NULL, 'PU_11130', '2024-09-08 18:29:13', '2024-09-08 18:29:13'),
(31, '2024-09-08', 5, 1, 0, 0, 0, 0, 3500, NULL, NULL, 0, 1, NULL, 'PU_11131', '2024-09-08 18:30:04', '2024-09-08 18:30:04'),
(32, '2024-09-08', 5, 1, 0, 0, 0, 0, 3500, NULL, NULL, 0, 1, NULL, 'PU_11132', '2024-09-08 18:30:38', '2024-09-08 18:30:38'),
(33, '2024-09-08', 5, 1, 0, 0, 0, 0, 3500, NULL, NULL, 0, 1, NULL, 'PU_11133', '2024-09-08 18:34:12', '2024-09-08 18:34:12'),
(34, '2024-09-08', 5, 1, 0, 0, 0, 0, 3500, NULL, NULL, 0, 1, NULL, 'PU_11134', '2024-09-08 18:34:47', '2024-09-08 18:34:47'),
(35, '2024-09-08', 5, 1, 0, 0, 0, 0, 3500, NULL, NULL, 0, 1, NULL, 'PU_11135', '2024-09-08 18:35:19', '2024-09-08 18:35:19'),
(36, '2024-09-08', 5, 1, 0, 0, 0, 0, 3500, NULL, NULL, 0, 1, NULL, 'PU_11136', '2024-09-08 18:35:55', '2024-09-08 18:35:55'),
(37, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11137', '2024-09-08 18:38:25', '2024-09-08 18:38:25'),
(38, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11138', '2024-09-08 18:39:13', '2024-09-08 18:39:13'),
(39, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11139', '2024-09-08 18:39:52', '2024-09-08 18:39:52'),
(40, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11140', '2024-09-08 18:40:40', '2024-09-08 18:40:40'),
(41, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11141', '2024-09-08 18:41:31', '2024-09-08 18:41:31'),
(42, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11142', '2024-09-08 18:42:42', '2024-09-08 18:42:42'),
(43, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11143', '2024-09-08 18:46:28', '2024-09-08 18:46:28'),
(44, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11144', '2024-09-08 18:47:52', '2024-09-08 18:47:52'),
(45, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11145', '2024-09-08 18:48:34', '2024-09-08 18:48:34'),
(46, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11146', '2024-09-08 18:49:13', '2024-09-08 18:49:13'),
(47, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11147', '2024-09-08 18:49:49', '2024-09-08 18:49:49'),
(48, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11148', '2024-09-08 18:50:37', '2024-09-08 18:50:37'),
(49, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11149', '2024-09-08 18:51:30', '2024-09-08 18:51:30'),
(50, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11150', '2024-09-08 18:52:21', '2024-09-08 18:52:21'),
(51, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11151', '2024-09-08 18:52:57', '2024-09-08 18:52:57'),
(52, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11152', '2024-09-08 18:53:33', '2024-09-08 18:53:33'),
(53, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11153', '2024-09-08 18:54:25', '2024-09-08 18:54:25'),
(54, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11154', '2024-09-08 18:55:11', '2024-09-08 18:55:11'),
(55, '2024-09-08', 5, 1, 0, 0, 0, 0, 1800, NULL, NULL, 0, 1, NULL, 'PU_11155', '2024-09-08 18:56:34', '2024-09-08 18:56:34'),
(56, '2024-09-08', 5, 1, 0, 0, 0, 0, 1800, NULL, NULL, 0, 1, NULL, 'PU_11156', '2024-09-08 18:57:11', '2024-09-08 18:57:11'),
(57, '2024-09-08', 5, 1, 0, 0, 0, 0, 1800, NULL, NULL, 0, 1, NULL, 'PU_11157', '2024-09-08 18:57:51', '2024-09-08 18:57:51'),
(58, '2024-09-08', 5, 1, 0, 0, 0, 0, 1800, NULL, NULL, 0, 1, NULL, 'PU_11158', '2024-09-08 18:58:22', '2024-09-08 18:58:22'),
(59, '2024-09-08', 5, 1, 0, 0, 0, 0, 1800, NULL, NULL, 0, 1, NULL, 'PU_11159', '2024-09-08 18:58:50', '2024-09-08 18:58:50'),
(60, '2024-09-08', 5, 1, 0, 0, 0, 0, 1800, NULL, NULL, 0, 1, NULL, 'PU_11160', '2024-09-08 18:59:26', '2024-09-08 18:59:26'),
(61, '2024-09-08', 5, 1, 0, 0, 0, 0, 1800, NULL, NULL, 0, 1, NULL, 'PU_11161', '2024-09-08 19:00:24', '2024-09-08 19:00:24'),
(62, '2024-09-08', 5, 1, 0, 0, 0, 0, 3400, NULL, NULL, 0, 1, NULL, 'PU_11162', '2024-09-08 19:05:35', '2024-09-08 19:05:35'),
(63, '2024-09-08', 5, 1, 0, 0, 0, 0, 3400, NULL, NULL, 0, 1, NULL, 'PU_11163', '2024-09-08 19:06:44', '2024-09-08 19:06:44'),
(64, '2024-09-08', 5, 1, 0, 0, 0, 0, 3400, NULL, NULL, 0, 1, NULL, 'PU_11164', '2024-09-08 19:07:59', '2024-09-08 19:07:59'),
(65, '2024-09-08', 5, 1, 0, 0, 0, 0, 3400, NULL, NULL, 0, 1, NULL, 'PU_11165', '2024-09-08 19:09:53', '2024-09-08 19:09:53'),
(66, '2024-09-08', 5, 1, 0, 0, 0, 0, 3400, NULL, NULL, 0, 1, NULL, 'PU_11166', '2024-09-08 19:10:39', '2024-09-08 19:10:39'),
(67, '2024-09-08', 5, 1, 0, 0, 0, 0, 3400, NULL, NULL, 0, 1, NULL, 'PU_11167', '2024-09-08 19:11:33', '2024-09-08 19:11:33'),
(68, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11168', '2024-09-08 19:13:55', '2024-09-08 19:13:55'),
(69, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11169', '2024-09-08 19:14:29', '2024-09-08 19:14:29'),
(70, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11170', '2024-09-08 19:15:48', '2024-09-08 19:21:34'),
(71, '2024-09-08', 5, 1, 0, 0, 0, 0, 1800, NULL, NULL, 0, 1, NULL, 'PU_11171', '2024-09-08 19:16:31', '2024-09-08 19:16:31'),
(72, '2024-09-08', 5, 1, 0, 0, 0, 0, 1800, NULL, NULL, 0, 1, NULL, 'PU_11172', '2024-09-08 19:22:47', '2024-09-08 19:22:47'),
(73, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11173', '2024-09-08 19:24:29', '2024-09-08 19:24:29'),
(74, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11174', '2024-09-08 19:25:45', '2024-09-08 19:25:45'),
(75, '2024-09-08', 5, 1, 0, 0, 0, 0, 5400, NULL, NULL, 0, 1, NULL, 'PU_11175', '2024-09-08 19:28:21', '2024-09-08 19:28:21'),
(76, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_11176', '2024-09-08 19:29:52', '2024-09-08 19:29:52'),
(77, '2024-09-08', 5, 1, 0, 0, 0, 0, 1800, NULL, NULL, 0, 1, NULL, 'PU_11177', '2024-09-08 19:30:21', '2024-09-08 19:30:21'),
(78, '2024-09-08', 5, 1, 0, 0, 0, 0, 2750, NULL, NULL, 0, 1, NULL, 'PU_11178', '2024-09-08 19:33:49', '2024-09-08 19:33:49'),
(79, '2024-09-08', 5, 1, 0, 0, 0, 0, 2750, NULL, NULL, 0, 1, NULL, 'PU_11179', '2024-09-08 19:35:15', '2024-09-08 19:35:15'),
(80, '2024-09-08', 5, 1, 0, 0, 0, 0, 2750, NULL, NULL, 0, 1, NULL, 'PU_11180', '2024-09-08 19:36:07', '2024-09-08 19:36:07'),
(81, '2024-09-08', 5, 1, 0, 0, 0, 0, 2750, NULL, NULL, 0, 1, NULL, 'PU_11181', '2024-09-08 19:36:48', '2024-09-08 19:36:48'),
(82, '2024-09-08', 5, 1, 0, 0, 0, 0, 2750, NULL, NULL, 0, 1, NULL, 'PU_11182', '2024-09-08 19:37:26', '2024-09-08 19:37:26'),
(83, '2024-09-08', 5, 1, 0, 0, 0, 0, 2750, NULL, NULL, 0, 1, NULL, 'PU_11183', '2024-09-08 19:38:39', '2024-09-08 19:38:39'),
(84, '2024-09-08', 5, 1, 0, 0, 0, 0, 2750, NULL, NULL, 0, 1, NULL, 'PU_11184', '2024-09-08 19:39:52', '2024-09-08 19:39:52'),
(85, '2024-09-08', 5, 1, 0, 0, 0, 0, 2750, NULL, NULL, 0, 1, NULL, 'PU_11185', '2024-09-08 19:41:13', '2024-09-08 19:41:13'),
(86, '2024-09-08', 5, 1, 0, 0, 0, 0, 2750, NULL, NULL, 0, 1, NULL, 'PU_11186', '2024-09-08 19:41:53', '2024-09-08 19:41:53'),
(87, '2024-09-08', 5, 1, 0, 0, 0, 0, 2750, NULL, NULL, 0, 1, NULL, 'PU_11187', '2024-09-08 19:42:58', '2024-09-08 19:42:58'),
(88, '2024-09-08', 5, 1, 0, 0, 0, 0, 2750, NULL, NULL, 0, 1, NULL, 'PU_11188', '2024-09-08 19:43:42', '2024-09-08 19:43:42'),
(89, '2024-09-08', 5, 1, 0, 0, 0, 0, 2750, NULL, NULL, 0, 1, NULL, 'PU_11189', '2024-09-08 19:44:26', '2024-09-08 19:44:26'),
(90, '2024-09-08', 5, 1, 0, 0, 0, 0, 2750, NULL, NULL, 0, 1, NULL, 'PU_11190', '2024-09-08 19:46:34', '2024-09-08 19:46:34'),
(91, '2024-09-08', 5, 1, 0, 0, 0, 0, 2750, NULL, NULL, 0, 1, NULL, 'PU_11191', '2024-09-08 19:47:09', '2024-09-08 19:47:10'),
(92, '2024-09-08', 5, 1, 0, 0, 0, 0, 2750, NULL, NULL, 0, 1, NULL, 'PU_11192', '2024-09-08 19:47:38', '2024-09-08 19:47:38'),
(93, '2024-09-08', 6, 1, 0, 0, 0, 0, 7000, NULL, NULL, 0, 1, NULL, 'PU_11193', '2024-09-08 19:51:10', '2024-09-08 19:51:10'),
(94, '2024-09-08', 6, 1, 0, 0, 0, 0, 7000, NULL, NULL, 0, 1, NULL, 'PU_11194', '2024-09-08 19:52:17', '2024-09-08 19:52:17'),
(95, '2024-09-08', 6, 1, 0, 0, 0, 0, 7000, NULL, NULL, 0, 1, NULL, 'PU_11195', '2024-09-08 19:53:01', '2024-09-08 19:53:01'),
(96, '2024-09-08', 6, 1, 0, 0, 0, 0, 5000, NULL, NULL, 0, 1, NULL, 'PU_11196', '2024-09-08 19:55:56', '2024-09-08 19:55:56'),
(97, '2024-09-08', 4, 1, 0, 0, 0, 0, 22500, NULL, NULL, 0, 1, NULL, 'PU_11197', '2024-09-08 20:02:24', '2024-09-08 20:02:24'),
(98, '2024-09-08', 4, 1, 0, 0, 0, 0, 7500, NULL, NULL, 0, 1, NULL, 'PU_11198', '2024-09-08 20:03:25', '2024-09-08 20:03:25'),
(99, '2024-09-08', 4, 1, 0, 0, 0, 0, 7500, NULL, NULL, 0, 1, NULL, 'PU_11199', '2024-09-08 20:04:33', '2024-09-08 20:04:33'),
(100, '2024-09-08', 4, 1, 0, 0, 0, 0, 7500, NULL, NULL, 0, 1, NULL, 'PU_111100', '2024-09-08 20:05:30', '2024-09-08 20:05:30'),
(101, '2024-09-08', 4, 1, 0, 0, 0, 0, 7500, NULL, NULL, 0, 1, NULL, 'PU_111101', '2024-09-08 20:06:24', '2024-09-08 20:06:24'),
(102, '2024-09-08', 4, 1, 0, 0, 0, 0, 7500, NULL, NULL, 0, 1, NULL, 'PU_111102', '2024-09-08 20:07:16', '2024-09-08 20:07:16'),
(103, '2024-09-08', 4, 1, 0, 0, 0, 0, 7500, NULL, NULL, 0, 1, NULL, 'PU_111103', '2024-09-08 20:07:54', '2024-09-08 20:07:54'),
(104, '2024-09-08', 4, 1, 0, 0, 0, 0, 7500, NULL, NULL, 0, 1, NULL, 'PU_111104', '2024-09-08 20:09:00', '2024-09-08 20:09:00'),
(105, '2024-09-08', 5, 1, 0, 0, 0, 0, 8500, NULL, NULL, 0, 1, NULL, 'PU_111105', '2024-09-08 20:11:01', '2024-09-08 20:11:01'),
(106, '2024-09-08', 5, 1, 0, 0, 0, 0, 8500, NULL, NULL, 0, 1, NULL, 'PU_111106', '2024-09-08 20:12:50', '2024-09-08 20:12:50'),
(107, '2024-09-08', 5, 1, 0, 0, 0, 0, 3400, NULL, NULL, 0, 1, NULL, 'PU_111107', '2024-09-08 20:15:17', '2024-09-08 20:15:17'),
(108, '2024-09-08', 5, 1, 0, 0, 0, 0, 8500, NULL, NULL, 0, 1, NULL, 'PU_111108', '2024-09-08 20:16:07', '2024-09-08 20:16:07'),
(109, '2024-09-08', 5, 1, 0, 0, 0, 0, 8500, NULL, NULL, 0, 1, NULL, 'PU_111109', '2024-09-08 20:16:58', '2024-09-08 20:16:58'),
(110, '2024-09-08', 5, 1, 0, 0, 0, 0, 12000, NULL, NULL, 0, 1, NULL, 'PU_111110', '2024-09-08 20:19:02', '2024-09-08 20:19:02'),
(111, '2024-09-08', 5, 1, 0, 0, 0, 0, 12000, NULL, NULL, 0, 1, NULL, 'PU_111111', '2024-09-08 20:20:06', '2024-09-08 20:20:06'),
(112, '2024-09-08', 5, 1, 0, 0, 0, 0, 12000, NULL, NULL, 0, 1, NULL, 'PU_111112', '2024-09-08 20:20:59', '2024-09-08 20:20:59'),
(113, '2024-09-08', 5, 1, 0, 0, 0, 0, 12000, NULL, NULL, 0, 1, NULL, 'PU_111113', '2024-09-08 20:21:56', '2024-09-08 20:21:56'),
(114, '2024-09-08', 5, 1, 0, 0, 0, 0, 10500, NULL, NULL, 0, 1, NULL, 'PU_111114', '2024-09-08 20:23:33', '2024-09-08 20:23:33'),
(115, '2024-09-08', 5, 1, 0, 0, 0, 0, 21000, NULL, NULL, 0, 1, NULL, 'PU_111115', '2024-09-08 20:24:17', '2024-09-08 20:25:17'),
(116, '2024-09-08', 5, 1, 0, 0, 0, 0, 21000, NULL, NULL, 0, 1, NULL, 'PU_111116', '2024-09-08 20:26:57', '2024-09-08 20:26:57'),
(117, '2024-09-08', 5, 1, 0, 0, 0, 0, 10500, NULL, NULL, 0, 1, NULL, 'PU_111117', '2024-09-08 20:28:25', '2024-09-08 20:28:25'),
(118, '2024-09-08', 5, 1, 0, 0, 0, 0, 10500, NULL, NULL, 0, 1, NULL, 'PU_111118', '2024-09-08 20:29:25', '2024-09-08 20:29:25'),
(119, '2024-09-08', 5, 1, 0, 0, 0, 0, 10500, NULL, NULL, 0, 1, NULL, 'PU_111119', '2024-09-08 20:29:58', '2024-09-08 20:29:58'),
(120, '2024-09-08', 5, 1, 0, 0, 0, 0, 10500, NULL, NULL, 0, 1, NULL, 'PU_111120', '2024-09-08 20:30:34', '2024-09-08 20:30:34'),
(121, '2024-09-08', 5, 1, 0, 0, 0, 0, 10500, NULL, NULL, 0, 1, NULL, 'PU_111121', '2024-09-08 20:31:22', '2024-09-08 20:31:22'),
(122, '2024-09-08', 5, 1, 0, 0, 0, 0, 10500, NULL, NULL, 0, 1, NULL, 'PU_111122', '2024-09-08 20:32:18', '2024-09-08 20:32:18'),
(123, '2024-09-08', 5, 1, 0, 0, 0, 0, 10500, NULL, NULL, 0, 1, NULL, 'PU_111123', '2024-09-08 20:33:07', '2024-09-08 20:33:07'),
(124, '2024-09-08', 7, 1, 0, 0, 0, 0, 12000, NULL, NULL, 0, 1, NULL, 'PU_111124', '2024-09-08 20:40:06', '2024-09-08 20:40:06'),
(125, '2024-09-08', 7, 1, 0, 0, 0, 0, 12000, NULL, NULL, 0, 1, NULL, 'PU_111125', '2024-09-08 20:40:46', '2024-09-08 20:40:46'),
(126, '2024-09-08', 7, 1, 0, 0, 0, 0, 12000, NULL, NULL, 0, 1, NULL, 'PU_111126', '2024-09-08 20:41:41', '2024-09-08 20:41:41'),
(127, '2024-09-08', 7, 1, 0, 0, 0, 0, 12000, NULL, NULL, 0, 1, NULL, 'PU_111127', '2024-09-08 20:42:36', '2024-09-08 20:42:36'),
(128, '2024-09-08', 7, 1, 0, 0, 0, 0, 12000, NULL, NULL, 0, 1, NULL, 'PU_111128', '2024-09-08 20:43:23', '2024-09-08 20:43:23'),
(129, '2024-09-08', 7, 1, 0, 0, 0, 0, 12000, NULL, NULL, 0, 1, NULL, 'PU_111129', '2024-09-08 20:43:54', '2024-09-08 20:43:54'),
(130, '2024-09-08', 5, 1, 0, 0, 0, 0, 8400, NULL, NULL, 0, 1, NULL, 'PU_111130', '2024-09-08 20:45:19', '2024-09-08 20:45:19'),
(131, '2024-09-08', 5, 1, 0, 0, 0, 0, 8400, NULL, NULL, 0, 1, NULL, 'PU_111131', '2024-09-08 20:46:25', '2024-09-08 20:46:25'),
(132, '2024-09-08', 5, 1, 0, 0, 0, 0, 8400, NULL, NULL, 0, 1, NULL, 'PU_111132', '2024-09-08 20:47:07', '2024-09-08 20:47:07'),
(133, '2024-09-08', 5, 1, 0, 0, 0, 0, 8400, NULL, NULL, 0, 1, NULL, 'PU_111133', '2024-09-08 20:48:35', '2024-09-08 20:48:35'),
(134, '2024-09-08', 4, 1, 0, 0, 0, 0, 2900, NULL, NULL, 0, 1, NULL, 'PU_111134', '2024-09-08 20:51:17', '2024-09-08 20:51:17'),
(135, '2024-09-08', 4, 1, 0, 0, 0, 0, 5800, NULL, NULL, 0, 1, NULL, 'PU_111135', '2024-09-08 20:53:55', '2024-09-08 20:53:55'),
(136, '2024-09-08', 4, 1, 0, 0, 0, 0, 5800, NULL, NULL, 0, 1, NULL, 'PU_111136', '2024-09-08 20:54:42', '2024-09-08 20:54:42'),
(137, '2024-09-08', 4, 1, 0, 0, 0, 0, 2900, NULL, NULL, 0, 1, NULL, 'PU_111137', '2024-09-08 20:55:47', '2024-09-08 20:55:47'),
(138, '2024-09-08', 4, 1, 0, 0, 0, 0, 6500, NULL, NULL, 0, 1, NULL, 'PU_111138', '2024-09-08 20:59:34', '2024-09-08 20:59:34'),
(139, '2024-09-08', 4, 1, 0, 0, 0, 0, 6500, NULL, NULL, 0, 1, NULL, 'PU_111139', '2024-09-08 21:00:31', '2024-09-08 21:00:31'),
(140, '2024-09-08', 4, 1, 0, 0, 0, 0, 3800, NULL, NULL, 0, 1, NULL, 'PU_111140', '2024-09-08 21:02:08', '2024-09-08 21:02:08'),
(141, '2024-09-08', 4, 1, 0, 0, 0, 0, 3800, NULL, NULL, 0, 1, NULL, 'PU_111141', '2024-09-08 21:03:08', '2024-09-08 21:03:08'),
(142, '2024-09-08', 4, 1, 0, 0, 0, 0, 3800, NULL, NULL, 0, 1, NULL, 'PU_111142', '2024-09-08 21:04:03', '2024-09-08 21:04:03'),
(143, '2024-09-08', 4, 1, 0, 0, 0, 0, 8250, NULL, NULL, 0, 1, NULL, 'PU_111143', '2024-09-08 21:05:36', '2024-09-08 21:05:36'),
(144, '2024-09-08', 4, 1, 0, 0, 0, 0, 5800, NULL, NULL, 0, 1, NULL, 'PU_111144', '2024-09-08 21:07:51', '2024-09-08 21:07:51'),
(145, '2024-09-08', 4, 1, 0, 0, 0, 0, 5800, NULL, NULL, 0, 1, NULL, 'PU_111145', '2024-09-08 21:08:51', '2024-09-08 21:08:51'),
(146, '2024-09-08', 4, 1, 0, 0, 0, 0, 5800, NULL, NULL, 0, 1, NULL, 'PU_111146', '2024-09-08 21:09:25', '2024-09-08 21:09:25'),
(147, '2024-09-08', 4, 1, 0, 0, 0, 0, 11000, NULL, NULL, 0, 1, NULL, 'PU_111147', '2024-09-08 21:11:34', '2024-09-08 21:11:34'),
(148, '2024-09-08', 4, 1, 0, 0, 0, 0, 11000, NULL, NULL, 0, 1, NULL, 'PU_111148', '2024-09-08 21:12:26', '2024-09-08 21:12:26'),
(149, '2024-09-08', 4, 1, 0, 0, 0, 0, 11000, NULL, NULL, 0, 1, NULL, 'PU_111149', '2024-09-08 21:14:44', '2024-09-08 21:14:44'),
(150, '2024-09-08', 4, 1, 0, 0, 0, 0, 7500, NULL, NULL, 0, 1, NULL, 'PU_111150', '2024-09-08 21:16:16', '2024-09-08 21:16:16'),
(151, '2024-09-08', 4, 1, 0, 0, 0, 0, 7500, NULL, NULL, 0, 1, NULL, 'PU_111151', '2024-09-08 21:17:09', '2024-09-08 21:17:09'),
(152, '2024-09-08', 4, 1, 0, 0, 0, 0, 6500, NULL, NULL, 0, 1, NULL, 'PU_111152', '2024-09-08 21:20:08', '2024-09-08 21:20:08'),
(153, '2024-09-08', 4, 1, 0, 0, 0, 0, 6500, NULL, NULL, 0, 1, NULL, 'PU_111153', '2024-09-08 21:21:39', '2024-09-08 21:21:39'),
(154, '2024-09-08', 4, 1, 0, 0, 0, 0, 6600, NULL, NULL, 0, 1, NULL, 'PU_111154', '2024-09-08 21:23:10', '2024-09-08 21:23:10'),
(155, '2024-09-08', 4, 1, 0, 0, 0, 0, 6000, NULL, NULL, 0, 1, NULL, 'PU_111155', '2024-09-08 21:25:12', '2024-09-08 21:25:12'),
(156, '2024-09-08', 4, 1, 0, 0, 0, 0, 6000, NULL, NULL, 0, 1, NULL, 'PU_111156', '2024-09-08 21:26:37', '2024-09-08 21:26:37'),
(157, '2024-09-08', 4, 1, 0, 0, 0, 0, 9000, NULL, NULL, 0, 1, NULL, 'PU_111157', '2024-09-08 21:28:03', '2024-09-08 21:28:03'),
(158, '2024-09-08', 4, 1, 0, 0, 0, 0, 9000, NULL, NULL, 0, 1, NULL, 'PU_111158', '2024-09-08 21:30:51', '2024-09-08 21:30:51'),
(159, '2024-09-08', 5, 1, 0, 0, 0, 0, 6300, NULL, NULL, 0, 1, NULL, 'PU_111159', '2024-09-08 21:34:41', '2024-09-08 21:34:41'),
(160, '2024-09-08', 5, 1, 0, 0, 0, 0, 6300, NULL, NULL, 0, 1, NULL, 'PU_111160', '2024-09-08 21:36:09', '2024-09-08 21:36:09'),
(161, '2024-09-08', 5, 1, 0, 0, 0, 0, 6600, NULL, NULL, 0, 1, NULL, 'PU_111161', '2024-09-08 21:37:50', '2024-09-08 21:37:50'),
(162, '2024-09-08', 5, 1, 0, 0, 0, 0, 6600, NULL, NULL, 0, 1, NULL, 'PU_111162', '2024-09-08 21:38:42', '2024-09-08 21:38:42'),
(163, '2024-09-08', 5, 1, 0, 0, 0, 0, 8500, NULL, NULL, 0, 1, NULL, 'PU_111163', '2024-09-08 21:41:07', '2024-09-08 21:41:07'),
(164, '2024-09-08', 5, 1, 0, 0, 0, 0, 8500, NULL, NULL, 0, 1, NULL, 'PU_111164', '2024-09-08 21:41:53', '2024-09-08 21:41:53'),
(165, '2024-09-08', 5, 1, 0, 0, 0, 0, 9000, NULL, NULL, 0, 1, NULL, 'PU_111165', '2024-09-08 21:43:48', '2024-09-08 21:43:48'),
(166, '2024-09-08', 5, 1, 0, 0, 0, 0, 9000, NULL, NULL, 0, 1, NULL, 'PU_111166', '2024-09-08 21:44:44', '2024-09-08 21:44:44'),
(167, '2024-09-08', 5, 1, 0, 0, 0, 0, 9000, NULL, NULL, 0, 1, NULL, 'PU_111167', '2024-09-08 21:46:38', '2024-09-08 21:46:38'),
(168, '2024-09-08', 5, 1, 0, 0, 0, 0, 7000, NULL, NULL, 0, 1, NULL, 'PU_111168', '2024-09-08 21:47:53', '2024-09-08 21:47:53'),
(169, '2024-09-08', 5, 1, 0, 0, 0, 0, 6000, NULL, NULL, 0, 1, NULL, 'PU_111169', '2024-09-08 21:49:45', '2024-09-08 21:49:45'),
(170, '2024-09-08', 5, 1, 0, 0, 0, 0, 18480, NULL, NULL, 0, 1, NULL, 'PU_111170', '2024-09-08 21:50:45', '2024-09-08 21:50:45'),
(171, '2024-09-08', 5, 1, 0, 0, 0, 0, 6000, NULL, NULL, 0, 1, NULL, 'PU_111171', '2024-09-08 21:51:55', '2024-09-08 21:51:55'),
(172, '2024-09-08', 5, 1, 0, 0, 0, 0, 7200, NULL, NULL, 0, 1, NULL, 'PU_111172', '2024-09-08 21:53:44', '2024-09-08 21:53:44'),
(173, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_111173', '2024-09-08 21:55:05', '2024-09-08 21:55:05'),
(174, '2024-09-08', 5, 1, 0, 0, 0, 0, 3600, NULL, NULL, 0, 1, NULL, 'PU_111174', '2024-09-08 21:55:45', '2024-09-08 21:55:45'),
(175, '2024-09-08', 7, 1, 0, 0, 0, 0, 4500, NULL, NULL, 0, 1, NULL, 'PU_111175', '2024-09-08 21:59:45', '2024-09-08 21:59:45'),
(176, '2024-09-08', 7, 1, 0, 0, 0, 0, 4500, NULL, NULL, 0, 1, NULL, 'PU_111176', '2024-09-08 22:00:26', '2024-09-08 22:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `purchases_return`
--

CREATE TABLE `purchases_return` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `received_amount` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `payment_status` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_return_items`
--

CREATE TABLE `purchases_return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_return_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_cost` double DEFAULT NULL,
  `net_unit_cost` double DEFAULT NULL,
  `tax_type` int(11) NOT NULL,
  `tax_value` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_value` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `purchase_unit` int(11) NOT NULL,
  `quantity` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_cost` double DEFAULT NULL,
  `net_unit_cost` double DEFAULT NULL,
  `tax_type` int(11) NOT NULL,
  `tax_value` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_value` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `purchase_unit` int(11) NOT NULL,
  `quantity` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `purchase_id`, `product_id`, `product_cost`, `net_unit_cost`, `tax_type`, `tax_value`, `tax_amount`, `discount_type`, `discount_value`, `discount_amount`, `purchase_unit`, `quantity`, `sub_total`, `created_at`, `updated_at`) VALUES
(13, 13, 12, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 3, 5250, '2024-09-08 18:07:03', '2024-09-08 18:07:03'),
(14, 14, 13, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 3, 5250, '2024-09-08 18:13:03', '2024-09-08 18:13:03'),
(15, 15, 14, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 3, 5250, '2024-09-08 18:14:22', '2024-09-08 18:14:22'),
(16, 16, 15, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 3, 5250, '2024-09-08 18:15:25', '2024-09-08 18:15:25'),
(17, 17, 16, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 3, 5250, '2024-09-08 18:16:39', '2024-09-08 18:16:39'),
(18, 18, 17, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 3, 5250, '2024-09-08 18:17:50', '2024-09-08 18:17:50'),
(19, 19, 18, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 3, 5250, '2024-09-08 18:18:47', '2024-09-08 18:18:47'),
(20, 20, 19, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 3, 5250, '2024-09-08 18:19:28', '2024-09-08 18:19:28'),
(21, 21, 20, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 3, 5250, '2024-09-08 18:20:23', '2024-09-08 18:20:23'),
(22, 22, 21, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 3, 5250, '2024-09-08 18:21:52', '2024-09-08 18:21:52'),
(23, 23, 22, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 2, 3500, '2024-09-08 18:23:01', '2024-09-08 18:23:01'),
(24, 24, 23, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 2, 3500, '2024-09-08 18:23:45', '2024-09-08 18:23:45'),
(25, 25, 24, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 2, 3500, '2024-09-08 18:24:32', '2024-09-08 18:24:32'),
(26, 26, 25, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 2, 3500, '2024-09-08 18:25:13', '2024-09-08 18:25:13'),
(27, 27, 26, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 2, 3500, '2024-09-08 18:25:59', '2024-09-08 18:25:59'),
(28, 28, 27, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 2, 3500, '2024-09-08 18:26:57', '2024-09-08 18:26:57'),
(29, 29, 28, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 2, 3500, '2024-09-08 18:27:50', '2024-09-08 18:27:50'),
(30, 30, 29, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 2, 3500, '2024-09-08 18:29:13', '2024-09-08 18:29:13'),
(31, 31, 30, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 2, 3500, '2024-09-08 18:30:04', '2024-09-08 18:30:04'),
(32, 32, 31, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 2, 3500, '2024-09-08 18:30:38', '2024-09-08 18:30:38'),
(33, 33, 32, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 2, 3500, '2024-09-08 18:34:12', '2024-09-08 18:34:12'),
(34, 34, 33, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 2, 3500, '2024-09-08 18:34:47', '2024-09-08 18:34:47'),
(35, 35, 34, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 2, 3500, '2024-09-08 18:35:19', '2024-09-08 18:35:19'),
(36, 36, 35, 1750, 1750, 1, NULL, 0, 2, 0, 0, 1, 2, 3500, '2024-09-08 18:35:55', '2024-09-08 18:35:55'),
(37, 37, 36, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:38:25', '2024-09-08 18:38:25'),
(38, 38, 37, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:39:13', '2024-09-08 18:39:13'),
(39, 39, 38, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:39:52', '2024-09-08 18:39:52'),
(40, 40, 39, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:40:40', '2024-09-08 18:40:40'),
(41, 41, 40, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:41:31', '2024-09-08 18:41:31'),
(42, 42, 41, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:42:42', '2024-09-08 18:42:42'),
(43, 43, 42, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:46:28', '2024-09-08 18:46:28'),
(44, 44, 43, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:47:52', '2024-09-08 18:47:52'),
(45, 45, 44, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:48:34', '2024-09-08 18:48:34'),
(46, 46, 45, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:49:13', '2024-09-08 18:49:13'),
(47, 47, 46, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:49:49', '2024-09-08 18:49:49'),
(48, 48, 47, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:50:37', '2024-09-08 18:50:37'),
(49, 49, 48, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:51:30', '2024-09-08 18:51:30'),
(50, 50, 49, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:52:21', '2024-09-08 18:52:21'),
(51, 51, 50, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:52:57', '2024-09-08 18:52:57'),
(52, 52, 51, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:53:33', '2024-09-08 18:53:33'),
(53, 53, 52, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:54:25', '2024-09-08 18:54:25'),
(54, 54, 53, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 18:55:11', '2024-09-08 18:55:11'),
(55, 55, 54, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 1, 1800, '2024-09-08 18:56:34', '2024-09-08 18:56:34'),
(56, 56, 55, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 1, 1800, '2024-09-08 18:57:11', '2024-09-08 18:57:11'),
(57, 57, 56, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 1, 1800, '2024-09-08 18:57:51', '2024-09-08 18:57:51'),
(58, 58, 57, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 1, 1800, '2024-09-08 18:58:22', '2024-09-08 18:58:22'),
(59, 59, 58, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 1, 1800, '2024-09-08 18:58:50', '2024-09-08 18:58:50'),
(60, 60, 59, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 1, 1800, '2024-09-08 18:59:26', '2024-09-08 18:59:26'),
(61, 61, 60, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 1, 1800, '2024-09-08 19:00:24', '2024-09-08 19:00:24'),
(62, 62, 61, 1700, 1700, 1, NULL, 0, 2, 0, 0, 1, 2, 3400, '2024-09-08 19:05:35', '2024-09-08 19:05:35'),
(63, 63, 62, 1700, 1700, 1, NULL, 0, 2, 0, 0, 1, 2, 3400, '2024-09-08 19:06:44', '2024-09-08 19:06:44'),
(64, 64, 63, 1700, 1700, 1, NULL, 0, 2, 0, 0, 1, 2, 3400, '2024-09-08 19:07:59', '2024-09-08 19:07:59'),
(65, 65, 64, 1700, 1700, 1, NULL, 0, 2, 0, 0, 1, 2, 3400, '2024-09-08 19:09:53', '2024-09-08 19:09:53'),
(66, 66, 65, 1700, 1700, 1, NULL, 0, 2, 0, 0, 1, 2, 3400, '2024-09-08 19:10:39', '2024-09-08 19:10:39'),
(67, 67, 66, 1700, 1700, 1, NULL, 0, 2, 0, 0, 1, 2, 3400, '2024-09-08 19:11:33', '2024-09-08 19:11:33'),
(68, 68, 67, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 19:13:55', '2024-09-08 19:13:55'),
(69, 69, 68, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 19:14:29', '2024-09-08 19:14:29'),
(70, 70, 69, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 19:15:48', '2024-09-08 19:21:34'),
(71, 71, 70, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 1, 1800, '2024-09-08 19:16:31', '2024-09-08 19:16:31'),
(72, 72, 71, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 1, 1800, '2024-09-08 19:22:47', '2024-09-08 19:22:47'),
(73, 73, 72, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 19:24:29', '2024-09-08 19:24:29'),
(74, 74, 73, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 19:25:45', '2024-09-08 19:25:45'),
(75, 75, 74, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 3, 5400, '2024-09-08 19:28:21', '2024-09-08 19:28:21'),
(76, 76, 75, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 2, 3600, '2024-09-08 19:29:52', '2024-09-08 19:29:52'),
(77, 77, 76, 1800, 1800, 1, NULL, 0, 2, 0, 0, 1, 1, 1800, '2024-09-08 19:30:21', '2024-09-08 19:30:21'),
(78, 78, 77, 2750, 2750, 1, NULL, 0, 2, 0, 0, 1, 1, 2750, '2024-09-08 19:33:49', '2024-09-08 19:33:49'),
(79, 79, 78, 2750, 2750, 1, NULL, 0, 2, 0, 0, 1, 1, 2750, '2024-09-08 19:35:15', '2024-09-08 19:35:15'),
(80, 80, 79, 2750, 2750, 1, NULL, 0, 2, 0, 0, 1, 1, 2750, '2024-09-08 19:36:07', '2024-09-08 19:36:07'),
(81, 81, 80, 2750, 2750, 1, NULL, 0, 2, 0, 0, 1, 1, 2750, '2024-09-08 19:36:48', '2024-09-08 19:36:48'),
(82, 82, 81, 2750, 2750, 1, NULL, 0, 2, 0, 0, 1, 1, 2750, '2024-09-08 19:37:26', '2024-09-08 19:37:26'),
(83, 83, 82, 2750, 2750, 1, NULL, 0, 2, 0, 0, 1, 1, 2750, '2024-09-08 19:38:39', '2024-09-08 19:38:39'),
(84, 84, 83, 2750, 2750, 1, NULL, 0, 2, 0, 0, 1, 1, 2750, '2024-09-08 19:39:52', '2024-09-08 19:39:52'),
(85, 85, 84, 2750, 2750, 1, NULL, 0, 2, 0, 0, 1, 1, 2750, '2024-09-08 19:41:13', '2024-09-08 19:41:13'),
(86, 86, 85, 2750, 2750, 1, NULL, 0, 2, 0, 0, 1, 1, 2750, '2024-09-08 19:41:53', '2024-09-08 19:41:53'),
(87, 87, 86, 2750, 2750, 1, NULL, 0, 2, 0, 0, 1, 1, 2750, '2024-09-08 19:42:58', '2024-09-08 19:42:58'),
(88, 88, 87, 2750, 2750, 1, NULL, 0, 2, 0, 0, 1, 1, 2750, '2024-09-08 19:43:42', '2024-09-08 19:43:42'),
(89, 89, 88, 2750, 2750, 1, NULL, 0, 2, 0, 0, 1, 1, 2750, '2024-09-08 19:44:26', '2024-09-08 19:44:26'),
(90, 90, 89, 2750, 2750, 1, NULL, 0, 2, 0, 0, 1, 1, 2750, '2024-09-08 19:46:34', '2024-09-08 19:46:34'),
(91, 91, 90, 2750, 2750, 1, NULL, 0, 2, 0, 0, 1, 1, 2750, '2024-09-08 19:47:09', '2024-09-08 19:47:09'),
(92, 92, 91, 2750, 2750, 1, NULL, 0, 2, 0, 0, 1, 1, 2750, '2024-09-08 19:47:38', '2024-09-08 19:47:38'),
(93, 93, 92, 3500, 3500, 1, NULL, 0, 2, 0, 0, 1, 2, 7000, '2024-09-08 19:51:10', '2024-09-08 19:51:10'),
(94, 94, 93, 3500, 3500, 1, NULL, 0, 2, 0, 0, 1, 2, 7000, '2024-09-08 19:52:17', '2024-09-08 19:52:17'),
(95, 95, 94, 3500, 3500, 1, NULL, 0, 2, 0, 0, 1, 2, 7000, '2024-09-08 19:53:01', '2024-09-08 19:53:01'),
(96, 96, 95, 2500, 2500, 1, NULL, 0, 2, 0, 0, 1, 2, 5000, '2024-09-08 19:55:56', '2024-09-08 19:55:56'),
(97, 97, 96, 750, 750, 1, NULL, 0, 2, 0, 0, 1, 30, 22500, '2024-09-08 20:02:24', '2024-09-08 20:02:24'),
(98, 98, 97, 750, 750, 1, NULL, 0, 2, 0, 0, 1, 10, 7500, '2024-09-08 20:03:25', '2024-09-08 20:03:25'),
(99, 99, 98, 750, 750, 1, NULL, 0, 2, 0, 0, 1, 10, 7500, '2024-09-08 20:04:33', '2024-09-08 20:04:33'),
(100, 100, 99, 750, 750, 1, NULL, 0, 2, 0, 0, 1, 10, 7500, '2024-09-08 20:05:30', '2024-09-08 20:05:30'),
(101, 101, 100, 750, 750, 1, NULL, 0, 2, 0, 0, 1, 10, 7500, '2024-09-08 20:06:24', '2024-09-08 20:06:24'),
(102, 102, 101, 750, 750, 1, NULL, 0, 2, 0, 0, 1, 10, 7500, '2024-09-08 20:07:16', '2024-09-08 20:07:16'),
(103, 103, 102, 750, 750, 1, NULL, 0, 2, 0, 0, 1, 10, 7500, '2024-09-08 20:07:54', '2024-09-08 20:07:54'),
(104, 104, 103, 750, 750, 1, NULL, 0, 2, 0, 0, 1, 10, 7500, '2024-09-08 20:09:00', '2024-09-08 20:09:00'),
(105, 105, 104, 1700, 1700, 1, NULL, 0, 2, 0, 0, 1, 5, 8500, '2024-09-08 20:11:01', '2024-09-08 20:11:01'),
(106, 106, 105, 1700, 1700, 1, NULL, 0, 2, 0, 0, 1, 5, 8500, '2024-09-08 20:12:50', '2024-09-08 20:12:50'),
(107, 107, 106, 1700, 1700, 1, NULL, 0, 2, 0, 0, 1, 2, 3400, '2024-09-08 20:15:17', '2024-09-08 20:15:17'),
(108, 108, 107, 1700, 1700, 1, NULL, 0, 2, 0, 0, 1, 5, 8500, '2024-09-08 20:16:07', '2024-09-08 20:16:07'),
(109, 109, 108, 1700, 1700, 1, NULL, 0, 2, 0, 0, 1, 5, 8500, '2024-09-08 20:16:58', '2024-09-08 20:16:58'),
(110, 110, 109, 2400, 2400, 1, NULL, 0, 2, 0, 0, 1, 5, 12000, '2024-09-08 20:19:02', '2024-09-08 20:19:02'),
(111, 111, 110, 2400, 2400, 1, NULL, 0, 2, 0, 0, 1, 5, 12000, '2024-09-08 20:20:06', '2024-09-08 20:20:06'),
(112, 112, 111, 2400, 2400, 1, NULL, 0, 2, 0, 0, 1, 5, 12000, '2024-09-08 20:20:59', '2024-09-08 20:20:59'),
(113, 113, 112, 2400, 2400, 1, NULL, 0, 2, 0, 0, 1, 5, 12000, '2024-09-08 20:21:56', '2024-09-08 20:21:56'),
(114, 114, 113, 2100, 2100, 1, NULL, 0, 2, 0, 0, 1, 5, 10500, '2024-09-08 20:23:33', '2024-09-08 20:23:33'),
(115, 115, 114, 2100, 2100, 1, NULL, 0, 2, 0, 0, 1, 10, 21000, '2024-09-08 20:24:17', '2024-09-08 20:25:17'),
(116, 116, 115, 2100, 2100, 1, NULL, 0, 2, 0, 0, 1, 10, 21000, '2024-09-08 20:26:57', '2024-09-08 20:26:57'),
(117, 117, 116, 2100, 2100, 1, NULL, 0, 2, 0, 0, 1, 5, 10500, '2024-09-08 20:28:25', '2024-09-08 20:28:25'),
(118, 118, 117, 2100, 2100, 1, NULL, 0, 2, 0, 0, 1, 5, 10500, '2024-09-08 20:29:25', '2024-09-08 20:29:25'),
(119, 119, 118, 2100, 2100, 1, NULL, 0, 2, 0, 0, 1, 5, 10500, '2024-09-08 20:29:58', '2024-09-08 20:29:58'),
(120, 120, 119, 2100, 2100, 1, NULL, 0, 2, 0, 0, 1, 5, 10500, '2024-09-08 20:30:34', '2024-09-08 20:30:34'),
(121, 121, 120, 2100, 2100, 1, NULL, 0, 2, 0, 0, 1, 5, 10500, '2024-09-08 20:31:22', '2024-09-08 20:31:22'),
(122, 122, 121, 2100, 2100, 1, NULL, 0, 2, 0, 0, 1, 5, 10500, '2024-09-08 20:32:18', '2024-09-08 20:32:18'),
(123, 123, 122, 2100, 2100, 1, NULL, 0, 2, 0, 0, 1, 5, 10500, '2024-09-08 20:33:07', '2024-09-08 20:33:07'),
(124, 124, 123, 2400, 2400, 1, NULL, 0, 2, 0, 0, 1, 5, 12000, '2024-09-08 20:40:06', '2024-09-08 20:40:06'),
(125, 125, 124, 2400, 2400, 1, NULL, 0, 2, 0, 0, 1, 5, 12000, '2024-09-08 20:40:46', '2024-09-08 20:40:46'),
(126, 126, 125, 2400, 2400, 1, NULL, 0, 2, 0, 0, 1, 5, 12000, '2024-09-08 20:41:41', '2024-09-08 20:41:41'),
(127, 127, 126, 2400, 2400, 1, NULL, 0, 2, 0, 0, 1, 5, 12000, '2024-09-08 20:42:36', '2024-09-08 20:42:36'),
(128, 128, 127, 2400, 2400, 1, NULL, 0, 2, 0, 0, 1, 5, 12000, '2024-09-08 20:43:23', '2024-09-08 20:43:23'),
(129, 129, 128, 2400, 2400, 1, NULL, 0, 2, 0, 0, 1, 5, 12000, '2024-09-08 20:43:54', '2024-09-08 20:43:54'),
(130, 130, 129, 2800, 2800, 1, NULL, 0, 2, 0, 0, 1, 3, 8400, '2024-09-08 20:45:19', '2024-09-08 20:45:19'),
(131, 131, 130, 2800, 2800, 1, NULL, 0, 2, 0, 0, 1, 3, 8400, '2024-09-08 20:46:25', '2024-09-08 20:46:25'),
(132, 132, 131, 2800, 2800, 1, NULL, 0, 2, 0, 0, 1, 3, 8400, '2024-09-08 20:47:07', '2024-09-08 20:47:07'),
(133, 133, 132, 2800, 2800, 1, NULL, 0, 2, 0, 0, 1, 3, 8400, '2024-09-08 20:48:35', '2024-09-08 20:48:35'),
(134, 134, 133, 2900, 2900, 1, NULL, 0, 2, 0, 0, 1, 1, 2900, '2024-09-08 20:51:17', '2024-09-08 20:51:17'),
(135, 135, 134, 2900, 2900, 1, NULL, 0, 2, 0, 0, 1, 2, 5800, '2024-09-08 20:53:55', '2024-09-08 20:53:55'),
(136, 136, 135, 2900, 2900, 1, NULL, 0, 2, 0, 0, 1, 2, 5800, '2024-09-08 20:54:42', '2024-09-08 20:54:42'),
(137, 137, 136, 2900, 2900, 1, NULL, 0, 2, 0, 0, 1, 1, 2900, '2024-09-08 20:55:47', '2024-09-08 20:55:47'),
(138, 138, 137, 650, 650, 1, NULL, 0, 2, 0, 0, 1, 10, 6500, '2024-09-08 20:59:34', '2024-09-08 20:59:34'),
(139, 139, 138, 650, 650, 1, NULL, 0, 2, 0, 0, 1, 10, 6500, '2024-09-08 21:00:31', '2024-09-08 21:00:31'),
(140, 140, 139, 3800, 3800, 1, NULL, 0, 2, 0, 0, 1, 1, 3800, '2024-09-08 21:02:08', '2024-09-08 21:02:08'),
(141, 141, 140, 3800, 3800, 1, NULL, 0, 2, 0, 0, 1, 1, 3800, '2024-09-08 21:03:08', '2024-09-08 21:03:08'),
(142, 142, 141, 3800, 3800, 1, NULL, 0, 2, 0, 0, 1, 1, 3800, '2024-09-08 21:04:03', '2024-09-08 21:04:03'),
(143, 143, 142, 550, 550, 1, NULL, 0, 2, 0, 0, 1, 15, 8250, '2024-09-08 21:05:36', '2024-09-08 21:05:36'),
(144, 144, 143, 5800, 5800, 1, NULL, 0, 2, 0, 0, 1, 1, 5800, '2024-09-08 21:07:51', '2024-09-08 21:07:51'),
(145, 145, 144, 5800, 5800, 1, NULL, 0, 2, 0, 0, 1, 1, 5800, '2024-09-08 21:08:51', '2024-09-08 21:08:51'),
(146, 146, 145, 5800, 5800, 1, NULL, 0, 2, 0, 0, 1, 1, 5800, '2024-09-08 21:09:25', '2024-09-08 21:09:25'),
(147, 147, 146, 550, 550, 1, NULL, 0, 2, 0, 0, 1, 20, 11000, '2024-09-08 21:11:34', '2024-09-08 21:11:34'),
(148, 148, 147, 550, 550, 1, NULL, 0, 2, 0, 0, 1, 20, 11000, '2024-09-08 21:12:26', '2024-09-08 21:12:26'),
(149, 149, 148, 550, 550, 1, NULL, 0, 2, 0, 0, 1, 20, 11000, '2024-09-08 21:14:44', '2024-09-08 21:14:44'),
(150, 150, 149, 7500, 7500, 1, NULL, 0, 2, 0, 0, 1, 1, 7500, '2024-09-08 21:16:16', '2024-09-08 21:16:16'),
(151, 151, 150, 7500, 7500, 1, NULL, 0, 2, 0, 0, 1, 1, 7500, '2024-09-08 21:17:09', '2024-09-08 21:17:09'),
(152, 152, 151, 650, 650, 1, NULL, 0, 2, 0, 0, 1, 10, 6500, '2024-09-08 21:20:08', '2024-09-08 21:20:08'),
(153, 153, 152, 650, 650, 1, NULL, 0, 2, 0, 0, 1, 10, 6500, '2024-09-08 21:21:39', '2024-09-08 21:21:39'),
(154, 154, 153, 550, 550, 1, NULL, 0, 2, 0, 0, 1, 12, 6600, '2024-09-08 21:23:10', '2024-09-08 21:23:10'),
(155, 155, 154, 600, 600, 1, NULL, 0, 2, 0, 0, 1, 10, 6000, '2024-09-08 21:25:12', '2024-09-08 21:25:12'),
(156, 156, 155, 600, 600, 1, NULL, 0, 2, 0, 0, 1, 10, 6000, '2024-09-08 21:26:37', '2024-09-08 21:26:37'),
(157, 157, 156, 600, 600, 1, NULL, 0, 2, 0, 0, 1, 15, 9000, '2024-09-08 21:28:03', '2024-09-08 21:28:03'),
(158, 158, 157, 600, 600, 1, NULL, 0, 2, 0, 0, 1, 15, 9000, '2024-09-08 21:30:51', '2024-09-08 21:30:51'),
(159, 159, 158, 6300, 6300, 1, NULL, 0, 2, 0, 0, 1, 1, 6300, '2024-09-08 21:34:41', '2024-09-08 21:34:41'),
(160, 160, 159, 6300, 6300, 1, NULL, 0, 2, 0, 0, 1, 1, 6300, '2024-09-08 21:36:09', '2024-09-08 21:36:09'),
(161, 161, 160, 6600, 6600, 1, NULL, 0, 2, 0, 0, 1, 1, 6600, '2024-09-08 21:37:50', '2024-09-08 21:37:50'),
(162, 162, 161, 6600, 6600, 1, NULL, 0, 2, 0, 0, 1, 1, 6600, '2024-09-08 21:38:42', '2024-09-08 21:38:42'),
(163, 163, 162, 8500, 8500, 1, NULL, 0, 2, 0, 0, 1, 1, 8500, '2024-09-08 21:41:07', '2024-09-08 21:41:07'),
(164, 164, 163, 8500, 8500, 1, NULL, 0, 2, 0, 0, 1, 1, 8500, '2024-09-08 21:41:53', '2024-09-08 21:41:53'),
(165, 165, 164, 600, 600, 1, NULL, 0, 2, 0, 0, 1, 15, 9000, '2024-09-08 21:43:48', '2024-09-08 21:43:48'),
(166, 166, 165, 600, 600, 1, NULL, 0, 2, 0, 0, 1, 15, 9000, '2024-09-08 21:44:44', '2024-09-08 21:44:44'),
(167, 167, 166, 600, 600, 1, NULL, 0, 2, 0, 0, 1, 15, 9000, '2024-09-08 21:46:38', '2024-09-08 21:46:38'),
(168, 168, 167, 700, 700, 1, NULL, 0, 2, 0, 0, 1, 10, 7000, '2024-09-08 21:47:53', '2024-09-08 21:47:53'),
(169, 169, 168, 600, 600, 1, NULL, 0, 2, 0, 0, 1, 10, 6000, '2024-09-08 21:49:45', '2024-09-08 21:49:45'),
(170, 170, 169, 616, 616, 1, NULL, 0, 2, 0, 0, 1, 30, 18480, '2024-09-08 21:50:45', '2024-09-08 21:50:45'),
(171, 171, 170, 600, 600, 1, NULL, 0, 2, 0, 0, 1, 10, 6000, '2024-09-08 21:51:55', '2024-09-08 21:51:55'),
(172, 172, 171, 600, 600, 1, NULL, 0, 2, 0, 0, 1, 12, 7200, '2024-09-08 21:53:44', '2024-09-08 21:53:44'),
(173, 173, 172, 3600, 3600, 1, NULL, 0, 2, 0, 0, 1, 1, 3600, '2024-09-08 21:55:05', '2024-09-08 21:55:05'),
(174, 174, 173, 3600, 3600, 1, NULL, 0, 2, 0, 0, 1, 1, 3600, '2024-09-08 21:55:45', '2024-09-08 21:55:45'),
(175, 175, 174, 4500, 4500, 1, NULL, 0, 2, 0, 0, 1, 1, 4500, '2024-09-08 21:59:45', '2024-09-08 21:59:45'),
(176, 176, 175, 4500, 4500, 1, NULL, 0, 2, 0, 0, 1, 1, 4500, '2024-09-08 22:00:26', '2024-09-08 22:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `received_amount` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_sale_created` tinyint(1) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_items`
--

CREATE TABLE `quotation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_price` double DEFAULT NULL,
  `net_unit_price` double DEFAULT NULL,
  `tax_type` int(11) NOT NULL,
  `tax_value` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_value` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `sale_unit` int(11) NOT NULL,
  `quantity` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `guard_name` varchar(255) NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', ' Admin', 'web', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(2, 'POS Admin', 'POS Admin', 'web', '2024-09-07 03:22:15', '2024-09-07 03:28:44'),
(3, 'POS Cashier', 'POS Cashier', 'web', '2024-09-07 03:29:29', '2024-09-07 03:29:29');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(6, 2),
(7, 1),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(13, 1),
(14, 1),
(14, 2),
(15, 1),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(17, 3),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(23, 1),
(23, 2),
(24, 1),
(25, 1),
(26, 1),
(27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `is_return` tinyint(1) NOT NULL DEFAULT 0,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `received_amount` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `payment_status` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `is_return`, `customer_id`, `warehouse_id`, `tax_rate`, `tax_amount`, `discount`, `shipping`, `grand_total`, `received_amount`, `paid_amount`, `payment_type`, `note`, `reference_code`, `created_at`, `updated_at`, `status`, `payment_status`, `user_id`) VALUES
(27, '2024-09-08', 0, 1, 1, 0, 0, 0, 0, 3500, NULL, 3500, 1, NULL, 'SA_11127', '2024-09-08 22:09:04', '2024-09-08 22:09:04', 1, 1, 4),
(28, '2024-09-08', 0, 1, 1, 0, 0, 0, 0, 3500, NULL, 3500, 1, NULL, 'SA_11128', '2024-09-08 22:09:18', '2024-09-08 22:09:18', 1, 1, 4),
(29, '2024-09-08', 0, 1, 1, 0, 0, 0, 0, 3500, NULL, 3500, 1, NULL, 'SA_11129', '2024-09-08 22:09:32', '2024-09-08 22:09:32', 1, 1, 4),
(30, '2024-09-08', 0, 1, 1, 0, 0, 0, 0, 3500, NULL, 3500, 1, NULL, 'SA_11130', '2024-09-08 22:13:49', '2024-09-08 22:13:49', 1, 1, 3),
(31, '2024-09-08', 0, 1, 1, 0, 0, 0, 0, 2800, NULL, 2800, 1, NULL, 'SA_11131', '2024-09-08 22:17:21', '2024-09-08 22:17:21', 1, 1, 3),
(32, '2024-09-08', 0, 1, 1, 0, 0, 0, 0, 2800, NULL, 2800, 1, NULL, 'SA_11132', '2024-09-08 22:24:21', '2024-09-08 22:24:21', 1, 1, 4),
(33, '2024-09-08', 0, 1, 1, 0, 0, 0, 0, 3500, NULL, 3500, 1, NULL, 'SA_11133', '2024-09-08 22:31:09', '2024-09-08 22:31:09', 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sales_payments`
--

CREATE TABLE `sales_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `payment_date` date NOT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `received_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_payments`
--

INSERT INTO `sales_payments` (`id`, `sale_id`, `reference`, `payment_date`, `payment_type`, `amount`, `received_amount`, `created_at`, `updated_at`) VALUES
(27, 27, NULL, '2024-09-08', 1, 3500, 3500, '2024-09-08 22:09:04', '2024-09-08 22:09:04'),
(28, 28, NULL, '2024-09-08', 1, 3500, 3500, '2024-09-08 22:09:18', '2024-09-08 22:09:18'),
(29, 29, NULL, '2024-09-08', 1, 3500, 3500, '2024-09-08 22:09:32', '2024-09-08 22:09:32'),
(30, 30, NULL, '2024-09-08', 1, 3500, 3500, '2024-09-08 22:13:49', '2024-09-08 22:13:49'),
(31, 31, NULL, '2024-09-08', 1, 2800, 2800, '2024-09-08 22:17:21', '2024-09-08 22:17:21'),
(32, 32, NULL, '2024-09-08', 1, 2800, 2800, '2024-09-08 22:24:21', '2024-09-08 22:24:21'),
(33, 33, NULL, '2024-09-08', 1, 3500, 3500, '2024-09-08 22:31:09', '2024-09-08 22:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `sales_return`
--

CREATE TABLE `sales_return` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `sale_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_price` double DEFAULT NULL,
  `net_unit_price` double DEFAULT NULL,
  `tax_type` int(11) NOT NULL,
  `tax_value` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_value` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `sale_unit` int(11) NOT NULL,
  `quantity` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sale_id`, `product_id`, `product_price`, `net_unit_price`, `tax_type`, `tax_value`, `tax_amount`, `discount_type`, `discount_value`, `discount_amount`, `sale_unit`, `quantity`, `sub_total`, `created_at`, `updated_at`) VALUES
(27, 27, 125, 3500, 3500, 1, NULL, 0, 1, 0, 0, 1, 1, 3500, '2024-09-08 22:09:04', '2024-09-08 22:09:04'),
(28, 28, 125, 3500, 3500, 1, NULL, 0, 1, 0, 0, 1, 1, 3500, '2024-09-08 22:09:18', '2024-09-08 22:09:18'),
(29, 29, 125, 3500, 3500, 1, NULL, 0, 1, 0, 0, 1, 1, 3500, '2024-09-08 22:09:32', '2024-09-08 22:09:32'),
(30, 30, 125, 3500, 3500, 1, NULL, 0, 1, 0, 0, 1, 1, 3500, '2024-09-08 22:13:49', '2024-09-08 22:13:49'),
(31, 31, 12, 2800, 2800, 1, NULL, 0, 1, 0, 0, 1, 1, 2800, '2024-09-08 22:17:21', '2024-09-08 22:17:21'),
(32, 32, 12, 2800, 2800, 1, NULL, 0, 1, 0, 0, 1, 1, 2800, '2024-09-08 22:24:21', '2024-09-08 22:24:21'),
(33, 33, 125, 3500, 3500, 1, NULL, 0, 1, 0, 0, 1, 1, 3500, '2024-09-08 22:31:09', '2024-09-08 22:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `sale_return_items`
--

CREATE TABLE `sale_return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_return_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_price` double DEFAULT NULL,
  `net_unit_price` double DEFAULT NULL,
  `tax_type` int(11) NOT NULL,
  `tax_value` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_value` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `sale_unit` int(11) NOT NULL,
  `quantity` double DEFAULT NULL,
  `sold_quantity` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'show_version_on_footer', '1', '2023-07-11 05:53:38', '2024-09-07 06:29:20'),
(2, 'country', 'Pakistan', '2023-07-11 05:53:38', '2024-09-03 22:19:37'),
(3, 'state', 'Sind', '2023-07-11 05:53:38', '2024-09-03 22:19:37'),
(4, 'city', 'Karachi', '2023-07-11 05:53:38', '2024-09-03 22:23:56'),
(5, 'postcode', '395007', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(6, 'date_format', 'd-m-y', '2023-07-11 05:53:38', '2024-09-03 22:23:56'),
(7, 'purchase_code', 'PU', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(8, 'purchase_return_code', 'PR', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(9, 'sale_code', 'SA', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(10, 'sale_return_code', 'SR', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(11, 'expense_code', 'EX', '2023-07-11 05:53:38', '2023-07-11 05:53:38'),
(12, 'is_currency_right', 'false', '2023-07-11 05:53:39', '2024-09-03 22:19:37'),
(13, 'currency', '2', '2023-07-11 05:53:39', '2024-09-03 22:19:42'),
(14, 'email', 'vaperzcafe@gmail.com', '2023-07-11 05:53:39', '2024-09-07 06:18:56'),
(15, 'company_name', 'Vaperz Cafe', '2023-07-11 05:53:39', '2024-09-07 05:17:04'),
(16, 'phone', '03702157541', '2023-07-11 05:53:39', '2024-09-07 06:18:56'),
(17, 'developed', 'Digious Corp.', '2023-07-11 05:53:39', '2024-09-03 22:24:18'),
(18, 'footer', 'Powered By Digious Corp 2024', '2023-07-11 05:53:39', '2024-09-03 22:23:56'),
(19, 'default_language', '1', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(20, 'default_customer', '1', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(21, 'default_warehouse', '1', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(22, 'address', 'Shop #3 Building no 21C Street 5 Badar Commercial Area Phase 5 DHA, Karachi, Pakistan.', '2023-07-11 05:53:39', '2024-09-07 05:17:04'),
(23, 'stripe_key', 'pu_test_yBzA1qI1PcfRBAVn1vJG2VuS00HcyhQX9LASERTFDDS', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(24, 'stripe_secret', 'pu_test_yBzA1qI1PcfRBAVn1vJG2VuS00HcyhQX9LASERTFDDS', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(25, 'sms_gateway', '1', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(26, 'twillo_sid', 'asd', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(27, 'twillo_token', 'asd', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(28, 'twillo_from', 'asd', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(29, 'smtp_host', 'mailtrap.io', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(30, 'smtp_port', '2525', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(31, 'smtp_username', 'test', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(32, 'smtp_password', 'test', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(33, 'smtp_Encryption', 'tls', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(34, 'logo', 'http://pos.digiouscorp.com/uploads/settings/1/Untitled-3-01-removebg-preview.png', '2023-07-11 05:53:39', '2024-09-03 22:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'url', 'http://test.com/api/test.php', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(2, 'mobile_key', '', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(3, 'message_key', '', '2023-07-11 05:53:39', '2023-07-11 05:53:39'),
(4, 'payload', '', '2023-07-11 05:53:39', '2023-07-11 05:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_name` text NOT NULL,
  `content` longtext NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `template_name`, `content`, `type`, `created_at`, `updated_at`, `status`) VALUES
(1, 'GREETING TO CUSTOMER ON SALES !', 'Hi {customer_name}, Your sales Id is {sales_id}, Sales Date {sales_date}, Total Amount {sales_amount}, You have paid {paid_amount}, and customer total due amount is {due_amount} Thank you visit again', '1', '2023-07-11 05:53:39', '2023-07-11 05:53:39', 0),
(2, 'GREETING TO CUSTOMER ON SALES RETURN !', 'Hi {customer_name}, Your sales return Id is {sales_return_id}, Sales return Date {sales_return_date}, and Total Amount is {sales_return_amount} Thank you visit again', '2', '2023-07-11 05:53:39', '2023-07-11 05:53:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(170) NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Andaman and Nicobar Islands', 101, NULL, NULL),
(2, 'Andhra Pradesh', 101, NULL, NULL),
(3, 'Arunachal Pradesh', 101, NULL, NULL),
(4, 'Assam', 101, NULL, NULL),
(5, 'Bihar', 101, NULL, NULL),
(6, 'Chandigarh', 101, NULL, NULL),
(7, 'Chhattisgarh', 101, NULL, NULL),
(8, 'Dadra and Nagar Haveli', 101, NULL, NULL),
(9, 'Daman and Diu', 101, NULL, NULL),
(10, 'Delhi', 101, NULL, NULL),
(11, 'Goa', 101, NULL, NULL),
(12, 'Gujarat', 101, NULL, NULL),
(13, 'Haryana', 101, NULL, NULL),
(14, 'Himachal Pradesh', 101, NULL, NULL),
(15, 'Jammu and Kashmir', 101, NULL, NULL),
(16, 'Jharkhand', 101, NULL, NULL),
(17, 'Karnataka', 101, NULL, NULL),
(19, 'Kerala', 101, NULL, NULL),
(20, 'Lakshadweep', 101, NULL, NULL),
(21, 'Madhya Pradesh', 101, NULL, NULL),
(22, 'Maharashtra', 101, NULL, NULL),
(23, 'Manipur', 101, NULL, NULL),
(24, 'Meghalaya', 101, NULL, NULL),
(25, 'Mizoram', 101, NULL, NULL),
(26, 'Nagaland', 101, NULL, NULL),
(29, 'Odisha', 101, NULL, NULL),
(31, 'Pondicherry', 101, NULL, NULL),
(32, 'Punjab', 101, NULL, NULL),
(33, 'Rajasthan', 101, NULL, NULL),
(34, 'Sikkim', 101, NULL, NULL),
(35, 'Tamil Nadu', 101, NULL, NULL),
(36, 'Telangana', 101, NULL, NULL),
(37, 'Tripura', 101, NULL, NULL),
(38, 'Uttar Pradesh', 101, NULL, NULL),
(39, 'Uttarakhand', 101, NULL, NULL),
(41, 'West Bengal', 101, NULL, NULL),
(42, 'Badakhshan', 1, NULL, NULL),
(43, 'Badgis', 1, NULL, NULL),
(44, 'Baglan', 1, NULL, NULL),
(45, 'Balkh', 1, NULL, NULL),
(46, 'Bamiyan', 1, NULL, NULL),
(47, 'Farah', 1, NULL, NULL),
(48, 'Faryab', 1, NULL, NULL),
(49, 'Gawr', 1, NULL, NULL),
(50, 'Gazni', 1, NULL, NULL),
(51, 'Herat', 1, NULL, NULL),
(52, 'Hilmand', 1, NULL, NULL),
(53, 'Jawzjan', 1, NULL, NULL),
(54, 'Kabul', 1, NULL, NULL),
(55, 'Kapisa', 1, NULL, NULL),
(56, 'Khawst', 1, NULL, NULL),
(57, 'Kunar', 1, NULL, NULL),
(58, 'Lagman', 1, NULL, NULL),
(59, 'Lawghar', 1, NULL, NULL),
(60, 'Nangarhar', 1, NULL, NULL),
(61, 'Nimruz', 1, NULL, NULL),
(62, 'Nuristan', 1, NULL, NULL),
(63, 'Paktika', 1, NULL, NULL),
(64, 'Paktiya', 1, NULL, NULL),
(65, 'Parwan', 1, NULL, NULL),
(66, 'Qandahar', 1, NULL, NULL),
(67, 'Qunduz', 1, NULL, NULL),
(68, 'Samangan', 1, NULL, NULL),
(69, 'Sar-e Pul', 1, NULL, NULL),
(70, 'Takhar', 1, NULL, NULL),
(71, 'Uruzgan', 1, NULL, NULL),
(72, 'Wardag', 1, NULL, NULL),
(73, 'Zabul', 1, NULL, NULL),
(74, 'Berat', 2, NULL, NULL),
(75, 'Bulqize', 2, NULL, NULL),
(76, 'Delvine', 2, NULL, NULL),
(77, 'Devoll', 2, NULL, NULL),
(78, 'Dibre', 2, NULL, NULL),
(79, 'Durres', 2, NULL, NULL),
(80, 'Elbasan', 2, NULL, NULL),
(81, 'Fier', 2, NULL, NULL),
(82, 'Gjirokaster', 2, NULL, NULL),
(83, 'Gramsh', 2, NULL, NULL),
(84, 'Has', 2, NULL, NULL),
(85, 'Kavaje', 2, NULL, NULL),
(86, 'Kolonje', 2, NULL, NULL),
(87, 'Korce', 2, NULL, NULL),
(88, 'Kruje', 2, NULL, NULL),
(89, 'Kucove', 2, NULL, NULL),
(90, 'Kukes', 2, NULL, NULL),
(91, 'Kurbin', 2, NULL, NULL),
(92, 'Lezhe', 2, NULL, NULL),
(93, 'Librazhd', 2, NULL, NULL),
(94, 'Lushnje', 2, NULL, NULL),
(95, 'Mallakaster', 2, NULL, NULL),
(96, 'Malsi e Madhe', 2, NULL, NULL),
(97, 'Mat', 2, NULL, NULL),
(98, 'Mirdite', 2, NULL, NULL),
(99, 'Peqin', 2, NULL, NULL),
(100, 'Permet', 2, NULL, NULL),
(101, 'Pogradec', 2, NULL, NULL),
(102, 'Puke', 2, NULL, NULL),
(103, 'Sarande', 2, NULL, NULL),
(104, 'Shkoder', 2, NULL, NULL),
(105, 'Skrapar', 2, NULL, NULL),
(106, 'Tepelene', 2, NULL, NULL),
(107, 'Tirane', 2, NULL, NULL),
(108, 'Tropoje', 2, NULL, NULL),
(109, 'Vlore', 2, NULL, NULL),
(110, 'Ayn Daflah', 3, NULL, NULL),
(111, 'Ayn Tamushanat', 3, NULL, NULL),
(112, 'Adrar', 3, NULL, NULL),
(113, 'Algiers', 3, NULL, NULL),
(114, 'Annabah', 3, NULL, NULL),
(115, 'Bashshar', 3, NULL, NULL),
(116, 'Batnah', 3, NULL, NULL),
(117, 'Bijayah', 3, NULL, NULL),
(118, 'Biskrah', 3, NULL, NULL),
(119, 'Blidah', 3, NULL, NULL),
(120, 'Buirah', 3, NULL, NULL),
(121, 'Bumardas', 3, NULL, NULL),
(122, 'Burj Bu Arririj', 3, NULL, NULL),
(123, 'Ghalizan', 3, NULL, NULL),
(124, 'Ghardayah', 3, NULL, NULL),
(125, 'Ilizi', 3, NULL, NULL),
(126, 'Jijili', 3, NULL, NULL),
(127, 'Jilfah', 3, NULL, NULL),
(128, 'Khanshalah', 3, NULL, NULL),
(129, 'Masilah', 3, NULL, NULL),
(130, 'Midyah', 3, NULL, NULL),
(131, 'Milah', 3, NULL, NULL),
(132, 'Muaskar', 3, NULL, NULL),
(133, 'Mustaghanam', 3, NULL, NULL),
(134, 'Naama', 3, NULL, NULL),
(135, 'Oran', 3, NULL, NULL),
(136, 'Ouargla', 3, NULL, NULL),
(137, 'Qalmah', 3, NULL, NULL),
(138, 'Qustantinah', 3, NULL, NULL),
(139, 'Sakikdah', 3, NULL, NULL),
(140, 'Satif', 3, NULL, NULL),
(141, 'Sayda', 3, NULL, NULL),
(142, 'Sidi ban-al-\'\'Abbas', 3, NULL, NULL),
(143, 'Suq Ahras', 3, NULL, NULL),
(144, 'Tamanghasat', 3, NULL, NULL),
(145, 'Tibazah', 3, NULL, NULL),
(146, 'Tibissah', 3, NULL, NULL),
(147, 'Tilimsan', 3, NULL, NULL),
(148, 'Tinduf', 3, NULL, NULL),
(149, 'Tisamsilt', 3, NULL, NULL),
(150, 'Tiyarat', 3, NULL, NULL),
(151, 'Tizi Wazu', 3, NULL, NULL),
(152, 'Umm-al-Bawaghi', 3, NULL, NULL),
(153, 'Wahran', 3, NULL, NULL),
(154, 'Warqla', 3, NULL, NULL),
(155, 'Wilaya d Alger', 3, NULL, NULL),
(156, 'Wilaya de Bejaia', 3, NULL, NULL),
(157, 'Wilaya de Constantine', 3, NULL, NULL),
(158, 'al-Aghwat', 3, NULL, NULL),
(159, 'al-Bayadh', 3, NULL, NULL),
(160, 'al-Jaza\'\'ir', 3, NULL, NULL),
(161, 'al-Wad', 3, NULL, NULL),
(162, 'ash-Shalif', 3, NULL, NULL),
(163, 'at-Tarif', 3, NULL, NULL),
(164, 'Eastern', 4, NULL, NULL),
(165, 'Manu\'\'a', 4, NULL, NULL),
(166, 'Swains Island', 4, NULL, NULL),
(167, 'Western', 4, NULL, NULL),
(168, 'Andorra la Vella', 5, NULL, NULL),
(169, 'Canillo', 5, NULL, NULL),
(170, 'Encamp', 5, NULL, NULL),
(171, 'La Massana', 5, NULL, NULL),
(172, 'Les Escaldes', 5, NULL, NULL),
(173, 'Ordino', 5, NULL, NULL),
(174, 'Sant Julia de Loria', 5, NULL, NULL),
(175, 'Bengo', 6, NULL, NULL),
(176, 'Benguela', 6, NULL, NULL),
(177, 'Bie', 6, NULL, NULL),
(178, 'Cabinda', 6, NULL, NULL),
(179, 'Cunene', 6, NULL, NULL),
(180, 'Huambo', 6, NULL, NULL),
(181, 'Huila', 6, NULL, NULL),
(182, 'Kuando-Kubango', 6, NULL, NULL),
(183, 'Kwanza Norte', 6, NULL, NULL),
(184, 'Kwanza Sul', 6, NULL, NULL),
(185, 'Luanda', 6, NULL, NULL),
(186, 'Lunda Norte', 6, NULL, NULL),
(187, 'Lunda Sul', 6, NULL, NULL),
(188, 'Malanje', 6, NULL, NULL),
(189, 'Moxico', 6, NULL, NULL),
(190, 'Namibe', 6, NULL, NULL),
(191, 'Uige', 6, NULL, NULL),
(192, 'Zaire', 6, NULL, NULL),
(193, 'Other Provinces', 7, NULL, NULL),
(194, 'Sector claimed by Argentina/Ch', 8, NULL, NULL),
(195, 'Sector claimed by Argentina/UK', 8, NULL, NULL),
(196, 'Sector claimed by Australia', 8, NULL, NULL),
(197, 'Sector claimed by France', 8, NULL, NULL),
(198, 'Sector claimed by New Zealand', 8, NULL, NULL),
(199, 'Sector claimed by Norway', 8, NULL, NULL),
(200, 'Unclaimed Sector', 8, NULL, NULL),
(201, 'Barbuda', 9, NULL, NULL),
(202, 'Saint George', 9, NULL, NULL),
(203, 'Saint John', 9, NULL, NULL),
(204, 'Saint Mary', 9, NULL, NULL),
(205, 'Saint Paul', 9, NULL, NULL),
(206, 'Saint Peter', 9, NULL, NULL),
(207, 'Saint Philip', 9, NULL, NULL),
(208, 'Buenos Aires', 10, NULL, NULL),
(209, 'Catamarca', 10, NULL, NULL),
(210, 'Chaco', 10, NULL, NULL),
(211, 'Chubut', 10, NULL, NULL),
(212, 'Cordoba', 10, NULL, NULL),
(213, 'Corrientes', 10, NULL, NULL),
(214, 'Distrito Federal', 10, NULL, NULL),
(215, 'Entre Rios', 10, NULL, NULL),
(216, 'Formosa', 10, NULL, NULL),
(217, 'Jujuy', 10, NULL, NULL),
(218, 'La Pampa', 10, NULL, NULL),
(219, 'La Rioja', 10, NULL, NULL),
(220, 'Mendoza', 10, NULL, NULL),
(221, 'Misiones', 10, NULL, NULL),
(222, 'Neuquen', 10, NULL, NULL),
(223, 'Rio Negro', 10, NULL, NULL),
(224, 'Salta', 10, NULL, NULL),
(225, 'San Juan', 10, NULL, NULL),
(226, 'San Luis', 10, NULL, NULL),
(227, 'Santa Cruz', 10, NULL, NULL),
(228, 'Santa Fe', 10, NULL, NULL),
(229, 'Santiago del Estero', 10, NULL, NULL),
(230, 'Tierra del Fuego', 10, NULL, NULL),
(231, 'Tucuman', 10, NULL, NULL),
(232, 'Aragatsotn', 11, NULL, NULL),
(233, 'Ararat', 11, NULL, NULL),
(234, 'Armavir', 11, NULL, NULL),
(235, 'Gegharkunik', 11, NULL, NULL),
(236, 'Kotaik', 11, NULL, NULL),
(237, 'Lori', 11, NULL, NULL),
(238, 'Shirak', 11, NULL, NULL),
(239, 'Stepanakert', 11, NULL, NULL),
(240, 'Syunik', 11, NULL, NULL),
(241, 'Tavush', 11, NULL, NULL),
(242, 'Vayots Dzor', 11, NULL, NULL),
(243, 'Yerevan', 11, NULL, NULL),
(244, 'Aruba', 12, NULL, NULL),
(245, 'Auckland', 13, NULL, NULL),
(246, 'Australian Capital Territory', 13, NULL, NULL),
(247, 'Balgowlah', 13, NULL, NULL),
(248, 'Balmain', 13, NULL, NULL),
(249, 'Bankstown', 13, NULL, NULL),
(250, 'Baulkham Hills', 13, NULL, NULL),
(251, 'Bonnet Bay', 13, NULL, NULL),
(252, 'Camberwell', 13, NULL, NULL),
(253, 'Carole Park', 13, NULL, NULL),
(254, 'Castle Hill', 13, NULL, NULL),
(255, 'Caulfield', 13, NULL, NULL),
(256, 'Chatswood', 13, NULL, NULL),
(257, 'Cheltenham', 13, NULL, NULL),
(258, 'Cherrybrook', 13, NULL, NULL),
(259, 'Clayton', 13, NULL, NULL),
(260, 'Collingwood', 13, NULL, NULL),
(261, 'Frenchs Forest', 13, NULL, NULL),
(262, 'Hawthorn', 13, NULL, NULL),
(263, 'Jannnali', 13, NULL, NULL),
(264, 'Knoxfield', 13, NULL, NULL),
(265, 'Melbourne', 13, NULL, NULL),
(266, 'New South Wales', 13, NULL, NULL),
(267, 'Northern Territory', 13, NULL, NULL),
(268, 'Perth', 13, NULL, NULL),
(269, 'Queensland', 13, NULL, NULL),
(270, 'South Australia', 13, NULL, NULL),
(271, 'Tasmania', 13, NULL, NULL),
(272, 'Templestowe', 13, NULL, NULL),
(273, 'Victoria', 13, NULL, NULL),
(274, 'Werribee south', 13, NULL, NULL),
(275, 'Western Australia', 13, NULL, NULL),
(276, 'Wheeler', 13, NULL, NULL),
(277, 'Bundesland Salzburg', 14, NULL, NULL),
(278, 'Bundesland Steiermark', 14, NULL, NULL),
(279, 'Bundesland Tirol', 14, NULL, NULL),
(280, 'Burgenland', 14, NULL, NULL),
(281, 'Carinthia', 14, NULL, NULL),
(282, 'Karnten', 14, NULL, NULL),
(283, 'Liezen', 14, NULL, NULL),
(284, 'Lower Austria', 14, NULL, NULL),
(285, 'Niederosterreich', 14, NULL, NULL),
(286, 'Oberosterreich', 14, NULL, NULL),
(287, 'Salzburg', 14, NULL, NULL),
(288, 'Schleswig-Holstein', 14, NULL, NULL),
(289, 'Steiermark', 14, NULL, NULL),
(290, 'Styria', 14, NULL, NULL),
(291, 'Tirol', 14, NULL, NULL),
(292, 'Upper Austria', 14, NULL, NULL),
(293, 'Vorarlberg', 14, NULL, NULL),
(294, 'Wien', 14, NULL, NULL),
(295, 'Abseron', 15, NULL, NULL),
(296, 'Baki Sahari', 15, NULL, NULL),
(297, 'Ganca', 15, NULL, NULL),
(298, 'Ganja', 15, NULL, NULL),
(299, 'Kalbacar', 15, NULL, NULL),
(300, 'Lankaran', 15, NULL, NULL),
(301, 'Mil-Qarabax', 15, NULL, NULL),
(302, 'Mugan-Salyan', 15, NULL, NULL),
(303, 'Nagorni-Qarabax', 15, NULL, NULL),
(304, 'Naxcivan', 15, NULL, NULL),
(305, 'Priaraks', 15, NULL, NULL),
(306, 'Qazax', 15, NULL, NULL),
(307, 'Saki', 15, NULL, NULL),
(308, 'Sirvan', 15, NULL, NULL),
(309, 'Xacmaz', 15, NULL, NULL),
(310, 'Abaco', 16, NULL, NULL),
(311, 'Acklins Island', 16, NULL, NULL),
(312, 'Andros', 16, NULL, NULL),
(313, 'Berry Islands', 16, NULL, NULL),
(314, 'Biminis', 16, NULL, NULL),
(315, 'Cat Island', 16, NULL, NULL),
(316, 'Crooked Island', 16, NULL, NULL),
(317, 'Eleuthera', 16, NULL, NULL),
(318, 'Exuma and Cays', 16, NULL, NULL),
(319, 'Grand Bahama', 16, NULL, NULL),
(320, 'Inagua Islands', 16, NULL, NULL),
(321, 'Long Island', 16, NULL, NULL),
(322, 'Mayaguana', 16, NULL, NULL),
(323, 'New Providence', 16, NULL, NULL),
(324, 'Ragged Island', 16, NULL, NULL),
(325, 'Rum Cay', 16, NULL, NULL),
(326, 'San Salvador', 16, NULL, NULL),
(327, 'Isa', 17, NULL, NULL),
(328, 'Badiyah', 17, NULL, NULL),
(329, 'Hidd', 17, NULL, NULL),
(330, 'Jidd Hafs', 17, NULL, NULL),
(331, 'Mahama', 17, NULL, NULL),
(332, 'Manama', 17, NULL, NULL),
(333, 'Sitrah', 17, NULL, NULL),
(334, 'al-Manamah', 17, NULL, NULL),
(335, 'al-Muharraq', 17, NULL, NULL),
(336, 'ar-Rifa\'\'a', 17, NULL, NULL),
(337, 'Bagar Hat', 18, NULL, NULL),
(338, 'Bandarban', 18, NULL, NULL),
(339, 'Barguna', 18, NULL, NULL),
(340, 'Barisal', 18, NULL, NULL),
(341, 'Bhola', 18, NULL, NULL),
(342, 'Bogora', 18, NULL, NULL),
(343, 'Brahman Bariya', 18, NULL, NULL),
(344, 'Chandpur', 18, NULL, NULL),
(345, 'Chattagam', 18, NULL, NULL),
(346, 'Chittagong Division', 18, NULL, NULL),
(347, 'Chuadanga', 18, NULL, NULL),
(348, 'Dhaka', 18, NULL, NULL),
(349, 'Dinajpur', 18, NULL, NULL),
(350, 'Faridpur', 18, NULL, NULL),
(351, 'Feni', 18, NULL, NULL),
(352, 'Gaybanda', 18, NULL, NULL),
(353, 'Gazipur', 18, NULL, NULL),
(354, 'Gopalganj', 18, NULL, NULL),
(355, 'Habiganj', 18, NULL, NULL),
(356, 'Jaipur Hat', 18, NULL, NULL),
(357, 'Jamalpur', 18, NULL, NULL),
(358, 'Jessor', 18, NULL, NULL),
(359, 'Jhalakati', 18, NULL, NULL),
(360, 'Jhanaydah', 18, NULL, NULL),
(361, 'Khagrachhari', 18, NULL, NULL),
(362, 'Khulna', 18, NULL, NULL),
(363, 'Kishorganj', 18, NULL, NULL),
(364, 'Koks Bazar', 18, NULL, NULL),
(365, 'Komilla', 18, NULL, NULL),
(366, 'Kurigram', 18, NULL, NULL),
(367, 'Kushtiya', 18, NULL, NULL),
(368, 'Lakshmipur', 18, NULL, NULL),
(369, 'Lalmanir Hat', 18, NULL, NULL),
(370, 'Madaripur', 18, NULL, NULL),
(371, 'Magura', 18, NULL, NULL),
(372, 'Maimansingh', 18, NULL, NULL),
(373, 'Manikganj', 18, NULL, NULL),
(374, 'Maulvi Bazar', 18, NULL, NULL),
(375, 'Meherpur', 18, NULL, NULL),
(376, 'Munshiganj', 18, NULL, NULL),
(377, 'Naral', 18, NULL, NULL),
(378, 'Narayanganj', 18, NULL, NULL),
(379, 'Narsingdi', 18, NULL, NULL),
(380, 'Nator', 18, NULL, NULL),
(381, 'Naugaon', 18, NULL, NULL),
(382, 'Nawabganj', 18, NULL, NULL),
(383, 'Netrakona', 18, NULL, NULL),
(384, 'Nilphamari', 18, NULL, NULL),
(385, 'Noakhali', 18, NULL, NULL),
(386, 'Pabna', 18, NULL, NULL),
(387, 'Panchagarh', 18, NULL, NULL),
(388, 'Patuakhali', 18, NULL, NULL),
(389, 'Pirojpur', 18, NULL, NULL),
(390, 'Rajbari', 18, NULL, NULL),
(391, 'Rajshahi', 18, NULL, NULL),
(392, 'Rangamati', 18, NULL, NULL),
(393, 'Rangpur', 18, NULL, NULL),
(394, 'Satkhira', 18, NULL, NULL),
(395, 'Shariatpur', 18, NULL, NULL),
(396, 'Sherpur', 18, NULL, NULL),
(397, 'Silhat', 18, NULL, NULL),
(398, 'Sirajganj', 18, NULL, NULL),
(399, 'Sunamganj', 18, NULL, NULL),
(400, 'Tangayal', 18, NULL, NULL),
(401, 'Thakurgaon', 18, NULL, NULL),
(402, 'Christ Church', 19, NULL, NULL),
(403, 'Saint Andrew', 19, NULL, NULL),
(404, 'Saint George', 19, NULL, NULL),
(405, 'Saint James', 19, NULL, NULL),
(406, 'Saint John', 19, NULL, NULL),
(407, 'Saint Joseph', 19, NULL, NULL),
(408, 'Saint Lucy', 19, NULL, NULL),
(409, 'Saint Michael', 19, NULL, NULL),
(410, 'Saint Peter', 19, NULL, NULL),
(411, 'Saint Philip', 19, NULL, NULL),
(412, 'Saint Thomas', 19, NULL, NULL),
(413, 'Brest', 20, NULL, NULL),
(414, 'Homjel', 20, NULL, NULL),
(415, 'Hrodna', 20, NULL, NULL),
(416, 'Mahiljow', 20, NULL, NULL),
(417, 'Mahilyowskaya Voblasts', 20, NULL, NULL),
(418, 'Minsk', 20, NULL, NULL),
(419, 'Minskaja Voblasts', 20, NULL, NULL),
(420, 'Petrik', 20, NULL, NULL),
(421, 'Vicebsk', 20, NULL, NULL),
(422, 'Antwerpen', 21, NULL, NULL),
(423, 'Berchem', 21, NULL, NULL),
(424, 'Brabant', 21, NULL, NULL),
(425, 'Brabant Wallon', 21, NULL, NULL),
(426, 'Brussel', 21, NULL, NULL),
(427, 'East Flanders', 21, NULL, NULL),
(428, 'Hainaut', 21, NULL, NULL),
(429, 'Liege', 21, NULL, NULL),
(430, 'Limburg', 21, NULL, NULL),
(431, 'Luxembourg', 21, NULL, NULL),
(432, 'Namur', 21, NULL, NULL),
(433, 'Ontario', 21, NULL, NULL),
(434, 'Oost-Vlaanderen', 21, NULL, NULL),
(435, 'Provincie Brabant', 21, NULL, NULL),
(436, 'Vlaams-Brabant', 21, NULL, NULL),
(437, 'Wallonne', 21, NULL, NULL),
(438, 'West-Vlaanderen', 21, NULL, NULL),
(439, 'Belize', 22, NULL, NULL),
(440, 'Cayo', 22, NULL, NULL),
(441, 'Corozal', 22, NULL, NULL),
(442, 'Orange Walk', 22, NULL, NULL),
(443, 'Stann Creek', 22, NULL, NULL),
(444, 'Toledo', 22, NULL, NULL),
(445, 'Alibori', 23, NULL, NULL),
(446, 'Atacora', 23, NULL, NULL),
(447, 'Atlantique', 23, NULL, NULL),
(448, 'Borgou', 23, NULL, NULL),
(449, 'Collines', 23, NULL, NULL),
(450, 'Couffo', 23, NULL, NULL),
(451, 'Donga', 23, NULL, NULL),
(452, 'Littoral', 23, NULL, NULL),
(453, 'Mono', 23, NULL, NULL),
(454, 'Oueme', 23, NULL, NULL),
(455, 'Plateau', 23, NULL, NULL),
(456, 'Zou', 23, NULL, NULL),
(457, 'Hamilton', 24, NULL, NULL),
(458, 'Saint George', 24, NULL, NULL),
(459, 'Bumthang', 25, NULL, NULL),
(460, 'Chhukha', 25, NULL, NULL),
(461, 'Chirang', 25, NULL, NULL),
(462, 'Daga', 25, NULL, NULL),
(463, 'Geylegphug', 25, NULL, NULL),
(464, 'Ha', 25, NULL, NULL),
(465, 'Lhuntshi', 25, NULL, NULL),
(466, 'Mongar', 25, NULL, NULL),
(467, 'Pemagatsel', 25, NULL, NULL),
(468, 'Punakha', 25, NULL, NULL),
(469, 'Rinpung', 25, NULL, NULL),
(470, 'Samchi', 25, NULL, NULL),
(471, 'Samdrup Jongkhar', 25, NULL, NULL),
(472, 'Shemgang', 25, NULL, NULL),
(473, 'Tashigang', 25, NULL, NULL),
(474, 'Timphu', 25, NULL, NULL),
(475, 'Tongsa', 25, NULL, NULL),
(476, 'Wangdiphodrang', 25, NULL, NULL),
(477, 'Beni', 26, NULL, NULL),
(478, 'Chuquisaca', 26, NULL, NULL),
(479, 'Cochabamba', 26, NULL, NULL),
(480, 'La Paz', 26, NULL, NULL),
(481, 'Oruro', 26, NULL, NULL),
(482, 'Pando', 26, NULL, NULL),
(483, 'Potosi', 26, NULL, NULL),
(484, 'Santa Cruz', 26, NULL, NULL),
(485, 'Tarija', 26, NULL, NULL),
(486, 'Federacija Bosna i Hercegovina', 27, NULL, NULL),
(487, 'Republika Srpska', 27, NULL, NULL),
(488, 'Central Bobonong', 28, NULL, NULL),
(489, 'Central Boteti', 28, NULL, NULL),
(490, 'Central Mahalapye', 28, NULL, NULL),
(491, 'Central Serowe-Palapye', 28, NULL, NULL),
(492, 'Central Tutume', 28, NULL, NULL),
(493, 'Chobe', 28, NULL, NULL),
(494, 'Francistown', 28, NULL, NULL),
(495, 'Gaborone', 28, NULL, NULL),
(496, 'Ghanzi', 28, NULL, NULL),
(497, 'Jwaneng', 28, NULL, NULL),
(498, 'Kgalagadi North', 28, NULL, NULL),
(499, 'Kgalagadi South', 28, NULL, NULL),
(500, 'Kgatleng', 28, NULL, NULL),
(501, 'Kweneng', 28, NULL, NULL),
(502, 'Lobatse', 28, NULL, NULL),
(503, 'Ngamiland', 28, NULL, NULL),
(504, 'Ngwaketse', 28, NULL, NULL),
(505, 'North East', 28, NULL, NULL),
(506, 'Okavango', 28, NULL, NULL),
(507, 'Orapa', 28, NULL, NULL),
(508, 'Selibe Phikwe', 28, NULL, NULL),
(509, 'South East', 28, NULL, NULL),
(510, 'Sowa', 28, NULL, NULL),
(511, 'Bouvet Island', 29, NULL, NULL),
(512, 'Acre', 30, NULL, NULL),
(513, 'Alagoas', 30, NULL, NULL),
(514, 'Amapa', 30, NULL, NULL),
(515, 'Amazonas', 30, NULL, NULL),
(516, 'Bahia', 30, NULL, NULL),
(517, 'Ceara', 30, NULL, NULL),
(518, 'Distrito Federal', 30, NULL, NULL),
(519, 'Espirito Santo', 30, NULL, NULL),
(520, 'Estado de Sao Paulo', 30, NULL, NULL),
(521, 'Goias', 30, NULL, NULL),
(522, 'Maranhao', 30, NULL, NULL),
(523, 'Mato Grosso', 30, NULL, NULL),
(524, 'Mato Grosso do Sul', 30, NULL, NULL),
(525, 'Minas Gerais', 30, NULL, NULL),
(526, 'Para', 30, NULL, NULL),
(527, 'Paraiba', 30, NULL, NULL),
(528, 'Parana', 30, NULL, NULL),
(529, 'Pernambuco', 30, NULL, NULL),
(530, 'Piaui', 30, NULL, NULL),
(531, 'Rio Grande do Norte', 30, NULL, NULL),
(532, 'Rio Grande do Sul', 30, NULL, NULL),
(533, 'Rio de Janeiro', 30, NULL, NULL),
(534, 'Rondonia', 30, NULL, NULL),
(535, 'Roraima', 30, NULL, NULL),
(536, 'Santa Catarina', 30, NULL, NULL),
(537, 'Sao Paulo', 30, NULL, NULL),
(538, 'Sergipe', 30, NULL, NULL),
(539, 'Tocantins', 30, NULL, NULL),
(540, 'British Indian Ocean Territory', 31, NULL, NULL),
(541, 'Belait', 32, NULL, NULL),
(542, 'Brunei-Muara', 32, NULL, NULL),
(543, 'Temburong', 32, NULL, NULL),
(544, 'Tutong', 32, NULL, NULL),
(545, 'Blagoevgrad', 33, NULL, NULL),
(546, 'Burgas', 33, NULL, NULL),
(547, 'Dobrich', 33, NULL, NULL),
(548, 'Gabrovo', 33, NULL, NULL),
(549, 'Haskovo', 33, NULL, NULL),
(550, 'Jambol', 33, NULL, NULL),
(551, 'Kardzhali', 33, NULL, NULL),
(552, 'Kjustendil', 33, NULL, NULL),
(553, 'Lovech', 33, NULL, NULL),
(554, 'Montana', 33, NULL, NULL),
(555, 'Oblast Sofiya-Grad', 33, NULL, NULL),
(556, 'Pazardzhik', 33, NULL, NULL),
(557, 'Pernik', 33, NULL, NULL),
(558, 'Pleven', 33, NULL, NULL),
(559, 'Plovdiv', 33, NULL, NULL),
(560, 'Razgrad', 33, NULL, NULL),
(561, 'Ruse', 33, NULL, NULL),
(562, 'Shumen', 33, NULL, NULL),
(563, 'Silistra', 33, NULL, NULL),
(564, 'Sliven', 33, NULL, NULL),
(565, 'Smoljan', 33, NULL, NULL),
(566, 'Sofija grad', 33, NULL, NULL),
(567, 'Sofijska oblast', 33, NULL, NULL),
(568, 'Stara Zagora', 33, NULL, NULL),
(569, 'Targovishte', 33, NULL, NULL),
(570, 'Varna', 33, NULL, NULL),
(571, 'Veliko Tarnovo', 33, NULL, NULL),
(572, 'Vidin', 33, NULL, NULL),
(573, 'Vraca', 33, NULL, NULL),
(574, 'Yablaniza', 33, NULL, NULL),
(575, 'Bale', 34, NULL, NULL),
(576, 'Bam', 34, NULL, NULL),
(577, 'Bazega', 34, NULL, NULL),
(578, 'Bougouriba', 34, NULL, NULL),
(579, 'Boulgou', 34, NULL, NULL),
(580, 'Boulkiemde', 34, NULL, NULL),
(581, 'Comoe', 34, NULL, NULL),
(582, 'Ganzourgou', 34, NULL, NULL),
(583, 'Gnagna', 34, NULL, NULL),
(584, 'Gourma', 34, NULL, NULL),
(585, 'Houet', 34, NULL, NULL),
(586, 'Ioba', 34, NULL, NULL),
(587, 'Kadiogo', 34, NULL, NULL),
(588, 'Kenedougou', 34, NULL, NULL),
(589, 'Komandjari', 34, NULL, NULL),
(590, 'Kompienga', 34, NULL, NULL),
(591, 'Kossi', 34, NULL, NULL),
(592, 'Kouritenga', 34, NULL, NULL),
(593, 'Kourweogo', 34, NULL, NULL),
(594, 'Leraba', 34, NULL, NULL),
(595, 'Mouhoun', 34, NULL, NULL),
(596, 'Nahouri', 34, NULL, NULL),
(597, 'Namentenga', 34, NULL, NULL),
(598, 'Noumbiel', 34, NULL, NULL),
(599, 'Oubritenga', 34, NULL, NULL),
(600, 'Oudalan', 34, NULL, NULL),
(601, 'Passore', 34, NULL, NULL),
(602, 'Poni', 34, NULL, NULL),
(603, 'Sanguie', 34, NULL, NULL),
(604, 'Sanmatenga', 34, NULL, NULL),
(605, 'Seno', 34, NULL, NULL),
(606, 'Sissili', 34, NULL, NULL),
(607, 'Soum', 34, NULL, NULL),
(608, 'Sourou', 34, NULL, NULL),
(609, 'Tapoa', 34, NULL, NULL),
(610, 'Tuy', 34, NULL, NULL),
(611, 'Yatenga', 34, NULL, NULL),
(612, 'Zondoma', 34, NULL, NULL),
(613, 'Zoundweogo', 34, NULL, NULL),
(614, 'Bubanza', 35, NULL, NULL),
(615, 'Bujumbura', 35, NULL, NULL),
(616, 'Bururi', 35, NULL, NULL),
(617, 'Cankuzo', 35, NULL, NULL),
(618, 'Cibitoke', 35, NULL, NULL),
(619, 'Gitega', 35, NULL, NULL),
(620, 'Karuzi', 35, NULL, NULL),
(621, 'Kayanza', 35, NULL, NULL),
(622, 'Kirundo', 35, NULL, NULL),
(623, 'Makamba', 35, NULL, NULL),
(624, 'Muramvya', 35, NULL, NULL),
(625, 'Muyinga', 35, NULL, NULL),
(626, 'Ngozi', 35, NULL, NULL),
(627, 'Rutana', 35, NULL, NULL),
(628, 'Ruyigi', 35, NULL, NULL),
(629, 'Banteay Mean Chey', 36, NULL, NULL),
(630, 'Bat Dambang', 36, NULL, NULL),
(631, 'Kampong Cham', 36, NULL, NULL),
(632, 'Kampong Chhnang', 36, NULL, NULL),
(633, 'Kampong Spoeu', 36, NULL, NULL),
(634, 'Kampong Thum', 36, NULL, NULL),
(635, 'Kampot', 36, NULL, NULL),
(636, 'Kandal', 36, NULL, NULL),
(637, 'Kaoh Kong', 36, NULL, NULL),
(638, 'Kracheh', 36, NULL, NULL),
(639, 'Krong Kaeb', 36, NULL, NULL),
(640, 'Krong Pailin', 36, NULL, NULL),
(641, 'Krong Preah Sihanouk', 36, NULL, NULL),
(642, 'Mondol Kiri', 36, NULL, NULL),
(643, 'Otdar Mean Chey', 36, NULL, NULL),
(644, 'Phnum Penh', 36, NULL, NULL),
(645, 'Pousat', 36, NULL, NULL),
(646, 'Preah Vihear', 36, NULL, NULL),
(647, 'Prey Veaeng', 36, NULL, NULL),
(648, 'Rotanak Kiri', 36, NULL, NULL),
(649, 'Siem Reab', 36, NULL, NULL),
(650, 'Stueng Traeng', 36, NULL, NULL),
(651, 'Svay Rieng', 36, NULL, NULL),
(652, 'Takaev', 36, NULL, NULL),
(653, 'Adamaoua', 37, NULL, NULL),
(654, 'Centre', 37, NULL, NULL),
(655, 'Est', 37, NULL, NULL),
(656, 'Littoral', 37, NULL, NULL),
(657, 'Nord', 37, NULL, NULL),
(658, 'Nord Extreme', 37, NULL, NULL),
(659, 'Nordouest', 37, NULL, NULL),
(660, 'Ouest', 37, NULL, NULL),
(661, 'Sud', 37, NULL, NULL),
(662, 'Sudouest', 37, NULL, NULL),
(663, 'Alberta', 38, NULL, NULL),
(664, 'British Columbia', 38, NULL, NULL),
(665, 'Manitoba', 38, NULL, NULL),
(666, 'New Brunswick', 38, NULL, NULL),
(667, 'Newfoundland and Labrador', 38, NULL, NULL),
(668, 'Northwest Territories', 38, NULL, NULL),
(669, 'Nova Scotia', 38, NULL, NULL),
(670, 'Nunavut', 38, NULL, NULL),
(671, 'Ontario', 38, NULL, NULL),
(672, 'Prince Edward Island', 38, NULL, NULL),
(673, 'Quebec', 38, NULL, NULL),
(674, 'Saskatchewan', 38, NULL, NULL),
(675, 'Yukon', 38, NULL, NULL),
(676, 'Boavista', 39, NULL, NULL),
(677, 'Brava', 39, NULL, NULL),
(678, 'Fogo', 39, NULL, NULL),
(679, 'Maio', 39, NULL, NULL),
(680, 'Sal', 39, NULL, NULL),
(681, 'Santo Antao', 39, NULL, NULL),
(682, 'Sao Nicolau', 39, NULL, NULL),
(683, 'Sao Tiago', 39, NULL, NULL),
(684, 'Sao Vicente', 39, NULL, NULL),
(685, 'Grand Cayman', 40, NULL, NULL),
(686, 'Bamingui-Bangoran', 41, NULL, NULL),
(687, 'Bangui', 41, NULL, NULL),
(688, 'Basse-Kotto', 41, NULL, NULL),
(689, 'Haut-Mbomou', 41, NULL, NULL),
(690, 'Haute-Kotto', 41, NULL, NULL),
(691, 'Kemo', 41, NULL, NULL),
(692, 'Lobaye', 41, NULL, NULL),
(693, 'Mambere-Kadei', 41, NULL, NULL),
(694, 'Mbomou', 41, NULL, NULL),
(695, 'Nana-Gribizi', 41, NULL, NULL),
(696, 'Nana-Mambere', 41, NULL, NULL),
(697, 'Ombella Mpoko', 41, NULL, NULL),
(698, 'Ouaka', 41, NULL, NULL),
(699, 'Ouham', 41, NULL, NULL),
(700, 'Ouham-Pende', 41, NULL, NULL),
(701, 'Sangha-Mbaere', 41, NULL, NULL),
(702, 'Vakaga', 41, NULL, NULL),
(703, 'Batha', 42, NULL, NULL),
(704, 'Biltine', 42, NULL, NULL),
(705, 'Bourkou-Ennedi-Tibesti', 42, NULL, NULL),
(706, 'Chari-Baguirmi', 42, NULL, NULL),
(707, 'Guera', 42, NULL, NULL),
(708, 'Kanem', 42, NULL, NULL),
(709, 'Lac', 42, NULL, NULL),
(710, 'Logone Occidental', 42, NULL, NULL),
(711, 'Logone Oriental', 42, NULL, NULL),
(712, 'Mayo-Kebbi', 42, NULL, NULL),
(713, 'Moyen-Chari', 42, NULL, NULL),
(714, 'Ouaddai', 42, NULL, NULL),
(715, 'Salamat', 42, NULL, NULL),
(716, 'Tandjile', 42, NULL, NULL),
(717, 'Aisen', 43, NULL, NULL),
(718, 'Antofagasta', 43, NULL, NULL),
(719, 'Araucania', 43, NULL, NULL),
(720, 'Atacama', 43, NULL, NULL),
(721, 'Bio Bio', 43, NULL, NULL),
(722, 'Coquimbo', 43, NULL, NULL),
(723, 'Libertador General Bernardo O', 43, NULL, NULL),
(724, 'Los Lagos', 43, NULL, NULL),
(725, 'Magellanes', 43, NULL, NULL),
(726, 'Maule', 43, NULL, NULL),
(727, 'Metropolitana', 43, NULL, NULL),
(728, 'Metropolitana de Santiago', 43, NULL, NULL),
(729, 'Tarapaca', 43, NULL, NULL),
(730, 'Valparaiso', 43, NULL, NULL),
(731, 'Anhui', 44, NULL, NULL),
(732, 'Anhui Province', 44, NULL, NULL),
(733, 'Anhui Sheng', 44, NULL, NULL),
(734, 'Aomen', 44, NULL, NULL),
(735, 'Beijing', 44, NULL, NULL),
(736, 'Beijing Shi', 44, NULL, NULL),
(737, 'Chongqing', 44, NULL, NULL),
(738, 'Fujian', 44, NULL, NULL),
(739, 'Fujian Sheng', 44, NULL, NULL),
(740, 'Gansu', 44, NULL, NULL),
(741, 'Guangdong', 44, NULL, NULL),
(742, 'Guangdong Sheng', 44, NULL, NULL),
(743, 'Guangxi', 44, NULL, NULL),
(744, 'Guizhou', 44, NULL, NULL),
(745, 'Hainan', 44, NULL, NULL),
(746, 'Hebei', 44, NULL, NULL),
(747, 'Heilongjiang', 44, NULL, NULL),
(748, 'Henan', 44, NULL, NULL),
(749, 'Hubei', 44, NULL, NULL),
(750, 'Hunan', 44, NULL, NULL),
(751, 'Jiangsu', 44, NULL, NULL),
(752, 'Jiangsu Sheng', 44, NULL, NULL),
(753, 'Jiangxi', 44, NULL, NULL),
(754, 'Jilin', 44, NULL, NULL),
(755, 'Liaoning', 44, NULL, NULL),
(756, 'Liaoning Sheng', 44, NULL, NULL),
(757, 'Nei Monggol', 44, NULL, NULL),
(758, 'Ningxia Hui', 44, NULL, NULL),
(759, 'Qinghai', 44, NULL, NULL),
(760, 'Shaanxi', 44, NULL, NULL),
(761, 'Shandong', 44, NULL, NULL),
(762, 'Shandong Sheng', 44, NULL, NULL),
(763, 'Shanghai', 44, NULL, NULL),
(764, 'Shanxi', 44, NULL, NULL),
(765, 'Sichuan', 44, NULL, NULL),
(766, 'Tianjin', 44, NULL, NULL),
(767, 'Xianggang', 44, NULL, NULL),
(768, 'Xinjiang', 44, NULL, NULL),
(769, 'Xizang', 44, NULL, NULL),
(770, 'Yunnan', 44, NULL, NULL),
(771, 'Zhejiang', 44, NULL, NULL),
(772, 'Zhejiang Sheng', 44, NULL, NULL),
(773, 'Christmas Island', 45, NULL, NULL),
(774, 'Cocos (Keeling) Islands', 46, NULL, NULL),
(775, 'Amazonas', 47, NULL, NULL),
(776, 'Antioquia', 47, NULL, NULL),
(777, 'Arauca', 47, NULL, NULL),
(778, 'Atlantico', 47, NULL, NULL),
(779, 'Bogota', 47, NULL, NULL),
(780, 'Bolivar', 47, NULL, NULL),
(781, 'Boyaca', 47, NULL, NULL),
(782, 'Caldas', 47, NULL, NULL),
(783, 'Caqueta', 47, NULL, NULL),
(784, 'Casanare', 47, NULL, NULL),
(785, 'Cauca', 47, NULL, NULL),
(786, 'Cesar', 47, NULL, NULL),
(787, 'Choco', 47, NULL, NULL),
(788, 'Cordoba', 47, NULL, NULL),
(789, 'Cundinamarca', 47, NULL, NULL),
(790, 'Guainia', 47, NULL, NULL),
(791, 'Guaviare', 47, NULL, NULL),
(792, 'Huila', 47, NULL, NULL),
(793, 'La Guajira', 47, NULL, NULL),
(794, 'Magdalena', 47, NULL, NULL),
(795, 'Meta', 47, NULL, NULL),
(796, 'Narino', 47, NULL, NULL),
(797, 'Norte de Santander', 47, NULL, NULL),
(798, 'Putumayo', 47, NULL, NULL),
(799, 'Quindio', 47, NULL, NULL),
(800, 'Risaralda', 47, NULL, NULL),
(801, 'San Andres y Providencia', 47, NULL, NULL),
(802, 'Santander', 47, NULL, NULL),
(803, 'Sucre', 47, NULL, NULL),
(804, 'Tolima', 47, NULL, NULL),
(805, 'Valle del Cauca', 47, NULL, NULL),
(806, 'Vaupes', 47, NULL, NULL),
(807, 'Vichada', 47, NULL, NULL),
(808, 'Mwali', 48, NULL, NULL),
(809, 'Njazidja', 48, NULL, NULL),
(810, 'Nzwani', 48, NULL, NULL),
(811, 'Bouenza', 49, NULL, NULL),
(812, 'Brazzaville', 49, NULL, NULL),
(813, 'Cuvette', 49, NULL, NULL),
(814, 'Kouilou', 49, NULL, NULL),
(815, 'Lekoumou', 49, NULL, NULL),
(816, 'Likouala', 49, NULL, NULL),
(817, 'Niari', 49, NULL, NULL),
(818, 'Plateaux', 49, NULL, NULL),
(819, 'Pool', 49, NULL, NULL),
(820, 'Sangha', 49, NULL, NULL),
(821, 'Bandundu', 50, NULL, NULL),
(822, 'Bas-Congo', 50, NULL, NULL),
(823, 'Equateur', 50, NULL, NULL),
(824, 'Haut-Congo', 50, NULL, NULL),
(825, 'Kasai-Occidental', 50, NULL, NULL),
(826, 'Kasai-Oriental', 50, NULL, NULL),
(827, 'Katanga', 50, NULL, NULL),
(828, 'Kinshasa', 50, NULL, NULL),
(829, 'Maniema', 50, NULL, NULL),
(830, 'Nord-Kivu', 50, NULL, NULL),
(831, 'Sud-Kivu', 50, NULL, NULL),
(832, 'Aitutaki', 51, NULL, NULL),
(833, 'Atiu', 51, NULL, NULL),
(834, 'Mangaia', 51, NULL, NULL),
(835, 'Manihiki', 51, NULL, NULL),
(836, 'Mauke', 51, NULL, NULL),
(837, 'Mitiaro', 51, NULL, NULL),
(838, 'Nassau', 51, NULL, NULL),
(839, 'Pukapuka', 51, NULL, NULL),
(840, 'Rakahanga', 51, NULL, NULL),
(841, 'Rarotonga', 51, NULL, NULL),
(842, 'Tongareva', 51, NULL, NULL),
(843, 'Alajuela', 52, NULL, NULL),
(844, 'Cartago', 52, NULL, NULL),
(845, 'Guanacaste', 52, NULL, NULL),
(846, 'Heredia', 52, NULL, NULL),
(847, 'Limon', 52, NULL, NULL),
(848, 'Puntarenas', 52, NULL, NULL),
(849, 'San Jose', 52, NULL, NULL),
(850, 'Abidjan', 53, NULL, NULL),
(851, 'Agneby', 53, NULL, NULL),
(852, 'Bafing', 53, NULL, NULL),
(853, 'Denguele', 53, NULL, NULL),
(854, 'Dix-huit Montagnes', 53, NULL, NULL),
(855, 'Fromager', 53, NULL, NULL),
(856, 'Haut-Sassandra', 53, NULL, NULL),
(857, 'Lacs', 53, NULL, NULL),
(858, 'Lagunes', 53, NULL, NULL),
(859, 'Marahoue', 53, NULL, NULL),
(860, 'Moyen-Cavally', 53, NULL, NULL),
(861, 'Moyen-Comoe', 53, NULL, NULL),
(862, 'N\'\'zi-Comoe', 53, NULL, NULL),
(863, 'Sassandra', 53, NULL, NULL),
(864, 'Savanes', 53, NULL, NULL),
(865, 'Sud-Bandama', 53, NULL, NULL),
(866, 'Sud-Comoe', 53, NULL, NULL),
(867, 'Vallee du Bandama', 53, NULL, NULL),
(868, 'Worodougou', 53, NULL, NULL),
(869, 'Zanzan', 53, NULL, NULL),
(870, 'Bjelovar-Bilogora', 54, NULL, NULL),
(871, 'Dubrovnik-Neretva', 54, NULL, NULL),
(872, 'Grad Zagreb', 54, NULL, NULL),
(873, 'Istra', 54, NULL, NULL),
(874, 'Karlovac', 54, NULL, NULL),
(875, 'Koprivnica-Krizhevci', 54, NULL, NULL),
(876, 'Krapina-Zagorje', 54, NULL, NULL),
(877, 'Lika-Senj', 54, NULL, NULL),
(878, 'Medhimurje', 54, NULL, NULL),
(879, 'Medimurska Zupanija', 54, NULL, NULL),
(880, 'Osijek-Baranja', 54, NULL, NULL),
(881, 'Osjecko-Baranjska Zupanija', 54, NULL, NULL),
(882, 'Pozhega-Slavonija', 54, NULL, NULL),
(883, 'Primorje-Gorski Kotar', 54, NULL, NULL),
(884, 'Shibenik-Knin', 54, NULL, NULL),
(885, 'Sisak-Moslavina', 54, NULL, NULL),
(886, 'Slavonski Brod-Posavina', 54, NULL, NULL),
(887, 'Split-Dalmacija', 54, NULL, NULL),
(888, 'Varazhdin', 54, NULL, NULL),
(889, 'Virovitica-Podravina', 54, NULL, NULL),
(890, 'Vukovar-Srijem', 54, NULL, NULL),
(891, 'Zadar', 54, NULL, NULL),
(892, 'Zagreb', 54, NULL, NULL),
(893, 'Camaguey', 55, NULL, NULL),
(894, 'Ciego de Avila', 55, NULL, NULL),
(895, 'Cienfuegos', 55, NULL, NULL),
(896, 'Ciudad de la Habana', 55, NULL, NULL),
(897, 'Granma', 55, NULL, NULL),
(898, 'Guantanamo', 55, NULL, NULL),
(899, 'Habana', 55, NULL, NULL),
(900, 'Holguin', 55, NULL, NULL),
(901, 'Isla de la Juventud', 55, NULL, NULL),
(902, 'La Habana', 55, NULL, NULL),
(903, 'Las Tunas', 55, NULL, NULL),
(904, 'Matanzas', 55, NULL, NULL),
(905, 'Pinar del Rio', 55, NULL, NULL),
(906, 'Sancti Spiritus', 55, NULL, NULL),
(907, 'Santiago de Cuba', 55, NULL, NULL),
(908, 'Villa Clara', 55, NULL, NULL),
(909, 'Government controlled area', 56, NULL, NULL),
(910, 'Limassol', 56, NULL, NULL),
(911, 'Nicosia District', 56, NULL, NULL),
(912, 'Paphos', 56, NULL, NULL),
(913, 'Turkish controlled area', 56, NULL, NULL),
(914, 'Central Bohemian', 57, NULL, NULL),
(915, 'Frycovice', 57, NULL, NULL),
(916, 'Jihocesky Kraj', 57, NULL, NULL),
(917, 'Jihochesky', 57, NULL, NULL),
(918, 'Jihomoravsky', 57, NULL, NULL),
(919, 'Karlovarsky', 57, NULL, NULL),
(920, 'Klecany', 57, NULL, NULL),
(921, 'Kralovehradecky', 57, NULL, NULL),
(922, 'Liberecky', 57, NULL, NULL),
(923, 'Lipov', 57, NULL, NULL),
(924, 'Moravskoslezsky', 57, NULL, NULL),
(925, 'Olomoucky', 57, NULL, NULL),
(926, 'Olomoucky Kraj', 57, NULL, NULL),
(927, 'Pardubicky', 57, NULL, NULL),
(928, 'Plzensky', 57, NULL, NULL),
(929, 'Praha', 57, NULL, NULL),
(930, 'Rajhrad', 57, NULL, NULL),
(931, 'Smirice', 57, NULL, NULL),
(932, 'South Moravian', 57, NULL, NULL),
(933, 'Straz nad Nisou', 57, NULL, NULL),
(934, 'Stredochesky', 57, NULL, NULL),
(935, 'Unicov', 57, NULL, NULL),
(936, 'Ustecky', 57, NULL, NULL),
(937, 'Valletta', 57, NULL, NULL),
(938, 'Velesin', 57, NULL, NULL),
(939, 'Vysochina', 57, NULL, NULL),
(940, 'Zlinsky', 57, NULL, NULL),
(941, 'Arhus', 58, NULL, NULL),
(942, 'Bornholm', 58, NULL, NULL),
(943, 'Frederiksborg', 58, NULL, NULL),
(944, 'Fyn', 58, NULL, NULL),
(945, 'Hovedstaden', 58, NULL, NULL),
(946, 'Kobenhavn', 58, NULL, NULL),
(947, 'Kobenhavns Amt', 58, NULL, NULL),
(948, 'Kobenhavns Kommune', 58, NULL, NULL),
(949, 'Nordjylland', 58, NULL, NULL),
(950, 'Ribe', 58, NULL, NULL),
(951, 'Ringkobing', 58, NULL, NULL),
(952, 'Roervig', 58, NULL, NULL),
(953, 'Roskilde', 58, NULL, NULL),
(954, 'Roslev', 58, NULL, NULL),
(955, 'Sjaelland', 58, NULL, NULL),
(956, 'Soeborg', 58, NULL, NULL),
(957, 'Sonderjylland', 58, NULL, NULL),
(958, 'Storstrom', 58, NULL, NULL),
(959, 'Syddanmark', 58, NULL, NULL),
(960, 'Toelloese', 58, NULL, NULL),
(961, 'Vejle', 58, NULL, NULL),
(962, 'Vestsjalland', 58, NULL, NULL),
(963, 'Viborg', 58, NULL, NULL),
(964, 'Ali Sabih', 59, NULL, NULL),
(965, 'Dikhil', 59, NULL, NULL),
(966, 'Jibuti', 59, NULL, NULL),
(967, 'Tajurah', 59, NULL, NULL),
(968, 'Ubuk', 59, NULL, NULL),
(969, 'Saint Andrew', 60, NULL, NULL),
(970, 'Saint David', 60, NULL, NULL),
(971, 'Saint George', 60, NULL, NULL),
(972, 'Saint John', 60, NULL, NULL),
(973, 'Saint Joseph', 60, NULL, NULL),
(974, 'Saint Luke', 60, NULL, NULL),
(975, 'Saint Mark', 60, NULL, NULL),
(976, 'Saint Patrick', 60, NULL, NULL),
(977, 'Saint Paul', 60, NULL, NULL),
(978, 'Saint Peter', 60, NULL, NULL),
(979, 'Azua', 61, NULL, NULL),
(980, 'Bahoruco', 61, NULL, NULL),
(981, 'Barahona', 61, NULL, NULL),
(982, 'Dajabon', 61, NULL, NULL),
(983, 'Distrito Nacional', 61, NULL, NULL),
(984, 'Duarte', 61, NULL, NULL),
(985, 'El Seybo', 61, NULL, NULL),
(986, 'Elias Pina', 61, NULL, NULL),
(987, 'Espaillat', 61, NULL, NULL),
(988, 'Hato Mayor', 61, NULL, NULL),
(989, 'Independencia', 61, NULL, NULL),
(990, 'La Altagracia', 61, NULL, NULL),
(991, 'La Romana', 61, NULL, NULL),
(992, 'La Vega', 61, NULL, NULL),
(993, 'Maria Trinidad Sanchez', 61, NULL, NULL),
(994, 'Monsenor Nouel', 61, NULL, NULL),
(995, 'Monte Cristi', 61, NULL, NULL),
(996, 'Monte Plata', 61, NULL, NULL),
(997, 'Pedernales', 61, NULL, NULL),
(998, 'Peravia', 61, NULL, NULL),
(999, 'Puerto Plata', 61, NULL, NULL),
(1000, 'Salcedo', 61, NULL, NULL),
(1001, 'Samana', 61, NULL, NULL),
(1002, 'San Cristobal', 61, NULL, NULL),
(1003, 'San Juan', 61, NULL, NULL),
(1004, 'San Pedro de Macoris', 61, NULL, NULL),
(1005, 'Sanchez Ramirez', 61, NULL, NULL),
(1006, 'Santiago', 61, NULL, NULL),
(1007, 'Santiago Rodriguez', 61, NULL, NULL),
(1008, 'Valverde', 61, NULL, NULL),
(1009, 'Aileu', 62, NULL, NULL),
(1010, 'Ainaro', 62, NULL, NULL),
(1011, 'Ambeno', 62, NULL, NULL),
(1012, 'Baucau', 62, NULL, NULL),
(1013, 'Bobonaro', 62, NULL, NULL),
(1014, 'Cova Lima', 62, NULL, NULL),
(1015, 'Dili', 62, NULL, NULL),
(1016, 'Ermera', 62, NULL, NULL),
(1017, 'Lautem', 62, NULL, NULL),
(1018, 'Liquica', 62, NULL, NULL),
(1019, 'Manatuto', 62, NULL, NULL),
(1020, 'Manufahi', 62, NULL, NULL),
(1021, 'Viqueque', 62, NULL, NULL),
(1022, 'Azuay', 63, NULL, NULL),
(1023, 'Bolivar', 63, NULL, NULL),
(1024, 'Canar', 63, NULL, NULL),
(1025, 'Carchi', 63, NULL, NULL),
(1026, 'Chimborazo', 63, NULL, NULL),
(1027, 'Cotopaxi', 63, NULL, NULL),
(1028, 'El Oro', 63, NULL, NULL),
(1029, 'Esmeraldas', 63, NULL, NULL),
(1030, 'Galapagos', 63, NULL, NULL),
(1031, 'Guayas', 63, NULL, NULL),
(1032, 'Imbabura', 63, NULL, NULL),
(1033, 'Loja', 63, NULL, NULL),
(1034, 'Los Rios', 63, NULL, NULL),
(1035, 'Manabi', 63, NULL, NULL),
(1036, 'Morona Santiago', 63, NULL, NULL),
(1037, 'Napo', 63, NULL, NULL),
(1038, 'Orellana', 63, NULL, NULL),
(1039, 'Pastaza', 63, NULL, NULL),
(1040, 'Pichincha', 63, NULL, NULL),
(1041, 'Sucumbios', 63, NULL, NULL),
(1042, 'Tungurahua', 63, NULL, NULL),
(1043, 'Zamora Chinchipe', 63, NULL, NULL),
(1044, 'Aswan', 64, NULL, NULL),
(1045, 'Asyut', 64, NULL, NULL),
(1046, 'Bani Suwayf', 64, NULL, NULL),
(1047, 'Bur Sa\'\'id', 64, NULL, NULL),
(1048, 'Cairo', 64, NULL, NULL),
(1049, 'Dumyat', 64, NULL, NULL),
(1050, 'Kafr-ash-Shaykh', 64, NULL, NULL),
(1051, 'Matruh', 64, NULL, NULL),
(1052, 'Muhafazat ad Daqahliyah', 64, NULL, NULL),
(1053, 'Muhafazat al Fayyum', 64, NULL, NULL),
(1054, 'Muhafazat al Gharbiyah', 64, NULL, NULL),
(1055, 'Muhafazat al Iskandariyah', 64, NULL, NULL),
(1056, 'Muhafazat al Qahirah', 64, NULL, NULL),
(1057, 'Qina', 64, NULL, NULL),
(1058, 'Sawhaj', 64, NULL, NULL),
(1059, 'Sina al-Janubiyah', 64, NULL, NULL),
(1060, 'Sina ash-Shamaliyah', 64, NULL, NULL),
(1061, 'ad-Daqahliyah', 64, NULL, NULL),
(1062, 'al-Bahr-al-Ahmar', 64, NULL, NULL),
(1063, 'al-Buhayrah', 64, NULL, NULL),
(1064, 'al-Fayyum', 64, NULL, NULL),
(1065, 'al-Gharbiyah', 64, NULL, NULL),
(1066, 'al-Iskandariyah', 64, NULL, NULL),
(1067, 'al-Ismailiyah', 64, NULL, NULL),
(1068, 'al-Jizah', 64, NULL, NULL),
(1069, 'al-Minufiyah', 64, NULL, NULL),
(1070, 'al-Minya', 64, NULL, NULL),
(1071, 'al-Qahira', 64, NULL, NULL),
(1072, 'al-Qalyubiyah', 64, NULL, NULL),
(1073, 'al-Uqsur', 64, NULL, NULL),
(1074, 'al-Wadi al-Jadid', 64, NULL, NULL),
(1075, 'as-Suways', 64, NULL, NULL),
(1076, 'ash-Sharqiyah', 64, NULL, NULL),
(1077, 'Ahuachapan', 65, NULL, NULL),
(1078, 'Cabanas', 65, NULL, NULL),
(1079, 'Chalatenango', 65, NULL, NULL),
(1080, 'Cuscatlan', 65, NULL, NULL),
(1081, 'La Libertad', 65, NULL, NULL),
(1082, 'La Paz', 65, NULL, NULL),
(1083, 'La Union', 65, NULL, NULL),
(1084, 'Morazan', 65, NULL, NULL),
(1085, 'San Miguel', 65, NULL, NULL),
(1086, 'San Salvador', 65, NULL, NULL),
(1087, 'San Vicente', 65, NULL, NULL),
(1088, 'Santa Ana', 65, NULL, NULL),
(1089, 'Sonsonate', 65, NULL, NULL),
(1090, 'Usulutan', 65, NULL, NULL),
(1091, 'Annobon', 66, NULL, NULL),
(1092, 'Bioko Norte', 66, NULL, NULL),
(1093, 'Bioko Sur', 66, NULL, NULL),
(1094, 'Centro Sur', 66, NULL, NULL),
(1095, 'Kie-Ntem', 66, NULL, NULL),
(1096, 'Litoral', 66, NULL, NULL),
(1097, 'Wele-Nzas', 66, NULL, NULL),
(1098, 'Anseba', 67, NULL, NULL),
(1099, 'Debub', 67, NULL, NULL),
(1100, 'Debub-Keih-Bahri', 67, NULL, NULL),
(1101, 'Gash-Barka', 67, NULL, NULL),
(1102, 'Maekel', 67, NULL, NULL),
(1103, 'Semien-Keih-Bahri', 67, NULL, NULL),
(1104, 'Harju', 68, NULL, NULL),
(1105, 'Hiiu', 68, NULL, NULL),
(1106, 'Ida-Viru', 68, NULL, NULL),
(1107, 'Jarva', 68, NULL, NULL),
(1108, 'Jogeva', 68, NULL, NULL),
(1109, 'Laane', 68, NULL, NULL),
(1110, 'Laane-Viru', 68, NULL, NULL),
(1111, 'Parnu', 68, NULL, NULL),
(1112, 'Polva', 68, NULL, NULL),
(1113, 'Rapla', 68, NULL, NULL),
(1114, 'Saare', 68, NULL, NULL),
(1115, 'Tartu', 68, NULL, NULL),
(1116, 'Valga', 68, NULL, NULL),
(1117, 'Viljandi', 68, NULL, NULL),
(1118, 'Voru', 68, NULL, NULL),
(1119, 'Addis Abeba', 69, NULL, NULL),
(1120, 'Afar', 69, NULL, NULL),
(1121, 'Amhara', 69, NULL, NULL),
(1122, 'Benishangul', 69, NULL, NULL),
(1123, 'Diredawa', 69, NULL, NULL),
(1124, 'Gambella', 69, NULL, NULL),
(1125, 'Harar', 69, NULL, NULL),
(1126, 'Jigjiga', 69, NULL, NULL),
(1127, 'Mekele', 69, NULL, NULL),
(1128, 'Oromia', 69, NULL, NULL),
(1129, 'Somali', 69, NULL, NULL),
(1130, 'Southern', 69, NULL, NULL),
(1131, 'Tigray', 69, NULL, NULL),
(1132, 'Christmas Island', 70, NULL, NULL),
(1133, 'Cocos Islands', 70, NULL, NULL),
(1134, 'Coral Sea Islands', 70, NULL, NULL),
(1135, 'Falkland Islands', 71, NULL, NULL),
(1136, 'South Georgia', 71, NULL, NULL),
(1137, 'Klaksvik', 72, NULL, NULL),
(1138, 'Nor ara Eysturoy', 72, NULL, NULL),
(1139, 'Nor oy', 72, NULL, NULL),
(1140, 'Sandoy', 72, NULL, NULL),
(1141, 'Streymoy', 72, NULL, NULL),
(1142, 'Su uroy', 72, NULL, NULL),
(1143, 'Sy ra Eysturoy', 72, NULL, NULL),
(1144, 'Torshavn', 72, NULL, NULL),
(1145, 'Vaga', 72, NULL, NULL),
(1146, 'Central', 73, NULL, NULL),
(1147, 'Eastern', 73, NULL, NULL),
(1148, 'Northern', 73, NULL, NULL),
(1149, 'South Pacific', 73, NULL, NULL),
(1150, 'Western', 73, NULL, NULL),
(1151, 'Ahvenanmaa', 74, NULL, NULL),
(1152, 'Etela-Karjala', 74, NULL, NULL),
(1153, 'Etela-Pohjanmaa', 74, NULL, NULL),
(1154, 'Etela-Savo', 74, NULL, NULL),
(1155, 'Etela-Suomen Laani', 74, NULL, NULL),
(1156, 'Ita-Suomen Laani', 74, NULL, NULL),
(1157, 'Ita-Uusimaa', 74, NULL, NULL),
(1158, 'Kainuu', 74, NULL, NULL),
(1159, 'Kanta-Hame', 74, NULL, NULL),
(1160, 'Keski-Pohjanmaa', 74, NULL, NULL),
(1161, 'Keski-Suomi', 74, NULL, NULL),
(1162, 'Kymenlaakso', 74, NULL, NULL),
(1163, 'Lansi-Suomen Laani', 74, NULL, NULL),
(1164, 'Lappi', 74, NULL, NULL),
(1165, 'Northern Savonia', 74, NULL, NULL),
(1166, 'Ostrobothnia', 74, NULL, NULL),
(1167, 'Oulun Laani', 74, NULL, NULL),
(1168, 'Paijat-Hame', 74, NULL, NULL),
(1169, 'Pirkanmaa', 74, NULL, NULL),
(1170, 'Pohjanmaa', 74, NULL, NULL),
(1171, 'Pohjois-Karjala', 74, NULL, NULL),
(1172, 'Pohjois-Pohjanmaa', 74, NULL, NULL),
(1173, 'Pohjois-Savo', 74, NULL, NULL),
(1174, 'Saarijarvi', 74, NULL, NULL),
(1175, 'Satakunta', 74, NULL, NULL),
(1176, 'Southern Savonia', 74, NULL, NULL),
(1177, 'Tavastia Proper', 74, NULL, NULL),
(1178, 'Uleaborgs Lan', 74, NULL, NULL),
(1179, 'Uusimaa', 74, NULL, NULL),
(1180, 'Varsinais-Suomi', 74, NULL, NULL),
(1181, 'Ain', 75, NULL, NULL),
(1182, 'Aisne', 75, NULL, NULL),
(1183, 'Albi Le Sequestre', 75, NULL, NULL),
(1184, 'Allier', 75, NULL, NULL),
(1185, 'Alpes-Cote dAzur', 75, NULL, NULL),
(1186, 'Alpes-Maritimes', 75, NULL, NULL),
(1187, 'Alpes-de-Haute-Provence', 75, NULL, NULL),
(1188, 'Alsace', 75, NULL, NULL),
(1189, 'Aquitaine', 75, NULL, NULL),
(1190, 'Ardeche', 75, NULL, NULL),
(1191, 'Ardennes', 75, NULL, NULL),
(1192, 'Ariege', 75, NULL, NULL),
(1193, 'Aube', 75, NULL, NULL),
(1194, 'Aude', 75, NULL, NULL),
(1195, 'Auvergne', 75, NULL, NULL),
(1196, 'Aveyron', 75, NULL, NULL),
(1197, 'Bas-Rhin', 75, NULL, NULL),
(1198, 'Basse-Normandie', 75, NULL, NULL),
(1199, 'Bouches-du-Rhone', 75, NULL, NULL),
(1200, 'Bourgogne', 75, NULL, NULL),
(1201, 'Bretagne', 75, NULL, NULL),
(1202, 'Brittany', 75, NULL, NULL),
(1203, 'Burgundy', 75, NULL, NULL),
(1204, 'Calvados', 75, NULL, NULL),
(1205, 'Cantal', 75, NULL, NULL),
(1206, 'Cedex', 75, NULL, NULL),
(1207, 'Centre', 75, NULL, NULL),
(1208, 'Charente', 75, NULL, NULL),
(1209, 'Charente-Maritime', 75, NULL, NULL),
(1210, 'Cher', 75, NULL, NULL),
(1211, 'Correze', 75, NULL, NULL),
(1212, 'Corse-du-Sud', 75, NULL, NULL),
(1213, 'Cote-d\'\'Or', 75, NULL, NULL),
(1214, 'Cotes-d\'\'Armor', 75, NULL, NULL),
(1215, 'Creuse', 75, NULL, NULL),
(1216, 'Crolles', 75, NULL, NULL),
(1217, 'Deux-Sevres', 75, NULL, NULL),
(1218, 'Dordogne', 75, NULL, NULL),
(1219, 'Doubs', 75, NULL, NULL),
(1220, 'Drome', 75, NULL, NULL),
(1221, 'Essonne', 75, NULL, NULL),
(1222, 'Eure', 75, NULL, NULL),
(1223, 'Eure-et-Loir', 75, NULL, NULL),
(1224, 'Feucherolles', 75, NULL, NULL),
(1225, 'Finistere', 75, NULL, NULL),
(1226, 'Franche-Comte', 75, NULL, NULL),
(1227, 'Gard', 75, NULL, NULL),
(1228, 'Gers', 75, NULL, NULL),
(1229, 'Gironde', 75, NULL, NULL),
(1230, 'Haut-Rhin', 75, NULL, NULL),
(1231, 'Haute-Corse', 75, NULL, NULL),
(1232, 'Haute-Garonne', 75, NULL, NULL),
(1233, 'Haute-Loire', 75, NULL, NULL),
(1234, 'Haute-Marne', 75, NULL, NULL),
(1235, 'Haute-Saone', 75, NULL, NULL),
(1236, 'Haute-Savoie', 75, NULL, NULL),
(1237, 'Haute-Vienne', 75, NULL, NULL),
(1238, 'Hautes-Alpes', 75, NULL, NULL),
(1239, 'Hautes-Pyrenees', 75, NULL, NULL),
(1240, 'Hauts-de-Seine', 75, NULL, NULL),
(1241, 'Herault', 75, NULL, NULL),
(1242, 'Ile-de-France', 75, NULL, NULL),
(1243, 'Ille-et-Vilaine', 75, NULL, NULL),
(1244, 'Indre', 75, NULL, NULL),
(1245, 'Indre-et-Loire', 75, NULL, NULL),
(1246, 'Isere', 75, NULL, NULL),
(1247, 'Jura', 75, NULL, NULL),
(1248, 'Klagenfurt', 75, NULL, NULL),
(1249, 'Landes', 75, NULL, NULL),
(1250, 'Languedoc-Roussillon', 75, NULL, NULL),
(1251, 'Larcay', 75, NULL, NULL),
(1252, 'Le Castellet', 75, NULL, NULL),
(1253, 'Le Creusot', 75, NULL, NULL),
(1254, 'Limousin', 75, NULL, NULL),
(1255, 'Loir-et-Cher', 75, NULL, NULL),
(1256, 'Loire', 75, NULL, NULL),
(1257, 'Loire-Atlantique', 75, NULL, NULL),
(1258, 'Loiret', 75, NULL, NULL),
(1259, 'Lorraine', 75, NULL, NULL),
(1260, 'Lot', 75, NULL, NULL),
(1261, 'Lot-et-Garonne', 75, NULL, NULL),
(1262, 'Lower Normandy', 75, NULL, NULL),
(1263, 'Lozere', 75, NULL, NULL),
(1264, 'Maine-et-Loire', 75, NULL, NULL),
(1265, 'Manche', 75, NULL, NULL),
(1266, 'Marne', 75, NULL, NULL),
(1267, 'Mayenne', 75, NULL, NULL),
(1268, 'Meurthe-et-Moselle', 75, NULL, NULL),
(1269, 'Meuse', 75, NULL, NULL),
(1270, 'Midi-Pyrenees', 75, NULL, NULL),
(1271, 'Morbihan', 75, NULL, NULL),
(1272, 'Moselle', 75, NULL, NULL),
(1273, 'Nievre', 75, NULL, NULL),
(1274, 'Nord', 75, NULL, NULL),
(1275, 'Nord-Pas-de-Calais', 75, NULL, NULL),
(1276, 'Oise', 75, NULL, NULL),
(1277, 'Orne', 75, NULL, NULL),
(1278, 'Paris', 75, NULL, NULL),
(1279, 'Pas-de-Calais', 75, NULL, NULL),
(1280, 'Pays de la Loire', 75, NULL, NULL),
(1281, 'Pays-de-la-Loire', 75, NULL, NULL),
(1282, 'Picardy', 75, NULL, NULL),
(1283, 'Puy-de-Dome', 75, NULL, NULL),
(1284, 'Pyrenees-Atlantiques', 75, NULL, NULL),
(1285, 'Pyrenees-Orientales', 75, NULL, NULL),
(1286, 'Quelmes', 75, NULL, NULL),
(1287, 'Rhone', 75, NULL, NULL),
(1288, 'Rhone-Alpes', 75, NULL, NULL),
(1289, 'Saint Ouen', 75, NULL, NULL),
(1290, 'Saint Viatre', 75, NULL, NULL),
(1291, 'Saone-et-Loire', 75, NULL, NULL),
(1292, 'Sarthe', 75, NULL, NULL),
(1293, 'Savoie', 75, NULL, NULL),
(1294, 'Seine-Maritime', 75, NULL, NULL),
(1295, 'Seine-Saint-Denis', 75, NULL, NULL),
(1296, 'Seine-et-Marne', 75, NULL, NULL),
(1297, 'Somme', 75, NULL, NULL),
(1298, 'Sophia Antipolis', 75, NULL, NULL),
(1299, 'Souvans', 75, NULL, NULL),
(1300, 'Tarn', 75, NULL, NULL),
(1301, 'Tarn-et-Garonne', 75, NULL, NULL),
(1302, 'Territoire de Belfort', 75, NULL, NULL),
(1303, 'Treignac', 75, NULL, NULL),
(1304, 'Upper Normandy', 75, NULL, NULL),
(1305, 'Val-d\'\'Oise', 75, NULL, NULL),
(1306, 'Val-de-Marne', 75, NULL, NULL),
(1307, 'Var', 75, NULL, NULL),
(1308, 'Vaucluse', 75, NULL, NULL),
(1309, 'Vellise', 75, NULL, NULL),
(1310, 'Vendee', 75, NULL, NULL),
(1311, 'Vienne', 75, NULL, NULL),
(1312, 'Vosges', 75, NULL, NULL),
(1313, 'Yonne', 75, NULL, NULL),
(1314, 'Yvelines', 75, NULL, NULL),
(1315, 'Cayenne', 76, NULL, NULL),
(1316, 'Saint-Laurent-du-Maroni', 76, NULL, NULL),
(1317, 'Iles du Vent', 77, NULL, NULL),
(1318, 'Iles sous le Vent', 77, NULL, NULL),
(1319, 'Marquesas', 77, NULL, NULL),
(1320, 'Tuamotu', 77, NULL, NULL),
(1321, 'Tubuai', 77, NULL, NULL),
(1322, 'Amsterdam', 78, NULL, NULL),
(1323, 'Crozet Islands', 78, NULL, NULL),
(1324, 'Kerguelen', 78, NULL, NULL),
(1325, 'Estuaire', 79, NULL, NULL),
(1326, 'Haut-Ogooue', 79, NULL, NULL),
(1327, 'Moyen-Ogooue', 79, NULL, NULL),
(1328, 'Ngounie', 79, NULL, NULL),
(1329, 'Nyanga', 79, NULL, NULL),
(1330, 'Ogooue-Ivindo', 79, NULL, NULL),
(1331, 'Ogooue-Lolo', 79, NULL, NULL),
(1332, 'Ogooue-Maritime', 79, NULL, NULL),
(1333, 'Woleu-Ntem', 79, NULL, NULL),
(1334, 'Banjul', 80, NULL, NULL),
(1335, 'Basse', 80, NULL, NULL),
(1336, 'Brikama', 80, NULL, NULL),
(1337, 'Janjanbureh', 80, NULL, NULL),
(1338, 'Kanifing', 80, NULL, NULL),
(1339, 'Kerewan', 80, NULL, NULL),
(1340, 'Kuntaur', 80, NULL, NULL),
(1341, 'Mansakonko', 80, NULL, NULL),
(1342, 'Abhasia', 81, NULL, NULL),
(1343, 'Ajaria', 81, NULL, NULL),
(1344, 'Guria', 81, NULL, NULL),
(1345, 'Imereti', 81, NULL, NULL),
(1346, 'Kaheti', 81, NULL, NULL),
(1347, 'Kvemo Kartli', 81, NULL, NULL),
(1348, 'Mcheta-Mtianeti', 81, NULL, NULL),
(1349, 'Racha', 81, NULL, NULL),
(1350, 'Samagrelo-Zemo Svaneti', 81, NULL, NULL),
(1351, 'Samche-Zhavaheti', 81, NULL, NULL),
(1352, 'Shida Kartli', 81, NULL, NULL),
(1353, 'Tbilisi', 81, NULL, NULL),
(1354, 'Auvergne', 82, NULL, NULL),
(1355, 'Baden-Wurttemberg', 82, NULL, NULL),
(1356, 'Bavaria', 82, NULL, NULL),
(1357, 'Bayern', 82, NULL, NULL),
(1358, 'Beilstein Wurtt', 82, NULL, NULL),
(1359, 'Berlin', 82, NULL, NULL),
(1360, 'Brandenburg', 82, NULL, NULL),
(1361, 'Bremen', 82, NULL, NULL),
(1362, 'Dreisbach', 82, NULL, NULL),
(1363, 'Freistaat Bayern', 82, NULL, NULL),
(1364, 'Hamburg', 82, NULL, NULL),
(1365, 'Hannover', 82, NULL, NULL),
(1366, 'Heroldstatt', 82, NULL, NULL),
(1367, 'Hessen', 82, NULL, NULL),
(1368, 'Kortenberg', 82, NULL, NULL),
(1369, 'Laasdorf', 82, NULL, NULL),
(1370, 'Land Baden-Wurttemberg', 82, NULL, NULL),
(1371, 'Land Bayern', 82, NULL, NULL),
(1372, 'Land Brandenburg', 82, NULL, NULL),
(1373, 'Land Hessen', 82, NULL, NULL),
(1374, 'Land Mecklenburg-Vorpommern', 82, NULL, NULL),
(1375, 'Land Nordrhein-Westfalen', 82, NULL, NULL),
(1376, 'Land Rheinland-Pfalz', 82, NULL, NULL),
(1377, 'Land Sachsen', 82, NULL, NULL),
(1378, 'Land Sachsen-Anhalt', 82, NULL, NULL),
(1379, 'Land Thuringen', 82, NULL, NULL),
(1380, 'Lower Saxony', 82, NULL, NULL),
(1381, 'Mecklenburg-Vorpommern', 82, NULL, NULL),
(1382, 'Mulfingen', 82, NULL, NULL),
(1383, 'Munich', 82, NULL, NULL),
(1384, 'Neubeuern', 82, NULL, NULL),
(1385, 'Niedersachsen', 82, NULL, NULL),
(1386, 'Noord-Holland', 82, NULL, NULL),
(1387, 'Nordrhein-Westfalen', 82, NULL, NULL),
(1388, 'North Rhine-Westphalia', 82, NULL, NULL),
(1389, 'Osterode', 82, NULL, NULL),
(1390, 'Rheinland-Pfalz', 82, NULL, NULL),
(1391, 'Rhineland-Palatinate', 82, NULL, NULL),
(1392, 'Saarland', 82, NULL, NULL),
(1393, 'Sachsen', 82, NULL, NULL),
(1394, 'Sachsen-Anhalt', 82, NULL, NULL),
(1395, 'Saxony', 82, NULL, NULL),
(1396, 'Schleswig-Holstein', 82, NULL, NULL),
(1397, 'Thuringia', 82, NULL, NULL),
(1398, 'Webling', 82, NULL, NULL),
(1399, 'Weinstrabe', 82, NULL, NULL),
(1400, 'schlobborn', 82, NULL, NULL),
(1401, 'Ashanti', 83, NULL, NULL),
(1402, 'Brong-Ahafo', 83, NULL, NULL),
(1403, 'Central', 83, NULL, NULL),
(1404, 'Eastern', 83, NULL, NULL),
(1405, 'Greater Accra', 83, NULL, NULL),
(1406, 'Northern', 83, NULL, NULL),
(1407, 'Upper East', 83, NULL, NULL),
(1408, 'Upper West', 83, NULL, NULL),
(1409, 'Volta', 83, NULL, NULL),
(1410, 'Western', 83, NULL, NULL),
(1411, 'Gibraltar', 84, NULL, NULL),
(1412, 'Acharnes', 85, NULL, NULL),
(1413, 'Ahaia', 85, NULL, NULL),
(1414, 'Aitolia kai Akarnania', 85, NULL, NULL),
(1415, 'Argolis', 85, NULL, NULL),
(1416, 'Arkadia', 85, NULL, NULL),
(1417, 'Arta', 85, NULL, NULL),
(1418, 'Attica', 85, NULL, NULL),
(1419, 'Attiki', 85, NULL, NULL),
(1420, 'Ayion Oros', 85, NULL, NULL),
(1421, 'Crete', 85, NULL, NULL),
(1422, 'Dodekanisos', 85, NULL, NULL),
(1423, 'Drama', 85, NULL, NULL),
(1424, 'Evia', 85, NULL, NULL),
(1425, 'Evritania', 85, NULL, NULL),
(1426, 'Evros', 85, NULL, NULL),
(1427, 'Evvoia', 85, NULL, NULL),
(1428, 'Florina', 85, NULL, NULL),
(1429, 'Fokis', 85, NULL, NULL),
(1430, 'Fthiotis', 85, NULL, NULL),
(1431, 'Grevena', 85, NULL, NULL),
(1432, 'Halandri', 85, NULL, NULL),
(1433, 'Halkidiki', 85, NULL, NULL),
(1434, 'Hania', 85, NULL, NULL),
(1435, 'Heraklion', 85, NULL, NULL),
(1436, 'Hios', 85, NULL, NULL),
(1437, 'Ilia', 85, NULL, NULL),
(1438, 'Imathia', 85, NULL, NULL),
(1439, 'Ioannina', 85, NULL, NULL),
(1440, 'Iraklion', 85, NULL, NULL),
(1441, 'Karditsa', 85, NULL, NULL),
(1442, 'Kastoria', 85, NULL, NULL),
(1443, 'Kavala', 85, NULL, NULL),
(1444, 'Kefallinia', 85, NULL, NULL),
(1445, 'Kerkira', 85, NULL, NULL),
(1446, 'Kiklades', 85, NULL, NULL),
(1447, 'Kilkis', 85, NULL, NULL),
(1448, 'Korinthia', 85, NULL, NULL),
(1449, 'Kozani', 85, NULL, NULL),
(1450, 'Lakonia', 85, NULL, NULL);
INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1451, 'Larisa', 85, NULL, NULL),
(1452, 'Lasithi', 85, NULL, NULL),
(1453, 'Lesvos', 85, NULL, NULL),
(1454, 'Levkas', 85, NULL, NULL),
(1455, 'Magnisia', 85, NULL, NULL),
(1456, 'Messinia', 85, NULL, NULL),
(1457, 'Nomos Attikis', 85, NULL, NULL),
(1458, 'Nomos Zakynthou', 85, NULL, NULL),
(1459, 'Pella', 85, NULL, NULL),
(1460, 'Pieria', 85, NULL, NULL),
(1461, 'Piraios', 85, NULL, NULL),
(1462, 'Preveza', 85, NULL, NULL),
(1463, 'Rethimni', 85, NULL, NULL),
(1464, 'Rodopi', 85, NULL, NULL),
(1465, 'Samos', 85, NULL, NULL),
(1466, 'Serrai', 85, NULL, NULL),
(1467, 'Thesprotia', 85, NULL, NULL),
(1468, 'Thessaloniki', 85, NULL, NULL),
(1469, 'Trikala', 85, NULL, NULL),
(1470, 'Voiotia', 85, NULL, NULL),
(1471, 'West Greece', 85, NULL, NULL),
(1472, 'Xanthi', 85, NULL, NULL),
(1473, 'Zakinthos', 85, NULL, NULL),
(1474, 'Aasiaat', 86, NULL, NULL),
(1475, 'Ammassalik', 86, NULL, NULL),
(1476, 'Illoqqortoormiut', 86, NULL, NULL),
(1477, 'Ilulissat', 86, NULL, NULL),
(1478, 'Ivittuut', 86, NULL, NULL),
(1479, 'Kangaatsiaq', 86, NULL, NULL),
(1480, 'Maniitsoq', 86, NULL, NULL),
(1481, 'Nanortalik', 86, NULL, NULL),
(1482, 'Narsaq', 86, NULL, NULL),
(1483, 'Nuuk', 86, NULL, NULL),
(1484, 'Paamiut', 86, NULL, NULL),
(1485, 'Qaanaaq', 86, NULL, NULL),
(1486, 'Qaqortoq', 86, NULL, NULL),
(1487, 'Qasigiannguit', 86, NULL, NULL),
(1488, 'Qeqertarsuaq', 86, NULL, NULL),
(1489, 'Sisimiut', 86, NULL, NULL),
(1490, 'Udenfor kommunal inddeling', 86, NULL, NULL),
(1491, 'Upernavik', 86, NULL, NULL),
(1492, 'Uummannaq', 86, NULL, NULL),
(1493, 'Carriacou-Petite Martinique', 87, NULL, NULL),
(1494, 'Saint Andrew', 87, NULL, NULL),
(1495, 'Saint Davids', 87, NULL, NULL),
(1496, 'Saint George\'\'s', 87, NULL, NULL),
(1497, 'Saint John', 87, NULL, NULL),
(1498, 'Saint Mark', 87, NULL, NULL),
(1499, 'Saint Patrick', 87, NULL, NULL),
(1500, 'Basse-Terre', 88, NULL, NULL),
(1501, 'Grande-Terre', 88, NULL, NULL),
(1502, 'Iles des Saintes', 88, NULL, NULL),
(1503, 'La Desirade', 88, NULL, NULL),
(1504, 'Marie-Galante', 88, NULL, NULL),
(1505, 'Saint Barthelemy', 88, NULL, NULL),
(1506, 'Saint Martin', 88, NULL, NULL),
(1507, 'Agana Heights', 89, NULL, NULL),
(1508, 'Agat', 89, NULL, NULL),
(1509, 'Barrigada', 89, NULL, NULL),
(1510, 'Chalan-Pago-Ordot', 89, NULL, NULL),
(1511, 'Dededo', 89, NULL, NULL),
(1512, 'Hagatna', 89, NULL, NULL),
(1513, 'Inarajan', 89, NULL, NULL),
(1514, 'Mangilao', 89, NULL, NULL),
(1515, 'Merizo', 89, NULL, NULL),
(1516, 'Mongmong-Toto-Maite', 89, NULL, NULL),
(1517, 'Santa Rita', 89, NULL, NULL),
(1518, 'Sinajana', 89, NULL, NULL),
(1519, 'Talofofo', 89, NULL, NULL),
(1520, 'Tamuning', 89, NULL, NULL),
(1521, 'Yigo', 89, NULL, NULL),
(1522, 'Yona', 89, NULL, NULL),
(1523, 'Alta Verapaz', 90, NULL, NULL),
(1524, 'Baja Verapaz', 90, NULL, NULL),
(1525, 'Chimaltenango', 90, NULL, NULL),
(1526, 'Chiquimula', 90, NULL, NULL),
(1527, 'El Progreso', 90, NULL, NULL),
(1528, 'Escuintla', 90, NULL, NULL),
(1529, 'Guatemala', 90, NULL, NULL),
(1530, 'Huehuetenango', 90, NULL, NULL),
(1531, 'Izabal', 90, NULL, NULL),
(1532, 'Jalapa', 90, NULL, NULL),
(1533, 'Jutiapa', 90, NULL, NULL),
(1534, 'Peten', 90, NULL, NULL),
(1535, 'Quezaltenango', 90, NULL, NULL),
(1536, 'Quiche', 90, NULL, NULL),
(1537, 'Retalhuleu', 90, NULL, NULL),
(1538, 'Sacatepequez', 90, NULL, NULL),
(1539, 'San Marcos', 90, NULL, NULL),
(1540, 'Santa Rosa', 90, NULL, NULL),
(1541, 'Solola', 90, NULL, NULL),
(1542, 'Suchitepequez', 90, NULL, NULL),
(1543, 'Totonicapan', 90, NULL, NULL),
(1544, 'Zacapa', 90, NULL, NULL),
(1545, 'Alderney', 91, NULL, NULL),
(1546, 'Castel', 91, NULL, NULL),
(1547, 'Forest', 91, NULL, NULL),
(1548, 'Saint Andrew', 91, NULL, NULL),
(1549, 'Saint Martin', 91, NULL, NULL),
(1550, 'Saint Peter Port', 91, NULL, NULL),
(1551, 'Saint Pierre du Bois', 91, NULL, NULL),
(1552, 'Saint Sampson', 91, NULL, NULL),
(1553, 'Saint Saviour', 91, NULL, NULL),
(1554, 'Sark', 91, NULL, NULL),
(1555, 'Torteval', 91, NULL, NULL),
(1556, 'Vale', 91, NULL, NULL),
(1557, 'Beyla', 92, NULL, NULL),
(1558, 'Boffa', 92, NULL, NULL),
(1559, 'Boke', 92, NULL, NULL),
(1560, 'Conakry', 92, NULL, NULL),
(1561, 'Coyah', 92, NULL, NULL),
(1562, 'Dabola', 92, NULL, NULL),
(1563, 'Dalaba', 92, NULL, NULL),
(1564, 'Dinguiraye', 92, NULL, NULL),
(1565, 'Faranah', 92, NULL, NULL),
(1566, 'Forecariah', 92, NULL, NULL),
(1567, 'Fria', 92, NULL, NULL),
(1568, 'Gaoual', 92, NULL, NULL),
(1569, 'Gueckedou', 92, NULL, NULL),
(1570, 'Kankan', 92, NULL, NULL),
(1571, 'Kerouane', 92, NULL, NULL),
(1572, 'Kindia', 92, NULL, NULL),
(1573, 'Kissidougou', 92, NULL, NULL),
(1574, 'Koubia', 92, NULL, NULL),
(1575, 'Koundara', 92, NULL, NULL),
(1576, 'Kouroussa', 92, NULL, NULL),
(1577, 'Labe', 92, NULL, NULL),
(1578, 'Lola', 92, NULL, NULL),
(1579, 'Macenta', 92, NULL, NULL),
(1580, 'Mali', 92, NULL, NULL),
(1581, 'Mamou', 92, NULL, NULL),
(1582, 'Mandiana', 92, NULL, NULL),
(1583, 'Nzerekore', 92, NULL, NULL),
(1584, 'Pita', 92, NULL, NULL),
(1585, 'Siguiri', 92, NULL, NULL),
(1586, 'Telimele', 92, NULL, NULL),
(1587, 'Tougue', 92, NULL, NULL),
(1588, 'Yomou', 92, NULL, NULL),
(1589, 'Bafata', 93, NULL, NULL),
(1590, 'Bissau', 93, NULL, NULL),
(1591, 'Bolama', 93, NULL, NULL),
(1592, 'Cacheu', 93, NULL, NULL),
(1593, 'Gabu', 93, NULL, NULL),
(1594, 'Oio', 93, NULL, NULL),
(1595, 'Quinara', 93, NULL, NULL),
(1596, 'Tombali', 93, NULL, NULL),
(1597, 'Barima-Waini', 94, NULL, NULL),
(1598, 'Cuyuni-Mazaruni', 94, NULL, NULL),
(1599, 'Demerara-Mahaica', 94, NULL, NULL),
(1600, 'East Berbice-Corentyne', 94, NULL, NULL),
(1601, 'Essequibo Islands-West Demerar', 94, NULL, NULL),
(1602, 'Mahaica-Berbice', 94, NULL, NULL),
(1603, 'Pomeroon-Supenaam', 94, NULL, NULL),
(1604, 'Potaro-Siparuni', 94, NULL, NULL),
(1605, 'Upper Demerara-Berbice', 94, NULL, NULL),
(1606, 'Upper Takutu-Upper Essequibo', 94, NULL, NULL),
(1607, 'Artibonite', 95, NULL, NULL),
(1608, 'Centre', 95, NULL, NULL),
(1609, 'Grand\'\'Anse', 95, NULL, NULL),
(1610, 'Nord', 95, NULL, NULL),
(1611, 'Nord-Est', 95, NULL, NULL),
(1612, 'Nord-Ouest', 95, NULL, NULL),
(1613, 'Ouest', 95, NULL, NULL),
(1614, 'Sud', 95, NULL, NULL),
(1615, 'Sud-Est', 95, NULL, NULL),
(1616, 'Heard and McDonald Islands', 96, NULL, NULL),
(1617, 'Atlantida', 97, NULL, NULL),
(1618, 'Choluteca', 97, NULL, NULL),
(1619, 'Colon', 97, NULL, NULL),
(1620, 'Comayagua', 97, NULL, NULL),
(1621, 'Copan', 97, NULL, NULL),
(1622, 'Cortes', 97, NULL, NULL),
(1623, 'Distrito Central', 97, NULL, NULL),
(1624, 'El Paraiso', 97, NULL, NULL),
(1625, 'Francisco Morazan', 97, NULL, NULL),
(1626, 'Gracias a Dios', 97, NULL, NULL),
(1627, 'Intibuca', 97, NULL, NULL),
(1628, 'Islas de la Bahia', 97, NULL, NULL),
(1629, 'La Paz', 97, NULL, NULL),
(1630, 'Lempira', 97, NULL, NULL),
(1631, 'Ocotepeque', 97, NULL, NULL),
(1632, 'Olancho', 97, NULL, NULL),
(1633, 'Santa Barbara', 97, NULL, NULL),
(1634, 'Valle', 97, NULL, NULL),
(1635, 'Yoro', 97, NULL, NULL),
(1636, 'Hong Kong', 98, NULL, NULL),
(1637, 'Bacs-Kiskun', 99, NULL, NULL),
(1638, 'Baranya', 99, NULL, NULL),
(1639, 'Bekes', 99, NULL, NULL),
(1640, 'Borsod-Abauj-Zemplen', 99, NULL, NULL),
(1641, 'Budapest', 99, NULL, NULL),
(1642, 'Csongrad', 99, NULL, NULL),
(1643, 'Fejer', 99, NULL, NULL),
(1644, 'Gyor-Moson-Sopron', 99, NULL, NULL),
(1645, 'Hajdu-Bihar', 99, NULL, NULL),
(1646, 'Heves', 99, NULL, NULL),
(1647, 'Jasz-Nagykun-Szolnok', 99, NULL, NULL),
(1648, 'Komarom-Esztergom', 99, NULL, NULL),
(1649, 'Nograd', 99, NULL, NULL),
(1650, 'Pest', 99, NULL, NULL),
(1651, 'Somogy', 99, NULL, NULL),
(1652, 'Szabolcs-Szatmar-Bereg', 99, NULL, NULL),
(1653, 'Tolna', 99, NULL, NULL),
(1654, 'Vas', 99, NULL, NULL),
(1655, 'Veszprem', 99, NULL, NULL),
(1656, 'Zala', 99, NULL, NULL),
(1657, 'Austurland', 100, NULL, NULL),
(1658, 'Gullbringusysla', 100, NULL, NULL),
(1659, 'Hofu borgarsva i', 100, NULL, NULL),
(1660, 'Nor urland eystra', 100, NULL, NULL),
(1661, 'Nor urland vestra', 100, NULL, NULL),
(1662, 'Su urland', 100, NULL, NULL),
(1663, 'Su urnes', 100, NULL, NULL),
(1664, 'Vestfir ir', 100, NULL, NULL),
(1665, 'Vesturland', 100, NULL, NULL),
(1666, 'Aceh', 102, NULL, NULL),
(1667, 'Bali', 102, NULL, NULL),
(1668, 'Bangka-Belitung', 102, NULL, NULL),
(1669, 'Banten', 102, NULL, NULL),
(1670, 'Bengkulu', 102, NULL, NULL),
(1671, 'Gandaria', 102, NULL, NULL),
(1672, 'Gorontalo', 102, NULL, NULL),
(1673, 'Jakarta', 102, NULL, NULL),
(1674, 'Jambi', 102, NULL, NULL),
(1675, 'Jawa Barat', 102, NULL, NULL),
(1676, 'Jawa Tengah', 102, NULL, NULL),
(1677, 'Jawa Timur', 102, NULL, NULL),
(1678, 'Kalimantan Barat', 102, NULL, NULL),
(1679, 'Kalimantan Selatan', 102, NULL, NULL),
(1680, 'Kalimantan Tengah', 102, NULL, NULL),
(1681, 'Kalimantan Timur', 102, NULL, NULL),
(1682, 'Kendal', 102, NULL, NULL),
(1683, 'Lampung', 102, NULL, NULL),
(1684, 'Maluku', 102, NULL, NULL),
(1685, 'Maluku Utara', 102, NULL, NULL),
(1686, 'Nusa Tenggara Barat', 102, NULL, NULL),
(1687, 'Nusa Tenggara Timur', 102, NULL, NULL),
(1688, 'Papua', 102, NULL, NULL),
(1689, 'Riau', 102, NULL, NULL),
(1690, 'Riau Kepulauan', 102, NULL, NULL),
(1691, 'Solo', 102, NULL, NULL),
(1692, 'Sulawesi Selatan', 102, NULL, NULL),
(1693, 'Sulawesi Tengah', 102, NULL, NULL),
(1694, 'Sulawesi Tenggara', 102, NULL, NULL),
(1695, 'Sulawesi Utara', 102, NULL, NULL),
(1696, 'Sumatera Barat', 102, NULL, NULL),
(1697, 'Sumatera Selatan', 102, NULL, NULL),
(1698, 'Sumatera Utara', 102, NULL, NULL),
(1699, 'Yogyakarta', 102, NULL, NULL),
(1700, 'Ardabil', 103, NULL, NULL),
(1701, 'Azarbayjan-e Bakhtari', 103, NULL, NULL),
(1702, 'Azarbayjan-e Khavari', 103, NULL, NULL),
(1703, 'Bushehr', 103, NULL, NULL),
(1704, 'Chahar Mahal-e Bakhtiari', 103, NULL, NULL),
(1705, 'Esfahan', 103, NULL, NULL),
(1706, 'Fars', 103, NULL, NULL),
(1707, 'Gilan', 103, NULL, NULL),
(1708, 'Golestan', 103, NULL, NULL),
(1709, 'Hamadan', 103, NULL, NULL),
(1710, 'Hormozgan', 103, NULL, NULL),
(1711, 'Ilam', 103, NULL, NULL),
(1712, 'Kerman', 103, NULL, NULL),
(1713, 'Kermanshah', 103, NULL, NULL),
(1714, 'Khorasan', 103, NULL, NULL),
(1715, 'Khuzestan', 103, NULL, NULL),
(1716, 'Kohgiluyeh-e Boyerahmad', 103, NULL, NULL),
(1717, 'Kordestan', 103, NULL, NULL),
(1718, 'Lorestan', 103, NULL, NULL),
(1719, 'Markazi', 103, NULL, NULL),
(1720, 'Mazandaran', 103, NULL, NULL),
(1721, 'Ostan-e Esfahan', 103, NULL, NULL),
(1722, 'Qazvin', 103, NULL, NULL),
(1723, 'Qom', 103, NULL, NULL),
(1724, 'Semnan', 103, NULL, NULL),
(1725, 'Sistan-e Baluchestan', 103, NULL, NULL),
(1726, 'Tehran', 103, NULL, NULL),
(1727, 'Yazd', 103, NULL, NULL),
(1728, 'Zanjan', 103, NULL, NULL),
(1729, 'Babil', 104, NULL, NULL),
(1730, 'Baghdad', 104, NULL, NULL),
(1731, 'Dahuk', 104, NULL, NULL),
(1732, 'Dhi Qar', 104, NULL, NULL),
(1733, 'Diyala', 104, NULL, NULL),
(1734, 'Erbil', 104, NULL, NULL),
(1735, 'Irbil', 104, NULL, NULL),
(1736, 'Karbala', 104, NULL, NULL),
(1737, 'Kurdistan', 104, NULL, NULL),
(1738, 'Maysan', 104, NULL, NULL),
(1739, 'Ninawa', 104, NULL, NULL),
(1740, 'Salah-ad-Din', 104, NULL, NULL),
(1741, 'Wasit', 104, NULL, NULL),
(1742, 'al-Anbar', 104, NULL, NULL),
(1743, 'al-Basrah', 104, NULL, NULL),
(1744, 'al-Muthanna', 104, NULL, NULL),
(1745, 'al-Qadisiyah', 104, NULL, NULL),
(1746, 'an-Najaf', 104, NULL, NULL),
(1747, 'as-Sulaymaniyah', 104, NULL, NULL),
(1748, 'at-Ta\'\'mim', 104, NULL, NULL),
(1749, 'Armagh', 105, NULL, NULL),
(1750, 'Carlow', 105, NULL, NULL),
(1751, 'Cavan', 105, NULL, NULL),
(1752, 'Clare', 105, NULL, NULL),
(1753, 'Cork', 105, NULL, NULL),
(1754, 'Donegal', 105, NULL, NULL),
(1755, 'Dublin', 105, NULL, NULL),
(1756, 'Galway', 105, NULL, NULL),
(1757, 'Kerry', 105, NULL, NULL),
(1758, 'Kildare', 105, NULL, NULL),
(1759, 'Kilkenny', 105, NULL, NULL),
(1760, 'Laois', 105, NULL, NULL),
(1761, 'Leinster', 105, NULL, NULL),
(1762, 'Leitrim', 105, NULL, NULL),
(1763, 'Limerick', 105, NULL, NULL),
(1764, 'Loch Garman', 105, NULL, NULL),
(1765, 'Longford', 105, NULL, NULL),
(1766, 'Louth', 105, NULL, NULL),
(1767, 'Mayo', 105, NULL, NULL),
(1768, 'Meath', 105, NULL, NULL),
(1769, 'Monaghan', 105, NULL, NULL),
(1770, 'Offaly', 105, NULL, NULL),
(1771, 'Roscommon', 105, NULL, NULL),
(1772, 'Sligo', 105, NULL, NULL),
(1773, 'Tipperary North Riding', 105, NULL, NULL),
(1774, 'Tipperary South Riding', 105, NULL, NULL),
(1775, 'Ulster', 105, NULL, NULL),
(1776, 'Waterford', 105, NULL, NULL),
(1777, 'Westmeath', 105, NULL, NULL),
(1778, 'Wexford', 105, NULL, NULL),
(1779, 'Wicklow', 105, NULL, NULL),
(1780, 'Beit Hanania', 106, NULL, NULL),
(1781, 'Ben Gurion Airport', 106, NULL, NULL),
(1782, 'Bethlehem', 106, NULL, NULL),
(1783, 'Caesarea', 106, NULL, NULL),
(1784, 'Centre', 106, NULL, NULL),
(1785, 'Gaza', 106, NULL, NULL),
(1786, 'Hadaron', 106, NULL, NULL),
(1787, 'Haifa District', 106, NULL, NULL),
(1788, 'Hamerkaz', 106, NULL, NULL),
(1789, 'Hazafon', 106, NULL, NULL),
(1790, 'Hebron', 106, NULL, NULL),
(1791, 'Jaffa', 106, NULL, NULL),
(1792, 'Jerusalem', 106, NULL, NULL),
(1793, 'Khefa', 106, NULL, NULL),
(1794, 'Kiryat Yam', 106, NULL, NULL),
(1795, 'Lower Galilee', 106, NULL, NULL),
(1796, 'Qalqilya', 106, NULL, NULL),
(1797, 'Talme Elazar', 106, NULL, NULL),
(1798, 'Tel Aviv', 106, NULL, NULL),
(1799, 'Tsafon', 106, NULL, NULL),
(1800, 'Umm El Fahem', 106, NULL, NULL),
(1801, 'Yerushalayim', 106, NULL, NULL),
(1802, 'Abruzzi', 107, NULL, NULL),
(1803, 'Abruzzo', 107, NULL, NULL),
(1804, 'Agrigento', 107, NULL, NULL),
(1805, 'Alessandria', 107, NULL, NULL),
(1806, 'Ancona', 107, NULL, NULL),
(1807, 'Arezzo', 107, NULL, NULL),
(1808, 'Ascoli Piceno', 107, NULL, NULL),
(1809, 'Asti', 107, NULL, NULL),
(1810, 'Avellino', 107, NULL, NULL),
(1811, 'Bari', 107, NULL, NULL),
(1812, 'Basilicata', 107, NULL, NULL),
(1813, 'Belluno', 107, NULL, NULL),
(1814, 'Benevento', 107, NULL, NULL),
(1815, 'Bergamo', 107, NULL, NULL),
(1816, 'Biella', 107, NULL, NULL),
(1817, 'Bologna', 107, NULL, NULL),
(1818, 'Bolzano', 107, NULL, NULL),
(1819, 'Brescia', 107, NULL, NULL),
(1820, 'Brindisi', 107, NULL, NULL),
(1821, 'Calabria', 107, NULL, NULL),
(1822, 'Campania', 107, NULL, NULL),
(1823, 'Cartoceto', 107, NULL, NULL),
(1824, 'Caserta', 107, NULL, NULL),
(1825, 'Catania', 107, NULL, NULL),
(1826, 'Chieti', 107, NULL, NULL),
(1827, 'Como', 107, NULL, NULL),
(1828, 'Cosenza', 107, NULL, NULL),
(1829, 'Cremona', 107, NULL, NULL),
(1830, 'Cuneo', 107, NULL, NULL),
(1831, 'Emilia-Romagna', 107, NULL, NULL),
(1832, 'Ferrara', 107, NULL, NULL),
(1833, 'Firenze', 107, NULL, NULL),
(1834, 'Florence', 107, NULL, NULL),
(1835, 'Forli-Cesena', 107, NULL, NULL),
(1836, 'Friuli-Venezia Giulia', 107, NULL, NULL),
(1837, 'Frosinone', 107, NULL, NULL),
(1838, 'Genoa', 107, NULL, NULL),
(1839, 'Gorizia', 107, NULL, NULL),
(1840, 'L\'\'Aquila', 107, NULL, NULL),
(1841, 'Lazio', 107, NULL, NULL),
(1842, 'Lecce', 107, NULL, NULL),
(1843, 'Lecco', 107, NULL, NULL),
(1844, 'Lecco Province', 107, NULL, NULL),
(1845, 'Liguria', 107, NULL, NULL),
(1846, 'Lodi', 107, NULL, NULL),
(1847, 'Lombardia', 107, NULL, NULL),
(1848, 'Lombardy', 107, NULL, NULL),
(1849, 'Macerata', 107, NULL, NULL),
(1850, 'Mantova', 107, NULL, NULL),
(1851, 'Marche', 107, NULL, NULL),
(1852, 'Messina', 107, NULL, NULL),
(1853, 'Milan', 107, NULL, NULL),
(1854, 'Modena', 107, NULL, NULL),
(1855, 'Molise', 107, NULL, NULL),
(1856, 'Molteno', 107, NULL, NULL),
(1857, 'Montenegro', 107, NULL, NULL),
(1858, 'Monza and Brianza', 107, NULL, NULL),
(1859, 'Naples', 107, NULL, NULL),
(1860, 'Novara', 107, NULL, NULL),
(1861, 'Padova', 107, NULL, NULL),
(1862, 'Parma', 107, NULL, NULL),
(1863, 'Pavia', 107, NULL, NULL),
(1864, 'Perugia', 107, NULL, NULL),
(1865, 'Pesaro-Urbino', 107, NULL, NULL),
(1866, 'Piacenza', 107, NULL, NULL),
(1867, 'Piedmont', 107, NULL, NULL),
(1868, 'Piemonte', 107, NULL, NULL),
(1869, 'Pisa', 107, NULL, NULL),
(1870, 'Pordenone', 107, NULL, NULL),
(1871, 'Potenza', 107, NULL, NULL),
(1872, 'Puglia', 107, NULL, NULL),
(1873, 'Reggio Emilia', 107, NULL, NULL),
(1874, 'Rimini', 107, NULL, NULL),
(1875, 'Roma', 107, NULL, NULL),
(1876, 'Salerno', 107, NULL, NULL),
(1877, 'Sardegna', 107, NULL, NULL),
(1878, 'Sassari', 107, NULL, NULL),
(1879, 'Savona', 107, NULL, NULL),
(1880, 'Sicilia', 107, NULL, NULL),
(1881, 'Siena', 107, NULL, NULL),
(1882, 'Sondrio', 107, NULL, NULL),
(1883, 'South Tyrol', 107, NULL, NULL),
(1884, 'Taranto', 107, NULL, NULL),
(1885, 'Teramo', 107, NULL, NULL),
(1886, 'Torino', 107, NULL, NULL),
(1887, 'Toscana', 107, NULL, NULL),
(1888, 'Trapani', 107, NULL, NULL),
(1889, 'Trentino-Alto Adige', 107, NULL, NULL),
(1890, 'Trento', 107, NULL, NULL),
(1891, 'Treviso', 107, NULL, NULL),
(1892, 'Udine', 107, NULL, NULL),
(1893, 'Umbria', 107, NULL, NULL),
(1894, 'Valle d\'\'Aosta', 107, NULL, NULL),
(1895, 'Varese', 107, NULL, NULL),
(1896, 'Veneto', 107, NULL, NULL),
(1897, 'Venezia', 107, NULL, NULL),
(1898, 'Verbano-Cusio-Ossola', 107, NULL, NULL),
(1899, 'Vercelli', 107, NULL, NULL),
(1900, 'Verona', 107, NULL, NULL),
(1901, 'Vicenza', 107, NULL, NULL),
(1902, 'Viterbo', 107, NULL, NULL),
(1903, 'Buxoro Viloyati', 108, NULL, NULL),
(1904, 'Clarendon', 108, NULL, NULL),
(1905, 'Hanover', 108, NULL, NULL),
(1906, 'Kingston', 108, NULL, NULL),
(1907, 'Manchester', 108, NULL, NULL),
(1908, 'Portland', 108, NULL, NULL),
(1909, 'Saint Andrews', 108, NULL, NULL),
(1910, 'Saint Ann', 108, NULL, NULL),
(1911, 'Saint Catherine', 108, NULL, NULL),
(1912, 'Saint Elizabeth', 108, NULL, NULL),
(1913, 'Saint James', 108, NULL, NULL),
(1914, 'Saint Mary', 108, NULL, NULL),
(1915, 'Saint Thomas', 108, NULL, NULL),
(1916, 'Trelawney', 108, NULL, NULL),
(1917, 'Westmoreland', 108, NULL, NULL),
(1918, 'Aichi', 109, NULL, NULL),
(1919, 'Akita', 109, NULL, NULL),
(1920, 'Aomori', 109, NULL, NULL),
(1921, 'Chiba', 109, NULL, NULL),
(1922, 'Ehime', 109, NULL, NULL),
(1923, 'Fukui', 109, NULL, NULL),
(1924, 'Fukuoka', 109, NULL, NULL),
(1925, 'Fukushima', 109, NULL, NULL),
(1926, 'Gifu', 109, NULL, NULL),
(1927, 'Gumma', 109, NULL, NULL),
(1928, 'Hiroshima', 109, NULL, NULL),
(1929, 'Hokkaido', 109, NULL, NULL),
(1930, 'Hyogo', 109, NULL, NULL),
(1931, 'Ibaraki', 109, NULL, NULL),
(1932, 'Ishikawa', 109, NULL, NULL),
(1933, 'Iwate', 109, NULL, NULL),
(1934, 'Kagawa', 109, NULL, NULL),
(1935, 'Kagoshima', 109, NULL, NULL),
(1936, 'Kanagawa', 109, NULL, NULL),
(1937, 'Kanto', 109, NULL, NULL),
(1938, 'Kochi', 109, NULL, NULL),
(1939, 'Kumamoto', 109, NULL, NULL),
(1940, 'Kyoto', 109, NULL, NULL),
(1941, 'Mie', 109, NULL, NULL),
(1942, 'Miyagi', 109, NULL, NULL),
(1943, 'Miyazaki', 109, NULL, NULL),
(1944, 'Nagano', 109, NULL, NULL),
(1945, 'Nagasaki', 109, NULL, NULL),
(1946, 'Nara', 109, NULL, NULL),
(1947, 'Niigata', 109, NULL, NULL),
(1948, 'Oita', 109, NULL, NULL),
(1949, 'Okayama', 109, NULL, NULL),
(1950, 'Okinawa', 109, NULL, NULL),
(1951, 'Osaka', 109, NULL, NULL),
(1952, 'Saga', 109, NULL, NULL),
(1953, 'Saitama', 109, NULL, NULL),
(1954, 'Shiga', 109, NULL, NULL),
(1955, 'Shimane', 109, NULL, NULL),
(1956, 'Shizuoka', 109, NULL, NULL),
(1957, 'Tochigi', 109, NULL, NULL),
(1958, 'Tokushima', 109, NULL, NULL),
(1959, 'Tokyo', 109, NULL, NULL),
(1960, 'Tottori', 109, NULL, NULL),
(1961, 'Toyama', 109, NULL, NULL),
(1962, 'Wakayama', 109, NULL, NULL),
(1963, 'Yamagata', 109, NULL, NULL),
(1964, 'Yamaguchi', 109, NULL, NULL),
(1965, 'Yamanashi', 109, NULL, NULL),
(1966, 'Grouville', 110, NULL, NULL),
(1967, 'Saint Brelade', 110, NULL, NULL),
(1968, 'Saint Clement', 110, NULL, NULL),
(1969, 'Saint Helier', 110, NULL, NULL),
(1970, 'Saint John', 110, NULL, NULL),
(1971, 'Saint Lawrence', 110, NULL, NULL),
(1972, 'Saint Martin', 110, NULL, NULL),
(1973, 'Saint Mary', 110, NULL, NULL),
(1974, 'Saint Peter', 110, NULL, NULL),
(1975, 'Saint Saviour', 110, NULL, NULL),
(1976, 'Trinity', 110, NULL, NULL),
(1977, 'Ajlun', 111, NULL, NULL),
(1978, 'Amman', 111, NULL, NULL),
(1979, 'Irbid', 111, NULL, NULL),
(1980, 'Jarash', 111, NULL, NULL),
(1981, 'Ma\'\'an', 111, NULL, NULL),
(1982, 'Madaba', 111, NULL, NULL),
(1983, 'al-\'\'Aqabah', 111, NULL, NULL),
(1984, 'al-Balqa', 111, NULL, NULL),
(1985, 'al-Karak', 111, NULL, NULL),
(1986, 'al-Mafraq', 111, NULL, NULL),
(1987, 'at-Tafilah', 111, NULL, NULL),
(1988, 'az-Zarqa', 111, NULL, NULL),
(1989, 'Akmecet', 112, NULL, NULL),
(1990, 'Akmola', 112, NULL, NULL),
(1991, 'Aktobe', 112, NULL, NULL),
(1992, 'Almati', 112, NULL, NULL),
(1993, 'Atirau', 112, NULL, NULL),
(1994, 'Batis Kazakstan', 112, NULL, NULL),
(1995, 'Burlinsky Region', 112, NULL, NULL),
(1996, 'Karagandi', 112, NULL, NULL),
(1997, 'Kostanay', 112, NULL, NULL),
(1998, 'Mankistau', 112, NULL, NULL),
(1999, 'Ontustik Kazakstan', 112, NULL, NULL),
(2000, 'Pavlodar', 112, NULL, NULL),
(2001, 'Sigis Kazakstan', 112, NULL, NULL),
(2002, 'Soltustik Kazakstan', 112, NULL, NULL),
(2003, 'Taraz', 112, NULL, NULL),
(2004, 'Central', 113, NULL, NULL),
(2005, 'Coast', 113, NULL, NULL),
(2006, 'Eastern', 113, NULL, NULL),
(2007, 'Nairobi', 113, NULL, NULL),
(2008, 'North Eastern', 113, NULL, NULL),
(2009, 'Nyanza', 113, NULL, NULL),
(2010, 'Rift Valley', 113, NULL, NULL),
(2011, 'Western', 113, NULL, NULL),
(2012, 'Abaiang', 114, NULL, NULL),
(2013, 'Abemana', 114, NULL, NULL),
(2014, 'Aranuka', 114, NULL, NULL),
(2015, 'Arorae', 114, NULL, NULL),
(2016, 'Banaba', 114, NULL, NULL),
(2017, 'Beru', 114, NULL, NULL),
(2018, 'Butaritari', 114, NULL, NULL),
(2019, 'Kiritimati', 114, NULL, NULL),
(2020, 'Kuria', 114, NULL, NULL),
(2021, 'Maiana', 114, NULL, NULL),
(2022, 'Makin', 114, NULL, NULL),
(2023, 'Marakei', 114, NULL, NULL),
(2024, 'Nikunau', 114, NULL, NULL),
(2025, 'Nonouti', 114, NULL, NULL),
(2026, 'Onotoa', 114, NULL, NULL),
(2027, 'Phoenix Islands', 114, NULL, NULL),
(2028, 'Tabiteuea North', 114, NULL, NULL),
(2029, 'Tabiteuea South', 114, NULL, NULL),
(2030, 'Tabuaeran', 114, NULL, NULL),
(2031, 'Tamana', 114, NULL, NULL),
(2032, 'Tarawa North', 114, NULL, NULL),
(2033, 'Tarawa South', 114, NULL, NULL),
(2034, 'Teraina', 114, NULL, NULL),
(2035, 'Chagangdo', 115, NULL, NULL),
(2036, 'Hamgyeongbukto', 115, NULL, NULL),
(2037, 'Hamgyeongnamdo', 115, NULL, NULL),
(2038, 'Hwanghaebukto', 115, NULL, NULL),
(2039, 'Hwanghaenamdo', 115, NULL, NULL),
(2040, 'Kaeseong', 115, NULL, NULL),
(2041, 'Kangweon', 115, NULL, NULL),
(2042, 'Nampo', 115, NULL, NULL),
(2043, 'Pyeonganbukto', 115, NULL, NULL),
(2044, 'Pyeongannamdo', 115, NULL, NULL),
(2045, 'Pyeongyang', 115, NULL, NULL),
(2046, 'Yanggang', 115, NULL, NULL),
(2047, 'Busan', 116, NULL, NULL),
(2048, 'Cheju', 116, NULL, NULL),
(2049, 'Chollabuk', 116, NULL, NULL),
(2050, 'Chollanam', 116, NULL, NULL),
(2051, 'Chungbuk', 116, NULL, NULL),
(2052, 'Chungcheongbuk', 116, NULL, NULL),
(2053, 'Chungcheongnam', 116, NULL, NULL),
(2054, 'Chungnam', 116, NULL, NULL),
(2055, 'Daegu', 116, NULL, NULL),
(2056, 'Gangwon-do', 116, NULL, NULL),
(2057, 'Goyang-si', 116, NULL, NULL),
(2058, 'Gyeonggi-do', 116, NULL, NULL),
(2059, 'Gyeongsang', 116, NULL, NULL),
(2060, 'Gyeongsangnam-do', 116, NULL, NULL),
(2061, 'Incheon', 116, NULL, NULL),
(2062, 'Jeju-Si', 116, NULL, NULL),
(2063, 'Jeonbuk', 116, NULL, NULL),
(2064, 'Kangweon', 116, NULL, NULL),
(2065, 'Kwangju', 116, NULL, NULL),
(2066, 'Kyeonggi', 116, NULL, NULL),
(2067, 'Kyeongsangbuk', 116, NULL, NULL),
(2068, 'Kyeongsangnam', 116, NULL, NULL),
(2069, 'Kyonggi-do', 116, NULL, NULL),
(2070, 'Kyungbuk-Do', 116, NULL, NULL),
(2071, 'Kyunggi-Do', 116, NULL, NULL),
(2072, 'Kyunggi-do', 116, NULL, NULL),
(2073, 'Pusan', 116, NULL, NULL),
(2074, 'Seoul', 116, NULL, NULL),
(2075, 'Sudogwon', 116, NULL, NULL),
(2076, 'Taegu', 116, NULL, NULL),
(2077, 'Taejeon', 116, NULL, NULL),
(2078, 'Taejon-gwangyoksi', 116, NULL, NULL),
(2079, 'Ulsan', 116, NULL, NULL),
(2080, 'Wonju', 116, NULL, NULL),
(2081, 'gwangyoksi', 116, NULL, NULL),
(2082, 'Al Asimah', 117, NULL, NULL),
(2083, 'Hawalli', 117, NULL, NULL),
(2084, 'Mishref', 117, NULL, NULL),
(2085, 'Qadesiya', 117, NULL, NULL),
(2086, 'Safat', 117, NULL, NULL),
(2087, 'Salmiya', 117, NULL, NULL),
(2088, 'al-Ahmadi', 117, NULL, NULL),
(2089, 'al-Farwaniyah', 117, NULL, NULL),
(2090, 'al-Jahra', 117, NULL, NULL),
(2091, 'al-Kuwayt', 117, NULL, NULL),
(2092, 'Batken', 118, NULL, NULL),
(2093, 'Bishkek', 118, NULL, NULL),
(2094, 'Chui', 118, NULL, NULL),
(2095, 'Issyk-Kul', 118, NULL, NULL),
(2096, 'Jalal-Abad', 118, NULL, NULL),
(2097, 'Naryn', 118, NULL, NULL),
(2098, 'Osh', 118, NULL, NULL),
(2099, 'Talas', 118, NULL, NULL),
(2100, 'Attopu', 119, NULL, NULL),
(2101, 'Bokeo', 119, NULL, NULL),
(2102, 'Bolikhamsay', 119, NULL, NULL),
(2103, 'Champasak', 119, NULL, NULL),
(2104, 'Houaphanh', 119, NULL, NULL),
(2105, 'Khammouane', 119, NULL, NULL),
(2106, 'Luang Nam Tha', 119, NULL, NULL),
(2107, 'Luang Prabang', 119, NULL, NULL),
(2108, 'Oudomxay', 119, NULL, NULL),
(2109, 'Phongsaly', 119, NULL, NULL),
(2110, 'Saravan', 119, NULL, NULL),
(2111, 'Savannakhet', 119, NULL, NULL),
(2112, 'Sekong', 119, NULL, NULL),
(2113, 'Viangchan Prefecture', 119, NULL, NULL),
(2114, 'Viangchan Province', 119, NULL, NULL),
(2115, 'Xaignabury', 119, NULL, NULL),
(2116, 'Xiang Khuang', 119, NULL, NULL),
(2117, 'Aizkraukles', 120, NULL, NULL),
(2118, 'Aluksnes', 120, NULL, NULL),
(2119, 'Balvu', 120, NULL, NULL),
(2120, 'Bauskas', 120, NULL, NULL),
(2121, 'Cesu', 120, NULL, NULL),
(2122, 'Daugavpils', 120, NULL, NULL),
(2123, 'Daugavpils City', 120, NULL, NULL),
(2124, 'Dobeles', 120, NULL, NULL),
(2125, 'Gulbenes', 120, NULL, NULL),
(2126, 'Jekabspils', 120, NULL, NULL),
(2127, 'Jelgava', 120, NULL, NULL),
(2128, 'Jelgavas', 120, NULL, NULL),
(2129, 'Jurmala City', 120, NULL, NULL),
(2130, 'Kraslavas', 120, NULL, NULL),
(2131, 'Kuldigas', 120, NULL, NULL),
(2132, 'Liepaja', 120, NULL, NULL),
(2133, 'Liepajas', 120, NULL, NULL),
(2134, 'Limbazhu', 120, NULL, NULL),
(2135, 'Ludzas', 120, NULL, NULL),
(2136, 'Madonas', 120, NULL, NULL),
(2137, 'Ogres', 120, NULL, NULL),
(2138, 'Preilu', 120, NULL, NULL),
(2139, 'Rezekne', 120, NULL, NULL),
(2140, 'Rezeknes', 120, NULL, NULL),
(2141, 'Riga', 120, NULL, NULL),
(2142, 'Rigas', 120, NULL, NULL),
(2143, 'Saldus', 120, NULL, NULL),
(2144, 'Talsu', 120, NULL, NULL),
(2145, 'Tukuma', 120, NULL, NULL),
(2146, 'Valkas', 120, NULL, NULL),
(2147, 'Valmieras', 120, NULL, NULL),
(2148, 'Ventspils', 120, NULL, NULL),
(2149, 'Ventspils City', 120, NULL, NULL),
(2150, 'Beirut', 121, NULL, NULL),
(2151, 'Jabal Lubnan', 121, NULL, NULL),
(2152, 'Mohafazat Liban-Nord', 121, NULL, NULL),
(2153, 'Mohafazat Mont-Liban', 121, NULL, NULL),
(2154, 'Sidon', 121, NULL, NULL),
(2155, 'al-Biqa', 121, NULL, NULL),
(2156, 'al-Janub', 121, NULL, NULL),
(2157, 'an-Nabatiyah', 121, NULL, NULL),
(2158, 'ash-Shamal', 121, NULL, NULL),
(2159, 'Berea', 122, NULL, NULL),
(2160, 'Butha-Buthe', 122, NULL, NULL),
(2161, 'Leribe', 122, NULL, NULL),
(2162, 'Mafeteng', 122, NULL, NULL),
(2163, 'Maseru', 122, NULL, NULL),
(2164, 'Mohale\'\'s Hoek', 122, NULL, NULL),
(2165, 'Mokhotlong', 122, NULL, NULL),
(2166, 'Qacha\'\'s Nek', 122, NULL, NULL),
(2167, 'Quthing', 122, NULL, NULL),
(2168, 'Thaba-Tseka', 122, NULL, NULL),
(2169, 'Bomi', 123, NULL, NULL),
(2170, 'Bong', 123, NULL, NULL),
(2171, 'Grand Bassa', 123, NULL, NULL),
(2172, 'Grand Cape Mount', 123, NULL, NULL),
(2173, 'Grand Gedeh', 123, NULL, NULL),
(2174, 'Loffa', 123, NULL, NULL),
(2175, 'Margibi', 123, NULL, NULL),
(2176, 'Maryland and Grand Kru', 123, NULL, NULL),
(2177, 'Montserrado', 123, NULL, NULL),
(2178, 'Nimba', 123, NULL, NULL),
(2179, 'Rivercess', 123, NULL, NULL),
(2180, 'Sinoe', 123, NULL, NULL),
(2181, 'Ajdabiya', 124, NULL, NULL),
(2182, 'Fezzan', 124, NULL, NULL),
(2183, 'Banghazi', 124, NULL, NULL),
(2184, 'Darnah', 124, NULL, NULL),
(2185, 'Ghadamis', 124, NULL, NULL),
(2186, 'Gharyan', 124, NULL, NULL),
(2187, 'Misratah', 124, NULL, NULL),
(2188, 'Murzuq', 124, NULL, NULL),
(2189, 'Sabha', 124, NULL, NULL),
(2190, 'Sawfajjin', 124, NULL, NULL),
(2191, 'Surt', 124, NULL, NULL),
(2192, 'Tarabulus', 124, NULL, NULL),
(2193, 'Tarhunah', 124, NULL, NULL),
(2194, 'Tripolitania', 124, NULL, NULL),
(2195, 'Tubruq', 124, NULL, NULL),
(2196, 'Yafran', 124, NULL, NULL),
(2197, 'Zlitan', 124, NULL, NULL),
(2198, 'al-\'\'Aziziyah', 124, NULL, NULL),
(2199, 'al-Fatih', 124, NULL, NULL),
(2200, 'al-Jabal al Akhdar', 124, NULL, NULL),
(2201, 'al-Jufrah', 124, NULL, NULL),
(2202, 'al-Khums', 124, NULL, NULL),
(2203, 'al-Kufrah', 124, NULL, NULL),
(2204, 'an-Nuqat al-Khams', 124, NULL, NULL),
(2205, 'ash-Shati', 124, NULL, NULL),
(2206, 'az-Zawiyah', 124, NULL, NULL),
(2207, 'Balzers', 125, NULL, NULL),
(2208, 'Eschen', 125, NULL, NULL),
(2209, 'Gamprin', 125, NULL, NULL),
(2210, 'Mauren', 125, NULL, NULL),
(2211, 'Planken', 125, NULL, NULL),
(2212, 'Ruggell', 125, NULL, NULL),
(2213, 'Schaan', 125, NULL, NULL),
(2214, 'Schellenberg', 125, NULL, NULL),
(2215, 'Triesen', 125, NULL, NULL),
(2216, 'Triesenberg', 125, NULL, NULL),
(2217, 'Vaduz', 125, NULL, NULL),
(2218, 'Alytaus', 126, NULL, NULL),
(2219, 'Anyksciai', 126, NULL, NULL),
(2220, 'Kauno', 126, NULL, NULL),
(2221, 'Klaipedos', 126, NULL, NULL),
(2222, 'Marijampoles', 126, NULL, NULL),
(2223, 'Panevezhio', 126, NULL, NULL),
(2224, 'Panevezys', 126, NULL, NULL),
(2225, 'Shiauliu', 126, NULL, NULL),
(2226, 'Taurages', 126, NULL, NULL),
(2227, 'Telshiu', 126, NULL, NULL),
(2228, 'Telsiai', 126, NULL, NULL),
(2229, 'Utenos', 126, NULL, NULL),
(2230, 'Vilniaus', 126, NULL, NULL),
(2231, 'Capellen', 127, NULL, NULL),
(2232, 'Clervaux', 127, NULL, NULL),
(2233, 'Diekirch', 127, NULL, NULL),
(2234, 'Echternach', 127, NULL, NULL),
(2235, 'Esch-sur-Alzette', 127, NULL, NULL),
(2236, 'Grevenmacher', 127, NULL, NULL),
(2237, 'Luxembourg', 127, NULL, NULL),
(2238, 'Mersch', 127, NULL, NULL),
(2239, 'Redange', 127, NULL, NULL),
(2240, 'Remich', 127, NULL, NULL),
(2241, 'Vianden', 127, NULL, NULL),
(2242, 'Wiltz', 127, NULL, NULL),
(2243, 'Macau', 128, NULL, NULL),
(2244, 'Berovo', 129, NULL, NULL),
(2245, 'Bitola', 129, NULL, NULL),
(2246, 'Brod', 129, NULL, NULL),
(2247, 'Debar', 129, NULL, NULL),
(2248, 'Delchevo', 129, NULL, NULL),
(2249, 'Demir Hisar', 129, NULL, NULL),
(2250, 'Gevgelija', 129, NULL, NULL),
(2251, 'Gostivar', 129, NULL, NULL),
(2252, 'Kavadarci', 129, NULL, NULL),
(2253, 'Kichevo', 129, NULL, NULL),
(2254, 'Kochani', 129, NULL, NULL),
(2255, 'Kratovo', 129, NULL, NULL),
(2256, 'Kriva Palanka', 129, NULL, NULL),
(2257, 'Krushevo', 129, NULL, NULL),
(2258, 'Kumanovo', 129, NULL, NULL),
(2259, 'Negotino', 129, NULL, NULL),
(2260, 'Ohrid', 129, NULL, NULL),
(2261, 'Prilep', 129, NULL, NULL),
(2262, 'Probishtip', 129, NULL, NULL),
(2263, 'Radovish', 129, NULL, NULL),
(2264, 'Resen', 129, NULL, NULL),
(2265, 'Shtip', 129, NULL, NULL),
(2266, 'Skopje', 129, NULL, NULL),
(2267, 'Struga', 129, NULL, NULL),
(2268, 'Strumica', 129, NULL, NULL),
(2269, 'Sveti Nikole', 129, NULL, NULL),
(2270, 'Tetovo', 129, NULL, NULL),
(2271, 'Valandovo', 129, NULL, NULL),
(2272, 'Veles', 129, NULL, NULL),
(2273, 'Vinica', 129, NULL, NULL),
(2274, 'Antananarivo', 130, NULL, NULL),
(2275, 'Antsiranana', 130, NULL, NULL),
(2276, 'Fianarantsoa', 130, NULL, NULL),
(2277, 'Mahajanga', 130, NULL, NULL),
(2278, 'Toamasina', 130, NULL, NULL),
(2279, 'Toliary', 130, NULL, NULL),
(2280, 'Balaka', 131, NULL, NULL),
(2281, 'Blantyre City', 131, NULL, NULL),
(2282, 'Chikwawa', 131, NULL, NULL),
(2283, 'Chiradzulu', 131, NULL, NULL),
(2284, 'Chitipa', 131, NULL, NULL),
(2285, 'Dedza', 131, NULL, NULL),
(2286, 'Dowa', 131, NULL, NULL),
(2287, 'Karonga', 131, NULL, NULL),
(2288, 'Kasungu', 131, NULL, NULL),
(2289, 'Lilongwe City', 131, NULL, NULL),
(2290, 'Machinga', 131, NULL, NULL),
(2291, 'Mangochi', 131, NULL, NULL),
(2292, 'Mchinji', 131, NULL, NULL),
(2293, 'Mulanje', 131, NULL, NULL),
(2294, 'Mwanza', 131, NULL, NULL),
(2295, 'Mzimba', 131, NULL, NULL),
(2296, 'Mzuzu City', 131, NULL, NULL),
(2297, 'Nkhata Bay', 131, NULL, NULL),
(2298, 'Nkhotakota', 131, NULL, NULL),
(2299, 'Nsanje', 131, NULL, NULL),
(2300, 'Ntcheu', 131, NULL, NULL),
(2301, 'Ntchisi', 131, NULL, NULL),
(2302, 'Phalombe', 131, NULL, NULL),
(2303, 'Rumphi', 131, NULL, NULL),
(2304, 'Salima', 131, NULL, NULL),
(2305, 'Thyolo', 131, NULL, NULL),
(2306, 'Zomba Municipality', 131, NULL, NULL),
(2307, 'Johor', 132, NULL, NULL),
(2308, 'Kedah', 132, NULL, NULL),
(2309, 'Kelantan', 132, NULL, NULL),
(2310, 'Kuala Lumpur', 132, NULL, NULL),
(2311, 'Labuan', 132, NULL, NULL),
(2312, 'Melaka', 132, NULL, NULL),
(2313, 'Negeri Johor', 132, NULL, NULL),
(2314, 'Negeri Sembilan', 132, NULL, NULL),
(2315, 'Pahang', 132, NULL, NULL),
(2316, 'Penang', 132, NULL, NULL),
(2317, 'Perak', 132, NULL, NULL),
(2318, 'Perlis', 132, NULL, NULL),
(2319, 'Pulau Pinang', 132, NULL, NULL),
(2320, 'Sabah', 132, NULL, NULL),
(2321, 'Sarawak', 132, NULL, NULL),
(2322, 'Selangor', 132, NULL, NULL),
(2323, 'Sembilan', 132, NULL, NULL),
(2324, 'Terengganu', 132, NULL, NULL),
(2325, 'Alif Alif', 133, NULL, NULL),
(2326, 'Alif Dhaal', 133, NULL, NULL),
(2327, 'Baa', 133, NULL, NULL),
(2328, 'Dhaal', 133, NULL, NULL),
(2329, 'Faaf', 133, NULL, NULL),
(2330, 'Gaaf Alif', 133, NULL, NULL),
(2331, 'Gaaf Dhaal', 133, NULL, NULL),
(2332, 'Ghaviyani', 133, NULL, NULL),
(2333, 'Haa Alif', 133, NULL, NULL),
(2334, 'Haa Dhaal', 133, NULL, NULL),
(2335, 'Kaaf', 133, NULL, NULL),
(2336, 'Laam', 133, NULL, NULL),
(2337, 'Lhaviyani', 133, NULL, NULL),
(2338, 'Male', 133, NULL, NULL),
(2339, 'Miim', 133, NULL, NULL),
(2340, 'Nuun', 133, NULL, NULL),
(2341, 'Raa', 133, NULL, NULL),
(2342, 'Shaviyani', 133, NULL, NULL),
(2343, 'Siin', 133, NULL, NULL),
(2344, 'Thaa', 133, NULL, NULL),
(2345, 'Vaav', 133, NULL, NULL),
(2346, 'Bamako', 134, NULL, NULL),
(2347, 'Gao', 134, NULL, NULL),
(2348, 'Kayes', 134, NULL, NULL),
(2349, 'Kidal', 134, NULL, NULL),
(2350, 'Koulikoro', 134, NULL, NULL),
(2351, 'Mopti', 134, NULL, NULL),
(2352, 'Segou', 134, NULL, NULL),
(2353, 'Sikasso', 134, NULL, NULL),
(2354, 'Tombouctou', 134, NULL, NULL),
(2355, 'Gozo and Comino', 135, NULL, NULL),
(2356, 'Inner Harbour', 135, NULL, NULL),
(2357, 'Northern', 135, NULL, NULL),
(2358, 'Outer Harbour', 135, NULL, NULL),
(2359, 'South Eastern', 135, NULL, NULL),
(2360, 'Valletta', 135, NULL, NULL),
(2361, 'Western', 135, NULL, NULL),
(2362, 'Castletown', 136, NULL, NULL),
(2363, 'Douglas', 136, NULL, NULL),
(2364, 'Laxey', 136, NULL, NULL),
(2365, 'Onchan', 136, NULL, NULL),
(2366, 'Peel', 136, NULL, NULL),
(2367, 'Port Erin', 136, NULL, NULL),
(2368, 'Port Saint Mary', 136, NULL, NULL),
(2369, 'Ramsey', 136, NULL, NULL),
(2370, 'Ailinlaplap', 137, NULL, NULL),
(2371, 'Ailuk', 137, NULL, NULL),
(2372, 'Arno', 137, NULL, NULL),
(2373, 'Aur', 137, NULL, NULL),
(2374, 'Bikini', 137, NULL, NULL),
(2375, 'Ebon', 137, NULL, NULL),
(2376, 'Enewetak', 137, NULL, NULL),
(2377, 'Jabat', 137, NULL, NULL),
(2378, 'Jaluit', 137, NULL, NULL),
(2379, 'Kili', 137, NULL, NULL),
(2380, 'Kwajalein', 137, NULL, NULL),
(2381, 'Lae', 137, NULL, NULL),
(2382, 'Lib', 137, NULL, NULL),
(2383, 'Likiep', 137, NULL, NULL),
(2384, 'Majuro', 137, NULL, NULL),
(2385, 'Maloelap', 137, NULL, NULL),
(2386, 'Mejit', 137, NULL, NULL),
(2387, 'Mili', 137, NULL, NULL),
(2388, 'Namorik', 137, NULL, NULL),
(2389, 'Namu', 137, NULL, NULL),
(2390, 'Rongelap', 137, NULL, NULL),
(2391, 'Ujae', 137, NULL, NULL),
(2392, 'Utrik', 137, NULL, NULL),
(2393, 'Wotho', 137, NULL, NULL),
(2394, 'Wotje', 137, NULL, NULL),
(2395, 'Fort-de-France', 138, NULL, NULL),
(2396, 'La Trinite', 138, NULL, NULL),
(2397, 'Le Marin', 138, NULL, NULL),
(2398, 'Saint-Pierre', 138, NULL, NULL),
(2399, 'Adrar', 139, NULL, NULL),
(2400, 'Assaba', 139, NULL, NULL),
(2401, 'Brakna', 139, NULL, NULL),
(2402, 'Dhakhlat Nawadibu', 139, NULL, NULL),
(2403, 'Hudh-al-Gharbi', 139, NULL, NULL),
(2404, 'Hudh-ash-Sharqi', 139, NULL, NULL),
(2405, 'Inshiri', 139, NULL, NULL),
(2406, 'Nawakshut', 139, NULL, NULL),
(2407, 'Qidimagha', 139, NULL, NULL),
(2408, 'Qurqul', 139, NULL, NULL),
(2409, 'Taqant', 139, NULL, NULL),
(2410, 'Tiris Zammur', 139, NULL, NULL),
(2411, 'Trarza', 139, NULL, NULL),
(2412, 'Black River', 140, NULL, NULL),
(2413, 'Eau Coulee', 140, NULL, NULL),
(2414, 'Flacq', 140, NULL, NULL),
(2415, 'Floreal', 140, NULL, NULL),
(2416, 'Grand Port', 140, NULL, NULL),
(2417, 'Moka', 140, NULL, NULL),
(2418, 'Pamplempousses', 140, NULL, NULL),
(2419, 'Plaines Wilhelm', 140, NULL, NULL),
(2420, 'Port Louis', 140, NULL, NULL),
(2421, 'Riviere du Rempart', 140, NULL, NULL),
(2422, 'Rodrigues', 140, NULL, NULL),
(2423, 'Rose Hill', 140, NULL, NULL),
(2424, 'Savanne', 140, NULL, NULL),
(2425, 'Mayotte', 141, NULL, NULL),
(2426, 'Pamanzi', 141, NULL, NULL),
(2427, 'Aguascalientes', 142, NULL, NULL),
(2428, 'Baja California', 142, NULL, NULL),
(2429, 'Baja California Sur', 142, NULL, NULL),
(2430, 'Campeche', 142, NULL, NULL),
(2431, 'Chiapas', 142, NULL, NULL),
(2432, 'Chihuahua', 142, NULL, NULL),
(2433, 'Coahuila', 142, NULL, NULL),
(2434, 'Colima', 142, NULL, NULL),
(2435, 'Distrito Federal', 142, NULL, NULL),
(2436, 'Durango', 142, NULL, NULL),
(2437, 'Estado de Mexico', 142, NULL, NULL),
(2438, 'Guanajuato', 142, NULL, NULL),
(2439, 'Guerrero', 142, NULL, NULL),
(2440, 'Hidalgo', 142, NULL, NULL),
(2441, 'Jalisco', 142, NULL, NULL),
(2442, 'Mexico', 142, NULL, NULL),
(2443, 'Michoacan', 142, NULL, NULL),
(2444, 'Morelos', 142, NULL, NULL),
(2445, 'Nayarit', 142, NULL, NULL),
(2446, 'Nuevo Leon', 142, NULL, NULL),
(2447, 'Oaxaca', 142, NULL, NULL),
(2448, 'Puebla', 142, NULL, NULL),
(2449, 'Queretaro', 142, NULL, NULL),
(2450, 'Quintana Roo', 142, NULL, NULL),
(2451, 'San Luis Potosi', 142, NULL, NULL),
(2452, 'Sinaloa', 142, NULL, NULL),
(2453, 'Sonora', 142, NULL, NULL),
(2454, 'Tabasco', 142, NULL, NULL),
(2455, 'Tamaulipas', 142, NULL, NULL),
(2456, 'Tlaxcala', 142, NULL, NULL),
(2457, 'Veracruz', 142, NULL, NULL),
(2458, 'Yucatan', 142, NULL, NULL),
(2459, 'Zacatecas', 142, NULL, NULL),
(2460, 'Chuuk', 143, NULL, NULL),
(2461, 'Kusaie', 143, NULL, NULL),
(2462, 'Pohnpei', 143, NULL, NULL),
(2463, 'Yap', 143, NULL, NULL),
(2464, 'Balti', 144, NULL, NULL),
(2465, 'Cahul', 144, NULL, NULL),
(2466, 'Chisinau', 144, NULL, NULL),
(2467, 'Chisinau Oras', 144, NULL, NULL),
(2468, 'Edinet', 144, NULL, NULL),
(2469, 'Gagauzia', 144, NULL, NULL),
(2470, 'Lapusna', 144, NULL, NULL),
(2471, 'Orhei', 144, NULL, NULL),
(2472, 'Soroca', 144, NULL, NULL),
(2473, 'Taraclia', 144, NULL, NULL),
(2474, 'Tighina', 144, NULL, NULL),
(2475, 'Transnistria', 144, NULL, NULL),
(2476, 'Ungheni', 144, NULL, NULL),
(2477, 'Fontvieille', 145, NULL, NULL),
(2478, 'La Condamine', 145, NULL, NULL),
(2479, 'Monaco-Ville', 145, NULL, NULL),
(2480, 'Monte Carlo', 145, NULL, NULL),
(2481, 'Arhangaj', 146, NULL, NULL),
(2482, 'Bajan-Olgij', 146, NULL, NULL),
(2483, 'Bajanhongor', 146, NULL, NULL),
(2484, 'Bulgan', 146, NULL, NULL),
(2485, 'Darhan-Uul', 146, NULL, NULL),
(2486, 'Dornod', 146, NULL, NULL),
(2487, 'Dornogovi', 146, NULL, NULL),
(2488, 'Dundgovi', 146, NULL, NULL),
(2489, 'Govi-Altaj', 146, NULL, NULL),
(2490, 'Govisumber', 146, NULL, NULL),
(2491, 'Hentij', 146, NULL, NULL),
(2492, 'Hovd', 146, NULL, NULL),
(2493, 'Hovsgol', 146, NULL, NULL),
(2494, 'Omnogovi', 146, NULL, NULL),
(2495, 'Orhon', 146, NULL, NULL),
(2496, 'Ovorhangaj', 146, NULL, NULL),
(2497, 'Selenge', 146, NULL, NULL),
(2498, 'Suhbaatar', 146, NULL, NULL),
(2499, 'Tov', 146, NULL, NULL),
(2500, 'Ulaanbaatar', 146, NULL, NULL),
(2501, 'Uvs', 146, NULL, NULL),
(2502, 'Zavhan', 146, NULL, NULL),
(2503, 'Montserrat', 147, NULL, NULL),
(2504, 'Agadir', 148, NULL, NULL),
(2505, 'Casablanca', 148, NULL, NULL),
(2506, 'Chaouia-Ouardigha', 148, NULL, NULL),
(2507, 'Doukkala-Abda', 148, NULL, NULL),
(2508, 'Fes-Boulemane', 148, NULL, NULL),
(2509, 'Gharb-Chrarda-Beni Hssen', 148, NULL, NULL),
(2510, 'Guelmim', 148, NULL, NULL),
(2511, 'Kenitra', 148, NULL, NULL),
(2512, 'Marrakech-Tensift-Al Haouz', 148, NULL, NULL),
(2513, 'Meknes-Tafilalet', 148, NULL, NULL),
(2514, 'Oriental', 148, NULL, NULL),
(2515, 'Oujda', 148, NULL, NULL),
(2516, 'Province de Tanger', 148, NULL, NULL),
(2517, 'Rabat-Sale-Zammour-Zaer', 148, NULL, NULL),
(2518, 'Sala Al Jadida', 148, NULL, NULL),
(2519, 'Settat', 148, NULL, NULL),
(2520, 'Souss Massa-Draa', 148, NULL, NULL),
(2521, 'Tadla-Azilal', 148, NULL, NULL),
(2522, 'Tangier-Tetouan', 148, NULL, NULL),
(2523, 'Taza-Al Hoceima-Taounate', 148, NULL, NULL),
(2524, 'Wilaya de Casablanca', 148, NULL, NULL),
(2525, 'Wilaya de Rabat-Sale', 148, NULL, NULL),
(2526, 'Cabo Delgado', 149, NULL, NULL),
(2527, 'Gaza', 149, NULL, NULL),
(2528, 'Inhambane', 149, NULL, NULL),
(2529, 'Manica', 149, NULL, NULL),
(2530, 'Maputo', 149, NULL, NULL),
(2531, 'Maputo Provincia', 149, NULL, NULL),
(2532, 'Nampula', 149, NULL, NULL),
(2533, 'Niassa', 149, NULL, NULL),
(2534, 'Sofala', 149, NULL, NULL),
(2535, 'Tete', 149, NULL, NULL),
(2536, 'Zambezia', 149, NULL, NULL),
(2537, 'Ayeyarwady', 150, NULL, NULL),
(2538, 'Bago', 150, NULL, NULL),
(2539, 'Chin', 150, NULL, NULL),
(2540, 'Kachin', 150, NULL, NULL),
(2541, 'Kayah', 150, NULL, NULL),
(2542, 'Kayin', 150, NULL, NULL),
(2543, 'Magway', 150, NULL, NULL),
(2544, 'Mandalay', 150, NULL, NULL),
(2545, 'Mon', 150, NULL, NULL),
(2546, 'Nay Pyi Taw', 150, NULL, NULL),
(2547, 'Rakhine', 150, NULL, NULL),
(2548, 'Sagaing', 150, NULL, NULL),
(2549, 'Shan', 150, NULL, NULL),
(2550, 'Tanintharyi', 150, NULL, NULL),
(2551, 'Yangon', 150, NULL, NULL),
(2552, 'Caprivi', 151, NULL, NULL),
(2553, 'Erongo', 151, NULL, NULL),
(2554, 'Hardap', 151, NULL, NULL),
(2555, 'Karas', 151, NULL, NULL),
(2556, 'Kavango', 151, NULL, NULL),
(2557, 'Khomas', 151, NULL, NULL),
(2558, 'Kunene', 151, NULL, NULL),
(2559, 'Ohangwena', 151, NULL, NULL),
(2560, 'Omaheke', 151, NULL, NULL),
(2561, 'Omusati', 151, NULL, NULL),
(2562, 'Oshana', 151, NULL, NULL),
(2563, 'Oshikoto', 151, NULL, NULL),
(2564, 'Otjozondjupa', 151, NULL, NULL),
(2565, 'Yaren', 152, NULL, NULL),
(2566, 'Bagmati', 153, NULL, NULL),
(2567, 'Bheri', 153, NULL, NULL),
(2568, 'Dhawalagiri', 153, NULL, NULL),
(2569, 'Gandaki', 153, NULL, NULL),
(2570, 'Janakpur', 153, NULL, NULL),
(2571, 'Karnali', 153, NULL, NULL),
(2572, 'Koshi', 153, NULL, NULL),
(2573, 'Lumbini', 153, NULL, NULL),
(2574, 'Mahakali', 153, NULL, NULL),
(2575, 'Mechi', 153, NULL, NULL),
(2576, 'Narayani', 153, NULL, NULL),
(2577, 'Rapti', 153, NULL, NULL),
(2578, 'Sagarmatha', 153, NULL, NULL),
(2579, 'Seti', 153, NULL, NULL),
(2580, 'Bonaire', 154, NULL, NULL),
(2581, 'Curacao', 154, NULL, NULL),
(2582, 'Saba', 154, NULL, NULL),
(2583, 'Sint Eustatius', 154, NULL, NULL),
(2584, 'Sint Maarten', 154, NULL, NULL),
(2585, 'Amsterdam', 155, NULL, NULL),
(2586, 'Benelux', 155, NULL, NULL),
(2587, 'Drenthe', 155, NULL, NULL),
(2588, 'Flevoland', 155, NULL, NULL),
(2589, 'Friesland', 155, NULL, NULL),
(2590, 'Gelderland', 155, NULL, NULL),
(2591, 'Groningen', 155, NULL, NULL),
(2592, 'Limburg', 155, NULL, NULL),
(2593, 'Noord-Brabant', 155, NULL, NULL),
(2594, 'Noord-Holland', 155, NULL, NULL),
(2595, 'Overijssel', 155, NULL, NULL),
(2596, 'South Holland', 155, NULL, NULL),
(2597, 'Utrecht', 155, NULL, NULL),
(2598, 'Zeeland', 155, NULL, NULL),
(2599, 'Zuid-Holland', 155, NULL, NULL),
(2600, 'Iles', 156, NULL, NULL),
(2601, 'Nord', 156, NULL, NULL),
(2602, 'Sud', 156, NULL, NULL),
(2603, 'Area Outside Region', 157, NULL, NULL),
(2604, 'Auckland', 157, NULL, NULL),
(2605, 'Bay of Plenty', 157, NULL, NULL),
(2606, 'Canterbury', 157, NULL, NULL),
(2607, 'Christchurch', 157, NULL, NULL),
(2608, 'Gisborne', 157, NULL, NULL),
(2609, 'Hawke\'\'s Bay', 157, NULL, NULL),
(2610, 'Manawatu-Wanganui', 157, NULL, NULL),
(2611, 'Marlborough', 157, NULL, NULL),
(2612, 'Nelson', 157, NULL, NULL),
(2613, 'Northland', 157, NULL, NULL),
(2614, 'Otago', 157, NULL, NULL),
(2615, 'Rodney', 157, NULL, NULL),
(2616, 'Southland', 157, NULL, NULL),
(2617, 'Taranaki', 157, NULL, NULL),
(2618, 'Tasman', 157, NULL, NULL),
(2619, 'Waikato', 157, NULL, NULL),
(2620, 'Wellington', 157, NULL, NULL),
(2621, 'West Coast', 157, NULL, NULL),
(2622, 'Atlantico Norte', 158, NULL, NULL),
(2623, 'Atlantico Sur', 158, NULL, NULL),
(2624, 'Boaco', 158, NULL, NULL),
(2625, 'Carazo', 158, NULL, NULL),
(2626, 'Chinandega', 158, NULL, NULL),
(2627, 'Chontales', 158, NULL, NULL),
(2628, 'Esteli', 158, NULL, NULL),
(2629, 'Granada', 158, NULL, NULL),
(2630, 'Jinotega', 158, NULL, NULL),
(2631, 'Leon', 158, NULL, NULL),
(2632, 'Madriz', 158, NULL, NULL),
(2633, 'Managua', 158, NULL, NULL),
(2634, 'Masaya', 158, NULL, NULL),
(2635, 'Matagalpa', 158, NULL, NULL),
(2636, 'Nueva Segovia', 158, NULL, NULL),
(2637, 'Rio San Juan', 158, NULL, NULL),
(2638, 'Rivas', 158, NULL, NULL),
(2639, 'Agadez', 159, NULL, NULL),
(2640, 'Diffa', 159, NULL, NULL),
(2641, 'Dosso', 159, NULL, NULL),
(2642, 'Maradi', 159, NULL, NULL),
(2643, 'Niamey', 159, NULL, NULL),
(2644, 'Tahoua', 159, NULL, NULL),
(2645, 'Tillabery', 159, NULL, NULL),
(2646, 'Zinder', 159, NULL, NULL),
(2647, 'Abia', 160, NULL, NULL),
(2648, 'Abuja Federal Capital Territor', 160, NULL, NULL),
(2649, 'Adamawa', 160, NULL, NULL),
(2650, 'Akwa Ibom', 160, NULL, NULL),
(2651, 'Anambra', 160, NULL, NULL),
(2652, 'Bauchi', 160, NULL, NULL),
(2653, 'Bayelsa', 160, NULL, NULL),
(2654, 'Benue', 160, NULL, NULL),
(2655, 'Borno', 160, NULL, NULL),
(2656, 'Cross River', 160, NULL, NULL),
(2657, 'Delta', 160, NULL, NULL),
(2658, 'Ebonyi', 160, NULL, NULL),
(2659, 'Edo', 160, NULL, NULL),
(2660, 'Ekiti', 160, NULL, NULL),
(2661, 'Enugu', 160, NULL, NULL),
(2662, 'Gombe', 160, NULL, NULL),
(2663, 'Imo', 160, NULL, NULL),
(2664, 'Jigawa', 160, NULL, NULL),
(2665, 'Kaduna', 160, NULL, NULL),
(2666, 'Kano', 160, NULL, NULL),
(2667, 'Katsina', 160, NULL, NULL),
(2668, 'Kebbi', 160, NULL, NULL),
(2669, 'Kogi', 160, NULL, NULL),
(2670, 'Kwara', 160, NULL, NULL),
(2671, 'Lagos', 160, NULL, NULL),
(2672, 'Nassarawa', 160, NULL, NULL),
(2673, 'Niger', 160, NULL, NULL),
(2674, 'Ogun', 160, NULL, NULL),
(2675, 'Ondo', 160, NULL, NULL),
(2676, 'Osun', 160, NULL, NULL),
(2677, 'Oyo', 160, NULL, NULL),
(2678, 'Plateau', 160, NULL, NULL),
(2679, 'Rivers', 160, NULL, NULL),
(2680, 'Sokoto', 160, NULL, NULL),
(2681, 'Taraba', 160, NULL, NULL),
(2682, 'Yobe', 160, NULL, NULL),
(2683, 'Zamfara', 160, NULL, NULL),
(2684, 'Niue', 161, NULL, NULL),
(2685, 'Norfolk Island', 162, NULL, NULL),
(2686, 'Northern Islands', 163, NULL, NULL),
(2687, 'Rota', 163, NULL, NULL),
(2688, 'Saipan', 163, NULL, NULL),
(2689, 'Tinian', 163, NULL, NULL),
(2690, 'Akershus', 164, NULL, NULL),
(2691, 'Aust Agder', 164, NULL, NULL),
(2692, 'Bergen', 164, NULL, NULL),
(2693, 'Buskerud', 164, NULL, NULL),
(2694, 'Finnmark', 164, NULL, NULL),
(2695, 'Hedmark', 164, NULL, NULL),
(2696, 'Hordaland', 164, NULL, NULL),
(2697, 'Moere og Romsdal', 164, NULL, NULL),
(2698, 'Nord Trondelag', 164, NULL, NULL),
(2699, 'Nordland', 164, NULL, NULL),
(2700, 'Oestfold', 164, NULL, NULL),
(2701, 'Oppland', 164, NULL, NULL),
(2702, 'Oslo', 164, NULL, NULL),
(2703, 'Rogaland', 164, NULL, NULL),
(2704, 'Soer Troendelag', 164, NULL, NULL),
(2705, 'Sogn og Fjordane', 164, NULL, NULL),
(2706, 'Stavern', 164, NULL, NULL),
(2707, 'Sykkylven', 164, NULL, NULL),
(2708, 'Telemark', 164, NULL, NULL),
(2709, 'Troms', 164, NULL, NULL),
(2710, 'Vest Agder', 164, NULL, NULL),
(2711, 'Vestfold', 164, NULL, NULL),
(2712, 'ÃƒÂ˜stfold', 164, NULL, NULL),
(2713, 'Al Buraimi', 165, NULL, NULL),
(2714, 'Dhufar', 165, NULL, NULL),
(2715, 'Masqat', 165, NULL, NULL),
(2716, 'Musandam', 165, NULL, NULL),
(2717, 'Rusayl', 165, NULL, NULL),
(2718, 'Wadi Kabir', 165, NULL, NULL),
(2719, 'ad-Dakhiliyah', 165, NULL, NULL),
(2720, 'adh-Dhahirah', 165, NULL, NULL),
(2721, 'al-Batinah', 165, NULL, NULL),
(2722, 'ash-Sharqiyah', 165, NULL, NULL),
(2723, 'Baluchistan', 166, NULL, NULL),
(2724, 'Federal Capital Area', 166, NULL, NULL),
(2725, 'Federally administered Tribal', 166, NULL, NULL),
(2726, 'North-West Frontier', 166, NULL, NULL),
(2727, 'Northern Areas', 166, NULL, NULL),
(2728, 'Punjab', 166, NULL, NULL),
(2729, 'Sind', 166, NULL, NULL),
(2730, 'Aimeliik', 167, NULL, NULL),
(2731, 'Airai', 167, NULL, NULL),
(2732, 'Angaur', 167, NULL, NULL),
(2733, 'Hatobohei', 167, NULL, NULL),
(2734, 'Kayangel', 167, NULL, NULL),
(2735, 'Koror', 167, NULL, NULL),
(2736, 'Melekeok', 167, NULL, NULL),
(2737, 'Ngaraard', 167, NULL, NULL),
(2738, 'Ngardmau', 167, NULL, NULL),
(2739, 'Ngaremlengui', 167, NULL, NULL),
(2740, 'Ngatpang', 167, NULL, NULL),
(2741, 'Ngchesar', 167, NULL, NULL),
(2742, 'Ngerchelong', 167, NULL, NULL),
(2743, 'Ngiwal', 167, NULL, NULL),
(2744, 'Peleliu', 167, NULL, NULL),
(2745, 'Sonsorol', 167, NULL, NULL),
(2746, 'Ariha', 168, NULL, NULL),
(2747, 'Bayt Lahm', 168, NULL, NULL),
(2748, 'Bethlehem', 168, NULL, NULL),
(2749, 'Dayr-al-Balah', 168, NULL, NULL),
(2750, 'Ghazzah', 168, NULL, NULL),
(2751, 'Ghazzah ash-Shamaliyah', 168, NULL, NULL),
(2752, 'Janin', 168, NULL, NULL),
(2753, 'Khan Yunis', 168, NULL, NULL),
(2754, 'Nabulus', 168, NULL, NULL),
(2755, 'Qalqilyah', 168, NULL, NULL),
(2756, 'Rafah', 168, NULL, NULL),
(2757, 'Ram Allah wal-Birah', 168, NULL, NULL),
(2758, 'Salfit', 168, NULL, NULL),
(2759, 'Tubas', 168, NULL, NULL),
(2760, 'Tulkarm', 168, NULL, NULL),
(2761, 'al-Khalil', 168, NULL, NULL),
(2762, 'al-Quds', 168, NULL, NULL),
(2763, 'Bocas del Toro', 169, NULL, NULL),
(2764, 'Chiriqui', 169, NULL, NULL),
(2765, 'Cocle', 169, NULL, NULL),
(2766, 'Colon', 169, NULL, NULL),
(2767, 'Darien', 169, NULL, NULL),
(2768, 'Embera', 169, NULL, NULL),
(2769, 'Herrera', 169, NULL, NULL),
(2770, 'Kuna Yala', 169, NULL, NULL),
(2771, 'Los Santos', 169, NULL, NULL),
(2772, 'Ngobe Bugle', 169, NULL, NULL),
(2773, 'Panama', 169, NULL, NULL),
(2774, 'Veraguas', 169, NULL, NULL),
(2775, 'East New Britain', 170, NULL, NULL),
(2776, 'East Sepik', 170, NULL, NULL),
(2777, 'Eastern Highlands', 170, NULL, NULL),
(2778, 'Enga', 170, NULL, NULL),
(2779, 'Fly River', 170, NULL, NULL),
(2780, 'Gulf', 170, NULL, NULL),
(2781, 'Madang', 170, NULL, NULL),
(2782, 'Manus', 170, NULL, NULL),
(2783, 'Milne Bay', 170, NULL, NULL),
(2784, 'Morobe', 170, NULL, NULL),
(2785, 'National Capital District', 170, NULL, NULL),
(2786, 'New Ireland', 170, NULL, NULL),
(2787, 'North Solomons', 170, NULL, NULL),
(2788, 'Oro', 170, NULL, NULL),
(2789, 'Sandaun', 170, NULL, NULL),
(2790, 'Simbu', 170, NULL, NULL),
(2791, 'Southern Highlands', 170, NULL, NULL),
(2792, 'West New Britain', 170, NULL, NULL),
(2793, 'Western Highlands', 170, NULL, NULL),
(2794, 'Alto Paraguay', 171, NULL, NULL),
(2795, 'Alto Parana', 171, NULL, NULL),
(2796, 'Amambay', 171, NULL, NULL),
(2797, 'Asuncion', 171, NULL, NULL),
(2798, 'Boqueron', 171, NULL, NULL),
(2799, 'Caaguazu', 171, NULL, NULL),
(2800, 'Caazapa', 171, NULL, NULL),
(2801, 'Canendiyu', 171, NULL, NULL),
(2802, 'Central', 171, NULL, NULL),
(2803, 'Concepcion', 171, NULL, NULL),
(2804, 'Cordillera', 171, NULL, NULL),
(2805, 'Guaira', 171, NULL, NULL),
(2806, 'Itapua', 171, NULL, NULL),
(2807, 'Misiones', 171, NULL, NULL),
(2808, 'Neembucu', 171, NULL, NULL),
(2809, 'Paraguari', 171, NULL, NULL),
(2810, 'Presidente Hayes', 171, NULL, NULL),
(2811, 'San Pedro', 171, NULL, NULL),
(2812, 'Amazonas', 172, NULL, NULL),
(2813, 'Ancash', 172, NULL, NULL),
(2814, 'Apurimac', 172, NULL, NULL),
(2815, 'Arequipa', 172, NULL, NULL),
(2816, 'Ayacucho', 172, NULL, NULL),
(2817, 'Cajamarca', 172, NULL, NULL),
(2818, 'Cusco', 172, NULL, NULL),
(2819, 'Huancavelica', 172, NULL, NULL),
(2820, 'Huanuco', 172, NULL, NULL),
(2821, 'Ica', 172, NULL, NULL),
(2822, 'Junin', 172, NULL, NULL),
(2823, 'La Libertad', 172, NULL, NULL),
(2824, 'Lambayeque', 172, NULL, NULL),
(2825, 'Lima y Callao', 172, NULL, NULL),
(2826, 'Loreto', 172, NULL, NULL),
(2827, 'Madre de Dios', 172, NULL, NULL),
(2828, 'Moquegua', 172, NULL, NULL),
(2829, 'Pasco', 172, NULL, NULL),
(2830, 'Piura', 172, NULL, NULL),
(2831, 'Puno', 172, NULL, NULL),
(2832, 'San Martin', 172, NULL, NULL),
(2833, 'Tacna', 172, NULL, NULL),
(2834, 'Tumbes', 172, NULL, NULL),
(2835, 'Ucayali', 172, NULL, NULL),
(2836, 'Batangas', 173, NULL, NULL),
(2837, 'Bicol', 173, NULL, NULL),
(2838, 'Bulacan', 173, NULL, NULL),
(2839, 'Cagayan', 173, NULL, NULL),
(2840, 'Caraga', 173, NULL, NULL),
(2841, 'Central Luzon', 173, NULL, NULL),
(2842, 'Central Mindanao', 173, NULL, NULL),
(2843, 'Central Visayas', 173, NULL, NULL),
(2844, 'Cordillera', 173, NULL, NULL),
(2845, 'Davao', 173, NULL, NULL),
(2846, 'Eastern Visayas', 173, NULL, NULL),
(2847, 'Greater Metropolitan Area', 173, NULL, NULL),
(2848, 'Ilocos', 173, NULL, NULL),
(2849, 'Laguna', 173, NULL, NULL),
(2850, 'Luzon', 173, NULL, NULL),
(2851, 'Mactan', 173, NULL, NULL),
(2852, 'Metropolitan Manila Area', 173, NULL, NULL),
(2853, 'Muslim Mindanao', 173, NULL, NULL),
(2854, 'Northern Mindanao', 173, NULL, NULL),
(2855, 'Southern Mindanao', 173, NULL, NULL);
INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(2856, 'Southern Tagalog', 173, NULL, NULL),
(2857, 'Western Mindanao', 173, NULL, NULL),
(2858, 'Western Visayas', 173, NULL, NULL),
(2859, 'Pitcairn Island', 174, NULL, NULL),
(2860, 'Biale Blota', 175, NULL, NULL),
(2861, 'Dobroszyce', 175, NULL, NULL),
(2862, 'Dolnoslaskie', 175, NULL, NULL),
(2863, 'Dziekanow Lesny', 175, NULL, NULL),
(2864, 'Hopowo', 175, NULL, NULL),
(2865, 'Kartuzy', 175, NULL, NULL),
(2866, 'Koscian', 175, NULL, NULL),
(2867, 'Krakow', 175, NULL, NULL),
(2868, 'Kujawsko-Pomorskie', 175, NULL, NULL),
(2869, 'Lodzkie', 175, NULL, NULL),
(2870, 'Lubelskie', 175, NULL, NULL),
(2871, 'Lubuskie', 175, NULL, NULL),
(2872, 'Malomice', 175, NULL, NULL),
(2873, 'Malopolskie', 175, NULL, NULL),
(2874, 'Mazowieckie', 175, NULL, NULL),
(2875, 'Mirkow', 175, NULL, NULL),
(2876, 'Opolskie', 175, NULL, NULL),
(2877, 'Ostrowiec', 175, NULL, NULL),
(2878, 'Podkarpackie', 175, NULL, NULL),
(2879, 'Podlaskie', 175, NULL, NULL),
(2880, 'Polska', 175, NULL, NULL),
(2881, 'Pomorskie', 175, NULL, NULL),
(2882, 'Poznan', 175, NULL, NULL),
(2883, 'Pruszkow', 175, NULL, NULL),
(2884, 'Rymanowska', 175, NULL, NULL),
(2885, 'Rzeszow', 175, NULL, NULL),
(2886, 'Slaskie', 175, NULL, NULL),
(2887, 'Stare Pole', 175, NULL, NULL),
(2888, 'Swietokrzyskie', 175, NULL, NULL),
(2889, 'Warminsko-Mazurskie', 175, NULL, NULL),
(2890, 'Warsaw', 175, NULL, NULL),
(2891, 'Wejherowo', 175, NULL, NULL),
(2892, 'Wielkopolskie', 175, NULL, NULL),
(2893, 'Wroclaw', 175, NULL, NULL),
(2894, 'Zachodnio-Pomorskie', 175, NULL, NULL),
(2895, 'Zukowo', 175, NULL, NULL),
(2896, 'Abrantes', 176, NULL, NULL),
(2897, 'Acores', 176, NULL, NULL),
(2898, 'Alentejo', 176, NULL, NULL),
(2899, 'Algarve', 176, NULL, NULL),
(2900, 'Braga', 176, NULL, NULL),
(2901, 'Centro', 176, NULL, NULL),
(2902, 'Distrito de Leiria', 176, NULL, NULL),
(2903, 'Distrito de Viana do Castelo', 176, NULL, NULL),
(2904, 'Distrito de Vila Real', 176, NULL, NULL),
(2905, 'Distrito do Porto', 176, NULL, NULL),
(2906, 'Lisboa e Vale do Tejo', 176, NULL, NULL),
(2907, 'Madeira', 176, NULL, NULL),
(2908, 'Norte', 176, NULL, NULL),
(2909, 'Paivas', 176, NULL, NULL),
(2910, 'Arecibo', 177, NULL, NULL),
(2911, 'Bayamon', 177, NULL, NULL),
(2912, 'Carolina', 177, NULL, NULL),
(2913, 'Florida', 177, NULL, NULL),
(2914, 'Guayama', 177, NULL, NULL),
(2915, 'Humacao', 177, NULL, NULL),
(2916, 'Mayaguez-Aguadilla', 177, NULL, NULL),
(2917, 'Ponce', 177, NULL, NULL),
(2918, 'Salinas', 177, NULL, NULL),
(2919, 'San Juan', 177, NULL, NULL),
(2920, 'Doha', 178, NULL, NULL),
(2921, 'Jarian-al-Batnah', 178, NULL, NULL),
(2922, 'Umm Salal', 178, NULL, NULL),
(2923, 'ad-Dawhah', 178, NULL, NULL),
(2924, 'al-Ghuwayriyah', 178, NULL, NULL),
(2925, 'al-Jumayliyah', 178, NULL, NULL),
(2926, 'al-Khawr', 178, NULL, NULL),
(2927, 'al-Wakrah', 178, NULL, NULL),
(2928, 'ar-Rayyan', 178, NULL, NULL),
(2929, 'ash-Shamal', 178, NULL, NULL),
(2930, 'Saint-Benoit', 179, NULL, NULL),
(2931, 'Saint-Denis', 179, NULL, NULL),
(2932, 'Saint-Paul', 179, NULL, NULL),
(2933, 'Saint-Pierre', 179, NULL, NULL),
(2934, 'Alba', 180, NULL, NULL),
(2935, 'Arad', 180, NULL, NULL),
(2936, 'Arges', 180, NULL, NULL),
(2937, 'Bacau', 180, NULL, NULL),
(2938, 'Bihor', 180, NULL, NULL),
(2939, 'Bistrita-Nasaud', 180, NULL, NULL),
(2940, 'Botosani', 180, NULL, NULL),
(2941, 'Braila', 180, NULL, NULL),
(2942, 'Brasov', 180, NULL, NULL),
(2943, 'Bucuresti', 180, NULL, NULL),
(2944, 'Buzau', 180, NULL, NULL),
(2945, 'Calarasi', 180, NULL, NULL),
(2946, 'Caras-Severin', 180, NULL, NULL),
(2947, 'Cluj', 180, NULL, NULL),
(2948, 'Constanta', 180, NULL, NULL),
(2949, 'Covasna', 180, NULL, NULL),
(2950, 'Dambovita', 180, NULL, NULL),
(2951, 'Dolj', 180, NULL, NULL),
(2952, 'Galati', 180, NULL, NULL),
(2953, 'Giurgiu', 180, NULL, NULL),
(2954, 'Gorj', 180, NULL, NULL),
(2955, 'Harghita', 180, NULL, NULL),
(2956, 'Hunedoara', 180, NULL, NULL),
(2957, 'Ialomita', 180, NULL, NULL),
(2958, 'Iasi', 180, NULL, NULL),
(2959, 'Ilfov', 180, NULL, NULL),
(2960, 'Maramures', 180, NULL, NULL),
(2961, 'Mehedinti', 180, NULL, NULL),
(2962, 'Mures', 180, NULL, NULL),
(2963, 'Neamt', 180, NULL, NULL),
(2964, 'Olt', 180, NULL, NULL),
(2965, 'Prahova', 180, NULL, NULL),
(2966, 'Salaj', 180, NULL, NULL),
(2967, 'Satu Mare', 180, NULL, NULL),
(2968, 'Sibiu', 180, NULL, NULL),
(2969, 'Sondelor', 180, NULL, NULL),
(2970, 'Suceava', 180, NULL, NULL),
(2971, 'Teleorman', 180, NULL, NULL),
(2972, 'Timis', 180, NULL, NULL),
(2973, 'Tulcea', 180, NULL, NULL),
(2974, 'Valcea', 180, NULL, NULL),
(2975, 'Vaslui', 180, NULL, NULL),
(2976, 'Vrancea', 180, NULL, NULL),
(2977, 'Adygeja', 181, NULL, NULL),
(2978, 'Aga', 181, NULL, NULL),
(2979, 'Alanija', 181, NULL, NULL),
(2980, 'Altaj', 181, NULL, NULL),
(2981, 'Amur', 181, NULL, NULL),
(2982, 'Arhangelsk', 181, NULL, NULL),
(2983, 'Astrahan', 181, NULL, NULL),
(2984, 'Bashkortostan', 181, NULL, NULL),
(2985, 'Belgorod', 181, NULL, NULL),
(2986, 'Brjansk', 181, NULL, NULL),
(2987, 'Burjatija', 181, NULL, NULL),
(2988, 'Chechenija', 181, NULL, NULL),
(2989, 'Cheljabinsk', 181, NULL, NULL),
(2990, 'Chita', 181, NULL, NULL),
(2991, 'Chukotka', 181, NULL, NULL),
(2992, 'Chuvashija', 181, NULL, NULL),
(2993, 'Dagestan', 181, NULL, NULL),
(2994, 'Evenkija', 181, NULL, NULL),
(2995, 'Gorno-Altaj', 181, NULL, NULL),
(2996, 'Habarovsk', 181, NULL, NULL),
(2997, 'Hakasija', 181, NULL, NULL),
(2998, 'Hanty-Mansija', 181, NULL, NULL),
(2999, 'Ingusetija', 181, NULL, NULL),
(3000, 'Irkutsk', 181, NULL, NULL),
(3001, 'Ivanovo', 181, NULL, NULL),
(3002, 'Jamalo-Nenets', 181, NULL, NULL),
(3003, 'Jaroslavl', 181, NULL, NULL),
(3004, 'Jevrej', 181, NULL, NULL),
(3005, 'Kabardino-Balkarija', 181, NULL, NULL),
(3006, 'Kaliningrad', 181, NULL, NULL),
(3007, 'Kalmykija', 181, NULL, NULL),
(3008, 'Kaluga', 181, NULL, NULL),
(3009, 'Kamchatka', 181, NULL, NULL),
(3010, 'Karachaj-Cherkessija', 181, NULL, NULL),
(3011, 'Karelija', 181, NULL, NULL),
(3012, 'Kemerovo', 181, NULL, NULL),
(3013, 'Khabarovskiy Kray', 181, NULL, NULL),
(3014, 'Kirov', 181, NULL, NULL),
(3015, 'Komi', 181, NULL, NULL),
(3016, 'Komi-Permjakija', 181, NULL, NULL),
(3017, 'Korjakija', 181, NULL, NULL),
(3018, 'Kostroma', 181, NULL, NULL),
(3019, 'Krasnodar', 181, NULL, NULL),
(3020, 'Krasnojarsk', 181, NULL, NULL),
(3021, 'Krasnoyarskiy Kray', 181, NULL, NULL),
(3022, 'Kurgan', 181, NULL, NULL),
(3023, 'Kursk', 181, NULL, NULL),
(3024, 'Leningrad', 181, NULL, NULL),
(3025, 'Lipeck', 181, NULL, NULL),
(3026, 'Magadan', 181, NULL, NULL),
(3027, 'Marij El', 181, NULL, NULL),
(3028, 'Mordovija', 181, NULL, NULL),
(3029, 'Moscow', 181, NULL, NULL),
(3030, 'Moskovskaja Oblast', 181, NULL, NULL),
(3031, 'Moskovskaya Oblast', 181, NULL, NULL),
(3032, 'Moskva', 181, NULL, NULL),
(3033, 'Murmansk', 181, NULL, NULL),
(3034, 'Nenets', 181, NULL, NULL),
(3035, 'Nizhnij Novgorod', 181, NULL, NULL),
(3036, 'Novgorod', 181, NULL, NULL),
(3037, 'Novokusnezk', 181, NULL, NULL),
(3038, 'Novosibirsk', 181, NULL, NULL),
(3039, 'Omsk', 181, NULL, NULL),
(3040, 'Orenburg', 181, NULL, NULL),
(3041, 'Orjol', 181, NULL, NULL),
(3042, 'Penza', 181, NULL, NULL),
(3043, 'Perm', 181, NULL, NULL),
(3044, 'Primorje', 181, NULL, NULL),
(3045, 'Pskov', 181, NULL, NULL),
(3046, 'Pskovskaya Oblast', 181, NULL, NULL),
(3047, 'Rjazan', 181, NULL, NULL),
(3048, 'Rostov', 181, NULL, NULL),
(3049, 'Saha', 181, NULL, NULL),
(3050, 'Sahalin', 181, NULL, NULL),
(3051, 'Samara', 181, NULL, NULL),
(3052, 'Samarskaya', 181, NULL, NULL),
(3053, 'Sankt-Peterburg', 181, NULL, NULL),
(3054, 'Saratov', 181, NULL, NULL),
(3055, 'Smolensk', 181, NULL, NULL),
(3056, 'Stavropol', 181, NULL, NULL),
(3057, 'Sverdlovsk', 181, NULL, NULL),
(3058, 'Tajmyrija', 181, NULL, NULL),
(3059, 'Tambov', 181, NULL, NULL),
(3060, 'Tatarstan', 181, NULL, NULL),
(3061, 'Tjumen', 181, NULL, NULL),
(3062, 'Tomsk', 181, NULL, NULL),
(3063, 'Tula', 181, NULL, NULL),
(3064, 'Tver', 181, NULL, NULL),
(3065, 'Tyva', 181, NULL, NULL),
(3066, 'Udmurtija', 181, NULL, NULL),
(3067, 'Uljanovsk', 181, NULL, NULL),
(3068, 'Ulyanovskaya Oblast', 181, NULL, NULL),
(3069, 'Ust-Orda', 181, NULL, NULL),
(3070, 'Vladimir', 181, NULL, NULL),
(3071, 'Volgograd', 181, NULL, NULL),
(3072, 'Vologda', 181, NULL, NULL),
(3073, 'Voronezh', 181, NULL, NULL),
(3074, 'Butare', 182, NULL, NULL),
(3075, 'Byumba', 182, NULL, NULL),
(3076, 'Cyangugu', 182, NULL, NULL),
(3077, 'Gikongoro', 182, NULL, NULL),
(3078, 'Gisenyi', 182, NULL, NULL),
(3079, 'Gitarama', 182, NULL, NULL),
(3080, 'Kibungo', 182, NULL, NULL),
(3081, 'Kibuye', 182, NULL, NULL),
(3082, 'Kigali-ngali', 182, NULL, NULL),
(3083, 'Ruhengeri', 182, NULL, NULL),
(3084, 'Ascension', 183, NULL, NULL),
(3085, 'Gough Island', 183, NULL, NULL),
(3086, 'Saint Helena', 183, NULL, NULL),
(3087, 'Tristan da Cunha', 183, NULL, NULL),
(3088, 'Christ Church Nichola Town', 184, NULL, NULL),
(3089, 'Saint Anne Sandy Point', 184, NULL, NULL),
(3090, 'Saint George Basseterre', 184, NULL, NULL),
(3091, 'Saint George Gingerland', 184, NULL, NULL),
(3092, 'Saint James Windward', 184, NULL, NULL),
(3093, 'Saint John Capesterre', 184, NULL, NULL),
(3094, 'Saint John Figtree', 184, NULL, NULL),
(3095, 'Saint Mary Cayon', 184, NULL, NULL),
(3096, 'Saint Paul Capesterre', 184, NULL, NULL),
(3097, 'Saint Paul Charlestown', 184, NULL, NULL),
(3098, 'Saint Peter Basseterre', 184, NULL, NULL),
(3099, 'Saint Thomas Lowland', 184, NULL, NULL),
(3100, 'Saint Thomas Middle Island', 184, NULL, NULL),
(3101, 'Trinity Palmetto Point', 184, NULL, NULL),
(3102, 'Anse-la-Raye', 185, NULL, NULL),
(3103, 'Canaries', 185, NULL, NULL),
(3104, 'Castries', 185, NULL, NULL),
(3105, 'Choiseul', 185, NULL, NULL),
(3106, 'Dennery', 185, NULL, NULL),
(3107, 'Gros Inlet', 185, NULL, NULL),
(3108, 'Laborie', 185, NULL, NULL),
(3109, 'Micoud', 185, NULL, NULL),
(3110, 'Soufriere', 185, NULL, NULL),
(3111, 'Vieux Fort', 185, NULL, NULL),
(3112, 'Miquelon-Langlade', 186, NULL, NULL),
(3113, 'Saint-Pierre', 186, NULL, NULL),
(3114, 'Charlotte', 187, NULL, NULL),
(3115, 'Grenadines', 187, NULL, NULL),
(3116, 'Saint Andrew', 187, NULL, NULL),
(3117, 'Saint David', 187, NULL, NULL),
(3118, 'Saint George', 187, NULL, NULL),
(3119, 'Saint Patrick', 187, NULL, NULL),
(3120, 'A\'\'ana', 188, NULL, NULL),
(3121, 'Aiga-i-le-Tai', 188, NULL, NULL),
(3122, 'Atua', 188, NULL, NULL),
(3123, 'Fa\'\'asaleleaga', 188, NULL, NULL),
(3124, 'Gaga\'\'emauga', 188, NULL, NULL),
(3125, 'Gagaifomauga', 188, NULL, NULL),
(3126, 'Palauli', 188, NULL, NULL),
(3127, 'Satupa\'\'itea', 188, NULL, NULL),
(3128, 'Tuamasaga', 188, NULL, NULL),
(3129, 'Va\'\'a-o-Fonoti', 188, NULL, NULL),
(3130, 'Vaisigano', 188, NULL, NULL),
(3131, 'Acquaviva', 189, NULL, NULL),
(3132, 'Borgo Maggiore', 189, NULL, NULL),
(3133, 'Chiesanuova', 189, NULL, NULL),
(3134, 'Domagnano', 189, NULL, NULL),
(3135, 'Faetano', 189, NULL, NULL),
(3136, 'Fiorentino', 189, NULL, NULL),
(3137, 'Montegiardino', 189, NULL, NULL),
(3138, 'San Marino', 189, NULL, NULL),
(3139, 'Serravalle', 189, NULL, NULL),
(3140, 'Agua Grande', 190, NULL, NULL),
(3141, 'Cantagalo', 190, NULL, NULL),
(3142, 'Lemba', 190, NULL, NULL),
(3143, 'Lobata', 190, NULL, NULL),
(3144, 'Me-Zochi', 190, NULL, NULL),
(3145, 'Pague', 190, NULL, NULL),
(3146, 'Al Khobar', 191, NULL, NULL),
(3147, 'Aseer', 191, NULL, NULL),
(3148, 'Ash Sharqiyah', 191, NULL, NULL),
(3149, 'Asir', 191, NULL, NULL),
(3150, 'Central Province', 191, NULL, NULL),
(3151, 'Eastern Province', 191, NULL, NULL),
(3152, 'Ha\'\'il', 191, NULL, NULL),
(3153, 'Jawf', 191, NULL, NULL),
(3154, 'Jizan', 191, NULL, NULL),
(3155, 'Makkah', 191, NULL, NULL),
(3156, 'Najran', 191, NULL, NULL),
(3157, 'Qasim', 191, NULL, NULL),
(3158, 'Tabuk', 191, NULL, NULL),
(3159, 'Western Province', 191, NULL, NULL),
(3160, 'al-Bahah', 191, NULL, NULL),
(3161, 'al-Hudud-ash-Shamaliyah', 191, NULL, NULL),
(3162, 'al-Madinah', 191, NULL, NULL),
(3163, 'ar-Riyad', 191, NULL, NULL),
(3164, 'Dakar', 192, NULL, NULL),
(3165, 'Diourbel', 192, NULL, NULL),
(3166, 'Fatick', 192, NULL, NULL),
(3167, 'Kaolack', 192, NULL, NULL),
(3168, 'Kolda', 192, NULL, NULL),
(3169, 'Louga', 192, NULL, NULL),
(3170, 'Saint-Louis', 192, NULL, NULL),
(3171, 'Tambacounda', 192, NULL, NULL),
(3172, 'Thies', 192, NULL, NULL),
(3173, 'Ziguinchor', 192, NULL, NULL),
(3174, 'Central Serbia', 193, NULL, NULL),
(3175, 'Kosovo and Metohija', 193, NULL, NULL),
(3176, 'Vojvodina', 193, NULL, NULL),
(3177, 'Anse Boileau', 194, NULL, NULL),
(3178, 'Anse Royale', 194, NULL, NULL),
(3179, 'Cascade', 194, NULL, NULL),
(3180, 'Takamaka', 194, NULL, NULL),
(3181, 'Victoria', 194, NULL, NULL),
(3182, 'Eastern', 195, NULL, NULL),
(3183, 'Northern', 195, NULL, NULL),
(3184, 'Southern', 195, NULL, NULL),
(3185, 'Western', 195, NULL, NULL),
(3186, 'Singapore', 196, NULL, NULL),
(3187, 'Banskobystricky', 197, NULL, NULL),
(3188, 'Bratislavsky', 197, NULL, NULL),
(3189, 'Kosicky', 197, NULL, NULL),
(3190, 'Nitriansky', 197, NULL, NULL),
(3191, 'Presovsky', 197, NULL, NULL),
(3192, 'Trenciansky', 197, NULL, NULL),
(3193, 'Trnavsky', 197, NULL, NULL),
(3194, 'Zilinsky', 197, NULL, NULL),
(3195, 'Benedikt', 198, NULL, NULL),
(3196, 'Gorenjska', 198, NULL, NULL),
(3197, 'Gorishka', 198, NULL, NULL),
(3198, 'Jugovzhodna Slovenija', 198, NULL, NULL),
(3199, 'Koroshka', 198, NULL, NULL),
(3200, 'Notranjsko-krashka', 198, NULL, NULL),
(3201, 'Obalno-krashka', 198, NULL, NULL),
(3202, 'Obcina Domzale', 198, NULL, NULL),
(3203, 'Obcina Vitanje', 198, NULL, NULL),
(3204, 'Osrednjeslovenska', 198, NULL, NULL),
(3205, 'Podravska', 198, NULL, NULL),
(3206, 'Pomurska', 198, NULL, NULL),
(3207, 'Savinjska', 198, NULL, NULL),
(3208, 'Slovenian Littoral', 198, NULL, NULL),
(3209, 'Spodnjeposavska', 198, NULL, NULL),
(3210, 'Zasavska', 198, NULL, NULL),
(3211, 'Pitcairn', 199, NULL, NULL),
(3212, 'Central', 200, NULL, NULL),
(3213, 'Choiseul', 200, NULL, NULL),
(3214, 'Guadalcanal', 200, NULL, NULL),
(3215, 'Isabel', 200, NULL, NULL),
(3216, 'Makira and Ulawa', 200, NULL, NULL),
(3217, 'Malaita', 200, NULL, NULL),
(3218, 'Rennell and Bellona', 200, NULL, NULL),
(3219, 'Temotu', 200, NULL, NULL),
(3220, 'Western', 200, NULL, NULL),
(3221, 'Awdal', 201, NULL, NULL),
(3222, 'Bakol', 201, NULL, NULL),
(3223, 'Banadir', 201, NULL, NULL),
(3224, 'Bari', 201, NULL, NULL),
(3225, 'Bay', 201, NULL, NULL),
(3226, 'Galgudug', 201, NULL, NULL),
(3227, 'Gedo', 201, NULL, NULL),
(3228, 'Hiran', 201, NULL, NULL),
(3229, 'Jubbada Hose', 201, NULL, NULL),
(3230, 'Jubbadha Dexe', 201, NULL, NULL),
(3231, 'Mudug', 201, NULL, NULL),
(3232, 'Nugal', 201, NULL, NULL),
(3233, 'Sanag', 201, NULL, NULL),
(3234, 'Shabellaha Dhexe', 201, NULL, NULL),
(3235, 'Shabellaha Hose', 201, NULL, NULL),
(3236, 'Togdher', 201, NULL, NULL),
(3237, 'Woqoyi Galbed', 201, NULL, NULL),
(3238, 'Eastern Cape', 202, NULL, NULL),
(3239, 'Free State', 202, NULL, NULL),
(3240, 'Gauteng', 202, NULL, NULL),
(3241, 'Kempton Park', 202, NULL, NULL),
(3242, 'Kramerville', 202, NULL, NULL),
(3243, 'KwaZulu Natal', 202, NULL, NULL),
(3244, 'Limpopo', 202, NULL, NULL),
(3245, 'Mpumalanga', 202, NULL, NULL),
(3246, 'North West', 202, NULL, NULL),
(3247, 'Northern Cape', 202, NULL, NULL),
(3248, 'Parow', 202, NULL, NULL),
(3249, 'Table View', 202, NULL, NULL),
(3250, 'Umtentweni', 202, NULL, NULL),
(3251, 'Western Cape', 202, NULL, NULL),
(3252, 'South Georgia', 203, NULL, NULL),
(3253, 'Central Equatoria', 204, NULL, NULL),
(3254, 'A Coruna', 205, NULL, NULL),
(3255, 'Alacant', 205, NULL, NULL),
(3256, 'Alava', 205, NULL, NULL),
(3257, 'Albacete', 205, NULL, NULL),
(3258, 'Almeria', 205, NULL, NULL),
(3259, 'Andalucia', 205, NULL, NULL),
(3260, 'Asturias', 205, NULL, NULL),
(3261, 'Avila', 205, NULL, NULL),
(3262, 'Badajoz', 205, NULL, NULL),
(3263, 'Balears', 205, NULL, NULL),
(3264, 'Barcelona', 205, NULL, NULL),
(3265, 'Bertamirans', 205, NULL, NULL),
(3266, 'Biscay', 205, NULL, NULL),
(3267, 'Burgos', 205, NULL, NULL),
(3268, 'Caceres', 205, NULL, NULL),
(3269, 'Cadiz', 205, NULL, NULL),
(3270, 'Cantabria', 205, NULL, NULL),
(3271, 'Castello', 205, NULL, NULL),
(3272, 'Catalunya', 205, NULL, NULL),
(3273, 'Ceuta', 205, NULL, NULL),
(3274, 'Ciudad Real', 205, NULL, NULL),
(3275, 'Comunidad Autonoma de Canarias', 205, NULL, NULL),
(3276, 'Comunidad Autonoma de Cataluna', 205, NULL, NULL),
(3277, 'Comunidad Autonoma de Galicia', 205, NULL, NULL),
(3278, 'Comunidad Autonoma de las Isla', 205, NULL, NULL),
(3279, 'Comunidad Autonoma del Princip', 205, NULL, NULL),
(3280, 'Comunidad Valenciana', 205, NULL, NULL),
(3281, 'Cordoba', 205, NULL, NULL),
(3282, 'Cuenca', 205, NULL, NULL),
(3283, 'Gipuzkoa', 205, NULL, NULL),
(3284, 'Girona', 205, NULL, NULL),
(3285, 'Granada', 205, NULL, NULL),
(3286, 'Guadalajara', 205, NULL, NULL),
(3287, 'Guipuzcoa', 205, NULL, NULL),
(3288, 'Huelva', 205, NULL, NULL),
(3289, 'Huesca', 205, NULL, NULL),
(3290, 'Jaen', 205, NULL, NULL),
(3291, 'La Rioja', 205, NULL, NULL),
(3292, 'Las Palmas', 205, NULL, NULL),
(3293, 'Leon', 205, NULL, NULL),
(3294, 'Lerida', 205, NULL, NULL),
(3295, 'Lleida', 205, NULL, NULL),
(3296, 'Lugo', 205, NULL, NULL),
(3297, 'Madrid', 205, NULL, NULL),
(3298, 'Malaga', 205, NULL, NULL),
(3299, 'Melilla', 205, NULL, NULL),
(3300, 'Murcia', 205, NULL, NULL),
(3301, 'Navarra', 205, NULL, NULL),
(3302, 'Ourense', 205, NULL, NULL),
(3303, 'Pais Vasco', 205, NULL, NULL),
(3304, 'Palencia', 205, NULL, NULL),
(3305, 'Pontevedra', 205, NULL, NULL),
(3306, 'Salamanca', 205, NULL, NULL),
(3307, 'Santa Cruz de Tenerife', 205, NULL, NULL),
(3308, 'Segovia', 205, NULL, NULL),
(3309, 'Sevilla', 205, NULL, NULL),
(3310, 'Soria', 205, NULL, NULL),
(3311, 'Tarragona', 205, NULL, NULL),
(3312, 'Tenerife', 205, NULL, NULL),
(3313, 'Teruel', 205, NULL, NULL),
(3314, 'Toledo', 205, NULL, NULL),
(3315, 'Valencia', 205, NULL, NULL),
(3316, 'Valladolid', 205, NULL, NULL),
(3317, 'Vizcaya', 205, NULL, NULL),
(3318, 'Zamora', 205, NULL, NULL),
(3319, 'Zaragoza', 205, NULL, NULL),
(3320, 'Amparai', 206, NULL, NULL),
(3321, 'Anuradhapuraya', 206, NULL, NULL),
(3322, 'Badulla', 206, NULL, NULL),
(3323, 'Boralesgamuwa', 206, NULL, NULL),
(3324, 'Colombo', 206, NULL, NULL),
(3325, 'Galla', 206, NULL, NULL),
(3326, 'Gampaha', 206, NULL, NULL),
(3327, 'Hambantota', 206, NULL, NULL),
(3328, 'Kalatura', 206, NULL, NULL),
(3329, 'Kegalla', 206, NULL, NULL),
(3330, 'Kilinochchi', 206, NULL, NULL),
(3331, 'Kurunegala', 206, NULL, NULL),
(3332, 'Madakalpuwa', 206, NULL, NULL),
(3333, 'Maha Nuwara', 206, NULL, NULL),
(3334, 'Malwana', 206, NULL, NULL),
(3335, 'Mannarama', 206, NULL, NULL),
(3336, 'Matale', 206, NULL, NULL),
(3337, 'Matara', 206, NULL, NULL),
(3338, 'Monaragala', 206, NULL, NULL),
(3339, 'Mullaitivu', 206, NULL, NULL),
(3340, 'North Eastern Province', 206, NULL, NULL),
(3341, 'North Western Province', 206, NULL, NULL),
(3342, 'Nuwara Eliya', 206, NULL, NULL),
(3343, 'Polonnaruwa', 206, NULL, NULL),
(3344, 'Puttalama', 206, NULL, NULL),
(3345, 'Ratnapuraya', 206, NULL, NULL),
(3346, 'Southern Province', 206, NULL, NULL),
(3347, 'Tirikunamalaya', 206, NULL, NULL),
(3348, 'Tuscany', 206, NULL, NULL),
(3349, 'Vavuniyawa', 206, NULL, NULL),
(3350, 'Western Province', 206, NULL, NULL),
(3351, 'Yapanaya', 206, NULL, NULL),
(3352, 'kadawatha', 206, NULL, NULL),
(3353, 'A\'\'ali-an-Nil', 207, NULL, NULL),
(3354, 'Bahr-al-Jabal', 207, NULL, NULL),
(3355, 'Central Equatoria', 207, NULL, NULL),
(3356, 'Gharb Bahr-al-Ghazal', 207, NULL, NULL),
(3357, 'Gharb Darfur', 207, NULL, NULL),
(3358, 'Gharb Kurdufan', 207, NULL, NULL),
(3359, 'Gharb-al-Istiwa\'\'iyah', 207, NULL, NULL),
(3360, 'Janub Darfur', 207, NULL, NULL),
(3361, 'Janub Kurdufan', 207, NULL, NULL),
(3362, 'Junqali', 207, NULL, NULL),
(3363, 'Kassala', 207, NULL, NULL),
(3364, 'Nahr-an-Nil', 207, NULL, NULL),
(3365, 'Shamal Bahr-al-Ghazal', 207, NULL, NULL),
(3366, 'Shamal Darfur', 207, NULL, NULL),
(3367, 'Shamal Kurdufan', 207, NULL, NULL),
(3368, 'Sharq-al-Istiwa\'\'iyah', 207, NULL, NULL),
(3369, 'Sinnar', 207, NULL, NULL),
(3370, 'Warab', 207, NULL, NULL),
(3371, 'Wilayat al Khartum', 207, NULL, NULL),
(3372, 'al-Bahr-al-Ahmar', 207, NULL, NULL),
(3373, 'al-Buhayrat', 207, NULL, NULL),
(3374, 'al-Jazirah', 207, NULL, NULL),
(3375, 'al-Khartum', 207, NULL, NULL),
(3376, 'al-Qadarif', 207, NULL, NULL),
(3377, 'al-Wahdah', 207, NULL, NULL),
(3378, 'an-Nil-al-Abyad', 207, NULL, NULL),
(3379, 'an-Nil-al-Azraq', 207, NULL, NULL),
(3380, 'ash-Shamaliyah', 207, NULL, NULL),
(3381, 'Brokopondo', 208, NULL, NULL),
(3382, 'Commewijne', 208, NULL, NULL),
(3383, 'Coronie', 208, NULL, NULL),
(3384, 'Marowijne', 208, NULL, NULL),
(3385, 'Nickerie', 208, NULL, NULL),
(3386, 'Para', 208, NULL, NULL),
(3387, 'Paramaribo', 208, NULL, NULL),
(3388, 'Saramacca', 208, NULL, NULL),
(3389, 'Wanica', 208, NULL, NULL),
(3390, 'Svalbard', 209, NULL, NULL),
(3391, 'Hhohho', 210, NULL, NULL),
(3392, 'Lubombo', 210, NULL, NULL),
(3393, 'Manzini', 210, NULL, NULL),
(3394, 'Shiselweni', 210, NULL, NULL),
(3395, 'Alvsborgs Lan', 211, NULL, NULL),
(3396, 'Angermanland', 211, NULL, NULL),
(3397, 'Blekinge', 211, NULL, NULL),
(3398, 'Bohuslan', 211, NULL, NULL),
(3399, 'Dalarna', 211, NULL, NULL),
(3400, 'Gavleborg', 211, NULL, NULL),
(3401, 'Gaza', 211, NULL, NULL),
(3402, 'Gotland', 211, NULL, NULL),
(3403, 'Halland', 211, NULL, NULL),
(3404, 'Jamtland', 211, NULL, NULL),
(3405, 'Jonkoping', 211, NULL, NULL),
(3406, 'Kalmar', 211, NULL, NULL),
(3407, 'Kristianstads', 211, NULL, NULL),
(3408, 'Kronoberg', 211, NULL, NULL),
(3409, 'Norrbotten', 211, NULL, NULL),
(3410, 'Orebro', 211, NULL, NULL),
(3411, 'Ostergotland', 211, NULL, NULL),
(3412, 'Saltsjo-Boo', 211, NULL, NULL),
(3413, 'Skane', 211, NULL, NULL),
(3414, 'Smaland', 211, NULL, NULL),
(3415, 'Sodermanland', 211, NULL, NULL),
(3416, 'Stockholm', 211, NULL, NULL),
(3417, 'Uppsala', 211, NULL, NULL),
(3418, 'Varmland', 211, NULL, NULL),
(3419, 'Vasterbotten', 211, NULL, NULL),
(3420, 'Vastergotland', 211, NULL, NULL),
(3421, 'Vasternorrland', 211, NULL, NULL),
(3422, 'Vastmanland', 211, NULL, NULL),
(3423, 'Vastra Gotaland', 211, NULL, NULL),
(3424, 'Aargau', 212, NULL, NULL),
(3425, 'Appenzell Inner-Rhoden', 212, NULL, NULL),
(3426, 'Appenzell-Ausser Rhoden', 212, NULL, NULL),
(3427, 'Basel-Landschaft', 212, NULL, NULL),
(3428, 'Basel-Stadt', 212, NULL, NULL),
(3429, 'Bern', 212, NULL, NULL),
(3430, 'Canton Ticino', 212, NULL, NULL),
(3431, 'Fribourg', 212, NULL, NULL),
(3432, 'Geneve', 212, NULL, NULL),
(3433, 'Glarus', 212, NULL, NULL),
(3434, 'Graubunden', 212, NULL, NULL),
(3435, 'Heerbrugg', 212, NULL, NULL),
(3436, 'Jura', 212, NULL, NULL),
(3437, 'Kanton Aargau', 212, NULL, NULL),
(3438, 'Luzern', 212, NULL, NULL),
(3439, 'Morbio Inferiore', 212, NULL, NULL),
(3440, 'Muhen', 212, NULL, NULL),
(3441, 'Neuchatel', 212, NULL, NULL),
(3442, 'Nidwalden', 212, NULL, NULL),
(3443, 'Obwalden', 212, NULL, NULL),
(3444, 'Sankt Gallen', 212, NULL, NULL),
(3445, 'Schaffhausen', 212, NULL, NULL),
(3446, 'Schwyz', 212, NULL, NULL),
(3447, 'Solothurn', 212, NULL, NULL),
(3448, 'Thurgau', 212, NULL, NULL),
(3449, 'Ticino', 212, NULL, NULL),
(3450, 'Uri', 212, NULL, NULL),
(3451, 'Valais', 212, NULL, NULL),
(3452, 'Vaud', 212, NULL, NULL),
(3453, 'Vauffelin', 212, NULL, NULL),
(3454, 'Zug', 212, NULL, NULL),
(3455, 'Zurich', 212, NULL, NULL),
(3456, 'Aleppo', 213, NULL, NULL),
(3457, 'Dar\'\'a', 213, NULL, NULL),
(3458, 'Dayr-az-Zawr', 213, NULL, NULL),
(3459, 'Dimashq', 213, NULL, NULL),
(3460, 'Halab', 213, NULL, NULL),
(3461, 'Hamah', 213, NULL, NULL),
(3462, 'Hims', 213, NULL, NULL),
(3463, 'Idlib', 213, NULL, NULL),
(3464, 'Madinat Dimashq', 213, NULL, NULL),
(3465, 'Tartus', 213, NULL, NULL),
(3466, 'al-Hasakah', 213, NULL, NULL),
(3467, 'al-Ladhiqiyah', 213, NULL, NULL),
(3468, 'al-Qunaytirah', 213, NULL, NULL),
(3469, 'ar-Raqqah', 213, NULL, NULL),
(3470, 'as-Suwayda', 213, NULL, NULL),
(3471, 'Changhua County', 214, NULL, NULL),
(3472, 'Chiayi County', 214, NULL, NULL),
(3473, 'Chiayi City', 214, NULL, NULL),
(3474, 'Taipei City', 214, NULL, NULL),
(3475, 'Hsinchu County', 214, NULL, NULL),
(3476, 'Hsinchu City', 214, NULL, NULL),
(3477, 'Hualien County', 214, NULL, NULL),
(3480, 'Kaohsiung City', 214, NULL, NULL),
(3481, 'Keelung City', 214, NULL, NULL),
(3482, 'Kinmen County', 214, NULL, NULL),
(3483, 'Miaoli County', 214, NULL, NULL),
(3484, 'Nantou County', 214, NULL, NULL),
(3486, 'Penghu County', 214, NULL, NULL),
(3487, 'Pingtung County', 214, NULL, NULL),
(3488, 'Taichung City', 214, NULL, NULL),
(3492, 'Tainan City', 214, NULL, NULL),
(3493, 'New Taipei City', 214, NULL, NULL),
(3495, 'Taitung County', 214, NULL, NULL),
(3496, 'Taoyuan City', 214, NULL, NULL),
(3497, 'Yilan County', 214, NULL, NULL),
(3498, 'YunLin County', 214, NULL, NULL),
(3500, 'Dushanbe', 215, NULL, NULL),
(3501, 'Gorno-Badakhshan', 215, NULL, NULL),
(3502, 'Karotegin', 215, NULL, NULL),
(3503, 'Khatlon', 215, NULL, NULL),
(3504, 'Sughd', 215, NULL, NULL),
(3505, 'Arusha', 216, NULL, NULL),
(3506, 'Dar es Salaam', 216, NULL, NULL),
(3507, 'Dodoma', 216, NULL, NULL),
(3508, 'Iringa', 216, NULL, NULL),
(3509, 'Kagera', 216, NULL, NULL),
(3510, 'Kigoma', 216, NULL, NULL),
(3511, 'Kilimanjaro', 216, NULL, NULL),
(3512, 'Lindi', 216, NULL, NULL),
(3513, 'Mara', 216, NULL, NULL),
(3514, 'Mbeya', 216, NULL, NULL),
(3515, 'Morogoro', 216, NULL, NULL),
(3516, 'Mtwara', 216, NULL, NULL),
(3517, 'Mwanza', 216, NULL, NULL),
(3518, 'Pwani', 216, NULL, NULL),
(3519, 'Rukwa', 216, NULL, NULL),
(3520, 'Ruvuma', 216, NULL, NULL),
(3521, 'Shinyanga', 216, NULL, NULL),
(3522, 'Singida', 216, NULL, NULL),
(3523, 'Tabora', 216, NULL, NULL),
(3524, 'Tanga', 216, NULL, NULL),
(3525, 'Zanzibar and Pemba', 216, NULL, NULL),
(3526, 'Amnat Charoen', 217, NULL, NULL),
(3527, 'Ang Thong', 217, NULL, NULL),
(3528, 'Bangkok', 217, NULL, NULL),
(3529, 'Buri Ram', 217, NULL, NULL),
(3530, 'Chachoengsao', 217, NULL, NULL),
(3531, 'Chai Nat', 217, NULL, NULL),
(3532, 'Chaiyaphum', 217, NULL, NULL),
(3533, 'Changwat Chaiyaphum', 217, NULL, NULL),
(3534, 'Chanthaburi', 217, NULL, NULL),
(3535, 'Chiang Mai', 217, NULL, NULL),
(3536, 'Chiang Rai', 217, NULL, NULL),
(3537, 'Chon Buri', 217, NULL, NULL),
(3538, 'Chumphon', 217, NULL, NULL),
(3539, 'Kalasin', 217, NULL, NULL),
(3540, 'Kamphaeng Phet', 217, NULL, NULL),
(3541, 'Kanchanaburi', 217, NULL, NULL),
(3542, 'Khon Kaen', 217, NULL, NULL),
(3543, 'Krabi', 217, NULL, NULL),
(3544, 'Krung Thep', 217, NULL, NULL),
(3545, 'Lampang', 217, NULL, NULL),
(3546, 'Lamphun', 217, NULL, NULL),
(3547, 'Loei', 217, NULL, NULL),
(3548, 'Lop Buri', 217, NULL, NULL),
(3549, 'Mae Hong Son', 217, NULL, NULL),
(3550, 'Maha Sarakham', 217, NULL, NULL),
(3551, 'Mukdahan', 217, NULL, NULL),
(3552, 'Nakhon Nayok', 217, NULL, NULL),
(3553, 'Nakhon Pathom', 217, NULL, NULL),
(3554, 'Nakhon Phanom', 217, NULL, NULL),
(3555, 'Nakhon Ratchasima', 217, NULL, NULL),
(3556, 'Nakhon Sawan', 217, NULL, NULL),
(3557, 'Nakhon Si Thammarat', 217, NULL, NULL),
(3558, 'Nan', 217, NULL, NULL),
(3559, 'Narathiwat', 217, NULL, NULL),
(3560, 'Nong Bua Lam Phu', 217, NULL, NULL),
(3561, 'Nong Khai', 217, NULL, NULL),
(3562, 'Nonthaburi', 217, NULL, NULL),
(3563, 'Pathum Thani', 217, NULL, NULL),
(3564, 'Pattani', 217, NULL, NULL),
(3565, 'Phangnga', 217, NULL, NULL),
(3566, 'Phatthalung', 217, NULL, NULL),
(3567, 'Phayao', 217, NULL, NULL),
(3568, 'Phetchabun', 217, NULL, NULL),
(3569, 'Phetchaburi', 217, NULL, NULL),
(3570, 'Phichit', 217, NULL, NULL),
(3571, 'Phitsanulok', 217, NULL, NULL),
(3572, 'Phra Nakhon Si Ayutthaya', 217, NULL, NULL),
(3573, 'Phrae', 217, NULL, NULL),
(3574, 'Phuket', 217, NULL, NULL),
(3575, 'Prachin Buri', 217, NULL, NULL),
(3576, 'Prachuap Khiri Khan', 217, NULL, NULL),
(3577, 'Ranong', 217, NULL, NULL),
(3578, 'Ratchaburi', 217, NULL, NULL),
(3579, 'Rayong', 217, NULL, NULL),
(3580, 'Roi Et', 217, NULL, NULL),
(3581, 'Sa Kaeo', 217, NULL, NULL),
(3582, 'Sakon Nakhon', 217, NULL, NULL),
(3583, 'Samut Prakan', 217, NULL, NULL),
(3584, 'Samut Sakhon', 217, NULL, NULL),
(3585, 'Samut Songkhran', 217, NULL, NULL),
(3586, 'Saraburi', 217, NULL, NULL),
(3587, 'Satun', 217, NULL, NULL),
(3588, 'Si Sa Ket', 217, NULL, NULL),
(3589, 'Sing Buri', 217, NULL, NULL),
(3590, 'Songkhla', 217, NULL, NULL),
(3591, 'Sukhothai', 217, NULL, NULL),
(3592, 'Suphan Buri', 217, NULL, NULL),
(3593, 'Surat Thani', 217, NULL, NULL),
(3594, 'Surin', 217, NULL, NULL),
(3595, 'Tak', 217, NULL, NULL),
(3596, 'Trang', 217, NULL, NULL),
(3597, 'Trat', 217, NULL, NULL),
(3598, 'Ubon Ratchathani', 217, NULL, NULL),
(3599, 'Udon Thani', 217, NULL, NULL),
(3600, 'Uthai Thani', 217, NULL, NULL),
(3601, 'Uttaradit', 217, NULL, NULL),
(3602, 'Yala', 217, NULL, NULL),
(3603, 'Yasothon', 217, NULL, NULL),
(3604, 'Centre', 218, NULL, NULL),
(3605, 'Kara', 218, NULL, NULL),
(3606, 'Maritime', 218, NULL, NULL),
(3607, 'Plateaux', 218, NULL, NULL),
(3608, 'Savanes', 218, NULL, NULL),
(3609, 'Atafu', 219, NULL, NULL),
(3610, 'Fakaofo', 219, NULL, NULL),
(3611, 'Nukunonu', 219, NULL, NULL),
(3612, 'Eua', 220, NULL, NULL),
(3613, 'Ha\'\'apai', 220, NULL, NULL),
(3614, 'Niuas', 220, NULL, NULL),
(3615, 'Tongatapu', 220, NULL, NULL),
(3616, 'Vava\'\'u', 220, NULL, NULL),
(3617, 'Arima-Tunapuna-Piarco', 221, NULL, NULL),
(3618, 'Caroni', 221, NULL, NULL),
(3619, 'Chaguanas', 221, NULL, NULL),
(3620, 'Couva-Tabaquite-Talparo', 221, NULL, NULL),
(3621, 'Diego Martin', 221, NULL, NULL),
(3622, 'Glencoe', 221, NULL, NULL),
(3623, 'Penal Debe', 221, NULL, NULL),
(3624, 'Point Fortin', 221, NULL, NULL),
(3625, 'Port of Spain', 221, NULL, NULL),
(3626, 'Princes Town', 221, NULL, NULL),
(3627, 'Saint George', 221, NULL, NULL),
(3628, 'San Fernando', 221, NULL, NULL),
(3629, 'San Juan', 221, NULL, NULL),
(3630, 'Sangre Grande', 221, NULL, NULL),
(3631, 'Siparia', 221, NULL, NULL),
(3632, 'Tobago', 221, NULL, NULL),
(3633, 'Aryanah', 222, NULL, NULL),
(3634, 'Bajah', 222, NULL, NULL),
(3635, 'Bin \'\'Arus', 222, NULL, NULL),
(3636, 'Binzart', 222, NULL, NULL),
(3637, 'Gouvernorat de Ariana', 222, NULL, NULL),
(3638, 'Gouvernorat de Nabeul', 222, NULL, NULL),
(3639, 'Gouvernorat de Sousse', 222, NULL, NULL),
(3640, 'Hammamet Yasmine', 222, NULL, NULL),
(3641, 'Jundubah', 222, NULL, NULL),
(3642, 'Madaniyin', 222, NULL, NULL),
(3643, 'Manubah', 222, NULL, NULL),
(3644, 'Monastir', 222, NULL, NULL),
(3645, 'Nabul', 222, NULL, NULL),
(3646, 'Qabis', 222, NULL, NULL),
(3647, 'Qafsah', 222, NULL, NULL),
(3648, 'Qibili', 222, NULL, NULL),
(3649, 'Safaqis', 222, NULL, NULL),
(3650, 'Sfax', 222, NULL, NULL),
(3651, 'Sidi Bu Zayd', 222, NULL, NULL),
(3652, 'Silyanah', 222, NULL, NULL),
(3653, 'Susah', 222, NULL, NULL),
(3654, 'Tatawin', 222, NULL, NULL),
(3655, 'Tawzar', 222, NULL, NULL),
(3656, 'Tunis', 222, NULL, NULL),
(3657, 'Zaghwan', 222, NULL, NULL),
(3658, 'al-Kaf', 222, NULL, NULL),
(3659, 'al-Mahdiyah', 222, NULL, NULL),
(3660, 'al-Munastir', 222, NULL, NULL),
(3661, 'al-Qasrayn', 222, NULL, NULL),
(3662, 'al-Qayrawan', 222, NULL, NULL),
(3663, 'Adana', 223, NULL, NULL),
(3664, 'Adiyaman', 223, NULL, NULL),
(3665, 'Afyon', 223, NULL, NULL),
(3666, 'Agri', 223, NULL, NULL),
(3667, 'Aksaray', 223, NULL, NULL),
(3668, 'Amasya', 223, NULL, NULL),
(3669, 'Ankara', 223, NULL, NULL),
(3670, 'Antalya', 223, NULL, NULL),
(3671, 'Ardahan', 223, NULL, NULL),
(3672, 'Artvin', 223, NULL, NULL),
(3673, 'Aydin', 223, NULL, NULL),
(3674, 'Balikesir', 223, NULL, NULL),
(3675, 'Bartin', 223, NULL, NULL),
(3676, 'Batman', 223, NULL, NULL),
(3677, 'Bayburt', 223, NULL, NULL),
(3678, 'Bilecik', 223, NULL, NULL),
(3679, 'Bingol', 223, NULL, NULL),
(3680, 'Bitlis', 223, NULL, NULL),
(3681, 'Bolu', 223, NULL, NULL),
(3682, 'Burdur', 223, NULL, NULL),
(3683, 'Bursa', 223, NULL, NULL),
(3684, 'Canakkale', 223, NULL, NULL),
(3685, 'Cankiri', 223, NULL, NULL),
(3686, 'Corum', 223, NULL, NULL),
(3687, 'Denizli', 223, NULL, NULL),
(3688, 'Diyarbakir', 223, NULL, NULL),
(3689, 'Duzce', 223, NULL, NULL),
(3690, 'Edirne', 223, NULL, NULL),
(3691, 'Elazig', 223, NULL, NULL),
(3692, 'Erzincan', 223, NULL, NULL),
(3693, 'Erzurum', 223, NULL, NULL),
(3694, 'Eskisehir', 223, NULL, NULL),
(3695, 'Gaziantep', 223, NULL, NULL),
(3696, 'Giresun', 223, NULL, NULL),
(3697, 'Gumushane', 223, NULL, NULL),
(3698, 'Hakkari', 223, NULL, NULL),
(3699, 'Hatay', 223, NULL, NULL),
(3700, 'Icel', 223, NULL, NULL),
(3701, 'Igdir', 223, NULL, NULL),
(3702, 'Isparta', 223, NULL, NULL),
(3703, 'Istanbul', 223, NULL, NULL),
(3704, 'Izmir', 223, NULL, NULL),
(3705, 'Kahramanmaras', 223, NULL, NULL),
(3706, 'Karabuk', 223, NULL, NULL),
(3707, 'Karaman', 223, NULL, NULL),
(3708, 'Kars', 223, NULL, NULL),
(3709, 'Karsiyaka', 223, NULL, NULL),
(3710, 'Kastamonu', 223, NULL, NULL),
(3711, 'Kayseri', 223, NULL, NULL),
(3712, 'Kilis', 223, NULL, NULL),
(3713, 'Kirikkale', 223, NULL, NULL),
(3714, 'Kirklareli', 223, NULL, NULL),
(3715, 'Kirsehir', 223, NULL, NULL),
(3716, 'Kocaeli', 223, NULL, NULL),
(3717, 'Konya', 223, NULL, NULL),
(3718, 'Kutahya', 223, NULL, NULL),
(3719, 'Lefkosa', 223, NULL, NULL),
(3720, 'Malatya', 223, NULL, NULL),
(3721, 'Manisa', 223, NULL, NULL),
(3722, 'Mardin', 223, NULL, NULL),
(3723, 'Mugla', 223, NULL, NULL),
(3724, 'Mus', 223, NULL, NULL),
(3725, 'Nevsehir', 223, NULL, NULL),
(3726, 'Nigde', 223, NULL, NULL),
(3727, 'Ordu', 223, NULL, NULL),
(3728, 'Osmaniye', 223, NULL, NULL),
(3729, 'Rize', 223, NULL, NULL),
(3730, 'Sakarya', 223, NULL, NULL),
(3731, 'Samsun', 223, NULL, NULL),
(3732, 'Sanliurfa', 223, NULL, NULL),
(3733, 'Siirt', 223, NULL, NULL),
(3734, 'Sinop', 223, NULL, NULL),
(3735, 'Sirnak', 223, NULL, NULL),
(3736, 'Sivas', 223, NULL, NULL),
(3737, 'Tekirdag', 223, NULL, NULL),
(3738, 'Tokat', 223, NULL, NULL),
(3739, 'Trabzon', 223, NULL, NULL),
(3740, 'Tunceli', 223, NULL, NULL),
(3741, 'Usak', 223, NULL, NULL),
(3742, 'Van', 223, NULL, NULL),
(3743, 'Yalova', 223, NULL, NULL),
(3744, 'Yozgat', 223, NULL, NULL),
(3745, 'Zonguldak', 223, NULL, NULL),
(3746, 'Ahal', 224, NULL, NULL),
(3747, 'Asgabat', 224, NULL, NULL),
(3748, 'Balkan', 224, NULL, NULL),
(3749, 'Dasoguz', 224, NULL, NULL),
(3750, 'Lebap', 224, NULL, NULL),
(3751, 'Mari', 224, NULL, NULL),
(3752, 'Grand Turk', 225, NULL, NULL),
(3753, 'South Caicos and East Caicos', 225, NULL, NULL),
(3754, 'Funafuti', 226, NULL, NULL),
(3755, 'Nanumanga', 226, NULL, NULL),
(3756, 'Nanumea', 226, NULL, NULL),
(3757, 'Niutao', 226, NULL, NULL),
(3758, 'Nui', 226, NULL, NULL),
(3759, 'Nukufetau', 226, NULL, NULL),
(3760, 'Nukulaelae', 226, NULL, NULL),
(3761, 'Vaitupu', 226, NULL, NULL),
(3762, 'Central', 227, NULL, NULL),
(3763, 'Eastern', 227, NULL, NULL),
(3764, 'Northern', 227, NULL, NULL),
(3765, 'Western', 227, NULL, NULL),
(3766, 'Cherkas\'\'ka', 228, NULL, NULL),
(3767, 'Chernihivs\'\'ka', 228, NULL, NULL),
(3768, 'Chernivets\'\'ka', 228, NULL, NULL),
(3769, 'Crimea', 228, NULL, NULL),
(3770, 'Dnipropetrovska', 228, NULL, NULL),
(3771, 'Donets\'\'ka', 228, NULL, NULL),
(3772, 'Ivano-Frankivs\'\'ka', 228, NULL, NULL),
(3773, 'Kharkiv', 228, NULL, NULL),
(3774, 'Kharkov', 228, NULL, NULL),
(3775, 'Khersonska', 228, NULL, NULL),
(3776, 'Khmel\'\'nyts\'\'ka', 228, NULL, NULL),
(3777, 'Kirovohrad', 228, NULL, NULL),
(3778, 'Krym', 228, NULL, NULL),
(3779, 'Kyyiv', 228, NULL, NULL),
(3780, 'Kyyivs\'\'ka', 228, NULL, NULL),
(3781, 'L\'\'vivs\'\'ka', 228, NULL, NULL),
(3782, 'Luhans\'\'ka', 228, NULL, NULL),
(3783, 'Mykolayivs\'\'ka', 228, NULL, NULL),
(3784, 'Odes\'\'ka', 228, NULL, NULL),
(3785, 'Odessa', 228, NULL, NULL),
(3786, 'Poltavs\'\'ka', 228, NULL, NULL),
(3787, 'Rivnens\'\'ka', 228, NULL, NULL),
(3788, 'Sevastopol', 228, NULL, NULL),
(3789, 'Sums\'\'ka', 228, NULL, NULL),
(3790, 'Ternopil\'\'s\'\'ka', 228, NULL, NULL),
(3791, 'Volyns\'\'ka', 228, NULL, NULL),
(3792, 'Vynnyts\'\'ka', 228, NULL, NULL),
(3793, 'Zakarpats\'\'ka', 228, NULL, NULL),
(3794, 'Zaporizhia', 228, NULL, NULL),
(3795, 'Zhytomyrs\'\'ka', 228, NULL, NULL),
(3796, 'Abu Zabi', 229, NULL, NULL),
(3797, 'Ajman', 229, NULL, NULL),
(3798, 'Dubai', 229, NULL, NULL),
(3799, 'Ras al-Khaymah', 229, NULL, NULL),
(3800, 'Sharjah', 229, NULL, NULL),
(3801, 'Sharjha', 229, NULL, NULL),
(3802, 'Umm al Qaywayn', 229, NULL, NULL),
(3803, 'al-Fujayrah', 229, NULL, NULL),
(3804, 'ash-Shariqah', 229, NULL, NULL),
(3805, 'Aberdeen', 230, NULL, NULL),
(3806, 'Aberdeenshire', 230, NULL, NULL),
(3807, 'Argyll', 230, NULL, NULL),
(3808, 'Armagh', 230, NULL, NULL),
(3809, 'Bedfordshire', 230, NULL, NULL),
(3810, 'Belfast', 230, NULL, NULL),
(3811, 'Berkshire', 230, NULL, NULL),
(3812, 'Birmingham', 230, NULL, NULL),
(3813, 'Brechin', 230, NULL, NULL),
(3814, 'Bridgnorth', 230, NULL, NULL),
(3815, 'Bristol', 230, NULL, NULL),
(3816, 'Buckinghamshire', 230, NULL, NULL),
(3817, 'Cambridge', 230, NULL, NULL),
(3818, 'Cambridgeshire', 230, NULL, NULL),
(3819, 'Channel Islands', 230, NULL, NULL),
(3820, 'Cheshire', 230, NULL, NULL),
(3821, 'Cleveland', 230, NULL, NULL),
(3822, 'Co Fermanagh', 230, NULL, NULL),
(3823, 'Conwy', 230, NULL, NULL),
(3824, 'Cornwall', 230, NULL, NULL),
(3825, 'Coventry', 230, NULL, NULL),
(3826, 'Craven Arms', 230, NULL, NULL),
(3827, 'Cumbria', 230, NULL, NULL),
(3828, 'Denbighshire', 230, NULL, NULL),
(3829, 'Derby', 230, NULL, NULL),
(3830, 'Derbyshire', 230, NULL, NULL),
(3831, 'Devon', 230, NULL, NULL),
(3832, 'Dial Code Dungannon', 230, NULL, NULL),
(3833, 'Didcot', 230, NULL, NULL),
(3834, 'Dorset', 230, NULL, NULL),
(3835, 'Dunbartonshire', 230, NULL, NULL),
(3836, 'Durham', 230, NULL, NULL),
(3837, 'East Dunbartonshire', 230, NULL, NULL),
(3838, 'East Lothian', 230, NULL, NULL),
(3839, 'East Midlands', 230, NULL, NULL),
(3840, 'East Sussex', 230, NULL, NULL),
(3841, 'East Yorkshire', 230, NULL, NULL),
(3842, 'England', 230, NULL, NULL),
(3843, 'Essex', 230, NULL, NULL),
(3844, 'Fermanagh', 230, NULL, NULL),
(3845, 'Fife', 230, NULL, NULL),
(3846, 'Flintshire', 230, NULL, NULL),
(3847, 'Fulham', 230, NULL, NULL),
(3848, 'Gainsborough', 230, NULL, NULL),
(3849, 'Glocestershire', 230, NULL, NULL),
(3850, 'Gwent', 230, NULL, NULL),
(3851, 'Hampshire', 230, NULL, NULL),
(3852, 'Hants', 230, NULL, NULL),
(3853, 'Herefordshire', 230, NULL, NULL),
(3854, 'Hertfordshire', 230, NULL, NULL),
(3855, 'Ireland', 230, NULL, NULL),
(3856, 'Isle Of Man', 230, NULL, NULL),
(3857, 'Isle of Wight', 230, NULL, NULL),
(3858, 'Kenford', 230, NULL, NULL),
(3859, 'Kent', 230, NULL, NULL),
(3860, 'Kilmarnock', 230, NULL, NULL),
(3861, 'Lanarkshire', 230, NULL, NULL),
(3862, 'Lancashire', 230, NULL, NULL),
(3863, 'Leicestershire', 230, NULL, NULL),
(3864, 'Lincolnshire', 230, NULL, NULL),
(3865, 'Llanymynech', 230, NULL, NULL),
(3866, 'London', 230, NULL, NULL),
(3867, 'Ludlow', 230, NULL, NULL),
(3868, 'Manchester', 230, NULL, NULL),
(3869, 'Mayfair', 230, NULL, NULL),
(3870, 'Merseyside', 230, NULL, NULL),
(3871, 'Mid Glamorgan', 230, NULL, NULL),
(3872, 'Middlesex', 230, NULL, NULL),
(3873, 'Mildenhall', 230, NULL, NULL),
(3874, 'Monmouthshire', 230, NULL, NULL),
(3875, 'Newton Stewart', 230, NULL, NULL),
(3876, 'Norfolk', 230, NULL, NULL),
(3877, 'North Humberside', 230, NULL, NULL),
(3878, 'North Yorkshire', 230, NULL, NULL),
(3879, 'Northamptonshire', 230, NULL, NULL),
(3880, 'Northants', 230, NULL, NULL),
(3881, 'Northern Ireland', 230, NULL, NULL),
(3882, 'Northumberland', 230, NULL, NULL),
(3883, 'Nottinghamshire', 230, NULL, NULL),
(3884, 'Oxford', 230, NULL, NULL),
(3885, 'Powys', 230, NULL, NULL),
(3886, 'Roos-shire', 230, NULL, NULL),
(3887, 'SUSSEX', 230, NULL, NULL),
(3888, 'Sark', 230, NULL, NULL),
(3889, 'Scotland', 230, NULL, NULL),
(3890, 'Scottish Borders', 230, NULL, NULL),
(3891, 'Shropshire', 230, NULL, NULL),
(3892, 'Somerset', 230, NULL, NULL),
(3893, 'South Glamorgan', 230, NULL, NULL),
(3894, 'South Wales', 230, NULL, NULL),
(3895, 'South Yorkshire', 230, NULL, NULL),
(3896, 'Southwell', 230, NULL, NULL),
(3897, 'Staffordshire', 230, NULL, NULL),
(3898, 'Strabane', 230, NULL, NULL),
(3899, 'Suffolk', 230, NULL, NULL),
(3900, 'Surrey', 230, NULL, NULL),
(3901, 'Sussex', 230, NULL, NULL),
(3902, 'Twickenham', 230, NULL, NULL),
(3903, 'Tyne and Wear', 230, NULL, NULL),
(3904, 'Tyrone', 230, NULL, NULL),
(3905, 'Utah', 230, NULL, NULL),
(3906, 'Wales', 230, NULL, NULL),
(3907, 'Warwickshire', 230, NULL, NULL),
(3908, 'West Lothian', 230, NULL, NULL),
(3909, 'West Midlands', 230, NULL, NULL),
(3910, 'West Sussex', 230, NULL, NULL),
(3911, 'West Yorkshire', 230, NULL, NULL),
(3912, 'Whissendine', 230, NULL, NULL),
(3913, 'Wiltshire', 230, NULL, NULL),
(3914, 'Wokingham', 230, NULL, NULL),
(3915, 'Worcestershire', 230, NULL, NULL),
(3916, 'Wrexham', 230, NULL, NULL),
(3917, 'Wurttemberg', 230, NULL, NULL),
(3918, 'Yorkshire', 230, NULL, NULL),
(3919, 'Alabama', 231, NULL, NULL),
(3920, 'Alaska', 231, NULL, NULL),
(3921, 'Arizona', 231, NULL, NULL),
(3922, 'Arkansas', 231, NULL, NULL),
(3923, 'Byram', 231, NULL, NULL),
(3924, 'California', 231, NULL, NULL),
(3925, 'Cokato', 231, NULL, NULL),
(3926, 'Colorado', 231, NULL, NULL),
(3927, 'Connecticut', 231, NULL, NULL),
(3928, 'Delaware', 231, NULL, NULL),
(3929, 'District of Columbia', 231, NULL, NULL),
(3930, 'Florida', 231, NULL, NULL),
(3931, 'Georgia', 231, NULL, NULL),
(3932, 'Hawaii', 231, NULL, NULL),
(3933, 'Idaho', 231, NULL, NULL),
(3934, 'Illinois', 231, NULL, NULL),
(3935, 'Indiana', 231, NULL, NULL),
(3936, 'Iowa', 231, NULL, NULL),
(3937, 'Kansas', 231, NULL, NULL),
(3938, 'Kentucky', 231, NULL, NULL),
(3939, 'Louisiana', 231, NULL, NULL),
(3940, 'Lowa', 231, NULL, NULL),
(3941, 'Maine', 231, NULL, NULL),
(3942, 'Maryland', 231, NULL, NULL),
(3943, 'Massachusetts', 231, NULL, NULL),
(3944, 'Medfield', 231, NULL, NULL),
(3945, 'Michigan', 231, NULL, NULL),
(3946, 'Minnesota', 231, NULL, NULL),
(3947, 'Mississippi', 231, NULL, NULL),
(3948, 'Missouri', 231, NULL, NULL),
(3949, 'Montana', 231, NULL, NULL),
(3950, 'Nebraska', 231, NULL, NULL),
(3951, 'Nevada', 231, NULL, NULL),
(3952, 'New Hampshire', 231, NULL, NULL),
(3953, 'New Jersey', 231, NULL, NULL),
(3954, 'New Jersy', 231, NULL, NULL),
(3955, 'New Mexico', 231, NULL, NULL),
(3956, 'New York', 231, NULL, NULL),
(3957, 'North Carolina', 231, NULL, NULL),
(3958, 'North Dakota', 231, NULL, NULL),
(3959, 'Ohio', 231, NULL, NULL),
(3960, 'Oklahoma', 231, NULL, NULL),
(3961, 'Ontario', 231, NULL, NULL),
(3962, 'Oregon', 231, NULL, NULL),
(3963, 'Pennsylvania', 231, NULL, NULL),
(3964, 'Ramey', 231, NULL, NULL),
(3965, 'Rhode Island', 231, NULL, NULL),
(3966, 'South Carolina', 231, NULL, NULL),
(3967, 'South Dakota', 231, NULL, NULL),
(3968, 'Sublimity', 231, NULL, NULL),
(3969, 'Tennessee', 231, NULL, NULL),
(3970, 'Texas', 231, NULL, NULL),
(3971, 'Trimble', 231, NULL, NULL),
(3972, 'Utah', 231, NULL, NULL),
(3973, 'Vermont', 231, NULL, NULL),
(3974, 'Virginia', 231, NULL, NULL),
(3975, 'Washington', 231, NULL, NULL),
(3976, 'West Virginia', 231, NULL, NULL),
(3977, 'Wisconsin', 231, NULL, NULL),
(3978, 'Wyoming', 231, NULL, NULL),
(3979, 'United States Minor Outlying I', 232, NULL, NULL),
(3980, 'Artigas', 233, NULL, NULL),
(3981, 'Canelones', 233, NULL, NULL),
(3982, 'Cerro Largo', 233, NULL, NULL),
(3983, 'Colonia', 233, NULL, NULL),
(3984, 'Durazno', 233, NULL, NULL),
(3985, 'FLorida', 233, NULL, NULL),
(3986, 'Flores', 233, NULL, NULL),
(3987, 'Lavalleja', 233, NULL, NULL),
(3988, 'Maldonado', 233, NULL, NULL),
(3989, 'Montevideo', 233, NULL, NULL),
(3990, 'Paysandu', 233, NULL, NULL),
(3991, 'Rio Negro', 233, NULL, NULL),
(3992, 'Rivera', 233, NULL, NULL),
(3993, 'Rocha', 233, NULL, NULL),
(3994, 'Salto', 233, NULL, NULL),
(3995, 'San Jose', 233, NULL, NULL),
(3996, 'Soriano', 233, NULL, NULL),
(3997, 'Tacuarembo', 233, NULL, NULL),
(3998, 'Treinta y Tres', 233, NULL, NULL),
(3999, 'Andijon', 234, NULL, NULL),
(4000, 'Buhoro', 234, NULL, NULL),
(4001, 'Buxoro Viloyati', 234, NULL, NULL),
(4002, 'Cizah', 234, NULL, NULL),
(4003, 'Fargona', 234, NULL, NULL),
(4004, 'Horazm', 234, NULL, NULL),
(4005, 'Kaskadar', 234, NULL, NULL),
(4006, 'Korakalpogiston', 234, NULL, NULL),
(4007, 'Namangan', 234, NULL, NULL),
(4008, 'Navoi', 234, NULL, NULL),
(4009, 'Samarkand', 234, NULL, NULL),
(4010, 'Sirdare', 234, NULL, NULL),
(4011, 'Surhondar', 234, NULL, NULL),
(4012, 'Toskent', 234, NULL, NULL),
(4013, 'Malampa', 235, NULL, NULL),
(4014, 'Penama', 235, NULL, NULL),
(4015, 'Sanma', 235, NULL, NULL),
(4016, 'Shefa', 235, NULL, NULL),
(4017, 'Tafea', 235, NULL, NULL),
(4018, 'Torba', 235, NULL, NULL),
(4019, 'Vatican City State (Holy See)', 236, NULL, NULL),
(4020, 'Amazonas', 237, NULL, NULL),
(4021, 'Anzoategui', 237, NULL, NULL),
(4022, 'Apure', 237, NULL, NULL),
(4023, 'Aragua', 237, NULL, NULL),
(4024, 'Barinas', 237, NULL, NULL),
(4025, 'Bolivar', 237, NULL, NULL),
(4026, 'Carabobo', 237, NULL, NULL),
(4027, 'Cojedes', 237, NULL, NULL),
(4028, 'Delta Amacuro', 237, NULL, NULL),
(4029, 'Distrito Federal', 237, NULL, NULL),
(4030, 'Falcon', 237, NULL, NULL),
(4031, 'Guarico', 237, NULL, NULL),
(4032, 'Lara', 237, NULL, NULL),
(4033, 'Merida', 237, NULL, NULL),
(4034, 'Miranda', 237, NULL, NULL),
(4035, 'Monagas', 237, NULL, NULL),
(4036, 'Nueva Esparta', 237, NULL, NULL),
(4037, 'Portuguesa', 237, NULL, NULL),
(4038, 'Sucre', 237, NULL, NULL),
(4039, 'Tachira', 237, NULL, NULL),
(4040, 'Trujillo', 237, NULL, NULL),
(4041, 'Vargas', 237, NULL, NULL),
(4042, 'Yaracuy', 237, NULL, NULL),
(4043, 'Zulia', 237, NULL, NULL),
(4044, 'Bac Giang', 238, NULL, NULL),
(4045, 'Binh Dinh', 238, NULL, NULL),
(4046, 'Binh Duong', 238, NULL, NULL),
(4047, 'Da Nang', 238, NULL, NULL),
(4048, 'Dong Bang Song Cuu Long', 238, NULL, NULL),
(4049, 'Dong Bang Song Hong', 238, NULL, NULL),
(4050, 'Dong Nai', 238, NULL, NULL),
(4051, 'Dong Nam Bo', 238, NULL, NULL),
(4052, 'Duyen Hai Mien Trung', 238, NULL, NULL),
(4053, 'Hanoi', 238, NULL, NULL),
(4054, 'Hung Yen', 238, NULL, NULL),
(4055, 'Khu Bon Cu', 238, NULL, NULL),
(4056, 'Long An', 238, NULL, NULL),
(4057, 'Mien Nui Va Trung Du', 238, NULL, NULL),
(4058, 'Thai Nguyen', 238, NULL, NULL),
(4059, 'Thanh Pho Ho Chi Minh', 238, NULL, NULL),
(4060, 'Thu Do Ha Noi', 238, NULL, NULL),
(4061, 'Tinh Can Tho', 238, NULL, NULL),
(4062, 'Tinh Da Nang', 238, NULL, NULL),
(4063, 'Tinh Gia Lai', 238, NULL, NULL),
(4064, 'Anegada', 239, NULL, NULL),
(4065, 'Jost van Dyke', 239, NULL, NULL),
(4066, 'Tortola', 239, NULL, NULL),
(4067, 'Saint Croix', 240, NULL, NULL),
(4068, 'Saint John', 240, NULL, NULL),
(4069, 'Saint Thomas', 240, NULL, NULL),
(4070, 'Alo', 241, NULL, NULL),
(4071, 'Singave', 241, NULL, NULL),
(4072, 'Wallis', 241, NULL, NULL),
(4073, 'Bu Jaydur', 242, NULL, NULL),
(4074, 'Wad-adh-Dhahab', 242, NULL, NULL),
(4075, 'al-\'\'Ayun', 242, NULL, NULL),
(4076, 'as-Samarah', 242, NULL, NULL),
(4077, 'Adan', 243, NULL, NULL),
(4078, 'Abyan', 243, NULL, NULL),
(4079, 'Dhamar', 243, NULL, NULL),
(4080, 'Hadramaut', 243, NULL, NULL),
(4081, 'Hajjah', 243, NULL, NULL),
(4082, 'Hudaydah', 243, NULL, NULL),
(4083, 'Ibb', 243, NULL, NULL),
(4084, 'Lahij', 243, NULL, NULL),
(4085, 'Ma\'\'rib', 243, NULL, NULL),
(4086, 'Madinat San\'\'a', 243, NULL, NULL),
(4087, 'Sa\'\'dah', 243, NULL, NULL),
(4088, 'Sana', 243, NULL, NULL),
(4089, 'Shabwah', 243, NULL, NULL),
(4090, 'Ta\'\'izz', 243, NULL, NULL),
(4091, 'al-Bayda', 243, NULL, NULL),
(4092, 'al-Hudaydah', 243, NULL, NULL),
(4093, 'al-Jawf', 243, NULL, NULL),
(4094, 'al-Mahrah', 243, NULL, NULL),
(4095, 'al-Mahwit', 243, NULL, NULL),
(4096, 'Central Serbia', 244, NULL, NULL),
(4097, 'Kosovo and Metohija', 244, NULL, NULL),
(4098, 'Montenegro', 244, NULL, NULL),
(4099, 'Republic of Serbia', 244, NULL, NULL),
(4100, 'Serbia', 244, NULL, NULL),
(4101, 'Vojvodina', 244, NULL, NULL),
(4102, 'Central', 245, NULL, NULL),
(4103, 'Copperbelt', 245, NULL, NULL),
(4104, 'Eastern', 245, NULL, NULL),
(4105, 'Luapala', 245, NULL, NULL),
(4106, 'Lusaka', 245, NULL, NULL),
(4107, 'North-Western', 245, NULL, NULL),
(4108, 'Northern', 245, NULL, NULL),
(4109, 'Southern', 245, NULL, NULL),
(4110, 'Western', 245, NULL, NULL),
(4111, 'Bulawayo', 246, NULL, NULL),
(4112, 'Harare', 246, NULL, NULL),
(4113, 'Manicaland', 246, NULL, NULL),
(4114, 'Mashonaland Central', 246, NULL, NULL),
(4115, 'Mashonaland East', 246, NULL, NULL),
(4116, 'Mashonaland West', 246, NULL, NULL),
(4117, 'Masvingo', 246, NULL, NULL),
(4118, 'Matabeleland North', 246, NULL, NULL),
(4119, 'Matabeleland South', 246, NULL, NULL),
(4120, 'Midlands', 246, NULL, NULL),
(4121, 'Lienchiang County', 214, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `country`, `city`, `address`, `created_at`, `updated_at`) VALUES
(4, 'limit less distrubution', 'johndoe@gmail.com', '03098881858', 'pakistan', 'karachi', '3rd building number no 55c rahat commercial phase 6 DHA karachi', '2024-09-08 17:39:03', '2024-09-08 17:39:03'),
(5, 'Vijay', 'johndoe123@gmail.com', '03342449955', 'pakistan', 'karachi', 'vaperz zone bolden market karachi', '2024-09-08 17:40:06', '2024-09-08 17:40:06'),
(6, 'Ahmed', 'johndoe23232@gmail.com', '03330283107', 'Pakistan', 'Karachi', 'bolden vape bazar', '2024-09-08 17:41:36', '2024-09-08 17:41:36'),
(7, 'Sami CMC corporation', 'john@gmail.com', '03003503504', 'Pakistan', 'Karachi', 'CMC corporation PECHS block 2 karachi', '2024-09-08 17:43:02', '2024-09-08 17:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `from_warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `to_warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_items`
--

CREATE TABLE `transfer_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transfer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_price` double DEFAULT NULL,
  `net_unit_price` double DEFAULT NULL,
  `tax_type` int(11) NOT NULL,
  `tax_value` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_value` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `base_unit` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `short_name`, `base_unit`, `created_at`, `updated_at`) VALUES
(1, 'vape', 'vape', 1, '2024-09-03 22:27:56', '2024-09-03 22:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `language` varchar(255) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `status`, `language`) VALUES
(1, 'Digious', 'Solutions', 'devolution@digioussolutions.com', '03128815320', '2023-07-11 05:53:39', '$2y$10$bER8F6VjKN1FCpPbx24VG.Duca41shxayZ5LGr9.zg3PVNgIwWLJi', NULL, '2023-07-11 05:53:39', '2024-09-07 03:26:22', 1, 'en'),
(2, 'Waleed', 'Qureshi', 'digioussolutions123@gmail.com', '03128815320', NULL, '$2y$10$5/.jRybqRsvBj9NfSFAYEOgZGQ6czHssFTvxi3wL.I/oy0.19TpeK', NULL, '2024-09-03 23:26:27', '2024-09-03 23:26:27', 1, 'en'),
(3, 'Vaperz', 'Cafe', 'vaperzcafe@gmail.com', '03702157541', NULL, '$2y$10$qZvQc89.uwQUaTbRpVVlfe0ofOTwBQ61sto3G95Jt.Cm2CViuOXLK', NULL, '2024-09-07 03:28:25', '2024-09-07 05:15:05', 1, 'en'),
(4, 'POS', 'Cashier', 'cashier@cashier.com', '123456789', NULL, '$2y$10$Luduue.9mmpNr6M2Gf6m6OqsbrK8VM6fnETW1gqHhgOsia3ee4TfK', NULL, '2024-09-07 03:31:14', '2024-09-07 03:31:14', 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `country`, `city`, `email`, `zip_code`, `created_at`, `updated_at`) VALUES
(1, 'Vaperz Cafe', '03702157541', 'Pakistan', 'Karachi', 'vaperzcafe@gmail.com', '75500', '2023-07-11 05:53:39', '2024-09-07 06:23:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adjustments_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `adjustment_items`
--
ALTER TABLE `adjustment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adjustment_items_adjustment_id_foreign` (`adjustment_id`),
  ADD KEY `adjustment_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `base_units`
--
ALTER TABLE `base_units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_units_name_unique` (`name`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_name_unique` (`name`),
  ADD UNIQUE KEY `countries_short_code_unique` (`short_code`);

--
-- Indexes for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_codes_code_unique` (`code`);

--
-- Indexes for table `coupon_product`
--
ALTER TABLE `coupon_product`
  ADD KEY `coupon_product_coupon_code_id_foreign` (`coupon_code_id`),
  ADD KEY `coupon_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_name_unique` (`name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `expenses_expense_category_id_foreign` (`expense_category_id`);

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
-- Indexes for table `holds`
--
ALTER TABLE `holds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `holds_customer_id_foreign` (`customer_id`),
  ADD KEY `holds_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `hold_items`
--
ALTER TABLE `hold_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hold_items_hold_id_foreign` (`hold_id`),
  ADD KEY `hold_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_iso_code_unique` (`iso_code`);

--
-- Indexes for table `mail_templates`
--
ALTER TABLE `mail_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_stocks`
--
ALTER TABLE `manage_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manage_stocks_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `manage_stocks_product_id_foreign` (`product_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pos_register`
--
ALTER TABLE `pos_register`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_register_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_code_unique` (`code`),
  ADD KEY `products_product_category_id_foreign` (`product_category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_categories_name_unique` (`name`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`),
  ADD KEY `purchases_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `purchases_return`
--
ALTER TABLE `purchases_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_return_supplier_id_foreign` (`supplier_id`),
  ADD KEY `purchases_return_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `purchases_return_items`
--
ALTER TABLE `purchases_return_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_return_items_purchase_return_id_foreign` (`purchase_return_id`),
  ADD KEY `purchases_return_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_items_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotations_customer_id_foreign` (`customer_id`),
  ADD KEY `quotations_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_items_quotation_id_foreign` (`quotation_id`),
  ADD KEY `quotation_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_customer_id_foreign` (`customer_id`),
  ADD KEY `sales_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `sales_user_id_foreign` (`user_id`);

--
-- Indexes for table `sales_payments`
--
ALTER TABLE `sales_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_payments_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `sales_return`
--
ALTER TABLE `sales_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_return_customer_id_foreign` (`customer_id`),
  ADD KEY `sales_return_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `sales_return_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_items_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `sale_return_items`
--
ALTER TABLE `sale_return_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_return_items_sale_return_id_foreign` (`sale_return_id`),
  ADD KEY `sale_return_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_country_id_foreign` (`country_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_from_warehouse_id_foreign` (`from_warehouse_id`),
  ADD KEY `transfers_to_warehouse_id_foreign` (`to_warehouse_id`);

--
-- Indexes for table `transfer_items`
--
ALTER TABLE `transfer_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_items_transfer_id_foreign` (`transfer_id`),
  ADD KEY `transfer_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `warehouses_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adjustment_items`
--
ALTER TABLE `adjustment_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `base_units`
--
ALTER TABLE `base_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holds`
--
ALTER TABLE `holds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hold_items`
--
ALTER TABLE `hold_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mail_templates`
--
ALTER TABLE `mail_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `manage_stocks`
--
ALTER TABLE `manage_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `pos_register`
--
ALTER TABLE `pos_register`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `purchases_return`
--
ALTER TABLE `purchases_return`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases_return_items`
--
ALTER TABLE `purchases_return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_items`
--
ALTER TABLE `quotation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sales_payments`
--
ALTER TABLE `sales_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sales_return`
--
ALTER TABLE `sales_return`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sale_return_items`
--
ALTER TABLE `sale_return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4122;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_items`
--
ALTER TABLE `transfer_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD CONSTRAINT `adjustments_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `adjustment_items`
--
ALTER TABLE `adjustment_items`
  ADD CONSTRAINT `adjustment_items_adjustment_id_foreign` FOREIGN KEY (`adjustment_id`) REFERENCES `adjustments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `adjustment_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coupon_product`
--
ALTER TABLE `coupon_product`
  ADD CONSTRAINT `coupon_product_coupon_code_id_foreign` FOREIGN KEY (`coupon_code_id`) REFERENCES `coupon_codes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coupon_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `expenses_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `holds`
--
ALTER TABLE `holds`
  ADD CONSTRAINT `holds_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `holds_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hold_items`
--
ALTER TABLE `hold_items`
  ADD CONSTRAINT `hold_items_hold_id_foreign` FOREIGN KEY (`hold_id`) REFERENCES `holds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hold_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `manage_stocks`
--
ALTER TABLE `manage_stocks`
  ADD CONSTRAINT `manage_stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `manage_stocks_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pos_register`
--
ALTER TABLE `pos_register`
  ADD CONSTRAINT `pos_register_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases_return`
--
ALTER TABLE `purchases_return`
  ADD CONSTRAINT `purchases_return_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_return_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases_return_items`
--
ALTER TABLE `purchases_return_items`
  ADD CONSTRAINT `purchases_return_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_return_items_purchase_return_id_foreign` FOREIGN KEY (`purchase_return_id`) REFERENCES `purchases_return` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `quotations_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quotations_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD CONSTRAINT `quotation_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quotation_items_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_payments`
--
ALTER TABLE `sales_payments`
  ADD CONSTRAINT `sales_payments_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_return`
--
ALTER TABLE `sales_return`
  ADD CONSTRAINT `sales_return_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_return_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_return_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD CONSTRAINT `sale_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_items_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale_return_items`
--
ALTER TABLE `sale_return_items`
  ADD CONSTRAINT `sale_return_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_return_items_sale_return_id_foreign` FOREIGN KEY (`sale_return_id`) REFERENCES `sales_return` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_from_warehouse_id_foreign` FOREIGN KEY (`from_warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transfers_to_warehouse_id_foreign` FOREIGN KEY (`to_warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transfer_items`
--
ALTER TABLE `transfer_items`
  ADD CONSTRAINT `transfer_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transfer_items_transfer_id_foreign` FOREIGN KEY (`transfer_id`) REFERENCES `transfers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
