-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 06:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) NOT NULL,
  `invoice_Date` date DEFAULT NULL,
  `Due_date` date DEFAULT NULL,
  `product` varchar(50) NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `Amount_collection` decimal(8,2) DEFAULT NULL,
  `Amount_Commission` decimal(8,2) NOT NULL,
  `Discount` decimal(8,2) NOT NULL,
  `Value_VAT` decimal(8,2) NOT NULL,
  `Rate_VAT` varchar(999) NOT NULL,
  `Total` decimal(8,2) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `invoice_Date`, `Due_date`, `product`, `section_id`, `Amount_collection`, `Amount_Commission`, `Discount`, `Value_VAT`, `Rate_VAT`, `Total`, `Status`, `Value_Status`, `note`, `Payment_Date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(6, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'مدفوع', 1, 'ujyu', NULL, NULL, '2023-06-01 02:18:54', '2023-06-06 11:44:02'),
(7, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-01 02:19:25', '2023-06-01 02:19:25'),
(8, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-01 02:19:40', '2023-06-01 02:19:40'),
(17, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'مدفوع', 1, 'ujyu', NULL, NULL, '2023-06-01 23:50:23', '2023-06-01 23:50:23'),
(18, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-01 23:50:23', '2023-06-01 23:50:23'),
(19, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-01 23:50:23', '2023-06-01 23:50:23'),
(20, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-01 23:50:23', '2023-06-01 23:50:23'),
(22, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-01 23:50:23', '2023-06-01 23:50:23'),
(23, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-01 23:50:23', '2023-06-01 23:50:23'),
(24, '55', '2023-06-01', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 9000.00, 10.00, 5.00, 0.25, '5%', 5.25, 'مدفوع', 1, 'hghgh', NULL, NULL, '2023-06-01 23:50:44', '2023-06-01 23:50:44'),
(25, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'مدفوع', 1, 'ujyu', NULL, NULL, '2023-06-01 23:50:44', '2023-06-01 23:50:44'),
(26, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-01 23:50:44', '2023-06-01 23:50:44'),
(27, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-01 23:50:44', '2023-06-01 23:50:44'),
(28, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-01 23:50:44', '2023-06-01 23:50:44'),
(29, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-01 23:50:44', '2023-06-01 23:50:44'),
(30, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-01 23:50:44', '2023-06-01 23:50:44'),
(31, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-01 23:50:44', '2023-06-01 23:50:44'),
(32, '55', '2023-06-01', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 9000.00, 10.00, 5.00, 0.25, '5%', 5.25, 'مدفوع', 1, 'hghgh', NULL, NULL, '2023-06-03 15:20:17', '2023-06-03 15:20:17'),
(33, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'مدفوع', 1, 'ujyu', NULL, NULL, '2023-06-03 15:20:17', '2023-06-03 15:20:17'),
(34, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-03 15:20:17', '2023-06-03 15:20:17'),
(35, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'مدفوع', 1, 'ujyu', NULL, NULL, '2023-06-03 15:20:17', '2023-06-06 12:56:47'),
(41, '55', '2023-06-01', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 9000.00, 10.00, 5.00, 0.25, '5%', 5.25, 'مدفوع', 1, 'hghgh', NULL, NULL, '2023-06-06 12:58:05', '2023-06-06 12:58:05'),
(42, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'مدفوع', 1, 'ujyu', NULL, NULL, '2023-06-06 12:58:05', '2023-06-06 12:58:05'),
(43, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-06 12:58:05', '2023-06-06 12:58:05'),
(44, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-06 12:58:05', '2023-06-06 12:58:05'),
(45, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-06 12:58:05', '2023-06-06 12:58:05'),
(46, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-06 12:58:05', '2023-06-06 12:58:05'),
(47, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-06 12:58:05', '2023-06-06 12:58:05'),
(48, '555', '2023-06-02', '2023-06-01', 'zxxxxxxxxxxxxxxxxxxxx', 1, 323.00, 9000.00, 212.00, 439.40, '5%', 9227.40, 'غير مدفوعة', 2, 'ujyu', NULL, NULL, '2023-06-06 12:58:05', '2023-06-06 12:58:05'),
(49, '6666', '2023-06-06', '2023-06-06', 'NewService', 7, 90000.00, 1000.00, 10.00, 49.50, '5%', 1039.50, 'غير مدفوعة', 2, NULL, NULL, NULL, '2023-06-06 13:00:38', '2023-06-06 13:00:38');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_attachments`
--

