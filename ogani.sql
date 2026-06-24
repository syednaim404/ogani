-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2026 at 07:53 AM
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
-- Database: `ogani`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertises`
--

CREATE TABLE `advertises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertises`
--

INSERT INTO `advertises` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'upload/advertise-image/1781878236.jpg', 1, '2026-06-19 08:10:36', '2026-06-19 08:10:36'),
(2, 'upload/advertise-image/1781878242.jpg', 1, '2026-06-19 08:10:42', '2026-06-19 08:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Vegetable', 'FRUIT FRESH', 'Free Pickup and Delivery Available', NULL, 1, '2026-06-19 05:54:07', '2026-06-19 05:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `long_description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `tages` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `name`, `description`, `long_description`, `image`, `tages`, `facebook`, `twitter`, `instagram`, `pinterest`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'Anaros (Pineapple)', 'Spanish Rosehip Seed Oil, derived from the seeds of wild rose bushes native to Spain, is a cherished beauty secret treasured for its exceptional qualities. MAYA All', '<p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus. Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p><h3 style=\"margin: 0px 0px 30px; font-weight: 700; line-height: 30px; font-size: 30px; color: rgb(51, 51, 51); font-family: Cairo, sans-serif;\">The corner window forms a place within a place that is a resting point within the large space.</h3><p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">The study area is located at the back with a view of the vast nature. Together with the other buildings, a congruent story has been managed in which the whole has a reinforcing effect on the components. The use of materials seeks connection to the main house, the adjacent stables</p>', 'upload/blog-image/1782012658.jpg', 'All, Trending, Cooking, Healthy Food, Life Style', 'https://www.facebook.com/', 'https://x.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 1, '2026-06-20 21:22:04', '2026-06-20 21:31:26'),
(2, 4, 'Coriander Leaves (Dhonia Pata)', 'Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat', '<p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus. Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p><h3 style=\"margin: 0px 0px 30px; font-weight: 700; line-height: 30px; font-size: 30px; color: rgb(51, 51, 51); font-family: Cairo, sans-serif;\">The corner window forms a place within a place that is a resting point within the large space.The corner window forms a place within a place that is a resting point within the large space.</h3><p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">The study area is located at the back with a view of the vast nature. Together with the other buildings, a congruent story has been managed in which the whole has a reinforcing effect on the components. The use of materials seeks connection to the main house, the adjacent stables</p>', 'upload/blog-image/1782012602.jpg', 'All, Trending, Cooking, Healthy Food, Life Style', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 1, '2026-06-20 21:22:38', '2026-06-20 21:30:02'),
(3, 6, 'Best Deer Burger', 'like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\'', '<h3 style=\"margin: 0px 0px 30px; font-weight: 700; line-height: 30px; font-size: 30px; color: rgb(51, 51, 51); font-family: Cairo, sans-serif;\">The corner window forms a place within a place that is a resting point within the large space.</h3><p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">The study area is located at the back with a view of the vast nature. Together with the other buildings, a congruent story has been managed in which the whole has a reinforcing effect on the components. The use of materials seeks connection to the main house, the adjacent stables</p><h3 style=\"margin: 0px 0px 30px; font-weight: 700; line-height: 30px; font-size: 30px; color: rgb(51, 51, 51); font-family: Cairo, sans-serif;\">window forms a place within a place that is a resting point within the large space.e corner window forms a place within a place that is a resting point within the large space.</h3><p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">The study area is located at the back with a view of the vast nature. Together with the other buildings, a congruent story has been managed in which the whole has a reinforcing effect on the components. The use of materials seeks connection to the main house, the adjacent stables</p>', 'upload/blog-image/1782013015.jpg', 'All, Trending, Cooking, Healthy Food, Life Style', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 1, '2026-06-20 21:36:55', '2026-06-20 21:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chiquita', NULL, NULL, 1, '2026-06-19 06:25:58', '2026-06-19 06:25:58'),
(2, 'Bangladeshi', NULL, NULL, 1, '2026-06-19 07:47:35', '2026-06-19 07:47:35'),
(3, 'UK', NULL, NULL, 1, '2026-06-19 09:06:58', '2026-06-19 09:06:58'),
(4, 'KFC', NULL, NULL, 1, '2026-06-19 09:14:08', '2026-06-19 09:14:08'),
(5, 'Indin Chicken', NULL, NULL, 1, '2026-06-19 10:26:47', '2026-06-19 10:26:47'),
(6, 'korean', NULL, NULL, 1, '2026-06-20 09:10:07', '2026-06-20 09:10:07'),
(7, 'indian', NULL, NULL, 1, '2026-06-20 09:10:18', '2026-06-20 09:10:18'),
(8, 'USA', NULL, NULL, 1, '2026-06-20 09:10:30', '2026-06-20 09:10:30'),
(9, 'Japanis', NULL, NULL, 1, '2026-06-20 09:10:37', '2026-06-20 09:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_c525a5357e97fef8d3db25841c86da1a', 'i:1;', 1782111794),
('laravel_cache_c525a5357e97fef8d3db25841c86da1a:timer', 'i:1782111794;', 1782111794);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Fresh Bananas', NULL, NULL, 1, '2026-06-19 06:01:58', '2026-06-19 06:01:58'),
(3, 'Fresh Meat', NULL, NULL, 1, '2026-06-19 06:03:51', '2026-06-19 06:03:51'),
(4, 'Vegetables', NULL, NULL, 1, '2026-06-19 06:05:02', '2026-06-19 06:05:02'),
(5, 'Fruit & Nut Gifts', NULL, NULL, 1, '2026-06-19 06:05:20', '2026-06-19 06:05:20'),
(6, 'Fresh Berries', NULL, NULL, 1, '2026-06-19 06:05:32', '2026-06-19 06:05:32'),
(7, 'Fresh Fish', NULL, NULL, 1, '2026-06-19 06:06:06', '2026-06-19 10:42:43'),
(8, 'Butter & Eggs', NULL, NULL, 1, '2026-06-19 06:06:18', '2026-06-19 06:06:18'),
(9, 'Fastfood', NULL, NULL, 1, '2026-06-19 06:06:30', '2026-06-19 06:06:30'),
(10, 'Fresh Onion', NULL, NULL, 1, '2026-06-19 06:06:40', '2026-06-19 06:06:40'),
(11, 'Papayaya & Crisps', NULL, NULL, 1, '2026-06-19 06:06:49', '2026-06-19 06:06:49'),
(12, 'Oatmeal', NULL, NULL, 1, '2026-06-19 06:07:00', '2026-06-19 06:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `open_time` varchar(255) DEFAULT NULL,
  `map_link` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `image`, `address`, `mobile`, `email`, `open_time`, `map_link`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, '60-49 Road 11378 Farmgate', '+65 11 188 888', 'ogani@gmail.com', '9:00 am to 10:00 pm', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7303.478601309658!2d90.38210874265128!3d23.756674264664223!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8a426199b0d%3A0x6a2c655d06c88ec9!2sFarmgate%2C%20Dhaka%201205!5e0!3m2!1sen!2sbd!4v1781869356863!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, '2026-06-19 05:43:25', '2026-06-19 05:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used_count` int(11) DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `date_of_birth` text DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `customer_type` varchar(255) NOT NULL DEFAULT 'General',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `address`, `date_of_birth`, `nid`, `blood_group`, `customer_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'vabi', 'vabi@gmail.com', '018', '$2y$12$Mp7rcbrlE.eUBa2m34xMvOyxWInbypBHzKLnOriASepUh55kSu1bG', NULL, NULL, NULL, NULL, 'General', 1, '2026-06-22 03:36:33', '2026-06-22 03:36:33');

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
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `open_time` varchar(255) DEFAULT NULL,
  `map_link` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `image`, `address`, `mobile`, `email`, `open_time`, `map_link`, `facebook`, `twitter`, `instagram`, `pinterest`, `status`, `created_at`, `updated_at`) VALUES
(1, 'upload/footer-logo/1781869683.png', '60-49 Road 11378 Farmgate', '+65 11 188 888', 'ogani@gmail.com', '9:00 am to 10:00 pm', NULL, 'https://www.facebook.com/', 'https://x.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 1, '2026-06-19 05:48:03', '2026-06-19 05:48:03');

-- --------------------------------------------------------

--
-- Table structure for table `headers`
--

CREATE TABLE `headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `headers`
--

INSERT INTO `headers` (`id`, `image`, `mobile`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'upload/header-logo/1781869015.png', '+65 11 188 888', 'support 24/7 time', 1, '2026-06-19 05:36:55', '2026-06-19 05:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(90, '0001_01_01_000000_create_users_table', 1),
(91, '0001_01_01_000001_create_cache_table', 1),
(92, '0001_01_01_000002_create_jobs_table', 1),
(93, '2026_05_20_130943_add_two_factor_columns_to_users_table', 1),
(94, '2026_05_20_130944_create_passkeys_table', 1),
(95, '2026_05_20_131013_create_personal_access_tokens_table', 1),
(96, '2026_05_20_135306_create_categories_table', 1),
(97, '2026_05_20_143639_create_sub_categories_table', 1),
(98, '2026_05_20_145616_create_brands_table', 1),
(99, '2026_05_20_152629_create_units_table', 1),
(100, '2026_05_20_163000_create_products_table', 1),
(101, '2026_05_20_164309_create_product_thumbnails_table', 1),
(102, '2026_05_21_024703_create_banners_table', 1),
(103, '2026_05_21_041543_create_headers_table', 1),
(104, '2026_05_24_082253_create_orders_table', 1),
(105, '2026_05_24_082319_create_order_details_table', 1),
(106, '2026_05_24_082756_create_customers_table', 1),
(107, '2026_06_02_142608_create_couriers_table', 1),
(108, '2026_06_07_122015_create_footers_table', 1),
(109, '2026_06_08_040353_create_advertises_table', 1),
(110, '2026_06_12_033911_create_sale_offs_table', 1),
(111, '2026_06_13_103209_create_coupons_table', 1),
(112, '2026_06_15_140132_create_contacts_table', 1),
(114, '2026_06_18_024015_create_blogs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `courier_id` int(11) NOT NULL DEFAULT 0,
  `order_total` double NOT NULL,
  `tax_total` double NOT NULL,
  `shipping_total` double NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `order_date` text NOT NULL,
  `order_timestamp` text NOT NULL,
  `delivery_address` text NOT NULL,
  `delivery_date` text DEFAULT NULL,
  `delivery_timestamp` text DEFAULT NULL,
  `delivery_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `payment_method` varchar(255) NOT NULL,
  `payment_amount` double NOT NULL DEFAULT 0,
  `payment_date` text DEFAULT NULL,
  `payment_timestamp` text DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `currency` varchar(255) NOT NULL DEFAULT 'BDT',
  `transaction_id` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, 1, 35, 'China Fuji Apple', 234, 1, '2026-06-22 03:36:33', '2026-06-22 03:36:33'),
