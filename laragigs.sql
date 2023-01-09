-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 02:27 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laragigs`
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
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `tags`, `company`, `location`, `email`, `website`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sequi perspiciatis nobis quis occaecati nemo quae.', 'laravel, api, backend', 'Batz, Kilback and Koch', 'Webershire', 'auer.frank@pfannerstill.biz', 'http://daniel.com/quisquam-porro-dolorum-eligendi-voluptatem-ullam-optio', 'At et nobis rem omnis consequatur officia. Dolorum et sint ipsum. Cumque fugiat atque velit ex. Dolorum qui sequi quasi quasi. Rerum est incidunt ullam eos quos corrupti. Aut quisquam quis eius quo natus nobis.', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(2, 'Quas qui velit sed enim impedit aut velit sint.', 'laravel, api, backend', 'Simonis Group', 'New Rhea', 'towne.breanne@durgan.biz', 'https://hansen.biz/eos-id-voluptatem-dolorum-cum-blanditiis.html', 'Omnis minima iure consequatur reprehenderit quia eos vitae doloribus. In suscipit omnis expedita et omnis aliquam aut. Veritatis omnis neque est quibusdam sunt natus non. Vero dolor eaque nisi molestiae distinctio rerum quia ab.', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(3, 'Inventore aliquam tenetur et ipsa aut ad alias.', 'laravel, api, backend', 'Lowe, Schowalter and Von', 'East Serenafurt', 'florine58@buckridge.com', 'https://bergstrom.net/est-corrupti-sequi-et-voluptatem.html', 'Temporibus suscipit voluptas quos dicta voluptates tempore nam. Id ut ut dolorem. Assumenda ut maiores vel qui qui. Eum error culpa provident. Vero ab non voluptatem non. Earum enim voluptate culpa quaerat. Numquam velit in non velit accusantium quia est sit.', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(4, 'Quod possimus illo et qui maxime iusto.', 'laravel, api, backend', 'Bradtke and Sons', 'North Van', 'tlehner@bernier.com', 'http://www.koelpin.com/officia-recusandae-fugit-est-soluta', 'Dolor adipisci vitae molestiae. Eligendi similique atque quia tenetur tempore est. Inventore eaque repellendus error quaerat qui. Dolores id aspernatur earum minus quae. Quibusdam aut possimus eum praesentium pariatur molestiae.', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(5, 'Labore unde molestias occaecati illum aspernatur optio sit architecto.', 'laravel, api, backend', 'Runolfsson-Stanton', 'Robertsside', 'brown.herman@macejkovic.com', 'http://www.harris.net/magnam-ea-dolore-qui-quod-qui-minima-ipsum.html', 'In eos natus aliquid ea qui nisi voluptatem. Nam omnis cum id sequi. Temporibus atque aut quia tempora soluta velit. Sint ullam similique quae temporibus.', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(6, 'Porro incidunt eum temporibus nisi.', 'laravel, api, backend', 'Mosciski Group', 'South Darrell', 'mikayla.gottlieb@schroeder.com', 'https://schultz.com/dolor-dicta-doloribus-dolore-voluptas-eos-error-voluptate-mollitia.html', 'Illo in repellendus velit explicabo quidem. Id ratione et adipisci minima. Excepturi distinctio mollitia pariatur qui perferendis. Beatae fugiat consequatur nihil amet dignissimos voluptas. Suscipit assumenda dicta et est architecto modi.', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(7, 'Omnis perspiciatis possimus inventore tempore odit ducimus illum.', 'laravel, api, backend', 'Breitenberg PLC', 'Marquardtfort', 'douglas.ola@lesch.com', 'http://www.klocko.com/aut-aliquid-perspiciatis-ipsa.html', 'Non aut vel perspiciatis et laboriosam. Ea sit libero asperiores. Est perspiciatis aut atque rerum tempora accusamus. Ab et quibusdam placeat enim et cupiditate. Ut rerum eveniet eos et facilis. Molestias illum minus aperiam aut id maxime. Natus suscipit qui eos ipsa neque.', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(8, 'Molestiae numquam fugit at et sint.', 'laravel, api, backend', 'Kessler Ltd', 'Marysehaven', 'ppfeffer@schultz.info', 'http://kihn.net/labore-unde-non-porro-sunt-id-porro-accusantium-aut', 'Quia ipsa molestiae corrupti. Harum omnis quos labore minus tenetur. Quis voluptatem quae et ex sint aliquam voluptatibus. Et sunt quae repudiandae blanditiis nihil quod commodi officiis. Voluptatem amet placeat ad aut. Reprehenderit consequatur saepe blanditiis optio qui ut.', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(9, 'Dignissimos sapiente voluptas harum officia eos explicabo placeat voluptatem.', 'laravel, api, backend', 'Stamm-Hoppe', 'Jacobistad', 'ernser.samanta@wintheiser.com', 'http://www.rau.info/quisquam-illo-quisquam-harum', 'Est quisquam incidunt iure quo quis temporibus suscipit. Et dicta consequuntur qui aut. Incidunt nesciunt harum minima. Fugit non aut consequatur consequuntur nisi dolorem minima. Dolorum qui aperiam quibusdam vitae voluptatem sequi voluptatum fuga. Enim assumenda provident consequuntur pariatur tempore dicta. Quas debitis corrupti modi nihil consequatur harum. Esse voluptatum perferendis velit distinctio pariatur.', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(10, 'Iure eum distinctio nostrum deleniti commodi corporis.', 'laravel, api, backend', 'Kunze, Swift and Treutel', 'South Leila', 'xwolf@parisian.com', 'http://www.fisher.com/nostrum-error-amet-quae-quia-vel.html', 'Vitae et voluptatibus ipsa porro ipsam consequatur et. Provident officiis dolor tempora asperiores assumenda nobis. Aut eos sit provident aut. Quidem modi ea molestias. Ut explicabo repellat quaerat laboriosam maiores tenetur dolorem. Officiis ut dolor nihil non voluptas.', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(11, 'A est ratione maxime amet.', 'laravel, api, backend', 'Schoen-O\'Hara', 'Auerville', 'adriana.barrows@yundt.biz', 'https://huels.org/dolores-perspiciatis-et-earum-id-enim-esse-qui.html', 'Quos nam laboriosam temporibus temporibus magni dolores pariatur. Ut dolore dolor sed minima id. Expedita ut aperiam nihil voluptatem maiores odio dolores. Facere pariatur et fugit in.', '2023-01-06 17:46:22', '2023-01-06 17:46:22'),
(12, 'Quis totam qui rem et consequatur a iste possimus.', 'laravel, api, backend', 'Kulas PLC', 'West Lelah', 'kunze.jonas@schimmel.com', 'http://www.torp.net/in-vero-ea-aut-facilis-iure', 'Debitis est omnis corrupti. Sint sed est quo ipsa rem. Totam cumque vitae in illum maxime et ab. Deleniti eveniet omnis eos accusamus nam culpa.', '2023-01-06 17:46:22', '2023-01-06 17:46:22'),
(13, 'Maiores eveniet saepe omnis quo.', 'laravel, api, backend', 'Franecki PLC', 'Port Scottieside', 'skiles.jettie@runte.com', 'http://www.rippin.com/', 'Voluptatem eveniet nam dolore perferendis. Vel numquam neque sunt suscipit voluptate nesciunt assumenda. Nesciunt velit inventore minima quaerat quos. Dolorum nisi laudantium vitae provident culpa ipsam odit et.', '2023-01-06 17:46:22', '2023-01-06 17:46:22'),
(14, 'Nihil exercitationem quis ipsam animi.', 'laravel, api, backend', 'Gleason-Hudson', 'Laurettashire', 'bboyer@sauer.com', 'http://abshire.com/dolorem-ea-qui-ullam-est.html', 'Magnam voluptates in vero id ratione neque minus. Sunt cum rerum quidem vero repellat minus odio. Rem aut est delectus voluptas. Aspernatur ut et alias blanditiis laborum. Quia quis maxime vel labore vel culpa sint. Dolore quaerat sit vitae quod maxime. Exercitationem ullam impedit aliquam fugit.', '2023-01-06 17:46:22', '2023-01-06 17:46:22'),
(15, 'Est dolorem et voluptatem temporibus.', 'laravel, api, backend', 'Yost-Terry', 'Pricefort', 'oweissnat@rogahn.net', 'http://www.kihn.com/', 'Voluptas eveniet ut eos est. Est minus qui et odit dicta mollitia nihil. Exercitationem dolores natus est ullam atque. Eveniet ab deserunt accusamus sed dicta sit eos. Tenetur facere eos possimus magnam. Dolores sed quam repudiandae veritatis aut recusandae mollitia.', '2023-01-06 17:46:22', '2023-01-06 17:46:22');

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
(25, '2014_10_12_000000_create_users_table', 1),
(26, '2014_10_12_100000_create_password_resets_table', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(29, '2023_01_06_122703_create_listings_table', 1);

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
(1, 'Juvenal Walsh DVM', 'alisa.langworth@example.com', '2023-01-06 17:46:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bTE5smfUVU', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(2, 'Meredith Hoppe', 'rosamond.ohara@example.org', '2023-01-06 17:46:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ojMjypMi2C', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(3, 'Ms. Yadira Toy', 'amber.conroy@example.net', '2023-01-06 17:46:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cg3DTXQB24', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(4, 'Jody Greenholt', 'salma.kshlerin@example.net', '2023-01-06 17:46:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9mrLisCZXt', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(5, 'Ottilie Bechtelar V', 'keeley57@example.org', '2023-01-06 17:46:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UQOwK3JZE5', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(6, 'Joy Rowe', 'tracy92@example.org', '2023-01-06 17:46:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bQYGmgPOEl', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(7, 'Edison Koch', 'reyes15@example.net', '2023-01-06 17:46:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ipBKaW3QXF', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(8, 'Dana Schiller', 'lturner@example.org', '2023-01-06 17:46:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xnk0BV5oWT', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(9, 'Mr. Cameron Bayer', 'geovany67@example.net', '2023-01-06 17:46:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9M5r7LMa7r', '2023-01-06 17:46:21', '2023-01-06 17:46:21'),
(10, 'Michael Gottlieb', 'bhyatt@example.com', '2023-01-06 17:46:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MskBuJmUPs', '2023-01-06 17:46:21', '2023-01-06 17:46:21');

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
-- Indexes for table `listings`
--
ALTER TABLE `listings`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