CREATE TABLE `invoice_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(999) NOT NULL,
  `invoice_number` varchar(50) NOT NULL,
  `Created_by` varchar(999) NOT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_attachments`
--

INSERT INTO `invoice_attachments` (`id`, `file_name`, `invoice_number`, `Created_by`, `invoice_id`, `created_at`, `updated_at`) VALUES
(5, 'Capture.PNG', '6666', 'islam salah', 49, '2023-06-06 13:00:38', '2023-06-06 13:00:38');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Invoice` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) NOT NULL,
  `product` varchar(50) NOT NULL,
  `Section` varchar(999) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Value_Status` int(11) DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  `note` text DEFAULT NULL,
  `user` varchar(300) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_09_15_191008_create_sections_table', 1),
(7, '2020_09_16_164252_create_invoices_table', 1),
(8, '2020_09_19_150429_create_products_table', 1),
(9, '2020_09_25_203659_create_invoices_details_table', 1),
(10, '2020_09_25_205105_create_invoice_attachments_table', 1),
(11, '2020_11_24_141850_create_notifications_table', 2),
(12, '2023_05_28_060936_create_sessions_table', 2),
(13, '2023_05_28_232546_add_locale_lang_to_users', 3),
(14, '2023_06_03_182742_create_permission_tables', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 6),
(5, 'App\\Models\\User', 6),
(6, 'App\\Models\\User', 6),
(7, 'App\\Models\\User', 6),
(7, 'App\\Models\\User', 7),
(8, 'App\\Models\\User', 6),
(9, 'App\\Models\\User', 6),
(10, 'App\\Models\\User', 6),
(11, 'App\\Models\\User', 6),
(12, 'App\\Models\\User', 6),
(12, 'App\\Models\\User', 7),
(13, 'App\\Models\\User', 6),
(14, 'App\\Models\\User', 6),
(15, 'App\\Models\\User', 6),
(15, 'App\\Models\\User', 7),
(16, 'App\\Models\\User', 6),
(17, 'App\\Models\\User', 6),
(18, 'App\\Models\\User', 6),
(19, 'App\\Models\\User', 6),
(19, 'App\\Models\\User', 7),
(20, 'App\\Models\\User', 6),
(21, 'App\\Models\\User', 6),
(21, 'App\\Models\\User', 7),
(22, 'App\\Models\\User', 6),
(25, 'App\\Models\\User', 6),
(27, 'App\\Models\\User', 6),
(28, 'App\\Models\\User', 6),
(30, 'App\\Models\\User', 6),
(31, 'App\\Models\\User', 6);

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
(1, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'index invoice', 'web', NULL, NULL),
(2, 'create invoice', 'web', NULL, NULL),
(3, 'store invoice', 'web', NULL, NULL),
(4, 'edit invoice', 'web', NULL, NULL),
(5, 'update invoice', 'web', NULL, NULL),
(6, 'delete invoice', 'web', NULL, NULL),
(7, 'show invoice', 'web', NULL, NULL),
(8, 'updateStatus_show invoice', 'web', NULL, NULL),
(9, 'assignRole invoice', 'web', NULL, NULL),
(10, 'export invoice', 'web', NULL, NULL),
(11, 'import invoice', 'web', NULL, NULL),
(12, 'index archive', 'web', NULL, NULL),
(13, 'restore archive', 'web', NULL, NULL),
(14, 'trashed archive', 'web', NULL, NULL),
(15, 'index section', 'web', NULL, NULL),
(16, 'store section', 'web', NULL, NULL),
(17, 'update section', 'web', NULL, NULL),
(18, 'destroy section', 'web', NULL, NULL),
(19, 'index product', 'web', NULL, NULL),
(20, 'store product', 'web', NULL, NULL),
(21, 'show product', 'web', NULL, NULL),
(22, 'update product', 'web', NULL, NULL),
(25, 'destroy product', 'web', '2023-06-03 21:45:54', '2023-06-03 21:45:54'),
(27, 'index permission', 'web', '2023-06-06 11:25:16', '2023-06-06 11:25:16'),
(28, 'store permission', 'web', '2023-06-06 11:25:53', '2023-06-06 11:25:53'),
(30, 'getPermissionUser permission', 'web', '2023-06-06 11:25:16', '2023-06-06 11:25:16'),
(31, 'allpermissions permission', 'web', '2023-06-06 11:25:53', '2023-06-06 11:25:53');

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Product_name` varchar(999) NOT NULL,
  `description` text DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Product_name`, `description`, `section_id`, `created_at`, `updated_at`) VALUES
