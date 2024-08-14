-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 14, 2024 at 09:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restrodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dashboardmenu`
--

CREATE TABLE `dashboardmenu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `route` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `usergroup_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboardmenu`
--

INSERT INTO `dashboardmenu` (`id`, `name`, `route`, `icon`, `usergroup_id`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Table Group', 'Table/TableGroups', NULL, 1, NULL, '2023-12-16 08:07:13', NULL),
(2, 'Reports', 'Reports/Index', NULL, 1, NULL, '2023-12-16 08:12:59', NULL),
(3, 'User', 'User/Index', NULL, 1, NULL, NULL, NULL),
(4, 'User', 'User/Index', NULL, 2, NULL, '2023-12-16 21:14:42', NULL),
(6, 'Table Details', 'Table/TableDetails', NULL, 2, NULL, '2023-12-16 21:20:53', NULL),
(7, 'Table Details', 'Table/TableDetails', NULL, 1, NULL, '2023-12-17 19:53:05', NULL),
(8, 'Item Groups', '/Item/ItemGroups', NULL, 2, NULL, '2023-12-19 18:25:58', NULL),
(9, 'Item Details', '/Item/ItemDetails', NULL, 2, NULL, '2023-12-19 18:28:42', NULL),
(10, 'Add New Table', '/Table/TableDetailCreate', NULL, 1, NULL, '2023-12-19 19:42:36', NULL),
(11, 'Pending Order', '/Order/PendingOrderList', NULL, 4, NULL, '2023-12-21 19:47:53', NULL),
(12, 'Completed Order', '/Order/CompleteOrderList', NULL, 4, NULL, NULL, NULL),
(13, 'Table Details', '/Table/TableAddInTrans', NULL, 3, NULL, NULL, NULL),
(14, 'Pending Order', '/Order/PendingOrderList', NULL, 3, NULL, NULL, NULL),
(15, 'Completed Order', '/Order/CompleteOrderList', NULL, 3, NULL, NULL, NULL),
(16, 'Add New Table', '/Table/TableDetailCreate', NULL, 2, NULL, NULL, NULL),
(17, 'Add User', '/User/Register', NULL, 2, NULL, NULL, NULL),
(18, 'Add User', '/User/Register', NULL, 1, NULL, NULL, NULL),
(19, 'Invoice ', '/Order/InvoiceList', NULL, 2, NULL, NULL, NULL);

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2023_12_13_163507_tbl_company', 2),
(10, '2023_12_13_175142_tbl_usergroup', 3),
(11, '2023_12_13_175159_tbl_userdetails', 4),
(12, '2023_12_13_175213_tbl_itemgroup', 5),
(13, '2023_12_13_175227_tbl_itemmaster', 6),
(15, '2023_12_13_181704_tbl_yearmaster', 7),
(16, '2023_12_13_182452_tbl_systemaccount', 8),
(17, '2023_12_13_180108_tbl_transaction', 9),
(18, '2023_12_14_185354_tbl_accountmaster', 10),
(19, '2023_12_13_175252_tbl_salesmaster', 11),
(20, '2023_12_13_175418_tbl_salestransaction', 12),
(21, '2023_12_14_183554_tbl_salesbillmaster', 13),
(22, '2023_12_13_175434_tbl_purchasemaster', 14),
(23, '2023_12_13_175532_tbl_purchasetransaction', 15),
(24, '2023_12_14_183606_tbl_purchasebillmaster', 16),
(25, '2023_12_13_180925_tbl_ordermaster', 17),
(26, '2023_12_13_180931_tbl_ordertrans', 18),
(27, '2023_12_14_195428_tbl_itemopclqtymaster', 19),
(28, '2023_12_13_181458_tbl_tempmaster', 20),
(29, '2023_12_13_181515_tbl_temptrans', 21),
(30, '2023_12_13_180231_tbl_tablegroup', 22),
(31, '2023_12_13_180241_tbl_tabledetails', 23),
(32, '2023_12_16_072137_dashboardmenu', 24),
(33, '2023_12_19_195306_tabletransaction', 25);

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
-- Table structure for table `tabletransactions`
--

CREATE TABLE `tabletransactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `change_amount` decimal(10,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `items` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tabletransactions`
--

INSERT INTO `tabletransactions` (`id`, `table_id`, `order_id`, `user_id`, `total_amount`, `paid_amount`, `change_amount`, `status`, `items`, `created_at`, `updated_at`) VALUES
(35, 1, 35, 1, 0.00, 0.00, 0.00, 2, 'text', '2023-12-22 02:52:40', '2023-12-22 02:52:45'),
(36, 1, 36, 1, 0.00, 0.00, 0.00, 2, 'text', '2023-12-22 02:53:31', '2023-12-22 02:53:40'),
(37, 1, 37, 1, 0.00, 0.00, 0.00, 2, 'text', '2023-12-22 02:53:43', '2023-12-22 02:53:47'),
(38, 5, 38, 1, 0.00, 0.00, 0.00, 2, 'text', '2023-12-22 02:53:52', '2023-12-22 02:53:58'),
(39, 6, 39, 1, 0.00, 0.00, 0.00, 2, 'text', '2023-12-22 02:54:03', '2023-12-22 02:54:25'),
(40, 5, 40, 1, 0.00, 0.00, 0.00, 2, 'text', '2023-12-22 02:54:04', '2023-12-22 02:54:24'),
(41, 1, 41, 1, 0.00, 0.00, 0.00, 2, 'text', '2023-12-22 02:54:05', '2023-12-22 02:54:23'),
(42, 1, 42, 1, 0.00, 0.00, 0.00, 2, 'text', '2023-12-22 02:58:48', '2023-12-22 03:48:31'),
(43, 3, 43, 2, 0.00, 0.00, 0.00, 2, 'text', '2023-12-22 03:49:16', '2023-12-22 08:15:32'),
(44, 1, 44, 2, 0.00, 0.00, 0.00, 2, 'text', '2023-12-22 08:15:26', '2023-12-22 08:15:30'),
(45, 4, 45, 2, 0.00, 0.00, 0.00, 2, 'text', '2023-12-22 08:15:53', '2023-12-22 08:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accountmaster`
--

CREATE TABLE `tbl_accountmaster` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Account_Name` varchar(255) DEFAULT NULL,
  `Mobile1` varchar(255) DEFAULT NULL,
  `Mobile2` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Comp_Id` bigint(20) UNSIGNED NOT NULL,
  `User_Id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_accountmaster`
--

INSERT INTO `tbl_accountmaster` (`id`, `Account_Name`, `Mobile1`, `Mobile2`, `Email`, `Address`, `City`, `State`, `Comp_Id`, `User_Id`, `created_at`, `updated_at`) VALUES
(1, 'Table', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Company_Name` varchar(250) DEFAULT NULL,
  `Company_Email` varchar(250) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  `Company_Desc` varchar(250) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `City` varchar(500) DEFAULT NULL,
  `Phone1` varchar(500) DEFAULT NULL,
  `Mobile1` varchar(500) DEFAULT NULL,
  `Remarks` varchar(500) DEFAULT NULL,
  `EmailAddress` varchar(100) DEFAULT NULL,
  `WebSite` varchar(100) DEFAULT NULL,
  `FreeSalesRemarks` varchar(250) DEFAULT NULL,
  `inserttime` timestamp NULL DEFAULT NULL,
  `updatetime` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `InsertComputerName` varchar(250) DEFAULT NULL,
  `UpdateComputerName` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_company`
--

INSERT INTO `tbl_company` (`id`, `Company_Name`, `Company_Email`, `Password`, `Company_Desc`, `Address`, `City`, `Phone1`, `Mobile1`, `Remarks`, `EmailAddress`, `WebSite`, `FreeSalesRemarks`, `inserttime`, `updatetime`, `created_at`, `updated_at`, `InsertComputerName`, `UpdateComputerName`) VALUES
(1, 'Restro', 'restro@gmail.com', 'pass@123', 'Restaurant and Benquet', 'A-1/2 , Surat , Gujarat', 'Surat', '+91-00900-11011', NULL, NULL, 'restro@gmail.com', 'www.restro.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_itemgroup`
--

CREATE TABLE `tbl_itemgroup` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ItemGroupName` varchar(255) DEFAULT NULL,
  `Comp_Id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_itemgroup`
--

INSERT INTO `tbl_itemgroup` (`id`, `ItemGroupName`, `Comp_Id`, `created_at`, `updated_at`) VALUES
(1, 'Roti', 1, NULL, NULL),
(2, 'Salad', 1, NULL, NULL),
(3, 'Rice', 1, NULL, NULL),
(4, 'Appetizers', 1, NULL, NULL),
(7, 'Soups', 1, NULL, NULL),
(8, 'Mocktails', 1, NULL, NULL),
(9, 'Breakfast', 1, '2023-12-19 12:50:18', '2023-12-19 12:50:18'),
(10, 'Chinese', 1, '2023-12-22 08:22:00', '2023-12-22 08:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_itemmaster`
--

CREATE TABLE `tbl_itemmaster` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ItemName` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Group_Id` bigint(20) UNSIGNED NOT NULL,
  `Comp_Id` bigint(20) UNSIGNED NOT NULL,
  `Rate` decimal(18,0) DEFAULT NULL,
  `Discount` decimal(18,0) DEFAULT NULL,
  `TAX` decimal(18,0) DEFAULT NULL,
  `Amount` decimal(18,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_itemmaster`
--

INSERT INTO `tbl_itemmaster` (`id`, `ItemName`, `Description`, `Group_Id`, `Comp_Id`, `Rate`, `Discount`, `TAX`, `Amount`, `created_at`, `updated_at`) VALUES
(1, 'Butter-Roti', 'Butter Roti', 1, 1, 10, 1, 2, 11, '2023-12-19 10:12:46', '2023-12-19 12:02:50'),
(3, 'Pulav', '100gm', 3, 1, 120, 2, 5, 123, '2023-12-19 10:18:49', '2023-12-19 10:18:49'),
(4, 'Tomato Soup', 'Tomato with Chips', 7, 1, 40, 2, 5, 43, '2023-12-19 10:45:19', '2023-12-19 12:11:30'),
(5, 'Noodles', 'des', 10, 1, 50, 1, 4, NULL, '2023-12-22 08:22:48', '2023-12-22 08:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_itemopclqtymaster`
--

CREATE TABLE `tbl_itemopclqtymaster` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `open_qty` decimal(18,0) DEFAULT NULL,
  `open_mtr_qty` decimal(18,0) DEFAULT NULL,
  `rate` decimal(18,0) DEFAULT NULL,
  `insert_time` datetime DEFAULT NULL,
  `insert_sys` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_sys` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `year_id` bigint(20) UNSIGNED NOT NULL,
  `comp_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ordermaster`
--

CREATE TABLE `tbl_ordermaster` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Order_No` decimal(18,0) DEFAULT NULL,
  `PreOrder_No` varchar(255) DEFAULT NULL,
  `Order_Date` date DEFAULT NULL,
  `Total_Amount` decimal(18,0) DEFAULT NULL,
  `Discount` decimal(18,0) DEFAULT NULL,
  `Net_Amount` decimal(18,0) DEFAULT NULL,
  `Advance_Amount` decimal(18,0) DEFAULT NULL,
  `Pending_Amount` decimal(18,0) DEFAULT NULL,
  `Account_Id` bigint(20) UNSIGNED NOT NULL,
  `SysAccount_Id` bigint(20) UNSIGNED NOT NULL,
  `Year_Id` bigint(20) UNSIGNED NOT NULL,
  `Comp_Id` bigint(20) UNSIGNED NOT NULL,
  `User_Id` bigint(20) UNSIGNED NOT NULL,
  `DeliveryTo` varchar(255) DEFAULT NULL,
  `InsertTime` datetime DEFAULT NULL,
  `InsertSys` varchar(255) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `UpdateSys` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_ordermaster`
--

INSERT INTO `tbl_ordermaster` (`id`, `Order_No`, `PreOrder_No`, `Order_Date`, `Total_Amount`, `Discount`, `Net_Amount`, `Advance_Amount`, `Pending_Amount`, `Account_Id`, `SysAccount_Id`, `Year_Id`, `Comp_Id`, `User_Id`, `DeliveryTo`, `InsertTime`, `InsertSys`, `UpdateTime`, `UpdateSys`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '2023-12-21', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-21 17:37:12', 'your_system_info', NULL, NULL, '1', '2023-12-21 12:07:12', '2023-12-21 12:07:12'),
(2, NULL, NULL, '2023-12-21', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-21 18:22:40', 'your_system_info', NULL, NULL, '1', '2023-12-21 12:52:40', '2023-12-21 12:52:40'),
(3, NULL, NULL, '2023-12-21', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-21 18:36:59', 'your_system_info', NULL, NULL, '1', '2023-12-21 13:06:59', '2023-12-21 13:06:59'),
(4, NULL, NULL, '2023-12-21', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-21 19:19:00', 'your_system_info', NULL, NULL, '2', '2023-12-21 13:49:01', '2023-12-21 16:01:43'),
(5, NULL, NULL, '2023-12-21', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-21 19:46:22', 'your_system_info', NULL, NULL, '1', '2023-12-21 14:16:22', '2023-12-21 14:16:22'),
(6, NULL, NULL, '2023-12-21', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-21 21:09:16', 'your_system_info', NULL, NULL, '2', '2023-12-21 15:39:16', '2023-12-21 16:01:55'),
(7, NULL, NULL, '2023-12-21', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-21 21:35:44', 'your_system_info', NULL, NULL, '2', '2023-12-21 16:05:44', '2023-12-21 16:05:46'),
(8, NULL, NULL, '2023-12-21', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-21 21:35:48', 'your_system_info', NULL, NULL, '2', '2023-12-21 16:05:48', '2023-12-21 16:07:53'),
(9, NULL, NULL, '2023-12-21', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-21 21:38:39', 'your_system_info', NULL, NULL, '2', '2023-12-21 16:08:39', '2023-12-21 21:44:45'),
(10, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 03:19:52', 'your_system_info', NULL, NULL, '2', '2023-12-21 21:49:52', '2023-12-21 22:01:36'),
(11, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 03:19:59', 'your_system_info', NULL, NULL, '2', '2023-12-21 21:49:59', '2023-12-21 22:01:34'),
(12, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 03:32:39', 'your_system_info', NULL, NULL, '2', '2023-12-21 22:02:39', '2023-12-21 22:02:42'),
(13, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 03:32:47', 'your_system_info', NULL, NULL, '2', '2023-12-21 22:02:47', '2023-12-21 23:41:30'),
(14, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 05:13:05', 'your_system_info', NULL, NULL, '2', '2023-12-21 23:43:05', '2023-12-22 01:07:29'),
(15, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 05:13:29', 'your_system_info', NULL, NULL, '2', '2023-12-21 23:43:29', '2023-12-21 23:45:53'),
(16, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-22 06:32:43', 'your_system_info', NULL, NULL, '2', '2023-12-22 01:02:43', '2023-12-22 01:07:25'),
(17, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 3, 'Customer Name', '2023-12-22 06:35:43', 'your_system_info', NULL, NULL, '2', '2023-12-22 01:05:43', '2023-12-22 01:08:09'),
(18, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 06:37:19', 'your_system_info', NULL, NULL, '1', '2023-12-22 01:07:19', '2023-12-22 01:07:19'),
(19, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 06:37:51', 'your_system_info', NULL, NULL, '1', '2023-12-22 01:07:51', '2023-12-22 01:07:51'),
(20, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 06:39:11', 'your_system_info', NULL, NULL, '1', '2023-12-22 01:09:11', '2023-12-22 01:09:11'),
(21, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 06:40:33', 'your_system_info', NULL, NULL, '1', '2023-12-22 01:10:33', '2023-12-22 01:10:33'),
(22, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 06:41:35', 'your_system_info', NULL, NULL, '2', '2023-12-22 01:11:35', '2023-12-22 01:12:14'),
(23, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 06:41:57', 'your_system_info', NULL, NULL, '1', '2023-12-22 01:11:57', '2023-12-22 01:11:57'),
(24, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 3, 'Customer Name', '2023-12-22 06:42:20', 'your_system_info', NULL, NULL, '1', '2023-12-22 01:12:20', '2023-12-22 01:12:20'),
(25, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 06:43:14', 'your_system_info', NULL, NULL, '2', '2023-12-22 01:13:14', '2023-12-22 01:13:21'),
(26, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 06:44:45', 'your_system_info', NULL, NULL, '2', '2023-12-22 01:14:45', '2023-12-22 01:15:00'),
(27, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 06:44:45', 'your_system_info', NULL, NULL, '1', '2023-12-22 01:14:45', '2023-12-22 01:14:45'),
(28, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 06:44:54', 'your_system_info', NULL, NULL, '2', '2023-12-22 01:14:54', '2023-12-22 01:15:45'),
(29, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 06:46:14', 'your_system_info', NULL, NULL, '2', '2023-12-22 01:16:14', '2023-12-22 01:17:41'),
(30, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 06:47:46', 'your_system_info', NULL, NULL, '2', '2023-12-22 01:17:46', '2023-12-22 01:17:50'),
(31, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 06:48:07', 'your_system_info', NULL, NULL, '2', '2023-12-22 01:18:07', '2023-12-22 01:33:25'),
(32, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-22 07:03:33', 'your_system_info', NULL, NULL, '2', '2023-12-22 01:33:33', '2023-12-22 01:34:05'),
(33, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-22 07:03:55', 'your_system_info', NULL, NULL, '2', '2023-12-22 01:33:55', '2023-12-22 02:52:29'),
(34, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-22 08:20:01', 'your_system_info', NULL, NULL, '2', '2023-12-22 02:50:01', '2023-12-22 02:52:38'),
(35, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-22 08:22:40', 'your_system_info', NULL, NULL, '2', '2023-12-22 02:52:40', '2023-12-22 02:52:45'),
(36, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-22 08:23:31', 'your_system_info', NULL, NULL, '2', '2023-12-22 02:53:31', '2023-12-22 02:53:40'),
(37, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-22 08:23:43', 'your_system_info', NULL, NULL, '2', '2023-12-22 02:53:43', '2023-12-22 02:53:47'),
(38, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-22 08:23:52', 'your_system_info', NULL, NULL, '2', '2023-12-22 02:53:52', '2023-12-22 02:53:58'),
(39, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-22 08:24:02', 'your_system_info', NULL, NULL, '2', '2023-12-22 02:54:03', '2023-12-22 02:54:25'),
(40, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-22 08:24:04', 'your_system_info', NULL, NULL, '2', '2023-12-22 02:54:04', '2023-12-22 02:54:24'),
(41, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-22 08:24:05', 'your_system_info', NULL, NULL, '2', '2023-12-22 02:54:05', '2023-12-22 02:54:23'),
(42, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Customer Name', '2023-12-22 08:28:48', 'your_system_info', NULL, NULL, '2', '2023-12-22 02:58:48', '2023-12-22 03:48:31'),
(43, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 09:19:16', 'your_system_info', NULL, NULL, '2', '2023-12-22 03:49:16', '2023-12-22 08:15:32'),
(44, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 13:45:26', 'your_system_info', NULL, NULL, '2', '2023-12-22 08:15:26', '2023-12-22 08:15:30'),
(45, NULL, NULL, '2023-12-22', 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 'Customer Name', '2023-12-22 13:45:53', 'your_system_info', NULL, NULL, '2', '2023-12-22 08:15:53', '2023-12-22 08:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ordertrans`
--

CREATE TABLE `tbl_ordertrans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `qty` decimal(18,0) DEFAULT NULL,
  `rate` decimal(18,0) DEFAULT NULL,
  `discount1` decimal(18,0) DEFAULT NULL,
  `discount2` decimal(18,0) DEFAULT NULL,
  `amount` decimal(18,0) DEFAULT NULL,
  `disc_amt1` decimal(18,0) DEFAULT NULL,
  `disc_amt2` decimal(18,0) DEFAULT NULL,
  `no_of_qty` decimal(18,0) DEFAULT NULL,
  `sgst_tax` decimal(18,0) DEFAULT NULL,
  `sgst_amt` decimal(18,0) DEFAULT NULL,
  `cgst_tax` decimal(18,0) DEFAULT NULL,
  `cgst_amt` decimal(18,0) DEFAULT NULL,
  `igst_tax` decimal(18,0) DEFAULT NULL,
  `igst_amt` decimal(18,0) DEFAULT NULL,
  `meter_lt` decimal(18,0) DEFAULT NULL,
  `serial1` varchar(255) DEFAULT NULL,
  `serial2` varchar(255) DEFAULT NULL,
  `insert_time` datetime DEFAULT NULL,
  `insert_sys` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_sys` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `is_free_qty` varchar(255) DEFAULT NULL,
  `item_order` decimal(18,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_ordertrans`
--

INSERT INTO `tbl_ordertrans` (`id`, `order_id`, `item_id`, `qty`, `rate`, `discount1`, `discount2`, `amount`, `disc_amt1`, `disc_amt2`, `no_of_qty`, `sgst_tax`, `sgst_amt`, `cgst_tax`, `cgst_amt`, `igst_tax`, `igst_amt`, `meter_lt`, `serial1`, `serial2`, `insert_time`, `insert_sys`, `update_time`, `update_sys`, `remarks`, `is_free_qty`, `item_order`, `created_at`, `updated_at`) VALUES
(11, 4, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-21 13:55:12', '2023-12-22 03:06:29'),
(12, 5, 3, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-21 14:16:31', '2023-12-21 15:19:56'),
(13, 4, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-21 15:11:00', '2023-12-21 15:22:40'),
(14, 4, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-21 15:23:08', '2023-12-22 03:50:40'),
(15, 8, 3, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-21 16:07:45', '2023-12-21 23:45:19'),
(16, 9, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-21 16:08:48', '2023-12-21 23:45:20'),
(17, 10, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-21 21:50:12', '2023-12-22 01:16:53'),
(18, 15, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-21 23:44:13', '2023-12-22 01:16:56'),
(19, 29, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-22 01:16:32', '2023-12-22 01:17:03'),
(20, 31, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-22 01:18:33', '2023-12-22 02:56:00'),
(21, 42, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-22 02:59:09', '2023-12-22 02:59:31'),
(22, 43, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-12-22 03:49:49', '2023-12-22 03:49:49'),
(23, 43, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-12-22 03:49:56', '2023-12-22 03:49:56'),
(24, 45, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-12-22 08:17:35', '2023-12-22 08:17:35'),
(25, 45, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-12-22 08:17:47', '2023-12-22 08:17:47'),
(26, 45, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-22 08:17:56', '2023-12-22 08:18:50'),
(27, 45, 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-22 08:23:20', '2023-12-22 08:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchasebillmaster`
--

CREATE TABLE `tbl_purchasebillmaster` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Account_Id` bigint(20) UNSIGNED NOT NULL,
  `Purchase_Id` bigint(20) UNSIGNED NOT NULL,
  `Bill_No` decimal(18,0) DEFAULT NULL,
  `PreBill_No` varchar(255) DEFAULT NULL,
  `Bill_Date` date DEFAULT NULL,
  `Net_Amount` decimal(18,0) DEFAULT NULL,
  `Advance_Amount` decimal(18,0) DEFAULT NULL,
  `Pending_Amount` decimal(18,0) DEFAULT NULL,
  `User_Id` bigint(20) UNSIGNED NOT NULL,
  `Year_Id` bigint(20) UNSIGNED NOT NULL,
  `Comp_Id` bigint(20) UNSIGNED NOT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `PaymentCompleteDate` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchasemaster`
--

CREATE TABLE `tbl_purchasemaster` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Bill_No` bigint(20) UNSIGNED NOT NULL,
  `PreBill_No` varchar(255) DEFAULT NULL,
  `Bill_Date` date DEFAULT NULL,
  `Total_Amount` decimal(18,0) DEFAULT NULL,
  `Discount` decimal(18,0) DEFAULT NULL,
  `Net_Amount` decimal(18,0) DEFAULT NULL,
  `Advance_Amount` decimal(18,0) NOT NULL,
  `Pending_Amount` decimal(18,0) DEFAULT NULL,
  `Account_Id` bigint(20) UNSIGNED NOT NULL,
  `SysAccount_Id` bigint(20) UNSIGNED NOT NULL,
  `Year_Id` bigint(20) UNSIGNED NOT NULL,
  `Comp_Id` bigint(20) UNSIGNED NOT NULL,
  `User_Id` bigint(20) UNSIGNED NOT NULL,
  `Account_TransId` bigint(20) UNSIGNED NOT NULL,
  `DeliveryTo` varchar(255) DEFAULT NULL,
  `OrderNo` decimal(18,0) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `InsertTime` datetime DEFAULT NULL,
  `InsertSys` varchar(255) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `UpdateSys` varchar(255) DEFAULT NULL,
  `Supplier_Name` varchar(255) DEFAULT NULL,
  `Supplier_Address` varchar(255) DEFAULT NULL,
  `Supplier_RegNo` varchar(255) DEFAULT NULL,
  `Supplier_Division` varchar(255) DEFAULT NULL,
  `Supplier_ECCNo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchasetransaction`
--

CREATE TABLE `tbl_purchasetransaction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Purchase_Id` bigint(20) UNSIGNED NOT NULL,
  `Item_Id` bigint(20) UNSIGNED NOT NULL,
  `Qty` decimal(18,0) DEFAULT NULL,
  `Rate` decimal(18,0) DEFAULT NULL,
  `Discount1` decimal(18,0) DEFAULT NULL,
  `Discount2` decimal(18,0) DEFAULT NULL,
  `Amount` decimal(18,0) DEFAULT NULL,
  `DiscAmt1` decimal(18,0) DEFAULT NULL,
  `DiscAmt2` decimal(18,0) DEFAULT NULL,
  `NoOfQty` decimal(18,0) DEFAULT NULL,
  `SGSTTax` decimal(18,0) DEFAULT NULL,
  `SGSTAmt` decimal(18,0) DEFAULT NULL,
  `CGSTTax` decimal(18,0) DEFAULT NULL,
  `CGSTAmt` decimal(18,0) DEFAULT NULL,
  `IGSTTax` decimal(18,0) DEFAULT NULL,
  `IGSTAmt` decimal(18,0) DEFAULT NULL,
  `MeterLT` decimal(18,0) DEFAULT NULL,
  `Serial1` varchar(255) DEFAULT NULL,
  `Serial2` varchar(255) DEFAULT NULL,
  `InsertTime` datetime DEFAULT NULL,
  `InsertSys` varchar(255) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `UpdateSys` varchar(255) DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `IsFreeQty` varchar(255) DEFAULT NULL,
  `ItemOrder` decimal(18,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salesbillmaster`
--

CREATE TABLE `tbl_salesbillmaster` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Account_Id` bigint(20) UNSIGNED NOT NULL,
  `Sales_Id` bigint(20) UNSIGNED NOT NULL,
  `Bill_No` bigint(20) UNSIGNED DEFAULT NULL,
  `PreBill_No` varchar(255) DEFAULT NULL,
  `Bill_Date` date DEFAULT NULL,
  `Net_Amount` decimal(18,0) DEFAULT NULL,
  `Advance_Amount` decimal(18,0) DEFAULT NULL,
  `Pending_Amount` decimal(18,0) DEFAULT NULL,
  `User_Id` bigint(20) UNSIGNED NOT NULL,
  `Year_Id` bigint(20) UNSIGNED NOT NULL,
  `Comp_Id` bigint(20) UNSIGNED NOT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `PaymentCompleteDate` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salesmaster`
--

CREATE TABLE `tbl_salesmaster` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Bill_No` bigint(20) UNSIGNED NOT NULL,
  `PreBill_No` varchar(255) DEFAULT NULL,
  `Bill_Date` date DEFAULT NULL,
  `Total_Amount` decimal(18,0) DEFAULT NULL,
  `Discount` decimal(18,0) DEFAULT NULL,
  `Net_Amount` decimal(18,0) DEFAULT NULL,
  `Advance_Amount` decimal(18,0) DEFAULT NULL,
  `Pending_Amount` decimal(18,0) DEFAULT NULL,
  `SysAccount_Id` bigint(20) UNSIGNED NOT NULL,
  `Account_Id` bigint(20) UNSIGNED NOT NULL,
  `Year_Id` bigint(20) UNSIGNED NOT NULL,
  `Comp_Id` bigint(20) UNSIGNED NOT NULL,
  `User_Id` bigint(20) UNSIGNED NOT NULL,
  `Account_TransId` bigint(20) UNSIGNED NOT NULL,
  `DeliveryTo` varchar(255) DEFAULT NULL,
  `OrderNo` bigint(20) UNSIGNED DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `InsertTime` datetime DEFAULT NULL,
  `InsertSys` varchar(255) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `UpdateSys` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salestransaction`
--

CREATE TABLE `tbl_salestransaction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Sales_Id` bigint(20) UNSIGNED NOT NULL,
  `Item_Id` bigint(20) UNSIGNED NOT NULL,
  `Qty` decimal(18,0) DEFAULT NULL,
  `Rate` decimal(18,0) DEFAULT NULL,
  `Discount1` decimal(18,0) DEFAULT NULL,
  `Discount2` decimal(18,0) DEFAULT NULL,
  `Amount` decimal(18,0) DEFAULT NULL,
  `DiscAmt1` decimal(18,0) DEFAULT NULL,
  `DiscAmt2` decimal(18,0) DEFAULT NULL,
  `NoOfQty` decimal(18,0) DEFAULT NULL,
  `SGSTTax` decimal(18,0) DEFAULT NULL,
  `SGSTAmt` decimal(18,0) DEFAULT NULL,
  `CGSTTax` decimal(18,0) DEFAULT NULL,
  `CGSTAmt` decimal(18,0) DEFAULT NULL,
  `IGSTTax` decimal(18,0) DEFAULT NULL,
  `IGSTAmt` decimal(18,0) DEFAULT NULL,
  `MeterLT` decimal(18,0) DEFAULT NULL,
  `Serial1` varchar(255) DEFAULT NULL,
  `Serial2` varchar(255) DEFAULT NULL,
  `InsertTime` datetime DEFAULT NULL,
  `InsertSys` varchar(255) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `UpdateSys` varchar(255) DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `IsFreeQty` varchar(255) DEFAULT NULL,
  `ItemOrder` decimal(18,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_systemaccount`
--

CREATE TABLE `tbl_systemaccount` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `SysAccountName` varchar(255) DEFAULT NULL,
  `Year_Id` bigint(20) UNSIGNED NOT NULL,
  `Comp_Id` bigint(20) UNSIGNED NOT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_systemaccount`
--

INSERT INTO `tbl_systemaccount` (`id`, `SysAccountName`, `Year_Id`, `Comp_Id`, `Remarks`, `created_at`, `updated_at`) VALUES
(1, 'SalesAccount', 1, 1, 'For Sales', '2023-12-15 20:48:23', NULL),
(2, 'PurchaseAccount', 1, 1, 'For Purchase', '2023-12-15 20:48:23', NULL),
(3, 'SalesReturnAccount', 1, 1, 'For SalesReturn', '2023-12-15 20:52:03', NULL),
(4, 'PurchaseReturnAccount', 1, 1, 'For PurchaseReturn', '2023-12-15 20:52:03', NULL),
(5, 'CashReceiveAccount', 1, 1, 'For Cash Receive', NULL, NULL),
(6, 'BankReceiveAccount', 1, 1, 'For Bank Receive', NULL, NULL),
(7, 'CashPayment', 1, 1, 'For Cash Payment', NULL, NULL),
(8, 'BankPayment', 1, 1, 'For Bank Payment', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tabledetails`
--

CREATE TABLE `tbl_tabledetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `tablegroupid` bigint(20) UNSIGNED DEFAULT NULL,
  `isactive` int(11) DEFAULT NULL,
  `isdeleted` int(11) DEFAULT NULL,
  `charges` bigint(20) UNSIGNED DEFAULT NULL,
  `userid` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `assignuserid` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_tabledetails`
--

INSERT INTO `tbl_tabledetails` (`id`, `name`, `tablegroupid`, `isactive`, `isdeleted`, `charges`, `userid`, `created_at`, `updated_at`, `assignuserid`) VALUES
(1, 'Ac 1', 1, 1, NULL, 20, 1, '2023-12-17 13:39:51', '2023-12-22 08:15:30', 3),
(2, 'NAc 2', 2, 1, NULL, 10, 1, '2023-12-17 14:17:26', '2023-12-21 22:02:24', 5),
(3, 'Ac 2', 3, 1, NULL, 40, 1, '2023-12-17 14:28:55', '2023-12-22 08:15:32', 3),
(4, 'Ac 3', 5, 1, NULL, 30, 1, '2023-12-18 10:07:24', '2023-12-22 08:24:30', 3),
(5, 'NAc 1', 4, 1, NULL, 10, 1, '2023-12-19 14:16:23', '2023-12-22 02:54:24', 5),
(6, 'NAc 3', 6, 1, NULL, 20, 1, '2023-12-19 15:05:29', '2023-12-22 02:54:25', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tablegroup`
--

CREATE TABLE `tbl_tablegroup` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roomtype` varchar(255) NOT NULL,
  `tabletype` varchar(255) NOT NULL,
  `person` bigint(20) UNSIGNED DEFAULT NULL,
  `isactive` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_tablegroup`
--

INSERT INTO `tbl_tablegroup` (`id`, `roomtype`, `tabletype`, `person`, `isactive`, `created_at`, `updated_at`) VALUES
(1, 'AC', 'Small', 2, 1, '2023-12-15 20:55:53', '2023-12-17 08:31:37'),
(2, 'Non-AC', 'Small', 2, 1, '2023-12-15 20:55:53', NULL),
(3, 'AC', 'Medium', 4, 1, '2023-12-15 20:59:35', NULL),
(4, 'Non-AC', 'Medium', 4, 1, '2023-12-15 20:59:35', NULL),
(5, 'AC', 'Big', 6, 1, '2023-12-15 21:01:17', NULL),
(6, 'Non-AC', 'Big', 6, 1, '2023-12-15 21:01:17', NULL),
(7, 'AC', 'Large', 8, 1, '2023-12-15 21:03:06', NULL),
(8, 'Non-AC', 'Large', 8, 1, '2023-12-15 21:03:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tempmaster`
--

CREATE TABLE `tbl_tempmaster` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year_id` bigint(20) UNSIGNED NOT NULL,
  `comp_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `insert_time` datetime DEFAULT NULL,
  `insert_sys` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_sys` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temptrans`
--

CREATE TABLE `tbl_temptrans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `temp_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `qty` decimal(18,0) DEFAULT NULL,
  `rate` decimal(18,0) DEFAULT NULL,
  `discount1` decimal(18,0) DEFAULT NULL,
  `discount2` decimal(18,0) DEFAULT NULL,
  `amount` decimal(18,0) DEFAULT NULL,
  `disc_amt1` decimal(18,0) DEFAULT NULL,
  `disc_amt2` decimal(18,0) DEFAULT NULL,
  `no_of_qty` decimal(18,0) DEFAULT NULL,
  `sgst_tax` decimal(18,0) DEFAULT NULL,
  `sgst_amt` decimal(18,0) DEFAULT NULL,
  `cgst_tax` decimal(18,0) DEFAULT NULL,
  `cgst_amt` decimal(18,0) DEFAULT NULL,
  `igst_tax` decimal(18,0) DEFAULT NULL,
  `igst_amt` decimal(18,0) DEFAULT NULL,
  `meter_lt` decimal(18,0) DEFAULT NULL,
  `serial1` varchar(255) DEFAULT NULL,
  `serial2` varchar(255) DEFAULT NULL,
  `insert_time` datetime DEFAULT NULL,
  `insert_sys` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_sys` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `is_free_qty` varchar(255) DEFAULT NULL,
  `item_order` decimal(18,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaction`
--

CREATE TABLE `tbl_transaction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Trans_Date` date DEFAULT NULL,
  `Trasaction_Id` bigint(20) UNSIGNED NOT NULL,
  `Trans_Type` varchar(255) DEFAULT NULL,
  `Sys_Account_Id` bigint(20) UNSIGNED NOT NULL,
  `Dr_Amt` decimal(18,0) DEFAULT NULL,
  `Cr_Amt` decimal(18,0) DEFAULT NULL,
  `Cheque` varchar(255) DEFAULT NULL,
  `BankDetail` varchar(255) DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `Bill_No` varchar(255) DEFAULT NULL,
  `InsertTime` datetime DEFAULT NULL,
  `InsertSys` varchar(255) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `UpdateSys` varchar(255) DEFAULT NULL,
  `Comp_Id` bigint(20) UNSIGNED NOT NULL,
  `Year_Id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userdetails`
--

CREATE TABLE `tbl_userdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `UserGroup_Id` bigint(20) UNSIGNED NOT NULL,
  `User_Name` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `IsDisable` int(11) DEFAULT NULL,
  `Comp_Id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_userdetails`
--

INSERT INTO `tbl_userdetails` (`id`, `UserGroup_Id`, `User_Name`, `Password`, `Email`, `Type`, `IsDisable`, `Comp_Id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Siddharth', 'sid@123', 'sidh@gmail.com', 'owner', 0, 1, '2023-12-16 07:32:05', NULL),
(2, 2, 'Mitesh', 'mitesh@123', 'mitesh@gmail.com', 'manager of restro', 0, 1, '2023-12-16 15:50:19', NULL),
(3, 3, 'Rahul', 'rahul@123', 'rahul@gmail.com', 'Waiter of A1 table', 0, 1, '2023-12-16 15:34:10', '2023-12-16 15:34:10'),
(4, 4, 'Moiz', 'moiz@123', 'moiz@gmail.com', 'chef of the restro', 0, 1, '2023-12-16 15:39:17', '2023-12-16 15:39:17'),
(5, 3, 'Nipun', 'nipun@123', 'nipun@gmail.com', '2nd waiter of restaurant', 0, 1, '2023-12-19 14:37:37', '2023-12-19 14:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usergroup`
--

CREATE TABLE `tbl_usergroup` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_usergroup`
--

INSERT INTO `tbl_usergroup` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'Restaurant- owner / partner \r\nItem Reports\r\nTransaction Reports \r\nSales,Purchase,SalesReturn,PurchaseReturn\r\nTable Management\r\nAll Reports', NULL, NULL),
(2, 'Admin', 'Restaurant-Manager\r\nTable Management\r\nInventory Management\r\nInvoice Generating - after order complete\r\nWatch For next Customer', '2023-12-15 20:09:09', NULL),
(3, 'User-Waiter', 'Restaurant Waiter\nCan Generate Order\nCan Manage Table\nTableWise Waiter', '2023-12-15 20:14:04', NULL),
(4, 'User-Chef', 'Can Manage Order\r\nCan Manage Item Open & Close Qty', '2023-12-15 20:17:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_yearmaster`
--

CREATE TABLE `tbl_yearmaster` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `YearName` varchar(255) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_yearmaster`
--

INSERT INTO `tbl_yearmaster` (`id`, `YearName`, `StartDate`, `EndDate`, `created_at`, `updated_at`) VALUES
(1, '2023-2024', '2023-04-01', '2024-03-31', NULL, NULL);

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dashboardmenu`
--
ALTER TABLE `dashboardmenu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboardmenu_usergroup_id_foreign` (`usergroup_id`),
  ADD KEY `dashboardmenu_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tabletransactions`
--
ALTER TABLE `tabletransactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tabletransactions_table_id_foreign` (`table_id`),
  ADD KEY `tabletransactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `tbl_accountmaster`
--
ALTER TABLE `tbl_accountmaster`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_accountmaster_comp_id_foreign` (`Comp_Id`),
  ADD KEY `tbl_accountmaster_user_id_foreign` (`User_Id`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_itemgroup`
--
ALTER TABLE `tbl_itemgroup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_itemgroup_comp_id_foreign` (`Comp_Id`);

--
-- Indexes for table `tbl_itemmaster`
--
ALTER TABLE `tbl_itemmaster`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_itemmaster_comp_id_foreign` (`Comp_Id`),
  ADD KEY `tbl_itemmaster_group_id_foreign` (`Group_Id`);

--
-- Indexes for table `tbl_itemopclqtymaster`
--
ALTER TABLE `tbl_itemopclqtymaster`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_itemopclqtymaster_item_id_foreign` (`item_id`),
  ADD KEY `tbl_itemopclqtymaster_comp_id_foreign` (`comp_id`),
  ADD KEY `tbl_itemopclqtymaster_user_id_foreign` (`user_id`),
  ADD KEY `tbl_itemopclqtymaster_year_id_foreign` (`year_id`);

--
-- Indexes for table `tbl_ordermaster`
--
ALTER TABLE `tbl_ordermaster`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_ordermaster_account_id_foreign` (`Account_Id`),
  ADD KEY `tbl_ordermaster_sysaccount_id_foreign` (`SysAccount_Id`),
  ADD KEY `tbl_ordermaster_year_id_foreign` (`Year_Id`),
  ADD KEY `tbl_ordermaster_comp_id_foreign` (`Comp_Id`),
  ADD KEY `tbl_ordermaster_user_id_foreign` (`User_Id`);

--
-- Indexes for table `tbl_ordertrans`
--
ALTER TABLE `tbl_ordertrans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_ordertrans_item_id_foreign` (`item_id`),
  ADD KEY `tbl_ordertrans_order_id_foreign` (`order_id`);

--
-- Indexes for table `tbl_purchasebillmaster`
--
ALTER TABLE `tbl_purchasebillmaster`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_purchasebillmaster_account_id_foreign` (`Account_Id`),
  ADD KEY `tbl_purchasebillmaster_purchase_id_foreign` (`Purchase_Id`),
  ADD KEY `tbl_purchasebillmaster_user_id_foreign` (`User_Id`),
  ADD KEY `tbl_purchasebillmaster_year_id_foreign` (`Year_Id`),
  ADD KEY `tbl_purchasebillmaster_comp_id_foreign` (`Comp_Id`);

--
-- Indexes for table `tbl_purchasemaster`
--
ALTER TABLE `tbl_purchasemaster`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_purchasemaster_account_transid_foreign` (`Account_TransId`),
  ADD KEY `tbl_purchasemaster_comp_id_foreign` (`Comp_Id`),
  ADD KEY `tbl_purchasemaster_account_id_foreign` (`Account_Id`),
  ADD KEY `tbl_purchasemaster_sysaccount_id_foreign` (`SysAccount_Id`),
  ADD KEY `tbl_purchasemaster_user_id_foreign` (`User_Id`),
  ADD KEY `tbl_purchasemaster_year_id_foreign` (`Year_Id`);

--
-- Indexes for table `tbl_purchasetransaction`
--
ALTER TABLE `tbl_purchasetransaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_purchasetransaction_item_id_foreign` (`Item_Id`),
  ADD KEY `tbl_purchasetransaction_purchase_id_foreign` (`Purchase_Id`);

--
-- Indexes for table `tbl_salesbillmaster`
--
ALTER TABLE `tbl_salesbillmaster`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_salesbillmaster_comp_id_foreign` (`Comp_Id`),
  ADD KEY `tbl_salesbillmaster_account_id_foreign` (`Account_Id`),
  ADD KEY `tbl_salesbillmaster_sales_id_foreign` (`Sales_Id`),
  ADD KEY `tbl_salesbillmaster_user_id_foreign` (`User_Id`),
  ADD KEY `tbl_salesbillmaster_year_id_foreign` (`Year_Id`);

--
-- Indexes for table `tbl_salesmaster`
--
ALTER TABLE `tbl_salesmaster`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_salesmaster_account_transid_foreign` (`Account_TransId`),
  ADD KEY `tbl_salesmaster_comp_id_foreign` (`Comp_Id`),
  ADD KEY `tbl_salesmaster_account_id_foreign` (`Account_Id`),
  ADD KEY `tbl_salesmaster_sysaccount_id_foreign` (`SysAccount_Id`),
  ADD KEY `tbl_salesmaster_user_id_foreign` (`User_Id`),
  ADD KEY `tbl_salesmaster_year_id_foreign` (`Year_Id`);

--
-- Indexes for table `tbl_salestransaction`
--
ALTER TABLE `tbl_salestransaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_salestransaction_item_id_foreign` (`Item_Id`),
  ADD KEY `tbl_salestransaction_sales_id_foreign` (`Sales_Id`);

--
-- Indexes for table `tbl_systemaccount`
--
ALTER TABLE `tbl_systemaccount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_systemaccount_comp_id_foreign` (`Comp_Id`),
  ADD KEY `tbl_systemaccount_year_id_foreign` (`Year_Id`);

--
-- Indexes for table `tbl_tabledetails`
--
ALTER TABLE `tbl_tabledetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_tabledetails_tablegroupid_foreign` (`tablegroupid`),
  ADD KEY `tbl_tabledetails_userid_foreign` (`userid`),
  ADD KEY `tbl_table_userid_forassign` (`assignuserid`);

--
-- Indexes for table `tbl_tablegroup`
--
ALTER TABLE `tbl_tablegroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tempmaster`
--
ALTER TABLE `tbl_tempmaster`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_tempmaster_year_id_foreign` (`year_id`),
  ADD KEY `tbl_tempmaster_comp_id_foreign` (`comp_id`),
  ADD KEY `tbl_tempmaster_user_id_foreign` (`user_id`);

--
-- Indexes for table `tbl_temptrans`
--
ALTER TABLE `tbl_temptrans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_temptrans_item_id_foreign` (`item_id`),
  ADD KEY `tbl_temptrans_temp_id_foreign` (`temp_id`);

--
-- Indexes for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_transaction_comp_id_foreign` (`Comp_Id`),
  ADD KEY `tbl_transaction_sys_account_id_foreign` (`Sys_Account_Id`),
  ADD KEY `tbl_transaction_year_id_foreign` (`Year_Id`);

--
-- Indexes for table `tbl_userdetails`
--
ALTER TABLE `tbl_userdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_userdetails_comp_id_foreign` (`Comp_Id`),
  ADD KEY `tbl_userdetails_usergroup_id_foreign` (`UserGroup_Id`);

--
-- Indexes for table `tbl_usergroup`
--
ALTER TABLE `tbl_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_yearmaster`
--
ALTER TABLE `tbl_yearmaster`
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
-- AUTO_INCREMENT for table `dashboardmenu`
--
ALTER TABLE `dashboardmenu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabletransactions`
--
ALTER TABLE `tabletransactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_accountmaster`
--
ALTER TABLE `tbl_accountmaster`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_itemgroup`
--
ALTER TABLE `tbl_itemgroup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_itemmaster`
--
ALTER TABLE `tbl_itemmaster`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_itemopclqtymaster`
--
ALTER TABLE `tbl_itemopclqtymaster`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ordermaster`
--
ALTER TABLE `tbl_ordermaster`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_ordertrans`
--
ALTER TABLE `tbl_ordertrans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_purchasebillmaster`
--
ALTER TABLE `tbl_purchasebillmaster`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchasemaster`
--
ALTER TABLE `tbl_purchasemaster`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchasetransaction`
--
ALTER TABLE `tbl_purchasetransaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salesbillmaster`
--
ALTER TABLE `tbl_salesbillmaster`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salesmaster`
--
ALTER TABLE `tbl_salesmaster`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salestransaction`
--
ALTER TABLE `tbl_salestransaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_systemaccount`
--
ALTER TABLE `tbl_systemaccount`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_tabledetails`
--
ALTER TABLE `tbl_tabledetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_tablegroup`
--
ALTER TABLE `tbl_tablegroup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_tempmaster`
--
ALTER TABLE `tbl_tempmaster`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_temptrans`
--
ALTER TABLE `tbl_temptrans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_userdetails`
--
ALTER TABLE `tbl_userdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_usergroup`
--
ALTER TABLE `tbl_usergroup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_yearmaster`
--
ALTER TABLE `tbl_yearmaster`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dashboardmenu`
--
ALTER TABLE `dashboardmenu`
  ADD CONSTRAINT `dashboardmenu_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `dashboardmenu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dashboardmenu_usergroup_id_foreign` FOREIGN KEY (`usergroup_id`) REFERENCES `tbl_usergroup` (`id`);

--
-- Constraints for table `tabletransactions`
--
ALTER TABLE `tabletransactions`
  ADD CONSTRAINT `tabletransactions_table_id_foreign` FOREIGN KEY (`table_id`) REFERENCES `tbl_tabledetails` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tabletransactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `tbl_userdetails` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_accountmaster`
--
ALTER TABLE `tbl_accountmaster`
  ADD CONSTRAINT `tbl_accountmaster_comp_id_foreign` FOREIGN KEY (`Comp_Id`) REFERENCES `tbl_company` (`id`),
  ADD CONSTRAINT `tbl_accountmaster_user_id_foreign` FOREIGN KEY (`User_Id`) REFERENCES `tbl_userdetails` (`id`);

--
-- Constraints for table `tbl_itemgroup`
--
ALTER TABLE `tbl_itemgroup`
  ADD CONSTRAINT `tbl_itemgroup_comp_id_foreign` FOREIGN KEY (`Comp_Id`) REFERENCES `tbl_company` (`id`);

--
-- Constraints for table `tbl_itemmaster`
--
ALTER TABLE `tbl_itemmaster`
  ADD CONSTRAINT `tbl_itemmaster_comp_id_foreign` FOREIGN KEY (`Comp_Id`) REFERENCES `tbl_company` (`id`),
  ADD CONSTRAINT `tbl_itemmaster_group_id_foreign` FOREIGN KEY (`Group_Id`) REFERENCES `tbl_itemgroup` (`id`);

--
-- Constraints for table `tbl_itemopclqtymaster`
--
ALTER TABLE `tbl_itemopclqtymaster`
  ADD CONSTRAINT `tbl_itemopclqtymaster_comp_id_foreign` FOREIGN KEY (`comp_id`) REFERENCES `tbl_company` (`id`),
  ADD CONSTRAINT `tbl_itemopclqtymaster_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `tbl_itemmaster` (`id`),
  ADD CONSTRAINT `tbl_itemopclqtymaster_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `tbl_userdetails` (`id`),
  ADD CONSTRAINT `tbl_itemopclqtymaster_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `tbl_yearmaster` (`id`);

--
-- Constraints for table `tbl_ordermaster`
--
ALTER TABLE `tbl_ordermaster`
  ADD CONSTRAINT `tbl_ordermaster_account_id_foreign` FOREIGN KEY (`Account_Id`) REFERENCES `tbl_accountmaster` (`id`),
  ADD CONSTRAINT `tbl_ordermaster_comp_id_foreign` FOREIGN KEY (`Comp_Id`) REFERENCES `tbl_company` (`id`),
  ADD CONSTRAINT `tbl_ordermaster_sysaccount_id_foreign` FOREIGN KEY (`SysAccount_Id`) REFERENCES `tbl_systemaccount` (`id`),
  ADD CONSTRAINT `tbl_ordermaster_user_id_foreign` FOREIGN KEY (`User_Id`) REFERENCES `tbl_userdetails` (`id`),
  ADD CONSTRAINT `tbl_ordermaster_year_id_foreign` FOREIGN KEY (`Year_Id`) REFERENCES `tbl_yearmaster` (`id`);

--
-- Constraints for table `tbl_ordertrans`
--
ALTER TABLE `tbl_ordertrans`
  ADD CONSTRAINT `tbl_ordertrans_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `tbl_itemmaster` (`id`),
  ADD CONSTRAINT `tbl_ordertrans_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `tbl_ordermaster` (`id`);

--
-- Constraints for table `tbl_purchasebillmaster`
--
ALTER TABLE `tbl_purchasebillmaster`
  ADD CONSTRAINT `tbl_purchasebillmaster_account_id_foreign` FOREIGN KEY (`Account_Id`) REFERENCES `tbl_accountmaster` (`id`),
  ADD CONSTRAINT `tbl_purchasebillmaster_comp_id_foreign` FOREIGN KEY (`Comp_Id`) REFERENCES `tbl_company` (`id`),
  ADD CONSTRAINT `tbl_purchasebillmaster_purchase_id_foreign` FOREIGN KEY (`Purchase_Id`) REFERENCES `tbl_purchasemaster` (`id`),
  ADD CONSTRAINT `tbl_purchasebillmaster_user_id_foreign` FOREIGN KEY (`User_Id`) REFERENCES `tbl_userdetails` (`id`),
  ADD CONSTRAINT `tbl_purchasebillmaster_year_id_foreign` FOREIGN KEY (`Year_Id`) REFERENCES `tbl_yearmaster` (`id`);

--
-- Constraints for table `tbl_purchasemaster`
--
ALTER TABLE `tbl_purchasemaster`
  ADD CONSTRAINT `tbl_purchasemaster_account_id_foreign` FOREIGN KEY (`Account_Id`) REFERENCES `tbl_accountmaster` (`id`),
  ADD CONSTRAINT `tbl_purchasemaster_account_transid_foreign` FOREIGN KEY (`Account_TransId`) REFERENCES `tbl_transaction` (`id`),
  ADD CONSTRAINT `tbl_purchasemaster_comp_id_foreign` FOREIGN KEY (`Comp_Id`) REFERENCES `tbl_company` (`id`),
  ADD CONSTRAINT `tbl_purchasemaster_sysaccount_id_foreign` FOREIGN KEY (`SysAccount_Id`) REFERENCES `tbl_systemaccount` (`id`),
  ADD CONSTRAINT `tbl_purchasemaster_user_id_foreign` FOREIGN KEY (`User_Id`) REFERENCES `tbl_userdetails` (`id`),
  ADD CONSTRAINT `tbl_purchasemaster_year_id_foreign` FOREIGN KEY (`Year_Id`) REFERENCES `tbl_yearmaster` (`id`);

--
-- Constraints for table `tbl_purchasetransaction`
--
ALTER TABLE `tbl_purchasetransaction`
  ADD CONSTRAINT `tbl_purchasetransaction_item_id_foreign` FOREIGN KEY (`Item_Id`) REFERENCES `tbl_itemmaster` (`id`),
  ADD CONSTRAINT `tbl_purchasetransaction_purchase_id_foreign` FOREIGN KEY (`Purchase_Id`) REFERENCES `tbl_purchasemaster` (`id`);

--
-- Constraints for table `tbl_salesbillmaster`
--
ALTER TABLE `tbl_salesbillmaster`
  ADD CONSTRAINT `tbl_salesbillmaster_account_id_foreign` FOREIGN KEY (`Account_Id`) REFERENCES `tbl_accountmaster` (`id`),
  ADD CONSTRAINT `tbl_salesbillmaster_comp_id_foreign` FOREIGN KEY (`Comp_Id`) REFERENCES `tbl_company` (`id`),
  ADD CONSTRAINT `tbl_salesbillmaster_sales_id_foreign` FOREIGN KEY (`Sales_Id`) REFERENCES `tbl_salesmaster` (`id`),
  ADD CONSTRAINT `tbl_salesbillmaster_user_id_foreign` FOREIGN KEY (`User_Id`) REFERENCES `tbl_userdetails` (`id`),
  ADD CONSTRAINT `tbl_salesbillmaster_year_id_foreign` FOREIGN KEY (`Year_Id`) REFERENCES `tbl_yearmaster` (`id`);

--
-- Constraints for table `tbl_salesmaster`
--
ALTER TABLE `tbl_salesmaster`
  ADD CONSTRAINT `tbl_salesmaster_account_id_foreign` FOREIGN KEY (`Account_Id`) REFERENCES `tbl_accountmaster` (`id`),
  ADD CONSTRAINT `tbl_salesmaster_account_transid_foreign` FOREIGN KEY (`Account_TransId`) REFERENCES `tbl_transaction` (`id`),
  ADD CONSTRAINT `tbl_salesmaster_comp_id_foreign` FOREIGN KEY (`Comp_Id`) REFERENCES `tbl_company` (`id`),
  ADD CONSTRAINT `tbl_salesmaster_sysaccount_id_foreign` FOREIGN KEY (`SysAccount_Id`) REFERENCES `tbl_systemaccount` (`id`),
  ADD CONSTRAINT `tbl_salesmaster_user_id_foreign` FOREIGN KEY (`User_Id`) REFERENCES `tbl_userdetails` (`id`),
  ADD CONSTRAINT `tbl_salesmaster_year_id_foreign` FOREIGN KEY (`Year_Id`) REFERENCES `tbl_yearmaster` (`id`);

--
-- Constraints for table `tbl_salestransaction`
--
ALTER TABLE `tbl_salestransaction`
  ADD CONSTRAINT `tbl_salestransaction_item_id_foreign` FOREIGN KEY (`Item_Id`) REFERENCES `tbl_itemmaster` (`id`),
  ADD CONSTRAINT `tbl_salestransaction_sales_id_foreign` FOREIGN KEY (`Sales_Id`) REFERENCES `tbl_salesmaster` (`id`);

--
-- Constraints for table `tbl_systemaccount`
--
ALTER TABLE `tbl_systemaccount`
  ADD CONSTRAINT `tbl_systemaccount_comp_id_foreign` FOREIGN KEY (`Comp_Id`) REFERENCES `tbl_company` (`id`),
  ADD CONSTRAINT `tbl_systemaccount_year_id_foreign` FOREIGN KEY (`Year_Id`) REFERENCES `tbl_yearmaster` (`id`);

--
-- Constraints for table `tbl_tabledetails`
--
ALTER TABLE `tbl_tabledetails`
  ADD CONSTRAINT `tbl_table_userid_forassign` FOREIGN KEY (`assignuserid`) REFERENCES `tbl_userdetails` (`id`),
  ADD CONSTRAINT `tbl_tabledetails_tablegroupid_foreign` FOREIGN KEY (`tablegroupid`) REFERENCES `tbl_tablegroup` (`id`),
  ADD CONSTRAINT `tbl_tabledetails_userid_foreign` FOREIGN KEY (`userid`) REFERENCES `tbl_userdetails` (`id`);

--
-- Constraints for table `tbl_tempmaster`
--
ALTER TABLE `tbl_tempmaster`
  ADD CONSTRAINT `tbl_tempmaster_comp_id_foreign` FOREIGN KEY (`comp_id`) REFERENCES `tbl_company` (`id`),
  ADD CONSTRAINT `tbl_tempmaster_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `tbl_userdetails` (`id`),
  ADD CONSTRAINT `tbl_tempmaster_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `tbl_yearmaster` (`id`);

--
-- Constraints for table `tbl_temptrans`
--
ALTER TABLE `tbl_temptrans`
  ADD CONSTRAINT `tbl_temptrans_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `tbl_itemmaster` (`id`),
  ADD CONSTRAINT `tbl_temptrans_temp_id_foreign` FOREIGN KEY (`temp_id`) REFERENCES `tbl_tempmaster` (`id`);

--
-- Constraints for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  ADD CONSTRAINT `tbl_transaction_comp_id_foreign` FOREIGN KEY (`Comp_Id`) REFERENCES `tbl_company` (`id`),
  ADD CONSTRAINT `tbl_transaction_sys_account_id_foreign` FOREIGN KEY (`Sys_Account_Id`) REFERENCES `tbl_systemaccount` (`id`),
  ADD CONSTRAINT `tbl_transaction_year_id_foreign` FOREIGN KEY (`Year_Id`) REFERENCES `tbl_yearmaster` (`id`);

--
-- Constraints for table `tbl_userdetails`
--
ALTER TABLE `tbl_userdetails`
  ADD CONSTRAINT `tbl_userdetails_comp_id_foreign` FOREIGN KEY (`Comp_Id`) REFERENCES `tbl_company` (`id`),
  ADD CONSTRAINT `tbl_userdetails_usergroup_id_foreign` FOREIGN KEY (`UserGroup_Id`) REFERENCES `tbl_usergroup` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