(2, 1, 37, 'Sobuj Angur', 209, 1, '2026-06-22 03:36:33', '2026-06-22 03:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `passkeys`
--

CREATE TABLE `passkeys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `credential_id` varchar(255) NOT NULL,
  `credential` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`credential`)),
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `regular_price` double DEFAULT NULL,
  `selling_price` double NOT NULL,
  `discount` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `long_description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `regular_price`, `selling_price`, `discount`, `stock`, `description`, `long_description`, `image`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 2, 2, 2, 'Premium Boneless Beef', 1450, 800, 0, 200, 'Enjoy the quality and versatility of our Boneless Beef, weighing approximately 500g ± 5%. This premium cut offers lean, tender meat that’s perfect for a wide range of dishes, from stir-fries to stews and grills. Sourced from healthy, grass-fed cattle and processed under strict halal guidelines, our boneless beef provides a wholesome, flavorful addition to any meal, whether you’re preparing a quick weekday dinner or a special occasion feast.', '<p style=\"margin: 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Helvetica Neue\", Helvetica, sans-serif; white-space: break-spaces; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; font-weight: bold;\">Boneless Beef – 1 kg ± 5% | 100% Halal | Lean & Tender</span></p><p style=\"margin: 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Helvetica Neue\", Helvetica, sans-serif; white-space: break-spaces; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; font-weight: bold;\">Product Overview:</span></p><p style=\"margin: 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Helvetica Neue\", Helvetica, sans-serif; white-space: break-spaces; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">Enjoy the quality and versatility of our </span><span style=\"margin: 0px; padding: 0px; font-weight: bold;\">Boneless Beef</span><span style=\"margin: 0px; padding: 0px;\">, weighing approximately 500g ± 5%. This premium cut offers lean, tender meat that’s perfect for a wide range of dishes, from stir-fries to stews and grills. Sourced from healthy, grass-fed cattle and processed under strict halal guidelines, our boneless beef provides a wholesome, flavorful addition to any meal, whether you’re preparing a quick weekday dinner or a special occasion feast.</span></p><p style=\"margin: 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Helvetica Neue\", Helvetica, sans-serif; white-space: break-spaces; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; font-weight: bold;\">Key Features:</span></p><ul style=\"margin: 0px 0px 0px 10px; list-style: disc; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Helvetica Neue\", Helvetica, sans-serif; font-size: 12px; white-space: break-spaces;\"><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; font-weight: bold;\">100% Halal</span><span style=\"margin: 0px; padding: 0px;\"> – Sourced and processed in accordance with halal standards, ensuring purity and quality.</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; font-weight: bold;\">Lean & Tender</span><span style=\"margin: 0px; padding: 0px;\"> – Boneless beef is known for its tender texture and rich flavor, ideal for various cooking methods.</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; font-weight: bold;\">Versatile Cooking Options</span><span style=\"margin: 0px; padding: 0px;\"> – Perfect for grilling, stir-frying, stews, and more, making it a flexible ingredient in the kitchen.</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; font-weight: bold;\">High in Protein</span><span style=\"margin: 0px; padding: 0px;\"> – A nutritious and lean source of protein, perfect for balanced, healthy meals.</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; font-weight: bold;\">Freshness Guaranteed</span><span style=\"margin: 0px; padding: 0px;\"> – Hygienically packed to ensure the highest level of freshness, flavor, and quality.</span></div><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\"><br></span></div><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"color: rgb(102, 102, 102); font-family: Cairo, sans-serif; font-size: 16px; white-space: normal;\">Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.</span></span></div></li></ul>', 'upload/product-image/1781877126.jpg', 1, 1, '2026-06-19 07:52:06', '2026-06-22 09:24:42'),