(4, 'loans', 'dff', 2, NULL, NULL),
(5, 'mastcard', 'dsf', 4, NULL, NULL),
(8, 'NewService', 'NewService', 7, '2023-06-06 12:59:48', '2023-06-06 12:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user', 'web', NULL, NULL),
(2, 'admin', 'web', NULL, NULL);

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
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(999) NOT NULL,
  `description` text DEFAULT NULL,
  `Created_by` varchar(999) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_name`, `description`, `Created_by`, `created_at`, `updated_at`) VALUES
(1, 'Alahly', 'great', '', NULL, NULL),
(2, 'Masr', 'sasssssssssssss', '6', '2023-05-31 19:33:26', '2023-05-31 20:01:46'),
(4, 'Nasr', 'sasssssssssssss', '6', '2023-05-31 19:33:26', '2023-05-31 20:01:46'),
(7, 'CIB', 'Bank', '6', '2023-06-06 12:58:49', '2023-06-06 12:58:49');

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
('k0MV07bTmyJc814XGobd2ASgGZAzqm0InSDGHWSO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaHp6dXRtUElCREdGTWZkQ2p2WEZJZmc5a1gwYlJGQndIN08zQU5CMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1685258864),
('tVnRaUs1RCNAnud1QuyDSFzSA3AI6VI7wdPPHIwm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiemVJVjFuVGREOGFLSEs3SUs1WjJOVnBTVDQ5UjhValoweEtGSXVyQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93ZWxjb21lU2lyIjt9fQ==', 1685258929);

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
  `remember_token` varchar(250) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `locale_lang` enum('ae','en') NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `locale_lang`) VALUES
(6, 'islam salah', 'islamm1995@gmail.com', NULL, '$2y$10$JTbanNOT2N2lXoM3mGgRp.gCFRa8ztmajraHskQjevG4VvVzm8tIy', NULL, NULL, NULL, 'yNG1nXCqAE4eUsZSc7r1CDeFGgjwP04LG7AkeKEoDWpi3ndUmLZuPhVigpZt', NULL, 'https://lh3.googleusercontent.com/a/AAcHTteh7BOn3X2mNCBvWRGj-GxnKvmqeMIo5KE4oOpmOw=s96-c', '2023-05-28 21:32:04', '2023-06-06 12:54:46', 'en'),
(7, 'Normal islam', 'Normalislamm1995@gmail.com', NULL, '$2y$10$JTbanNOT2N2lXoM3mGgRp.gCFRa8ztmajraHskQjevG4VvVzm8tIy', NULL, NULL, NULL, 'WtHyR0T49WOBaTiBVxtvTBqxa5M1uS76zJLvQkcyGOiqn00l9zLjOKPmw4n8', NULL, 'https://lh3.googleusercontent.com/a/AAcHTteh7BOn3X2mNCBvWRGj-GxnKvmqeMIo5KE4oOpmOw=s96-c', '2023-05-28 21:32:04', '2023-06-01 18:53:19', 'en');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_section_id_foreign` (`section_id`);

--
-- Indexes for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_attachments_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_details_id_invoice_foreign` (`id_Invoice`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_section_id_foreign` (`section_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD CONSTRAINT `invoice_attachments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoices_details_id_invoice_foreign` FOREIGN KEY (`id_Invoice`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
