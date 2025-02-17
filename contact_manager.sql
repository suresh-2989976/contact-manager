-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2025 at 05:27 AM
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
-- Database: `contact_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `created_at`, `updated_at`) VALUES
(3, 'Kökten Adal', '+90 333 8859342', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(4, 'Hamma Abdurrezak', '+90 333 1563682', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(5, 'Güleycan Şensal', '+90 333 2557114', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(6, 'Suadiye Ratip', '+90 333 9163726', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(7, 'Barik Nurşide', '+90 333 3323749', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(8, 'Hanifi Emineeylem', '+90 333 2763531', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(9, 'Nakiye Oğulkan', '+90 333 6168924', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(10, 'Hamsiye Cerit', '+90 333 3544579', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(11, 'Mahfi Hülâgü', '+90 333 8937773', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(12, 'Esmeray Nurihayat', '+90 333 1688759', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(13, 'Şennur Nazifer', '+90 333 5326326', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(14, 'Çetinok Seden', '+90 333 1614182', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(15, 'Vuslat Erimşah', '+90 333 9551194', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(16, 'Şeküre Ruhiye', '+90 333 8792165', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(17, 'İmran Ümmehan', '+90 333 6971156', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(18, 'Yavuzbay Hiçsönmez', '+90 333 8839473', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(19, 'Nevzete Abdulgafur', '+90 333 1453851', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(20, 'Aksüyek Sal', '+90 333 2481491', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(21, 'Ferhat Kılıçaslan', '+90 333 6861354', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(22, 'Fereç Tomurcuk', '+90 333 4141534', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(23, 'Balkız Alabegüm', '+90 333 8826359', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(24, 'Adulle Nesim', '+90 333 5364556', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(25, 'Sevdal Bilhan', '+90 333 8634743', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(26, 'Hariz Budunal', '+90 333 1193335', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(27, 'Alnıak Atız', '+90 333 5676454', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(28, 'Haşmet Taşgan', '+90 333 6185991', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(29, 'Salli Necife', '+90 333 6692117', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(30, 'Türeli Selçen', '+90 333 5588146', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(31, 'Boray Ümit', '+90 333 7741455', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(32, 'Aktemür Akbora', '+90 333 4139141', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(33, 'Yediveren Muhammetali', '+90 333 8483755', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(34, 'Baltaş Tonguç', '+90 333 3724797', '2025-02-15 23:26:42', '2025-02-15 23:26:42'),
(35, 'Tepegöz Ferize', '+90 333 9528318', '2025-02-15 23:26:42', '2025-02-15 23:26:42');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_16_041615_create_contacts_table', 1);

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
('18Gbfr9f0q6r2YdOw25TXrlmnAB5NSVBcMfsJluq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlA1WTFkMk4xMmxUREdjN3V2NXBwMTAyUGZTMnJmaXU3QlR1STFWMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1739706475),
('R2nQyGjJ8wACYT3moIUyxnWFV3XuLKbOUA9eVsNF', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWmhUd1czYUFiYUc1ZHRSNlVreElpYnZsd1d3RzhTMmxJOE5xTUhxcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0cy8zIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1739766185);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', NULL, '$2y$12$1gZlPotsUOvZqSpLnr0vgOGfNrrVf53iSfwOyJKvVo7IBlIJ.9haa', NULL, NULL, NULL),
(2, 'Jane Smith', 'jane@example.com', NULL, '$2y$12$UIFq/PN.9x9XSzxVCwzZWuIeSKsKQN.6Qe5cdMcTwNlDOFx5h8Qla', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_phone_unique` (`phone`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
