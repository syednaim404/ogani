-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2026 at 04:51 PM
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
(1, 'upload/advertise-image/1782667210.jpg', 1, '2026-06-28 11:20:10', '2026-06-28 11:20:10'),
(2, 'upload/advertise-image/1782667224.jpg', 1, '2026-06-28 11:20:24', '2026-06-28 11:20:24');

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
(1, 'Vegetable', 'FRUIT FRESH', 'Free Pickup and Delivery Available', NULL, 1, '2026-06-28 21:18:35', '2026-06-28 21:18:35');

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
(1, 1, 'Watermelon Large', 'Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat ut labore et dolore magnam aliquam quaerat ut labore et dolore magnam aliquam quaeratmagnam aliquam quaerat ut labore et dolore magnam.', '<p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus. Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p><h3 style=\"margin: 0px 0px 30px; font-weight: 700; line-height: 30px; font-size: 30px; color: rgb(51, 51, 51); font-family: Cairo, sans-serif;\">The corner window forms a place within a place that is a resting point within the large space.</h3><p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">The study area is located at the back with a view of the vast nature. Together with the other buildings, a congruent story has been managed in which the whole has a reinforcing effect on the components. The use of materials seeks connection to the main house, the adjacent stables</p>', 'upload/blog-image/1782700406.webp', 'All, Trending, Cooking, Healthy Food, Life Style', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, '2026-06-28 12:55:23', '2026-06-28 20:41:21'),
(2, 5, 'Brooke Bond Taaza Black Tea', 'Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads.', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.</span></p><p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus. Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p><h3 style=\"margin: 0px 0px 30px; font-weight: 700; line-height: 30px; font-size: 30px; color: rgb(51, 51, 51); font-family: Cairo, sans-serif;\">The corner window forms a place within a place that is a resting point within the large space.</h3><p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">The study area is located at the back with a view of the vast nature. Together with the other buildings, a congruent story has been managed in which the whole has a reinforcing effect on the components. The use of materials seeks connection to the main house, the adjacent stables</p>', 'upload/blog-image/1782700686.webp', 'All, Trending, Cooking, Healthy Food, Life Style', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, '2026-06-28 12:58:10', '2026-06-28 20:38:06'),
(3, 4, 'Nestle Nescafe Classic Instant Coffee Jar', 'Crunchy, sweet and juicy, green seedless grapes satisfy a multitude of cravings, which may be why everyone like them so much. With 104 calories per 1-cup serving, green grapes make a healthy and', '<h3 style=\"margin: 0px 0px 30px; font-weight: 700; line-height: 30px; font-size: 30px; color: rgb(51, 51, 51); font-family: Cairo, sans-serif;\">The corner window forms a place within a place that is a resting point within the large space.</h3><p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Crunchy, sweet and juicy, green seedless grapes satisfy a multitude of cravings, which may be why everyone like them so much. With 104 calories per 1-cup serving, green grapes make a healthy and natural low-calorie snack. The 1-cup serving of green grapes fills you up and satisfies hunger, which helps keep overall calories and ultimately weight under control. Grapes contain a substance called resveratrol, which is a natural compound that protects the fruit from environmental stress, fungal infections and ultraviolet radiation. Resveratrol also works to protect human health. As an antioxidant, it may protect your cells from free-radical damage and lower your risk of heart disease by preventing blood clots and reducing inflammation. The resveratrol in green seedless grapes may also prevent the growth of cancer cells. Green seedless grapes can help you meet your vitamins A, C and K needs. One cup of grapes provides 100 international units of vitamin A, 4.8 milligrams of vitamin C and 22 micro grams of vitamin K. Vitamin A helps your body fight off infection by boosting your immune system. Vitamin C is important for healthy gums and muscles and also helps wounds to heal. And finally, vitamin K is essential for blood clotting.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Crunchy, sweet and juicy, green seedless grapes satisfy a multitude of cravings, which may be why everyone like them so much. With 104 calories per 1-cup serving, green grapes make a healthy and natural low-calorie snack. The 1-cup serving of green grapes fills you up and satisfies hunger, which helps keep overall calories and ultimately weight under control. Grapes contain a substance called resveratrol, which is a natural compound that protects the fruit from environmental stress, fungal infections and ultraviolet radiation. Resveratrol also works to protect human health. As an antioxidant, it may protect your cells from free-radical damage and lower your risk of heart disease by preventing blood clots and reducing inflammation. The resveratrol in green seedless grapes may also prevent the growth of cancer cells. Green seedless grapes can help you meet your vitamins A, C and K needs. One cup of grapes provides 100 international units of vitamin A, 4.8 milligrams of vitamin C and 22 micro grams of vitamin K. Vitamin A helps your body fight off infection by boosting your immune system. Vitamin C is important for healthy gums and muscles and also helps wounds to heal. And finally, vitamin K is essential for blood clotting.</span></p>', 'upload/blog-image/1782700631.webp', 'All, Trending, Cooking, Healthy Food, Life Style', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, '2026-06-28 13:02:45', '2026-06-28 20:37:11'),
(4, 2, 'Capsicum', 'Capsicum known as a sweet peppers. Sweet peppers are fruit pods on the capsicum plant grown for their subtle hotness yet sweet, delicate peppery flavor they extend to the recipes.hotness yet sweet, delicateextend to the recipes.', '<p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">porttitor lectus nibh. Donec sollicitudin molestie malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus. Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p><h3 style=\"margin: 0px 0px 30px; font-weight: 700; line-height: 30px; font-size: 30px; color: rgb(51, 51, 51); font-family: Cairo, sans-serif;\">The corner window forms a place within a place that is a resting point within the large space.</h3><p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">The study area is located at the back with a view of the vast nature. Together with the other buildings, a congruent story has been managed in which the whole has a reinforcing effect on the components. The use of materials seeks connection to the main house, the adjacent stablesporttitor lectus nibh. Donec sollicitudin molestie malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus. Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p><h3 style=\"margin: 0px 0px 30px; font-weight: 700; line-height: 30px; font-size: 30px; color: rgb(51, 51, 51); font-family: Cairo, sans-serif;\">The corner window forms a place within a place that is a resting point within the large space.</h3><p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">The study area is located at the back with a view of the vast nature. Together with the other buildings, a congruent story has been managed in which the whole has a reinforcing effect on the components. The use of materials seeks connection to the main house, the adjacent stables</p>', 'upload/blog-image/1782674771.png', 'All, Trending, Cooking, Healthy Food, Life Style', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, '2026-06-28 13:06:27', '2026-06-28 13:26:53');

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
(1, 'Uniliver', NULL, 'upload/brand-image/1782668769.webp', 1, '2026-06-28 11:46:10', '2026-06-28 11:46:10'),
(2, 'Nestle', NULL, 'upload/brand-image/1782668834.webp', 1, '2026-06-28 11:47:14', '2026-06-28 11:47:14'),
(3, 'Marico', NULL, 'upload/brand-image/1782668903.webp', 1, '2026-06-28 11:48:23', '2026-06-28 11:48:23'),
(4, 'Reckitt', NULL, 'upload/brand-image/1782672309.webp', 1, '2026-06-28 11:48:53', '2026-06-28 12:45:52'),
(5, 'Coca Cola', NULL, 'upload/brand-image/1782668967.webp', 1, '2026-06-28 11:49:27', '2026-06-28 11:49:27'),
(6, 'Fresh', NULL, 'upload/brand-image/1782668988.webp', 1, '2026-06-28 11:49:48', '2026-06-28 11:49:48'),
(7, 'Bangladesh', NULL, NULL, 1, '2026-06-28 11:51:16', '2026-06-28 11:51:16'),
(8, 'Indian', NULL, NULL, 1, '2026-06-28 11:51:29', '2026-06-28 11:51:29'),
(9, 'Pakistani', NULL, NULL, 1, '2026-06-28 11:51:46', '2026-06-28 11:51:46');

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
('laravel_cache_c525a5357e97fef8d3db25841c86da1a', 'i:1;', 1782716193),
('laravel_cache_c525a5357e97fef8d3db25841c86da1a:timer', 'i:1782716193;', 1782716193);

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
(1, 'Fresh Fruits', NULL, 'upload/category-image/1782664363.webp', 1, '2026-06-28 10:32:43', '2026-06-28 10:32:43'),
(2, 'Vegetables', NULL, 'upload/category-image/1782664423.webp', 1, '2026-06-28 10:33:43', '2026-06-28 10:33:43'),
(3, 'Meat & Fish', NULL, 'upload/category-image/1782664513.webp', 1, '2026-06-28 10:35:13', '2026-06-28 10:35:13'),
(4, 'Cooking', NULL, 'upload/category-image/1782664579.webp', 1, '2026-06-28 10:36:19', '2026-06-28 10:36:19'),
(5, 'Beverages', NULL, 'upload/category-image/1782664619.webp', 1, '2026-06-28 10:36:59', '2026-06-28 10:36:59'),
(6, 'Home & Cleaning', NULL, 'upload/category-image/1782664654.webp', 1, '2026-06-28 10:37:35', '2026-06-28 10:37:35'),
(7, 'Pest Control', NULL, 'upload/category-image/1782664691.webp', 1, '2026-06-28 10:38:11', '2026-06-28 10:38:11'),
(8, 'Fastfood', NULL, NULL, 1, '2026-06-28 10:46:00', '2026-06-28 10:46:00'),
(9, 'Facial product', NULL, NULL, 1, '2026-06-28 11:11:11', '2026-06-28 11:11:11'),
(10, 'Butter & Eggs', NULL, NULL, 1, '2026-06-28 11:11:55', '2026-06-28 11:11:55'),
(11, 'Oatmeal', NULL, NULL, 1, '2026-06-28 11:12:46', '2026-06-28 11:12:46');

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
(1, NULL, '60-49 Road 11378 Farmgate', '+65 11 188 888', 'ogani@gmail.com', '09:00 am - 10:00 pm', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29203.541159195105!2d90.35423477804038!3d23.802853832587232!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c0d33532b3fb%3A0x2b27b0c01cb2bc0d!2sMirpur-10%2C%20Dhaka!5e0!3m2!1sen!2sbd!4v1782674946048!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"strict-origin-when-cross-origin\"></iframe>', 1, '2026-06-28 13:29:29', '2026-06-28 13:29:29');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount_type` enum('fixed','percent') NOT NULL,
  `discount_value` decimal(8,2) NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used_count` int(11) NOT NULL DEFAULT 0,
  `expiry_date` date NOT NULL,
  `minimum_order_amount` decimal(8,2) DEFAULT NULL,
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

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `name`, `email`, `mobile`, `address`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Patho', 'patho@gmail.com', '01839930049', 'Farmgate', 'upload/courier-image/1782716627.webp', 1, '2026-06-29 01:03:47', '2026-06-29 01:03:47'),
(2, 'Sunderbon', 'sunderbon@gmail.com', '01739948849', 'Mirpur-1', 'upload/courier-image/1782716676.webp', 1, '2026-06-29 01:04:36', '2026-06-29 01:04:36'),
(3, 'courierabc', 'courierabc@gmail.com', '01849938829', 'Sahabag', 'upload/courier-image/1782716842.webp', 1, '2026-06-29 01:07:22', '2026-06-29 01:07:22'),
(4, 'abc', 'abc@gmail.com', '01839927762', 'Semoli', 'upload/courier-image/1782716923.webp', 1, '2026-06-29 01:08:44', '2026-06-29 01:08:44');

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
(1, 'Syed Naim', 'naim@gmail.com', '01869960057', '$2y$12$439gL3J6YSQlpPcTEtDJ0.Y7oeHKzDmzhtI4lWQeeGBYe1nCydJK6', 'Mirpur-12', '9-1-2000', NULL, NULL, 'General', 1, '2026-06-28 20:43:54', '2026-06-28 20:45:34'),
(2, 'Hamid', 'hamid@gmail.com', '01739940039', '$2y$12$tCGVyBEjI.rx0JeoZhRpzemSUc9rdEuAgRAlLwedDJBYIS0AgFAzS', NULL, NULL, NULL, NULL, 'General', 1, '2026-06-28 21:41:25', '2026-06-28 21:41:25'),
(3, 'Rohan', 'rohan@gmail.com', '01839930038', '$2y$12$FuDJSCx/VuTL4oY5nWKG3etIm8glS0fjq8C3s0mDHly2L3i1BiXCu', 'Mirpur-10', '9-2-2000', NULL, NULL, 'General', 1, '2026-06-29 00:52:04', '2026-06-29 00:52:44');

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
(1, 'upload/footer-logo/1782668078.png', '60-49 Road 11378 Farmgate', '+65 11 188 888', 'ogani@gmail.com', '09:00 am - 10:00 pm', NULL, 'https://www.facebook.com/', 'https://x.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 1, '2026-06-28 11:34:38', '2026-06-28 11:34:38');

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
(1, 'upload/header-logo/1782667306.png', '+65 11 188 888', 'support 24/7 time', 1, '2026-06-28 11:21:46', '2026-06-28 11:21:46');

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
(111, '2026_06_13_103209_create_coupons_table', 1),
(116, '0001_01_01_000000_create_users_table', 2),
(117, '0001_01_01_000001_create_cache_table', 2),
(118, '0001_01_01_000002_create_jobs_table', 2),
(119, '2026_05_20_130943_add_two_factor_columns_to_users_table', 2),
(120, '2026_05_20_130944_create_passkeys_table', 2),
(121, '2026_05_20_131013_create_personal_access_tokens_table', 2),
(122, '2026_05_20_135306_create_categories_table', 2),
(123, '2026_05_20_143639_create_sub_categories_table', 2),
(124, '2026_05_20_145616_create_brands_table', 2),
(125, '2026_05_20_152629_create_units_table', 2),
(126, '2026_05_20_163000_create_products_table', 2),
(127, '2026_05_20_164309_create_product_thumbnails_table', 2),
(128, '2026_05_21_024703_create_banners_table', 2),
(129, '2026_05_21_041543_create_headers_table', 2),
(130, '2026_05_24_082253_create_orders_table', 2),
(131, '2026_05_24_082319_create_order_details_table', 2),
(132, '2026_05_24_082756_create_customers_table', 2),
(133, '2026_06_02_142608_create_couriers_table', 2),
(134, '2026_06_07_122015_create_footers_table', 2),
(135, '2026_06_08_040353_create_advertises_table', 2),
(136, '2026_06_12_033911_create_sale_offs_table', 2),
(137, '2026_06_15_140132_create_contacts_table', 2),
(138, '2026_06_18_024015_create_blogs_table', 2),
(139, '2026_06_27_060128_create_coupons_table', 2);

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

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `courier_id`, `order_total`, `tax_total`, `shipping_total`, `order_status`, `order_date`, `order_timestamp`, `delivery_address`, `delivery_date`, `delivery_timestamp`, `delivery_status`, `payment_method`, `payment_amount`, `payment_date`, `payment_timestamp`, `payment_status`, `currency`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 80, 12, 100, 'Processing', '2026-06-29', '1782691200', 'Mirpur-10', NULL, NULL, 'Processing', 'online', 0, NULL, NULL, 'Processing', 'BDT', '6a41dbea88be5', NULL, '2026-06-29 01:20:37'),
(2, 3, 0, 320, 48, 100, 'Processing', '2026-06-29', '1782691200', 'Mirpur', NULL, NULL, 'Pending', 'online', 0, NULL, NULL, 'Pending', 'BDT', '6a42168404c5e', NULL, NULL);

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
(1, 1, 19, 'Anaros (Pineapple)', 80, 1, '2026-06-28 20:43:54', '2026-06-28 20:43:54'),
(2, 2, 20, 'Sobuj Angur (Green Grapes)', 240, 1, '2026-06-29 00:53:56', '2026-06-29 00:53:56'),
(3, 2, 19, 'Anaros (Pineapple)', 80, 1, '2026-06-29 00:53:56', '2026-06-29 00:53:56');

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
  `regular_price` float DEFAULT NULL,
  `selling_price` float NOT NULL,
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
(1, 3, 1, 7, 1, 'Broiler Chicken Skin', 299, 180, 0, 200, 'Before processing this product\'s live weight was 1.5-1.55 kg.\r\n\r\n\r\nBroiler chickens are raised primarily for meat rather than to lay eggs. These poultry are often white and are bred to be large and very healthy, often with more breast meat for the consumer market. Broiler chicken breeds grow very fast and offer good value in terms of protein and calories.', '<p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus. Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p><h3 style=\"margin: 0px 0px 30px; font-weight: 700; line-height: 30px; font-size: 30px; color: rgb(51, 51, 51); font-family: Cairo, sans-serif;\">The corner window forms a place within a place that is a resting point within the large space.</h3><p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">The study area is located at the back with a view of the vast nature. Together with the other buildings, a congruent story has been managed in which the whole has a reinforcing effect on the components. The use of materials seeks connection to the main house, the adjacent stables</p>', 'upload/product-image/1782669352.webp', 0, 1, '2026-06-28 11:55:52', '2026-06-28 20:24:09'),
(2, 3, 1, 7, 3, 'Broiler Chicken Drumsticks', 300, 400, 0, 600, 'In reference to poultry, the drumstick is the lower, meaty leg portion of the bird, such as a chicken, turkey or duck, which exists from the knee joint down to almost the foot. The drumstick is different from the drummette, which is the part of the bird\'s wing existing between the shoulder joint and the elbow joint.', '<p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus. Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p><h3 style=\"margin: 0px 0px 30px; font-weight: 700; line-height: 30px; font-size: 30px; color: rgb(51, 51, 51); font-family: Cairo, sans-serif;\">The corner window forms a place within a place that is a resting point within the large space.</h3><p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">The study area is located at the back with a view of the vast nature. Together with the other buildings, a congruent story has been managed in which the whole has a reinforcing effect on the components. The use of materials seeks connection to the main house, the adjacent stables</p><p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\"><br></p><p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\"><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">In reference to poultry, the drumstick is the lower, meaty leg portion of the bird, such as a chicken, turkey or duck, which exists from the knee joint down to almost the foot. The drumstick is different from the drummette, which is the part of the bird\'s wing existing between the shoulder joint and the elbow joint.</span></p>', 'upload/product-image/1782670018.webp', 0, 1, '2026-06-28 12:06:58', '2026-06-28 20:25:25'),
(3, 3, 2, 7, 1, 'Cow Lungs', 350, 299, 0, NULL, 'Our Cow Lung product is sourced from healthy, well-raised cows and is carefully processed to maintain its natural flavor and nutritional value. Known for its high protein content and rich in essential nutrients, cow lung is a versatile ingredient for a variety of culinary uses, from traditional dishes to innovative recipes.', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Our Cow Lung product is sourced from healthy, well-raised cows and is carefully processed to maintain its natural flavor and nutritional value. Known for its high protein content and rich in essential nutrients, cow lung is a versatile ingredient for a variety of culinary uses, from traditional dishes to innovative recipes.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Our Cow Lung product is sourced from healthy, well-raised cows and is carefully processed to maintain its natural flavor and nutritional value. Known for its high protein content and rich in essential nutrients, cow lung is a versatile ingredient for a variety of culinary uses, from traditional dishes to innovative recipes.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Our Cow Lung product is sourced from healthy, well-raised cows and is carefully processed to maintain its natural flavor and nutritional value. Known for its high protein content and rich in essential nutrients, cow lung is a versatile ingredient for a variety of culinary uses, from traditional dishes to innovative recipes.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Our Cow Lung product is sourced from healthy, well-raised cows and is carefully processed to maintain its natural flavor and nutritional value. Known for its high protein content and rich in essential nutrients, cow lung is a versatile ingredient for a variety of culinary uses, from traditional dishes to innovative recipes.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\"></span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Our Cow Lung product is sourced from healthy, well-raised cows and is carefully processed to maintain its natural flavor and nutritional value. Known for its high protein content and rich in essential nutrients, cow lung is a versatile ingredient for a variety of culinary uses, from traditional dishes to innovative recipes.</span></p><hr><p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Our Cow Lung product is sourced from healthy, well-raised cows and is carefully processed to maintain its natural flavor and nutritional value. Known for its high protein content and rich in essential nutrients, cow lung is a versatile ingredient for a variety of culinary uses, from traditional dishes to innovative recipes.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\"></span></p>', 'upload/product-image/1782670176.webp', 0, 1, '2026-06-28 12:09:01', '2026-06-28 20:26:02'),
(4, 3, 2, 8, 1, 'Beef Boneless', 800, 660, 0, 435, 'Fresh, premium-quality boneless beef, carefully trimmed and hygienically processed. Soft texture and rich natural flavor make it ideal for curry, bhuna, steak, kebab, and stir-fry dishes. Conveniently packed in 500 gm for everyday cooking.', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Fresh, premium-quality boneless beef, carefully trimmed and hygienically processed. Soft texture and rich natural flavor make it ideal for curry, bhuna, steak, kebab, and stir-fry dishes. Conveniently packed in 500 gm for everyday cooking.</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Fresh, premium-quality boneless beef, carefully trimmed and hygienically processed. Soft texture and rich natural flavor make it ideal for curry, bhuna, steak, kebab, and stir-fry dishes. Conveniently packed in 500 gm for everyday cooking.</span><span style=\"color: rgb(111, 111, 111); font-family: Cairo, sans-serif; font-size: 18px;\">Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus. Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</span></p><h3 style=\"margin: 0px 0px 30px; font-weight: 700; line-height: 30px; font-size: 30px; color: rgb(51, 51, 51); font-family: Cairo, sans-serif;\">The corner window forms a place within a place that is a resting point within the large space.</h3><p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">The study area is located at the back with a view of the vast nature. Together with the other buildings, a congruent story has been managed in which the whole has a reinforcing effect on the components. The use of materials seeks connection to the main house, the adjacent stables</p>', 'upload/product-image/1782670293.webp', 1, 1, '2026-06-28 12:11:33', '2026-06-28 12:11:33'),
(5, 3, 3, 7, 3, 'Koi Fish Processed', 200, 200, 0, 434, NULL, '<p data-reactid=\".pmz6ylmf80.$22222.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Before processing this product live weight was 1.3 - 1.35 kg and the product quantity around 10-12 pcs.</p><p data-reactid=\".pmz6ylmf80.$22222.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".pmz6ylmf80.$22222.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Source: CULTURED</p><p data-reactid=\".pmz6ylmf80.$22222.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".pmz6ylmf80.$22222.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Anabas cobojius, the Gangetic koi, popularly known as Koi in Bengali is a species of climbing gourami native to Bangladesh and India, where it occurs in many types of standing water bodies. This species reaches a total length of 30 cm (12 in) and is carnivorous, feeding on water invertebrates and their larvae. In Khulna & Jessore areas best quality Koi fish is available.Before processing this product live weight was 1.3 - 1.35 kg and the product quantity around 10-12 pcs.</p><p data-reactid=\".pmz6ylmf80.$22222.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".pmz6ylmf80.$22222.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Source: CULTURED</p><p data-reactid=\".pmz6ylmf80.$22222.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".pmz6ylmf80.$22222.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Anabas cobojius, the Gangetic koi, popularly known as Koi in Bengali is a species of climbing gourami native to Bangladesh and India, where it occurs in many types of standing water bodies. This species reaches a total length of 30 cm (12 in) and is carnivorous, feeding on water invertebrates and their larvae. In Khulna & Jessore areas best quality Koi fish is available.Before processing this product live weight was 1.3 - 1.35 kg and the product quantity around 10-12 pcs.</p><p data-reactid=\".pmz6ylmf80.$22222.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".pmz6ylmf80.$22222.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Source: CULTURED</p><p data-reactid=\".pmz6ylmf80.$22222.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".pmz6ylmf80.$22222.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Anabas cobojius, the Gangetic koi, popularly known as Koi in Bengali is a species of climbing gourami native to Bangladesh and India, where it occurs in many types of standing water bodies. This species reaches a total length of 30 cm (12 in) and is carnivorous, feeding on water invertebrates and their larvae. In Khulna & Jessore areas best quality Koi fish is available.Before processing this product live weight was 1.3 - 1.35 kg and the product quantity around 10-12 pcs.</p><p data-reactid=\".pmz6ylmf80.$22222.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".pmz6ylmf80.$22222.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Source: CULTURED</p><p data-reactid=\".pmz6ylmf80.$22222.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".pmz6ylmf80.$22222.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Anabas cobojius, the Gangetic koi, popularly known as Koi in Bengali is a species of climbing gourami native to Bangladesh and India, where it occurs in many types of standing water bodies. This species reaches a total length of 30 cm (12 in) and is carnivorous, feeding on water invertebrates and their larvae. In Khulna & Jessore areas best quality Koi fish is available.</p>', 'upload/product-image/1782670500.webp', 0, 1, '2026-06-28 12:15:00', '2026-06-28 20:23:24'),
(6, 3, 3, 9, 3, 'Golda Chingri', 400, 400, 0, 355, 'The product quantity is around 18-22 pcs .\r\n\r\nSource: CULTURED /GHER 16 - 20 pieces Golda Chingri or large prawns are kings in the Prawn family. And they are immensely popular all over the world for their taste. Note: GROSS WEIGHT OF PRODUCT MAY DIFFER FROM THE NET WEIGHT UP TO 40-50%, DUE TO CLEANING.In Khulna & Shatkhira area best quality Golda Chingri is available.', '<p data-reactid=\".pmz6ylmf80.$22318.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">The product quantity is around 18-22 pcs .</p><p data-reactid=\".pmz6ylmf80.$22318.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Source: CULTURED /GHER 16 - 20 pieces Golda Chingri or large prawns are kings in the Prawn family. And they are immensely popular all over the world for their taste. Note: GROSS WEIGHT OF PRODUCT MAY DIFFER FROM THE NET WEIGHT UP TO 40-50%, DUE TO CLEANING.In Khulna &amp; Shatkhira area best quality Golda Chingri is available.The product quantity is around 18-22 pcs .</p><p data-reactid=\".pmz6ylmf80.$22318.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Source: CULTURED /GHER 16 - 20 pieces Golda Chingri or large prawns are kings in the Prawn family. And they are immensely popular all over the world for their taste. Note: GROSS WEIGHT OF PRODUCT MAY DIFFER FROM THE NET WEIGHT UP TO 40-50%, DUE TO CLEANING.In Khulna &amp; Shatkhira area best quality Golda Chingri is available.The product quantity is around 18-22 pcs .</p><p data-reactid=\".pmz6ylmf80.$22318.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Source: CULTURED /GHER 16 - 20 pieces Golda Chingri or large prawns are kings in the Prawn family. And they are immensely popular all over the world for their taste. Note: GROSS WEIGHT OF PRODUCT MAY DIFFER FROM THE NET WEIGHT UP TO 40-50%, DUE TO CLEANING.In Khulna &amp; Shatkhira area best quality Golda Chingri is available.The product quantity is around 18-22 pcs .</p><p data-reactid=\".pmz6ylmf80.$22318.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Source: CULTURED /GHER 16 - 20 pieces Golda Chingri or large prawns are kings in the Prawn family. And they are immensely popular all over the world for their taste. Note: GROSS WEIGHT OF PRODUCT MAY DIFFER FROM THE NET WEIGHT UP TO 40-50%, DUE TO CLEANING.In Khulna &amp; Shatkhira area best quality Golda Chingri is available.The product quantity is around 18-22 pcs .</p><p data-reactid=\".pmz6ylmf80.$22318.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Source: CULTURED /GHER 16 - 20 pieces Golda Chingri or large prawns are kings in the Prawn family. And they are immensely popular all over the world for their taste. Note: GROSS WEIGHT OF PRODUCT MAY DIFFER FROM THE NET WEIGHT UP TO 40-50%, DUE TO CLEANING.In Khulna &amp; Shatkhira area best quality Golda Chingri is available.The product quantity is around 18-22 pcs .</p><p data-reactid=\".pmz6ylmf80.$22318.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Source: CULTURED /GHER 16 - 20 pieces Golda Chingri or large prawns are kings in the Prawn family. And they are immensely popular all over the world for their taste. Note: GROSS WEIGHT OF PRODUCT MAY DIFFER FROM THE NET WEIGHT UP TO 40-50%, DUE TO CLEANING.In Khulna &amp; Shatkhira area best quality Golda Chingri is available.</p><p data-reactid=\".pmz6ylmf80.$22318.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"><br></p><p data-reactid=\".pmz6ylmf80.$22318.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">The product quantity is around 18-22 pcs .</p><p data-reactid=\".pmz6ylmf80.$22318.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Source: CULTURED /GHER 16 - 20 pieces Golda Chingri or large prawns are kings in the Prawn family. And they are immensely popular all over the world for their taste. Note: GROSS WEIGHT OF PRODUCT MAY DIFFER FROM THE NET WEIGHT UP TO 40-50%, DUE TO CLEANING.In Khulna &amp; Shatkhira area best quality Golda Chingri is available.</p>', 'upload/product-image/1782670590.webp', 1, 1, '2026-06-28 12:16:30', '2026-06-28 12:16:30'),
(7, 4, 4, 6, 5, 'Teer Fortified Soyabean Oil', NULL, 120, 0, 44, 'The top-graded imported crude oil goes through a world-class refining process to ensure healthy cooking without cutting back on flavor and taste. TEER offers the goodness of vitamins A, E, and K and Triple power of Omega 3,6,9 which makes it the ideal choice for people looking for a healthy lifestyle.', '<p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus. Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p><h3 style=\"margin: 0px 0px 30px; font-weight: 700; line-height: 30px; font-size: 30px; color: rgb(51, 51, 51); font-family: Cairo, sans-serif;\">The corner window forms a place within a place that is a resting point within the large space.</h3><p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">The study area is located at the back with a view of the vast nature. Together with the other buildings, a congruent story has been managed in which the whole has a reinforcing effect on the components. The use of materials seeks connection to the main house, the adjacent stables</p>', 'upload/product-image/1782671772.webp', 1, 1, '2026-06-28 12:24:48', '2026-06-28 12:36:12'),
(8, 4, 4, 6, 5, 'Radhuni Pure Mustard Oil', 330, 320, 0, 532, 'Radhuni Pure Mustard Oil is made from hand-picked mustard seeds, guaranteeing the best quality mustard oil. It is produced in a fully automated line, starting from seed cleaning to bottling and capping. The cold press expelling technology used ensures the retention of natural flavor, pungency and essence in the product. Highly efficient filtering gives the oil an optimum color and zero solid particle content. Radhuni Pure Mustard Oil contains a large amount of mono-unsaturated fatty acid which restricts the build-up of the harmful cholesterol in blood.', '<p data-reactid=\".pmz6ylmf80.$2410.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Radhuni Pure Mustard Oil is made from hand-picked mustard seeds, guaranteeing the best quality mustard oil. It is produced in a fully automated line, starting from seed cleaning to bottling and capping. The cold press expelling technology used ensures the retention of natural flavor, pungency and essence in the product. Highly efficient filtering gives the oil an optimum color and zero solid particle content. Radhuni Pure Mustard Oil contains a large amount of mono-unsaturated fatty acid which restricts the build-up of the harmful cholesterol in blood.</p><p data-reactid=\".pmz6ylmf80.$2410.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".pmz6ylmf80.$2410.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Available In</p><p data-reactid=\".pmz6ylmf80.$2410.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">80ml, 250 ml, 500 ml & 1000 ml (Pet Bottle)</p><p data-reactid=\".pmz6ylmf80.$2410.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".pmz6ylmf80.$2410.1.0.1.0.1.4.$line-5\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Ingredients:</p><p data-reactid=\".pmz6ylmf80.$2410.1.0.1.0.1.4.$line-6\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Red & White Mustard Seeds</p><p data-reactid=\".pmz6ylmf80.$2410.1.0.1.0.1.4.$line-7\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".pmz6ylmf80.$2410.1.0.1.0.1.4.$line-8\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Brand: Radhuni</p><p data-reactid=\".pmz6ylmf80.$2410.1.0.1.0.1.4.$line-9\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Pack Size: 1 ltr</p><p data-reactid=\".pmz6ylmf80.$2410.1.0.1.0.1.4.$line-9\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif;\">Radhuni Pure Mustard Oil is made from hand-picked mustard seeds, guaranteeing the best quality mustard oil. It is produced in a fully automated line, starting from seed cleaning to bottling and capping. The cold press expelling technology used ensures the retention of natural flavor, pungency and essence in the product. Highly efficient filtering gives the oil an optimum color and zero solid particle content. Radhuni Pure Mustard Oil contains a large amount of mono-unsaturated fatty acid which restricts the build-up of the harmful cholesterol in blood.Radhuni Pure Mustard Oil is made from hand-picked mustard seeds, guaranteeing the best quality mustard oil. It is produced in a fully automated line, starting from seed cleaning to bottling and capping. The cold press expelling technology used ensures the retention of natural flavor, pungency and essence in the product. Highly efficient filtering gives the oil an optimum color and zero solid particle content. Radhuni Pure Mustard Oil contains a large amount of mono-unsaturated fatty acid which restricts the build-up of the harmful cholesterol in blood.Radhuni Pure Mustard Oil is made from hand-picked mustard seeds, guaranteeing the best quality mustard oil. It is produced in a fully automated line, starting from seed cleaning to bottling and capping. The cold press expelling technology used ensures the retention of natural flavor, pungency and essence in the product. Highly efficient filtering gives the oil an optimum color and zero solid particle content. Radhuni Pure Mustard Oil contains a large amount of mono-unsaturated fatty acid which restricts the build-up of the harmful cholesterol in blood.</p>', 'upload/product-image/1782671377.webp', 0, 1, '2026-06-28 12:29:37', '2026-06-28 20:29:40'),
(9, 4, 5, 7, 1, 'Athash Rice', 120, 120, 0, 200, 'Athash Rice is a traditional Bold, medium-to-coarse grains rice variety, widely consumed in Bangladesh for its affordability, filling nature, and wholesome taste. The grains are slightly bold in size, cooking into soft, tender rice with a light aroma. Known as a staple for everyday meals, Athash Rice is valued for its versatility and suitability in large-scale cooking.', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Athash Rice is a traditional Bold, medium-to-coarse grains rice variety, widely consumed in Bangladesh for its affordability, filling nature, and wholesome taste. The grains are slightly bold in size, cooking into soft, tender rice with a light aroma. Known as a staple for everyday meals, Athash Rice is valued for its versatility and suitability in large-scale cooking.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Athash Rice is a traditional Bold, medium-to-coarse grains rice variety, widely consumed in Bangladesh for its affordability, filling nature, and wholesome taste. The grains are slightly bold in size, cooking into soft, tender rice with a light aroma. Known as a staple for everyday meals, Athash Rice is valued for its versatility and suitability in large-scale cooking.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Athash Rice is a traditional Bold, medium-to-coarse grains rice variety, widely consumed in Bangladesh for its affordability, filling nature, and wholesome taste. The grains are slightly bold in size, cooking into soft, tender rice with a light aroma. Known as a staple for everyday meals, Athash Rice is valued for its versatility and suitability in large-scale cooking.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Athash Rice is a traditional Bold, medium-to-coarse grains rice variety, widely consumed in Bangladesh for its affordability, filling nature, and wholesome taste. The grains are slightly bold in size, cooking into soft, tender rice with a light aroma. Known as a staple for everyday meals, Athash Rice is valued for its versatility and suitability in large-scale cooking.</span></p>', 'upload/product-image/1782671714.webp', 0, 1, '2026-06-28 12:34:37', '2026-06-28 20:24:38'),
(10, 4, 6, 6, 4, 'Radhuni Chilli', 75, 75, 0, 424, 'Radhuni powdered Chilli is vivid in color, precious in flavor. Best variety of red chilli provides more hotness. Capsaicin, the main flavoring compound for hotness and Capsanthin, the main coloring compound is blended in proper proportion to maintain the real taste of chili.', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Radhuni powdered Chilli is vivid in color, precious in flavor. Best variety of red chilli provides more hotness. Capsaicin, the main flavoring compound for hotness and Capsanthin, the main coloring compound is blended in proper proportion to maintain the real taste of chili.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Radhuni powdered Chilli is vivid in color, precious in flavor. Best variety of red chilli provides more hotness. Capsaicin, the main flavoring compound for hotness and Capsanthin, the main coloring compound is blended in proper proportion to maintain the real taste of chili.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Radhuni powdered Chilli is vivid in color, precious in flavor. Best variety of red chilli provides more hotness. Capsaicin, the main flavoring compound for hotness and Capsanthin, the main coloring compound is blended in proper proportion to maintain the real taste of chili.</span></p>', 'upload/product-image/1782671993.webp', 0, 1, '2026-06-28 12:39:53', '2026-06-28 20:24:01'),
(11, 4, 6, 6, 4, 'Radhuni Turmeric', 140, 140, 0, 53, 'Radhuni Turmeric Powder is a premium-quality spice, made from finely selected turmeric roots that are ground to perfection. Known for its rich color, distinctive aroma, and numerous health benefits, this turmeric powder is a must-have for enhancing the flavor and appearance of your favorite dishes.\r\n\r\n\r\nCooking: Add to curries, lentils, and vegetables for vibrant color and flavor.\r\n\r\nMarination: Use in meat or fish marinades to enhance taste and aroma.\r\n\r\nBeverages: Make turmeric tea or golden milk for a health boost.\r\n\r\nHealth Remedies: Mix with honey or milk for its natural healing properties.', '<p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Radhuni Turmeric Powder is a premium-quality spice, made from finely selected turmeric roots that are ground to perfection. Known for its rich color, distinctive aroma, and numerous health benefits, this turmeric powder is a must-have for enhancing the flavor and appearance of your favorite dishes.</p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Cooking: Add to curries, lentils, and vegetables for vibrant color and flavor.</p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Marination: Use in meat or fish marinades to enhance taste and aroma.</p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Beverages: Make turmeric tea or golden milk for a health boost.</p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-5\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Health Remedies: Mix with honey or milk for its natural healing properties.Radhuni Turmeric Powder is a premium-quality spice, made from finely selected turmeric roots that are ground to perfection. Known for its rich color, distinctive aroma, and numerous health benefits, this turmeric powder is a must-have for enhancing the flavor and appearance of your favorite dishes.</p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Cooking: Add to curries, lentils, and vegetables for vibrant color and flavor.</p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Marination: Use in meat or fish marinades to enhance taste and aroma.</p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Beverages: Make turmeric tea or golden milk for a health boost.</p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-5\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Health Remedies: Mix with honey or milk for its natural healing properties.Radhuni Turmeric Powder is a premium-quality spice, made from finely selected turmeric roots that are ground to perfection. Known for its rich color, distinctive aroma, and numerous health benefits, this turmeric powder is a must-have for enhancing the flavor and appearance of your favorite dishes.</p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Cooking: Add to curries, lentils, and vegetables for vibrant color and fRadhuni Turmeric Powder is a premium-quality spice, made from finely selected turmeric roots that are ground to perfection. Known for its rich color, distinctive aroma, and numerous health benefits, this turmeric powder is a must-have for enhancing the flavor and appearance of your favorite dishes.</p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Cooking: Add to curries, lentils, and vegetables for vibrant color and flavor.</p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Marination: Use in meat or fish marinades to enhance taste and aroma.</p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Beverages: Make turmeric tea or golden milk for a health boost.</p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Health Remedies: Mix with honey or milk for its natural healing properties.lavor.</p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Marination: Use in meat or fish marinades to enhance taste and aroma.</p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Beverages: Make turmeric tea or golden milk for a health boost.</p><p data-reactid=\".pmz6ylmf80.$4056.1.0.1.0.1.4.$line-5\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Health Remedies: Mix with honey or milk for its natural healing properties.</p>', 'upload/product-image/1782672129.webp', 1, 1, '2026-06-28 12:42:09', '2026-06-28 12:42:09'),
(12, 4, 6, 3, 4, 'Barilla Pasta Sauce Jar Napoletana', 600, 540, 10, 678, 'Barilla NAPOLETANA sauce combines onion, garlic and Mediterranean herbs with ripe Italian tomatoes. These tasty ingredients are cooked slowly to create a delicious and thick sauce that hugs your favorite Barilla pasta perfectly.\r\n\r\n\r\n• TRUSTED: N°1 IN ITALY with over 140 years of craftsmanship, making high quality pasta that COOKS PERFECTLY EVERY TIME.', '<p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus. Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p><h3 style=\"margin: 0px 0px 30px; font-weight: 700; line-height: 30px; font-size: 30px; color: rgb(51, 51, 51); font-family: Cairo, sans-serif;\">The corner window forms a place within a place that is a resting point within the large space.</h3><p style=\"margin: 0px 0px 15px; font-size: 18px; font-family: Cairo, sans-serif; color: rgb(111, 111, 111); line-height: 30px;\">The study area is located at the back with a view of the vast nature. Together with the other buildings, a congruent story has been managed in which the whole has a reinforcing effect on the components. The use of materials seeks connection to the main house, the adjacent stables</p>', 'upload/product-image/1782672568.webp', 1, 1, '2026-06-28 12:49:28', '2026-06-28 12:49:28');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `regular_price`, `selling_price`, `discount`, `stock`, `description`, `long_description`, `image`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(13, 2, 7, 7, 1, 'Potato Regular', 30, 26, 0, 222, 'Buy regular potato from us which provides you with dietary fiber, potassium, vitamins, etc. Regular potato provides 9-10 percent of your daily need. Regular potatoes offer more of this nutrient which helps control your blood pressure. Make a good curry with regular potato. You can make French fries and you can enjoy with your family members.', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Buy regular potato from us which provides you with dietary fiber, potassium, vitamins, etc. Regular potato provides 9-10 percent of your daily need. Regular potatoes offer more of this nutrient which helps control your blood pressure. Make a good curry with regular potato. You can make French fries and you can enjoy with your family members.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Buy regular potato from us which provides you with dietary fiber, potassium, vitamins, etc. Regular potato provides 9-10 percent of your daily need. Regular potatoes offer more of this nutrient which helps control your blood pressure. Make a good curry with regular potato. You can make French fries and you can enjoy with your family members.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Buy regular potato from us which provides you with dietary fiber, potassium, vitamins, etc. Regular potato provides 9-10 percent of your daily need. Regular potatoes offer more of this nutrient which helps control your blood pressure. Make a good curry with regular potato. You can make French fries and you can enjoy with your family members.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Buy regular potato from us which provides you with dietary fiber, potassium, vitamins, etc. Regular potato provides 9-10 percent of your daily need. Regular potatoes offer more of this nutrient which helps control your blood pressure. Make a good curry with regular potato. You can make French fries and you can enjoy with your family members.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Buy regular potato from us which provides you with dietary fiber, potassium, vitamins, etc. Regular potato provides 9-10 percent of your daily need. Regular potatoes offer more of this nutrient which helps control your blood pressure. Make a good curry with regular potato. You can make French fries and you can enjoy with your family members.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\"></span><span style=\"color: rgb(51, 51, 51); font-family: \"Segoe UI\", Helvetica, \"Droid Sans\", Arial, \"lucida grande\", tahoma, verdana, arial, sans-serif; font-size: 14px;\">Buy regular potato from us which provides you with dietary fiber, potassium, vitamins, etc. Regular potato provides 9-10 percent of your daily need. Regular potatoes offer more of this nutrient which helps control your blood pressure. Make a good curry with regular potato. You can make French fries and you can enjoy with your family members.</span></p>', 'upload/product-image/1782699123.webp', 0, 1, '2026-06-28 20:12:03', '2026-06-28 20:23:02'),
(14, 2, 7, 7, 1, 'Red Tomato', 100, 80, 20, 323, 'Every 500 gm of the product will contain 7-10 pcs of Tomato.\r\n\r\n\r\nThe tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.', '<p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Every 500 gm of the product will contain 7-10 pcs of Tomato.</p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.Every 500 gm of the product will contain 7-10 pcs of Tomato.</p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.Every 500 gm of the product will contain 7-10 pcs of Tomato.</p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.Every 500 gm of the product will contain 7-10 pcs of Tomato.</p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.Every 500 gm of the product will contain 7-10 pcs of Tomato.</p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is Every 500 gm of the product will contain 7-10 pcs of Tomato.</p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.onsidered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.Every 500 gEvery 500 gm of the product will contain 7-10 pcs of Tomato.</p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.m of the product will contain 7-10 pcs of Tomato.Every 500 gm of the product will contain 7-10 pcs of Tomato.</p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.</p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.Every 500 gm of the product will contain 7-10 pcs of Tomato.</p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.Every 500 gm of the product will contain 7-10 pcs of Tomato.</p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$6302.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.</p>', 'upload/product-image/1782699242.webp', 1, 1, '2026-06-28 20:14:02', '2026-06-28 20:14:02'),
(15, 2, 7, 7, 4, 'Coriander Leaves', 25, 20, 0, 123, 'Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\"></span></p>', 'upload/product-image/1782699328.webp', 1, 1, '2026-06-28 20:15:28', '2026-06-28 20:15:28'),
(16, 2, 7, 7, 1, 'Deshi Shosha (Local Cucumber)', 100, 90, 10, 123, 'Every 500 gm of the product will contain 3-5 pcs of Shosha (Local Cucumber).\r\n\r\n\r\nLocally sourced.Few foods are as cool as a cucumber.While most people think of cucumbers as vegetables, they are actually a fruit.Cucumbers are naturally low in calories, carbohydrates, sodium, fat and cholesterol & hydrating properties.', '<p data-reactid=\".p4yl78x3vk.$8223.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Every 500 gm of the product will contain 3-5 pcs of Shosha (Local Cucumber).</p><p data-reactid=\".p4yl78x3vk.$8223.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$8223.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Locally sourced.Few foods are as cool as a cucumber.While most people think of cucumbers as vegetables, they are actually a fruit.Cucumbers are naturally low in calories, carbohydrates, sodium, fat and cholesterol &amp; hydrating properties.Every 500 gm of the product will contain 3-5 pcs of Shosha (Local Cucumber).</p><p data-reactid=\".p4yl78x3vk.$8223.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$8223.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Locally sourced.Few foods are as cool as a cucumber.While most people think of cucumbers as vegetables, they are actually a fruit.Cucumbers are naturally low in calories, carbohydrates, sodium, fat and cholesterol &amp; hydrating properties.Every 500 gm of the product will contain 3-5 pcs of Shosha (Local Cucumber).</p><p data-reactid=\".p4yl78x3vk.$8223.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$8223.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Locally sourced.Few foods are as cool as a cucumber.While most people think of cucumbers as vegetables, they are actually a fruit.Cucumbers are naturally low in calories, carbohydrates, sodium, fat and cholesterol &amp; hydrating properties.Every 500 gm of the product will contain 3-5 pcs of Shosha (Local Cucumber).</p><p data-reactid=\".p4yl78x3vk.$8223.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$8223.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Locally sourced.Few foods are as cool as a cucumber.While most people think of cucumbers as vegetables, they are actually a fruit.Cucumbers are naturally low in calories, carbohydrates, sodium, fat and cholesterol &amp; hydrating properties.</p>', 'upload/product-image/1782699435.webp', 1, 1, '2026-06-28 20:17:15', '2026-06-28 20:17:15'),
(17, 1, 8, 7, 6, 'Banana Chompa', 120, 96, 20, 1234, NULL, '<p data-reactid=\".p4yl78x3vk.$36114.1.0.1.0.1.4.$line-0\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Weight: 250-290gm (Per Pcs 65-75gm)</p><p data-reactid=\".p4yl78x3vk.$36114.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$36114.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Height: 3 inches - 3.5 InchesWeight: 250-290gm (Per Pcs 65-75gm)</p><p data-reactid=\".p4yl78x3vk.$36114.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$36114.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Height: 3 inches - 3.5 Inches</p><p data-reactid=\".p4yl78x3vk.$36114.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Width: 1.4 to 1.6 inches</p><p data-reactid=\".p4yl78x3vk.$36114.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Banana Chompa (kola) is the most popular fresh fruit in the world. It has lots of variety. Banana Chompa is one of them. Bananas are a great super food that provides energy, makes us feel full, and gives our body essential nutrients and a high amount of fiber. It is a high-calorie tropical fruit. As 100 grams of banana flesh carries 90 calories. Besides, it contains good health-benefiting fiber, anti-oxidants, minerals, and vitamins. Bananas could help you to feel happier as they contain tryptophan, a type of protein that the body converts into serotonin, known to promote relaxation and improve mood.</p><p data-reactid=\".p4yl78x3vk.$36114.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"><br></p><p data-reactid=\".p4yl78x3vk.$36114.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Banana Chompa (kola) is the most popular fresh fruit in the world. It has lots of variety. Banana Chompa is one of them. Bananas are a great super food that provides energy, makes us feel full, and gives our body essential nutrients and a high amount of fiber. It is a high-calorie tropical fruit. As 100 grams of banana flesh carries 90 calories. Besides, it contains good health-benefiting fiber, anti-oxidants, minerals, and vitamins. Bananas could help you to feel happier as they contain tryptophan, a type of protein that the body converts into serotonin, known to promote relaxation and improve mood.</p><p data-reactid=\".p4yl78x3vk.$36114.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Banana Chompa (kola) is the most popular fresh fruit in the world. It has lots of variety. Banana Chompa is one of them. Bananas are a great super food that provides energy, makes us feel full, and gives our body essential nutrients and a high amount of fiber. It is a high-calorie tropical fruit. As 100 grams of banana flesh carries 90 calories. Besides, it contains good health-benefiting fiber, anti-oxidants, minerals, and vitamins. Bananas could help you to feel happier as they contain tryptophan, a type of protein that the body converts into serotonin, known to promote relaxation and improve mood.Weight: 250-290gm (Per Pcs 65-75gm)</p><p data-reactid=\".p4yl78x3vk.$36114.1.0.1.0.1.4.$line-1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\"></p><p data-reactid=\".p4yl78x3vk.$36114.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Height: 3 inches - 3.5 Inches</p><p data-reactid=\".p4yl78x3vk.$36114.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Width: 1.4 to 1.6 inches</p><p data-reactid=\".p4yl78x3vk.$36114.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Banana Chompa (kola) is the most popular fresh fruit in the world. It has lots of variety. Banana Chompa is one of them. Bananas are a great super food that provides energy, makes us feel full, and gives our body essential nutrients and a high amount of fiber. It is a high-calorie tropical fruit. As 100 grams of banana flesh carries 90 calories. Besides, it contains good health-benefiting fiber, anti-oxidants, minerals, and vitamins. Bananas could help you to feel happier as they contain tryptophan, a type of protein that the body converts into serotonin, known to promote relaxation and improve mood.</p>', 'upload/product-image/1782699716.webp', 1, 1, '2026-06-28 20:21:56', '2026-06-28 20:21:56'),
(18, 1, 8, 7, 2, 'Paka Pape', 200, 140, 30, 123, 'One medium papaya has approximately:\r\n\r\n\r\n120 calories, 30 grams of carbohydrate – including 5 grams of fiber and 18 grams of sugar, 2 grams of protein\r\n\r\nPapayas are also a good source of: folate, vitamin A, magnesium, copper, pantothenic, acid, fiber.\r\n\r\n\r\nThey also have B vitamins, alpha and beta-carotene, lutein and zeaxanthin, vitamin E, calcium, potassium, vitamin K, and lycopene, the powerful antioxidant most commonly associated with tomatoes.\r\n\r\n\r\nNutritional facts/Ingredients :The nutrients found in papaya are thought to have a range of health benefits. They may help protect against a number of health conditions such as Age-related macular degeneration, Asthma prevention, Cancer, Bone health, Diabetes, Digestion, Heart disease, Inflammation, Skin and healing, Hair health.', '<div class=\"lightboxContent\" data-reactid=\".p4yl78x3vk.$6965.1.0.1\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 20px; width: 964.8px; color: rgb(97, 94, 88); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 12px;\"><article class=\"productDetails\" itemscope=\"\" itemtype=\"http://schema.org/Product\" data-reactid=\".p4yl78x3vk.$6965.1.0.1.0\" style=\"-webkit-tap-highlight-color: transparent; width: 924.8px;\"><p data-reactid=\".p4yl78x3vk.$6965.1.0.1.0.1.4.$line-2\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\">One medium papaya has approximately:</p><p data-reactid=\".p4yl78x3vk.$6965.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\"></p><p data-reactid=\".p4yl78x3vk.$6965.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\">120 calories, 30 grams of carbohydrate – including 5 grams of fiber and 18 grams of sugar, 2 grams of protein</p><p data-reactid=\".p4yl78x3vk.$6965.1.0.1.0.1.4.$line-5\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\">Papayas are also a good source of: folate, vitamin A, magnesium, copper, pantothenic, acid, fiber.</p><p data-reactid=\".p4yl78x3vk.$6965.1.0.1.0.1.4.$line-6\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\"></p><p data-reactid=\".p4yl78x3vk.$6965.1.0.1.0.1.4.$line-7\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\">They also have B vitamins, alpha and beta-carotene, lutein and zeaxanthin, vitamin E, calcium, potassium, vitamin K, and lycopene, the powerful antioxidant most commonly associated with tomatoes.</p><p data-reactid=\".p4yl78x3vk.$6965.1.0.1.0.1.4.$line-8\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\"></p><p data-reactid=\".p4yl78x3vk.$6965.1.0.1.0.1.4.$line-9\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\">Nutritional facts/Ingredients :The nutrients found in papaya are thought to have a range of health benefits. They may help protect against a number of health conditions such as Age-related macular degeneration, Asthma prevention, Cancer, Bone health, Diabetes, Digestion, Heart disease, Inflammation, Skin and healing, Hair health.One medium papaya has approximately:</p><p data-reactid=\".p4yl78x3vk.$6965.1.0.1.0.1.4.$line-3\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\"></p><p data-reactid=\".p4yl78x3vk.$6965.1.0.1.0.1.4.$line-4\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\">120 calories, 30 grams of carbohydrate – including 5 grams of fiber and 18 grams of sugar, 2 grams of protein</p><p data-reactid=\".p4yl78x3vk.$6965.1.0.1.0.1.4.$line-5\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\">Papayas are also a good source of: folate, vitamin A, magnesium, copper, pantothenic, acid, fiber.</p><p data-reactid=\".p4yl78x3vk.$6965.1.0.1.0.1.4.$line-6\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\"></p><p data-reactid=\".p4yl78x3vk.$6965.1.0.1.0.1.4.$line-7\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\">They also have B vitamins, alpha and beta-carotene, lutein and zeaxanthin, vitamin E, calcium, potassium, vitamin K, and lycopene, the powerful antioxidant most commonly associated with tomatoes.</p><p data-reactid=\".p4yl78x3vk.$6965.1.0.1.0.1.4.$line-8\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\"></p><p data-reactid=\".p4yl78x3vk.$6965.1.0.1.0.1.4.$line-9\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px;\">Nutritional facts/Ingredients :The nutrients found in papaya are thought to have a range of health benefits. They may help protect against a number of health conditions such as Age-related macular degeneration, Asthma prevention, Cancer, Bone health, Diabetes, Digestion, Heart disease, Inflammation, Skin and healing, Hair health.</p></article></div>', 'upload/product-image/1782700072.webp', 1, 1, '2026-06-28 20:27:52', '2026-06-28 20:27:52'),
(19, 1, 8, 7, 2, 'Anaros (Pineapple)', 100, 80, 20, 123, 'Pineapples are one of the most popular tropical fruits in the world.Fresh pineapple is low in calories. Nonetheless, it is a storehouse for several unique health promoting compounds, minerals and vitamins that are essential for optimum health. Fresh pineapples contain 50 calories per 100 grams, which amounts to only 83 calories per cup (165 grams). They consist of water (86%) and carbs (13%), with almost no protein or fat.The oval to cylindrical-shaped, compound fruit develops from many small fruits fused together. It is both juicy and fleshy with the stem serving as the fibrous core. The tough, waxy rind may be dark green, yellow, orange-yellow or reddish when the fruit is ripe. The flesh ranges from nearly white to yellow. In size the fruits are up to 12 inches long and weight 1 to 10 pounds or more. Pineapples are delicious when consumed fresh, but they can also be enjoyed as juice, dried, canned, or as an ingredient in various recipes.', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Pineapples are one of the most popular tropical fruits in the world.Fresh pineapple is low in calories. Nonetheless, it is a storehouse for several unique health promoting compounds, minerals and vitamins that are essential for optimum health. Fresh pineapples contain 50 calories per 100 grams, which amounts to only 83 calories per cup (165 grams). They consist of water (86%) and carbs (13%), with almost no protein or fat.The oval to cylindrical-shaped, compound fruit develops from many small fruits fused together. It is both juicy and fleshy with the stem serving as the fibrous core. The tough, waxy rind may be dark green, yellow, orange-yellow or reddish when the fruit is ripe. The flesh ranges from nearly white to yellow. In size the fruits are up to 12 inches long and weight 1 to 10 pounds or more. Pineapples are delicious when consumed fresh, but they can also be enjoyed as juice, dried, canned, or as an ingredient in various recipes.</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Pineapples are one of the most popular tropical fruits in the world.Fresh pineapple is low in calories. Nonetheless, it is a storehouse for several unique health promoting compounds, minerals and vitamins that are essential for optimum health. Fresh pineapples contain 50 calories per 100 grams, which amounts to only 83 calories per cup (165 grams). They consist of water (86%) and carbs (13%), with almost no protein or fat.The oval to cylindrical-shaped, compound fruit develops from many small fruits fused together. It is both juicy and fleshy with the stem serving as the fibrous core. The tough, waxy rind may be dark green, yellow, orange-yellow or reddish when the fruit is ripe. The flesh ranges from nearly white to yellow. In size the fruits are up to 12 inches long and weight 1 to 10 pounds or more. Pineapples are delicious when consumed fresh, but they can also be enjoyed as juice, dried, canned, or as an ingredient in various recipes.</span></p>', 'upload/product-image/1782700156.webp', 1, 1, '2026-06-28 20:29:16', '2026-06-28 20:29:16'),
(20, 1, 8, 9, 3, 'Sobuj Angur (Green Grapes)', 300, 240, 20, 123, 'Crunchy, sweet and juicy, green seedless grapes satisfy a multitude of cravings, which may be why everyone like them so much. With 104 calories per 1-cup serving, green grapes make a healthy and natural low-calorie snack. The 1-cup serving of green grapes fills you up and satisfies hunger, which helps keep overall calories and ultimately weight under control. Grapes contain a substance called resveratrol, which is a natural compound that protects the fruit from environmental stress, fungal infections and ultraviolet radiation. Resveratrol also works to protect human health. As an antioxidant, it may protect your cells from free-radical damage and lower your risk of heart disease by preventing blood clots and reducing inflammation. The resveratrol in green seedless grapes may also prevent the growth of cancer cells. Green seedless grapes can help you meet your vitamins A, C and K needs. One cup of grapes provides 100 international units of vitamin A, 4.8 milligrams of vitamin C and 22 micro grams of vitamin K. Vitamin A helps your body fight off infection by boosting your immune system. Vitamin C is important for healthy gums and muscles and also helps wounds to heal. And finally, vitamin K is essential for blood clotting', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Crunchy, sweet and juicy, green seedless grapes satisfy a multitude of cravings, which may be why everyone like them so much. With 104 calories per 1-cup serving, green grapes make a healthy and natural low-calorie snack. The 1-cup serving of green grapes fills you up and satisfies hunger, which helps keep overall calories and ultimately weight under control. Grapes contain a substance called resveratrol, which is a natural compound that protects the fruit from environmental stress, fungal infections and ultraviolet radiation. Resveratrol also works to protect human health. As an antioxidant, it may protect your cells from free-radical damage and lower your risk of heart disease by preventing blood clots and reducing inflammation. The resveratrol in green seedless grapes may also prevent the growth of cancer cells. Green seedless grapes can help you meet your vitamins A, C and K needs. One cup of grapes provides 100 international units of vitamin A, 4.8 milligrams of vitamin C and 22 micro grams of vitamin K. Vitamin A helps your body fight off infection by boosting your immune system. Vitamin C is important for healthy gums and muscles and also helps wounds to heal. And finally, vitamin K is essential for blood clotting</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Crunchy, sweet and juicy, green seedless grapes satisfy a multitude of cravings, which may be why everyone like them so much. With 104 calories per 1-cup serving, green grapes make a healthy and natural low-calorie snack. The 1-cup serving of green grapes fills you up and satisfies hunger, which helps keep overall calories and ultimately weight under control. Grapes contain a substance called resveratrol, which is a natural compound that protects the fruit from environmental stress, fungal infections and ultraviolet radiation. Resveratrol also works to protect human health. As an antioxidant, it may protect your cells from free-radical damage and lower your risk of heart disease by preventing blood clots and reducing inflammation. The resveratrol in green seedless grapes may also prevent the growth of cancer cells. Green seedless grapes can help you meet your vitamins A, C and K needs. One cup of grapes provides 100 international units of vitamin A, 4.8 milligrams of vitamin C and 22 micro grams of vitamin K. Vitamin A helps your body fight off infection by boosting your immune system. Vitamin C is important for healthy gums and muscles and also helps wounds to heal. And finally, vitamin K is essential for blood clotting</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Crunchy, sweet and juicy, green seedless grapes satisfy a multitude of cravings, which may be why everyone like them so much. With 104 calories per 1-cup serving, green grapes make a healthy and natural low-calorie snack. The 1-cup serving of green grapes fills you up and satisfies hunger, which helps keep overall calories and ultimately weight under control. Grapes contain a substance called resveratrol, which is a natural compound that protects the fruit from environmental stress, fungal infections and ultraviolet radiation. Resveratrol also works to protect human health. As an antioxidant, it may protect your cells from free-radical damage and lower your risk of heart disease by preventing blood clots and reducing inflammation. The resveratrol in green seedless grapes may also prevent the growth of cancer cells. Green seedless grapes can help you meet your vitamins A, C and K needs. One cup of grapes provides 100 international units of vitamin A, 4.8 milligrams of vitamin C and 22 micro grams of vitamin K. Vitamin A helps your body fight off infection by boosting your immune system. Vitamin C is important for healthy gums and muscles and also helps wounds to heal. And finally, vitamin K is essential for blood clotting</span></p>', 'upload/product-image/1782700303.webp', 1, 1, '2026-06-28 20:31:43', '2026-06-28 20:31:43');

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
(5, 1, 'upload/product-thumbnail-image/33588.jpg', '2026-06-28 12:04:06', '2026-06-28 12:04:06'),
(6, 1, 'upload/product-thumbnail-image/33674.jpg', '2026-06-28 12:04:06', '2026-06-28 12:04:06'),
(7, 1, 'upload/product-thumbnail-image/16765.jpg', '2026-06-28 12:04:06', '2026-06-28 12:04:06'),
(8, 1, 'upload/product-thumbnail-image/22633.jpg', '2026-06-28 12:04:06', '2026-06-28 12:04:06'),
(9, 2, 'upload/product-thumbnail-image/14889.jpg', '2026-06-28 12:06:58', '2026-06-28 12:06:58'),
(10, 2, 'upload/product-thumbnail-image/34226.jpg', '2026-06-28 12:06:58', '2026-06-28 12:06:58'),
(11, 2, 'upload/product-thumbnail-image/14147.jpg', '2026-06-28 12:06:58', '2026-06-28 12:06:58'),
(12, 2, 'upload/product-thumbnail-image/22856.jpg', '2026-06-28 12:06:58', '2026-06-28 12:06:58'),
(13, 3, 'upload/product-thumbnail-image/29681.webp', '2026-06-28 12:09:01', '2026-06-28 12:09:01'),
(14, 3, 'upload/product-thumbnail-image/17015.jpg', '2026-06-28 12:09:01', '2026-06-28 12:09:01'),
(15, 3, 'upload/product-thumbnail-image/44677.jpg', '2026-06-28 12:09:01', '2026-06-28 12:09:01'),
(16, 3, 'upload/product-thumbnail-image/38333.jpg', '2026-06-28 12:09:01', '2026-06-28 12:09:01'),
(17, 4, 'upload/product-thumbnail-image/11040.jpg', '2026-06-28 12:11:33', '2026-06-28 12:11:33'),
(18, 4, 'upload/product-thumbnail-image/14576.jpg', '2026-06-28 12:11:33', '2026-06-28 12:11:33'),
(19, 4, 'upload/product-thumbnail-image/21340.jpg', '2026-06-28 12:11:33', '2026-06-28 12:11:33'),
(20, 4, 'upload/product-thumbnail-image/37147.jpg', '2026-06-28 12:11:33', '2026-06-28 12:11:33'),
(21, 5, 'upload/product-thumbnail-image/29399.jpg', '2026-06-28 12:15:00', '2026-06-28 12:15:00'),
(22, 5, 'upload/product-thumbnail-image/30200.jpg', '2026-06-28 12:15:00', '2026-06-28 12:15:00'),
(23, 5, 'upload/product-thumbnail-image/41846.jpg', '2026-06-28 12:15:00', '2026-06-28 12:15:00'),
(24, 5, 'upload/product-thumbnail-image/29852.jpg', '2026-06-28 12:15:00', '2026-06-28 12:15:00'),
(25, 6, 'upload/product-thumbnail-image/49502.jpg', '2026-06-28 12:16:30', '2026-06-28 12:16:30'),
(26, 6, 'upload/product-thumbnail-image/16426.jpg', '2026-06-28 12:16:30', '2026-06-28 12:16:30'),
(27, 6, 'upload/product-thumbnail-image/36671.jpg', '2026-06-28 12:16:30', '2026-06-28 12:16:30'),
(28, 6, 'upload/product-thumbnail-image/25369.jpg', '2026-06-28 12:16:30', '2026-06-28 12:16:30'),
(29, 7, 'upload/product-thumbnail-image/32278.jpg', '2026-06-28 12:24:48', '2026-06-28 12:24:48'),
(30, 7, 'upload/product-thumbnail-image/18985.jpg', '2026-06-28 12:24:48', '2026-06-28 12:24:48'),
(31, 7, 'upload/product-thumbnail-image/27279.jpg', '2026-06-28 12:24:48', '2026-06-28 12:24:48'),
(32, 7, 'upload/product-thumbnail-image/11601.jpg', '2026-06-28 12:24:48', '2026-06-28 12:24:48'),
(33, 8, 'upload/product-thumbnail-image/20571.jpg', '2026-06-28 12:29:37', '2026-06-28 12:29:37'),
(34, 8, 'upload/product-thumbnail-image/17923.jpg', '2026-06-28 12:29:37', '2026-06-28 12:29:37'),
(35, 8, 'upload/product-thumbnail-image/38385.jpg', '2026-06-28 12:29:37', '2026-06-28 12:29:37'),
(36, 8, 'upload/product-thumbnail-image/45546.jpg', '2026-06-28 12:29:37', '2026-06-28 12:29:37'),
(37, 9, 'upload/product-thumbnail-image/38722.webp', '2026-06-28 12:34:37', '2026-06-28 12:34:37'),
(38, 9, 'upload/product-thumbnail-image/36513.webp', '2026-06-28 12:34:37', '2026-06-28 12:34:37'),
(39, 9, 'upload/product-thumbnail-image/22193.jpg', '2026-06-28 12:34:37', '2026-06-28 12:34:37'),
(40, 9, 'upload/product-thumbnail-image/28738.jpg', '2026-06-28 12:34:37', '2026-06-28 12:34:37'),
(41, 10, 'upload/product-thumbnail-image/22535.jpg', '2026-06-28 12:39:53', '2026-06-28 12:39:53'),
(42, 10, 'upload/product-thumbnail-image/26725.jpg', '2026-06-28 12:39:53', '2026-06-28 12:39:53'),
(43, 10, 'upload/product-thumbnail-image/32368.jpg', '2026-06-28 12:39:53', '2026-06-28 12:39:53'),
(44, 10, 'upload/product-thumbnail-image/23313.jpg', '2026-06-28 12:39:53', '2026-06-28 12:39:53'),
(45, 11, 'upload/product-thumbnail-image/39649.jpg', '2026-06-28 12:42:09', '2026-06-28 12:42:09'),
(46, 11, 'upload/product-thumbnail-image/11103.jpg', '2026-06-28 12:42:09', '2026-06-28 12:42:09'),
(47, 11, 'upload/product-thumbnail-image/32468.jpg', '2026-06-28 12:42:09', '2026-06-28 12:42:09'),
(48, 11, 'upload/product-thumbnail-image/13758.jpg', '2026-06-28 12:42:09', '2026-06-28 12:42:09'),
(49, 12, 'upload/product-thumbnail-image/37352.jpg', '2026-06-28 12:49:28', '2026-06-28 12:49:28'),
(50, 12, 'upload/product-thumbnail-image/27918.jpg', '2026-06-28 12:49:28', '2026-06-28 12:49:28'),
(51, 12, 'upload/product-thumbnail-image/35769.jpg', '2026-06-28 12:49:28', '2026-06-28 12:49:28'),
(52, 12, 'upload/product-thumbnail-image/43384.jpg', '2026-06-28 12:49:28', '2026-06-28 12:49:28'),
(53, 13, 'upload/product-thumbnail-image/15146.jpg', '2026-06-28 20:12:03', '2026-06-28 20:12:03'),
(54, 13, 'upload/product-thumbnail-image/35447.jpg', '2026-06-28 20:12:03', '2026-06-28 20:12:03'),
(55, 13, 'upload/product-thumbnail-image/27843.jpg', '2026-06-28 20:12:03', '2026-06-28 20:12:03'),
(56, 13, 'upload/product-thumbnail-image/46285.jpg', '2026-06-28 20:12:03', '2026-06-28 20:12:03'),
(57, 14, 'upload/product-thumbnail-image/18997.jpg', '2026-06-28 20:14:02', '2026-06-28 20:14:02'),
(58, 14, 'upload/product-thumbnail-image/32485.jpg', '2026-06-28 20:14:02', '2026-06-28 20:14:02'),
(59, 14, 'upload/product-thumbnail-image/40209.jpg', '2026-06-28 20:14:02', '2026-06-28 20:14:02'),
(60, 14, 'upload/product-thumbnail-image/17617.jpg', '2026-06-28 20:14:02', '2026-06-28 20:14:02'),
(61, 15, 'upload/product-thumbnail-image/44967.webp', '2026-06-28 20:15:28', '2026-06-28 20:15:28'),
(62, 15, 'upload/product-thumbnail-image/31040.webp', '2026-06-28 20:15:28', '2026-06-28 20:15:28'),
(63, 15, 'upload/product-thumbnail-image/24253.jpg', '2026-06-28 20:15:28', '2026-06-28 20:15:28'),
(64, 15, 'upload/product-thumbnail-image/24678.jpg', '2026-06-28 20:15:28', '2026-06-28 20:15:28'),
(65, 16, 'upload/product-thumbnail-image/31958.jpg', '2026-06-28 20:17:15', '2026-06-28 20:17:15'),
(66, 16, 'upload/product-thumbnail-image/28751.jpg', '2026-06-28 20:17:15', '2026-06-28 20:17:15'),
(67, 16, 'upload/product-thumbnail-image/46716.jpg', '2026-06-28 20:17:15', '2026-06-28 20:17:15'),
(68, 16, 'upload/product-thumbnail-image/15057.jpg', '2026-06-28 20:17:15', '2026-06-28 20:17:15'),
(69, 17, 'upload/product-thumbnail-image/39329.jpg', '2026-06-28 20:21:56', '2026-06-28 20:21:56'),
(70, 17, 'upload/product-thumbnail-image/45142.jpg', '2026-06-28 20:21:56', '2026-06-28 20:21:56'),
(71, 17, 'upload/product-thumbnail-image/15484.jpg', '2026-06-28 20:21:56', '2026-06-28 20:21:56'),
(72, 17, 'upload/product-thumbnail-image/35415.jpg', '2026-06-28 20:21:56', '2026-06-28 20:21:56'),
(73, 19, 'upload/product-thumbnail-image/25943.jpg', '2026-06-28 20:29:16', '2026-06-28 20:29:16'),
(74, 19, 'upload/product-thumbnail-image/46991.jpg', '2026-06-28 20:29:16', '2026-06-28 20:29:16'),
(75, 19, 'upload/product-thumbnail-image/20138.jpg', '2026-06-28 20:29:16', '2026-06-28 20:29:16'),
(76, 19, 'upload/product-thumbnail-image/48783.jpg', '2026-06-28 20:29:16', '2026-06-28 20:29:16'),
(77, 20, 'upload/product-thumbnail-image/34924.jpg', '2026-06-28 20:31:43', '2026-06-28 20:31:43'),
(78, 20, 'upload/product-thumbnail-image/46271.jpg', '2026-06-28 20:31:43', '2026-06-28 20:31:43'),
(79, 20, 'upload/product-thumbnail-image/14580.jpg', '2026-06-28 20:31:43', '2026-06-28 20:31:43'),
(80, 20, 'upload/product-thumbnail-image/44369.jpg', '2026-06-28 20:31:43', '2026-06-28 20:31:43');

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
('LaUgaV5IBsuw78m4ZOChyMQG9fJFLl0CjahDjoCz', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6IlBEQkIzdW1qM1NYMmtMZHpIT1VDc1ZVTXNzYjhnSzA1bUpiT2dPMGgiO3M6MTE6ImN1c3RvbWVyX2lkIjtzOjE6IjMiO3M6MTM6ImN1c3RvbWVyX25hbWUiO3M6NToiUm9oYW4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YTowOnt9fXM6MTg6ImZsYXNoZXI6OmVudmVsb3BlcyI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJkLXByb2R1Y3QiO3M6NToicm91dGUiO3M6MTA6ImNhcnQuaW5kZXgiO31zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjQ6ImNjMGU1YzVjZmQxMjQ4Nzk5Y2ZhMzZmZTY2ZmU1YjBkZTJmNWE0OTY5YmIzZjUzYjNlZTI3ZGEzYjhkZThlZGYiO3M6NDoiY2FydCI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6ImQ3ZTU2NTk4ZjY5NTI4YTE5MjgzZmUxODQyZDZiMDAyIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6MTE6e3M6NToicm93SWQiO3M6MzI6ImQ3ZTU2NTk4ZjY5NTI4YTE5MjgzZmUxODQyZDZiMDAyIjtzOjI6ImlkIjtpOjE2O3M6MzoicXR5IjtzOjE6IjEiO3M6NDoibmFtZSI7czoyOToiRGVzaGkgU2hvc2hhIChMb2NhbCBDdWN1bWJlcikiO3M6NToicHJpY2UiO2Q6OTA7czo2OiJ3ZWlnaHQiO2Q6MDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTo0OntzOjU6ImltYWdlIjtzOjM2OiJ1cGxvYWQvcHJvZHVjdC1pbWFnZS8xNzgyNjk5NDM1LndlYnAiO3M6ODoiY2F0ZWdvcnkiO3M6MTA6IlZlZ2V0YWJsZXMiO3M6NToiYnJhbmQiO3M6MTA6IkJhbmdsYWRlc2giO3M6NDoidW5pdCI7czoyOiJrZyI7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo3OiJ0YXhSYXRlIjtpOjIxO3M6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0NjoiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGRpc2NvdW50UmF0ZSI7aTowO3M6ODoiaW5zdGFuY2UiO3M6NzoiZGVmYXVsdCI7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX19', 1782717708),
('LvmWe3wDnA8i27GyJGMKvPdiGHA8I3n2dzTZ5DMe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicDB3NFBnMEtUbG5jc1RlWXFJSmJvU1dSNlFFdGtlTmRyWk9sNHVPTCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjtzOjU6InJvdXRlIjtzOjQ6ImhvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1782742379),
('rAC4VZhDjTynnME4SQIn3tdI5XZrmQc5DPEePkuC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiR3lWcEY2MkJtWUhJaVgzZzlmVG43Y0FodHlHMks1Znp0bmNkeUFQVyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozMDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2NoZWNrb3V0IjtzOjU6InJvdXRlIjtzOjE0OiJjaGVja291dC5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NDoiY2FydCI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjI6e3M6MzI6ImE4YzIwNDU0N2VlYzI4ZGFlZjIzMDRlMWJjNjViZjU2IjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6MTE6e3M6NToicm93SWQiO3M6MzI6ImE4YzIwNDU0N2VlYzI4ZGFlZjIzMDRlMWJjNjViZjU2IjtzOjI6ImlkIjtpOjIwO3M6MzoicXR5IjtzOjE6IjEiO3M6NDoibmFtZSI7czoyNjoiU29idWogQW5ndXIgKEdyZWVuIEdyYXBlcykiO3M6NToicHJpY2UiO2Q6MjQwO3M6Njoid2VpZ2h0IjtkOjA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6NDp7czo1OiJpbWFnZSI7czozNjoidXBsb2FkL3Byb2R1Y3QtaW1hZ2UvMTc4MjcwMDMwMy53ZWJwIjtzOjg6ImNhdGVnb3J5IjtzOjEyOiJGcmVzaCBGcnVpdHMiO3M6NToiYnJhbmQiO3M6OToiUGFraXN0YW5pIjtzOjQ6InVuaXQiO3M6NjoiNTAwIGdtIjt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjc6InRheFJhdGUiO2k6MjE7czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7TjtzOjQ2OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AZGlzY291bnRSYXRlIjtpOjA7czo4OiJpbnN0YW5jZSI7czo3OiJkZWZhdWx0Ijt9czozMjoiZWM0NWQ5ODkwZGRjNmY5Zjg4OTcwMjhlN2M3Nzg0ZDciO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjoxMTp7czo1OiJyb3dJZCI7czozMjoiZWM0NWQ5ODkwZGRjNmY5Zjg4OTcwMjhlN2M3Nzg0ZDciO3M6MjoiaWQiO2k6MTk7czozOiJxdHkiO3M6MToiMSI7czo0OiJuYW1lIjtzOjE4OiJBbmFyb3MgKFBpbmVhcHBsZSkiO3M6NToicHJpY2UiO2Q6ODA7czo2OiJ3ZWlnaHQiO2Q6MDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTo0OntzOjU6ImltYWdlIjtzOjM2OiJ1cGxvYWQvcHJvZHVjdC1pbWFnZS8xNzgyNzAwMTU2LndlYnAiO3M6ODoiY2F0ZWdvcnkiO3M6MTI6IkZyZXNoIEZydWl0cyI7czo1OiJicmFuZCI7czoxMDoiQmFuZ2xhZGVzaCI7czo0OiJ1bml0IjtzOjU6IlBpdGNoIjt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjc6InRheFJhdGUiO2k6MjE7czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7TjtzOjQ2OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AZGlzY291bnRSYXRlIjtpOjA7czo4OiJpbnN0YW5jZSI7czo3OiJkZWZhdWx0Ijt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6MTE6ImN1c3RvbWVyX2lkIjtpOjM7czoxMzoiY3VzdG9tZXJfbmFtZSI7czo1OiJSb2hhbiI7fQ==', 1782716012);

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
(1, 3, 'Chicken', NULL, NULL, 1, '2026-06-28 11:41:29', '2026-06-28 11:41:29'),
(2, 3, 'Beef', NULL, NULL, 1, '2026-06-28 11:42:28', '2026-06-28 11:42:28'),
(3, 3, 'Fish', NULL, NULL, 1, '2026-06-28 12:13:42', '2026-06-28 12:13:42'),
(4, 4, 'Oil', NULL, NULL, 1, '2026-06-28 12:20:55', '2026-06-28 12:20:55'),
(5, 4, 'Rice', NULL, NULL, 1, '2026-06-28 12:33:13', '2026-06-28 12:33:13'),
(6, 4, 'Spices', NULL, NULL, 1, '2026-06-28 12:38:13', '2026-06-28 12:38:13'),
(7, 2, 'Vegetables', NULL, NULL, 1, '2026-06-28 20:11:03', '2026-06-28 20:11:03'),
(8, 1, 'Fruits', NULL, NULL, 1, '2026-06-28 20:19:00', '2026-06-28 20:19:00');

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
(1, 'kg', NULL, NULL, 1, '2026-06-28 11:52:16', '2026-06-28 11:52:16'),
(2, 'Pitch', NULL, NULL, 1, '2026-06-28 11:52:48', '2026-06-28 11:52:48'),
(3, '500 gm', NULL, NULL, 1, '2026-06-28 11:53:02', '2026-06-28 11:53:02'),
(4, '250 gm', NULL, NULL, 1, '2026-06-28 11:53:12', '2026-06-28 11:53:12'),
(5, '1 liter', NULL, NULL, 1, '2026-06-28 12:22:36', '2026-06-28 12:22:36'),
(6, '1 Dozen', NULL, NULL, 1, '2026-06-28 20:20:36', '2026-06-28 20:20:36');

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
(1, 'Syed Naim', 'admin@gmail.com', NULL, '$2y$12$tQnIn4dxwQf9Q2DnW9EVMut8XUHl5t.WCcuD1GYWLT/R7s2sU1t.u', NULL, NULL, NULL, NULL, NULL, NULL, '2026-06-28 10:30:08', '2026-06-28 10:30:08');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_thumbnails`
--
ALTER TABLE `product_thumbnails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `sale_offs`
--
ALTER TABLE `sale_offs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
