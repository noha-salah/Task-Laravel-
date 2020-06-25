-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2020 at 05:16 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-task`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `website` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `logo`, `website`, `created_at`, `updated_at`) VALUES
(1, 'Google', 'Company@1.com', 'default.png', 'https://good.company.com', '2020-06-24 06:15:04', '2020-06-24 06:15:04'),
(2, 'technology', 'Company@2.com', 'default.png', 'https://good.company.com', '2020-06-24 06:15:04', '2020-06-24 06:15:04'),
(3, 'Smart', 'Company@3.com', 'default.png', 'https://good.company.com', '2020-06-24 06:15:04', '2020-06-24 06:15:04'),
(4, 'High Tech', 'Company@4.com', 'default.png', 'https://good.company.com', '2020-06-24 06:15:04', '2020-06-24 06:15:04'),
(5, 'Web Designs', 'Company@5.com', 'default.png', 'https://good.company.com', '2020-06-24 06:15:04', '2020-06-24 06:15:04'),
(6, 'Web Development', 'Company@6.com', 'default.png', 'https://good.company.com', '2020-06-24 06:15:04', '2020-06-24 06:15:04'),
(7, 'good-Tech', 'Company@7.com', 'default.png', 'https://good.company.com', '2020-06-24 06:15:04', '2020-06-24 06:15:04'),
(8, 'tech-time', 'Company@8.com', 'default.png', 'https://good.company.com', '2020-06-24 06:15:04', '2020-06-24 06:15:04'),
(9, 'Fast tech', 'Company@9.com', 'default.png', 'https://good.company.com', '2020-06-24 06:15:04', '2020-06-24 06:15:04'),
(10, 'technology-time', 'Company@10.com', 'default.png', 'https://good.company.com', '2020-06-24 06:15:04', '2020-06-24 06:15:04'),
(24, 'nocompany', 'nocompany@gmail.com', 'default.png', 'https://laravel.com/docs/7.x/seeding', '2020-06-24 10:22:24', '2020-06-24 16:43:47'),
(25, 'goodhgghghg', 'super_bnadmhhin@app.com', 'default.png', 'https://laravel.com/docs/7.x/seeding', '2020-06-24 10:40:16', '2020-06-24 12:13:07'),
(27, 'ddddddd', 'admindd@admin.com', '9mFPWkPAYSkdsiZ0wNQlI3177qOUzuUhPH86JVdX.jpeg', 'https://laravel.com/docs/7.x/seeding', '2020-06-25 06:15:48', '2020-06-25 06:15:48'),
(28, 'comapny one', 'admincompany@admin.com', 'xQNVh1ENiUxZdLLLxw3sVXlpYvztWv9L0jHeDR3B.png', 'https://laravel.com/docs/7.x/seeding', '2020-06-25 06:48:21', '2020-06-25 06:48:21'),
(29, 'new company', 'adminaa@admin.com', 'XLpuJDB5LdeqyliFiGqqpt1VVKtzbjD5MBgibl4M.jpeg', 'https://laravel.com/docs/7.x/seeding', '2020-06-25 07:15:21', '2020-06-25 07:15:21'),
(30, 'new company', 'adminahhha@admin.com', 'default.png', 'https://laravel.com/docs/7.x/seeding', '2020-06-25 07:17:52', '2020-06-25 07:17:52'),
(31, 'new company', 'adminffffahhha@admin.com', 'default.png', 'https://laravel.com/docs/7.x/seeding', '2020-06-25 07:18:34', '2020-06-25 07:18:34'),
(32, 'new company', 'adminffhhhffahhha@admin.com', 'default.png', 'https://laravel.com/docs/7.x/seeding', '2020-06-25 07:19:14', '2020-06-25 07:19:14'),
(33, 'company task', 'admindwwd@admin.com', 'M4uBXMYWkBBx7WvZ1kh29ppH6m8QbRZDF8VhAXKB.jpeg', 'https://laravel.com/docs/7.x/seeding', '2020-06-25 07:35:20', '2020-06-25 07:35:20'),
(34, 'company task', 'admindfffwwd@admin.com', 'default.png', 'https://laravel.com/docs/7.x/seeding', '2020-06-25 07:35:51', '2020-06-25 07:35:51'),
(35, 'company task', 'admhhindfffwwd@admin.com', 'default.png', 'https://laravel.com/docs/7.x/seeding', '2020-06-25 07:36:31', '2020-06-25 07:36:31'),
(36, 'goodhh', 'supnnner_admin@app.com', 'ULqxiyVG29qKslC8vNfjHpmTIvBJSvv4W9TIfgCY.png', 'https://laravel.com/docs/7.x/seeding', '2020-06-25 07:37:51', '2020-06-25 07:37:51'),
(37, 'goodhh', 'supffnnner_admin@app.com', 'default.png', 'https://laravel.com/docs/7.x/seeding', '2020-06-25 07:38:12', '2020-06-25 07:38:12'),
(38, 'ttttamer', 'admeeeeindd@admin.come', 'Zni9AvHLsg9PWN0Gc5Q5KJ7ww1trSAcT9ZM0UV8J.png', 'https://laravel.com/docs/7.x/seeding', '2020-06-25 07:39:42', '2020-06-25 07:39:42'),
(39, 'ttttamer', 'admeeddeeindd@admin.come', 'G4ByomgXfRa7XVsuPNSR4lLwJEr7X9kmdFCs2O4z.png', 'https://laravel.com/docs/7.x/seeding', '2020-06-25 07:40:15', '2020-06-25 07:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Company_Id` int(10) UNSIGNED NOT NULL DEFAULT 24,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `phone`, `Company_Id`, `created_at`, `updated_at`) VALUES
(1, 'Galal', 'Default', 'Employee@1.com', '555 555 55', 1, '2020-06-24 14:05:06', '2020-06-24 14:05:06'),
(2, 'tarek', 'Default', 'Employee@2.com', '555 555 55', 2, '2020-06-24 14:05:06', '2020-06-24 14:05:06'),
(3, 'Sara', 'Default', 'Employee@3.com', '555 555 55', 3, '2020-06-24 14:05:06', '2020-06-24 14:05:06'),
(4, 'Hatem ', 'Default', 'Employee@4.com', '555 555 55', 4, '2020-06-24 14:05:07', '2020-06-24 14:05:07'),
(5, 'Waleed', 'Default', 'Employee@5.com', '555 555 55', 5, '2020-06-24 14:05:07', '2020-06-24 14:05:07'),
(6, 'mohamed', 'Default', 'Employee@6.com', '555 555 55', 6, '2020-06-24 14:05:07', '2020-06-24 14:05:07'),
(7, 'Ahmed', 'Default', 'Employee@7.com', '555 555 55', 7, '2020-06-24 14:05:07', '2020-06-24 14:05:07'),
(8, 'tamer', 'Default', 'Employee@8.com', '555 555 55', 8, '2020-06-24 14:05:07', '2020-06-24 14:05:07'),
(9, 'Faras', 'Default', 'Employee@9.com', '555 555 55', 9, '2020-06-24 14:05:07', '2020-06-24 14:05:07'),
(10, 'Heba', 'Default', 'Employee@10.com', '555 555 55', 10, '2020-06-24 14:05:07', '2020-06-24 14:05:07'),
(23, 'nohaa', 'salahh', 'nohasttalah633@gmail.com', '010101212', 4, '2020-06-25 12:57:21', '2020-06-25 12:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_23_205222_laratrust_setup_tables', 1),
(7, '2020_06_24_065557_create_companies_table', 2),
(9, '2020_06_24_065711_create_employees_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'create_users', 'Create Users', 'Create Users', '2020-06-24 06:44:13', '2020-06-24 06:44:13'),
(2, 'read_users', 'Read Users', 'Read Users', '2020-06-24 06:44:13', '2020-06-24 06:44:13'),
(3, 'update_users', 'Update Users', 'Update Users', '2020-06-24 06:44:13', '2020-06-24 06:44:13'),
(4, 'delete_users', 'Delete Users', 'Delete Users', '2020-06-24 06:44:13', '2020-06-24 06:44:13'),
(5, 'create_payments', 'Create Payments', 'Create Payments', '2020-06-24 06:44:13', '2020-06-24 06:44:13'),
(6, 'read_payments', 'Read Payments', 'Read Payments', '2020-06-24 06:44:13', '2020-06-24 06:44:13'),
(7, 'update_payments', 'Update Payments', 'Update Payments', '2020-06-24 06:44:13', '2020-06-24 06:44:13'),
(8, 'delete_payments', 'Delete Payments', 'Delete Payments', '2020-06-24 06:44:13', '2020-06-24 06:44:13'),
(9, 'read_profile', 'Read Profile', 'Read Profile', '2020-06-24 06:44:13', '2020-06-24 06:44:13'),
(10, 'update_profile', 'Update Profile', 'Update Profile', '2020-06-24 06:44:13', '2020-06-24 06:44:13'),
(11, 'create_Employees', 'Create Employees', 'Create Employees', '2020-06-24 06:44:14', '2020-06-24 06:44:14'),
(12, 'read_Employees', 'Read Employees', 'Read Employees', '2020-06-24 06:44:14', '2020-06-24 06:44:14'),
(13, 'update_Employees', 'Update Employees', 'Update Employees', '2020-06-24 06:44:14', '2020-06-24 06:44:14'),
(14, 'delete_Employees', 'Delete Employees', 'Delete Employees', '2020-06-24 06:44:14', '2020-06-24 06:44:14'),
(15, 'create_companies', 'Create Companies', 'Create Companies', '2020-06-24 06:44:14', '2020-06-24 06:44:14'),
(16, 'read_companies', 'Read Companies', 'Read Companies', '2020-06-24 06:44:14', '2020-06-24 06:44:14'),
(17, 'update_companies', 'Update Companies', 'Update Companies', '2020-06-24 06:44:14', '2020-06-24 06:44:14'),
(18, 'delete_companies', 'Delete Companies', 'Delete Companies', '2020-06-24 06:44:14', '2020-06-24 06:44:14'),
(19, 'create_module_1_name', 'Create Module_1_name', 'Create Module_1_name', '2020-06-24 06:44:14', '2020-06-24 06:44:14'),
(20, 'read_module_1_name', 'Read Module_1_name', 'Read Module_1_name', '2020-06-24 06:44:14', '2020-06-24 06:44:14'),
(21, 'update_module_1_name', 'Update Module_1_name', 'Update Module_1_name', '2020-06-24 06:44:14', '2020-06-24 06:44:14'),
(22, 'delete_module_1_name', 'Delete Module_1_name', 'Delete Module_1_name', '2020-06-24 06:44:15', '2020-06-24 06:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 4),
(20, 4),
(21, 4),
(22, 4);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'superadministrator', 'Superadministrator', 'Superadministrator', '2020-06-24 06:44:13', '2020-06-24 06:44:13'),
(2, 'administrator', 'Administrator', 'Administrator', '2020-06-24 06:44:14', '2020-06-24 06:44:14'),
(3, 'user', 'User', 'User', '2020-06-24 06:44:14', '2020-06-24 06:44:14'),
(4, 'role_name', 'Role Name', 'Role Name', '2020-06-24 06:44:14', '2020-06-24 06:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(2, 19, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(19, 'admin', 'admin@admin.com', NULL, '$2y$10$s8rJvNlz3N8OJ9/7oxlK9OX2.zfn6ynezXfoEzML4s1lH06vbFhpq', NULL, '2020-06-24 06:44:23', '2020-06-24 06:44:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_email_unique` (`email`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_company_id_foreign` (`Company_Id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`Company_Id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
