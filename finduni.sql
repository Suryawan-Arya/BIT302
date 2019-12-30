-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 28 Des 2019 pada 16.59
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finduni`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `applicants`
--

CREATE TABLE `applicants` (
  `id` int(10) UNSIGNED NOT NULL,
  `IDtype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IDnumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobileNo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfBirth` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `applicants`
--

INSERT INTO `applicants` (`id`, `IDtype`, `IDnumber`, `mobileNo`, `dateOfBirth`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Passport', '123872380', '08573736551', '1999-11-02', 5, '2019-12-25 21:31:54', '2019-12-25 21:31:54'),
(2, 'Passport', '436812086', '08637244276', '1999-12-09', 7, '2019-12-25 21:51:32', '2019-12-25 21:51:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `applications`
--

CREATE TABLE `applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicant_id` int(10) UNSIGNED DEFAULT NULL,
  `programme_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `applications`
--

INSERT INTO `applications` (`id`, `status`, `applicant_id`, `programme_id`, `created_at`, `updated_at`) VALUES
(1, 'Success', 1, 6, '2019-12-25 21:38:17', '2019-12-25 22:01:51'),
(2, 'New', 2, 6, '2019-12-25 21:52:19', '2019-12-25 21:52:19'),
(3, 'New', 2, 5, '2019-12-25 21:52:50', '2019-12-25 21:52:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gradelists`
--

CREATE TABLE `gradelists` (
  `id` int(10) UNSIGNED NOT NULL,
  `grade` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualification_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gradelists`
--

INSERT INTO `gradelists` (`id`, `grade`, `qualification_id`, `created_at`, `updated_at`) VALUES
(1, 'A - 5 points', 1, '2019-12-24 09:24:28', '2019-12-25 18:03:54'),
(2, 'B - 4 points', 1, '2019-12-24 09:24:28', '2019-12-24 09:24:28'),
(3, 'C - 3 points', 1, '2019-12-24 09:24:28', '2019-12-24 09:24:28'),
(4, 'D - 2 points', 1, '2019-12-24 09:24:28', '2019-12-24 09:24:28'),
(5, 'E - 1 point', 1, '2019-12-24 09:24:28', '2019-12-24 09:24:28'),
(6, 'A (4.00)', 2, '2019-12-25 18:42:43', '2019-12-25 18:42:43'),
(7, 'A- (3.67)', 2, '2019-12-25 18:42:43', '2019-12-25 18:42:43'),
(8, 'B+ (3.33)', 2, '2019-12-25 18:42:43', '2019-12-25 18:42:43'),
(9, 'B (3.00)', 2, '2019-12-25 18:42:43', '2019-12-25 18:42:43'),
(10, 'B- (2.67)', 2, '2019-12-25 18:42:43', '2019-12-25 18:42:43'),
(11, 'C+ (2.33)', 2, '2019-12-25 18:42:43', '2019-12-25 18:42:43'),
(12, 'C (2.00)', 2, '2019-12-25 18:42:43', '2019-12-25 18:42:43'),
(13, 'B+ (1.67)', 2, '2019-12-25 18:42:43', '2019-12-25 18:42:43'),
(14, 'D+ (1.33)', 2, '2019-12-25 18:42:43', '2019-12-25 18:42:43'),
(15, 'D (1.00)', 2, '2019-12-25 18:42:43', '2019-12-25 18:42:43'),
(16, 'F (0.00)', 2, '2019-12-25 18:42:43', '2019-12-25 18:42:43'),
(17, '0 - 100%', 3, '2019-12-25 18:59:25', '2019-12-25 18:59:25'),
(18, '0 - 100%', 4, '2019-12-25 18:59:47', '2019-12-25 18:59:47'),
(19, 'A1 – 1 point', 5, '2019-12-25 19:03:45', '2019-12-25 19:03:45'),
(20, 'A2 – 2 points', 5, '2019-12-25 19:03:45', '2019-12-25 19:03:45'),
(21, 'B3 – 3 points', 5, '2019-12-25 19:03:45', '2019-12-25 19:03:45'),
(22, 'B4 – 4 points', 5, '2019-12-25 19:03:45', '2019-12-25 19:03:45'),
(23, 'B5 – 5 points', 5, '2019-12-25 19:03:45', '2019-12-25 19:03:45'),
(24, 'B6 – 6 points', 5, '2019-12-25 19:03:45', '2019-12-25 19:03:45'),
(25, '0 – 7 points per subject', 6, '2019-12-25 19:04:18', '2019-12-25 19:04:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_11_000000_create_universities_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_11_25_135215_create_programmes_table', 1),
(5, '2019_11_26_093045_create_qualifications_table', 1),
(6, '2019_11_26_095625_create_gradelists_table', 1),
(7, '2019_11_27_094727_create_applicants_table', 1),
(8, '2019_11_27_145938_create_applications_table', 1),
(9, '2019_11_27_151550_create_qual_obtaineds_table', 1),
(10, '2019_11_27_152728_create_results_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `programmes`
--

CREATE TABLE `programmes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `closingDate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `university_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `programmes`
--

INSERT INTO `programmes` (`id`, `name`, `description`, `closingDate`, `university_id`, `created_at`, `updated_at`) VALUES
(1, 'Dual Degree Programme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-05-03', 1, '2019-12-25 20:09:53', '2019-12-25 20:09:53'),
(2, 'Information System', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-01-31', 1, '2019-12-25 20:10:21', '2019-12-25 20:10:21'),
(3, 'Computer System', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-03-19', 1, '2019-12-25 20:10:42', '2019-12-25 20:10:42'),
(4, 'Business Intelligence', 'consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-04-17', 1, '2019-12-25 20:11:36', '2019-12-25 20:11:36'),
(5, 'Information System', 'Sed do eiusmod tempor incididun, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-05-16', 2, '2019-12-25 20:13:33', '2019-12-25 20:13:33'),
(6, 'Computer System', 'Eiusmod tempor incididunt , sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-02-29', 2, '2019-12-25 20:14:10', '2019-12-25 20:14:10'),
(7, 'Faculty of Law', 'Tempor sed do eiusmod tempor incididunt ut labore et dolore eiusmod magna aliqua.', '2020-03-20', 2, '2019-12-25 20:14:39', '2019-12-25 20:14:39'),
(8, 'Faculty of Law', 'Lorem ipsum dolor Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed sit amet, consectetur.', '2020-04-25', 3, '2019-12-25 20:19:08', '2019-12-25 20:19:08'),
(9, 'Faculty of Economics and Business', 'Adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-02-20', 3, '2019-12-25 20:20:32', '2019-12-25 20:20:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `qualifications`
--

CREATE TABLE `qualifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimumScore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maximumScore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resultCalcDescription` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `qualifications`
--

INSERT INTO `qualifications` (`id`, `name`, `minimumScore`, `maximumScore`, `resultCalcDescription`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A-levels', '0', '5', '3', 1, '2019-12-24 09:24:28', '2019-12-25 18:03:54'),
(2, 'STPM', '0', '4', '3', 1, '2019-12-25 18:42:43', '2019-12-25 18:42:43'),
(3, 'Australian Matriculation', '0', '100', '4', 1, '2019-12-25 18:59:25', '2019-12-25 18:59:25'),
(4, 'Canadian Pre-University', '0', '100', '6', 1, '2019-12-25 18:59:47', '2019-12-25 18:59:47'),
(5, 'Unified Examination Certificate', '5', '30', '5', 1, '2019-12-25 19:03:45', '2019-12-25 19:03:45'),
(6, 'International Baccalaureate', '0', '42', '6', 1, '2019-12-25 19:04:18', '2019-12-25 19:04:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `qual_obtaineds`
--

CREATE TABLE `qual_obtaineds` (
  `id` int(10) UNSIGNED NOT NULL,
  `overallScore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` int(10) UNSIGNED DEFAULT NULL,
  `qualification_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `qual_obtaineds`
--

INSERT INTO `qual_obtaineds` (`id`, `overallScore`, `application_id`, `qualification_id`, `created_at`, `updated_at`) VALUES
(1, '4.33', 1, 1, '2019-12-25 21:38:17', '2019-12-25 21:38:17'),
(2, '88.50', 2, 3, '2019-12-25 21:52:19', '2019-12-25 21:52:19'),
(3, '4.00', 3, 1, '2019-12-25 21:52:50', '2019-12-25 21:52:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `results`
--

CREATE TABLE `results` (
  `id` int(10) UNSIGNED NOT NULL,
  `subjectName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` int(11) NOT NULL,
  `qual_obtained_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `results`
--

INSERT INTO `results` (`id`, `subjectName`, `grade`, `qual_obtained_id`, `created_at`, `updated_at`) VALUES
(1, 'Math', 4, 1, '2019-12-25 21:38:17', '2019-12-25 21:38:17'),
(2, 'Computer', 5, 1, '2019-12-25 21:38:17', '2019-12-25 21:38:17'),
(3, 'Biology', 4, 1, '2019-12-25 21:38:17', '2019-12-25 21:38:17'),
(4, 'Math', 90, 2, '2019-12-25 21:52:19', '2019-12-25 21:52:19'),
(5, 'Biology', 99, 2, '2019-12-25 21:52:19', '2019-12-25 21:52:19'),
(6, 'Computer', 87, 2, '2019-12-25 21:52:19', '2019-12-25 21:52:19'),
(7, 'Science', 78, 2, '2019-12-25 21:52:19', '2019-12-25 21:52:19'),
(8, 'Math', 5, 3, '2019-12-25 21:52:50', '2019-12-25 21:52:50'),
(9, 'Biology', 4, 3, '2019-12-25 21:52:50', '2019-12-25 21:52:50'),
(10, 'Computer', 3, 3, '2019-12-25 21:52:50', '2019-12-25 21:52:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `universities`
--

CREATE TABLE `universities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `universities`
--

INSERT INTO `universities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ITB STIKOM Bali', '2019-12-24 09:40:50', '2019-12-24 09:40:50'),
(2, 'HELP University', '2019-12-24 09:41:46', '2019-12-24 09:41:46'),
(3, 'Udayana University', '2019-12-25 19:27:31', '2019-12-25 19:27:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `university_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `university_id`) VALUES
(1, 'SAS Admin', 'SASAdmin', 'sasadmin@gmail.com', NULL, '$2y$10$NknpxRRcYTLmu3Yk5oT.oOYnIK5Fx4xtY17MEdSFAy2DeFoZQbwHi', 'lhqZNLbttfyeIRbIAvufBcWJAzFItcwuwYFHnr6iMpZDQKf0qMRnropYgsIW', '2019-12-24 09:21:50', '2019-12-24 09:21:50', 'sasAdmin', NULL),
(2, 'STIKOM', 'stikom', 'stikom@gmail.com', NULL, '$2y$10$rB8.vUCrZ.0ukzukNmeDQee7qgb.lhIe/aR/mz09N.rkfdh4RKOsW', 'yORwGnYLeABBzXjxJ0kzFM42qX4WsX4aB6xHbZogMx4gYj6V6rAQ1wIy2JqW', '2019-12-24 09:41:10', '2019-12-24 09:41:10', 'uniAdmin', 1),
(3, 'STIKOM', 'stikom2', 'stikom2@gmail.com', NULL, '$2y$10$Tp/5WHbwaI.skzA8dG55fOxueMyy4I1/wATGY48wWhpE7F76d1qza', NULL, '2019-12-24 09:41:30', '2019-12-24 09:41:30', 'uniAdmin', 1),
(4, 'HELP University', 'HelpUni', 'helpuni@gmail.com', NULL, '$2y$10$Bkg7c7u613im0nRPgM5ewun/h2MzvJAt1o.6Eh5//1.CRVGstLYUC', 'z744VEHZ2R5B5LFZw4dzp0H8fkUJ8NoQ6KAEsTKlTxY9qvogN0ftMykOMv9Z', '2019-12-24 09:42:10', '2019-12-24 09:42:10', 'uniAdmin', 2),
(5, 'Paulus', 'paulus', 'paulus@gmail.com', NULL, '$2y$10$WPBuotn7s36i/7BsQyGIPOO8mQCU4nearWu3jRVS7.rpiysUSDqcq', 'MiC1AY8jH7c9U5CQeFeUiA2nWcVpA7RcZi41qOzGcUooTyIayjZzcbsULxCK', '2019-12-25 20:07:03', '2019-12-25 20:07:03', NULL, NULL),
(6, 'Udayana University', 'unud', 'unud@gmail.com', NULL, '$2y$10$MbBy0xcoA8D0zV5.TMlOnefTXQWj/Pf2DtBCGdJFDu26X580KVAhG', 'brgbt8XMJkYKOvVInWH8z5UDcIBeK7Qnemfr8wdgdjnEJlfPqNebsu1FOR1n', '2019-12-25 20:18:11', '2019-12-25 20:18:11', 'uniAdmin', 3),
(7, 'Fadil', 'fadil', 'fadil@gmail.com', NULL, '$2y$10$SY7jrKwU4pXXBHmcr9qidOX/L0BqTIlMgfq0OheDJK6H5naeZYT72', 'h37dGPrTFUKX730ZdjoN7AWQdzQa2Wdyct1cCQhM1ySPiIo70tD2K19FxPu9', '2019-12-25 21:50:57', '2019-12-25 21:50:57', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applicants_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applications_applicant_id_foreign` (`applicant_id`),
  ADD KEY `applications_programme_id_foreign` (`programme_id`);

--
-- Indeks untuk tabel `gradelists`
--
ALTER TABLE `gradelists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gradelists_qualification_id_foreign` (`qualification_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `programmes`
--
ALTER TABLE `programmes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programmes_university_id_foreign` (`university_id`);

--
-- Indeks untuk tabel `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `qual_obtaineds`
--
ALTER TABLE `qual_obtaineds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qual_obtaineds_application_id_foreign` (`application_id`),
  ADD KEY `qual_obtaineds_qualification_id_foreign` (`qualification_id`);

--
-- Indeks untuk tabel `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_qual_obtained_id_foreign` (`qual_obtained_id`);

--
-- Indeks untuk tabel `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_university_id_foreign` (`university_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `gradelists`
--
ALTER TABLE `gradelists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `programmes`
--
ALTER TABLE `programmes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `qual_obtaineds`
--
ALTER TABLE `qual_obtaineds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `universities`
--
ALTER TABLE `universities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `applicants`
--
ALTER TABLE `applicants`
  ADD CONSTRAINT `applicants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_applicant_id_foreign` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applications_programme_id_foreign` FOREIGN KEY (`programme_id`) REFERENCES `programmes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `gradelists`
--
ALTER TABLE `gradelists`
  ADD CONSTRAINT `gradelists_qualification_id_foreign` FOREIGN KEY (`qualification_id`) REFERENCES `qualifications` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `programmes`
--
ALTER TABLE `programmes`
  ADD CONSTRAINT `programmes_university_id_foreign` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `qual_obtaineds`
--
ALTER TABLE `qual_obtaineds`
  ADD CONSTRAINT `qual_obtaineds_application_id_foreign` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `qual_obtaineds_qualification_id_foreign` FOREIGN KEY (`qualification_id`) REFERENCES `qualifications` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_qual_obtained_id_foreign` FOREIGN KEY (`qual_obtained_id`) REFERENCES `qual_obtaineds` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_university_id_foreign` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
