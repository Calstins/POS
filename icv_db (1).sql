-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2023 at 09:50 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icv_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `brand_image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `brand_image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 'Nespresso Original', 'upload/brand/1759053416452222.jpg', 1, 4, 4, '2023-02-28 05:01:04', '2023-02-28 11:35:39'),
(4, 'Illy', 'upload/brand/1759972678807563.png', 1, 4, NULL, '2023-03-10 08:32:23', NULL),
(5, 'Dolco Gusto', 'upload/brand/1759973016682314.png', 1, 4, NULL, '2023-03-10 08:37:43', NULL),
(6, 'Carimali', 'upload/brand/1759973046099626.png', 1, 4, NULL, '2023-03-10 08:38:11', NULL),
(7, 'Starbucks', 'upload/brand/1759973066902380.png', 1, 4, NULL, '2023-03-10 08:38:31', NULL),
(8, 'Lavazza A Modo Mio', 'upload/brand/1759973105043974.png', 1, 4, NULL, '2023-03-10 08:39:08', NULL),
(9, 'Delonghi', 'upload/brand/1759973143558161.png', 1, 4, NULL, '2023-03-10 08:39:44', NULL),
(10, 'Nespresso Vertuo', 'upload/brand/1759973186403872.png', 1, 4, NULL, '2023-03-10 08:40:25', NULL),
(11, 'Caffitaly', 'upload/brand/1759973243898510.png', 1, 4, NULL, '2023-03-10 08:41:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Capsules', 1, 4, NULL, '2023-02-26 19:20:59', NULL),
(2, 'Machine', 1, 4, NULL, '2023-02-26 19:21:46', NULL),
(3, 'Bean', 1, 4, NULL, '2023-02-26 19:22:20', NULL),
(4, 'Coffee Maker', 1, 4, NULL, '2023-02-26 19:22:38', NULL),
(5, 'Ground', 1, 4, NULL, '2023-02-26 19:22:50', NULL),
(6, 'Accessories', 1, 4, NULL, '2023-02-26 19:23:16', NULL),
(7, 'E.S.E Pods', 1, 4, NULL, '2023-02-26 19:23:46', NULL),
(8, 'Cold Brew', 1, 4, 4, '2023-02-26 19:25:45', '2023-02-26 19:25:59'),
(9, 'Instant Coffee', 1, 4, NULL, '2023-02-26 19:26:33', NULL),
(10, 'Liquor/Sweets', 1, 4, NULL, '2023-02-26 19:29:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `mobile_no`, `email`, `address`, `country`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'caleb onyinye opule', '08159115625', 'opulecalebtins@gmail.com', 'Nigeria', 'Nigeria', 1, 4, 4, '2023-02-26 10:31:24', '2023-02-26 10:31:49'),
(3, 'Pierpaolo Tommasini', '+447404493555', 'pierpaolotommasini@gmail.com', '58 badgers gate', 'Italy', 1, 4, 4, '2023-02-28 16:06:21', '2023-02-28 16:09:55'),
(4, 'new customer', '08067123100', 'kayveemall@gmail.com', NULL, NULL, 1, NULL, NULL, '2023-03-05 10:40:19', '2023-03-05 10:40:19'),
(5, 'boluwa', '08067123100', 'kayveemall@gmail.com', NULL, NULL, 1, NULL, NULL, '2023-03-05 11:11:27', '2023-03-05 11:11:27'),
(6, 'Akisanmi Kayode', '08067123100', 'kayveemall@gmail.com', NULL, NULL, 1, NULL, NULL, '2023-03-05 11:38:43', '2023-03-05 11:38:43');

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
  `invoice_no` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_no`, `date`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(15, '1', '2023-03-10', 'first sells', 0, 4, NULL, '2023-03-10 10:08:45', '2023-03-10 10:08:45'),
(16, '2', '2023-03-10', NULL, 0, 4, NULL, '2023-03-10 10:09:40', '2023-03-10 10:09:40'),
(17, '3', '2023-03-10', 'the discount was because of returning customer', 1, 4, 4, '2023-03-10 10:11:22', '2023-03-12 15:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `selling_qty` double DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `date`, `invoice_id`, `category_id`, `product_id`, `selling_qty`, `unit_price`, `selling_price`, `status`, `created_at`, `updated_at`) VALUES
(22, '2023-03-10', 15, 1, 6, 2, 400, 800, 1, '2023-03-10 10:08:45', '2023-03-10 10:08:45'),
(23, '2023-03-10', 15, 1, 7, 10, 300, 3000, 1, '2023-03-10 10:08:45', '2023-03-10 10:08:45'),
(24, '2023-03-10', 16, 1, 6, 6, 300, 1800, 1, '2023-03-10 10:09:40', '2023-03-10 10:09:40'),
(25, '2023-03-10', 17, 1, 7, 50, 300, 15000, 1, '2023-03-10 10:11:22', '2023-03-10 10:11:22'),
(26, '2023-03-10', 17, 1, 8, 4, 400, 1600, 1, '2023-03-10 10:11:22', '2023-03-10 10:11:22');

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
(5, '2023_02_23_111047_create_suppliers_table', 2),
(6, '2023_02_25_164137_create_customers_table', 3),
(7, '2023_02_26_124348_create_units_table', 4),
(8, '2023_02_26_162122_create_brands_table', 5),
(9, '2023_02_26_163206_brands', 6),
(10, '2023_02_26_163440_create_brands_table', 7),
(11, '2023_02_26_190558_create_categories_table', 8),
(12, '2023_02_27_084422_create_product_controllers_table', 9),
(13, '2023_02_27_091057_create_products_table', 10),
(14, '2023_03_01_104354_create_purchases_table', 11),
(15, '2023_03_03_110047_create_invoices_table', 12),
(16, '2023_03_03_110318_create_invoice_details_table', 12),
(17, '2023_03_03_110400_create_payments_table', 12),
(18, '2023_03_03_110425_create_payment_details_table', 12);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `paid_status` varchar(51) DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `invoice_id`, `customer_id`, `paid_status`, `paid_amount`, `due_amount`, `total_amount`, `discount_amount`, `created_at`, `updated_at`) VALUES
(15, 15, 2, 'partial_paid', 2700, 1000, 3700, 100, '2023-03-10 10:08:45', '2023-03-15 11:44:58'),
(16, 16, 3, 'full_paid', 1700, 0, 1700, 100, '2023-03-10 10:09:40', '2023-03-10 10:09:40'),
(17, 17, 4, 'partial_paid', 1300, 14700, 16000, 600, '2023-03-10 10:11:22', '2023-03-10 10:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `current_paid_amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `invoice_id`, `current_paid_amount`, `date`, `updated_by`, `created_at`, `updated_at`) VALUES
(15, 15, 2000, '2023-03-10', NULL, '2023-03-10 10:08:45', '2023-03-10 10:08:45'),
(16, 16, 1700, '2023-03-10', NULL, '2023-03-10 10:09:40', '2023-03-10 10:09:40'),
(17, 17, 1300, '2023-03-10', NULL, '2023-03-10 10:11:22', '2023-03-10 10:11:22'),
(18, 15, 700, '2023-03-15', 4, '2023-03-15 11:44:59', '2023-03-15 11:44:59');

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
  `product_image` varchar(255) DEFAULT 'upload/no_image.jpg',
  `supplier_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `weight` double DEFAULT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_image`, `supplier_id`, `unit_id`, `category_id`, `brand_id`, `name`, `weight`, `quantity`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(5, 'upload/product/1759975202780995.png', 12, 9, 1, 11, 'Prezioso', NULL, 0, 4, NULL, '2023-03-10 09:12:28', NULL),
