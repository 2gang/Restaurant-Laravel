-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 23-01-31 23:24
-- 서버 버전: 10.5.16-MariaDB
-- PHP 버전: 8.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `sale16`
--
CREATE DATABASE IF NOT EXISTS `sale16` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sale16`;

-- --------------------------------------------------------

--
-- 테이블 구조 `cooks`
--

CREATE TABLE `cooks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `majors_id16` int(11) DEFAULT NULL,
  `name16` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career16` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic16` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `cooks`
--

INSERT INTO `cooks` (`id`, `majors_id16`, `name16`, `career16`, `pic16`, `created_at`, `updated_at`) VALUES
(4, 4, '램지', '15년', '고든램지.jpg', '2022-11-25 08:40:21', '2022-11-25 08:40:21'),
(5, 5, '빵집아저씨', '10', '빵집 사장님.jpg', '2022-11-25 08:40:34', '2022-11-25 08:40:34'),
(6, 3, '이연복', '25년', '이연복.jpg', '2022-11-25 08:41:03', '2022-11-25 08:41:03'),
(7, 4, '최현석', '신입', '최현석.jpg', '2022-11-25 08:41:15', '2022-11-25 08:41:15');

-- --------------------------------------------------------

--
-- 테이블 구조 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `gubuns`
--

CREATE TABLE `gubuns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name16` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `gubuns`
--

INSERT INTO `gubuns` (`id`, `name16`, `created_at`, `updated_at`) VALUES
(6, '과일', '2022-11-02 11:25:57', '2022-11-02 11:25:57'),
(12, '과자', '2022-11-23 15:37:11', '2022-11-23 15:37:11'),
(16, '테스트', '2022-11-23 15:43:22', '2022-11-23 15:43:22');

-- --------------------------------------------------------

--
-- 테이블 구조 `jangbus`
--

