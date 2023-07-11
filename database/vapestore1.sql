-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jul 2023 pada 13.16
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vapestore1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Saltnic', 'Saltnic', '2023-07-09 06:48:29', '2023-07-09 06:48:29'),
(2, 'Freebase', 'Freebase', '2023-07-09 06:48:29', '2023-07-09 06:48:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_09_103255_create_categories_table', 1),
(6, '2023_07_09_103409_create_products_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) NOT NULL,
  `stock_status` enum('instock','outstock') NOT NULL,
  `quantyty` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) NOT NULL,
  `images` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `quantyty`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'JVS x SteamQueen Juice - Oat Drips Liquid Vape productnation', 'JVS x SteamQueen Juice - Oat Drips Liquid Vape productnation', 'Produk ini paling cocok dipadukan dengan vape Mod dengan tegangan yang bisa diatur, sambil mencari titik pembakaran sempurna. productnation', ' \"Rasa unik lain yang dijadikan liquid vape adalah sereal oats. JVS dan SteamQueen berhasil memadukannya dengan baik. Berjenis freebase, liquid ini menghasilkan kebulan asap yang banyak dan berkadar nikotin sebesar 3 mg.\" productnation', 20.00, 50.00, 'PDR1', 'instock', 10, 'product-1', NULL, 1, '2023-07-09 14:00:00', '2023-07-12 14:00:00'),
(2, 'Komodo Breakfast Pink Beach Strawberry Lemonade by MOVI productnation', 'Komodo Breakfast Pink Beach Strawberry Lemonade by MOVI productnation', 'Liquid keluaran MOVI sering jadi rujukan untuk para vapers pemula yang mencari rekomendasi. Untuk varian liquid ini adalah salah satu liquid legendaris yang sudah lama dirilis tetapi tetap eksis. Kreatifitas dalam membuat liquid freebase terbaik membuat s', 'Rasa yang ditawarkan untuk varian ini adalah rasa fruity khas strawberry dan lemon. Menariknya lagi saat exhale, akan terasa juga rasa manis khas chiffon cake sehingga rasanya semakin mantap. Untuk tingkat throat hit-nya cukup terasa di tingkat medium sehingga cukup nyaman di tenggorokan. productnation', 20.00, 30.00, 'PDR2', 'instock', 10, 'product-2', NULL, 2, '2023-07-23 14:02:06', '2023-07-23 14:02:06'),
(3, 'BEQU FREEZE by Ray X FVS Authentic productnation', 'BEQU FREEZE by Ray X FVS Authentic productnation', 'Bequ terkenal dengan rasa dingin yang tajam di setiap produknya. Jadi untuk seri ini sangat cocok untuk vapers yang sangat menikmati sensasi dingin yang luar biasa. Seri ini ada tiga varian yang bisa dipilih, yaitu strawberry, pomegranate, mango freeze da', 'Bequ terkenal dengan rasa dingin yang tajam di setiap produknya. Jadi untuk seri ini sangat cocok untuk vapers yang sangat menikmati sensasi dingin yang luar biasa. Seri ini ada tiga varian yang bisa dipilih, yaitu strawberry, pomegranate, mango freeze dan honeydew.\r\n\r\nLiquid freebase dingin ini menghasilkan sensasi fruity sangat melimpah di mulut dengan rasa manis yang tidak berlebihan. Untuk sensasi dinginnya sangat terasa tajam sehingga sangat segar di mulut. Untuk sensasi throat hit-nya juga terasa ringan sehingga nyaman. productnation', 30.00, 20.00, 'PDR3', 'instock', 2, 'product-3', NULL, 2, '2023-07-10 08:48:25', '2023-07-10 08:48:25'),
(4, 'Strawberry Jelly by Emkay Brewer productnation', 'Strawberry Jelly by Emkay Brewer productnation', 'Rasa Strawberry sering menjadi pilihan dalam memilih berbagai jenis makanan atau minuman karena rasanya yang segar di mulut. Rasa khas tersebut berhasil dihadirkan oleh Emkay Brewer dalam produk ini. Liquid ini menawarkan rasa manis smooth khas strawberry', 'Rasa Strawberry sering menjadi pilihan dalam memilih berbagai jenis makanan atau minuman karena rasanya yang segar di mulut. Rasa khas tersebut berhasil dihadirkan oleh Emkay Brewer dalam produk ini. Liquid ini menawarkan rasa manis smooth khas strawberry ditambah sensasi rasa jelly diantaranya.\r\n\r\nSensasi saat liquid ini dihirup terasa soft sehingga nyaman di tenggorokan. Uap yang dihasilkan juga tebal dan aromatik. Liquid sendiri dikemas dalam botol bertipe chubby gorilla berukuran 100 ml yang compact. Varian yang bisa dipilih sendiri adalah 3Mg dan 6Mg. productnation', 20.00, 20.00, 'PDR4', 'instock', 4, 'product-4', NULL, 2, '2023-07-10 09:03:26', '2023-07-10 09:03:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL DEFAULT 'USR' COMMENT 'ADM for admin USR for normal user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muchamad Naufal Aziz', 'aziznaufal804@gmail.com', NULL, '$2y$10$v2mc60FfpuAX0bSvicnc0ejy9QYmVW0GwnYQvObwABt2uamr49zYq', 'USR', NULL, '2023-07-09 22:35:25', '2023-07-09 22:35:25');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