(6, 'upload/product/1759975340664668.jfif', 12, 7, 1, 11, 'Intenzo Espresso Vivace', NULL, 4, 4, NULL, '2023-03-10 09:14:40', '2023-03-10 10:03:37'),
(7, 'upload/product/1759975529133530.jpg', 13, 10, 1, 8, 'Crema E Gusto', NULL, 16, 4, NULL, '2023-03-10 09:17:39', '2023-03-12 15:04:18'),
(8, 'upload/product/1759975900486274.png', 13, 10, 1, 8, 'Dek Cremoso', NULL, 73, 4, NULL, '2023-03-10 09:23:34', '2023-03-12 15:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_no` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `buying_qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `category_id`, `product_id`, `purchase_no`, `date`, `description`, `buying_qty`, `unit_price`, `buying_price`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(5, 12, 1, 5, '1', '2023-03-10', NULL, 2, 200, 400, 0, 4, NULL, '2023-03-10 09:56:18', '2023-03-10 09:56:18'),
(6, 12, 1, 6, '1', '2023-03-10', NULL, 4, 400, 1600, 1, 4, NULL, '2023-03-10 09:56:18', '2023-03-10 10:03:37'),
(7, 13, 1, 8, '657', '2023-03-16', NULL, 77, 888, 68376, 1, 4, NULL, '2023-03-10 10:02:40', '2023-03-10 10:03:23'),
(8, 13, 1, 7, '657', '2023-03-16', NULL, 66, 88, 5808, 1, 4, NULL, '2023-03-10 10:02:40', '2023-03-10 10:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `mobile_no`, `email`, `address`, `country`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'John Lewis', NULL, NULL, NULL, 'UK', 1, 4, NULL, '2023-02-25 14:51:36', '2023-02-25 14:51:36'),
(10, 'Morrisons', NULL, NULL, NULL, NULL, 1, 4, NULL, '2023-02-28 12:21:46', '2023-02-28 12:21:46'),
(11, 'Interspar ITA', NULL, NULL, NULL, 'Italy', 1, 4, NULL, '2023-03-03 19:47:36', '2023-03-03 19:47:36'),
(12, 'Caffitaly SPA', NULL, NULL, NULL, NULL, 1, 4, NULL, '2023-03-10 08:42:55', NULL),
(13, 'Cafazzini', NULL, NULL, NULL, NULL, 1, 4, NULL, '2023-03-10 08:43:33', NULL),
(14, 'Tesco', NULL, NULL, NULL, NULL, 1, 4, NULL, '2023-03-10 08:43:49', NULL),
(15, 'Dolco Gusto UK', NULL, NULL, NULL, 'UK', 1, 4, NULL, '2023-03-10 08:44:40', '2023-03-10 08:44:40'),
(17, 'ASDA', NULL, NULL, NULL, NULL, 1, 4, NULL, '2023-03-10 08:45:37', NULL),
(18, 'Maxicoffee', NULL, NULL, NULL, 'France', 1, 4, NULL, '2023-03-10 08:46:17', NULL),
(19, 'Nespresso UK', NULL, NULL, NULL, 'UK', 1, 4, NULL, '2023-03-10 08:47:27', NULL),
(20, 'Nespresso ITA', NULL, NULL, NULL, 'Italy', 1, 4, NULL, '2023-03-10 08:48:12', NULL),
(21, 'BF Global', NULL, NULL, NULL, 'Nederland', 1, 4, NULL, '2023-03-10 08:49:31', NULL),
(22, 'Celmar', NULL, NULL, NULL, NULL, 1, 4, NULL, '2023-03-10 08:50:02', NULL),
(23, 'Illy', NULL, NULL, NULL, 'UK', 1, 4, NULL, '2023-03-10 08:50:40', NULL),
(24, 'Nutis', NULL, NULL, NULL, NULL, 1, 4, NULL, '2023-03-10 08:50:59', NULL),
(25, 'Pavin', NULL, NULL, NULL, NULL, 1, 4, NULL, '2023-03-10 08:51:28', NULL),
(26, 'Poli', NULL, NULL, NULL, NULL, 1, 4, NULL, '2023-03-10 08:51:51', NULL),
(27, 'Foodness', NULL, NULL, NULL, NULL, 1, 4, NULL, '2023-03-10 08:52:06', NULL),
(28, 'Ocado', NULL, NULL, NULL, 'UK', 1, 4, NULL, '2023-03-10 08:52:25', NULL),
(29, 'Amazon', NULL, NULL, NULL, 'UK', 1, 4, NULL, '2023-03-10 08:53:17', NULL),
(30, 'Caffeluxe', NULL, NULL, NULL, 'UK', 1, 4, NULL, '2023-03-10 08:54:13', NULL),
(31, 'Lavazza', NULL, NULL, NULL, 'UK', 1, 4, NULL, '2023-03-10 08:54:49', NULL),
(32, 'CN Foods', NULL, NULL, NULL, NULL, 1, 4, NULL, '2023-03-10 08:55:48', NULL),
(33, 'Fidossi', NULL, NULL, NULL, NULL, 1, 4, NULL, '2023-03-10 08:56:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `value`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 20, 1, 4, 4, '2023-02-26 14:47:04', '2023-02-28 13:54:11'),
(2, 125, 1, 4, 4, '2023-02-28 14:03:57', '2023-02-28 14:04:09'),
(5, 200, 1, 4, NULL, '2023-02-28 14:14:06', NULL),
(6, 250, 1, 4, NULL, '2023-02-28 14:14:23', NULL),
(7, 90, 1, 4, NULL, '2023-03-10 08:57:15', NULL),
(8, 48, 1, 4, NULL, '2023-03-10 08:57:34', NULL),
(9, 10, 1, 4, NULL, '2023-03-10 08:57:53', NULL),
(10, 12, 1, 4, NULL, '2023-03-10 08:58:16', NULL),
(11, 3, 1, 4, NULL, '2023-03-10 08:58:38', NULL),
(13, 6, 1, 4, NULL, '2023-03-10 09:03:01', NULL),
(14, 100, 1, 4, NULL, '2023-03-10 09:03:11', NULL),
(15, 8, 1, 4, NULL, '2023-03-10 09:04:17', NULL),
(16, 24, 1, 4, NULL, '2023-03-10 09:04:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `username`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Caleb', 'contact@italiancoffee.ng', NULL, '$2y$10$J63n34FYy8cv/xP3Ow39MOQduAI1Q/Ou5t1YVSJNtoUB6r88KiyTG', NULL, NULL, NULL, '2023-02-13 18:08:48', '2023-02-13 18:08:48'),
(2, 'caleb2', 'mediaitaliancoffee@gmail.com', NULL, '$2y$10$euYd.IImvUEpcI3qXsMAreyY57/0/nMT5N.PIKOxlbVSMUCAQQQau', NULL, NULL, NULL, '2023-02-13 18:42:30', '2023-02-13 18:42:30'),
(3, 'caleb', 'webmaster@italiancoffee.ng', NULL, '$2y$10$CPVdRVHE2J8GtHUwOsTBzeBIsD72C3itFTYaoNknbjuKSGDoKKHaq', 'calstins', NULL, NULL, '2023-02-15 12:36:26', '2023-02-15 12:36:26'),
(4, 'caleb', 'webmaster@yehgs.co.uk', NULL, '$2y$10$iOIfQWBlpu9LB6rf6yPWk.KMlSpVi2bS7PnV9DQ.xwt7Ac0JONIvu', 'webmaster', '202302211117yehgs.png', NULL, '2023-02-15 12:48:04', '2023-02-21 17:52:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