CREATE TABLE `jangbus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `io16` tinyint(11) DEFAULT NULL,
  `writeday16` date DEFAULT NULL,
  `products_id16` int(11) DEFAULT NULL,
  `price16` int(11) DEFAULT NULL,
  `numi16` int(11) DEFAULT NULL,
  `numo16` int(11) DEFAULT NULL,
  `prices16` int(11) DEFAULT NULL,
  `bigo16` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `jangbus`
--

INSERT INTO `jangbus` (`id`, `io16`, `writeday16`, `products_id16`, `price16`, `numi16`, `numo16`, `prices16`, `bigo16`, `created_at`, `updated_at`) VALUES
(4, 0, '2022-10-13', 13, 15000, 10, 0, 150000, NULL, '2022-10-13 07:30:27', '2022-10-13 07:39:40'),
(5, 0, '2022-10-13', 12, 5000, 5, 0, 25000, NULL, '2022-10-13 07:36:59', '2022-10-13 07:39:34'),
(6, 1, '2022-10-19', 12, 5000, 0, 3, 15000, NULL, '2022-10-19 11:03:44', '2022-10-19 11:03:51'),
(7, 0, '2022-10-19', 12, 5000, 5, 0, 25000, NULL, '2022-10-19 11:04:09', '2022-10-19 11:04:09'),
(8, 1, '2022-10-19', 13, 15000, 0, 3, 45000, NULL, '2022-10-19 12:08:02', '2022-10-19 12:08:11'),
(10, 0, '2022-10-20', 12, 5000, 5, 0, 25000, NULL, '2022-10-20 05:33:06', '2022-10-20 05:33:06'),
(11, 0, '2022-10-20', 13, 15000, 2, 0, 30000, NULL, '2022-10-20 05:33:12', '2022-10-20 05:33:12'),
(12, 1, '2022-10-20', 12, 5000, 0, 5, 25000, NULL, '2022-10-20 05:33:18', '2022-10-20 05:33:18'),
(13, 1, '2022-10-20', 13, 15000, 0, 1, 15000, NULL, '2022-10-20 05:33:23', '2022-10-20 05:33:23'),
(15, 0, '2022-10-27', 12, 5000, NULL, 0, 0, NULL, '2022-10-27 07:16:37', '2022-10-27 07:16:37'),
(16, 0, '2022-11-14', 25, 8000, 3, 0, 24000, NULL, '2022-11-13 16:26:56', '2022-11-13 16:26:56');

-- --------------------------------------------------------

--
-- 테이블 구조 `kinds`
--

CREATE TABLE `kinds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name16` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `kinds`
--

INSERT INTO `kinds` (`id`, `name16`, `created_at`, `updated_at`) VALUES
(2, '덮밥', '2022-11-10 05:38:04', '2022-11-10 05:38:04'),
(3, '디저트', '2022-11-17 06:21:05', '2022-11-17 06:21:05'),
(4, '사이드', '2022-11-17 07:11:40', '2022-11-17 07:11:57'),
(5, '고기', '2022-11-17 07:12:22', '2022-11-17 07:12:22'),
(6, '주류', '2022-11-17 07:12:47', '2022-11-17 07:12:47'),
(7, '회', '2022-11-17 07:12:51', '2022-11-17 07:12:51'),
(8, '중식', '2022-11-17 07:13:51', '2022-11-17 07:13:51'),
(9, '분식', '2022-11-17 07:14:56', '2022-11-17 07:14:56'),
(12, '국밥', '2022-11-25 08:32:14', '2022-11-25 08:34:09');

-- --------------------------------------------------------

--
-- 테이블 구조 `majors`
--

CREATE TABLE `majors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name16` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `majors`
--

INSERT INTO `majors` (`id`, `name16`, `created_at`, `updated_at`) VALUES
(1, '한식', '2022-11-10 07:34:13', '2022-11-10 07:34:13'),
(2, '일식', '2022-11-10 07:34:18', '2022-11-10 07:34:18'),
(3, '중식', '2022-11-10 07:34:23', '2022-11-10 07:34:23'),
(4, '양식', '2022-11-17 06:30:27', '2022-11-17 06:30:27'),
(5, '제과제빵', '2022-11-25 08:22:11', '2022-11-25 08:22:11');

-- --------------------------------------------------------

--
-- 테이블 구조 `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid16` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwd16` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name16` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel16` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank16` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `members`
--

INSERT INTO `members` (`id`, `uid16`, `pwd16`, `name16`, `tel16`, `rank16`, `created_at`, `updated_at`) VALUES
(1, 'admin', '1234', '관리자', '01012341234', 1, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(2, 'id2', '1234', '노기효', '01094818426', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(3, 'id3', '1234', '배안수', '01096029758', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(4, 'id4', '1234', '윤상기', '01091834099', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(5, 'id5', '1234', '남윤주', '01099745951', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(6, 'id6', '1234', '고은이', '01066752295', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(7, 'id7', '1234', '이창기', '01094867737', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(8, 'id8', '1234', '강주석', '01097175378', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(9, 'id9', '1234', '김상준', '01073282001', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(11, 'id11', '1234', '양구민', '01089906973', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(12, 'id12', '1234', '박철완', '01064517732', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(13, 'id13', '1234', '이조규', '01064725207', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(14, 'id14', '1234', '김안기', '01047835553', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(15, 'id15', '1234', '황전하', '01098549069', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(16, 'id16', '1234', '원정현', '01097953309', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(17, 'id17', '1234', '김성현', '01071564586', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(18, 'id18', '1234', '윤고영', '01046674402', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(19, 'id19', '1234', '손양진', '01093091586', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(20, 'id20', '1234', '서천범', '01029609537', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(21, 'id21', '1234', '최미은', '01095919293', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(22, 'id22', '1234', '현자석', '01045525203', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(23, 'id23', '1234', '고연진', '01039039565', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(24, 'id24', '1234', '임양진', '01047441735', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(25, 'id25', '1234', '김진형', '01029752059', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(27, 'id27', '1234', '김동진', '01032374556', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(28, 'id28', '1234', '박지영', '01032583779', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(29, 'id29', '1234', '이양성', '01022293628', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(30, 'id30', '1234', '박자형', '01035604903', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(31, 'id31', '1234', '김다우', '01029114044', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(32, 'id32', '1234', '임전철', '01030126920', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(33, 'id33', '1234', '최구선', '01023734840', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(34, 'id34', '1234', '정도솔', '01098643720', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(35, 'id35', '1234', '이영석', '01065956653', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(36, 'id36', '1234', '조경현', '01072265535', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(37, 'id37', '1234', '김만석', '01034670483', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(38, 'id38', '1234', '박만석', '01044184218', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(39, 'id39', '1234', '김현진', '01024095317', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(40, 'id40', '1234', '박솔희', '01075709030', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(41, 'id41', '1234', '권하미', '01024517990', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(42, 'id42', '1234', '이성민', '01036524847', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(43, 'id43', '1234', '장도운', '01035337719', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(44, 'id44', '1234', '고일남', '01096943617', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(45, 'id45', '1234', '황지우', '01091057558', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(46, 'id46', '1234', '정기근', '01025764748', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(47, 'id47', '1234', '양자승', '01080972732', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(48, 'id48', '1234', '윤성현', '01030685978', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(49, 'id49', '1234', '최기문', '01027595634', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(50, 'id50', '1234', '오시헌', '01020203572', 0, '2020-12-31 15:00:01', '2020-12-31 15:00:01'),
(56, '그래요?', '12345678', '그렇구만', '01000000000', 0, '2022-09-29 04:57:54', '2022-09-29 04:57:54'),
(58, 'asds', '12345678', 'asd', '12312341234', 0, '2022-09-29 06:32:38', '2022-09-29 06:33:24'),
(59, 'asfdafafasfas', 'asfasfasfasfas', 'gadsgafa', '12312341234', 0, '2022-09-29 06:33:12', '2022-09-29 06:33:12'),
(61, 'rud0503', '0503', 'test', '01028091639', 0, '2022-10-27 07:31:30', '2022-10-27 07:31:30');

-- --------------------------------------------------------

--
-- 테이블 구조 `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kinds_id16` int(11) DEFAULT NULL,
  `name16` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price16` int(11) DEFAULT NULL,
  `descrip16` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic16` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `menus`
--

INSERT INTO `menus` (`id`, `kinds_id16`, `name16`, `price16`, `descrip16`, `pic16`, `created_at`, `updated_at`) VALUES
(10, 3, '생크림 케이크', 25000, NULL, '셍크림 케이크.jpg', '2022-11-17 06:22:57', '2022-11-17 06:22:57'),
(11, 4, '타코야키', 5000, NULL, '타코야키.jpg', '2022-11-17 07:12:39', '2022-11-17 07:12:39'),
(12, 5, '삼겹살', 13000, NULL, '삼겹살.jpg', '2022-11-17 07:13:21', '2022-11-17 07:13:21'),
(13, 8, '양장피', 35000, NULL, '양장피.jpg', '2022-11-17 07:14:29', '2022-11-17 07:14:29'),
(14, 9, '떡볶이', 6000, NULL, '떡볶이.jpg', '2022-11-17 07:18:17', '2022-11-17 07:18:17'),
(15, 12, '순대국밥', 9000, NULL, '순대국밥.jpg', '2022-11-25 08:37:04', '2022-11-25 08:37:04');

-- --------------------------------------------------------

--
-- 테이블 구조 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_15_163223_create_members_table', 1),
(6, '2022_09_29_153635_create_gubuns_table', 2),
(7, '2022_09_29_161640_create_products_table', 3),
(8, '2022_10_13_135954_create_jangbus_table', 4),
(9, '2022_11_10_140508_create_menus_table', 5),
(10, '2022_11_10_142950_create_kinds_table', 6),
(11, '2022_11_10_154317_create_majors_table', 7),
(12, '2022_11_10_161211_create_cooks_table', 8),
(13, '2022_11_10_161650_create_majors_table', 8);

-- --------------------------------------------------------

--
-- 테이블 구조 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gubuns_id16` int(11) DEFAULT NULL,
  `name16` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price16` int(11) DEFAULT NULL,
  `jaego16` int(11) DEFAULT NULL,
  `pic16` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `products`
--

INSERT INTO `products` (`id`, `gubuns_id16`, `name16`, `price16`, `jaego16`, `pic16`, `created_at`, `updated_at`) VALUES
(24, 6, '바나나', 5000, 0, '바나나.jpg', '2022-11-03 05:27:41', '2022-11-03 05:27:41'),
(25, 6, '딸기', 8000, 3, '딸기.jpg', '2022-11-03 05:42:01', '2022-11-03 05:42:01'),
(26, 6, '사과', 3000, 0, '사과.jpg', '2022-11-03 05:42:16', '2022-11-03 05:42:16'),
(27, 6, '수박', 15000, 0, '수박.jpg', '2022-11-03 05:42:29', '2022-11-03 05:42:29'),
(28, 6, '멜론', 20000, 0, '멜론.jpg', '2022-11-03 05:42:41', '2022-11-03 05:42:41');

-- --------------------------------------------------------

--
-- 테이블 구조 `temps`
--

CREATE TABLE `temps` (
  `id` int(11) NOT NULL,
  `products_id16` int(11) DEFAULT NULL,
  `jaego16` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `temps`
--

INSERT INTO `temps` (`id`, `products_id16`, `jaego16`) VALUES
(1, 12, 7),
(2, 13, 8),
(3, 25, 3);

-- --------------------------------------------------------

--
-- 테이블 구조 `users`
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
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `cooks`
--
ALTER TABLE `cooks`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- 테이블의 인덱스 `gubuns`
--
ALTER TABLE `gubuns`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `jangbus`
--
ALTER TABLE `jangbus`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `kinds`
--
ALTER TABLE `kinds`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- 테이블의 인덱스 `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- 테이블의 인덱스 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `temps`
--
ALTER TABLE `temps`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `cooks`
--
ALTER TABLE `cooks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 테이블의 AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `gubuns`
--
ALTER TABLE `gubuns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 테이블의 AUTO_INCREMENT `jangbus`
--
ALTER TABLE `jangbus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 테이블의 AUTO_INCREMENT `kinds`
--
ALTER TABLE `kinds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 테이블의 AUTO_INCREMENT `majors`
--
ALTER TABLE `majors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 테이블의 AUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- 테이블의 AUTO_INCREMENT `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 테이블의 AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 테이블의 AUTO_INCREMENT `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- 테이블의 AUTO_INCREMENT `temps`
--
ALTER TABLE `temps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 테이블의 AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