(3, 4, 3, 2, 3, 'Organic Palong Shak', 50, 30, 0, 1000, 'Bright, vibrant-looking spinach leaves are not only more appealing to the eye but more nourishing as well. Spinach has good levels of iron. The possible health benefits of consuming spinach include improving blood glucose control in diabetics, lowering the risk of cancer, lowering blood pressure, improving bone health, lowering the risk of developing asthma and more.', '<p><span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p><ul style=\"list-style: none; overflow: hidden; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, \"Helvetica Neue\", Helvetica, sans-serif; font-size: 12px;\"><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type:Bonsai</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Climate:Temperate</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Use:Outdoor Plants</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Classification:Mini Garden</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Type:Courtyard Plant</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Style:Perennial</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Brand Name:anhexiseed</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Cultivating Difficulty Degree:Slightly Difficult</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Applicable Constellation:Virgo</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Function:Interest</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Full-bloom Period:summer</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Location:Courtyard</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Flowerpot:Excluded</li><li data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i0.3fcb6bd5LRYIFV\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; list-style: none; word-break: break-word; break-inside: avoid;\">Variety:Vegetable Seeds</li></ul>', 'upload/product-image/1781879650.jpg', 1, 1, '2026-06-19 08:34:10', '2026-06-19 08:35:17'),
(4, 5, 4, 3, 2, 'Fresh Organic Red Apple', 320, 300, 0, 50, 'Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Proin eget tortor risus.', '<p style=\"margin: 0px 0px 15px; font-size: 16px; font-family: Cairo, sans-serif; color: rgb(102, 102, 102); line-height: 26px;\">Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.</p><p style=\"margin: 0px 0px 15px; font-size: 16px; font-family: Cairo, sans-serif; color: rgb(102, 102, 102); line-height: 26px;\">Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula sed magna dictum porta. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Proin eget tortor risus.</p>', 'upload/product-image/1781881835.jpg', 1, 1, '2026-06-19 09:10:35', '2026-06-19 09:10:35'),
(5, 6, 5, 4, 4, 'Best Deer Burger', 120, 100, 0, 20, 'ook like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometime', '<p style=\"margin: 0px 0px 15px; font-size: 16px; font-family: Cairo, sans-serif; color: rgb(102, 102, 102); line-height: 26px;\">Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.</p><p style=\"margin: 0px 0px 15px; font-size: 16px; font-family: Cairo, sans-serif; color: rgb(102, 102, 102); line-height: 26px;\">Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula sed magna dictum porta. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Proin eget tortor risus.</p>', 'upload/product-image/1781882306.jpg', 1, 1, '2026-06-19 09:18:26', '2026-06-19 09:18:26'),
(6, 1, 6, 2, 1, 'Banana Chompa (Ready To Eat)', 120, 87, 10, 60, 'Banana Chompa (kola) is the most popular fresh fruit in the world. It has lots of variety. Banana Chompa is one of them. Bananas are a great super food that provides energy, makes us feel full, and gives our body essential nutrients and a high amount of fiber.', '<p data-reactid=\".1e82o0387ty.$36114.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Weight: 250-290gm (Per Pcs 65-75gm)</p><p data-reactid=\".1e82o0387ty.$36114.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1e82o0387ty.$36114.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Height: 3 inches - 3.5 Inches</p><p data-reactid=\".1e82o0387ty.$36114.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Width: 1.4 to 1.6 inches</p><p data-reactid=\".1e82o0387ty.$36114.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Banana Chompa (kola) is the most popular fresh fruit in the world. It has lots of variety. Banana Chompa is one of them. Bananas are a great super food that provides energy, makes us feel full, and gives our body essential nutrients and a high amount of fiber. It is a high-calorie tropical fruit. As 100 grams of banana flesh carries 90 calories. Besides, it contains good health-benefiting fiber, anti-oxidants, minerals, and vitamins. Bananas could help you to feel happier as they contain tryptophan, a type of protein that the body converts into serotonin, known to promote relaxation and improve mood.</p><p data-reactid=\".1e82o0387ty.$36114.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Weight: 250-290gm (Per Pcs 65-75gm)</p><p data-reactid=\".1e82o0387ty.$36114.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1e82o0387ty.$36114.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Height: 3 inches - 3.5 Inches</p><p data-reactid=\".1e82o0387ty.$36114.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Width: 1.4 to 1.6 inches</p><p data-reactid=\".1e82o0387ty.$36114.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Banana Chompa (kola) is the most popular fresh fruit in the world. It has lots of variety. Banana Chompa is one of them. Bananas are a great super food that provides energy, makes us feel full, and gives our body essential nutrients and a high amount of fiber. It is a high-calorie tropical fruit. As 100 grams of banana flesh carries 90 calories. Besides, it contains good health-benefiting fiber, anti-oxidants, minerals, and vitamins. Bananas could help you to feel happier as they contain tryptophan, a type of protein that the body converts into serotonin, known to promote relaxation and improve mood.</p>', 'upload/product-image/1781883847.jpg', 1, 1, '2026-06-19 09:42:45', '2026-06-22 09:38:21'),
(7, 1, 6, 2, 1, 'Bangla Kola Fresh to Eat', 60, 50, 0, 75, 'Banana is a fruit rich in various qualities. Its nutritional value is high. It contains strong tissue-building ingredients such as vitamins, minerals, and nutrients. Bananas are a good source of calories. It has a higher combination of solid food', '<p data-reactid=\".u3puezvrl6.$24609.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Weight: 300-350gm (Per Pcs 80-90gm)</p><p data-reactid=\".u3puezvrl6.$24609.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".u3puezvrl6.$24609.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Banana is a fruit rich in various qualities. Its nutritional value is high. It contains strong tissue-building ingredients such as vitamins, minerals, and nutrients. Bananas are a good source of calories. It has a higher combination of solid food content as well as water content than any fresh fruit. Eating a large banana provides more than 100 calories. Bananas contain easily digestible carbohydrates. These sugars help the digestive system to digest easily.One medium papaya has approximately:</p><p data-reactid=\".u3puezvrl6.$6965.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".u3puezvrl6.$6965.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">120 calories, 30 grams of carbohydrate – including 5 grams of fiber and 18 grams of sugar, 2 grams of protein</p><p data-reactid=\".u3puezvrl6.$6965.1.0.1.0.1.4.$line-5\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Papayas are also a good source of: folate, vitamin A, magnesium, copper, pantothenic, acid, fiber.</p><p data-reactid=\".u3puezvrl6.$6965.1.0.1.0.1.4.$line-6\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".u3puezvrl6.$6965.1.0.1.0.1.4.$line-7\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">They also have B vitamins, alpha and beta-carotene, lutein and zeaxanthin, vitamin E, calcium, potassium, vitamin K, and lycopene, the powerful antioxidant most commonly associated with tomatoes.</p><p data-reactid=\".u3puezvrl6.$6965.1.0.1.0.1.4.$line-8\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".u3puezvrl6.$6965.1.0.1.0.1.4.$line-9\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Nutritional facts/Ingredients :The nutrients found in papaya are thought to have a range of health benefits. They may help protect against a number of health conditions such as Age-related macular degeneration, Asthma prevention, Cancer, Bone health, Diabetes, Digestion, Heart disease, Inflammation, Skin and healing, Hair health.</p>', 'upload/product-image/1781884281.jpg', 1, 1, '2026-06-19 09:51:21', '2026-06-22 09:38:35'),
(8, 1, 6, 2, 1, 'Banana Sobri  Delicious', 60, 40, 0, 64, 'Bananas are one of the most popular fruits worldwide. They contain essential nutrients that can have a protective impact on health.\r\n\r\n\r\nEating bananas can help lower blood pressure and may reduce the risk of cancer. Bananas are rich in the mineral potassium. Potassium helps maintain fluid levels in the body and regulates the movement of nutrients and waste products in and out of cells.', '<p data-reactid=\".u3puezvrl6.$23802.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Bananas are one of the most popular fruits worldwide. They contain essential nutrients that can have a protective impact on health.</p><p data-reactid=\".u3puezvrl6.$23802.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".u3puezvrl6.$23802.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Eating bananas can help lower blood pressure and may reduce the risk of cancer. Bananas are rich in the mineral potassium. Potassium helps maintain fluid levels in the body and regulates the movement of nutrients and waste products in and out of cells.</p><p data-reactid=\".u3puezvrl6.$23802.1.0.1.0.1.4.$line-5\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".u3puezvrl6.$23802.1.0.1.0.1.4.$line-6\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Potassium also helps muscles to contract and nerve cells to respond. It keeps the heart beating regularly and can reduce the effect of sodium on blood pressure.</p><p data-reactid=\".u3puezvrl6.$23802.1.0.1.0.1.4.$line-7\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".u3puezvrl6.$23802.1.0.1.0.1.4.$line-8\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Nutritional facts/Ingredients :</p><p data-reactid=\".u3puezvrl6.$23802.1.0.1.0.1.4.$line-9\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Here are some tips for using bananas:</p><p data-reactid=\".u3puezvrl6.$23802.1.0.1.0.1.4.$line-10\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".u3puezvrl6.$23802.1.0.1.0.1.4.$line-11\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">-Add a sliced banana to your morning cereal or oatmeal for a more nutritious --breakfast.</p><p data-reactid=\".u3puezvrl6.$23802.1.0.1.0.1.4.$line-12\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">-Mash ripe bananas and use to replace butter or oil in baked goods.</p><p data-reactid=\".u3puezvrl6.$23802.1.0.1.0.1.4.$line-13\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">-Add mashed bananas to muffins, cookies, and cakes for a naturally sweet flavor.</p><p data-reactid=\".u3puezvrl6.$23802.1.0.1.0.1.4.$line-14\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">-Add bananas to a smoothie.</p><p data-reactid=\".u3puezvrl6.$23802.1.0.1.0.1.4.$line-15\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">-Take a banana to work or school for a healthful, portable snack.</p>', 'upload/product-image/1781884532.jpg', 1, 1, '2026-06-19 09:55:32', '2026-06-22 09:38:51'),
(9, 3, 7, 5, 2, 'Broiler Chicken Skin', 180, 146, 10, 200, 'Before processing this product\'s live weight was (2200 gm to 2300 gm). Broiler chickens are raised primarily for meat rather than to lay eggs. These poultry are often white and are bred to be large and very healthy, often with more breast meat for the consumer market. Broiler chicken breeds grow very fast and offer good value in terms of protein and calories.', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">The Chicken Curry Cut (small) is a blend of dark and white meat that contains one leg cut in half, one wing without a tip, and one breast quarter with backbone. This package comprises bone-in and boneless chunks. When cooked, these chunks become juicy and tender, making them great for chicken curries.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">The Chicken Curry Cut (small) is a blend of dark and white meat that contains one leg cut in half, one wing without a tip, and one breast quarter with backbone. This package comprises bone-in and boneless chunks. When cooked, these chunks become juicy and tender, making them great for chicken curries.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\"></span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">The Chicken Curry Cut (small) is a blend of dark and white meat that contains one leg cut in half, one wing without a tip, and one breast quarter with backbone. This package comprises bone-in and boneless chunks. When cooked, these chunks become juicy and tender, making them great for chicken curries.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">The Chicken Curry Cut (small) is a blend of dark and white meat that contains one leg cut in half, one wing without a tip, and one breast quarter with backbone. This package comprises bone-in and boneless chunks. When cooked, these chunks become juicy and tender, making them great for chicken curries.</span></p>', 'upload/product-image/1781886602.jpg', 1, 1, '2026-06-19 10:30:02', '2026-06-22 09:39:32'),
(10, 3, 7, 2, 2, 'Bengal Meat Whole Chicken Curry Cut', 200, 180, 0, NULL, 'The Chicken Curry Cut (small) is a blend of dark and white meat that contains one leg cut in half, one wing without a tip, and one breast quarter with backbone. This package comprises bone-in and boneless chunks. When cooked, these chunks become juicy and tender, making them great for chicken curries.', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">The Chicken Curry Cut (small) is a blend of dark and white meat that contains one leg cut in half, one wing without a tip, and one breast quarter with backbone. This package comprises bone-in and boneless chunks. When cooked, these chunks become juicy and tender, making them great for chicken curries.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">The Chicken Curry Cut (small) is a blend of dark and white meat that contains one leg cut in half, one wing without a tip, and one breast quarter with backbone. This package comprises bone-in and boneless chunks. When cooked, these chunks become juicy and tender, making them great for chicken curries.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">The Chicken Curry Cut (small) is a blend of dark and white meat that contains one leg cut in half, one wing without a tip, and one breast quarter with backbone. This package comprises bone-in and boneless chunks. When cooked, these chunks become juicy and tender, making them great for chicken curries.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">The Chicken Curry Cut (small) is a blend of dark and white meat that contains one leg cut in half, one wing without a tip, and one breast quarter with backbone. This package comprises bone-in and boneless chunks. When cooked, these chunks become juicy and tender, making them great for chicken curries.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\"></span></p>', 'upload/product-image/1781886768.jpg', 1, 1, '2026-06-19 10:32:48', '2026-06-22 09:39:49'),
(11, 3, 7, 3, 2, 'Chicken Liver (Kolija)', 200, 190, 0, 45, 'Fresh, tender chicken liver sourced from broiler chickens. Hygienically cleaned and packed to retain natural taste and nutrition. Perfect for making rich, flavorful dishes such as fried, curry, or sautéed liver recipes. A nutritious choice, high in protein and essential vitamins', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Fresh, tender chicken liver sourced from broiler chickens. Hygienically cleaned and packed to retain natural taste and nutrition. Perfect for making rich, flavorful dishes such as fried, curry, or sautéed liver recipes. A nutritious choice, high in protein and essential vitamins</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Fresh, tender chicken liver sourced from broiler chickens. Hygienically cleaned and packed to retain natural taste and nutrition. Perfect for making rich, flavorful dishes such as fried, curry, or sautéed liver recipes. A nutritious choice, high in protein and essential vitamins</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Fresh, tender chicken liver sourced from broiler chickens. Hygienically cleaned and packed to retain natural taste and nutrition. Perfect for making rich, flavorful dishes such as fried, curry, or sautéed liver recipes. A nutritious choice, high in protein and essential vitamins</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Fresh, tender chicken liver sourced from broiler chickens. Hygienically cleaned and packed to retain natural taste and nutrition. Perfect for making rich, flavorful dishes such as fried, curry, or sautéed liver recipes. A nutritious choice, high in protein and essential vitamins</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\"></span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\"></span></p>', 'upload/product-image/1781886909.jpg', 1, 1, '2026-06-19 10:35:09', '2026-06-22 09:40:03'),
(12, 3, 2, 2, 2, 'Beef Liver (Kolija)', 1000, 640, 20, 69, 'Our Beef Liver (500g) is a nutrient-packed organ meat, perfect for those looking to add a rich source of protein and essential vitamins to their diet. Sourced from high-quality beef, this liver is packed with vitamins A, B12, iron, and folate, making it an excellent choice for supporting healthy blood circulation, boosting energy, and promoting overall wellness.', '<p data-reactid=\".u3puezvrl6.$11220.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Our Beef Liver (500g) is a nutrient-packed organ meat, perfect for those looking to add a rich source of protein and essential vitamins to their diet. Sourced from high-quality beef, this liver is packed with vitamins A, B12, iron, and folate, making it an excellent choice for supporting healthy blood circulation, boosting energy, and promoting overall wellness.</p><p data-reactid=\".u3puezvrl6.$11220.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".u3puezvrl6.$11220.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".u3puezvrl6.$11220.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">With its rich, savory flavor and firm texture, it’s ideal for grilling, sautéing, or incorporating into your favorite recipes like stews, curries, and pâtés. Whether you\'re a health-conscious consumer or a foodie seeking a nutrient-dense ingredient, our Beef Liver is a must-have for your kitchen.</p><p data-reactid=\".u3puezvrl6.$11220.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".u3puezvrl6.$11220.1.0.1.0.1.4.$line-5\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".u3puezvrl6.$11220.1.0.1.0.1.4.$line-6\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Key Features:</p><p data-reactid=\".u3puezvrl6.$11220.1.0.1.0.1.4.$line-7\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".u3puezvrl6.$11220.1.0.1.0.1.4.$line-8\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">500g of high-quality beef liver</p><p data-reactid=\".u3puezvrl6.$11220.1.0.1.0.1.4.$line-9\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Rich in protein, iron, vitamins A & B12</p><p data-reactid=\".u3puezvrl6.$11220.1.0.1.0.1.4.$line-10\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Supports energy levels and overall wellness</p><p data-reactid=\".u3puezvrl6.$11220.1.0.1.0.1.4.$line-11\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Versatile ingredient for a variety of dishes</p><p data-reactid=\".u3puezvrl6.$11220.1.0.1.0.1.4.$line-12\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Sourced from trusted, ethically-raised beef.</p>', 'upload/product-image/1781887576.jpg', 1, 1, '2026-06-19 10:46:16', '2026-06-22 09:40:22'),
(13, 3, 2, 2, 2, 'Bengal Meat Beef Head Meat', 1200, 1000, 0, 467, 'It is a good source of protein and essential vitamins and minerals. Cow head meat can also be a healthy part of a balanced diet.It is a good source of protein and essential vitamins and minerals. Cow head meat can also be a healthy part of a balanced diet.', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">It is a good source of protein and essential vitamins and minerals. Cow head meat can also be a healthy part of a balanced diet.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">It is a good source of protein and essential vitamins and minerals. Cow head meat can also be a healthy part of a balanced diet.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">It is a good source of protein and essential vitamins and minerals. Cow head meat can also be a healthy part of a balanced diet.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">It is a good source of protein and essential vitamins and minerals. Cow head meat can also be a healthy part of a balanced diet.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">It is a good source of protein and essential vitamins and minerals. Cow head meat can also be a healthy part of a balanced diet.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">It is a good source of protein and essential vitamins and minerals. Cow head meat can also be a healthy part of a balanced diet.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">It is a good source of protein and essential vitamins and minerals. Cow head meat can also be a healthy part of a balanced diet.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\"></span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">It is a good source of protein and essential vitamins and minerals. Cow head meat can also be a healthy part of a balanced diet.</span></p><hr><p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">It is a good source of protein and essential vitamins and minerals. Cow head meat can also be a healthy part of a balanced diet.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\"></span></p>', 'upload/product-image/1781887793.jpg', 1, 1, '2026-06-19 10:49:53', '2026-06-22 09:40:38'),
(15, 3, 7, 5, 2, 'Broiler Chicken Wings', 150, 150, 0, 43, 'Chicken wings are white meat, even though they\'re juicier and have a more concentrated poultry flavor, like dark meat. Many people think of Buffalo wings when they think of this part of the chicken, and for good reason: they\'re extremely popular throughout the United.', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Chicken wings are white meat, even though they\'re juicier and have a more concentrated poultry flavor, like dark meat. Many people think of Buffalo wings when they think of this part of the chicken, and for good reason: they\'re extremely popular throughout the United.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Chicken wings are white meat, even though they\'re juicier and have a more concentrated poultry flavor, like dark meat. Many people think of Buffalo wings when they think of this part of the chicken, and for good reason: they\'re extremely popular throughout the United.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Chicken wings are white meat, even though they\'re juicier and have a more concentrated poultry flavor, like dark meat. Many people think of Buffalo wings when they think of this part of the chicken, and for good reason: they\'re extremely popular throughout the United.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\"></span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Chicken wings are white meat, even though they\'re juicier and have a more concentrated poultry flavor, like dark meat. Many people think of Buffalo wings when they think of this part of the chicken, and for good reason: they\'re extremely popular throughout the United.</span></p><hr><p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Chicken wings are white meat, even though they\'re juicier and have a more concentrated poultry flavor, like dark meat. Many people think of Buffalo wings when they think of this part of the chicken, and for good reason: they\'re extremely popular throughout the United.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\"></span></p>', 'upload/product-image/1781888225.jpg', 1, 1, '2026-06-19 10:57:05', '2026-06-22 09:41:38');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `regular_price`, `selling_price`, `discount`, `stock`, `description`, `long_description`, `image`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(17, 4, 8, 3, 4, 'Capsicum Red,Green,Yellow', 50, 42, 4, 534, 'Every 500 gm of the product will contain 7-10 pcs of Tomato.\r\n\r\n\r\nThe tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.', '<p data-reactid=\".1b44e9ae49a.$6302.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Every 500 gm of the product will contain 7-10 pcs of Tomato.</p><p data-reactid=\".1b44e9ae49a.$6302.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$6302.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.Every 500 gm of the product will contain 7-10 pcs of Tomato.Every 500 gm of the product will contain 7-10 pcs of Tomato.</p><p data-reactid=\".1b44e9ae49a.$6302.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$6302.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.</p><p data-reactid=\".1b44e9ae49a.$6302.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$6302.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.</p>', 'upload/product-image/1781961047.jpg', 1, 1, '2026-06-20 07:10:47', '2026-06-22 09:42:11'),
(18, 4, 9, 2, 2, 'Potato Regular', 30, 20, 0, 55, 'Buy regular potato from us which provides you with dietary fiber, potassium, vitamins, etc. Regular potato provides 9-10 percent of your daily need. Regular potatoes offer more of this nutrient which helps control your blood pressure. Make a good curry with regular potato. You can make French fries and you can enjoy with your family members.', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Buy regular potato from us which provides you with dietary fiber, potassium, vitamins, etc. Regular potato provides 9-10 percent of your daily need. Regular potatoes offer more of this nutrient which helps control your blood pressure. Make a good curry with regular potato. You can make French fries and you can enjoy with your family members.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Buy regular potato from us which provides you with dietary fiber, potassium, vitamins, etc. Regular potato provides 9-10 percent of your daily need. Regular potatoes offer more of this nutrient which helps control your blood pressure. Make a good curry with regular potato. You can make French fries and you can enjoy with your family members.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Buy regular potato from us which provides you with dietary fiber, potassium, vitamins, etc. Regular potato provides 9-10 percent of your daily need. Regular potatoes offer more of this nutrient which helps control your blood pressure. Make a good curry with regular potato. You can make French fries and you can enjoy with your family members.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Buy regular potato from us which provides you with dietary fiber, potassium, vitamins, etc. Regular potato provides 9-10 percent of your daily need. Regular potatoes offer more of this nutrient which helps control your blood pressure. Make a good curry with regular potato. You can make French fries and you can enjoy with your family members.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\"></span></p>', 'upload/product-image/1781962478.jpg', 1, 1, '2026-06-20 07:34:38', '2026-06-22 09:42:26'),
(19, 4, 3, 2, 3, 'Coriander Leaves (Dhonia Pata)', 25, 20, 0, 34, 'Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.</span></p>', 'upload/product-image/1781962739.jpg', 1, 1, '2026-06-20 07:38:59', '2026-06-22 09:42:47'),
(20, 4, 8, 2, 2, 'Red Tomato', 60, 49, 10, 643, 'Every 500 gm of the product will contain 7-10 pcs of Tomato.\r\n\r\n\r\nThe tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.', '<p data-reactid=\".1b44e9ae49a.$6302.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Every 500 gm of the product will contain 7-10 pcs of Tomato.</p><p data-reactid=\".1b44e9ae49a.$6302.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$6302.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.Every 500 gm of the product will contain 7-10 pcs of Tomato.</p><p data-reactid=\".1b44e9ae49a.$6302.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$6302.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.Every 500 gm of the product will contain 7-10 pcs of Tomato.</p><p data-reactid=\".1b44e9ae49a.$6302.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$6302.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.</p>', 'upload/product-image/1781962943.jpg', 1, 1, '2026-06-20 07:42:23', '2026-06-22 09:43:03'),
(21, 4, 3, 2, 3, 'Lal Shak (Red Spinach)', 80, 60, 0, 543, 'Red Spinach is common vegetable in Bangladesh. Its leaves are usually round, thick, and rich green in color, but has a bright red colored central stem. The leaves and stems of red spinach contain a red liquid. This has a sweet, raw flavor and the texture is very delicate. Red spinach helps in the process of bowel movement since it contains a lot of fiber. This fibrous food helps in proper digestion and is useful for curing colon cancer, diabetes, cholesterol as well as for weight loss. Red spinach can be eaten in many ways. They can be consumed either raw or cooked. You can sauté them, use as salad leaves, mix in vegetables, fruits, eggs, nuts, pasta or cheese. This is used widely in Indian recipes with added flavors of spices, ginger, garlic, onions, creams, and chilies. You can also store them dry and refrigerated for about one to two weeks.This is all about red spinach recipe!', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Red Spinach is common vegetable in Bangladesh. Its leaves are usually round, thick, and rich green in color, but has a bright red colored central stem. The leaves and stems of red spinach contain a red liquid. This has a sweet, raw flavor and the texture is very delicate. Red spinach helps in the process of bowel movement since it contains a lot of fiber. This fibrous food helps in proper digestion and is useful for curing colon cancer, diabetes, cholesterol as well as for weight loss. Red spinach can be eaten in many ways. They can be consumed either raw or cooked. You can sauté them, use as salad leaves, mix in vegetables, fruits, eggs, nuts, pasta or cheese. This is used widely in Indian recipes with added flavors of spices, ginger, garlic, onions, creams, and chilies. You can also store them dry and refrigerated for about one to two weeks.This is all about red spinach recipe!</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Red Spinach is common vegetable in Bangladesh. Its leaves are usually round, thick, and rich green in color, but has a bright red colored central stem. The leaves and stems of red spinach contain a red liquid. This has a sweet, raw flavor and the texture is very delicate. Red spinach helps in the process of bowel movement since it contains a lot of fiber. This fibrous food helps in proper digestion and is useful for curing colon cancer, diabetes, cholesterol as well as for weight loss. Red spinach can be eaten in many ways. They can be consumed either raw or cooked. You can sauté them, use as salad leaves, mix in vegetables, fruits, eggs, nuts, pasta or cheese. This is used widely in Indian recipes with added flavors of spices, ginger, garlic, onions, creams, and chilies. You can also store them dry and refrigerated for about one to two weeks.This is all about red spinach recipe!</span></p>', 'upload/product-image/1781963063.jpg', 1, 1, '2026-06-20 07:44:23', '2026-06-22 09:43:22'),
(22, 4, 10, 2, 4, 'Badhakopi (Cabbage)', 80, 60, 0, 645, 'Cabbage structurally consists of clusters of stiff leaves superimposed in compact layers, allowing it to aquire round or globular shape vegetable. Fresh cabbage is an excellent source of natural antioxidant, vitamin C. Provides 36.6 mg or about 61% of RDA per 100 g. Regular consumption of foods rich in vitamin C helps the body develop resistance against infectious agents and scavenge harmful, pro-inflammatory free radicals. Cabbage is one of storehouse of phyto-chemicals like thiocyanates, indole-3-carbinol, lutein, zea-xanthin, sulforaphane, and isothiocyanates. These compounds work as powerful antioxidants and known to help protect against breast, colon, and prostate cancers.', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Cabbage structurally consists of clusters of stiff leaves superimposed in compact layers, allowing it to aquire round or globular shape vegetable. Fresh cabbage is an excellent source of natural antioxidant, vitamin C. Provides 36.6 mg or about 61% of RDA per 100 g. Regular consumption of foods rich in vitamin C helps the body develop resistance against infectious agents and scavenge harmful, pro-inflammatory free radicals. Cabbage is one of storehouse of phyto-chemicals like thiocyanates, indole-3-carbinol, lutein, zea-xanthin, sulforaphane, and isothiocyanates. These compounds work as powerful antioxidants and known to help protect against breast, colon, and prostate cancers.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Cabbage structurally consists of clusters of stiff leaves superimposed in compact layers, allowing it to aquire round or globular shape vegetable. Fresh cabbage is an excellent source of natural antioxidant, vitamin C. Provides 36.6 mg or about 61% of RDA per 100 g. Regular consumption of foods rich in vitamin C helps the body develop resistance against infectious agents and scavenge harmful, pro-inflammatory free radicals. Cabbage is one of storehouse of phyto-chemicals like thiocyanates, indole-3-carbinol, lutein, zea-xanthin, sulforaphane, and isothiocyanates. These compounds work as powerful antioxidants and known to help protect against breast, colon, and prostate cancers.</span></p>', 'upload/product-image/1781963296.jpg', 1, 1, '2026-06-20 07:48:16', '2026-06-22 09:45:17'),
(23, 4, 11, 2, 2, 'Kalo Gol Begun', 80, 70, 0, 45, 'Brinjal, is a very low calorie vegetable and has healthy nutrition. Several varieties of Brinjal grown all around the world. It contains good amounts of many essential B-complex groups of vitamins such as pantothenic acid (vitamin B5), pyridoxine (vitamin B6) and thiamine (vitamin B1), niacin (B3). These vitamins are essential in the sense that', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Brinjal, is a very low calorie vegetable and has healthy nutrition. Several varieties of Brinjal grown all around the world. It contains good amounts of many essential B-complex groups of vitamins such as pantothenic acid (vitamin B5), pyridoxine (vitamin B6) and thiamine (vitamin B1), niacin (B3). These vitamins are essential in the sense that body requires them from external sources to replenish and required for fat, protein and carbohydrate metabolism. this vegetable is an also good source of minerals like manganese, copper, iron and potassium. Manganese is used as a co-factor for the antioxidant enzyme, superoxide dismutase. Potassium is an important intracellular electrolyte that helps counter pressing (hypertension) effects of sodium.</span></p>', 'upload/product-image/1781963626.jpg', 0, 1, '2026-06-20 07:53:46', '2026-06-21 06:50:17'),
(24, 4, 11, 2, 2, 'Misti Kumra (Sweet Pumpkin)', 100, 80, 0, 10, 'Sweet Pumpkin is an extremely nutrient dense food, meaning it is chock-full of vitamins and minerals but low on calories. There are many creative ways pumpkin can be incorporated into your diet, including desserts, soups, salads, preserves and even as a substitute for butter. Sweet Pumpkin is a rich source of vitamin A. Sweet Pumpkin is one of the best-known sources of the antioxidant beta-carotene. Pumpkin puree or canned pumpkin can be used as a replacement for butter or oil in baking recipes.', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Sweet Pumpkin is an extremely nutrient dense food, meaning it is chock-full of vitamins and minerals but low on calories. There are many creative ways pumpkin can be incorporated into your diet, including desserts, soups, salads, preserves and even as a substitute for butter. Sweet Pumpkin is a rich source of vitamin A. Sweet Pumpkin is one of the best-known sources of the antioxidant beta-carotene. Pumpkin puree or canned pumpkin can be used as a replacement for butter or oil in baking recipes.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Sweet Pumpkin is an extremely nutrient dense food, meaning it is chock-full of vitamins and minerals but low on calories. There are many creative ways pumpkin can be incorporated into your diet, including desserts, soups, salads, preserves and even as a substitute for butter. Sweet Pumpkin is a rich source of vitamin A. Sweet Pumpkin is one of the best-known sources of the antioxidant beta-carotene. Pumpkin puree or canned pumpkin can be used as a replacement for butter or oil in baking recipes.</span></p>', 'upload/product-image/1781963855.jpg', 1, 1, '2026-06-20 07:57:35', '2026-06-22 03:40:37'),
(25, 5, 12, 2, 4, 'Paka Pape', 50, 41, 10, 645, '20 calories, 30 grams of carbohydrate – including 5 grams of fiber and 18 grams of sugar, 2 grams of protein\r\n\r\nPapayas are also a good source of: folate, vitamin A, magnesium, copper, pantothenic, acid, fiber.\r\n\r\n\r\nThey also have B vitamins, alpha and beta-carotene, lutein and zeaxanthin, vitamin E, calcium, potassium, vitamin K, and lycopene, the powerful antioxidant most commonly associated with tomatoes.\r\n\r\n\r\nNutritional facts/Ingredients :The nutrients found in papaya are thought to have a range of health benefits. They may help protect against a number of health conditions such as Age-related macular degeneration, Asthma prevention, Cancer, Bone health, Diabetes, Digestion, Heart disease, Inflammation, Skin and healing, Hair health.', '<p data-reactid=\".1b44e9ae49a.$6965.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">20 calories, 30 grams of carbohydrate – including 5 grams of fiber and 18 grams of sugar, 2 grams of protein</p><p data-reactid=\".1b44e9ae49a.$6965.1.0.1.0.1.4.$line-5\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Papayas are also a good source of: folate, vitamin A, magnesium, copper, pantothenic, acid, fiber.</p><p data-reactid=\".1b44e9ae49a.$6965.1.0.1.0.1.4.$line-6\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$6965.1.0.1.0.1.4.$line-7\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">They also have B vitamins, alpha and beta-carotene, lutein and zeaxanthin, vitamin E, calcium, potassium, vitamin K, and lycopene, the powerful antioxidant most commonly associated with tomatoes.</p><p data-reactid=\".1b44e9ae49a.$6965.1.0.1.0.1.4.$line-8\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$6965.1.0.1.0.1.4.$line-9\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Nutritional facts/Ingredients :The nutrients found in papaya are thought to have a range of health benefits. They may help protect against a number of health conditions such as Age-related macular degeneration, Asthma prevention, Cancer, Bone health, Diabetes, Digestion, Heart disease, Inflammation, Skin and healing, Hair health.20 calories, 30 grams of carbohydrate – including 5 grams of fiber and 18 grams of sugar, 2 grams of protein</p><p data-reactid=\".1b44e9ae49a.$6965.1.0.1.0.1.4.$line-5\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Papayas are also a good source of: folate, vitamin A, magnesium, copper, pantothenic, acid, fiber.</p><p data-reactid=\".1b44e9ae49a.$6965.1.0.1.0.1.4.$line-6\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$6965.1.0.1.0.1.4.$line-7\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">They also have B vitamins, alpha and beta-carotene, lutein and zeaxanthin, vitamin E, calcium, potassium, vitamin K, and lycopene, the powerful antioxidant most commonly associated with tomatoes.</p><p data-reactid=\".1b44e9ae49a.$6965.1.0.1.0.1.4.$line-8\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$6965.1.0.1.0.1.4.$line-9\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Nutritional facts/Ingredients :The nutrients found in papaya are thought to have a range of health benefits. They may help protect against a number of health conditions such as Age-related macular degeneration, Asthma prevention, Cancer, Bone health, Diabetes, Digestion, Heart disease, Inflammation, Skin and healing, Hair health.</p>', 'upload/product-image/1781964015.jpg', 1, 1, '2026-06-20 08:00:15', '2026-06-22 09:47:18'),
(30, 5, 12, 7, 4, 'Daab (Green Coconut)', 180, 150, 0, 45, 'Green coconut or young coconut is a very popular fruit all over the world. Green coconut produces more water than the brown or mature coconut. It is a complete food rich in calories, vitamins, and minerals. One whole green coconut contains roughly 140 calories, 28 grams of carbohydrates, 2 grams fiber, 3 grams fat, and 2 grams of protein. Coconut water is a very refreshing drink to beat tropical summer thirst. It is also a very good source of B-complex vitamins. These vitamins are essential in the sense that body requires them from external sources to replenish. Coconut water contains a very good amount of potassium. Coconut’s water reduce the risk of heart disease, boost your daily energy.', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Green coconut or young coconut is a very popular fruit all over the world. Green coconut produces more water than the brown or mature coconut. It is a complete food rich in calories, vitamins, and minerals. One whole green coconut contains roughly 140 calories, 28 grams of carbohydrates, 2 grams fiber, 3 grams fat, and 2 grams of protein. Coconut water is a very refreshing drink to beat tropical summer thirst. It is also a very good source of B-complex vitamins. These vitamins are essential in the sense that body requires them from external sources to replenish. Coconut water contains a very good amount of potassium. Coconut’s water reduce the risk of heart disease, boost your daily energy.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Green coconut or young coconut is a very popular fruit all over the world. Green coconut produces more water than the brown or mature coconut. It is a complete food rich in calories, vitamins, and minerals. One whole green coconut contains roughly 140 calories, 28 grams of carbohydrates, 2 grams fiber, 3 grams fat, and 2 grams of protein. Coconut water is a very refreshing drink to beat tropical summer thirst. It is also a very good source of B-complex vitamins. These vitamins are essential in the sense that body requires them from external sources to replenish. Coconut water contains a very good amount of potassium. Coconut’s water reduce the risk of heart disease, boost your daily energy.</span></p>', 'upload/product-image/1781969283.jpg', 1, 1, '2026-06-20 09:28:03', '2026-06-22 09:48:32'),
(31, 5, 12, 8, 3, 'Dragon Fruit Local', 210, 200, 0, 345, 'Dragon fruit is known for its striking appearance, with a bright pink or yellow skin and large, petal-like scales or \"\"wings\"\" that give it a unique, dragon-like appearance. When the fruit is cut open, it reveals vibrant, white or red flesh speckled with tiny black seeds. The flesh is soft and mildly sweet, with a flavor that is often described as a cross between a kiwi and a pear, with subtle floral notes.\r\n\r\nThe fruit is not only visually appealing but also packed with nutrients. It is low in calories and high in dietary fiber, making it beneficial for digestion. Dragon fruit is also rich in antioxidants, such as vitamin C, betalains, and carotenoids, which help fight free radicals and reduce inflammation. Additionally,', '<p data-reactid=\".1b44e9ae49a.$18522.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Dragon fruit is known for its striking appearance, with a bright pink or yellow skin and large, petal-like scales or \"\"wings\"\" that give it a unique, dragon-like appearance. When the fruit is cut open, it reveals vibrant, white or red flesh speckled with tiny black seeds. The flesh is soft and mildly sweet, with a flavor that is often described as a cross between a kiwi and a pear, with subtle floral notes.</p><p data-reactid=\".1b44e9ae49a.$18522.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$18522.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">The fruit is not only visually appealing but also packed with nutrients. It is low in calories and high in dietary fiber, making it beneficial for digestion. Dragon fruit is also rich in antioxidants, such as vitamin C, betalains, and carotenoids, which help fight free radicals and reduce inflammation. Additionally, it contains a variety of minerals like magnesium, iron, and calcium, supporting overall health.</p><p data-reactid=\".1b44e9ae49a.$18522.1.0.1.0.1.4.$line-5\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$18522.1.0.1.0.1.4.$line-6\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">As a relatively easy-to-grow and visually captivating fruit, dragon fruit has gained popularity worldwide and is often featured in health-conscious diets and gourmet dishes.Dragon fruit is known for its striking appearance, with a bright pink or yellow skin and large, petal-like scales or \"\"wings\"\" that give it a unique, dragon-like appearance. When the fruit is cut open, it reveals vibrant, white or red flesh speckled with tiny black seeds. The flesh is soft and mildly sweet, with a flavor that is often described as a cross between a kiwi and a pear, with subtle floral notes.</p><p data-reactid=\".1b44e9ae49a.$18522.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$18522.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">The fruit is not only visually appealing but also packed with nutrients. It is low in calories and high in dietary fiber, making it beneficial for digestion. Dragon fruit is also rich in antioxidants, such as vitamin C, betalains, and carotenoids, which help fight free radicals and reduce inflammation. Additionally, it contains a variety of minerals like magnesium, iron, and calcium, supporting overall health.</p><p data-reactid=\".1b44e9ae49a.$18522.1.0.1.0.1.4.$line-5\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$18522.1.0.1.0.1.4.$line-6\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">As a relatively easy-to-grow and visually captivating fruit, dragon fruit has gained popularity worldwide and is often featured in health-conscious diets and gourmet dishes.</p>', 'upload/product-image/1781969431.jpg', 1, 1, '2026-06-20 09:30:31', '2026-06-22 09:48:51'),
(32, 5, 12, 2, 4, 'Narikel (Coconut)', NULL, 150, 0, 645, 'Coconut is one of very versatile and indispensable food item for millions of inhabitants in South and South-East Asia. It is one of the most sought-after ingredients in the kitchen since it employed in almost each and every recipe prepared in these parts of the world. Coconut is a very versatile and indispensable food item for most people under the tropical belt. It is a complete food rich in calories, vitamins, and minerals. A medium-size coconut carrying 400 g edible meat and some 30-150 ml of water may provide almost all the daily-required esse', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Coconut is one of very versatile and indispensable food item for millions of inhabitants in South and South-East Asia. It is one of the most sought-after ingredients in the kitchen since it employed in almost each and every recipe prepared in these parts of the world. Coconut is a very versatile and indispensable food item for most people under the tropical belt. It is a complete food rich in calories, vitamins, and minerals. A medium-size coconut carrying 400 g edible meat and some 30-150 ml of water may provide almost all the daily-required essential minerals, vitamins, and energy of an average-sized individual. Coconut water is a very refreshing drink to beat tropical summer thirst. The juice is packed with simple sugar, electrolytes, minerals, and bioactive compounds such as cytokinin, and enzymes such as acid phosphatase, catalase, dehydrogenase, peroxidase, polymerases, etc. Altogether, these enzymes aid in digestion and metabolism. It is also a very good source of B-complex vitamins such as folates, riboflavin, niacin, thiamin, and pyridoxine. These vitamins are essential in the sense that body requires them from external sources to replenish. Coconut meat and water contain a very good amount of potassium. 100 g of fresh meat contains 356 mg% or 7.5% of daily required levels of potassium. A full-sized coconut weighs about 1.44 kg (3.2 lb).</span></p>', 'upload/product-image/1781969562.jpg', 1, 1, '2026-06-20 09:32:42', '2026-06-22 09:49:08'),
(34, 5, 12, 2, 2, 'Watermelon Large', NULL, 100, 0, NULL, 'Spanish Rosehip Seed Oil, derived from the seeds of wild rose bushes native to Spain, is a cherished beauty secret treasured for its exceptional qualities. MAYA All Natural Spanish Rosehip Seed Oil is Cold-Pressed, Virgin & Organic, and meticulously processed to maintain its purity and potency. This premium fixed oil is free from water, silicone, gluten, and artificial fragrance. It is also enriched with vitamins, antioxidants,', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Spanish Rosehip Seed Oil, derived from the seeds of wild rose bushes native to Spain, is a cherished beauty secret treasured for its exceptional qualities. MAYA All Natural Spanish Rosehip Seed Oil is Cold-Pressed, Virgin & Organic, and meticulously processed to maintain its purity and potency. This premium fixed oil is free from water, silicone, gluten, and artificial fragrance. It is also enriched with vitamins, antioxidants, and essential fatty acids. Each drop of MAYA Rosehip Seed oil is a signature of authenticity and purity that epitomizes nature’s excellence. Some of the key benefits of MAYA All Natural Spanish Rosehip Seed Oil are: Reduces Acne Spots, Scars, Stretch Marks, and Wrinkles. Balances uneven skin tone. Provides deep hydration to the skin and naturally brightens skin complexion. Helps in the treatment of Melasma and Hyperpigmentation. Works as a natural makeup remover. Protects from sun damage and reduces inflammation. Useful for regenerating and revitalizing skin. It improves skin elasticity and promotes supple, radiant-looking skin.Embrace MAYA All Natural Spanish Rosehip Seed Oil’s lasting benefits as a daily essential for skin and hair that radiates health and vitality.</span></p>', 'upload/product-image/1781969817.jpg', 1, 1, '2026-06-20 09:36:57', '2026-06-20 22:28:59'),
(36, 5, 12, 6, 2, 'Malta', 340, 300, 0, 46, 'Every 1 kg of the product will contain 5pcs-6pcs of Malta.\r\n\r\nMalta, a variety of orange, is a popular citrus fruit cultivated in hot climate. The fruit is rich in mineral salts and other ingredients of nutritive value such as iron, lime, phosphorus, and vital minerals.\r\n\r\nMalta is loaded with vitamin C and vitamin B complex. It is a round-shaped, medium-sized fruit, weighting an average of 145.8 gm.\r\n\r\nIt has a rough-surfaced orange ringed with a segment of around 9.67 centimeters and a sweet-tasting juice content of around 33.7 per cent.', '<p data-reactid=\".1b44e9ae49a.$6010.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Every 1 kg of the product will contain 5pcs-6pcs of Malta.</p><p data-reactid=\".1b44e9ae49a.$6010.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$6010.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Malta, a variety of orange, is a popular citrus fruit cultivated in hot climate. The fruit is rich in mineral salts and other ingredients of nutritive value such as iron, lime, phosphorus, and vital minerals.</p><p data-reactid=\".1b44e9ae49a.$6010.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$6010.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Malta is loaded with vitamin C and vitamin B complex. It is a round-shaped, medium-sized fruit, weighting an average of 145.8 gm.</p><p data-reactid=\".1b44e9ae49a.$6010.1.0.1.0.1.4.$line-5\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$6010.1.0.1.0.1.4.$line-6\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">It has a rough-surfaced orange ringed with a segment of around 9.67 centimeters and a sweet-tasting juice content of around 33.7 per cent.</p><p data-reactid=\".1b44e9ae49a.$6010.1.0.1.0.1.4.$line-7\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$6010.1.0.1.0.1.4.$line-8\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">The fruit is often used to make processed juice, jam, jelly and marmalade</p>', 'upload/product-image/1781970043.jpg', 1, 1, '2026-06-20 09:40:43', '2026-06-22 09:50:10'),
(37, 5, 12, 3, 2, 'Sobuj Angur', 400, 340, 15, 543, '250gm (Box - 60gm)\r\n\r\nCrunchy, sweet and juicy, green seedless grapes satisfy a multitude of cravings, which may be why everyone like them so much. With 104 calories per 1-cup serving, green grapes make a healthy and natural low-calorie snack. The 1-cup serving of green grapes fills you up and satisfies hunger, which helps keep overall calories and ultimately weight under control. Grapes contain a substance called resveratrol, which is a natural compound that protects the fruit from environmental stress, fungal infections and ultraviolet radiation. Resveratrol also w', '<p data-reactid=\".1b44e9ae49a.$10049.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">250gm (Box - 60gm)</p><p data-reactid=\".1b44e9ae49a.$10049.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Crunchy, sweet and juicy, green seedless grapes satisfy a multitude of cravings, which may be why everyone like them so much. With 104 calories per 1-cup serving, green grapes make a healthy and natural low-calorie snack. The 1-cup serving of green grapes fills you up and satisfies hunger, which helps keep overall calories and ultimately weight under control. Grapes contain a substance called resveratrol, which is a natural compound that protects the fruit from environmental stress, fungal infections and ultraviolet radiation. Resveratrol also works to protect human health. As an antioxidant, it may protect your cells from free-radical damage and lower your risk of heart disease by preventing blood clots and reducing inflammation. The resveratrol in green seedless grapes may also prevent the growth of cancer cells. Green seedless grapes can help you meet your vitamins A, C and K needs. One cup of grapes provides 100 international units of vitamin A, 4.8 milligrams of vitamin C and 22 micro grams of vitamin K. Vitamin A helps your body fight off infection by boosting your immune system. Vitamin C is important for healthy gums and muscles and also helps wounds to heal. And finally, vitamin K is essential for blood clotting.</p>', 'upload/product-image/1781970157.jpg', 1, 1, '2026-06-20 09:42:37', '2026-06-22 09:07:53'),
(39, 5, 12, 7, 4, 'Anaros (Pineapple)', 100, 80, 0, 54, 'Product Weight: 750-850 gm\r\n\r\n\r\nPineapples are one of the most popular tropical fruits in the world.Fresh pineapple is low in calories. Nonetheless, it is a storehouse for several unique health promoting compounds, minerals and vitamins that are essential for optimum heae the fruits are up to 12 inches long and weight 1 to 10 pounds or more. Pineapples are delicious when consumed fresh, but they can also be enjoyed as juice, dried, canned, or as an ingre', '<h1 itemprop=\"name\" data-reactid=\".1b44e9ae49a.$6022.1.0.1.0.1.0.0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px 30px 10px 0px; padding: 0px; font-size: 2.2em; overflow-wrap: break-word; color: rgb(0, 0, 0); line-height: 30px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"><p data-reactid=\".1b44e9ae49a.$6022.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\">Product Weight: 750-850 gm</p><p data-reactid=\".1b44e9ae49a.$6022.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\"></p><p data-reactid=\".1b44e9ae49a.$6022.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\">Pineapples are one of the most popular tropical fruits in the world.Fresh pineapple is low in calories. Nonetheless, it is a storehouse for several unique health promoting compounds, minerals and vitamins that are essential for optimum health. Fresh pineapples contain 50 calories per 100 grams, which amounts to only 83 calories per cup (165 grams). They consist of water (86%) and carbs (13%), with almost no protein or fat.The oval to cylindrical-shaped, compound fruit develops from many small fruits fused together. It is both juicy and fleshy with the stem serving as the fibrous core. The tough, waxy rind may be dark green, yellow, orange-yellow or reddish when the fruit is ripe. The flesh ranges from nearly white to yellow. In size the fruits are up to 12 inches long and weight 1 to 10 pounds or more. Pineapples are delicious when consumed fresh, but they can also be enjoyed as juice, dried, canned, or as an ingre</p></h1>', 'upload/product-image/1781970475.jpg', 1, 1, '2026-06-20 09:47:55', '2026-06-22 09:52:08');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `regular_price`, `selling_price`, `discount`, `stock`, `description`, `long_description`, `image`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(41, 7, 13, 2, 2, 'Rupchanda Fish Medium', 200, 162, 10, 34, 'The product quantity is around 4-5 pcs.\r\n\r\nSource: Sea\r\n\r\n\r\nPomfret is one of the most sought-after fish in Bangladesh and Southeast Asia due to its delicate white flesh with a subtle “non-fishy” flavor. One of the tastiest fish due to its distinctly smooth texture, mouth-watering flavor, superb mouthfeel. In Khulna & cox\'s bazar area best quality Rupchanda fish is available.', '<p data-reactid=\".1b44e9ae49a.$23069.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">The product quantity is around 4-5 pcs.</p><p data-reactid=\".1b44e9ae49a.$23069.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Source: Sea</p><p data-reactid=\".1b44e9ae49a.$23069.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$23069.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Pomfret is one of the most sought-after fish in Bangladesh and Southeast Asia due to its delicate white flesh with a subtle “non-fishy” flavor. One of the tastiest fish due to its distinctly smooth texture, mouth-watering flavor, superb mouthfeel. In Khulna & cox\'s bazar area best quality Rupchanda fish is available.The product quantity is around 4-5 pcs.</p><p data-reactid=\".1b44e9ae49a.$23069.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Source: Sea</p><p data-reactid=\".1b44e9ae49a.$23069.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$23069.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Pomfret is one of the most sought-after fish in Bangladesh and Southeast Asia due to its delicate white flesh with a subtle “non-fishy” flavor. One of the tastiest fish due to its distinctly smooth texture, mouth-watering flavor, superb mouthfeel. In Khulna & cox\'s bazar area best quality Rupchanda fish is available.The product quantity is around 4-5 pcs.</p><p data-reactid=\".1b44e9ae49a.$23069.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Source: Sea</p><p data-reactid=\".1b44e9ae49a.$23069.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$23069.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Pomfret is one of the most sought-after fish in Bangladesh and Southeast Asia due to its delicate white flesh with a subtle “non-fishy” flavor. One of the tastiest fish due to its distinctly smooth texture, mouth-watering flavor, superb mouthfeel. In Khulna & cox\'s bazar area best quality Rupchanda fish is available.</p>', 'upload/product-image/1781971520.jpg', 0, 0, '2026-06-20 10:05:20', '2026-06-20 20:38:20'),
(42, 7, 13, 2, 2, 'Deshi Sarputi Fish', 150, 120, 0, 54, 'The product quantity is around 2-4 pcs.\r\n\r\n\r\nSource: RIVER Sarputi is a tropical freshwater fish belonging. This species can be used both as food fish and ornamental fish...In Khulna & Jessore area best quality Sarputi fish is available.', '<p data-reactid=\".1b44e9ae49a.$23071.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">The product quantity is around 2-4 pcs.</p><p data-reactid=\".1b44e9ae49a.$23071.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$23071.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Source: RIVER Sarputi is a tropical freshwater fish belonging. This species can be used both as food fish and ornamental fish...In Khulna & Jessore area best quality Sarputi fish is available.The product quantity is around 2-4 pcs.</p><p data-reactid=\".1b44e9ae49a.$23071.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$23071.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Source: RIVER Sarputi is a tropical freshwater fish belonging. This species can be used both as food fish and ornamental fish...In Khulna & Jessore area best quality Sarputi fish is available.The product quantity is around 2-4 pcs.</p><p data-reactid=\".1b44e9ae49a.$23071.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$23071.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Source: RIVER Sarputi is a tropical freshwater fish belonging. This species can be used both as food fish and ornamental fish...In Khulna & Jessore area best quality Sarputi fish is available.The product quantity is around 2-4 pcs.</p><p data-reactid=\".1b44e9ae49a.$23071.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".1b44e9ae49a.$23071.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Source: RIVER Sarputi is a tropical freshwater fish belonging. This species can be used both as food fish and ornamental fish...In Khulna & Jessore area best quality Sarputi fish is available.</p>', 'upload/product-image/1781971673.jpg', 0, 0, '2026-06-20 10:07:53', '2026-06-20 20:37:29'),
(43, 7, 13, 2, 2, 'Golda Chingri (Shrimp)', 800, 750, 0, 46, 'The product quantity is around 18-22 pcs .\r\n\r\nSource: CULTURED /GHER 16 - 20 pieces Golda Chingri or large prawns are kings in the Prawn family. And they are immensely popular all over the world for their taste. Note: GROSS WEIGHT OF PRODUCT MAY DIFFER FROM THE NET WEIGHT UP TO 40-50%, DUE TO CLEANING.In Khulna & Shatkhira area best quality Golda Chingri is available.', '<p data-reactid=\".1b44e9ae49a.$22318.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">The product quantity is around 18-22 pcs .</p><p data-reactid=\".1b44e9ae49a.$22318.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Source: CULTURED /GHER 16 - 20 pieces Golda Chingri or large prawns are kings in the Prawn family. And they are immensely popular all over the world for their taste. Note: GROSS WEIGHT OF PRODUCT MAY DIFFER FROM THE NET WEIGHT UP TO 40-50%, DUE TO CLEANING.In Khulna & Shatkhira area best quality Golda Chingri is available.The product quantity is around 18-22 pcs .</p><p data-reactid=\".1b44e9ae49a.$22318.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Source: CULTURED /GHER 16 - 20 pieces Golda Chingri or large prawns are kings in the Prawn family. And they are immensely popular all over the world for their taste. Note: GROSS WEIGHT OF PRODUCT MAY DIFFER FROM THE NET WEIGHT UP TO 40-50%, DUE TO CLEANING.In Khulna & Shatkhira area best quality Golda Chingri is available.</p>', 'upload/product-image/1781971759.jpg', 0, 0, '2026-06-20 10:09:19', '2026-06-20 20:37:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_thumbnails`
--

CREATE TABLE `product_thumbnails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_thumbnails`
--

INSERT INTO `product_thumbnails` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(235, 41, 'upload/product-thumbnail-image/35479.jpg', '2026-06-20 10:05:20', '2026-06-20 10:05:20'),
(236, 41, 'upload/product-thumbnail-image/20374.jpg', '2026-06-20 10:05:20', '2026-06-20 10:05:20'),
(237, 41, 'upload/product-thumbnail-image/13436.jpg', '2026-06-20 10:05:20', '2026-06-20 10:05:20'),
(238, 41, 'upload/product-thumbnail-image/47450.jpg', '2026-06-20 10:05:20', '2026-06-20 10:05:20'),
(239, 41, 'upload/product-thumbnail-image/38023.jpg', '2026-06-20 10:05:20', '2026-06-20 10:05:20'),
(240, 42, 'upload/product-thumbnail-image/25878.jpg', '2026-06-20 10:07:53', '2026-06-20 10:07:53'),
(241, 42, 'upload/product-thumbnail-image/21430.jpg', '2026-06-20 10:07:53', '2026-06-20 10:07:53'),
(242, 42, 'upload/product-thumbnail-image/14194.jpg', '2026-06-20 10:07:53', '2026-06-20 10:07:53'),
(243, 42, 'upload/product-thumbnail-image/30615.jpg', '2026-06-20 10:07:53', '2026-06-20 10:07:53'),
(244, 42, 'upload/product-thumbnail-image/24411.jpg', '2026-06-20 10:07:53', '2026-06-20 10:07:53'),
(245, 42, 'upload/product-thumbnail-image/16205.jpg', '2026-06-20 10:07:53', '2026-06-20 10:07:53'),
(246, 42, 'upload/product-thumbnail-image/16446.jpg', '2026-06-20 10:07:53', '2026-06-20 10:07:53'),
(247, 43, 'upload/product-thumbnail-image/29738.jpg', '2026-06-20 10:09:19', '2026-06-20 10:09:19'),
(248, 43, 'upload/product-thumbnail-image/21123.jpg', '2026-06-20 10:09:19', '2026-06-20 10:09:19'),
(249, 43, 'upload/product-thumbnail-image/19927.jpg', '2026-06-20 10:09:19', '2026-06-20 10:09:19'),
(250, 43, 'upload/product-thumbnail-image/21251.jpg', '2026-06-20 10:09:19', '2026-06-20 10:09:19'),
(251, 43, 'upload/product-thumbnail-image/34365.jpg', '2026-06-20 10:09:19', '2026-06-20 10:09:19'),
(252, 43, 'upload/product-thumbnail-image/34868.jpg', '2026-06-20 10:09:19', '2026-06-20 10:09:19'),
(260, 37, 'upload/product-thumbnail-image/38159.jpg', '2026-06-22 01:06:39', '2026-06-22 01:06:39'),
(261, 37, 'upload/product-thumbnail-image/26283.jpg', '2026-06-22 01:06:39', '2026-06-22 01:06:39'),
(262, 37, 'upload/product-thumbnail-image/21973.jpg', '2026-06-22 01:06:39', '2026-06-22 01:06:39'),
(263, 37, 'upload/product-thumbnail-image/37701.jpg', '2026-06-22 01:06:39', '2026-06-22 01:06:39'),
(267, 2, 'upload/product-thumbnail-image/29950.jpg', '2026-06-22 09:24:42', '2026-06-22 09:24:42'),
(268, 2, 'upload/product-thumbnail-image/15552.jpg', '2026-06-22 09:24:42', '2026-06-22 09:24:42'),
(269, 2, 'upload/product-thumbnail-image/29165.jpg', '2026-06-22 09:24:42', '2026-06-22 09:24:42'),
(270, 2, 'upload/product-thumbnail-image/23782.jpg', '2026-06-22 09:24:42', '2026-06-22 09:24:42'),
(271, 3, 'upload/product-thumbnail-image/25773.jpg', '2026-06-22 09:26:44', '2026-06-22 09:26:44'),
(272, 3, 'upload/product-thumbnail-image/30335.jpg', '2026-06-22 09:26:44', '2026-06-22 09:26:44'),
(273, 3, 'upload/product-thumbnail-image/15160.jpg', '2026-06-22 09:26:44', '2026-06-22 09:26:44'),
(274, 3, 'upload/product-thumbnail-image/10890.jpg', '2026-06-22 09:26:44', '2026-06-22 09:26:44'),
(275, 4, 'upload/product-thumbnail-image/47426.jpg', '2026-06-22 09:37:41', '2026-06-22 09:37:41'),
(276, 4, 'upload/product-thumbnail-image/31156.jpg', '2026-06-22 09:37:41', '2026-06-22 09:37:41'),
(277, 4, 'upload/product-thumbnail-image/48073.jpg', '2026-06-22 09:37:41', '2026-06-22 09:37:41'),
(278, 4, 'upload/product-thumbnail-image/28607.jpg', '2026-06-22 09:37:41', '2026-06-22 09:37:41'),
(279, 5, 'upload/product-thumbnail-image/24752.jpg', '2026-06-22 09:37:59', '2026-06-22 09:37:59'),
(280, 5, 'upload/product-thumbnail-image/10150.jpg', '2026-06-22 09:37:59', '2026-06-22 09:37:59'),
(281, 5, 'upload/product-thumbnail-image/10491.jpg', '2026-06-22 09:37:59', '2026-06-22 09:37:59'),
(282, 5, 'upload/product-thumbnail-image/18721.jpg', '2026-06-22 09:37:59', '2026-06-22 09:37:59'),
(283, 6, 'upload/product-thumbnail-image/43871.jpg', '2026-06-22 09:38:21', '2026-06-22 09:38:21'),
(284, 6, 'upload/product-thumbnail-image/18925.jpg', '2026-06-22 09:38:21', '2026-06-22 09:38:21'),
(285, 6, 'upload/product-thumbnail-image/27757.jpg', '2026-06-22 09:38:21', '2026-06-22 09:38:21'),
(286, 6, 'upload/product-thumbnail-image/47400.jpg', '2026-06-22 09:38:21', '2026-06-22 09:38:21'),
(287, 7, 'upload/product-thumbnail-image/24264.jpg', '2026-06-22 09:38:35', '2026-06-22 09:38:35'),
(288, 7, 'upload/product-thumbnail-image/24800.jpg', '2026-06-22 09:38:35', '2026-06-22 09:38:35'),
(289, 7, 'upload/product-thumbnail-image/23537.jpg', '2026-06-22 09:38:35', '2026-06-22 09:38:35'),
(290, 7, 'upload/product-thumbnail-image/15220.jpg', '2026-06-22 09:38:35', '2026-06-22 09:38:35'),
(291, 8, 'upload/product-thumbnail-image/49486.jpg', '2026-06-22 09:38:51', '2026-06-22 09:38:51'),
(292, 8, 'upload/product-thumbnail-image/47149.jpg', '2026-06-22 09:38:51', '2026-06-22 09:38:51'),
(293, 8, 'upload/product-thumbnail-image/35841.jpg', '2026-06-22 09:38:51', '2026-06-22 09:38:51'),
(294, 8, 'upload/product-thumbnail-image/22076.jpg', '2026-06-22 09:38:51', '2026-06-22 09:38:51'),
(295, 9, 'upload/product-thumbnail-image/45781.jpg', '2026-06-22 09:39:32', '2026-06-22 09:39:32'),
(296, 9, 'upload/product-thumbnail-image/42702.jpg', '2026-06-22 09:39:32', '2026-06-22 09:39:32'),
(297, 9, 'upload/product-thumbnail-image/13534.jpg', '2026-06-22 09:39:32', '2026-06-22 09:39:32'),
(298, 9, 'upload/product-thumbnail-image/15692.jpg', '2026-06-22 09:39:32', '2026-06-22 09:39:32'),
(299, 10, 'upload/product-thumbnail-image/13384.jpg', '2026-06-22 09:39:49', '2026-06-22 09:39:49'),
(300, 10, 'upload/product-thumbnail-image/12498.jpg', '2026-06-22 09:39:49', '2026-06-22 09:39:49'),
(301, 10, 'upload/product-thumbnail-image/42899.jpg', '2026-06-22 09:39:49', '2026-06-22 09:39:49'),
(302, 10, 'upload/product-thumbnail-image/27947.jpg', '2026-06-22 09:39:49', '2026-06-22 09:39:49'),
(303, 11, 'upload/product-thumbnail-image/35383.jpg', '2026-06-22 09:40:03', '2026-06-22 09:40:03'),
(304, 11, 'upload/product-thumbnail-image/48736.jpg', '2026-06-22 09:40:03', '2026-06-22 09:40:03'),
(305, 11, 'upload/product-thumbnail-image/23463.jpg', '2026-06-22 09:40:03', '2026-06-22 09:40:03'),
(306, 11, 'upload/product-thumbnail-image/32187.jpg', '2026-06-22 09:40:03', '2026-06-22 09:40:03'),
(307, 12, 'upload/product-thumbnail-image/31550.jpg', '2026-06-22 09:40:22', '2026-06-22 09:40:22'),
(308, 12, 'upload/product-thumbnail-image/29536.jpg', '2026-06-22 09:40:22', '2026-06-22 09:40:22'),
(309, 12, 'upload/product-thumbnail-image/28899.jpg', '2026-06-22 09:40:22', '2026-06-22 09:40:22'),
(310, 12, 'upload/product-thumbnail-image/23564.jpg', '2026-06-22 09:40:22', '2026-06-22 09:40:22'),
(311, 13, 'upload/product-thumbnail-image/14183.jpg', '2026-06-22 09:40:38', '2026-06-22 09:40:38'),
(312, 13, 'upload/product-thumbnail-image/28447.jpg', '2026-06-22 09:40:38', '2026-06-22 09:40:38'),
(313, 13, 'upload/product-thumbnail-image/18780.jpg', '2026-06-22 09:40:38', '2026-06-22 09:40:38'),
(314, 13, 'upload/product-thumbnail-image/48362.jpg', '2026-06-22 09:40:38', '2026-06-22 09:40:38'),
(315, 15, 'upload/product-thumbnail-image/46799.jpg', '2026-06-22 09:41:38', '2026-06-22 09:41:38'),
(316, 15, 'upload/product-thumbnail-image/49600.jpg', '2026-06-22 09:41:38', '2026-06-22 09:41:38'),
(317, 15, 'upload/product-thumbnail-image/26497.jpg', '2026-06-22 09:41:38', '2026-06-22 09:41:38'),
(318, 15, 'upload/product-thumbnail-image/20752.jpg', '2026-06-22 09:41:38', '2026-06-22 09:41:38'),
(319, 17, 'upload/product-thumbnail-image/46308.jpg', '2026-06-22 09:42:11', '2026-06-22 09:42:11'),
(320, 17, 'upload/product-thumbnail-image/32381.jpg', '2026-06-22 09:42:11', '2026-06-22 09:42:11'),
(321, 17, 'upload/product-thumbnail-image/18395.jpg', '2026-06-22 09:42:11', '2026-06-22 09:42:11'),
(322, 17, 'upload/product-thumbnail-image/45695.jpg', '2026-06-22 09:42:11', '2026-06-22 09:42:11'),
(323, 18, 'upload/product-thumbnail-image/19278.jpg', '2026-06-22 09:42:26', '2026-06-22 09:42:26'),
(324, 18, 'upload/product-thumbnail-image/27768.jpg', '2026-06-22 09:42:26', '2026-06-22 09:42:26'),
(325, 18, 'upload/product-thumbnail-image/34875.jpg', '2026-06-22 09:42:26', '2026-06-22 09:42:26'),
(326, 18, 'upload/product-thumbnail-image/22000.jpg', '2026-06-22 09:42:26', '2026-06-22 09:42:26'),
(327, 19, 'upload/product-thumbnail-image/24745.jpg', '2026-06-22 09:42:47', '2026-06-22 09:42:47'),
(328, 19, 'upload/product-thumbnail-image/36105.jpg', '2026-06-22 09:42:47', '2026-06-22 09:42:47'),
(329, 19, 'upload/product-thumbnail-image/20077.jpg', '2026-06-22 09:42:47', '2026-06-22 09:42:47'),
(330, 19, 'upload/product-thumbnail-image/16947.jpg', '2026-06-22 09:42:47', '2026-06-22 09:42:47'),
(331, 20, 'upload/product-thumbnail-image/22256.jpg', '2026-06-22 09:43:03', '2026-06-22 09:43:03'),
(332, 20, 'upload/product-thumbnail-image/23841.jpg', '2026-06-22 09:43:03', '2026-06-22 09:43:03'),
(333, 20, 'upload/product-thumbnail-image/17456.jpg', '2026-06-22 09:43:03', '2026-06-22 09:43:03'),
(334, 20, 'upload/product-thumbnail-image/16782.jpg', '2026-06-22 09:43:03', '2026-06-22 09:43:03'),
(335, 21, 'upload/product-thumbnail-image/39785.jpg', '2026-06-22 09:43:22', '2026-06-22 09:43:22'),
(336, 21, 'upload/product-thumbnail-image/10747.jpg', '2026-06-22 09:43:22', '2026-06-22 09:43:22'),
(337, 21, 'upload/product-thumbnail-image/39076.jpg', '2026-06-22 09:43:22', '2026-06-22 09:43:22'),
(338, 21, 'upload/product-thumbnail-image/38166.jpg', '2026-06-22 09:43:22', '2026-06-22 09:43:22'),
(339, 22, 'upload/product-thumbnail-image/40516.jpg', '2026-06-22 09:45:17', '2026-06-22 09:45:17'),
(340, 22, 'upload/product-thumbnail-image/18977.jpg', '2026-06-22 09:45:17', '2026-06-22 09:45:17'),
(341, 22, 'upload/product-thumbnail-image/29886.jpg', '2026-06-22 09:45:17', '2026-06-22 09:45:17'),
(342, 22, 'upload/product-thumbnail-image/49479.jpg', '2026-06-22 09:45:17', '2026-06-22 09:45:17'),
(343, 23, 'upload/product-thumbnail-image/29470.jpg', '2026-06-22 09:45:55', '2026-06-22 09:45:55'),
(344, 23, 'upload/product-thumbnail-image/32953.jpg', '2026-06-22 09:45:55', '2026-06-22 09:45:55'),
(345, 23, 'upload/product-thumbnail-image/28414.jpg', '2026-06-22 09:45:55', '2026-06-22 09:45:55'),
(346, 23, 'upload/product-thumbnail-image/28218.jpg', '2026-06-22 09:45:55', '2026-06-22 09:45:55'),
(347, 24, 'upload/product-thumbnail-image/11861.jpg', '2026-06-22 09:46:58', '2026-06-22 09:46:58'),
(348, 24, 'upload/product-thumbnail-image/18572.jpg', '2026-06-22 09:46:58', '2026-06-22 09:46:58'),
(349, 24, 'upload/product-thumbnail-image/22836.jpg', '2026-06-22 09:46:58', '2026-06-22 09:46:58'),
(350, 24, 'upload/product-thumbnail-image/35357.jpg', '2026-06-22 09:46:58', '2026-06-22 09:46:58'),
(351, 25, 'upload/product-thumbnail-image/23572.jpg', '2026-06-22 09:47:18', '2026-06-22 09:47:18'),
(352, 25, 'upload/product-thumbnail-image/28097.jpg', '2026-06-22 09:47:18', '2026-06-22 09:47:18'),
(353, 25, 'upload/product-thumbnail-image/41934.jpg', '2026-06-22 09:47:18', '2026-06-22 09:47:18'),
(354, 25, 'upload/product-thumbnail-image/48801.jpg', '2026-06-22 09:47:18', '2026-06-22 09:47:18'),
(355, 30, 'upload/product-thumbnail-image/39150.jpg', '2026-06-22 09:48:32', '2026-06-22 09:48:32'),
(356, 30, 'upload/product-thumbnail-image/43700.jpg', '2026-06-22 09:48:32', '2026-06-22 09:48:32'),
(357, 30, 'upload/product-thumbnail-image/43070.jpg', '2026-06-22 09:48:32', '2026-06-22 09:48:32'),
(358, 30, 'upload/product-thumbnail-image/24877.jpg', '2026-06-22 09:48:32', '2026-06-22 09:48:32'),
(359, 31, 'upload/product-thumbnail-image/14895.jpg', '2026-06-22 09:48:51', '2026-06-22 09:48:51'),
(360, 31, 'upload/product-thumbnail-image/28496.jpg', '2026-06-22 09:48:51', '2026-06-22 09:48:51'),
(361, 31, 'upload/product-thumbnail-image/21442.jpg', '2026-06-22 09:48:51', '2026-06-22 09:48:51'),
(362, 31, 'upload/product-thumbnail-image/11615.jpg', '2026-06-22 09:48:51', '2026-06-22 09:48:51'),
(363, 32, 'upload/product-thumbnail-image/15334.jpg', '2026-06-22 09:49:08', '2026-06-22 09:49:08'),
(364, 32, 'upload/product-thumbnail-image/28521.jpg', '2026-06-22 09:49:08', '2026-06-22 09:49:08'),
(365, 32, 'upload/product-thumbnail-image/23476.jpg', '2026-06-22 09:49:08', '2026-06-22 09:49:08'),
(366, 32, 'upload/product-thumbnail-image/13711.jpg', '2026-06-22 09:49:08', '2026-06-22 09:49:08'),
(367, 34, 'upload/product-thumbnail-image/25744.jpg', '2026-06-22 09:49:48', '2026-06-22 09:49:48'),
(368, 34, 'upload/product-thumbnail-image/37119.jpg', '2026-06-22 09:49:48', '2026-06-22 09:49:48'),
(369, 34, 'upload/product-thumbnail-image/49922.jpg', '2026-06-22 09:49:48', '2026-06-22 09:49:48'),
(370, 34, 'upload/product-thumbnail-image/28790.jpg', '2026-06-22 09:49:48', '2026-06-22 09:49:48'),
(371, 36, 'upload/product-thumbnail-image/35996.jpg', '2026-06-22 09:50:10', '2026-06-22 09:50:10'),
(372, 36, 'upload/product-thumbnail-image/14612.jpg', '2026-06-22 09:50:10', '2026-06-22 09:50:10'),
(373, 36, 'upload/product-thumbnail-image/31428.jpg', '2026-06-22 09:50:10', '2026-06-22 09:50:10'),
(374, 36, 'upload/product-thumbnail-image/47833.jpg', '2026-06-22 09:50:10', '2026-06-22 09:50:10'),
(375, 39, 'upload/product-thumbnail-image/23359.jpg', '2026-06-22 09:52:08', '2026-06-22 09:52:08'),
(376, 39, 'upload/product-thumbnail-image/48858.jpg', '2026-06-22 09:52:08', '2026-06-22 09:52:08'),
(377, 39, 'upload/product-thumbnail-image/47795.jpg', '2026-06-22 09:52:08', '2026-06-22 09:52:08'),
(378, 39, 'upload/product-thumbnail-image/17204.jpg', '2026-06-22 09:52:08', '2026-06-22 09:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `sale_offs`
--

CREATE TABLE `sale_offs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('U7kBurjvSqIWCIRCHKclDuWyeoX6q02Ge0C9SIpd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiZnJ5c0Zpd1FMV2RVY2R1M1M5cTNKVG9uR3RBYlZQS1lyWTZsclNMSCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjtzOjU6InJvdXRlIjtzOjQ6ImhvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjQ6IjAyMzhiYTY0NDk5NDY3M2Q2YWNjYzk1MzBhZjhlZGFiYzJhMmVjNWViMDk3ZGM3ZGRmOTE4MGNhMTlhYmQ3NmEiO3M6NDoiY2FydCI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjI6e3M6MzI6ImNlYjMxNDE1MTFiMmEyZWRiZDQ5OGY4YzBhMWEzZTM0IjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6MTE6e3M6NToicm93SWQiO3M6MzI6ImNlYjMxNDE1MTFiMmEyZWRiZDQ5OGY4YzBhMWEzZTM0IjtzOjI6ImlkIjtpOjI1O3M6MzoicXR5IjtzOjE6IjEiO3M6NDoibmFtZSI7czo5OiJQYWthIFBhcGUiO3M6NToicHJpY2UiO2Q6NDE7czo2OiJ3ZWlnaHQiO2Q6MDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTo0OntzOjU6ImltYWdlIjtzOjM1OiJ1cGxvYWQvcHJvZHVjdC1pbWFnZS8xNzgxOTY0MDE1LmpwZyI7czo4OiJjYXRlZ29yeSI7czoxNzoiRnJ1aXQgJiBOdXQgR2lmdHMiO3M6NToiYnJhbmQiO3M6MTE6IkJhbmdsYWRlc2hpIjtzOjQ6InVuaXQiO3M6NToiUGVhY2giO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NzoidGF4UmF0ZSI7aToyMTtzOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtOO3M6NDY6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBkaXNjb3VudFJhdGUiO2k6MDtzOjg6Imluc3RhbmNlIjtzOjc6ImRlZmF1bHQiO31zOjMyOiI2OTdhYmQ5NjA5MmY0ZGRiNWQyNDdhNDkzM2NhNzBkZCI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjExOntzOjU6InJvd0lkIjtzOjMyOiI2OTdhYmQ5NjA5MmY0ZGRiNWQyNDdhNDkzM2NhNzBkZCI7czoyOiJpZCI7aTozNztzOjM6InF0eSI7czoxOiIxIjtzOjQ6Im5hbWUiO3M6MTE6IlNvYnVqIEFuZ3VyIjtzOjU6InByaWNlIjtkOjM0MDtzOjY6IndlaWdodCI7ZDowO3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoyOntzOjg6IgAqAGl0ZW1zIjthOjQ6e3M6NToiaW1hZ2UiO3M6MzU6InVwbG9hZC9wcm9kdWN0LWltYWdlLzE3ODE5NzAxNTcuanBnIjtzOjg6ImNhdGVnb3J5IjtzOjE3OiJGcnVpdCAmIE51dCBHaWZ0cyI7czo1OiJicmFuZCI7czoyOiJVSyI7czo0OiJ1bml0IjtzOjEzOiJLaWxvZ3JhbSAoa2cpIjt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjc6InRheFJhdGUiO2k6MjE7czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7TjtzOjQ2OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AZGlzY291bnRSYXRlIjtpOjA7czo4OiJpbnN0YW5jZSI7czo3OiJkZWZhdWx0Ijt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fX0=', 1782144993);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Shagor Kola', NULL, NULL, 1, '2026-06-19 06:29:40', '2026-06-19 06:29:40'),
(2, 3, 'Bangladesh Cow Meat', NULL, NULL, 1, '2026-06-19 07:42:40', '2026-06-19 07:42:40'),
(3, 4, 'Sak Sobji', NULL, NULL, 1, '2026-06-19 08:21:03', '2026-06-20 07:04:16'),
(4, 5, 'apple', NULL, NULL, 1, '2026-06-19 09:06:20', '2026-06-19 09:06:20'),
(5, 6, 'Bargar', NULL, NULL, 1, '2026-06-19 09:13:30', '2026-06-19 09:13:30'),
(6, 1, 'Banana Chompa', NULL, NULL, 1, '2026-06-19 09:39:57', '2026-06-19 09:39:57'),
(7, 3, 'Chicken', NULL, NULL, 1, '2026-06-19 10:26:18', '2026-06-19 10:26:18'),
(8, 4, 'Capsicum', NULL, NULL, 1, '2026-06-20 07:07:57', '2026-06-20 07:07:57'),
(9, 4, 'Potato', NULL, NULL, 1, '2026-06-20 07:16:57', '2026-06-20 07:16:57'),
(10, 4, 'Badhakopi', NULL, NULL, 1, '2026-06-20 07:45:59', '2026-06-20 07:45:59'),
(11, 4, 'Vagetables', NULL, 'upload/sub-category-image/1781963540.jpg', 1, '2026-06-20 07:52:20', '2026-06-20 07:52:20'),
(12, 5, 'Fruit', NULL, NULL, 1, '2026-06-20 07:59:11', '2026-06-20 07:59:11'),
(13, 7, 'Fish', NULL, NULL, 1, '2026-06-20 10:01:54', '2026-06-20 10:01:54');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dozen', NULL, NULL, 1, '2026-06-19 06:27:16', '2026-06-19 06:27:29'),
(2, 'Kilogram (kg)', 'KG', NULL, 1, '2026-06-19 07:45:08', '2026-06-19 07:45:08'),
(3, '500 gm', NULL, NULL, 1, '2026-06-19 08:24:40', '2026-06-19 08:24:40'),
(4, 'Peach', NULL, NULL, 1, '2026-06-19 09:15:08', '2026-06-19 09:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$rtiB3m1a0apJsIHE/.6KJuXRReGTRwMsKtxgcwpic4rklseoNNpL.', NULL, NULL, NULL, NULL, NULL, 'upload/user-image/1781868609.jpg', '2026-06-19 05:25:53', '2026-06-19 05:30:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertises`
--
ALTER TABLE `advertises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `couriers_email_unique` (`email`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_mobile_unique` (`mobile`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passkeys`
--
ALTER TABLE `passkeys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `passkeys_credential_id_unique` (`credential_id`),
  ADD KEY `passkeys_user_id_index` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_thumbnails`
--
ALTER TABLE `product_thumbnails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_offs`
--
ALTER TABLE `sale_offs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertises`
--
ALTER TABLE `advertises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `headers`
--
ALTER TABLE `headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passkeys`
--
ALTER TABLE `passkeys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product_thumbnails`
--
ALTER TABLE `product_thumbnails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `sale_offs`
--
ALTER TABLE `sale_offs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `passkeys`
--
ALTER TABLE `passkeys`
  ADD CONSTRAINT `passkeys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
