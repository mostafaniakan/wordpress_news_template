-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2023 at 10:19 PM
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
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(7, 'action_scheduler/migration_hook', 'complete', '2023-07-06 06:04:12', '2023-07-06 06:04:12', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1688623452;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1688623452;}', 1, 1, '2023-07-06 06:04:28', '2023-07-06 09:34:28', 0, NULL),
(8, 'woocommerce_cleanup_draft_orders', 'complete', '2023-07-06 06:03:45', '2023-07-06 06:03:45', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1688623425;s:18:\"\0*\0first_timestamp\";i:1688623425;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1688623425;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2023-07-06 06:04:04', '2023-07-06 09:34:04', 0, NULL),
(9, 'woocommerce_cleanup_draft_orders', 'complete', '2023-07-07 06:04:04', '2023-07-07 06:04:04', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1688709844;s:18:\"\0*\0first_timestamp\";i:1688623425;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1688709844;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2023-07-10 08:58:26', '2023-07-10 12:28:26', 0, NULL),
(10, 'action_scheduler/migration_hook', 'complete', '2023-07-06 06:20:59', '2023-07-06 06:20:59', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1688624459;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1688624459;}', 1, 1, '2023-07-06 06:21:12', '2023-07-06 09:51:12', 0, NULL),
(11, 'action_scheduler/migration_hook', 'failed', '2023-07-06 06:22:13', '2023-07-06 06:22:13', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1688624533;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1688624533;}', 1, 1, '2023-07-06 06:22:54', '2023-07-06 09:52:54', 0, NULL),
(12, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-06 07:05:48', '2023-07-06 07:05:48', '[13,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1688627148;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1688627148;}', 2, 1, '2023-07-06 07:06:39', '2023-07-06 10:36:39', 0, NULL),
(13, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'failed', '2023-07-06 08:44:43', '2023-07-06 08:44:43', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2023-07-06 08:44:45', '2023-07-06 12:14:45', 0, NULL),
(14, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-06 08:44:45', '2023-07-06 08:44:45', '[15,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1688633085;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1688633085;}', 2, 1, '2023-07-06 08:44:45', '2023-07-06 12:14:45', 0, NULL),
(15, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-06 09:29:29', '2023-07-06 09:29:29', '[13,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1688635769;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1688635769;}', 2, 1, '2023-07-06 09:30:20', '2023-07-06 13:00:20', 0, NULL),
(16, 'woocommerce_cleanup_draft_orders', 'pending', '2023-07-11 08:58:26', '2023-07-11 08:58:26', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1689065906;s:18:\"\0*\0first_timestamp\";i:1688623425;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1689065906;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'woocommerce-db-updates');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 7, 'action created', '2023-07-06 06:03:12', '2023-07-06 06:03:12'),
(2, 8, 'action created', '2023-07-06 06:03:45', '2023-07-06 06:03:45'),
(3, 8, 'action started via WP Cron', '2023-07-06 06:04:04', '2023-07-06 06:04:04'),
(4, 8, 'action complete via WP Cron', '2023-07-06 06:04:04', '2023-07-06 06:04:04'),
(5, 9, 'action created', '2023-07-06 06:04:04', '2023-07-06 06:04:04'),
(6, 7, 'action started via Async Request', '2023-07-06 06:04:28', '2023-07-06 06:04:28'),
(7, 7, 'action complete via Async Request', '2023-07-06 06:04:28', '2023-07-06 06:04:28'),
(8, 10, 'عملیات ایجاد شد', '2023-07-06 06:19:59', '2023-07-06 06:19:59'),
(9, 10, 'عملیات با Async Request شروع شد', '2023-07-06 06:21:12', '2023-07-06 06:21:12'),
(10, 10, 'عملیات با Async Request تکمیل شد', '2023-07-06 06:21:12', '2023-07-06 06:21:12'),
(11, 11, 'عملیات ایجاد شد', '2023-07-06 06:21:13', '2023-07-06 06:21:13'),
(12, 11, 'عملیات با WP Cron شروع شد', '2023-07-06 06:22:54', '2023-07-06 06:22:54'),
(13, 11, 'عملکرد از طریقWP Cron انجام نشد:Scheduled action for action_scheduler/migration_hook will not be executed as no callbacks are registered.', '2023-07-06 06:22:54', '2023-07-06 06:22:54'),
(14, 12, 'عملیات ایجاد شد', '2023-07-06 07:05:47', '2023-07-06 07:05:47'),
(15, 12, 'عملیات با Async Request شروع شد', '2023-07-06 07:06:39', '2023-07-06 07:06:39'),
(16, 12, 'عملیات با Async Request تکمیل شد', '2023-07-06 07:06:39', '2023-07-06 07:06:39'),
(17, 13, 'عملیات ایجاد شد', '2023-07-06 08:44:43', '2023-07-06 08:44:43'),
(18, 14, 'عملیات ایجاد شد', '2023-07-06 08:44:44', '2023-07-06 08:44:44'),
(19, 13, 'عملیات با Async Request شروع شد', '2023-07-06 08:44:45', '2023-07-06 08:44:45'),
(20, 13, 'عملکرد از طریقAsync Request انجام نشد:Scheduled action for woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications will not be executed as no callbacks are registered.', '2023-07-06 08:44:45', '2023-07-06 08:44:45'),
(21, 14, 'عملیات با Async Request شروع شد', '2023-07-06 08:44:45', '2023-07-06 08:44:45'),
(22, 14, 'عملیات با Async Request تکمیل شد', '2023-07-06 08:44:45', '2023-07-06 08:44:45'),
(23, 15, 'عملیات ایجاد شد', '2023-07-06 09:29:28', '2023-07-06 09:29:28'),
(24, 15, 'عملیات با Async Request شروع شد', '2023-07-06 09:30:20', '2023-07-06 09:30:20'),
(25, 15, 'عملیات با Async Request تکمیل شد', '2023-07-06 09:30:20', '2023-07-06 09:30:20'),
(26, 9, 'عملیات با WP Cron شروع شد', '2023-07-10 08:58:23', '2023-07-10 08:58:23'),
(27, 9, 'عملیات با WP Cron تکمیل شد', '2023-07-10 08:58:26', '2023-07-10 08:58:26'),
(28, 16, 'عملیات ایجاد شد', '2023-07-10 08:58:26', '2023-07-10 08:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bot_button_id`
--

CREATE TABLE `wp_bot_button_id` (
  `id` int(11) NOT NULL,
  `button_id` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bot_channels`
--

CREATE TABLE `wp_bot_channels` (
  `channel_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bot_items_users`
--

CREATE TABLE `wp_bot_items_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` varchar(500) NOT NULL,
  `sell` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bot_message_id`
--

CREATE TABLE `wp_bot_message_id` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bot_rates`
--

CREATE TABLE `wp_bot_rates` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `buy` int(11) NOT NULL,
  `sell` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bot_users`
--

CREATE TABLE `wp_bot_users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `phones` varchar(55) NOT NULL,
  `language` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 3, '_wp_trash_meta_status', '0'),
(2, 3, '_wp_trash_meta_time', '1691424897'),
(3, 13, '_wp_trash_meta_status', '1'),
(4, 13, '_wp_trash_meta_time', '1691488331'),
(5, 12, '_wp_trash_meta_status', '1'),
(6, 12, '_wp_trash_meta_time', '1691488331'),
(7, 11, '_wp_trash_meta_status', '1'),
(8, 11, '_wp_trash_meta_time', '1691488331'),
(9, 10, '_wp_trash_meta_status', '1'),
(10, 10, '_wp_trash_meta_time', '1691488331'),
(11, 9, '_wp_trash_meta_status', '1'),
(12, 9, '_wp_trash_meta_time', '1691488331'),
(13, 8, '_wp_trash_meta_status', '1'),
(14, 8, '_wp_trash_meta_time', '1691488331'),
(15, 18, '_wp_trash_meta_status', '1'),
(16, 18, '_wp_trash_meta_time', '1691488687'),
(17, 6, '_wp_trash_meta_status', '1'),
(18, 6, '_wp_trash_meta_time', '1691488687'),
(19, 22, '_wp_trash_meta_status', '0'),
(20, 22, '_wp_trash_meta_time', '1691496477'),
(21, 21, '_wp_trash_meta_status', '0'),
(22, 21, '_wp_trash_meta_time', '1691496477'),
(23, 20, '_wp_trash_meta_status', '0'),
(24, 20, '_wp_trash_meta_time', '1691496477');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 152, 'mostafa', 'mostafaniakan96@gmail.com', '', '::1', '2023-08-03 09:03:02', '2023-08-03 09:03:02', 'دیدگاه آزمایشی', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(3, 152, 'mmssss', 'mostafaniakan1111@gmail.com', '', '::1', '2023-08-07 19:44:31', '2023-08-07 16:14:31', 'sadfasdfasdfasdf', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 0),
(4, 152, 'mostafa', 'mostafaniakan96@gmail.com', '', '::1', '2023-08-07 20:34:04', '2023-08-07 17:04:04', 'سلام این یک پیام ازمایشی است', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(5, 152, 'mmssss', 'mostafaniakan92226@GMAIL.COM', '', '::1', '2023-08-07 22:09:02', '2023-08-07 18:39:02', 'این پیام از سمت کاربر مهمان ارسال شده است', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 0),
(6, 152, 'mostafa', 'mostafaniakan96@gmail.com', '', '::1', '2023-08-07 22:44:30', '2023-08-07 19:14:30', 'جواب کامنت', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 5, 1),
(7, 152, 'mostafa', 'mostafaniakan96@gmail.com', '', '::1', '2023-08-07 23:20:58', '2023-08-07 19:50:58', 'دیدگاه جدید', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 4, 1),
(8, 152, 'mostafa', 'mostafaniakan96@gmail.com', '', '::1', '2023-08-08 13:16:41', '2023-08-08 09:46:41', 'sghlsaldkfjlasdf', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(9, 152, 'mostafa', 'mostafaniakan96@gmail.com', '', '::1', '2023-08-08 13:16:54', '2023-08-08 09:46:54', 'aaaaa', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(10, 152, 'mostafa', 'mostafaniakan96@gmail.com', '', '::1', '2023-08-08 13:17:35', '2023-08-08 09:47:35', 'AAA', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(11, 152, 'mostafa', 'mostafaniakan96@gmail.com', '', '::1', '2023-08-08 13:18:01', '2023-08-08 09:48:01', 'ASDASD', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(12, 152, 'mostafa', 'mostafaniakan96@gmail.com', '', '::1', '2023-08-08 13:21:00', '2023-08-08 09:51:00', 'A', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(13, 152, 'mostafa', 'mostafaniakan96@gmail.com', '', '::1', '2023-08-08 13:21:33', '2023-08-08 09:51:33', 'DASDASD', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(14, 152, 'mostafa', 'mostafaniakan96@gmail.com', '', '::1', '2023-08-08 13:23:28', '2023-08-08 09:53:28', 'ZXzxzx', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 6, 1),
(15, 152, 'mostafa', 'mostafaniakan96@gmail.com', '', '::1', '2023-08-08 13:23:50', '2023-08-08 09:53:50', 'تست', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 2, 1),
(16, 152, 'mostafa', 'mostafaniakan96@gmail.com', '', '::1', '2023-08-08 13:26:09', '2023-08-08 09:56:09', 'DASDASD', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 4, 1),
(17, 152, 'mostafa', 'mostafaniakan96@gmail.com', '', '::1', '2023-08-08 13:27:07', '2023-08-08 09:57:07', 'ASDASD', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 2, 1),
(18, 152, 'mostafa', 'mostafaniakan96@gmail.com', '', '::1', '2023-08-08 13:27:23', '2023-08-08 09:57:23', 'SDFSDFSDFS', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 5, 1),
(19, 152, 'mostafa', 'mostafaniakan96@gmail.com', '', '::1', '2023-08-08 13:28:24', '2023-08-08 09:58:24', '1122', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(20, 152, 'mostafa', 'mostafaniakan96@gmail.com', '', '::1', '2023-08-08 13:31:16', '2023-08-08 10:01:16', '112233', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 19, 1),
(21, 152, 'مصطفی', 'mostafaniakan999996@gmail.com', '', '::1', '2023-08-08 15:35:51', '2023-08-08 12:05:51', 'شیسبشسیبشسیب', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 0),
(22, 152, 'مصطفی نیاکان', 'mostafaniakan96sss@gmail.com', '', '::1', '2023-08-08 15:36:56', '2023-08-08 12:06:56', 'asdasdasd', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 0),
(23, 152, 'ali', 'mostafaniakan196@gmail.com', '', '127.0.0.1', '2023-08-08 15:40:16', '2023-08-08 12:10:16', 'wertwrtwetrw', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'comment', 0, 16),
(24, 196, 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '::1', '2023-08-10 11:22:21', '2023-08-10 07:52:21', 'عالی', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(25, 199, 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '::1', '2023-08-10 11:22:47', '2023-08-10 07:52:47', 'عالی بود', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(26, 199, 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '::1', '2023-08-10 11:22:59', '2023-08-10 07:52:59', '؟؟؟؟؟', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(27, 193, 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '::1', '2023-08-10 11:23:52', '2023-08-10 07:53:52', 'مک', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(28, 193, 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '::1', '2023-08-10 11:24:09', '2023-08-10 07:54:09', 'mackbook pro', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 27, 1),
(29, 193, 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '::1', '2023-08-10 11:24:39', '2023-08-10 07:54:39', 'nice', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(30, 279, 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '::1', '2023-08-15 15:05:28', '2023-08-15 11:35:28', 'test', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(31, 279, 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '::1', '2023-08-15 15:47:16', '2023-08-15 12:17:16', 'sadasdasdas', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(32, 279, 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '::1', '2023-08-15 15:52:21', '2023-08-15 12:22:21', 'asdfasdfasdfads', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 31, 1),
(33, 279, 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '::1', '2023-08-15 15:52:39', '2023-08-15 12:22:39', 'sdfgsdfgsdfg', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 30, 1),
(34, 346, 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '::1', '2023-08-16 20:32:55', '2023-08-16 17:02:55', 'ئخسفشبش', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(35, 346, 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '::1', '2023-08-16 20:43:05', '2023-08-16 17:13:05', 'test message', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'comment', 0, 1),
(36, 149, 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '::1', '2023-08-18 17:34:17', '2023-08-18 14:04:17', '1111', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'comment', 0, 1),
(37, 149, 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '::1', '2023-08-18 17:34:27', '2023-08-18 14:04:27', '22222', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'comment', 36, 1),
(38, 149, 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '::1', '2023-08-18 17:53:25', '2023-08-18 14:23:25', '222', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'comment', 0, 1),
(39, 279, 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '::1', '2023-08-19 12:16:17', '2023-08-19 08:46:17', 'test1', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'comment', 0, 1),
(40, 193, 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '::1', '2023-08-20 14:22:21', '2023-08-20 10:52:21', 'gggg', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'comment', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_custom_front_user`
--

CREATE TABLE `wp_custom_front_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `family` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wp_custom_front_user`
--

INSERT INTO `wp_custom_front_user` (`id`, `name`, `family`, `email`, `bio`) VALUES
(3, '1', '2', '3', 'sdasda');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_me_add_operator`
--

CREATE TABLE `wp_me_add_operator` (
  `id` int(11) NOT NULL,
  `user_id` int(200) NOT NULL,
  `post_id` int(200) NOT NULL,
  `shortlist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wp_me_add_operator`
--

INSERT INTO `wp_me_add_operator` (`id`, `user_id`, `post_id`, `shortlist_id`) VALUES
(22, 1, 279, 14),
(23, 1, 279, 17);

-- --------------------------------------------------------

--
-- Table structure for table `wp_me_users`
--

CREATE TABLE `wp_me_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `family` varchar(255) NOT NULL,
  `bio` tinytext NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wp_me_users`
--

INSERT INTO `wp_me_users` (`id`, `name`, `family`, `bio`, `email`) VALUES
(132, 'fasdf', 'asdfasdf', 'asdfasdf', 'mostafaniakan96@gmail.com'),
(133, 'fasdf', 'asdfasdf', 'asdfasdf', 'mostafaniakan96@gmail.com'),
(134, 'fasdf', 'asdfasdf', 'asdfasdf', 'mostafaniakan96@gmail.com'),
(135, 'fasdf', 'asdfasdf', 'asdfasdf', 'mostafaniakan96@gmail.com'),
(136, 'asdfa', 'asdf', 'asdfasdf', 'mostafaniakan9ss6@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `wp_my_bookshelf`
--

CREATE TABLE `wp_my_bookshelf` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `publication_year` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `excerpt` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wp_my_bookshelf`
--

INSERT INTO `wp_my_bookshelf` (`id`, `title`, `author`, `genre`, `publication_year`, `image`, `excerpt`, `user_id`) VALUES
(20, 'ملت عشق', 'الیف شافاک', 'عاشقانه', '2023-06-21', 'http://localhost/wordpress/wp-content/uploads/Bookshelf_uploads_dir/2023/07/melateshgh2723.jpg', 'ملت عشق کتابی است پرفروش در ترکیه و البته ایران. شاید پیش از منتشر شدن این کتاب در ایران و استقبال بی‌نظیر از آن کمتر کسی الیف شافاک نویسنده', 1),
(21, 'laravel', 'laravel', 'عاشقانه', '2018-06-28', 'http://localhost/wordpress/wp-content/uploads/Bookshelf_uploads_dir/2023/07/OReilly8064.jpg', 'sdafasdfasdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_my_shortlist`
--

CREATE TABLE `wp_my_shortlist` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wp_my_shortlist`
--

INSERT INTO `wp_my_shortlist` (`id`, `name`, `user_id`) VALUES
(14, 'new', 1),
(17, 'new1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_my_users`
--

CREATE TABLE `wp_my_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_my_users_like_book`
--

CREATE TABLE `wp_my_users_like_book` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wp_my_users_like_book`
--

INSERT INTO `wp_my_users_like_book` (`id`, `user_id`, `book_id`) VALUES
(33, 1, 20);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'وردپرس', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mostafaniakan96@gmail.com', 'yes'),
(7, 'start_of_week', '6', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '3', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '1', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/%category%/', 'yes'),
(29, 'rewrite_rules', 'a:140:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:7:\"tech/?$\";s:24:\"index.php?post_type=tech\";s:37:\"tech/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=tech&feed=$matches[1]\";s:32:\"tech/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=tech&feed=$matches[1]\";s:24:\"tech/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=tech&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:49:\"tech-cat/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?tech-cat=$matches[1]&feed=$matches[2]\";s:44:\"tech-cat/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?tech-cat=$matches[1]&feed=$matches[2]\";s:25:\"tech-cat/([^/]+)/embed/?$\";s:41:\"index.php?tech-cat=$matches[1]&embed=true\";s:37:\"tech-cat/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?tech-cat=$matches[1]&paged=$matches[2]\";s:19:\"tech-cat/([^/]+)/?$\";s:30:\"index.php?tech-cat=$matches[1]\";s:49:\"tech-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?tech-tag=$matches[1]&feed=$matches[2]\";s:44:\"tech-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?tech-tag=$matches[1]&feed=$matches[2]\";s:25:\"tech-tag/([^/]+)/embed/?$\";s:41:\"index.php?tech-tag=$matches[1]&embed=true\";s:37:\"tech-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?tech-tag=$matches[1]&paged=$matches[2]\";s:19:\"tech-tag/([^/]+)/?$\";s:30:\"index.php?tech-tag=$matches[1]\";s:30:\"tech/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"tech/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"tech/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"tech/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"tech/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"tech/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:19:\"tech/(.+?)/embed/?$\";s:37:\"index.php?tech=$matches[1]&embed=true\";s:23:\"tech/(.+?)/trackback/?$\";s:31:\"index.php?tech=$matches[1]&tb=1\";s:43:\"tech/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?tech=$matches[1]&feed=$matches[2]\";s:38:\"tech/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?tech=$matches[1]&feed=$matches[2]\";s:31:\"tech/(.+?)/page/?([0-9]{1,})/?$\";s:44:\"index.php?tech=$matches[1]&paged=$matches[2]\";s:38:\"tech/(.+?)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?tech=$matches[1]&cpage=$matches[2]\";s:27:\"tech/(.+?)(?:/([0-9]+))?/?$\";s:43:\"index.php?tech=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\"[^/]+/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"[^/]+/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"[^/]+/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"[^/]+/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"[^/]+/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"[^/]+/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"([^/]+)/(.+?)/embed/?$\";s:63:\"index.php?name=$matches[1]&category_name=$matches[2]&embed=true\";s:26:\"([^/]+)/(.+?)/trackback/?$\";s:57:\"index.php?name=$matches[1]&category_name=$matches[2]&tb=1\";s:46:\"([^/]+)/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?name=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:41:\"([^/]+)/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?name=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:34:\"([^/]+)/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?name=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:41:\"([^/]+)/(.+?)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?name=$matches[1]&category_name=$matches[2]&cpage=$matches[3]\";s:30:\"([^/]+)/(.+?)(?:/([0-9]+))?/?$\";s:69:\"index.php?name=$matches[1]&category_name=$matches[2]&page=$matches[3]\";s:20:\"[^/]+/.+?/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"[^/]+/.+?/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"[^/]+/.+?/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"[^/]+/.+?/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"[^/]+/.+?/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"[^/]+/.+?/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:35:\"classic-widgets/classic-widgets.php\";i:3;s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";i:5;s:24:\"wordpress-seo/wp-seo.php\";i:6;s:29:\"wp-parsidate/wp-parsidate.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:75:\"C:\\xampp\\htdocs\\wordpress/wp-content/plugins/advanced-custom-fields/acf.php\";i:1;s:69:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/operaTorNetwork/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'develop-wp-theme', 'yes'),
(41, 'stylesheet', 'develop-wp-theme', 'yes'),
(42, 'comment_registration', '', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '1', 'yes'),
(72, 'comments_per_page', '2', 'yes'),
(73, 'default_comments_page', 'oldest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}', 'no'),
(80, 'timezone_string', 'Asia/Tehran', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1704117272', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:11:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:117:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:13:\"view_vip_post\";b:1;s:14:\"view_book_post\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:3:\"vip\";a:2:{s:4:\"name\";s:14:\"مشترک vip\";s:12:\"capabilities\";a:4:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:13:\"view_vip_post\";b:1;}}s:4:\"book\";a:2:{s:4:\"name\";s:24:\"کاربران Bookshelf\";s:12:\"capabilities\";a:4:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:14:\"view_book_post\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'fa_IR', 'yes'),
(103, 'user_count', '14', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:170:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>نوشته‌های تازه</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:242:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>آخرین دیدگاه‌ها</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>بایگانی‌ها</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:155:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>دسته‌ها</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar_1\";a:1:{i:0;s:12:\"catswidget-2\";}s:9:\"sidebar_2\";a:0:{}s:9:\"sidebar_3\";a:1:{i:0;s:9:\"hottags-2\";}s:9:\"sidebar_4\";a:2:{i:0;s:16:\"catswidgettech-3\";i:1;s:19:\"parsidate_archive-2\";}s:9:\"sidebar_5\";a:1:{i:0;s:13:\"hatposttech-2\";}s:9:\"sidebar_6\";a:1:{i:0;s:13:\"hottagstech-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:18:{i:1692994848;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1692995239;a:1:{s:27:\"wpseo_indexable_index_batch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:15:\"fifteen_minutes\";s:4:\"args\";a:0:{}s:8:\"interval\";i:900;}}}i:1692996873;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1692997200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1693009195;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1693014873;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1693014965;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1693030795;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1693030805;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1693033368;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1693041595;a:2:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"woocommerce_cleanup_rate_limits\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1693058073;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1693058186;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1693059845;a:1:{s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1693077988;a:1:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1693408336;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1693490073;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'theme_mods_twentytwentythree', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1689838544;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(124, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:35:\"تأیید SSL ناموفق بود.\";}}', 'yes'),
(139, 'current_theme', 'Develop Wp Theme', 'yes'),
(140, 'theme_mods_clab', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1691678137;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(142, 'widget_categorise_sidebar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(143, 'widget_clab_search_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(144, 'widget_our_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(145, 'widget_categorise_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(146, 'widget_clab_customer_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(151, 'theme_mods_coffee1', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1691678147;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(172, 'recently_activated', 'a:4:{s:17:\"user_api/core.php\";i:1692612200;s:20:\"setting-api/core.php\";i:1692611923;s:30:\"setting_api_with_tabs/core.php\";i:1692611808;s:59:\"show-user-registration-date/show-user-registration-date.php\";i:1692611063;}', 'yes'),
(173, 'acf_version', '6.1.7', 'yes'),
(177, 'action_scheduler_hybrid_store_demarkation', '6', 'yes'),
(178, 'schema-ActionScheduler_StoreSchema', '6.0.1688623387', 'yes'),
(179, 'schema-ActionScheduler_LoggerSchema', '3.0.1688623387', 'yes'),
(182, 'woocommerce_schema_version', '430', 'yes'),
(183, 'woocommerce_store_address', 'سمنان خیابان استانه جنب پاساژ جنت پلاک 31', 'yes'),
(184, 'woocommerce_store_address_2', '', 'yes'),
(185, 'woocommerce_store_city', 'سمنان', 'yes'),
(186, 'woocommerce_default_country', 'IR:SMN', 'yes'),
(187, 'woocommerce_store_postcode', '۳۵۱۶۶۹۳۹۱۴', 'yes'),
(188, 'woocommerce_allowed_countries', 'all', 'yes'),
(189, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(190, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(191, 'woocommerce_ship_to_countries', '', 'yes'),
(192, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(193, 'woocommerce_default_customer_address', 'base', 'yes'),
(194, 'woocommerce_calc_taxes', 'no', 'yes'),
(195, 'woocommerce_enable_coupons', 'yes', 'yes'),
(196, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(197, 'woocommerce_currency', 'IRR', 'yes'),
(198, 'woocommerce_currency_pos', 'left', 'yes'),
(199, 'woocommerce_price_thousand_sep', '.', 'yes'),
(200, 'woocommerce_price_decimal_sep', ',', 'yes'),
(201, 'woocommerce_price_num_decimals', '0', 'yes'),
(202, 'woocommerce_shop_page_id', '7', 'yes'),
(203, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(204, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(205, 'woocommerce_placeholder_image', '6', 'yes'),
(206, 'woocommerce_weight_unit', 'kg', 'yes'),
(207, 'woocommerce_dimension_unit', 'cm', 'yes'),
(208, 'woocommerce_enable_reviews', 'yes', 'yes'),
(209, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(210, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(211, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(212, 'woocommerce_review_rating_required', 'yes', 'no'),
(213, 'woocommerce_manage_stock', 'yes', 'yes'),
(214, 'woocommerce_hold_stock_minutes', '60', 'no'),
(215, 'woocommerce_notify_low_stock', 'yes', 'no'),
(216, 'woocommerce_notify_no_stock', 'yes', 'no'),
(217, 'woocommerce_stock_email_recipient', 'mostafaniakan96@gmail.com', 'no'),
(218, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(219, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(220, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(221, 'woocommerce_stock_format', '', 'yes'),
(222, 'woocommerce_file_download_method', 'force', 'no'),
(223, 'woocommerce_downloads_redirect_fallback_allowed', 'no', 'no'),
(224, 'woocommerce_downloads_require_login', 'no', 'no'),
(225, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(226, 'woocommerce_downloads_deliver_inline', '', 'no'),
(227, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(228, 'woocommerce_attribute_lookup_enabled', 'no', 'yes'),
(229, 'woocommerce_attribute_lookup_direct_updates', 'no', 'yes'),
(230, 'woocommerce_prices_include_tax', 'no', 'yes'),
(231, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(232, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(233, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(234, 'woocommerce_tax_classes', '', 'yes'),
(235, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(236, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(237, 'woocommerce_price_display_suffix', '', 'yes'),
(238, 'woocommerce_tax_total_display', 'itemized', 'no'),
(239, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(240, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(241, 'woocommerce_ship_to_destination', 'billing', 'no'),
(242, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(243, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(244, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(245, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(246, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(247, 'woocommerce_registration_generate_username', 'yes', 'no'),
(248, 'woocommerce_registration_generate_password', 'yes', 'no'),
(249, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(250, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(251, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(252, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(253, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(254, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(255, 'woocommerce_trash_pending_orders', '', 'no'),
(256, 'woocommerce_trash_failed_orders', '', 'no'),
(257, 'woocommerce_trash_cancelled_orders', '', 'no'),
(258, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(259, 'woocommerce_email_from_name', 'test', 'no'),
(260, 'woocommerce_email_from_address', 'mostafaniakan96@gmail.com', 'no'),
(261, 'woocommerce_email_header_image', '', 'no'),
(262, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(263, 'woocommerce_email_base_color', '#7f54b3', 'no'),
(264, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(265, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(266, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(267, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(268, 'woocommerce_cart_page_id', '8', 'no'),
(269, 'woocommerce_checkout_page_id', '9', 'no'),
(270, 'woocommerce_myaccount_page_id', '10', 'no'),
(271, 'woocommerce_terms_page_id', '', 'no'),
(272, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(273, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(274, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(275, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(276, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(277, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(278, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(279, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(280, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(281, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(282, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(283, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(284, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(285, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(286, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(287, 'woocommerce_api_enabled', 'no', 'yes'),
(288, 'woocommerce_allow_tracking', 'yes', 'no'),
(289, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(290, 'woocommerce_analytics_enabled', 'yes', 'yes'),
(291, 'woocommerce_navigation_enabled', 'no', 'yes'),
(292, 'woocommerce_feature_product_block_editor_enabled', 'no', 'yes'),
(293, 'woocommerce_feature_custom_order_tables_enabled', 'no', 'yes'),
(294, 'woocommerce_single_image_width', '600', 'yes'),
(295, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(296, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(297, 'woocommerce_demo_store', 'no', 'no'),
(298, 'wc_downloads_approved_directories_mode', 'enabled', 'yes'),
(299, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(300, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(301, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(303, 'product_cat_children', 'a:0:{}', 'yes'),
(304, 'default_product_cat', '15', 'yes'),
(306, 'woocommerce_refund_returns_page_id', '11', 'yes'),
(309, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:25:\"mostafaniakan96@gmail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:25:\"mostafaniakan96@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}', 'yes'),
(310, 'woocommerce_version', '7.8.2', 'yes'),
(311, 'woocommerce_db_version', '7.8.2', 'yes'),
(312, 'woocommerce_admin_install_timestamp', '1688623390', 'yes'),
(313, 'woocommerce_inbox_variant_assignment', '3', 'yes'),
(317, '_transient_jetpack_autoloader_plugin_paths', 'a:0:{}', 'yes'),
(318, 'action_scheduler_lock_async-request-runner', '1688980673', 'yes'),
(319, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(320, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"VfA5DD4FB63jeB8ijP99GJ7TXnS6LkDB\";}', 'yes'),
(321, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(322, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(323, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(324, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(325, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(326, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(327, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(328, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(329, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(330, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(331, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(332, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(333, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(337, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(350, 'wc_blocks_db_schema_version', '260', 'yes'),
(351, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}', 'no'),
(364, '_transient_woocommerce_reports-transient-version', '1688624671', 'yes'),
(382, 'woocommerce_task_list_tracked_completed_tasks', 'a:5:{i:0;s:8:\"purchase\";i:1;s:13:\"store_details\";i:2;s:8:\"shipping\";i:3;s:15:\"review-shipping\";i:4;s:8:\"products\";}', 'yes'),
(393, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(395, 'persian_woocommerce_translates', 'a:0:{}', 'yes'),
(413, 'wc_has_tracked_default_theme', '1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(414, 'woocommerce_onboarding_profile', 'a:10:{s:18:\"is_agree_marketing\";b:0;s:11:\"store_email\";s:25:\"mostafaniakan96@gmail.com\";s:20:\"is_store_country_set\";b:1;s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:27:\"fashion-apparel-accessories\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:4:\"1-10\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:0:{}s:12:\"setup_client\";b:1;s:9:\"completed\";b:1;}', 'yes'),
(416, 'woocommerce_task_list_dismissed_tasks', 'a:0:{}', 'yes'),
(427, '_transient_shipping-transient-version', '1688625120', 'yes'),
(428, 'woocommerce_admin_created_default_shipping_zones', 'yes', 'yes'),
(430, 'woocommerce_admin_reviewed_default_shipping_zones', 'yes', 'yes'),
(433, '_transient_woocommerce_shipping_task_zone_count_transient', '1', 'yes'),
(434, 'woocommerce_task_list_prompt_shown', '1', 'yes'),
(448, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(479, '_transient_product_query-transient-version', '1688636144', 'yes'),
(480, '_transient_product-transient-version', '1688636144', 'yes'),
(501, 'woocommerce_task_list_reminder_bar_hidden', 'yes', 'yes'),
(528, 'recovery_mode_email_last_sent', '1692873638', 'yes'),
(540, 'woocommerce_ces_tracks_queue', 'a:0:{}', 'yes'),
(542, 'woocommerce_clear_ces_tracks_queue_for_page', '', 'yes'),
(578, 'woocommerce_ces_shown_for_actions', 'a:1:{i:0;s:19:\"product_add_publish\";}', 'yes'),
(630, 'woocommerce_tracker_ua', 'a:1:{i:0;s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";}', 'no'),
(636, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":4,\"critical\":3}', 'yes'),
(653, 'woocommerce_tracker_last_send', '1688979721', 'yes'),
(657, 'pw_dismiss_notice_tapin-dashboard', '1704531939', 'yes'),
(658, 'pw_dismiss_notice_all', '1689066339', 'yes'),
(674, 'theme_mods_wp-training-theme', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1691678116;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(738, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(749, 'theme_mods_PROJECT-12', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1689151596;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:12:\"main-sidebar\";a:0:{}}}}', 'yes'),
(780, '_me_words_link', 'a:2:{s:23:\"\n            wordpress\";s:12:\"وردپرس\";s:3:\"php\";s:3:\"php\";}', 'yes'),
(843, 'theme_mods_twentytwentyone', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1689234168;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(874, 'new_admin_email', 'mostafaniakan96@gmail.com', 'yes'),
(875, 'my_option', '1111', 'yes'),
(878, 'my_option_setting', '', 'yes'),
(881, 'my_option2', '22222', 'yes'),
(890, '_my_option2', '3', 'yes'),
(893, '_my_option', '2', 'yes'),
(919, '_secret_key', '111', 'yes'),
(920, '_api_key', '2222', 'yes'),
(926, '_secret_key_tab2', '22', 'yes'),
(927, '_api_key_tab2', '333', 'yes'),
(1031, 'theme_mods_post-api-82qb/post-api', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1689600364;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(1035, 'theme_mods_post-api', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1689838499;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(1073, '_me_token', '6186515390:AAFS1nPB-WhTE5HSxQf1ETPo4FZtFGfkHPA', 'yes'),
(1101, 'theme_mods_post-api/post-api', 'a:3:{s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1691678108;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(1137, 'theme_mods_res_full_api_get_post', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1691678089;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(1287, 'theme_mods_wp-front-ajax', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1691678099;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(1351, 'theme_mods_twentytwentytwo', 'a:5:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1690466051;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(1356, 'theme_mods_Bookshelf', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1691678126;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(1569, 'theme_mods_my-first-theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1690881783;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(1593, 'theme_mods_develop-wp-theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"top nav\";i:19;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1692980162;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar_1\";a:1:{i:0;s:12:\"catswidget-2\";}s:9:\"sidebar_2\";a:1:{i:0;s:9:\"hatpost-2\";}s:9:\"sidebar_3\";a:1:{i:0;s:9:\"hottags-2\";}s:9:\"sidebar_4\";a:1:{i:0;s:16:\"catswidgettech-3\";}s:9:\"sidebar_5\";a:1:{i:0;s:13:\"hatposttech-2\";}s:9:\"sidebar_6\";a:1:{i:0;s:13:\"hottagstech-3\";}}}}', 'yes'),
(1656, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(1690, 'wpp_settings', 'a:11:{s:10:\"conv_title\";s:7:\"disable\";s:13:\"conv_contents\";s:7:\"disable\";s:12:\"conv_excerpt\";s:7:\"disable\";s:13:\"conv_comments\";s:7:\"disable\";s:18:\"conv_comment_count\";s:7:\"disable\";s:10:\"conv_dates\";s:7:\"disable\";s:9:\"conv_cats\";s:7:\"disable\";s:11:\"conv_arabic\";s:7:\"disable\";s:15:\"conv_permalinks\";s:7:\"disable\";s:11:\"news_source\";s:5:\"parsi\";s:12:\"persian_date\";s:6:\"enable\";}', 'yes'),
(1691, 'widget_parsidate_archive', 'a:2:{i:2;a:4:{s:23:\"parsidate_archive_title\";s:10:\"آرشیو\";s:23:\"parsidate_archive_count\";s:1:\"1\";s:22:\"parsidate_archive_list\";i:0;s:22:\"parsidate_archive_type\";s:7:\"monthly\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1692, 'widget_parsidate_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1792, 'widget_catswidget', 'a:2:{i:2;a:1:{s:5:\"title\";s:22:\"دسته بندی ها\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1817, 'widget_hatpost', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1834, 'widget_hottags', 'a:2:{i:2;a:1:{s:5:\"title\";s:27:\"تگ های پر تکرار\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1844, 'yoast_premium_as_an_addon_installer', 'completed', 'yes'),
(1845, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:5:\"20.12\";}', 'yes'),
(1846, 'wpseo', 'a:105:{s:8:\"tracking\";b:0;s:16:\"toggled_tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:5:\"20.12\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1691263589;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:23:\"/%postname%/%category%/\";s:8:\"home_url\";s:26:\"http://localhost/wordpress\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:2:{s:18:\"category-operators\";s:9:\"operators\";s:12:\"operator_tag\";s:10:\"technology\";}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:1;s:19:\"importing_completed\";a:5:{s:30:\"aioseo_custom_archive_settings\";b:1;s:31:\"aioseo_default_archive_settings\";b:1;s:23:\"aioseo_general_settings\";b:1;s:32:\"aioseo_posttype_default_settings\";b:1;s:24:\"aioseo_taxonomy_settings\";b:1;}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1691263595;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:20:\"deny_adsbot_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:4:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"attachment\";i:3;s:4:\"tech\";}s:28:\"last_known_public_taxonomies\";a:5:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";i:3;s:8:\"tech-cat\";i:4;s:8:\"tech-tag\";}s:23:\"last_known_no_unindexed\";a:6:{s:27:\"wpseo_total_unindexed_posts\";i:1692631485;s:27:\"wpseo_total_unindexed_terms\";i:1692631485;s:31:\"wpseo_unindexed_term_link_count\";i:1692994556;s:31:\"wpseo_unindexed_post_link_count\";i:1692994556;s:40:\"wpseo_total_unindexed_post_type_archives\";i:1692994556;s:35:\"wpseo_total_unindexed_general_items\";i:1692974266;}s:14:\"new_post_types\";a:1:{i:3;s:4:\"tech\";}s:14:\"new_taxonomies\";a:2:{i:3;s:8:\"tech-cat\";i:4;s:8:\"tech-tag\";}s:34:\"show_new_content_type_notification\";b:1;}', 'yes'),
(1847, 'wpseo_titles', 'a:117:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:24:\"publishing_principles_id\";i:0;s:25:\"ownership_funding_info_id\";i:0;s:29:\"actionable_feedback_policy_id\";i:0;s:21:\"corrections_policy_id\";i:0;s:16:\"ethics_policy_id\";i:0;s:19:\"diversity_policy_id\";i:0;s:28:\"diversity_staffing_report_id\";i:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(1848, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}s:12:\"mastodon_url\";s:0:\"\";}', 'yes'),
(1849, 'yoast_migrations_premium', 'a:1:{s:7:\"version\";s:5:\"20.12\";}', 'yes'),
(2328, 'db_upgraded', '', 'yes'),
(2333, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"mostafaniakan96@gmail.com\";s:7:\"version\";s:3:\"6.3\";s:9:\"timestamp\";i:1691563705;}', 'no'),
(2334, 'can_compress_scripts', '1', 'yes'),
(2376, 'widget_catswidgettech', 'a:2:{i:3;a:1:{s:5:\"title\";s:34:\"دسته بندی تکنولوژی\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(2377, 'widget_hatposttech', 'a:2:{i:2;a:1:{s:5:\"title\";s:43:\"مطالب پر مخاطب تکنولوژی\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(2383, 'widget_hottagstech', 'a:2:{i:3;a:1:{s:5:\"title\";s:27:\"تگ های پر تکرار\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(2433, 'wpseo_taxonomy_meta', 'a:4:{s:4:\"tech\";a:3:{i:32;a:3:{s:13:\"wpseo_focuskw\";s:6:\"اپل\";s:13:\"wpseo_linkdex\";s:2:\"28\";s:19:\"wpseo_content_score\";s:1:\"0\";}i:34;a:3:{s:13:\"wpseo_focuskw\";s:8:\"گوگل\";s:13:\"wpseo_linkdex\";s:2:\"24\";s:19:\"wpseo_content_score\";s:1:\"0\";}i:36;a:3:{s:13:\"wpseo_focuskw\";s:10:\"technology\";s:13:\"wpseo_linkdex\";s:2:\"28\";s:19:\"wpseo_content_score\";s:1:\"0\";}}s:8:\"category\";a:3:{i:25;a:3:{s:13:\"wpseo_focuskw\";s:3:\"php\";s:13:\"wpseo_linkdex\";s:2:\"36\";s:19:\"wpseo_content_score\";s:1:\"0\";}i:24;a:3:{s:13:\"wpseo_focuskw\";s:12:\"لاراول\";s:13:\"wpseo_linkdex\";s:2:\"36\";s:19:\"wpseo_content_score\";s:1:\"0\";}i:20;a:3:{s:13:\"wpseo_focuskw\";s:3:\"vue\";s:13:\"wpseo_linkdex\";s:2:\"36\";s:19:\"wpseo_content_score\";s:1:\"0\";}}s:8:\"tech_tag\";a:1:{i:31;a:3:{s:13:\"wpseo_focuskw\";s:8:\"گوگل\";s:13:\"wpseo_linkdex\";s:2:\"24\";s:19:\"wpseo_content_score\";s:1:\"0\";}}s:8:\"cat_tech\";a:1:{i:39;a:3:{s:13:\"wpseo_focuskw\";s:6:\"اپل\";s:13:\"wpseo_linkdex\";s:2:\"28\";s:19:\"wpseo_content_score\";s:1:\"0\";}}}', 'yes'),
(2446, 'category_children', 'a:1:{i:23;a:3:{i:0;i:20;i:1;i:24;i:2;i:25;}}', 'yes'),
(2591, 'tech_children', 'a:1:{i:36;a:2:{i:0;i:32;i:1;i:34;}}', 'yes'),
(2709, 'cat_tech_children', 'a:1:{i:38;a:1:{i:0;i:39;}}', 'yes'),
(2719, 'cat-tech_children', 'a:1:{i:40;a:1:{i:0;i:41;}}', 'yes'),
(2750, 'theme_mods_operaTorNetwork', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"top-nav\";i:19;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1692988038;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(2951, 'category-operators_children', 'a:1:{i:44;a:1:{i:0;i:46;}}', 'yes'),
(3642, 'tech_cat_children', 'a:0:{}', 'yes'),
(3700, 'tech-cat_children', 'a:1:{i:50;a:2:{i:0;i:51;i:1;i:52;}}', 'yes'),
(4127, '_site_transient_timeout_php_check_407189c3bdddc3047b815cc7ed29ff4f', '1693390224', 'no'),
(4128, '_site_transient_php_check_407189c3bdddc3047b815cc7ed29ff4f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(4247, '_transient_timeout_wpseo_site_information', '1693060652', 'no'),
(4248, '_transient_wpseo_site_information', 'O:8:\"stdClass\":2:{s:3:\"url\";s:26:\"http://localhost/wordpress\";s:13:\"subscriptions\";a:0:{}}', 'no'),
(4249, '_transient_timeout_wpseo_site_information_quick', '1692974312', 'no'),
(4250, '_transient_wpseo_site_information_quick', 'O:8:\"stdClass\":2:{s:3:\"url\";s:26:\"http://localhost/wordpress\";s:13:\"subscriptions\";a:0:{}}', 'no'),
(4262, '_transient_timeout_wpseo_total_unindexed_general_items', '1693080956', 'no'),
(4263, '_transient_wpseo_total_unindexed_general_items', '0', 'no'),
(4268, '_site_transient_timeout_browser_3357fadb0316939352bbdd4d5360a97f', '1693579068', 'no'),
(4269, '_site_transient_browser_3357fadb0316939352bbdd4d5360a97f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"116.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(4272, '_transient_timeout_feed_1a35a986d21ecac6e67e45f5050a2d43', '1693017473', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4273, '_transient_feed_1a35a986d21ecac6e67e45f5050a2d43', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"وردپرس پارسی\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"https://wp-parsi.com/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 17 May 2023 15:47:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fa-IR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wordpress.org/?v=6.2.2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:68:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n\n					\n		\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"برگزاری میتاپ جشن تولد ۲۰ سالگی وردپرس در تهران\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wp-parsi.com/wp20-tehran-meetup/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wp-parsi.com/wp20-tehran-meetup/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 16 May 2023 23:43:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:30:\"خبرها و رویدادها\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:16:\"رویدادها\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:21:\"تولد وردپرس\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:23:\"میتاپ وردپرس\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wp-parsi.com/?p=822\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:811:\"<p>در تاریخ ۶ خرداد امسال وردپرس ۲۰ ساله می‌شود. به همین مناسبت در تمامی دنیا رویدادهایی با هدف گرفتن جشن برای این روز برگزار می‌شود. لوکال منیجرها، توسعه‌دهنده‌ها و سایر دوستدارن دنیای متن باز و وردپرس با دورهم جمع شدن این روز رو در کل دنیا با هم جشن می‌گیرند. به همین جهت ما نیز [&#8230;]</p>\n<p>نوشته <a rel=\"nofollow\" href=\"https://wp-parsi.com/wp20-tehran-meetup/\">برگزاری میتاپ جشن تولد ۲۰ سالگی وردپرس در تهران</a> اولین بار در <a rel=\"nofollow\" href=\"https://wp-parsi.com\">وردپرس پارسی</a> پدیدار شد.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"سعید فرد\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wp-parsi.com/wp20-tehran-meetup/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:59:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n		\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"نگارش ۴ افزونه پارسی دیت منتشر شد\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://wp-parsi.com/parsidate-version-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wp-parsi.com/parsidate-version-4/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 16 Nov 2021 22:08:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"مقالات و آموزش‌ها\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wp-parsi.com/?p=760\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:863:\"<p>افزونه شمسی ساز تاریخ وردپرس پارسی‌دیت که در حال حاضر پر نصب‌ترین افزونه شمسی‌ساز در بین کاربران فارسی زبان است به‌روزرسانی شد. این به‌روزرسانی با گزارشات و همکاری کاربران در شبکه‌های اجتماعی، انجمن وردپرس پارسی، گیت‌هاب و … صورت گرفت که قابلیت‌های جدیدی به این افزونه اضافه کرد. در ادامه به شرح تغییرات این نگارش [&#8230;]</p>\n<p>نوشته <a rel=\"nofollow\" href=\"https://wp-parsi.com/parsidate-version-4/\">نگارش ۴ افزونه پارسی دیت منتشر شد</a> اولین بار در <a rel=\"nofollow\" href=\"https://wp-parsi.com\">وردپرس پارسی</a> پدیدار شد.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"سعید فرد\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://wp-parsi.com/parsidate-version-4/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"37\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:43:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n		\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"چگونه سرور مجازی مناسب انتخاب کنیم؟\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:207:\"https://wp-parsi.com/%da%86%da%af%d9%88%d9%86%d9%87-%d8%b3%d8%b1%d9%88%d8%b1-%d9%85%d8%ac%d8%a7%d8%b2%db%8c-%d9%85%d9%86%d8%a7%d8%b3%d8%a8-%d8%a7%d9%86%d8%aa%d8%ae%d8%a7%d8%a8-%da%a9%d9%86%db%8c%d9%85%d8%9f/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 08 May 2020 07:29:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"رپرتاژ آگهی\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wp-parsi.com/?p=730\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:965:\"<p>مطمئناً برای برخی از کاربران این سوال پیش می‌آید که سرور مجازی چیست و چه کاربردی دارد؟ و چگونه سرور مجازی مناسبی انتخا کنم؟ سرور مجازی (Virtual Private Server)، به سروری گفته می‌شود که منابع سرور بین چند ماشین یا چند کاربر تقسیم می‌شود. تصور کنید که یک کامپیوتر مرکزی وجود دارد که چندین کاربر [&#8230;]</p>\n<p>نوشته <a rel=\"nofollow\" href=\"https://wp-parsi.com/%da%86%da%af%d9%88%d9%86%d9%87-%d8%b3%d8%b1%d9%88%d8%b1-%d9%85%d8%ac%d8%a7%d8%b2%db%8c-%d9%85%d9%86%d8%a7%d8%b3%d8%a8-%d8%a7%d9%86%d8%aa%d8%ae%d8%a7%d8%a8-%da%a9%d9%86%db%8c%d9%85%d8%9f/\">چگونه سرور مجازی مناسب انتخاب کنیم؟</a> اولین بار در <a rel=\"nofollow\" href=\"https://wp-parsi.com\">وردپرس پارسی</a> پدیدار شد.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"تبلیغچی\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:43:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n		\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"سرویس چاپ انواع لباس و تیشرت\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://wp-parsi.com/payarchap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 29 Mar 2020 07:35:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"رپرتاژ آگهی\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wp-parsi.com/?p=565\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:758:\"<p>شرکت پایار چاپ در سال ۱۳۸۸ به عنوان مرکز طراحی، چاپ و تولید انواع پارچه و لباس شروع به فعالیت کرد، در پایارچاپ طی این ۸ سال گذشته به نوآوری‌‌های مختلف در صنعت چاپ لباس و پارچه پرداخته شده و با توسعه مجموعه در حال حاضر یکی از کامل‌ترین مجموعه‌های چاپی می‌باشد که این امکان [&#8230;]</p>\n<p>نوشته <a rel=\"nofollow\" href=\"https://wp-parsi.com/payarchap/\">سرویس چاپ انواع لباس و تیشرت</a> اولین بار در <a rel=\"nofollow\" href=\"https://wp-parsi.com\">وردپرس پارسی</a> پدیدار شد.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"تبلیغچی\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:62:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n		\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"برگزاری پنجمین رویداد آینده وب و موبایل\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:220:\"https://wp-parsi.com/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%be%d9%86%d8%ac%d9%85%db%8c%d9%86-%d8%b1%d9%88%db%8c%d8%af%d8%a7%d8%af-%d8%a2%db%8c%d9%86%d8%af%d9%87-%d9%88%d8%a8-%d9%88-%d9%85%d9%88%d8%a8%d8%a7%db%8c/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:228:\"https://wp-parsi.com/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%be%d9%86%d8%ac%d9%85%db%8c%d9%86-%d8%b1%d9%88%db%8c%d8%af%d8%a7%d8%af-%d8%a2%db%8c%d9%86%d8%af%d9%87-%d9%88%d8%a8-%d9%88-%d9%85%d9%88%d8%a8%d8%a7%db%8c/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 07 Feb 2020 17:40:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:30:\"خبرها و رویدادها\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:16:\"رویدادها\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wp-parsi.com/?p=700\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:956:\"<p>روﯾﺪاد آﯾﻨﺪه وب و ﻣﻮﺑﺎﯾﻞ ﯾﮏ روﯾﺪاد ﺳﺎﻻﻧﻪ است که در روزهای ۸ و ۹ اسفند سال ۹۸، پنجمین دوره آن به مدت دو روز در مجموعه فرهنگی حجاب واقع در خیابان فاطمی تهران برگزار خواهد شد. این رویداد از دو بخش همایش و نمایشگاه تشکیل می‌شود که در دو روز پایانی هفته (پنج شنبه [&#8230;]</p>\n<p>نوشته <a rel=\"nofollow\" href=\"https://wp-parsi.com/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%be%d9%86%d8%ac%d9%85%db%8c%d9%86-%d8%b1%d9%88%db%8c%d8%af%d8%a7%d8%af-%d8%a2%db%8c%d9%86%d8%af%d9%87-%d9%88%d8%a8-%d9%88-%d9%85%d9%88%d8%a8%d8%a7%db%8c/\">برگزاری پنجمین رویداد آینده وب و موبایل</a> اولین بار در <a rel=\"nofollow\" href=\"https://wp-parsi.com\">وردپرس پارسی</a> پدیدار شد.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"سعید فرد\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:225:\"https://wp-parsi.com/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%be%d9%86%d8%ac%d9%85%db%8c%d9%86-%d8%b1%d9%88%db%8c%d8%af%d8%a7%d8%af-%d8%a2%db%8c%d9%86%d8%af%d9%87-%d9%88%d8%a8-%d9%88-%d9%85%d9%88%d8%a8%d8%a7%db%8c/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:62:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n		\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"برگزاری دومین همایش فریلند\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://wp-parsi.com/freelanday/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wp-parsi.com/freelanday/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 22 Aug 2019 14:26:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:30:\"خبرها و رویدادها\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:16:\"رویدادها\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wp-parsi.com/?p=681\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:791:\"<p>دومین همایش فریلند با رویکرد آموزش اصول فریلنسینگ، ۲۸ و ۲۹ شهریور در منطقه آزاد انزلی برگزار می‌شود. در این همایش افراد علاقه‌مند یاد می‌گیرند چطور کار کردن به شیوه فریلنسینگ به عنوان یک کار تمام وقت و حرفه‌ای را شروع کنند، مشتریان خود را بیابند، خودشان را معرفی کنند و بدون استخدام شدن در [&#8230;]</p>\n<p>نوشته <a rel=\"nofollow\" href=\"https://wp-parsi.com/freelanday/\">برگزاری دومین همایش فریلند</a> اولین بار در <a rel=\"nofollow\" href=\"https://wp-parsi.com\">وردپرس پارسی</a> پدیدار شد.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"سعید فرد\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://wp-parsi.com/freelanday/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:68:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n\n					\n		\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"افزونه تلگرام وردپرس\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://wp-parsi.com/wp-telegram-pro/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://wp-parsi.com/wp-telegram-pro/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Apr 2019 07:07:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:19:\"افزونه‌ها\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:15:\"WP Telegram Pro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:19:\"بات تلگرام\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:12:\"تلگرام\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wp-parsi.com/?p=672\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:784:\"<p>وردپرس/WordPress سیستم مدیریت محتوای محبوبی است که اکنون ۳۳٪ از دنیای وب را به خود اختصاص داده و امکانات خوبی برای توسعه بیشتر به عنوان یک برنامه تحت وب را در اختیار کاربران قرار می‌دهد. شما می‌توانید با افزونه WP Telegram Pro امکان مرور نوشته‌ها، دسته‌ها، محصولات (ووکامرس / Woocommerce) و امکان خرید را به [&#8230;]</p>\n<p>نوشته <a rel=\"nofollow\" href=\"https://wp-parsi.com/wp-telegram-pro/\">افزونه تلگرام وردپرس</a> اولین بار در <a rel=\"nofollow\" href=\"https://wp-parsi.com\">وردپرس پارسی</a> پدیدار شد.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"پارسا کافی\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wp-parsi.com/wp-telegram-pro/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"24\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:62:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n		\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"آموزش پلاگین نویسی در وردپرس از صفر تا صد – قسمت دوم\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:222:\"https://wp-parsi.com/%d8%a2%d9%85%d9%88%d8%b2%d8%b4-%d9%be%d9%84%d8%a7%da%af%db%8c%d9%86-%d9%86%d9%88%db%8c%d8%b3%db%8c-%d8%af%d8%b1-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-%d8%a7%d8%b2-%d8%b5%d9%81%d8%b1-%d8%aa%d8%a7-%d8%b5/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:231:\"https://wp-parsi.com/%d8%a2%d9%85%d9%88%d8%b2%d8%b4-%d9%be%d9%84%d8%a7%da%af%db%8c%d9%86-%d9%86%d9%88%db%8c%d8%b3%db%8c-%d8%af%d8%b1-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-%d8%a7%d8%b2-%d8%b5%d9%81%d8%b1-%d8%aa%d8%a7-%d8%b5/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 19 Aug 2018 07:31:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:23:\"افزونه نویسی\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:33:\"مقالات و آموزش‌ها\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wp-parsi.com/?p=584\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1073:\"<p>بخش دوم ایجاد صفحه در بخش مدیریت: برای افزودن صفحه به منوی ادمین وردپرس از هوک admin_menu استفاده میکنیم.هر منو دارای یک منوی اصلی وتعدادی زیر منو میباشد. برای ایجاد منوی اصلی از تابع add_menu_page استفاده میشود.توجه داشته باشید منوها به صورت پیشفرض در انتهای لیست منوهای بخش مدیریت وردپرس قرار خواهد گرفت. add_menu_page(page_title, menu_title, [&#8230;]</p>\n<p>نوشته <a rel=\"nofollow\" href=\"https://wp-parsi.com/%d8%a2%d9%85%d9%88%d8%b2%d8%b4-%d9%be%d9%84%d8%a7%da%af%db%8c%d9%86-%d9%86%d9%88%db%8c%d8%b3%db%8c-%d8%af%d8%b1-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-%d8%a7%d8%b2-%d8%b5%d9%81%d8%b1-%d8%aa%d8%a7-%d8%b5/\">آموزش پلاگین نویسی در وردپرس از صفر تا صد &#8211; قسمت دوم</a> اولین بار در <a rel=\"nofollow\" href=\"https://wp-parsi.com\">وردپرس پارسی</a> پدیدار شد.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"مبین قاسمپور\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:227:\"https://wp-parsi.com/%d8%a2%d9%85%d9%88%d8%b2%d8%b4-%d9%be%d9%84%d8%a7%da%af%db%8c%d9%86-%d9%86%d9%88%db%8c%d8%b3%db%8c-%d8%af%d8%b1-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-%d8%a7%d8%b2-%d8%b5%d9%81%d8%b1-%d8%aa%d8%a7-%d8%b5/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:62:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n		\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"برگزاری چهارمین همایش Coder Conf\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://wp-parsi.com/coder-conf/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wp-parsi.com/coder-conf/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Jul 2018 15:00:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:30:\"خبرها و رویدادها\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:16:\"رویدادها\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wp-parsi.com/?p=659\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:832:\"<p>کدرکانف هر سال در آخرین پنجشنبه مرداد با بورد‌های مختلفی برگزار می‌گردد،امسال نیز کدرکانف در همین تاریخ با حضور برنامه نویسان مطرح کشور در بورد تخصصی جاوااسکریپت برگزار خواهد شد، یک گردهمایی متفاوت با طعم Javascript. Coderconf هر سال نسبت به سال‌های گذشته با حضور برنامه‌نویسان پر رنگتر می‌شود. ما سعی کردیم هر ساله به [&#8230;]</p>\n<p>نوشته <a rel=\"nofollow\" href=\"https://wp-parsi.com/coder-conf/\">برگزاری چهارمین همایش Coder Conf</a> اولین بار در <a rel=\"nofollow\" href=\"https://wp-parsi.com\">وردپرس پارسی</a> پدیدار شد.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"سعید فرد\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://wp-parsi.com/coder-conf/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:83:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n					\n		\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"پوشش زنده وردکمپ ۲۰۱۸ اروپا – صربستان\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"https://wp-parsi.com/wceu-2018-live/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://wp-parsi.com/wceu-2018-live/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Jun 2018 22:52:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:9:{i:0;a:5:{s:4:\"data\";s:30:\"خبرها و رویدادها\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:16:\"رویدادها\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:10:\"irwprdcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:13:\"wordcamp 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:27:\"برگزاری وردکمپ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:12:\"وردکمپ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:23:\"وردکمپ ایران\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:21:\"وردکمپ چیست\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wp-parsi.com/?p=619\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:819:\"<p>اگر کاربر وردپرس هستید حتما تا به حال اسم وردکمپ رو شنیدید، کمپ و دورهمی بزرگ توسعه‌دهنده‌ها و کاربران وردپرس که سالانه در کشورهای مختلف برگزار میشه تحت عنوان وردکمپ هستش که از سمت مراجع اصلی وردپرس حمایت و برگزار می‌شه. &#160; &#160; این‌ بار در سال ۲۰۱۸ وردکمپ اروپا در شهر بلگراد کشور صربستان [&#8230;]</p>\n<p>نوشته <a rel=\"nofollow\" href=\"https://wp-parsi.com/wceu-2018-live/\">پوشش زنده وردکمپ ۲۰۱۸ اروپا &#8211; صربستان</a> اولین بار در <a rel=\"nofollow\" href=\"https://wp-parsi.com\">وردپرس پارسی</a> پدیدار شد.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"سعید فرد\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://wp-parsi.com/wceu-2018-live/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:26:\"https://wp-parsi.com/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:48:\"WpOrg\\Requests\\Utility\\CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:16:{s:13:\"last-modified\";s:29:\"Wed, 17 May 2023 15:47:09 GMT\";s:4:\"etag\";s:34:\"\"ff18f0620c5b7a026d7f0a930c775555\"\";s:4:\"link\";s:99:\"<https://wp-parsi.com/wp-json/>; rel=\"https://api.w.org/\", <https://wp-parsi.com/>; rel=\"canonical\"\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:13:\"cache-control\";s:22:\"public, max-age=172800\";s:7:\"expires\";s:29:\"Fri, 25 Aug 2023 15:18:01 GMT\";s:17:\"x-litespeed-cache\";s:3:\"hit\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"vary\";s:26:\"Accept-Encoding,User-Agent\";s:14:\"content-length\";s:4:\"4056\";s:4:\"date\";s:29:\"Fri, 25 Aug 2023 14:37:52 GMT\";s:25:\"strict-transport-security\";s:16:\"max-age=31536000\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:7:\"alt-svc\";s:167:\"h3=\":443\"; ma=2592000, h3-29=\":443\"; ma=2592000, h3-Q050=\":443\"; ma=2592000, h3-Q046=\":443\"; ma=2592000, h3-Q043=\":443\"; ma=2592000, quic=\":443\"; ma=2592000; v=\"43,46\"\";}}s:5:\"build\";s:14:\"20211220193300\";}', 'no'),
(4274, '_transient_timeout_feed_mod_1a35a986d21ecac6e67e45f5050a2d43', '1693017473', 'no'),
(4275, '_transient_feed_mod_1a35a986d21ecac6e67e45f5050a2d43', '1692974273', 'no'),
(4276, '_transient_timeout_feed_9bb54f090b06ea0b52a1a293dcf1b99e', '1693017474', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4277, '_transient_feed_9bb54f090b06ea0b52a1a293dcf1b99e', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"سیاره وردپرس ایران\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"http://wp-planet.ir\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 12 Aug 2023 05:09:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fa-IR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wordpress.org/?v=6.0.5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"ما برگشتیم\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"http://wp-planet.ir/%d9%85%d8%a7-%d8%a8%d8%b1%da%af%d8%b4%d8%aa%db%8c%d9%85/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 12 Aug 2023 05:09:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"دسته‌بندی نشده\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"http://wp-planet.ir/%d9%85%d8%a7-%d8%a8%d8%b1%da%af%d8%b4%d8%aa%db%8c%d9%85/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1721:\"<p>&#1587;&#1604;&#1575;&#1605; &#1576;&#1607; &#1607;&#1605;&#1607; &#1740; &#1583;&#1608;&#1587;&#1578;&#1575;&#1606; &#1608; &#1705;&#1575;&#1585;&#1576;&#1585;&#1575;&#1740; &#1593;&#1586;&#1740;&#1586; &#1587;&#1575;&#1740;&#1578; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1606;&#1575;&#1585;&#1606;&#1580;&#1740; &#1576;&#1593;&#1583; &#1575;&#1586; &#1740;&#1705; &#1605;&#1583;&#1578; &#1591;&#1608;&#1604;&#1575;&#1606;&#1740; &#1705;&#1607; &#1583;&#1585; &#1582;&#1583;&#1605;&#1578;&#1578;&#1608;&#1606; &#1606;&#1576;&#1608;&#1583;&#1740;&#1605; &#160;&#1605;&#1580;&#1583;&#1583;&#1575; &#1576;&#1575; &#1705;&#1604;&#1740; &#1575;&#1606;&#1585;&#1688;&#1740; &#1608; &#1575;&#1740;&#1583;&#1607; &#1607;&#1575;&#1740; &#1580;&#1583;&#1740;&#1583; &#1576;&#1585;&#1711;&#1588;&#1578;&#1740;&#1605;! &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1606;&#1575;&#1585;&#1606;&#1580;&#1740; &#1583;&#1585; &#1587;&#1575;&#1604; &#1785;&#1783; &#1576;&#1575; &#1575;&#1607;&#1583;&#1575;&#1601; &#1576;&#1604;&#1606;&#1583; &#1605;&#1578;&#1608;&#1604;&#1583; &#1588;&#1583; &#1608; &#1586;&#1605;&#1575;&#1606;&#1740; &#1606;&#1711;&#1584;&#1588;&#1578; &#1580;&#1586;&#1569; &#1576;&#1585;&#1578;&#1585;&#1740;&#1606; &#1608;&#1576; &#1587;&#1575;&#1740;&#1578; &#1607;&#1575; &#1583;&#1585; &#1581;&#1608;&#1586;&#1607; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1588;&#1583;&#1740;&#1605; &#1575;&#1605;&#1575; &#1583;&#1585; &#1575;&#1608;&#1575;&#1587;&#1591; &#1587;&#1575;&#1604; [&#8230;]</p>\nThe post <a href=\"http://wp-planet.ir/%d9%85%d8%a7-%d8%a8%d8%b1%da%af%d8%b4%d8%aa%db%8c%d9%85/\">ما برگشتیم</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2063:\"<p>&#1587;&#1604;&#1575;&#1605; &#1576;&#1607; &#1607;&#1605;&#1607; &#1740; &#1583;&#1608;&#1587;&#1578;&#1575;&#1606; &#1608; &#1705;&#1575;&#1585;&#1576;&#1585;&#1575;&#1740; &#1593;&#1586;&#1740;&#1586; &#1587;&#1575;&#1740;&#1578; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1606;&#1575;&#1585;&#1606;&#1580;&#1740; &#1576;&#1593;&#1583; &#1575;&#1586; &#1740;&#1705; &#1605;&#1583;&#1578; &#1591;&#1608;&#1604;&#1575;&#1606;&#1740; &#1705;&#1607; &#1583;&#1585; &#1582;&#1583;&#1605;&#1578;&#1578;&#1608;&#1606; &#1606;&#1576;&#1608;&#1583;&#1740;&#1605; &nbsp;&#1605;&#1580;&#1583;&#1583;&#1575; &#1576;&#1575; &#1705;&#1604;&#1740; &#1575;&#1606;&#1585;&#1688;&#1740; &#1608; &#1575;&#1740;&#1583;&#1607; &#1607;&#1575;&#1740; &#1580;&#1583;&#1740;&#1583; &#1576;&#1585;&#1711;&#1588;&#1578;&#1740;&#1605;! &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1606;&#1575;&#1585;&#1606;&#1580;&#1740; &#1583;&#1585; &#1587;&#1575;&#1604; &#1785;&#1783; &#1576;&#1575; &#1575;&#1607;&#1583;&#1575;&#1601; &#1576;&#1604;&#1606;&#1583; &#1605;&#1578;&#1608;&#1604;&#1583; &#1588;&#1583; &#1608; &#1586;&#1605;&#1575;&#1606;&#1740; &#1606;&#1711;&#1584;&#1588;&#1578; &#1580;&#1586;&#1569; &#1576;&#1585;&#1578;&#1585;&#1740;&#1606; &#1608;&#1576; &#1587;&#1575;&#1740;&#1578; &#1607;&#1575; &#1583;&#1585; &#1581;&#1608;&#1586;&#1607; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1588;&#1583;&#1740;&#1605; &#1575;&#1605;&#1575; &#1583;&#1585; &#1575;&#1608;&#1575;&#1587;&#1591; &#1587;&#1575;&#1604; &hellip;</p>\n<p>The post <a rel=\"nofollow\" href=\"https://wpnarenji.ir/%D9%85%D8%A7-%D8%A8%D8%B1%DA%AF%D8%B4%D8%AA%DB%8C%D9%85/\">&#1605;&#1575; &#1576;&#1585;&#1711;&#1588;&#1578;&#1740;&#1605;</a> appeared first on <a rel=\"nofollow\" href=\"https://wpnarenji.ir/\">&#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1606;&#1575;&#1585;&#1606;&#1580;&#1740;</a>.</p>The post <a href=\"http://wp-planet.ir/%d9%85%d8%a7-%d8%a8%d8%b1%da%af%d8%b4%d8%aa%db%8c%d9%85/\">ما برگشتیم</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"برگزاری پنجمین میتاپ رسمی وردپرس در مشهد\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:219:\"http://wp-planet.ir/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%be%d9%86%d8%ac%d9%85%db%8c%d9%86-%d9%85%db%8c%d8%aa%d8%a7%d9%be-%d8%b1%d8%b3%d9%85%db%8c-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-%d8%af%d8%b1-%d9%85%d8%b4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 17 Jul 2023 02:04:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"دسته‌بندی نشده\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:219:\"http://wp-planet.ir/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%be%d9%86%d8%ac%d9%85%db%8c%d9%86-%d9%85%db%8c%d8%aa%d8%a7%d9%be-%d8%b1%d8%b3%d9%85%db%8c-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-%d8%af%d8%b1-%d9%85%d8%b4/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2017:\"<p>&#1662;&#1606;&#1580;&#1605;&#1740;&#1606; &#1580;&#1604;&#1587;&#1607; &#1605;&#1740;&#1578;&#1575;&#1662; &#1585;&#1587;&#1605;&#1740; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1605;&#1588;&#1607;&#1583; &#1576;&#1575; &#1605;&#1608;&#1590;&#1608;&#1593; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1608; &#1578;&#1608;&#1587;&#1593;&#1607; &#1608;&#1576;: &#1585;&#1575;&#1607;&#1606;&#1605;&#1575;&#1740; &#1576;&#1585;&#1606;&#1575;&#1605;&#1607; &#1606;&#1608;&#1740;&#1587;&#1575;&#1606; &#1608; &#1578;&#1608;&#1587;&#1593;&#1607; &#1583;&#1607;&#1606;&#1583;&#1711;&#1575;&#1606; &#1576;&#1575; &#1575;&#1585;&#1575;&#1574;&#1607; &#1605;&#1607;&#1606;&#1583;&#1587; &#1605;&#1607;&#1583;&#1740; &#1587;&#1575;&#1585;&#1575;&#1606;&#1740; &#1608; &#1608;&#1740;&#1688;&#1711;&#1740; &#1607;&#1575;&#1740; &#1606;&#1587;&#1582;&#1607; ۶.۳ &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1576;&#1575; &#1575;&#1585;&#1575;&#1574;&#1607; &#1605;&#1607;&#1606;&#1583;&#1587; &#1662;&#1575;&#1585;&#1587;&#1575; &#1705;&#1575;&#1601;&#1740; &#1576;&#1585;&#1711;&#1586;&#1575;&#1585; &#1582;&#1608;&#1575;&#1607;&#1583; &#1588;&#1583;. &#1575;&#1586; &#1588;&#1605;&#1575; &#1593;&#1604;&#1575;&#1602;&#1605;&#1606;&#1583;&#1575;&#1606; &#1576;&#1607; &#1583;&#1606;&#1740;&#1575;&#1740; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1608; &#1605;&#1578;&#1606; &#1576;&#1575;&#1586; &#1583;&#1593;&#1608;&#1578; &#1605;&#1740;&#1705;&#1606;&#1740;&#1605; &#1705;&#1607; &#1575;&#1740;&#1606; &#1585;&#1608;&#1586; &#1585;&#1608; &#1583;&#1585; &#1705;&#1606;&#1575;&#1585; &#1605;&#1575; [&#8230;]</p>\nThe post <a href=\"http://wp-planet.ir/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%be%d9%86%d8%ac%d9%85%db%8c%d9%86-%d9%85%db%8c%d8%aa%d8%a7%d9%be-%d8%b1%d8%b3%d9%85%db%8c-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-%d8%af%d8%b1-%d9%85%d8%b4/\">برگزاری پنجمین میتاپ رسمی وردپرس در مشهد</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2017:\"<p>&#1662;&#1606;&#1580;&#1605;&#1740;&#1606; &#1580;&#1604;&#1587;&#1607; &#1605;&#1740;&#1578;&#1575;&#1662; &#1585;&#1587;&#1605;&#1740; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1605;&#1588;&#1607;&#1583; &#1576;&#1575; &#1605;&#1608;&#1590;&#1608;&#1593; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1608; &#1578;&#1608;&#1587;&#1593;&#1607; &#1608;&#1576;: &#1585;&#1575;&#1607;&#1606;&#1605;&#1575;&#1740; &#1576;&#1585;&#1606;&#1575;&#1605;&#1607; &#1606;&#1608;&#1740;&#1587;&#1575;&#1606; &#1608; &#1578;&#1608;&#1587;&#1593;&#1607; &#1583;&#1607;&#1606;&#1583;&#1711;&#1575;&#1606; &#1576;&#1575; &#1575;&#1585;&#1575;&#1574;&#1607; &#1605;&#1607;&#1606;&#1583;&#1587; &#1605;&#1607;&#1583;&#1740; &#1587;&#1575;&#1585;&#1575;&#1606;&#1740; &#1608; &#1608;&#1740;&#1688;&#1711;&#1740; &#1607;&#1575;&#1740; &#1606;&#1587;&#1582;&#1607; ۶.۳ &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1576;&#1575; &#1575;&#1585;&#1575;&#1574;&#1607; &#1605;&#1607;&#1606;&#1583;&#1587; &#1662;&#1575;&#1585;&#1587;&#1575; &#1705;&#1575;&#1601;&#1740; &#1576;&#1585;&#1711;&#1586;&#1575;&#1585; &#1582;&#1608;&#1575;&#1607;&#1583; &#1588;&#1583;. &#1575;&#1586; &#1588;&#1605;&#1575; &#1593;&#1604;&#1575;&#1602;&#1605;&#1606;&#1583;&#1575;&#1606; &#1576;&#1607; &#1583;&#1606;&#1740;&#1575;&#1740; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1608; &#1605;&#1578;&#1606; &#1576;&#1575;&#1586; &#1583;&#1593;&#1608;&#1578; &#1605;&#1740;&#1705;&#1606;&#1740;&#1605; &#1705;&#1607; &#1575;&#1740;&#1606; &#1585;&#1608;&#1586; &#1585;&#1608; &#1583;&#1585; &#1705;&#1606;&#1575;&#1585; &#1605;&#1575; [&hellip;]</p>The post <a href=\"http://wp-planet.ir/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%be%d9%86%d8%ac%d9%85%db%8c%d9%86-%d9%85%db%8c%d8%aa%d8%a7%d9%be-%d8%b1%d8%b3%d9%85%db%8c-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-%d8%af%d8%b1-%d9%85%d8%b4/\">برگزاری پنجمین میتاپ رسمی وردپرس در مشهد</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"آموزش نصب وردپرس روی انواع هاست (هاست لینوکس و ویندوز)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:220:\"http://wp-planet.ir/%d8%a2%d9%85%d9%88%d8%b2%d8%b4-%d9%86%d8%b5%d8%a8-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-%d8%b1%d9%88%db%8c-%d8%a7%d9%86%d9%88%d8%a7%d8%b9-%d9%87%d8%a7%d8%b3%d8%aa-%d9%87%d8%a7%d8%b3%d8%aa-%d9%84%db%8c/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 12 Jul 2023 07:19:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"دسته‌بندی نشده\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:220:\"http://wp-planet.ir/%d8%a2%d9%85%d9%88%d8%b2%d8%b4-%d9%86%d8%b5%d8%a8-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-%d8%b1%d9%88%db%8c-%d8%a7%d9%86%d9%88%d8%a7%d8%b9-%d9%87%d8%a7%d8%b3%d8%aa-%d9%87%d8%a7%d8%b3%d8%aa-%d9%84%db%8c/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1007:\"<p>[&#8230;] &#1606;&#1608;&#1588;&#1578;&#1607; &#1570;&#1605;&#1608;&#1586;&#1588; &#1606;&#1589;&#1576; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1585;&#1608;&#1740; &#1575;&#1606;&#1608;&#1575;&#1593; &#1607;&#1575;&#1587;&#1578; (&#1607;&#1575;&#1587;&#1578; &#1604;&#1740;&#1606;&#1608;&#1705;&#1587; &#1608; &#1608;&#1740;&#1606;&#1583;&#1608;&#1586;) &#1575;&#1608;&#1604;&#1740;&#1606; &#1576;&#1575;&#1585; &#1583;&#1585; &#1608;&#1576;&#1604;&#1575;&#1711; &#1576;&#1585;&#1578;&#1740;&#1606;&#1575;. &#1662;&#1583;&#1740;&#1583;&#1575;&#1585; &#1588;&#1583;.</p>\nThe post <a href=\"http://wp-planet.ir/%d8%a2%d9%85%d9%88%d8%b2%d8%b4-%d9%86%d8%b5%d8%a8-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-%d8%b1%d9%88%db%8c-%d8%a7%d9%86%d9%88%d8%a7%d8%b9-%d9%87%d8%a7%d8%b3%d8%aa-%d9%87%d8%a7%d8%b3%d8%aa-%d9%84%db%8c/\">آموزش نصب وردپرس روی انواع هاست (هاست لینوکس و ویندوز)</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1172:\"<p><span> [&hellip;]</span></p>\n<p>&#1606;&#1608;&#1588;&#1578;&#1607; <a rel=\"nofollow\" href=\"https://www.bertina.ir/blog/installing-wordpress-on-host/\">&#1570;&#1605;&#1608;&#1586;&#1588; &#1606;&#1589;&#1576; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1585;&#1608;&#1740; &#1575;&#1606;&#1608;&#1575;&#1593; &#1607;&#1575;&#1587;&#1578; (&#1607;&#1575;&#1587;&#1578; &#1604;&#1740;&#1606;&#1608;&#1705;&#1587; &#1608; &#1608;&#1740;&#1606;&#1583;&#1608;&#1586;)</a> &#1575;&#1608;&#1604;&#1740;&#1606; &#1576;&#1575;&#1585; &#1583;&#1585; <a rel=\"nofollow\" href=\"https://www.bertina.ir/blog\">&#1608;&#1576;&#1604;&#1575;&#1711; &#1576;&#1585;&#1578;&#1740;&#1606;&#1575;</a>. &#1662;&#1583;&#1740;&#1583;&#1575;&#1585; &#1588;&#1583;.</p>The post <a href=\"http://wp-planet.ir/%d8%a2%d9%85%d9%88%d8%b2%d8%b4-%d9%86%d8%b5%d8%a8-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-%d8%b1%d9%88%db%8c-%d8%a7%d9%86%d9%88%d8%a7%d8%b9-%d9%87%d8%a7%d8%b3%d8%aa-%d9%87%d8%a7%d8%b3%d8%aa-%d9%84%db%8c/\">آموزش نصب وردپرس روی انواع هاست (هاست لینوکس و ویندوز)</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:157:\"ابزار وردپرس ارائه دهنده آموزش های طراحی سایت و وردپرس بصورت ویدئویی و رایگان در ایران\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:219:\"http://wp-planet.ir/%d8%a7%d8%a8%d8%b2%d8%a7%d8%b1-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-%d8%a7%d8%b1%d8%a7%d8%a6%d9%87-%d8%af%d9%87%d9%86%d8%af%d9%87-%d8%a2%d9%85%d9%88%d8%b2%d8%b4-%d9%87%d8%a7%db%8c-%d8%b7%d8%b1%d8%a7/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 07 Jun 2023 02:06:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"دسته‌بندی نشده\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:219:\"http://wp-planet.ir/%d8%a7%d8%a8%d8%b2%d8%a7%d8%b1-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-%d8%a7%d8%b1%d8%a7%d8%a6%d9%87-%d8%af%d9%87%d9%86%d8%af%d9%87-%d8%a2%d9%85%d9%88%d8%b2%d8%b4-%d9%87%d8%a7%db%8c-%d8%b7%d8%b1%d8%a7/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1769:\"<p>&#1605;&#1575; &#1576;&#1607; &#1588;&#1605;&#1575; &#1585;&#1575;&#1607;&#1606;&#1605;&#1575;&#1740;&#1740; &#1575;&#1585;&#1575;&#1574;&#1607; &#1605;&#1740;&#1583;&#1607;&#1740;&#1605; &#1578;&#1575; &#1576;&#1578;&#1608;&#1575;&#1606;&#1740;&#1583; &#1591;&#1585;&#1575;&#1581;&#1740; &#1587;&#1575;&#1740;&#1578; &#1585;&#1575; &#1576;&#1607; &#1578;&#1606;&#1607;&#1575;&#1740;&#1740; &#1588;&#1585;&#1608;&#1593; &#1705;&#1606;&#1740;&#1583; &#8230; &#1606;&#1608;&#1588;&#1578;&#1607; &#1575;&#1576;&#1586;&#1575;&#1585; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1575;&#1585;&#1575;&#1574;&#1607; &#1583;&#1607;&#1606;&#1583;&#1607; &#1570;&#1605;&#1608;&#1586;&#1588; &#1607;&#1575;&#1740; &#1591;&#1585;&#1575;&#1581;&#1740; &#1587;&#1575;&#1740;&#1578; &#1608; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1576;&#1589;&#1608;&#1585;&#1578; &#1608;&#1740;&#1583;&#1574;&#1608;&#1740;&#1740; &#1608; &#1585;&#1575;&#1740;&#1711;&#1575;&#1606; &#1583;&#1585; &#1575;&#1740;&#1585;&#1575;&#1606; &#1575;&#1608;&#1604;&#1740;&#1606; &#1576;&#1575;&#1585; &#1583;&#1585; &#1662;&#1575;&#1740;&#1711;&#1575;&#1607; &#1583;&#1575;&#1606;&#1588; &#1605;&#1740;&#1586;&#1576;&#1575;&#1606;&#8204;&#1601;&#1575; &#1662;&#1583;&#1740;&#1583;&#1575;&#1585; &#1588;&#1583;.</p>\nThe post <a href=\"http://wp-planet.ir/%d8%a7%d8%a8%d8%b2%d8%a7%d8%b1-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-%d8%a7%d8%b1%d8%a7%d8%a6%d9%87-%d8%af%d9%87%d9%86%d8%af%d9%87-%d8%a2%d9%85%d9%88%d8%b2%d8%b4-%d9%87%d8%a7%db%8c-%d8%b7%d8%b1%d8%a7/\">ابزار وردپرس ارائه دهنده آموزش های طراحی سایت و وردپرس بصورت ویدئویی و رایگان در ایران</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1907:\"<p>&#1605;&#1575; &#1576;&#1607; &#1588;&#1605;&#1575; &#1585;&#1575;&#1607;&#1606;&#1605;&#1575;&#1740;&#1740; &#1575;&#1585;&#1575;&#1574;&#1607; &#1605;&#1740;&#1583;&#1607;&#1740;&#1605; &#1578;&#1575; &#1576;&#1578;&#1608;&#1575;&#1606;&#1740;&#1583; &#1591;&#1585;&#1575;&#1581;&#1740; &#1587;&#1575;&#1740;&#1578; &#1585;&#1575; &#1576;&#1607; &#1578;&#1606;&#1607;&#1575;&#1740;&#1740; &#1588;&#1585;&#1608;&#1593; &#1705;&#1606;&#1740;&#1583; &#8230;</p>\n<p>&#1606;&#1608;&#1588;&#1578;&#1607; <a rel=\"nofollow\" href=\"https://mizbanfa.net/blog/cms/wordpress/abzarwp/\">&#1575;&#1576;&#1586;&#1575;&#1585; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1575;&#1585;&#1575;&#1574;&#1607; &#1583;&#1607;&#1606;&#1583;&#1607; &#1570;&#1605;&#1608;&#1586;&#1588; &#1607;&#1575;&#1740; &#1591;&#1585;&#1575;&#1581;&#1740; &#1587;&#1575;&#1740;&#1578; &#1608; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1576;&#1589;&#1608;&#1585;&#1578; &#1608;&#1740;&#1583;&#1574;&#1608;&#1740;&#1740; &#1608; &#1585;&#1575;&#1740;&#1711;&#1575;&#1606; &#1583;&#1585; &#1575;&#1740;&#1585;&#1575;&#1606;</a> &#1575;&#1608;&#1604;&#1740;&#1606; &#1576;&#1575;&#1585; &#1583;&#1585; <a rel=\"nofollow\" href=\"https://mizbanfa.net/blog\">&#1662;&#1575;&#1740;&#1711;&#1575;&#1607; &#1583;&#1575;&#1606;&#1588; &#1605;&#1740;&#1586;&#1576;&#1575;&#1606;&zwnj;&#1601;&#1575;</a> &#1662;&#1583;&#1740;&#1583;&#1575;&#1585; &#1588;&#1583;.</p>The post <a href=\"http://wp-planet.ir/%d8%a7%d8%a8%d8%b2%d8%a7%d8%b1-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-%d8%a7%d8%b1%d8%a7%d8%a6%d9%87-%d8%af%d9%87%d9%86%d8%af%d9%87-%d8%a2%d9%85%d9%88%d8%b2%d8%b4-%d9%87%d8%a7%db%8c-%d8%b7%d8%b1%d8%a7/\">ابزار وردپرس ارائه دهنده آموزش های طراحی سایت و وردپرس بصورت ویدئویی و رایگان در ایران</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"برگزاری میتاپ جشن تولد ۲۰ سالگی وردپرس در بندرعباس\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:221:\"http://wp-planet.ir/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%85%db%8c%d8%aa%d8%a7%d9%be-%d8%ac%d8%b4%d9%86-%d8%aa%d9%88%d9%84%d8%af-%db%b2%db%b0-%d8%b3%d8%a7%d9%84%da%af%db%8c-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 19 May 2023 10:26:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"دسته‌بندی نشده\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:221:\"http://wp-planet.ir/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%85%db%8c%d8%aa%d8%a7%d9%be-%d8%ac%d8%b4%d9%86-%d8%aa%d9%88%d9%84%d8%af-%db%b2%db%b0-%d8%b3%d8%a7%d9%84%da%af%db%8c-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-3/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2025:\"<p>&#160; &#1583;&#1585; &#1578;&#1575;&#1585;&#1740;&#1582; &#1782; &#1582;&#1585;&#1583;&#1575;&#1583; &#1575;&#1605;&#1587;&#1575;&#1604; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1778;&#1776; &#1587;&#1575;&#1604;&#1607; &#1605;&#1740;&#8204;&#1588;&#1608;&#1583;. &#1576;&#1607; &#1607;&#1605;&#1740;&#1606; &#1605;&#1606;&#1575;&#1587;&#1576;&#1578; &#1583;&#1585; &#1578;&#1605;&#1575;&#1605;&#1740; &#1583;&#1606;&#1740;&#1575; &#1585;&#1608;&#1740;&#1583;&#1575;&#1583;&#1607;&#1575;&#1740;&#1740; &#1576;&#1575; &#1607;&#1583;&#1601; &#1711;&#1585;&#1601;&#1578;&#1606; &#1580;&#1588;&#1606; &#1576;&#1585;&#1575;&#1740; &#1575;&#1740;&#1606; &#1585;&#1608;&#1586; &#1576;&#1585;&#1711;&#1586;&#1575;&#1585; &#1605;&#1740;&#8204;&#1588;&#1608;&#1583;. &#1604;&#1608;&#1705;&#1575;&#1604; &#1605;&#1606;&#1740;&#1580;&#1585;&#1607;&#1575;&#1548; &#1578;&#1608;&#1587;&#1593;&#1607;&#8204;&#1583;&#1607;&#1606;&#1583;&#1607;&#8204;&#1607;&#1575; &#1608; &#1587;&#1575;&#1740;&#1585; &#1583;&#1608;&#1587;&#1578;&#1583;&#1575;&#1585;&#1606; &#1583;&#1606;&#1740;&#1575;&#1740; &#1605;&#1578;&#1606; &#1576;&#1575;&#1586; &#1608; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1576;&#1575; &#1583;&#1608;&#1585;&#1607;&#1605; &#1580;&#1605;&#1593; &#1588;&#1583;&#1606; &#1575;&#1740;&#1606; &#1585;&#1608;&#1586; &#1585;&#1608; &#1583;&#1585; &#1705;&#1604; &#1583;&#1606;&#1740;&#1575; &#1576;&#1575; &#1607;&#1605; &#1580;&#1588;&#1606; &#1605;&#1740;&#8204;&#1711;&#1740;&#1585;&#1606;&#1583;. &#1576;&#1607; &#1607;&#1605;&#1740;&#1606; &#1580;&#1607;&#1578; &#1605;&#1575; [&#8230;]</p>\nThe post <a href=\"http://wp-planet.ir/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%85%db%8c%d8%aa%d8%a7%d9%be-%d8%ac%d8%b4%d9%86-%d8%aa%d9%88%d9%84%d8%af-%db%b2%db%b0-%d8%b3%d8%a7%d9%84%da%af%db%8c-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-3/\">برگزاری میتاپ جشن تولد ۲۰ سالگی وردپرس در بندرعباس</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2020:\"<p>&nbsp; &#1583;&#1585; &#1578;&#1575;&#1585;&#1740;&#1582; &#1782; &#1582;&#1585;&#1583;&#1575;&#1583; &#1575;&#1605;&#1587;&#1575;&#1604; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1778;&#1776; &#1587;&#1575;&#1604;&#1607; &#1605;&#1740;&zwnj;&#1588;&#1608;&#1583;. &#1576;&#1607; &#1607;&#1605;&#1740;&#1606; &#1605;&#1606;&#1575;&#1587;&#1576;&#1578; &#1583;&#1585; &#1578;&#1605;&#1575;&#1605;&#1740; &#1583;&#1606;&#1740;&#1575; &#1585;&#1608;&#1740;&#1583;&#1575;&#1583;&#1607;&#1575;&#1740;&#1740; &#1576;&#1575; &#1607;&#1583;&#1601; &#1711;&#1585;&#1601;&#1578;&#1606; &#1580;&#1588;&#1606; &#1576;&#1585;&#1575;&#1740; &#1575;&#1740;&#1606; &#1585;&#1608;&#1586; &#1576;&#1585;&#1711;&#1586;&#1575;&#1585; &#1605;&#1740;&zwnj;&#1588;&#1608;&#1583;. &#1604;&#1608;&#1705;&#1575;&#1604; &#1605;&#1606;&#1740;&#1580;&#1585;&#1607;&#1575;&#1548; &#1578;&#1608;&#1587;&#1593;&#1607;&zwnj;&#1583;&#1607;&#1606;&#1583;&#1607;&zwnj;&#1607;&#1575; &#1608; &#1587;&#1575;&#1740;&#1585; &#1583;&#1608;&#1587;&#1578;&#1583;&#1575;&#1585;&#1606; &#1583;&#1606;&#1740;&#1575;&#1740; &#1605;&#1578;&#1606; &#1576;&#1575;&#1586; &#1608; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1576;&#1575; &#1583;&#1608;&#1585;&#1607;&#1605; &#1580;&#1605;&#1593; &#1588;&#1583;&#1606; &#1575;&#1740;&#1606; &#1585;&#1608;&#1586; &#1585;&#1608; &#1583;&#1585; &#1705;&#1604; &#1583;&#1606;&#1740;&#1575; &#1576;&#1575; &#1607;&#1605; &#1580;&#1588;&#1606; &#1605;&#1740;&zwnj;&#1711;&#1740;&#1585;&#1606;&#1583;. &#1576;&#1607; &#1607;&#1605;&#1740;&#1606; &#1580;&#1607;&#1578; &#1605;&#1575; [&hellip;]</p>The post <a href=\"http://wp-planet.ir/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%85%db%8c%d8%aa%d8%a7%d9%be-%d8%ac%d8%b4%d9%86-%d8%aa%d9%88%d9%84%d8%af-%db%b2%db%b0-%d8%b3%d8%a7%d9%84%da%af%db%8c-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-3/\">برگزاری میتاپ جشن تولد ۲۰ سالگی وردپرس در بندرعباس</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"برگزاری میتاپ جشن تولد ۲۰ سالگی وردپرس در تهران\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:219:\"http://wp-planet.ir/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%85%db%8c%d8%aa%d8%a7%d9%be-%d8%ac%d8%b4%d9%86-%d8%aa%d9%88%d9%84%d8%af-%db%b2%db%b0-%d8%b3%d8%a7%d9%84%da%af%db%8c-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 16 May 2023 19:13:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"دسته‌بندی نشده\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:219:\"http://wp-planet.ir/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%85%db%8c%d8%aa%d8%a7%d9%be-%d8%ac%d8%b4%d9%86-%d8%aa%d9%88%d9%84%d8%af-%db%b2%db%b0-%d8%b3%d8%a7%d9%84%da%af%db%8c-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2032:\"<p>&#1583;&#1585; &#1578;&#1575;&#1585;&#1740;&#1582; &#1782; &#1582;&#1585;&#1583;&#1575;&#1583; &#1575;&#1605;&#1587;&#1575;&#1604; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1778;&#1776; &#1587;&#1575;&#1604;&#1607; &#1605;&#1740;&#8204;&#1588;&#1608;&#1583;. &#1576;&#1607; &#1607;&#1605;&#1740;&#1606; &#1605;&#1606;&#1575;&#1587;&#1576;&#1578; &#1583;&#1585; &#1578;&#1605;&#1575;&#1605;&#1740; &#1583;&#1606;&#1740;&#1575; &#1585;&#1608;&#1740;&#1583;&#1575;&#1583;&#1607;&#1575;&#1740;&#1740; &#1576;&#1575; &#1607;&#1583;&#1601; &#1711;&#1585;&#1601;&#1578;&#1606; &#1580;&#1588;&#1606; &#1576;&#1585;&#1575;&#1740; &#1575;&#1740;&#1606; &#1585;&#1608;&#1586; &#1576;&#1585;&#1711;&#1586;&#1575;&#1585; &#1605;&#1740;&#8204;&#1588;&#1608;&#1583;. &#1604;&#1608;&#1705;&#1575;&#1604; &#1605;&#1606;&#1740;&#1580;&#1585;&#1607;&#1575;&#1548; &#1578;&#1608;&#1587;&#1593;&#1607;&#8204;&#1583;&#1607;&#1606;&#1583;&#1607;&#8204;&#1607;&#1575; &#1608; &#1587;&#1575;&#1740;&#1585; &#1583;&#1608;&#1587;&#1578;&#1583;&#1575;&#1585;&#1606; &#1583;&#1606;&#1740;&#1575;&#1740; &#1605;&#1578;&#1606; &#1576;&#1575;&#1586; &#1608; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1576;&#1575; &#1583;&#1608;&#1585;&#1607;&#1605; &#1580;&#1605;&#1593; &#1588;&#1583;&#1606; &#1575;&#1740;&#1606; &#1585;&#1608;&#1586; &#1585;&#1608; &#1583;&#1585; &#1705;&#1604; &#1583;&#1606;&#1740;&#1575; &#1576;&#1575; &#1607;&#1605; &#1580;&#1588;&#1606; &#1605;&#1740;&#8204;&#1711;&#1740;&#1585;&#1606;&#1583;. &#1576;&#1607; &#1607;&#1605;&#1740;&#1606; &#1580;&#1607;&#1578; &#1605;&#1575; &#1606;&#1740;&#1586; [&#8230;]</p>\nThe post <a href=\"http://wp-planet.ir/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%85%db%8c%d8%aa%d8%a7%d9%be-%d8%ac%d8%b4%d9%86-%d8%aa%d9%88%d9%84%d8%af-%db%b2%db%b0-%d8%b3%d8%a7%d9%84%da%af%db%8c-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3/\">برگزاری میتاپ جشن تولد ۲۰ سالگی وردپرس در تهران</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2684:\"<p>&#1583;&#1585; &#1578;&#1575;&#1585;&#1740;&#1582; &#1782; &#1582;&#1585;&#1583;&#1575;&#1583; &#1575;&#1605;&#1587;&#1575;&#1604; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1778;&#1776; &#1587;&#1575;&#1604;&#1607; &#1605;&#1740;&zwnj;&#1588;&#1608;&#1583;. &#1576;&#1607; &#1607;&#1605;&#1740;&#1606; &#1605;&#1606;&#1575;&#1587;&#1576;&#1578; &#1583;&#1585; &#1578;&#1605;&#1575;&#1605;&#1740; &#1583;&#1606;&#1740;&#1575; &#1585;&#1608;&#1740;&#1583;&#1575;&#1583;&#1607;&#1575;&#1740;&#1740; &#1576;&#1575; &#1607;&#1583;&#1601; &#1711;&#1585;&#1601;&#1578;&#1606; &#1580;&#1588;&#1606; &#1576;&#1585;&#1575;&#1740; &#1575;&#1740;&#1606; &#1585;&#1608;&#1586; &#1576;&#1585;&#1711;&#1586;&#1575;&#1585; &#1605;&#1740;&zwnj;&#1588;&#1608;&#1583;. &#1604;&#1608;&#1705;&#1575;&#1604; &#1605;&#1606;&#1740;&#1580;&#1585;&#1607;&#1575;&#1548; &#1578;&#1608;&#1587;&#1593;&#1607;&zwnj;&#1583;&#1607;&#1606;&#1583;&#1607;&zwnj;&#1607;&#1575; &#1608; &#1587;&#1575;&#1740;&#1585; &#1583;&#1608;&#1587;&#1578;&#1583;&#1575;&#1585;&#1606; &#1583;&#1606;&#1740;&#1575;&#1740; &#1605;&#1578;&#1606; &#1576;&#1575;&#1586; &#1608; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1576;&#1575; &#1583;&#1608;&#1585;&#1607;&#1605; &#1580;&#1605;&#1593; &#1588;&#1583;&#1606; &#1575;&#1740;&#1606; &#1585;&#1608;&#1586; &#1585;&#1608; &#1583;&#1585; &#1705;&#1604; &#1583;&#1606;&#1740;&#1575; &#1576;&#1575; &#1607;&#1605; &#1580;&#1588;&#1606; &#1605;&#1740;&zwnj;&#1711;&#1740;&#1585;&#1606;&#1583;. &#1576;&#1607; &#1607;&#1605;&#1740;&#1606; &#1580;&#1607;&#1578; &#1605;&#1575; &#1606;&#1740;&#1586; [&hellip;]</p>\n<p>&#1606;&#1608;&#1588;&#1578;&#1607; <a rel=\"nofollow\" href=\"https://wp-parsi.com/wp20-tehran-meetup/\">&#1576;&#1585;&#1711;&#1586;&#1575;&#1585;&#1740; &#1605;&#1740;&#1578;&#1575;&#1662; &#1580;&#1588;&#1606; &#1578;&#1608;&#1604;&#1583; &#1778;&#1776; &#1587;&#1575;&#1604;&#1711;&#1740; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1583;&#1585; &#1578;&#1607;&#1585;&#1575;&#1606;</a> &#1575;&#1608;&#1604;&#1740;&#1606; &#1576;&#1575;&#1585; &#1583;&#1585; <a rel=\"nofollow\" href=\"https://wp-parsi.com/\">&#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1662;&#1575;&#1585;&#1587;&#1740;</a> &#1662;&#1583;&#1740;&#1583;&#1575;&#1585; &#1588;&#1583;.</p>The post <a href=\"http://wp-planet.ir/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%85%db%8c%d8%aa%d8%a7%d9%be-%d8%ac%d8%b4%d9%86-%d8%aa%d9%88%d9%84%d8%af-%db%b2%db%b0-%d8%b3%d8%a7%d9%84%da%af%db%8c-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3/\">برگزاری میتاپ جشن تولد ۲۰ سالگی وردپرس در تهران</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"برگزاری میتاپ جشن تولد ۲۰ سالگی وردپرس در تهران\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:221:\"http://wp-planet.ir/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%85%db%8c%d8%aa%d8%a7%d9%be-%d8%ac%d8%b4%d9%86-%d8%aa%d9%88%d9%84%d8%af-%db%b2%db%b0-%d8%b3%d8%a7%d9%84%da%af%db%8c-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 16 May 2023 18:24:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"دسته‌بندی نشده\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:221:\"http://wp-planet.ir/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%85%db%8c%d8%aa%d8%a7%d9%be-%d8%ac%d8%b4%d9%86-%d8%aa%d9%88%d9%84%d8%af-%db%b2%db%b0-%d8%b3%d8%a7%d9%84%da%af%db%8c-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-2/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2034:\"<p>&#1583;&#1585; &#1578;&#1575;&#1585;&#1740;&#1582; &#1782; &#1582;&#1585;&#1583;&#1575;&#1583; &#1575;&#1605;&#1587;&#1575;&#1604; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1778;&#1776; &#1587;&#1575;&#1604;&#1607; &#1605;&#1740;&#8204;&#1588;&#1608;&#1583;. &#1576;&#1607; &#1607;&#1605;&#1740;&#1606; &#1605;&#1606;&#1575;&#1587;&#1576;&#1578; &#1583;&#1585; &#1578;&#1605;&#1575;&#1605;&#1740; &#1583;&#1606;&#1740;&#1575; &#1585;&#1608;&#1740;&#1583;&#1575;&#1583;&#1607;&#1575;&#1740;&#1740; &#1576;&#1575; &#1607;&#1583;&#1601; &#1711;&#1585;&#1601;&#1578;&#1606; &#1580;&#1588;&#1606; &#1576;&#1585;&#1575;&#1740; &#1575;&#1740;&#1606; &#1585;&#1608;&#1586; &#1576;&#1585;&#1711;&#1586;&#1575;&#1585; &#1605;&#1740;&#8204;&#1588;&#1608;&#1583;. &#1604;&#1608;&#1705;&#1575;&#1604; &#1605;&#1606;&#1740;&#1580;&#1585;&#1607;&#1575;&#1548; &#1578;&#1608;&#1587;&#1593;&#1607;&#8204;&#1583;&#1607;&#1606;&#1583;&#1607;&#8204;&#1607;&#1575; &#1608; &#1587;&#1575;&#1740;&#1585; &#1583;&#1608;&#1587;&#1578;&#1583;&#1575;&#1585;&#1606; &#1583;&#1606;&#1740;&#1575;&#1740; &#1605;&#1578;&#1606; &#1576;&#1575;&#1586; &#1608; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1576;&#1575; &#1583;&#1608;&#1585;&#1607;&#1605; &#1580;&#1605;&#1593; &#1588;&#1583;&#1606; &#1575;&#1740;&#1606; &#1585;&#1608;&#1586; &#1585;&#1608; &#1583;&#1585; &#1705;&#1604; &#1583;&#1606;&#1740;&#1575; &#1576;&#1575; &#1607;&#1605; &#1580;&#1588;&#1606; &#1605;&#1740;&#8204;&#1711;&#1740;&#1585;&#1606;&#1583;. &#1576;&#1607; &#1607;&#1605;&#1740;&#1606; &#1580;&#1607;&#1578; &#1605;&#1575; &#1606;&#1740;&#1586; [&#8230;]</p>\nThe post <a href=\"http://wp-planet.ir/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%85%db%8c%d8%aa%d8%a7%d9%be-%d8%ac%d8%b4%d9%86-%d8%aa%d9%88%d9%84%d8%af-%db%b2%db%b0-%d8%b3%d8%a7%d9%84%da%af%db%8c-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-2/\">برگزاری میتاپ جشن تولد ۲۰ سالگی وردپرس در تهران</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2029:\"<p>&#1583;&#1585; &#1578;&#1575;&#1585;&#1740;&#1582; &#1782; &#1582;&#1585;&#1583;&#1575;&#1583; &#1575;&#1605;&#1587;&#1575;&#1604; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1778;&#1776; &#1587;&#1575;&#1604;&#1607; &#1605;&#1740;&zwnj;&#1588;&#1608;&#1583;. &#1576;&#1607; &#1607;&#1605;&#1740;&#1606; &#1605;&#1606;&#1575;&#1587;&#1576;&#1578; &#1583;&#1585; &#1578;&#1605;&#1575;&#1605;&#1740; &#1583;&#1606;&#1740;&#1575; &#1585;&#1608;&#1740;&#1583;&#1575;&#1583;&#1607;&#1575;&#1740;&#1740; &#1576;&#1575; &#1607;&#1583;&#1601; &#1711;&#1585;&#1601;&#1578;&#1606; &#1580;&#1588;&#1606; &#1576;&#1585;&#1575;&#1740; &#1575;&#1740;&#1606; &#1585;&#1608;&#1586; &#1576;&#1585;&#1711;&#1586;&#1575;&#1585; &#1605;&#1740;&zwnj;&#1588;&#1608;&#1583;. &#1604;&#1608;&#1705;&#1575;&#1604; &#1605;&#1606;&#1740;&#1580;&#1585;&#1607;&#1575;&#1548; &#1578;&#1608;&#1587;&#1593;&#1607;&zwnj;&#1583;&#1607;&#1606;&#1583;&#1607;&zwnj;&#1607;&#1575; &#1608; &#1587;&#1575;&#1740;&#1585; &#1583;&#1608;&#1587;&#1578;&#1583;&#1575;&#1585;&#1606; &#1583;&#1606;&#1740;&#1575;&#1740; &#1605;&#1578;&#1606; &#1576;&#1575;&#1586; &#1608; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1576;&#1575; &#1583;&#1608;&#1585;&#1607;&#1605; &#1580;&#1605;&#1593; &#1588;&#1583;&#1606; &#1575;&#1740;&#1606; &#1585;&#1608;&#1586; &#1585;&#1608; &#1583;&#1585; &#1705;&#1604; &#1583;&#1606;&#1740;&#1575; &#1576;&#1575; &#1607;&#1605; &#1580;&#1588;&#1606; &#1605;&#1740;&zwnj;&#1711;&#1740;&#1585;&#1606;&#1583;. &#1576;&#1607; &#1607;&#1605;&#1740;&#1606; &#1580;&#1607;&#1578; &#1605;&#1575; &#1606;&#1740;&#1586; [&hellip;]</p>The post <a href=\"http://wp-planet.ir/%d8%a8%d8%b1%da%af%d8%b2%d8%a7%d8%b1%db%8c-%d9%85%db%8c%d8%aa%d8%a7%d9%be-%d8%ac%d8%b4%d9%86-%d8%aa%d9%88%d9%84%d8%af-%db%b2%db%b0-%d8%b3%d8%a7%d9%84%da%af%db%8c-%d9%88%d8%b1%d8%af%d9%be%d8%b1%d8%b3-2/\">برگزاری میتاپ جشن تولد ۲۰ سالگی وردپرس در تهران</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"تعیین زمان ارسال سفارش در ووکامرس توسط مشتری\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:219:\"http://wp-planet.ir/%d8%aa%d8%b9%db%8c%db%8c%d9%86-%d8%b2%d9%85%d8%a7%d9%86-%d8%a7%d8%b1%d8%b3%d8%a7%d9%84-%d8%b3%d9%81%d8%a7%d8%b1%d8%b4-%d8%af%d8%b1-%d9%88%d9%88%da%a9%d8%a7%d9%85%d8%b1%d8%b3-%d8%aa%d9%88%d8%b3%d8%b7/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 11 Apr 2023 02:43:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"دسته‌بندی نشده\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:219:\"http://wp-planet.ir/%d8%aa%d8%b9%db%8c%db%8c%d9%86-%d8%b2%d9%85%d8%a7%d9%86-%d8%a7%d8%b1%d8%b3%d8%a7%d9%84-%d8%b3%d9%81%d8%a7%d8%b1%d8%b4-%d8%af%d8%b1-%d9%88%d9%88%da%a9%d8%a7%d9%85%d8%b1%d8%b3-%d8%aa%d9%88%d8%b3%d8%b7/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2083:\"<p>&#1607;&#1585; &#1705;&#1587;&#1740; &#1705;&#1607; &#1587;&#1575;&#1740;&#1578; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1601;&#1585;&#1608;&#1588;&#1711;&#1575;&#1607;&#1740; &#1583;&#1575;&#1585;&#1583; &#1581;&#1578;&#1605;&#1575; &#1576;&#1575; &#1662;&#1604;&#1575;&#1711;&#1740;&#1606; &#1608;&#1608;&#1705;&#1575;&#1605;&#1585;&#1587; &#1570;&#1588;&#1606;&#1575; &#1575;&#1587;&#1578;. &#1575;&#1740;&#1606; &#1575;&#1601;&#1586;&#1608;&#1606;&#1607; &#1585;&#1575;&#1740;&#1711;&#1575;&#1606; &#1593;&#1604;&#1575;&#1608;&#1607; &#1576;&#1585; &#1575;&#1585;&#1575;&#1574;&#1607; &#1582;&#1583;&#1605;&#1575;&#1578; &#1593;&#1575;&#1604;&#1740;&#1548; &#1576;&#1575; &#1583;&#1575;&#1588;&#1578;&#1606; &#1585;&#1575;&#1576;&#1591; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740; &#1570;&#1587;&#1575;&#1606; &#1578;&#1608;&#1575;&#1606;&#1587;&#1578;&#1607; &#1575;&#1601;&#1585;&#1575;&#1583; &#1586;&#1740;&#1575;&#1583;&#1740; &#1585;&#1575; &#1578;&#1585;&#1594;&#1740;&#1576; &#1576;&#1607; &#1575;&#1587;&#1578;&#1601;&#1575;&#1583;&#1607; &#1705;&#1606;&#1583;. &#1575;&#1605;&#1575; &#1575;&#1711;&#1585; &#1576;&#1607;&#8204;&#1589;&#1608;&#1585;&#1578; &#1578;&#1582;&#1589;&#1589;&#1740; &#1576;&#1607; &#1601;&#1705;&#1585; &#1576;&#1575;&#1604;&#1575; &#1576;&#1585;&#1583;&#1606; &#1587;&#1575;&#1740;&#1578; &#1582;&#1608;&#1583; &#1576;&#1575;&#1588;&#1740;&#1583; &#1576;&#1575; &#1740;&#1705; &#1605;&#1588;&#1705;&#1604; &#1605;&#1607;&#1605; &#1608; &#1575;&#1587;&#1575;&#1587;&#1740; &#1585;&#1608;&#1576;&#1585;&#1608; &#1605;&#1740;&#8204;&#1588;&#1608;&#1740;&#1583;. &#1575;&#1740;&#1606; &#1605;&#1588;&#1705;&#1604; [&#8230;]</p>\nThe post <a href=\"http://wp-planet.ir/%d8%aa%d8%b9%db%8c%db%8c%d9%86-%d8%b2%d9%85%d8%a7%d9%86-%d8%a7%d8%b1%d8%b3%d8%a7%d9%84-%d8%b3%d9%81%d8%a7%d8%b1%d8%b4-%d8%af%d8%b1-%d9%88%d9%88%da%a9%d8%a7%d9%85%d8%b1%d8%b3-%d8%aa%d9%88%d8%b3%d8%b7/\">تعیین زمان ارسال سفارش در ووکامرس توسط مشتری</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2081:\"<p>&#1607;&#1585; &#1705;&#1587;&#1740; &#1705;&#1607; &#1587;&#1575;&#1740;&#1578; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; &#1601;&#1585;&#1608;&#1588;&#1711;&#1575;&#1607;&#1740; &#1583;&#1575;&#1585;&#1583; &#1581;&#1578;&#1605;&#1575; &#1576;&#1575; &#1662;&#1604;&#1575;&#1711;&#1740;&#1606; &#1608;&#1608;&#1705;&#1575;&#1605;&#1585;&#1587; &#1570;&#1588;&#1606;&#1575; &#1575;&#1587;&#1578;. &#1575;&#1740;&#1606; &#1575;&#1601;&#1586;&#1608;&#1606;&#1607; &#1585;&#1575;&#1740;&#1711;&#1575;&#1606; &#1593;&#1604;&#1575;&#1608;&#1607; &#1576;&#1585; &#1575;&#1585;&#1575;&#1574;&#1607; &#1582;&#1583;&#1605;&#1575;&#1578; &#1593;&#1575;&#1604;&#1740;&#1548; &#1576;&#1575; &#1583;&#1575;&#1588;&#1578;&#1606; &#1585;&#1575;&#1576;&#1591; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740; &#1570;&#1587;&#1575;&#1606; &#1578;&#1608;&#1575;&#1606;&#1587;&#1578;&#1607; &#1575;&#1601;&#1585;&#1575;&#1583; &#1586;&#1740;&#1575;&#1583;&#1740; &#1585;&#1575; &#1578;&#1585;&#1594;&#1740;&#1576; &#1576;&#1607; &#1575;&#1587;&#1578;&#1601;&#1575;&#1583;&#1607; &#1705;&#1606;&#1583;. &#1575;&#1605;&#1575; &#1575;&#1711;&#1585; &#1576;&#1607;&zwnj;&#1589;&#1608;&#1585;&#1578; &#1578;&#1582;&#1589;&#1589;&#1740; &#1576;&#1607; &#1601;&#1705;&#1585; &#1576;&#1575;&#1604;&#1575; &#1576;&#1585;&#1583;&#1606; &#1587;&#1575;&#1740;&#1578; &#1582;&#1608;&#1583; &#1576;&#1575;&#1588;&#1740;&#1583; &#1576;&#1575; &#1740;&#1705; &#1605;&#1588;&#1705;&#1604; &#1605;&#1607;&#1605; &#1608; &#1575;&#1587;&#1575;&#1587;&#1740; &#1585;&#1608;&#1576;&#1585;&#1608; &#1605;&#1740;&zwnj;&#1588;&#1608;&#1740;&#1583;. &#1575;&#1740;&#1606; &#1605;&#1588;&#1705;&#1604; [&hellip;]</p>The post <a href=\"http://wp-planet.ir/%d8%aa%d8%b9%db%8c%db%8c%d9%86-%d8%b2%d9%85%d8%a7%d9%86-%d8%a7%d8%b1%d8%b3%d8%a7%d9%84-%d8%b3%d9%81%d8%a7%d8%b1%d8%b4-%d8%af%d8%b1-%d9%88%d9%88%da%a9%d8%a7%d9%85%d8%b1%d8%b3-%d8%aa%d9%88%d8%b3%d8%b7/\">تعیین زمان ارسال سفارش در ووکامرس توسط مشتری</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"بهترین راهکارها برای افزایش امنیت وردپرس (ارائه ۵ راهکار)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:218:\"http://wp-planet.ir/%d8%a8%d9%87%d8%aa%d8%b1%db%8c%d9%86-%d8%b1%d8%a7%d9%87%da%a9%d8%a7%d8%b1%d9%87%d8%a7-%d8%a8%d8%b1%d8%a7%db%8c-%d8%a7%d9%81%d8%b2%d8%a7%db%8c%d8%b4-%d8%a7%d9%85%d9%86%db%8c%d8%aa-%d9%88%d8%b1%d8%af/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 01 Mar 2023 09:48:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"دسته‌بندی نشده\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:218:\"http://wp-planet.ir/%d8%a8%d9%87%d8%aa%d8%b1%db%8c%d9%86-%d8%b1%d8%a7%d9%87%da%a9%d8%a7%d8%b1%d9%87%d8%a7-%d8%a8%d8%b1%d8%a7%db%8c-%d8%a7%d9%81%d8%b2%d8%a7%db%8c%d8%b4-%d8%a7%d9%85%d9%86%db%8c%d8%aa-%d9%88%d8%b1%d8%af/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1039:\"<p>[&#8230;] &#1606;&#1608;&#1588;&#1578;&#1607; &#1576;&#1607;&#1578;&#1585;&#1740;&#1606; &#1585;&#1575;&#1607;&#1705;&#1575;&#1585;&#1607;&#1575; &#1576;&#1585;&#1575;&#1740; &#1575;&#1601;&#1586;&#1575;&#1740;&#1588; &#1575;&#1605;&#1606;&#1740;&#1578; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; (&#1575;&#1585;&#1575;&#1574;&#1607; &#1781; &#1585;&#1575;&#1607;&#1705;&#1575;&#1585;) &#1575;&#1608;&#1604;&#1740;&#1606; &#1576;&#1575;&#1585; &#1583;&#1585; &#1608;&#1576;&#1604;&#1575;&#1711; &#1576;&#1585;&#1578;&#1740;&#1606;&#1575;. &#1662;&#1583;&#1740;&#1583;&#1575;&#1585; &#1588;&#1583;.</p>\nThe post <a href=\"http://wp-planet.ir/%d8%a8%d9%87%d8%aa%d8%b1%db%8c%d9%86-%d8%b1%d8%a7%d9%87%da%a9%d8%a7%d8%b1%d9%87%d8%a7-%d8%a8%d8%b1%d8%a7%db%8c-%d8%a7%d9%81%d8%b2%d8%a7%db%8c%d8%b4-%d8%a7%d9%85%d9%86%db%8c%d8%aa-%d9%88%d8%b1%d8%af/\">بهترین راهکارها برای افزایش امنیت وردپرس (ارائه ۵ راهکار)</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1221:\"<p><span> [&hellip;]</span></p>\n<p>&#1606;&#1608;&#1588;&#1578;&#1607; <a rel=\"nofollow\" href=\"https://www.bertina.ir/blog/best-solutions-to-increase-wordpress-security/\">&#1576;&#1607;&#1578;&#1585;&#1740;&#1606; &#1585;&#1575;&#1607;&#1705;&#1575;&#1585;&#1607;&#1575; &#1576;&#1585;&#1575;&#1740; &#1575;&#1601;&#1586;&#1575;&#1740;&#1588; &#1575;&#1605;&#1606;&#1740;&#1578; &#1608;&#1585;&#1583;&#1662;&#1585;&#1587; (&#1575;&#1585;&#1575;&#1574;&#1607; &#1781; &#1585;&#1575;&#1607;&#1705;&#1575;&#1585;)</a> &#1575;&#1608;&#1604;&#1740;&#1606; &#1576;&#1575;&#1585; &#1583;&#1585; <a rel=\"nofollow\" href=\"https://www.bertina.ir/blog\">&#1608;&#1576;&#1604;&#1575;&#1711; &#1576;&#1585;&#1578;&#1740;&#1606;&#1575;</a>. &#1662;&#1583;&#1740;&#1583;&#1575;&#1585; &#1588;&#1583;.</p>The post <a href=\"http://wp-planet.ir/%d8%a8%d9%87%d8%aa%d8%b1%db%8c%d9%86-%d8%b1%d8%a7%d9%87%da%a9%d8%a7%d8%b1%d9%87%d8%a7-%d8%a8%d8%b1%d8%a7%db%8c-%d8%a7%d9%81%d8%b2%d8%a7%db%8c%d8%b4-%d8%a7%d9%85%d9%86%db%8c%d8%aa-%d9%88%d8%b1%d8%af/\">بهترین راهکارها برای افزایش امنیت وردپرس (ارائه ۵ راهکار)</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"آیا راه‌اندازی وبسایت بدون هاست امکان پذیر است؟\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:212:\"http://wp-planet.ir/%d8%a2%db%8c%d8%a7-%d8%b1%d8%a7%d9%87%d8%a7%d9%86%d8%af%d8%a7%d8%b2%db%8c-%d9%88%d8%a8%d8%b3%d8%a7%db%8c%d8%aa-%d8%a8%d8%af%d9%88%d9%86-%d9%87%d8%a7%d8%b3%d8%aa-%d8%a7%d9%85%da%a9%d8%a7%d9%86/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 21 Feb 2023 11:17:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"دسته‌بندی نشده\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:212:\"http://wp-planet.ir/%d8%a2%db%8c%d8%a7-%d8%b1%d8%a7%d9%87%d8%a7%d9%86%d8%af%d8%a7%d8%b2%db%8c-%d9%88%d8%a8%d8%b3%d8%a7%db%8c%d8%aa-%d8%a8%d8%af%d9%88%d9%86-%d9%87%d8%a7%d8%b3%d8%aa-%d8%a7%d9%85%da%a9%d8%a7%d9%86/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:965:\"<p>[&#8230;] &#1606;&#1608;&#1588;&#1578;&#1607; &#1570;&#1740;&#1575; &#1585;&#1575;&#1607;&#8204;&#1575;&#1606;&#1583;&#1575;&#1586;&#1740; &#1608;&#1576;&#1587;&#1575;&#1740;&#1578; &#1576;&#1583;&#1608;&#1606; &#1607;&#1575;&#1587;&#1578; &#1575;&#1605;&#1705;&#1575;&#1606; &#1662;&#1584;&#1740;&#1585; &#1575;&#1587;&#1578;&#1567; &#1575;&#1608;&#1604;&#1740;&#1606; &#1576;&#1575;&#1585; &#1583;&#1585; &#1608;&#1576;&#1604;&#1575;&#1711; &#1576;&#1585;&#1578;&#1740;&#1606;&#1575;. &#1662;&#1583;&#1740;&#1583;&#1575;&#1585; &#1588;&#1583;.</p>\nThe post <a href=\"http://wp-planet.ir/%d8%a2%db%8c%d8%a7-%d8%b1%d8%a7%d9%87%d8%a7%d9%86%d8%af%d8%a7%d8%b2%db%8c-%d9%88%d8%a8%d8%b3%d8%a7%db%8c%d8%aa-%d8%a8%d8%af%d9%88%d9%86-%d9%87%d8%a7%d8%b3%d8%aa-%d8%a7%d9%85%da%a9%d8%a7%d9%86/\">آیا راه‌اندازی وبسایت بدون هاست امکان پذیر است؟</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1137:\"<p><span> [&hellip;]</span></p>\n<p>&#1606;&#1608;&#1588;&#1578;&#1607; <a rel=\"nofollow\" href=\"https://www.bertina.ir/blog/can-you-start-a-blog-without-hosting/\">&#1570;&#1740;&#1575; &#1585;&#1575;&#1607;&zwnj;&#1575;&#1606;&#1583;&#1575;&#1586;&#1740; &#1608;&#1576;&#1587;&#1575;&#1740;&#1578; &#1576;&#1583;&#1608;&#1606; &#1607;&#1575;&#1587;&#1578; &#1575;&#1605;&#1705;&#1575;&#1606; &#1662;&#1584;&#1740;&#1585; &#1575;&#1587;&#1578;&#1567;</a> &#1575;&#1608;&#1604;&#1740;&#1606; &#1576;&#1575;&#1585; &#1583;&#1585; <a rel=\"nofollow\" href=\"https://www.bertina.ir/blog\">&#1608;&#1576;&#1604;&#1575;&#1711; &#1576;&#1585;&#1578;&#1740;&#1606;&#1575;</a>. &#1662;&#1583;&#1740;&#1583;&#1575;&#1585; &#1588;&#1583;.</p>The post <a href=\"http://wp-planet.ir/%d8%a2%db%8c%d8%a7-%d8%b1%d8%a7%d9%87%d8%a7%d9%86%d8%af%d8%a7%d8%b2%db%8c-%d9%88%d8%a8%d8%b3%d8%a7%db%8c%d8%aa-%d8%a8%d8%af%d9%88%d9%86-%d9%87%d8%a7%d8%b3%d8%aa-%d8%a7%d9%85%da%a9%d8%a7%d9%86/\">آیا راه‌اندازی وبسایت بدون هاست امکان پذیر است؟</a> first appeared on <a href=\"http://wp-planet.ir\">سیاره وردپرس ایران</a>.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:25:\"http://wp-planet.ir/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:48:\"WpOrg\\Requests\\Utility\\CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:12:{s:12:\"x-powered-by\";s:10:\"PHP/7.4.33\";s:13:\"last-modified\";s:29:\"Fri, 25 Aug 2023 11:32:28 GMT\";s:4:\"etag\";s:34:\"\"515c63dc85285d81e1031c54d8a9bde5\"\";s:12:\"x-robots-tag\";s:15:\"noindex, follow\";s:4:\"link\";s:56:\"<http://wp-planet.ir/wp-json/>; rel=\"https://api.w.org/\"\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:17:\"x-litespeed-cache\";s:3:\"hit\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"vary\";s:26:\"Accept-Encoding,User-Agent\";s:14:\"content-length\";s:4:\"5784\";s:4:\"date\";s:29:\"Fri, 25 Aug 2023 14:37:55 GMT\";s:6:\"server\";s:9:\"LiteSpeed\";}}s:5:\"build\";s:14:\"20211220193300\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4278, '_transient_timeout_feed_mod_9bb54f090b06ea0b52a1a293dcf1b99e', '1693017474', 'no'),
(4279, '_transient_feed_mod_9bb54f090b06ea0b52a1a293dcf1b99e', '1692974274', 'no'),
(4280, '_transient_timeout_dash_v2_ccb55a4e4b351a220e50ef4117d7dc27', '1693017474', 'no'),
(4281, '_transient_dash_v2_ccb55a4e4b351a220e50ef4117d7dc27', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wp-parsi.com/wp20-tehran-meetup/\'>برگزاری میتاپ جشن تولد ۲۰ سالگی وردپرس در تهران</a></li><li><a class=\'rsswidget\' href=\'https://wp-parsi.com/parsidate-version-4/\'>نگارش ۴ افزونه پارسی دیت منتشر شد</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://wp-planet.ir/%D9%85%D8%A7-%D8%A8%D8%B1%DA%AF%D8%B4%D8%AA%DB%8C%D9%85/\'>ما برگشتیم</a></li><li><a class=\'rsswidget\' href=\'http://wp-planet.ir/%D8%A8%D8%B1%DA%AF%D8%B2%D8%A7%D8%B1%DB%8C-%D9%BE%D9%86%D8%AC%D9%85%DB%8C%D9%86-%D9%85%DB%8C%D8%AA%D8%A7%D9%BE-%D8%B1%D8%B3%D9%85%DB%8C-%D9%88%D8%B1%D8%AF%D9%BE%D8%B1%D8%B3-%D8%AF%D8%B1-%D9%85%D8%B4/\'>برگزاری پنجمین میتاپ رسمی وردپرس در مشهد</a></li><li><a class=\'rsswidget\' href=\'http://wp-planet.ir/%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D9%86%D8%B5%D8%A8-%D9%88%D8%B1%D8%AF%D9%BE%D8%B1%D8%B3-%D8%B1%D9%88%DB%8C-%D8%A7%D9%86%D9%88%D8%A7%D8%B9-%D9%87%D8%A7%D8%B3%D8%AA-%D9%87%D8%A7%D8%B3%D8%AA-%D9%84%DB%8C/\'>آموزش نصب وردپرس روی انواع هاست (هاست لینوکس و ویندوز)</a></li></ul></div>', 'no'),
(4282, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1693020700', 'no'),
(4283, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(4285, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/fa_IR/wordpress-6.3.zip\";s:6:\"locale\";s:5:\"fa_IR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/fa_IR/wordpress-6.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.3\";s:7:\"version\";s:3:\"6.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1692974316;s:15:\"version_checked\";s:3:\"6.3\";s:12:\"translations\";a:0:{}}', 'no'),
(4286, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1692974333;s:8:\"response\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";s:3:\"7.0\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:55:\"pinterest-for-woocommerce/pinterest-for-woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:39:\"w.org/plugins/pinterest-for-woocommerce\";s:4:\"slug\";s:25:\"pinterest-for-woocommerce\";s:6:\"plugin\";s:55:\"pinterest-for-woocommerce/pinterest-for-woocommerce.php\";s:11:\"new_version\";s:5:\"1.3.8\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/pinterest-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/pinterest-for-woocommerce.1.3.8.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:70:\"https://ps.w.org/pinterest-for-woocommerce/assets/icon.svg?rev=2619817\";s:3:\"svg\";s:70:\"https://ps.w.org/pinterest-for-woocommerce/assets/icon.svg?rev=2619817\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/pinterest-for-woocommerce/assets/banner-1544x500.png?rev=2619817\";s:2:\"1x\";s:80:\"https://ps.w.org/pinterest-for-woocommerce/assets/banner-772x250.png?rev=2619817\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";s:3:\"7.3\";}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"8.0.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.8.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.gif?rev=2869506\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.gif?rev=2869506\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";s:3:\"7.3\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"21.0\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.21.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.1\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";s:5:\"7.2.5\";}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:15:\"classic-widgets\";s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"0.3\";s:7:\"updated\";s:19:\"2021-07-31 12:26:56\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/translation/plugin/classic-widgets/0.3/fa_IR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"7.8.2\";s:7:\"updated\";s:19:\"2023-07-11 10:19:48\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/woocommerce/7.8.2/fa_IR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:7:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:35:\"classic-widgets/classic-widgets.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/classic-widgets\";s:4:\"slug\";s:15:\"classic-widgets\";s:6:\"plugin\";s:35:\"classic-widgets/classic-widgets.php\";s:11:\"new_version\";s:3:\"0.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/classic-widgets/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/classic-widgets.0.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:59:\"https://s.w.org/plugins/geopattern-icon/classic-widgets.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:48:\"w.org/plugins/jwt-authentication-for-wp-rest-api\";s:4:\"slug\";s:34:\"jwt-authentication-for-wp-rest-api\";s:6:\"plugin\";s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";s:11:\"new_version\";s:5:\"1.3.2\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/jwt-authentication-for-wp-rest-api/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/jwt-authentication-for-wp-rest-api.1.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=2787935\";s:3:\"svg\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=2787935\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/banner-772x250.jpg?rev=2787935\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.2\";}s:29:\"wp-parsidate/wp-parsidate.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-parsidate\";s:4:\"slug\";s:12:\"wp-parsidate\";s:6:\"plugin\";s:29:\"wp-parsidate/wp-parsidate.php\";s:11:\"new_version\";s:5:\"4.0.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-parsidate/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-parsidate.4.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:57:\"https://ps.w.org/wp-parsidate/assets/icon.svg?rev=1036248\";s:3:\"svg\";s:57:\"https://ps.w.org/wp-parsidate/assets/icon.svg?rev=1036248\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/wp-parsidate/assets/banner-772x250.jpg?rev=2044005\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.3\";}s:24:\"filter-comments/core.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/filter-comments\";s:4:\"slug\";s:15:\"filter-comments\";s:6:\"plugin\";s:24:\"filter-comments/core.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/filter-comments/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/filter-comments.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/filter-comments/assets/icon-256x256.png?rev=2015220\";s:2:\"1x\";s:68:\"https://ps.w.org/filter-comments/assets/icon-256x256.png?rev=2015220\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/filter-comments/assets/banner-772x250.png?rev=2015226\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.0.1\";}s:43:\"persian-woocommerce/woocommerce-persian.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/persian-woocommerce\";s:4:\"slug\";s:19:\"persian-woocommerce\";s:6:\"plugin\";s:43:\"persian-woocommerce/woocommerce-persian.php\";s:11:\"new_version\";s:5:\"7.0.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/persian-woocommerce/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/persian-woocommerce.7.0.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/persian-woocommerce/assets/icon-128x128.png?rev=1689093\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/persian-woocommerce/assets/banner-772x250.png?rev=2639497\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}}s:7:\"checked\";a:30:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.1.7\";s:19:\"akismet/akismet.php\";s:3:\"5.1\";s:21:\"bot_telegram/core.php\";s:5:\"1.0.0\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:35:\"classic-widgets/classic-widgets.php\";s:3:\"0.3\";s:27:\"css-js-fileUploder/core.php\";s:5:\"1.0.0\";s:27:\"filter-hook/filter-hook.php\";s:5:\"1.0.0\";s:27:\"hook-action/hook-action.php\";s:5:\"1.0.0\";s:31:\"meta_data_api_meta_box/core.php\";s:5:\"1.0.0\";s:25:\"widget_api_first/core.php\";s:5:\"1.0.0\";s:9:\"hello.php\";s:5:\"1.7.2\";s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";s:5:\"1.3.2\";s:17:\"oop_manu/core.php\";s:5:\"1.0.0\";s:19:\"oop-plugin/core.php\";s:5:\"1.0.0\";s:55:\"pinterest-for-woocommerce/pinterest-for-woocommerce.php\";s:5:\"1.3.5\";s:22:\"sample-plugin/core.php\";s:5:\"1.0.0\";s:28:\"create_menu_setting/core.php\";s:5:\"1.0.0\";s:20:\"setting-api/core.php\";s:5:\"1.0.0\";s:30:\"setting_api_with_tabs/core.php\";s:5:\"1.0.0\";s:22:\"shortcode-api/core.php\";s:5:\"1.0.0\";s:17:\"user_api/core.php\";s:5:\"1.0.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"7.8.2\";s:18:\"word-link/core.php\";s:5:\"1.0.0\";s:21:\"word-link-v2/core.php\";s:5:\"2.0.0\";s:29:\"wp-parsidate/wp-parsidate.php\";s:5:\"4.0.2\";s:16:\"wp-ajax/core.php\";s:5:\"1.0.0\";s:24:\"wordpress-seo/wp-seo.php\";s:5:\"20.12\";s:40:\"wordpress-seo-premium/wp-seo-premium.php\";s:5:\"20.12\";s:24:\"filter-comments/core.php\";s:5:\"1.0.0\";s:43:\"persian-woocommerce/woocommerce-persian.php\";s:5:\"7.0.2\";}}', 'no'),
(4287, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1692988026;s:7:\"checked\";a:16:{s:9:\"Bookshelf\";s:3:\"1.0\";s:10:\"PROJECT-12\";s:5:\"1.0.0\";s:4:\"clab\";s:3:\"1.0\";s:7:\"coffee1\";s:3:\"1.0\";s:16:\"develop-wp-theme\";s:3:\"1.0\";s:14:\"my-first-theme\";s:3:\"1.0\";s:9:\"new theme\";s:3:\"1.0\";s:15:\"operaTorNetwork\";s:3:\"1.0\";s:17:\"post-api/post-api\";s:3:\"1.0\";s:21:\"res_full_api_get_post\";s:3:\"1.0\";s:10:\"templatemo\";s:3:\"1.0\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";s:13:\"wp-front-ajax\";s:3:\"1.0\";s:17:\"wp-training-theme\";s:3:\"1.0\";}s:8:\"response\";a:1:{s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:2:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(4303, '_site_transient_timeout_available_translations', '1692988286', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4304, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.5/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-06-18 08:25:23\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.3/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-05 08:49:59\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.3/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.23/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-06-23 11:21:55\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-24 08:33:35\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-15 13:01:35\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.3/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-21 11:59:07\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-05 14:06:30\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.3/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-19 15:27:26\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-08 09:49:50\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-08 09:52:35\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.3/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-20 15:13:11\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.3/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-20 15:19:10\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-18 08:19:14\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-23 09:21:40\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-08 16:08:07\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-03 07:25:21\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-03 07:13:00\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-18 06:22:52\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-13 12:52:17\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-05-17 04:31:21\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-04 16:53:05\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-11 02:48:56\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-09 16:14:38\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-17 17:10:36\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-14 22:16:37\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.13/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.18\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.18/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-13 17:52:55\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-05-24 16:21:45\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.3/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-25 15:24:22\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-21 15:50:53\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-03 16:30:48\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.3/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-10 17:08:26\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-23 07:18:56\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-22 18:15:33\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-09 07:20:47\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.3/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.30\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.30/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-28 22:06:16\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-17 18:41:36\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-10 07:55:29\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.3/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-22 09:25:05\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-18 14:34:17\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-24 17:16:15\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-07 01:15:00\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2023-05-19 07:40:56\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.18\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.18/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.3/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-04 06:07:20\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-09 00:11:15\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.3/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-18 17:02:03\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.3/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2022-11-24 03:51:58\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-08 18:51:09\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.3/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-03 01:58:55\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.3/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.12\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.12/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.35\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.35/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-19 21:47:18\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-25 08:55:15\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-17 07:09:13\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-21 08:48:39\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-11 10:41:58\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-02 09:00:40\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.31\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.31/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-10 16:56:03\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-23 18:57:54\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/6.3/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-23 18:55:37\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-21 12:17:05\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-24 15:51:54\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-20 14:55:02\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.13/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-17 07:24:11\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-13 11:41:50\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.3/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-08 12:29:02\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-19 10:40:17\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.3/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-11 16:00:32\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.15\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.15/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.35\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.35/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.7/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.22/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-19 20:18:40\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2023-03-04 10:46:30\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.13/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-15 15:30:50\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-03 18:38:05\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"6.3\";s:7:\"updated\";s:19:\"2023-08-17 14:06:22\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4360, '_site_transient_timeout_theme_roots', '1692989826', 'no'),
(4361, '_site_transient_theme_roots', 'a:16:{s:9:\"Bookshelf\";s:7:\"/themes\";s:10:\"PROJECT-12\";s:7:\"/themes\";s:4:\"clab\";s:7:\"/themes\";s:7:\"coffee1\";s:7:\"/themes\";s:16:\"develop-wp-theme\";s:7:\"/themes\";s:14:\"my-first-theme\";s:7:\"/themes\";s:9:\"new theme\";s:7:\"/themes\";s:15:\"operaTorNetwork\";s:7:\"/themes\";s:17:\"post-api/post-api\";s:7:\"/themes\";s:21:\"res_full_api_get_post\";s:7:\"/themes\";s:10:\"templatemo\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";s:13:\"wp-front-ajax\";s:7:\"/themes\";s:17:\"wp-training-theme\";s:7:\"/themes\";}', 'no'),
(4372, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1692999882', 'no'),
(4373, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:6145;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4821;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2788;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2680;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2057;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1925;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1912;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1653;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1568;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1563;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1549;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1514;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1504;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1492;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1375;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1316;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1277;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1175;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1156;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1153;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:1068;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:1032;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:1001;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:970;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:906;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:904;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:884;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:883;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:879;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:875;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:873;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:837;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:819;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:794;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:782;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:780;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:775;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:762;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:749;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:732;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:731;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:729;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:727;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:691;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:686;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:684;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:677;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:668;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:634;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:629;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:620;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:616;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:610;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:607;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:599;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:596;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:592;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:592;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:579;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:574;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:570;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:570;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:570;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:559;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:557;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:542;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:542;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:533;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:533;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:532;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:532;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:520;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:511;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:510;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:510;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:508;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:488;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:479;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:478;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:469;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:450;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:448;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:448;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:438;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:433;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:426;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:426;}s:7:\"gateway\";a:3:{s:4:\"name\";s:7:\"gateway\";s:4:\"slug\";s:7:\"gateway\";s:5:\"count\";i:426;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:424;}s:8:\"payments\";a:3:{s:4:\"name\";s:8:\"payments\";s:4:\"slug\";s:8:\"payments\";s:5:\"count\";i:423;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:422;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:420;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:420;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:413;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:409;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:400;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:396;}s:8:\"checkout\";a:3:{s:4:\"name\";s:8:\"checkout\";s:4:\"slug\";s:8:\"checkout\";s:5:\"count\";i:396;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:394;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:390;}}', 'no'),
(4410, '_transient_timeout_wpseo_total_unindexed_posts_limited', '1692995456', 'no'),
(4411, '_transient_wpseo_total_unindexed_posts_limited', '0', 'no'),
(4412, '_transient_timeout_wpseo_total_unindexed_terms_limited', '1692995456', 'no'),
(4413, '_transient_wpseo_total_unindexed_terms_limited', '0', 'no'),
(4414, '_transient_timeout_wpseo_total_unindexed_post_type_archives', '1693080956', 'no'),
(4415, '_transient_wpseo_total_unindexed_post_type_archives', '0', 'no'),
(4416, '_transient_timeout_wpseo_unindexed_post_link_count', '1693080956', 'no'),
(4417, '_transient_wpseo_unindexed_post_link_count', '0', 'no'),
(4418, '_transient_timeout_wpseo_unindexed_term_link_count', '1693080956', 'no'),
(4419, '_transient_wpseo_unindexed_term_link_count', '0', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_wp_attached_file', 'woocommerce-placeholder.png'),
(6, 6, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:8:\"filesize\";i:102644;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 13, '_edit_last', '1'),
(10, 13, '_edit_lock', '1688641439:1'),
(11, 14, '_wp_attached_file', '2023/07/t-6.jpg'),
(12, 14, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:699;s:6:\"height\";i:648;s:4:\"file\";s:15:\"2023/07/t-6.jpg\";s:8:\"filesize\";i:63075;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 13, '_thumbnail_id', '14'),
(14, 13, '_regular_price', '20000000'),
(15, 13, '_sale_price', '654321'),
(16, 13, 'total_sales', '0'),
(17, 13, '_tax_status', 'taxable'),
(18, 13, '_tax_class', ''),
(19, 13, '_manage_stock', 'yes'),
(20, 13, '_backorders', 'no'),
(21, 13, '_sold_individually', 'no'),
(22, 13, '_virtual', 'no'),
(23, 13, '_downloadable', 'no'),
(24, 13, '_download_limit', '-1'),
(25, 13, '_download_expiry', '-1'),
(26, 13, '_stock', '4'),
(27, 13, '_stock_status', 'instock'),
(28, 13, '_wc_average_rating', '0'),
(29, 13, '_wc_review_count', '0'),
(30, 13, '_product_version', '7.8.2'),
(31, 13, '_price', '654321'),
(32, 15, '_edit_last', '1'),
(33, 15, '_edit_lock', '1688634160:1'),
(34, 16, '_wp_attached_file', '2023/07/t-4.jpg'),
(35, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:578;s:6:\"height\";i:578;s:4:\"file\";s:15:\"2023/07/t-4.jpg\";s:8:\"filesize\";i:58514;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 15, '_regular_price', '52345'),
(37, 15, 'total_sales', '0'),
(38, 15, '_tax_status', 'taxable'),
(39, 15, '_tax_class', ''),
(40, 15, '_manage_stock', 'yes'),
(41, 15, '_backorders', 'no'),
(42, 15, '_sold_individually', 'no'),
(43, 15, '_virtual', 'no'),
(44, 15, '_downloadable', 'no'),
(45, 15, '_download_limit', '-1'),
(46, 15, '_download_expiry', '-1'),
(47, 15, '_stock', '5'),
(48, 15, '_stock_status', 'instock'),
(49, 15, '_wc_average_rating', '0'),
(50, 15, '_wc_review_count', '0'),
(51, 15, '_product_version', '7.8.2'),
(52, 15, '_price', '52345'),
(53, 15, '_product_image_gallery', '16'),
(89, 30, '_wp_attached_file', '2023/07/167e6eef358976c43ee209a4f97fbd3418898427-360p.mp4'),
(90, 30, '_wp_attachment_metadata', 'a:10:{s:8:\"filesize\";i:21313308;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:279;s:16:\"length_formatted\";s:4:\"4:39\";s:5:\"width\";i:640;s:6:\"height\";i:360;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:44100;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:-2082844800;}'),
(91, 30, '_edit_lock', '1689233873:1'),
(94, 30, '_edit_last', '1'),
(97, 31, '_wp_attached_file', '2023/07/movie.mp4'),
(98, 31, '_wp_attachment_metadata', 'a:11:{s:8:\"lossless\";b:0;s:8:\"filesize\";i:318465;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:13;s:16:\"length_formatted\";s:4:\"0:13\";s:5:\"width\";i:320;s:6:\"height\";i:240;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:48000;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:1273573926;}'),
(138, 49, '_wp_attached_file', '2023/07/product6.jpg'),
(139, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:460;s:6:\"height\";i:571;s:4:\"file\";s:20:\"2023/07/product6.jpg\";s:8:\"filesize\";i:27035;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 50, '_wp_attached_file', '2023/07/product2.jpg'),
(141, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:460;s:6:\"height\";i:571;s:4:\"file\";s:20:\"2023/07/product2.jpg\";s:8:\"filesize\";i:32946;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 51, '_wp_attached_file', '2023/07/product2-1.jpg'),
(143, 51, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:460;s:6:\"height\";i:571;s:4:\"file\";s:22:\"2023/07/product2-1.jpg\";s:8:\"filesize\";i:32946;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 53, '_wp_attached_file', '2023/07/product6-1.jpg'),
(145, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:460;s:6:\"height\";i:571;s:4:\"file\";s:22:\"2023/07/product6-1.jpg\";s:8:\"filesize\";i:27035;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 54, '_wp_attached_file', '2023/07/burger-1.jpg'),
(147, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:894;s:6:\"height\";i:831;s:4:\"file\";s:20:\"2023/07/burger-1.jpg\";s:8:\"filesize\";i:111140;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 55, '_wp_attached_file', '2023/07/product4.jpg'),
(154, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:460;s:6:\"height\";i:571;s:4:\"file\";s:20:\"2023/07/product4.jpg\";s:8:\"filesize\";i:36484;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 60, '_edit_lock', '1690197126:1'),
(172, 60, '_edit_last', '1'),
(173, 61, '_edit_lock', '1689852160:1'),
(174, 61, '_edit_last', '1'),
(175, 61, '_thumbnail_id', '14'),
(179, 60, '_thumbnail_id', '51'),
(185, 69, '_edit_lock', '1690033940:1'),
(186, 69, '_edit_last', '1'),
(187, 73, '_edit_lock', '1690039258:1'),
(188, 73, '_edit_last', '1'),
(189, 73, '_thumbnail_id', '14'),
(206, 78, '_wp_attached_file', 'Bookshelf_uploads_dir/2023/07/OReilly4872.jpg'),
(207, 79, '_wp_attached_file', 'Bookshelf_uploads_dir/2023/07/OReilly9063.jpg'),
(208, 80, '_wp_attached_file', 'Bookshelf_uploads_dir/2023/07/OReilly9606.jpg'),
(209, 81, '_wp_attached_file', 'Bookshelf_uploads_dir/2023/07/OReilly9839.jpg'),
(210, 82, '_wp_attached_file', 'Bookshelf_uploads_dir/2023/07/OReilly5827.jpg'),
(211, 83, '_wp_attached_file', 'Bookshelf_uploads_dir/2023/07/OReilly2367.jpg'),
(274, 114, '_edit_lock', '1691582928:1'),
(275, 114, '_edit_last', '1'),
(276, 114, '_wp_page_template', 'archive.php'),
(277, 116, '_edit_lock', '1691574688:1'),
(278, 116, '_edit_last', '1'),
(279, 116, '_wp_page_template', 'update.php'),
(280, 118, '_edit_lock', '1690909071:1'),
(281, 118, '_edit_last', '1'),
(282, 118, '_wp_page_template', 'link.php'),
(283, 120, '_edit_lock', '1690909394:1'),
(284, 120, '_edit_last', '1'),
(285, 120, '_wp_page_template', 'default'),
(286, 123, '_edit_lock', '1691578095:1'),
(287, 123, '_edit_last', '1'),
(288, 123, '_wp_page_template', 'blog.php'),
(289, 2, '_edit_lock', '1690909084:1'),
(290, 7, '_edit_lock', '1690909102:1'),
(291, 120, '_wp_trash_meta_status', 'publish'),
(292, 120, '_wp_trash_meta_time', '1690909543'),
(293, 120, '_wp_desired_post_slug', 'blogs'),
(294, 128, '_edit_lock', '1691581438:1'),
(295, 128, '_edit_last', '1'),
(296, 128, '_wp_page_template', 'blogs.php'),
(297, 131, '_menu_item_type', 'custom'),
(298, 131, '_menu_item_menu_item_parent', '0'),
(299, 131, '_menu_item_object_id', '131'),
(300, 131, '_menu_item_object', 'custom'),
(301, 131, '_menu_item_target', ''),
(302, 131, '_menu_item_classes', 'a:1:{i:0;s:4:\"test\";}'),
(303, 131, '_menu_item_xfn', ''),
(304, 131, '_menu_item_url', 'http://localhost/wordpress/'),
(405, 143, '_edit_lock', '1691582105:1'),
(406, 143, '_edit_last', '1'),
(407, 144, '_wp_attached_file', '2023/08/OReilly.Laravel.Up_.and_.Running.2nd.Edition.www_.EBooksWorld.ir_.jpg'),
(408, 144, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:787;s:4:\"file\";s:77:\"2023/08/OReilly.Laravel.Up_.and_.Running.2nd.Edition.www_.EBooksWorld.ir_.jpg\";s:8:\"filesize\";i:61801;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(409, 143, '_thumbnail_id', '144'),
(412, 146, '_edit_lock', '1691657710:1'),
(413, 146, '_edit_last', '1'),
(414, 147, '_wp_attached_file', '2023/08/download.png'),
(415, 147, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:284;s:6:\"height\";i:177;s:4:\"file\";s:20:\"2023/08/download.png\";s:8:\"filesize\";i:2032;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(416, 146, '_thumbnail_id', '147'),
(419, 149, '_edit_lock', '1692989030:1'),
(420, 149, '_edit_last', '1'),
(421, 150, '_wp_attached_file', '2023/08/download-1.png'),
(422, 150, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:306;s:6:\"height\";i:165;s:4:\"file\";s:22:\"2023/08/download-1.png\";s:8:\"filesize\";i:4307;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(423, 149, '_thumbnail_id', '280'),
(426, 152, '_edit_lock', '1692623315:1'),
(427, 152, '_edit_last', '1'),
(428, 153, '_wp_attached_file', '2023/08/download-2.png'),
(429, 153, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:199;s:6:\"height\";i:173;s:4:\"file\";s:22:\"2023/08/download-2.png\";s:8:\"filesize\";i:2316;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(457, 152, '_dwt_post_level', '2'),
(498, 149, '_dwt_post_level', '2'),
(501, 146, '_dwt_post_level', '1'),
(504, 143, '_dwt_post_level', '3'),
(514, 152, '_post_view_nums', '487'),
(515, 146, '_post_view_nums', '162'),
(516, 149, '_post_view_nums', '261'),
(517, 143, '_post_view_nums', '116'),
(518, 149, '_google_referer_nums', '2'),
(519, 146, '_google_referer_nums', '1'),
(532, 143, '_dwt_post_category', '24'),
(539, 146, '_dwt_post_category', '25'),
(542, 149, '_dwt_post_category', '16'),
(553, 152, '_yoast_wpseo_primary_category', '23'),
(554, 152, '_yoast_wpseo_content_score', '30'),
(555, 152, '_yoast_wpseo_estimated-reading-time-minutes', '3'),
(556, 152, '_yoast_wpseo_wordproof_timestamp', ''),
(567, 149, '_yoast_wpseo_primary_category', ''),
(568, 149, '_yoast_wpseo_content_score', '90'),
(569, 149, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(570, 149, '_yoast_wpseo_wordproof_timestamp', ''),
(585, 149, 'enclosure', 'http://localhost/wordpress/wp-content/uploads/2023/07/167e6eef358976c43ee209a4f97fbd3418898427-360p.mp4\n21313308\nvideo/mp4\n'),
(593, 152, 'enclosure', 'http://localhost/wordpress/wp-content/uploads/2023/07/167e6eef358976c43ee209a4f97fbd3418898427-360p.mp4\n21313308\nvideo/mp4\n'),
(605, 152, '_dwt_post_category', '20'),
(627, 178, '_edit_lock', '1691581869:1'),
(628, 178, '_edit_last', '1'),
(630, 180, '_edit_lock', '1691504670:1'),
(631, 180, '_edit_last', '1'),
(632, 180, '_thumbnail_id', '55'),
(635, 180, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(636, 180, '_yoast_wpseo_wordproof_timestamp', ''),
(637, 180, '_yoast_wpseo_primary_category', ''),
(641, 180, '_wp_trash_meta_status', 'publish'),
(642, 180, '_wp_trash_meta_time', '1691505166'),
(643, 180, '_wp_desired_post_slug', '%d8%aa%d8%b3%d8%aa'),
(652, 193, '_edit_lock', '1692528257:1'),
(653, 194, '_wp_attached_file', '2023/08/Two-M3-Max-Variants-Reportedly-Being-Tested-Will-Have-Varying-Number-Of-CPU-Cores.jpg'),
(654, 194, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:728;s:6:\"height\";i:409;s:4:\"file\";s:93:\"2023/08/Two-M3-Max-Variants-Reportedly-Being-Tested-Will-Have-Varying-Number-Of-CPU-Cores.jpg\";s:8:\"filesize\";i:100068;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(655, 193, '_edit_last', '1'),
(656, 193, '_thumbnail_id', '194'),
(657, 193, '_yoast_wpseo_content_score', '60'),
(658, 193, '_yoast_wpseo_estimated-reading-time-minutes', '2'),
(659, 193, '_yoast_wpseo_wordproof_timestamp', ''),
(660, 193, '_yoast_wpseo_primary_tech', '32'),
(661, 196, '_edit_lock', '1692456144:1'),
(662, 196, '_edit_last', '1'),
(663, 197, '_wp_attached_file', '2023/08/google-trust-services-root-certificate-authority.png'),
(664, 197, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:728;s:6:\"height\";i:380;s:4:\"file\";s:60:\"2023/08/google-trust-services-root-certificate-authority.png\";s:8:\"filesize\";i:17812;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(665, 196, '_thumbnail_id', '197'),
(666, 196, '_yoast_wpseo_content_score', '30'),
(667, 196, '_yoast_wpseo_estimated-reading-time-minutes', '3'),
(668, 196, '_yoast_wpseo_wordproof_timestamp', ''),
(669, 196, '_yoast_wpseo_primary_tech', '34'),
(670, 199, '_edit_lock', '1692525473:1'),
(671, 200, '_wp_attached_file', '2023/08/apple.jpg'),
(672, 200, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:728;s:6:\"height\";i:486;s:4:\"file\";s:17:\"2023/08/apple.jpg\";s:8:\"filesize\";i:48029;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(673, 199, '_edit_last', '1'),
(674, 199, '_thumbnail_id', '200'),
(675, 199, '_yoast_wpseo_content_score', '30'),
(676, 199, '_yoast_wpseo_estimated-reading-time-minutes', '2'),
(677, 199, '_yoast_wpseo_wordproof_timestamp', ''),
(678, 199, '_yoast_wpseo_primary_tech', '32'),
(679, 193, '_post_view_nums', '136'),
(680, 199, '_post_view_nums', '156'),
(681, 196, '_post_view_nums', '527'),
(682, 205, '_edit_lock', '1691583278:1'),
(683, 205, '_edit_last', '1'),
(684, 205, '_wp_page_template', 'technology.php'),
(685, 205, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(686, 205, '_yoast_wpseo_wordproof_timestamp', ''),
(690, 8, '_edit_lock', '1691688857:1'),
(691, 9, '_edit_lock', '1691680190:1'),
(692, 114, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(693, 114, '_yoast_wpseo_wordproof_timestamp', ''),
(694, 211, '_edit_lock', '1691581474:1'),
(695, 211, '_edit_last', '1'),
(696, 211, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(697, 211, '_yoast_wpseo_wordproof_timestamp', ''),
(698, 211, '_yoast_wpseo_primary_tech', '26'),
(699, 211, '_post_view_nums', '0'),
(700, 211, '_wp_trash_meta_status', 'publish'),
(701, 211, '_wp_trash_meta_time', '1691581668'),
(702, 211, '_wp_desired_post_slug', 'technology'),
(703, 216, '_wp_attached_file', '2023/08/bac3b3e78d80c7a1b24c6c10b0a42b9052648422-480p.mp4'),
(704, 216, '_wp_attachment_metadata', 'a:10:{s:8:\"filesize\";i:15725197;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:146;s:16:\"length_formatted\";s:4:\"2:26\";s:5:\"width\";i:854;s:6:\"height\";i:480;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:44100;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:-2082844800;}'),
(705, 193, '_dwt_post_level', '3'),
(714, 146, '_yoast_wpseo_primary_category', ''),
(715, 146, '_yoast_wpseo_content_score', '90'),
(716, 146, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(717, 146, '_yoast_wpseo_wordproof_timestamp', ''),
(718, 199, '_dwt_post_level', '2'),
(725, 8, '_edit_last', '1'),
(726, 8, '_wp_page_template', 'default'),
(727, 8, '_dwt_post_level', '1'),
(729, 8, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(730, 8, '_yoast_wpseo_wordproof_timestamp', ''),
(738, 199, '_yoast_wpseo_primary_cat_tech', '38'),
(739, 237, '_edit_lock', '1692367627:1'),
(740, 237, '_edit_last', '1'),
(741, 237, '_wp_page_template', 'taxonomy-cat-tech.php'),
(742, 237, '_dwt_post_level', '1'),
(744, 237, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(745, 237, '_yoast_wpseo_wordproof_timestamp', ''),
(746, 199, '_yoast_wpseo_primary_cat-tech', '40'),
(747, 239, '_edit_lock', '1691703795:1'),
(748, 239, '_edit_last', '1'),
(749, 239, '_wp_page_template', 'search-network.php'),
(750, 239, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(751, 239, '_yoast_wpseo_wordproof_timestamp', ''),
(778, 279, '_edit_lock', '1692118542:1'),
(779, 279, '_edit_last', '1'),
(780, 280, '_wp_attached_file', '2023/08/Two-M3-Max-Variants-Reportedly-Being-Tested-Will-Have-Varying-Number-Of-CPU-Cores-1.jpg'),
(781, 280, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:728;s:6:\"height\";i:409;s:4:\"file\";s:95:\"2023/08/Two-M3-Max-Variants-Reportedly-Being-Tested-Will-Have-Varying-Number-Of-CPU-Cores-1.jpg\";s:8:\"filesize\";i:100068;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(782, 279, '_thumbnail_id', '280'),
(784, 279, '_yoast_wpseo_estimated-reading-time-minutes', '2'),
(785, 279, '_yoast_wpseo_wordproof_timestamp', ''),
(786, 279, '_yoast_wpseo_primary_category-operators', ''),
(790, 279, '_otn_post_keyword', 'programer'),
(791, 279, '_post_country', 'iran'),
(792, 279, '_post_city', 'tehran'),
(793, 279, '_otn_post_country', 'iran'),
(794, 279, '_otn_post_city', 'tehran'),
(796, 131, '_wp_old_date', '2023-08-02'),
(800, 131, '_wp_old_date', '2023-08-11'),
(804, 131, '_otn_icon_navbar', 'http://localhost/wordpress/wp-content/uploads/2023/08/download-2.png'),
(808, 131, '_custom_menu_item', ''),
(809, 131, '_custom_menu_item_desc', '55'),
(843, 279, '_otn_post_category_experience_sector', 's:31:\"a:2:{i:0;s:3:\"vue\";i:1;s:0:\"\";}\";'),
(844, 279, '_otn_post_category_experience', 's:37:\"a:2:{i:0;s:9:\"programer\";i:1;s:0:\"\";}\";'),
(845, 318, '_edit_lock', '1692025583:1'),
(846, 318, '_edit_last', '1'),
(847, 318, '_wp_page_template', 'search-results.php'),
(848, 318, '_otn_post_country', 'country'),
(849, 318, '_otn_post_city', 'city'),
(850, 318, '_otn_post_category_experience', 's:17:\"a:1:{i:0;s:0:\"\";}\";'),
(851, 318, '_otn_post_category_experience_sector', 's:17:\"a:1:{i:0;s:0:\"\";}\";'),
(852, 318, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(853, 318, '_yoast_wpseo_wordproof_timestamp', ''),
(856, 279, '_yoast_wpseo_content_score', '30'),
(858, 346, '_edit_lock', '1692881593:1'),
(859, 346, '_edit_last', '1'),
(860, 346, '_otn_post_keyword', 'gamer'),
(861, 346, '_otn_post_country', 'iran'),
(862, 346, '_otn_post_city', 'tehran'),
(863, 346, '_otn_post_category_experience', 's:37:\"a:2:{i:0;s:9:\"programer\";i:1;s:0:\"\";}\";'),
(864, 346, '_otn_post_category_experience_sector', 's:31:\"a:2:{i:0;s:3:\"vue\";i:1;s:0:\"\";}\";'),
(865, 346, '_yoast_wpseo_content_score', '30'),
(866, 346, '_yoast_wpseo_estimated-reading-time-minutes', '2'),
(867, 346, '_yoast_wpseo_wordproof_timestamp', ''),
(868, 346, '_yoast_wpseo_primary_category-operators', ''),
(869, 348, '_edit_lock', '1692128525:1'),
(870, 348, '_edit_last', '1'),
(871, 348, '_wp_page_template', 'shortlist.php'),
(872, 348, '_otn_post_country', 'country'),
(873, 348, '_otn_post_city', 'city'),
(874, 348, '_otn_post_category_experience', 's:17:\"a:1:{i:0;s:0:\"\";}\";'),
(875, 348, '_otn_post_category_experience_sector', 's:17:\"a:1:{i:0;s:0:\"\";}\";'),
(876, 348, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(877, 348, '_yoast_wpseo_wordproof_timestamp', ''),
(878, 350, '_menu_item_type', 'post_type'),
(879, 350, '_menu_item_menu_item_parent', '0'),
(880, 350, '_menu_item_object_id', '348'),
(881, 350, '_menu_item_object', 'page'),
(882, 350, '_menu_item_target', ''),
(883, 350, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(884, 350, '_menu_item_xfn', ''),
(885, 350, '_menu_item_url', ''),
(887, 351, '_wp_attached_file', '2023/08/icons8-list-48.png'),
(888, 351, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:48;s:6:\"height\";i:48;s:4:\"file\";s:26:\"2023/08/icons8-list-48.png\";s:8:\"filesize\";i:175;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(889, 131, '_wp_old_date', '2023-08-12'),
(890, 350, '_otn_icon_navbar', 'http://localhost/wordpress/wp-content/uploads/2023/08/icons8-list-48.png'),
(894, 199, '_yoast_wpseo_primary_tech_cat', '47'),
(895, 193, '_yoast_wpseo_primary_tech_cat', '47'),
(896, 196, '_yoast_wpseo_primary_tech_cat', '47'),
(897, 199, '_yoast_wpseo_primary_tech-cat', '50'),
(898, 193, '_yoast_wpseo_primary_tech-cat', '50'),
(899, 196, '_yoast_wpseo_primary_tech-cat', '50'),
(900, 193, '_post_media_type', 'video'),
(901, 199, '_post_media_type', 'null'),
(902, 199, '_dwt_post_category', '51'),
(903, 193, '_dwt_post_category', '51'),
(904, 114, '_wp_trash_meta_status', 'publish'),
(905, 114, '_wp_trash_meta_time', '1692547524'),
(906, 114, '_wp_desired_post_slug', 'archive'),
(909, 152, '_post_media_type', 'null'),
(912, 353, '_edit_lock', '1692806173:1'),
(913, 353, '_edit_last', '1'),
(914, 353, '_wp_page_template', 'searchResults.php'),
(915, 353, '_otn_post_country', 'country'),
(916, 353, '_otn_post_city', 'city'),
(917, 353, '_otn_post_category_experience', 's:17:\"a:1:{i:0;s:0:\"\";}\";'),
(918, 353, '_otn_post_category_experience_sector', 's:17:\"a:1:{i:0;s:0:\"\";}\";'),
(919, 353, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(920, 353, '_yoast_wpseo_wordproof_timestamp', ''),
(930, 131, '_wp_old_date', '2023-08-16'),
(931, 350, '_wp_old_date', '2023-08-16'),
(942, 131, '_wp_old_date', '2023-08-23'),
(943, 350, '_wp_old_date', '2023-08-23'),
(945, 346, '_thumbnail_id', '14'),
(946, 357, '_edit_lock', '1692888525:1'),
(947, 357, '_edit_last', '1'),
(948, 357, '_wp_page_template', 'list-posts.php'),
(949, 357, '_otn_post_country', 'country'),
(950, 357, '_otn_post_city', 'city'),
(951, 357, '_otn_post_category_experience', 's:17:\"a:1:{i:0;s:0:\"\";}\";'),
(952, 357, '_otn_post_category_experience_sector', 's:17:\"a:1:{i:0;s:0:\"\";}\";'),
(953, 357, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(954, 357, '_yoast_wpseo_wordproof_timestamp', ''),
(955, 131, '_wp_old_date', '2023-08-24'),
(956, 350, '_wp_old_date', '2023-08-24'),
(957, 360, '_menu_item_type', 'post_type'),
(958, 360, '_menu_item_menu_item_parent', '350'),
(959, 360, '_menu_item_object_id', '353'),
(960, 360, '_menu_item_object', 'page'),
(961, 360, '_menu_item_target', ''),
(962, 360, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(963, 360, '_menu_item_xfn', ''),
(964, 360, '_menu_item_url', ''),
(966, 360, '_otn_icon_navbar', ''),
(969, 149, '_post_media_type', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2023-07-05 17:24:32', '2023-07-05 13:54:32', '<!-- wp:paragraph -->\n<p>این یک برگهٔ نمونه است. این از یک نوشتهٔ وبلاگ متفاوت است زیرا در یک مکان باقی خواهد ماند و در راهبری سایتتان (در بیشتر پوسته‌ها) نشان داده خواهد شد. بیشتر مردم با یک برگه درباره که آن‌ها را به بازدیدکنندگان بالقوهٔ سایت معرفی می‌کند، آغاز می‌کنند. که ممکن است چیزی همانند این باشد:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>سلام! من یک پیام‌رسان دوچرخه‌سوار در روز، بازیگر مشتاق در شب هستم، و این وب‌سایت من است. من در لس آنجلس زندگی می‌کنم، یک سگ بزرگ به نام جک دارم، و من پینیا کولادا دوست دارم. (همچنین گرفتار شدن در باران را دوست دارم.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...یا چیزهایی مانند این:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>شرکت XYZ در سال ۱۹۷۱ تأسیس شد، و تا کنون چیزهای با کیفیتی را به عموم عرضه کرده است. این شرکت در شهر گاتهام واقع شده است، بیش از ۲۰۰۰ نفر در آن کار می‌کنند و همه نوع چیز عالی برای جامعه گاتهام انجام می‌دهد.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>به عنوان یک کاربر جدید وردپرس، برای حذف این برگه و ایجاد برگه‌های جدید برای محتوای خود شما باید به <a href=\"http://localhost/wordpress/wp-admin/\">پیشخوان</a> بروید. خوش بگذره!</p>\n<!-- /wp:paragraph -->', 'برگه نمونه', '', 'publish', 'closed', 'open', '', 'برگه-نمونه', '', '', '2023-07-05 17:24:32', '2023-07-05 13:54:32', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-07-05 17:24:32', '2023-07-05 13:54:32', '<!-- wp:heading --><h2>ما که هستیم</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">متن پیشنهادی: </strong>نشانی وب‌سایت ما: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>دیدگاه‌ها</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">متن پیشنهادی: </strong>هنگامی که بازدیدکنندگان نظرات خود را در سایت می‌نویسند، ما اطلاعاتی را که در فرم نظرات و همچنین بازدید کننده‌ها ارائه می‌شود جمع آوری می‌کنیم &#8217;s آدرس IP و رجیستر عامل کاربر مرورگر برای کمک به تشخیص هرزنامه.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>یک رشته ناشناس ایجاد شده از آدرس ایمیل شما (همچنین هش نامیده می‌شود) ممکن است به سرویس Gravatar ارائه شود تا ببینید آیا از آن استفاده می‌کنید. سیاست حفظ حریم خصوصی خدمات Gravatar در اینجا در دسترس است: https://automattic.com/privacy/. پس از تأیید نظر شما، تصویر نمایه شما در متن نظر شما قابل مشاهده است.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>رسانه</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">متن پیشنهادی: </strong>اگر تصاویر را به وبسایت آپلود کنید، نباید آپلود تصاویر با داده‌های مکان جغرافیایی (EXIF GPS) شامل شود. بازدیدکنندگان وب سایت می‌توانند هر گونه اطلاعات مکان را از تصاویر در وب سایت دانلود و استخراج کنند.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>کوکی‌ها</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">متن پیشنهادی: </strong>اگر شما نظر خود را در سایت ما ثبت کنید، ممکن است برای ذخیره نام، آدرس ایمیل و وب سایت خود در کوکی‌ها تصمیم گیری کنید. اینها برای راحتی شما هستند، به طوری که شما مجبور نیستید دوباره جزئیات خود را پر کنید زمانی که نظر دیگری را ارسال کنید. این کوکی‌ها یک سال طول خواهد کشید.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>اگر از برگه ورود ما بازدید نمایید، ما یک کوکی موقت برای مشخص نمودن اینکه آیا مروگر شما کوکی قبول می‌کند را تنظیم می‌کنیم. این کوکی محتوای اطلاعات شخصی شما نیست و وقتی مرورگر شما بسته می‌شود از بین می‌رود.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>هنگام ورود به سیستم، ما همچنین کوکی‌ها را تنظیم خواهیم کرد تا اطلاعات ورود به سیستم و گزینه‌های صفحه نمایش خود را ذخیره کنید. کوکی‌های ورود به سیستم برای دو روز گذشته و کوکی‌های گزینه‌های صفحه نمایش برای یک سال گذشته است. اگر &quot; مرا به خاطر بسپار &quot; را انتخاب کنید، ورود شما برای دو هفته ادامه خواهد داشت. اگر از حساب خود خارج شوید، کوکی‌های ورود حذف خواهند شد.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>اگر یک مقاله را ویرایش یا منتشر کنید، یک کوکی اضافی در مرورگر شما ذخیره خواهد شد. این کوکی حاوی اطلاعات شخصی نیست و به سادگی نشان می‌دهد که شناسه پست مقاله شما فقط ویرایش شده است. بعد از یک روز منقضی می‌شود.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>محتوای جاسازی‌شده از دیگر وب‌سایت‌ها</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">متن پیشنهادی: </strong>مقالات موجود در این سایت ممکن است شامل محتوای تعبیه شده (مثلا ویدئوها، تصاویر، مقالات و غیره) باشد. مطالب جاسازی شده از وب سایت‌های دیگر رفتار دقیقا همان طوری که بازدید کننده از وب سایت دیگر بازدید کرده است.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>این وبسایت‌ها ممکن است اطلاعاتی مربوط به شما را جمع‌آوری کنند، از کوکی‌ها استفاده کنند، ردیابی سوم شخص اضافه را جاسازی کنند و تعامل شما را با محتوای تعبیه شده نظارت کنند که شامل ردیابی تعامل شما با محتوای جاسازی شده است اگر حساب کاربری داشته و به آن وبسایت وارد شده باشید.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>اطلاعات شما را با چه کسی به اشتراک می‌گذاریم</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">متن پیشنهادی: </strong>اگر شما یک تنظیم دوباره رمز عبور را درخواست دادید، نشانی IP شما در ایمیل تنظیم دوباره وجود خواهد داشت.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>چه مدت ما اطلاعات شما را حفظ می‌کنیم</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">متن پیشنهادی: </strong>اگر یک نظر را ارسال کنید، نظر و متادیتای آن به طور نامحدود حفظ می‌شوند. این به این معنا است که ما می‌توانیم نظرات بعدی را بطور خودکار بجای اینکه در صف بازدید قرار دهیم، تشخیص داده و تایید کنیم.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>برای کاربرانی که در وب سایت ما ثبت نام می‌کنند (اگر وجود داشته باشند)، ما همچنین اطلاعات شخصی را که در مشخصات کاربر آنها ارائه می‌کنیم، ذخیره می‌کنیم. همه کاربران می‌توانند اطلاعات شخصی خود را در هر زمان (به جز آنها که نمی‌توانند نام کاربری خود را تغییر دهند) ببینند، ویرایش و یا حذف کنند. مدیران وب سایت همچنین می‌توانند این اطلاعات را مشاهده و ویرایش کنند.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>حقوقی که بر روی داده‌هایتان دارید</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">متن پیشنهادی: </strong>اگر در این سایت حساب کاربری دارید یا نظری ارسال کرده‌اید، می‌توانید درخواست دریافت یک فایل خروجی از اطلاعات شخصی که ما در مورد شما نگه می‌داریم، از جمله هرگونه داده‌ای که برای ما ارائه کرده‌اید را بدهید. همچنین می‌توانید درخواست کنید که ما هرگونه اطلاعات شخصی که در مورد شما داریم را پاک کنیم. این شامل اطلاعاتی نیست که ما مجبور به نگهداری آنها برای اهداف اداری، قانونی یا امنیتی باشیم.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>داده‌هایتان کجا فرستاده شد</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">متن پیشنهادی: </strong>دیدگاه‌های بازدیدکننده ممکن است از طریق یک سرویس تشخیص جفنگ خودکار بررسی شوند.</p><!-- /wp:paragraph -->', 'سیاست حفظ حریم خصوصی', '', 'draft', 'closed', 'open', '', 'سیاست-حفظ-حریم-خصوصی', '', '', '2023-07-05 17:24:32', '2023-07-05 13:54:32', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(6, 1, '2023-07-06 09:33:10', '2023-07-06 06:03:10', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2023-07-06 09:33:10', '2023-07-06 06:03:10', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/07/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2023-07-06 09:33:10', '2023-07-06 06:03:10', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2023-07-06 09:33:10', '2023-07-06 06:03:10', '', 0, 'http://localhost/wordpress/shop/', 0, 'page', '', 0),
(8, 1, '2023-07-06 09:33:10', '2023-07-06 06:03:10', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2023-08-10 18:37:09', '2023-08-10 15:07:09', '', 0, 'http://localhost/wordpress/cart/', 0, 'page', '', 0),
(9, 1, '2023-07-06 09:33:10', '2023-07-06 06:03:10', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2023-07-06 09:33:10', '2023-07-06 06:03:10', '', 0, 'http://localhost/wordpress/checkout/', 0, 'page', '', 0),
(10, 1, '2023-07-06 09:33:10', '2023-07-06 06:03:10', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2023-07-06 09:33:10', '2023-07-06 06:03:10', '', 0, 'http://localhost/wordpress/my-account/', 0, 'page', '', 0),
(11, 1, '2023-07-06 09:33:10', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h3>Overview</h3>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<h2>Refunds</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Late or missing refunds</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Sale items</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Exchanges</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Gifts</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Shipping returns</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Need help?</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->', 'Refund and Returns Policy', '', 'draft', 'closed', 'closed', '', 'refund_returns', '', '', '2023-07-06 09:33:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=11', 0, 'page', '', 0),
(13, 1, '2023-07-06 12:59:28', '2023-07-06 09:29:28', '', 'لباس', '', 'publish', 'open', 'closed', '', '%d9%84%d8%a8%d8%a7%d8%b3-2', '', '', '2023-07-06 13:05:44', '2023-07-06 09:35:44', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=13', 0, 'product', '', 0),
(14, 1, '2023-07-06 10:34:55', '2023-07-06 07:04:55', '', 't-6', '', 'inherit', 'open', 'closed', '', 't-6', '', '', '2023-07-06 10:34:55', '2023-07-06 07:04:55', '', 13, 'http://localhost/wordpress/wp-content/uploads/2023/07/t-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2023-07-06 12:14:43', '2023-07-06 08:44:43', 'سبسیلبسیبلسیبلسیبل', 'لباس', '', 'publish', 'open', 'closed', '', '%d9%84%d8%a8%d8%a7%d8%b3', '', '', '2023-07-06 12:14:44', '2023-07-06 08:44:44', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=15', 0, 'product', '', 0),
(16, 1, '2023-07-06 12:12:57', '2023-07-06 08:42:57', '', 't-4', '', 'inherit', 'open', 'closed', '', 't-4', '', '', '2023-07-06 12:12:57', '2023-07-06 08:42:57', '', 15, 'http://localhost/wordpress/wp-content/uploads/2023/07/t-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2023-07-12 17:32:10', '2023-07-12 14:02:10', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentythree', '', '', '2023-07-12 17:32:10', '2023-07-12 14:02:10', '', 0, 'http://localhost/wordpress/2023/07/12/wp-global-styles-twentytwentythree/', 0, 'wp_global_styles', '', 0),
(30, 1, '2023-07-12 21:06:28', '2023-07-12 17:36:28', '', '167e6eef358976c43ee209a4f97fbd3418898427-360p', '', 'inherit', 'open', 'closed', '', '167e6eef358976c43ee209a4f97fbd3418898427-360p', '', '', '2023-07-13 11:10:13', '2023-07-13 07:40:13', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/07/167e6eef358976c43ee209a4f97fbd3418898427-360p.mp4', 0, 'attachment', 'video/mp4', 0),
(31, 1, '2023-07-13 11:18:34', '2023-07-13 07:48:34', '', 'movie', '', 'inherit', 'open', 'closed', '', 'movie', '', '', '2023-07-13 11:18:34', '2023-07-13 07:48:34', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/07/movie.mp4', 0, 'attachment', 'video/mp4', 0),
(49, 1, '2023-07-17 14:20:17', '2023-07-17 14:20:17', '', 'product6', '', 'inherit', 'open', 'closed', '', 'product6', '', '', '2023-07-17 14:20:17', '2023-07-17 14:20:17', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/07/product6.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2023-07-17 14:20:31', '2023-07-17 14:20:31', '', 'product2', '', 'inherit', 'open', 'closed', '', 'product2', '', '', '2023-07-17 14:20:31', '2023-07-17 14:20:31', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/07/product2.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2023-07-17 14:28:49', '2023-07-17 14:28:49', '', 'product2', '', 'inherit', 'open', 'closed', '', 'product2-2', '', '', '2023-07-17 14:28:49', '2023-07-17 14:28:49', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/07/product2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2023-07-17 14:30:21', '2023-07-17 14:30:21', '', 'product6', '', 'inherit', 'open', 'closed', '', 'product6-2', '', '', '2023-07-17 14:30:21', '2023-07-17 14:30:21', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/07/product6-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2023-07-17 14:30:39', '2023-07-17 14:30:39', '', 'burger-1', '', 'inherit', 'open', 'closed', '', 'burger-1', '', '', '2023-07-17 14:30:39', '2023-07-17 14:30:39', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/07/burger-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2023-07-17 14:34:37', '2023-07-17 14:34:37', '', 'product4', '', 'inherit', 'open', 'closed', '', 'product4', '', '', '2023-07-17 14:34:37', '2023-07-17 14:34:37', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/07/product4.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2023-07-22 11:23:26', '2023-07-22 11:23:26', 'مطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\n&nbsp;\r\n\r\nمطلب vip\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\na\r\n\r\nsdfasdfasdfasdfa', 'مطلب vip', '', 'publish', 'open', 'closed', '', '%d9%85%d8%b7%d9%84%d8%a8-vip-2', '', '', '2023-07-22 14:01:44', '2023-07-22 14:01:44', '', 0, 'http://localhost/wordpress/?post_type=vip&#038;p=60', 0, 'vip', '', 0),
(61, 1, '2023-07-20 11:23:55', '2023-07-20 11:23:55', 'مطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\n&nbsp;\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\n&nbsp;', 'مطلب vip', '', 'publish', 'open', 'closed', '', '%d9%85%d8%b7%d9%84%d8%a8-vip', '', '', '2023-07-20 11:23:55', '2023-07-20 11:23:55', '', 0, 'http://localhost/wordpress/?post_type=vip&#038;p=61', 0, 'vip', '', 0),
(62, 1, '2023-07-20 11:24:04', '2023-07-20 11:24:04', 'مطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\n&nbsp;\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\n&nbsp;', 'مطلب vip', '', 'inherit', 'closed', 'closed', '', '61-autosave-v1', '', '', '2023-07-20 11:24:04', '2023-07-20 11:24:04', '', 61, 'http://localhost/wordpress/?p=62', 0, 'revision', '', 0),
(69, 1, '2023-07-22 13:52:20', '0000-00-00 00:00:00', 'asdfadfadsfasdf\n\nasdf\n\nasdfa\n\nsdfa\n\nsdfa', 'vip', '', 'draft', 'open', 'open', '', '', '', '', '2023-07-22 13:52:20', '2023-07-22 13:52:20', '', 0, 'http://localhost/wordpress/?post_type=vips&#038;p=69', 0, 'vips', '', 0),
(70, 1, '2023-07-22 13:51:58', '2023-07-22 13:51:58', 'asdfadfadsfasdf\r\n\r\nasdf\r\n\r\nasdfa\r\n\r\nsdfa\r\n\r\nsdfa', 'vip', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2023-07-22 13:51:58', '2023-07-22 13:51:58', '', 69, 'http://localhost/wordpress/?p=70', 0, 'revision', '', 0),
(72, 1, '2023-07-22 14:01:44', '2023-07-22 14:01:44', 'مطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\nمطلب vip\r\n\r\n&nbsp;\r\n\r\nمطلب vip\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\na\r\n\r\nsdfasdfasdfasdfa', 'مطلب vip', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2023-07-22 14:01:44', '2023-07-22 14:01:44', '', 60, 'http://localhost/wordpress/?p=72', 0, 'revision', '', 0),
(73, 1, '2023-07-22 15:18:07', '2023-07-22 15:18:07', 'adfasdfasdfasd\r\n\r\nfas\r\n\r\ndf\r\n\r\nasd\r\n\r\nfa\r\n\r\nsd\r\n\r\nfa', 'boook', '', 'publish', 'open', 'closed', '', 'boook', '', '', '2023-07-22 15:18:28', '2023-07-22 15:18:28', '', 0, 'http://localhost/wordpress/?post_type=book&#038;p=73', 0, 'book', '', 0),
(78, 1, '2023-07-29 14:58:01', '2023-07-29 14:58:01', '', '', '', 'inherit', 'open', 'closed', '', '78', '', '', '2023-07-29 14:58:01', '2023-07-29 14:58:01', '', 0, 'http://localhost/wordpress/78/', 0, 'attachment', '', 0),
(79, 1, '2023-07-29 15:00:39', '2023-07-29 15:00:39', '', '', '', 'inherit', 'open', 'closed', '', '79', '', '', '2023-07-29 15:00:39', '2023-07-29 15:00:39', '', 0, 'http://localhost/wordpress/79/', 0, 'attachment', '', 0),
(80, 1, '2023-07-29 15:01:56', '2023-07-29 15:01:56', '', '', '', 'inherit', 'open', 'closed', '', '80', '', '', '2023-07-29 15:01:56', '2023-07-29 15:01:56', '', 0, 'http://localhost/wordpress/80/', 0, 'attachment', '', 0),
(81, 1, '2023-07-29 15:02:25', '2023-07-29 15:02:25', '', '', '', 'inherit', 'open', 'closed', '', '81', '', '', '2023-07-29 15:02:25', '2023-07-29 15:02:25', '', 0, 'http://localhost/wordpress/81/', 0, 'attachment', '', 0),
(82, 1, '2023-07-29 15:02:50', '2023-07-29 15:02:50', '', '', '', 'inherit', 'open', 'closed', '', '82', '', '', '2023-07-29 15:02:50', '2023-07-29 15:02:50', '', 0, 'http://localhost/wordpress/82/', 0, 'attachment', '', 0),
(83, 1, '2023-07-29 15:02:59', '2023-07-29 15:02:59', '', '', '', 'inherit', 'open', 'closed', '', '83', '', '', '2023-07-29 15:02:59', '2023-07-29 15:02:59', '', 0, 'http://localhost/wordpress/83/', 0, 'attachment', '', 0),
(114, 1, '2023-08-01 13:49:29', '2023-08-01 13:49:29', '', 'آرشیو', '', 'trash', 'closed', 'closed', '', 'archive__trashed', '', '', '2023-08-20 19:35:24', '2023-08-20 16:05:24', '', 0, 'http://localhost/wordpress/?page_id=114', 0, 'page', '', 0),
(115, 1, '2023-08-01 13:49:29', '2023-08-01 13:49:29', '', 'آرشیو', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2023-08-01 13:49:29', '2023-08-01 13:49:29', '', 114, 'http://localhost/wordpress/?p=115', 0, 'revision', '', 0),
(116, 1, '2023-08-01 14:29:28', '2023-08-01 14:29:28', '', 'آپدیت', '', 'publish', 'closed', 'closed', '', 'update', '', '', '2023-08-01 14:29:35', '2023-08-01 14:29:35', '', 0, 'http://localhost/wordpress/?page_id=116', 0, 'page', '', 0),
(117, 1, '2023-08-01 14:29:28', '2023-08-01 14:29:28', '', 'آپدیت', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2023-08-01 14:29:28', '2023-08-01 14:29:28', '', 116, 'http://localhost/wordpress/?p=117', 0, 'revision', '', 0),
(118, 1, '2023-08-01 14:45:35', '2023-08-01 14:45:35', '', 'اشتراک گذاری', '', 'publish', 'closed', 'closed', '', 'share', '', '', '2023-08-01 14:45:35', '2023-08-01 14:45:35', '', 0, 'http://localhost/wordpress/?page_id=118', 0, 'page', '', 0),
(119, 1, '2023-08-01 14:45:35', '2023-08-01 14:45:35', '', 'اشتراک گذاری', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2023-08-01 14:45:35', '2023-08-01 14:45:35', '', 118, 'http://localhost/wordpress/?p=119', 0, 'revision', '', 0),
(120, 1, '2023-08-01 15:02:43', '2023-08-01 15:02:43', '', 'وبلاگ ها', '', 'trash', 'closed', 'closed', '', 'blogs__trashed', '', '', '2023-08-01 17:05:43', '2023-08-01 17:05:43', '', 0, 'http://localhost/wordpress/?page_id=120', 0, 'page', '', 0),
(121, 1, '2023-08-01 15:02:43', '2023-08-01 15:02:43', '', 'لیست وبلاگ', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2023-08-01 15:02:43', '2023-08-01 15:02:43', '', 120, 'http://localhost/wordpress/?p=121', 0, 'revision', '', 0),
(123, 1, '2023-08-01 16:59:34', '2023-08-01 16:59:34', '', 'وبلاگ ها', '', 'publish', 'closed', 'closed', '', 'blog-2', '', '', '2023-08-01 16:59:34', '2023-08-01 16:59:34', '', 0, 'http://localhost/wordpress/?page_id=123', 0, 'page', '', 0),
(124, 1, '2023-08-01 16:59:34', '2023-08-01 16:59:34', '', 'وبلاگ ها', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2023-08-01 16:59:34', '2023-08-01 16:59:34', '', 123, 'http://localhost/wordpress/?p=124', 0, 'revision', '', 0),
(127, 1, '2023-08-01 17:01:09', '2023-08-01 17:01:09', '', 'وبلاگ ها', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2023-08-01 17:01:09', '2023-08-01 17:01:09', '', 120, 'http://localhost/wordpress/?p=127', 0, 'revision', '', 0),
(128, 1, '2023-08-01 17:06:04', '2023-08-01 17:06:04', '', 'وبلاگ ها', '', 'publish', 'closed', 'closed', '', 'blogs', '', '', '2023-08-01 17:11:15', '2023-08-01 17:11:15', '', 0, 'http://localhost/wordpress/?page_id=128', 0, 'page', '', 0),
(129, 1, '2023-08-01 17:06:04', '2023-08-01 17:06:04', '', 'وبلاگ', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2023-08-01 17:06:04', '2023-08-01 17:06:04', '', 128, 'http://localhost/wordpress/?p=129', 0, 'revision', '', 0),
(130, 1, '2023-08-01 17:11:10', '2023-08-01 17:11:10', '', 'وبلاگ ها', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2023-08-01 17:11:10', '2023-08-01 17:11:10', '', 128, 'http://localhost/wordpress/?p=130', 0, 'revision', '', 0),
(131, 1, '2023-08-25 19:52:51', '2023-08-02 08:56:26', '', 'خانه', '', 'publish', 'closed', 'closed', '', '%d8%ae%d8%a7%d9%86%d9%87', '', '', '2023-08-25 19:52:51', '2023-08-25 16:22:51', '', 0, 'http://localhost/wordpress/?p=131', 1, 'nav_menu_item', '', 0),
(143, 1, '2023-08-02 13:05:09', '2023-08-02 13:05:09', 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', 'Laravel', '', 'publish', 'open', 'open', '', 'laravel', '', '', '2023-08-03 14:29:25', '2023-08-03 14:29:25', '', 0, 'http://localhost/wordpress/?p=143', 0, 'post', '', 0),
(144, 1, '2023-08-02 13:05:00', '2023-08-02 13:05:00', '', 'OReilly.Laravel.Up.and.Running.2nd.Edition.www.EBooksWorld.ir', '', 'inherit', 'open', 'closed', '', 'oreilly-laravel-up-and-running-2nd-edition-www-ebooksworld-ir', '', '', '2023-08-02 13:05:00', '2023-08-02 13:05:00', '', 143, 'http://localhost/wordpress/wp-content/uploads/2023/08/OReilly.Laravel.Up_.and_.Running.2nd.Edition.www_.EBooksWorld.ir_.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2023-08-02 13:05:09', '2023-08-02 13:05:09', 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', 'Laravel', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2023-08-02 13:05:09', '2023-08-02 13:05:09', '', 143, 'http://localhost/wordpress/?p=145', 0, 'revision', '', 0),
(146, 1, '2023-08-02 13:06:10', '2023-08-02 13:06:10', 'PHP is a general-purpose scripting language geared towards web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1993 and released in 1995. The PHP reference implementation is now produced by the PHP Group', 'PHP', '', 'publish', 'open', 'open', '', 'php', '', '', '2023-08-10 12:17:19', '2023-08-10 08:47:19', '', 0, 'http://localhost/wordpress/?p=146', 0, 'post', '', 0),
(147, 1, '2023-08-02 13:06:03', '2023-08-02 13:06:03', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2023-08-02 13:06:03', '2023-08-02 13:06:03', '', 146, 'http://localhost/wordpress/wp-content/uploads/2023/08/download.png', 0, 'attachment', 'image/png', 0),
(148, 1, '2023-08-02 13:06:10', '2023-08-02 13:06:10', 'PHP is a general-purpose scripting language geared towards web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1993 and released in 1995. The PHP reference implementation is now produced by the PHP Group', 'PHP', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2023-08-02 13:06:10', '2023-08-02 13:06:10', '', 146, 'http://localhost/wordpress/?p=148', 0, 'revision', '', 0),
(149, 1, '2023-08-02 13:07:07', '2023-08-02 13:07:07', 'WordPress is a web content management system. It was originally created as a tool to publish blogs but has evolved to support publishing other web content, including more traditional\r\n[bq text=\"text test\" quote=\"مصطفی\"]\r\nwebsites, mailing lists and Internet forum, media galleries, membership sites, learning management systems and online stores.\r\n\r\n[free-video src=\"http://localhost/wordpress/wp-content/uploads/2023/07/167e6eef358976c43ee209a4f97fbd3418898427-360p.mp4\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[bq text=\"mostafafafafafafa\" quote=\"ali\"]', 'WordPress', '', 'publish', 'open', 'open', '', 'wordpress', '', '', '2023-08-25 22:15:21', '2023-08-25 18:45:21', '', 0, 'http://localhost/wordpress/?p=149', 0, 'post', '', 3),
(150, 1, '2023-08-02 13:07:02', '2023-08-02 13:07:02', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2023-08-02 13:07:02', '2023-08-02 13:07:02', '', 149, 'http://localhost/wordpress/wp-content/uploads/2023/08/download-1.png', 0, 'attachment', 'image/png', 0),
(151, 1, '2023-08-02 13:07:07', '2023-08-02 13:07:07', 'WordPress is a web content management system. It was originally created as a tool to publish blogs but has evolved to support publishing other web content, including more traditional websites, mailing lists and Internet forum, media galleries, membership sites, learning management systems and online stores.', 'WordPress', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2023-08-02 13:07:07', '2023-08-02 13:07:07', '', 149, 'http://localhost/wordpress/?p=151', 0, 'revision', '', 0),
(152, 1, '2023-08-02 13:30:26', '2023-08-02 13:30:26', '<h2 class=\"post-title\">کنکور هم با همه بالا و پایین هاش بالاخره تمام شد...</h2>\r\nکنکور99 هم با حضور یک میلیون و چهارصد هزار شرکت کننده به پایان رسید و هر آنچه که دیده شد اضطراب و\r\nنگرانی داوطلبان از شیوع بیماری کرونا و و تاثیر آن بر سلامت روان خانواده ها و داوطلبان کنکوری\r\nبود.\r\nامید داریم کنکور 1400 در فضایی به دور از هرگونه بیماری و با آرامش بیشتری برگزار شود و خاطره تلخ\r\nاین روزها را با خودش ببرد.\r\nدر این میان گروهی از داوطلبان بیشترین اضطراب را متحمل شدند. گروه داوطلبان پسر که اگر امسال در\r\nکنکور قبول نشوند مشمول خدمت سربازی خواهند شد.\r\nاین درحالی است که دانش آموزان دختر می توانند به مراتب در سال های بیشتری در رقابت کنکور حاضر\r\nشوند.\r\n<blockquote>[free-video src=\"http://localhost/wordpress/wp-content/uploads/2023/07/167e6eef358976c43ee209a4f97fbd3418898427-360p.mp4\"]\r\n<p class=\"text\">با وجود کرونا برگزار شد. در بسیاری از مراکز پروتکل های بهداشتی به نحو احسن اجرا\r\nشد و در بعضی دیگر اصلا رعایت نشده بود. پس از کنکور اعلام شد که دانش آموزی خودکشی کرده و\r\nبسیاری از ماها که دیگر پا به سن گذاشته ایم غمگین شدیم که این همه جدال برای چه!!!</p>\r\n\r\n<h5 class=\"name\">- فرخ جوادی</h5>\r\n</blockquote>\r\nلورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.\r\nچاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی\r\nمورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه\r\nدرصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری\r\nرا برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این\r\nصورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد\r\nوزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی\r\nاساسا مورد استفاده قرار گیرد.\r\n\r\nکنکور در ایران همیشه دغدغه دانش آموزان بوده و هست. پیشتر, از سال های اول دبیرستان دانش\r\nآموزان وارد این چالش می شدند و 4 سال با آن درگیر بودند. هر سال یک بیانه صادر می شد و نحوه محاسبه\r\nتراز و رتبه اعلام می شد اما باز همانی برگزار می شد که بود. اما امروزه از دوران ابتدایی خانواده\r\nفرزندان خود را درگیر کنکور می کنند و با نوشتن کلاس های مختلف دانش آموزان را برای این برهه از\r\nزندگی آماده می کنند و به خیال خودشان کار درستی است اما اگر واقع بین باشیم این امر بسیار مخرب\r\nاست. جدا از سیستم آموزشی که به هر حال اینطور رقم خورده, فرزندانمان نیاز به کسب مهرات هم دارند.\r\nمهارت ها و هنرهایی که چه بسا می توانند بیشتر کارآیی داشته باشند.\r\nکافیست به این درک برسیم که دانشگاه رفتن برای کسب سواد اجتماعی و شعور اجتماعی لازم است اما بدون\r\nمدرک دانشگاهی هم می توان زندگی کرد و می توان بسیار هم موفق بود.', 'Vue', '', 'publish', 'open', 'open', '', 'vue', '', '', '2023-08-21 16:19:04', '2023-08-21 12:49:04', '', 0, 'http://localhost/wordpress/?p=152', 0, 'post', '', 10),
(153, 1, '2023-08-02 13:30:23', '2023-08-02 13:30:23', '', 'download (2)', '', 'inherit', 'open', 'closed', '', 'download-2', '', '', '2023-08-02 13:30:23', '2023-08-02 13:30:23', '', 152, 'http://localhost/wordpress/wp-content/uploads/2023/08/download-2.png', 0, 'attachment', 'image/png', 0),
(154, 1, '2023-08-02 13:30:26', '2023-08-02 13:30:26', 'Vue.js is an open-source model–view–viewmodel front end JavaScript library for building user interfaces and single-page applications. It was created by Evan You, and is maintained by him and the rest of the active core team members. Wikipedia', 'Vue', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2023-08-02 13:30:26', '2023-08-02 13:30:26', '', 152, 'http://localhost/wordpress/?p=154', 0, 'revision', '', 0),
(156, 1, '2023-08-03 08:36:52', '2023-08-03 08:36:52', '<h2 class=\"post-title\">کنکور هم با همه بالا و پایین هاش بالاخره تمام شد...</h2>\r\n                    <p>کنکور99 هم با حضور یک میلیون و چهارصد هزار شرکت کننده به پایان رسید و هر آنچه که دیده شد اضطراب و\r\n                        نگرانی داوطلبان از شیوع بیماری کرونا و و تاثیر آن بر سلامت روان خانواده ها و داوطلبان کنکوری\r\n                        بود.\r\n                        امید داریم کنکور 1400 در فضایی به دور از هرگونه بیماری و با آرامش بیشتری برگزار شود و خاطره تلخ\r\n                        این روزها را با خودش ببرد.\r\n                        در این میان گروهی از داوطلبان بیشترین اضطراب را متحمل شدند. گروه داوطلبان پسر که اگر امسال در\r\n                        کنکور قبول نشوند مشمول خدمت سربازی خواهند شد.\r\n                        این درحالی است که دانش آموزان دختر می توانند به مراتب در سال های بیشتری در رقابت کنکور حاضر\r\n                        شوند.</p>\r\n                    <blockquote>\r\n                        <span class=\"icon\"><i class=\"fas fa-quote-right\"></i></span>\r\n                        <p class=\"text\">با وجود کرونا برگزار شد. در بسیاری از مراکز پروتکل های بهداشتی به نحو احسن اجرا\r\n                            شد و در بعضی دیگر اصلا رعایت نشده بود. پس از کنکور اعلام شد که دانش آموزی خودکشی کرده و\r\n                            بسیاری از ماها که دیگر پا به سن گذاشته ایم غمگین شدیم که این همه جدال برای چه!!!</p>\r\n                        <h5 class=\"name\">- فرخ جوادی</h5>\r\n                    </blockquote>\r\n                    <p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.\r\n                        چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی\r\n                        مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه\r\n                        درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری\r\n                        را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این\r\n                        صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد\r\n                        وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی\r\n                        اساسا مورد استفاده قرار گیرد.\r\n                        <br><br>کنکور در ایران همیشه دغدغه دانش آموزان بوده و هست. پیشتر, از سال های اول دبیرستان دانش\r\n                        آموزان وارد این چالش می شدند و 4 سال با آن درگیر بودند. هر سال یک بیانه صادر می شد و نحوه محاسبه\r\n                        تراز و رتبه اعلام می شد اما باز همانی برگزار می شد که بود. اما امروزه از دوران ابتدایی خانواده\r\n                        فرزندان خود را درگیر کنکور می کنند و با نوشتن کلاس های مختلف دانش آموزان را برای این برهه از\r\n                        زندگی آماده می کنند و به خیال خودشان کار درستی است اما اگر واقع بین باشیم این امر بسیار مخرب\r\n                        است. جدا از سیستم آموزشی که به هر حال اینطور رقم خورده, فرزندانمان نیاز به کسب مهرات هم دارند.\r\n                        مهارت ها و هنرهایی که چه بسا می توانند بیشتر کارآیی داشته باشند.\r\n                        کافیست به این درک برسیم که دانشگاه رفتن برای کسب سواد اجتماعی و شعور اجتماعی لازم است اما بدون\r\n                        مدرک دانشگاهی هم می توان زندگی کرد و می توان بسیار هم موفق بود.</p>', 'Vue', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2023-08-03 08:36:52', '2023-08-03 08:36:52', '', 152, 'http://localhost/wordpress/?p=156', 0, 'revision', '', 0),
(164, 1, '2023-08-06 18:55:49', '2023-08-06 15:25:49', 'WordPress is a web content management system. It was originally created as a tool to publish blogs but has evolved to support publishing other web content, including more traditional \n[bq text=\"text test\" quote=\"مصطفی\"]\nwebsites, mailing lists and Internet forum, media galleries, membership sites, learning management systems and online stores.\n\n[free-video src=\"http://localhost/wordpress/wp-content/uploads/2023/07/167e6eef358976c43ee209a4f97fbd3418898427-360p.mp4\"]', 'WordPress', '', 'inherit', 'closed', 'closed', '', '149-autosave-v1', '', '', '2023-08-06 18:55:49', '2023-08-06 15:25:49', '', 149, 'http://localhost/wordpress/?p=164', 0, 'revision', '', 0),
(165, 1, '2023-08-06 18:37:04', '2023-08-06 15:07:04', 'WordPress is a web content management system. It was originally created as a tool to publish blogs but has evolved to support publishing other web content, including more traditional websites, mailing lists and Internet forum, media galleries, membership sites, learning management systems and online stores.\r\n\r\n[free-video src=\"http://localhost/wordpress/wp-content/uploads/2023/07/167e6eef358976c43ee209a4f97fbd3418898427-360p.mp4\"]', 'WordPress', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2023-08-06 18:37:04', '2023-08-06 15:07:04', '', 149, 'http://localhost/wordpress/?p=165', 0, 'revision', '', 0),
(166, 1, '2023-08-06 18:55:57', '2023-08-06 15:25:57', 'WordPress is a web content management system. It was originally created as a tool to publish blogs but has evolved to support publishing other web content, including more traditional \r\n[bq text=\"text test\" quote=\"مصطفی\"]\r\nwebsites, mailing lists and Internet forum, media galleries, membership sites, learning management systems and online stores.\r\n\r\n[free-video src=\"http://localhost/wordpress/wp-content/uploads/2023/07/167e6eef358976c43ee209a4f97fbd3418898427-360p.mp4\"]', 'WordPress', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2023-08-06 18:55:57', '2023-08-06 15:25:57', '', 149, 'http://localhost/wordpress/?p=166', 0, 'revision', '', 0),
(167, 1, '2023-08-06 20:29:00', '2023-08-06 16:59:00', 'WordPress is a web content management system. It was originally created as a tool to publish blogs but has evolved to support publishing other web content, including more traditional\r\n[bq text=\"text test\" quote=\"مصطفی\"]\r\nwebsites, mailing lists and Internet forum, media galleries, membership sites, learning management systems and online stores.\r\n\r\n[free-video src=\"http://localhost/wordpress/wp-content/uploads/2023/07/167e6eef358976c43ee209a4f97fbd3418898427-360p.mp4\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[bq text=\"mostafafafafafafa\" quote=\"ali\"]', 'WordPress', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2023-08-06 20:29:00', '2023-08-06 16:59:00', '', 149, 'http://localhost/wordpress/?p=167', 0, 'revision', '', 0),
(169, 1, '2023-08-06 21:15:54', '2023-08-06 17:45:54', '<h2 class=\"post-title\">کنکور هم با همه بالا و پایین هاش بالاخره تمام شد...</h2>\r\nکنکور99 هم با حضور یک میلیون و چهارصد هزار شرکت کننده به پایان رسید و هر آنچه که دیده شد اضطراب و\r\nنگرانی داوطلبان از شیوع بیماری کرونا و و تاثیر آن بر سلامت روان خانواده ها و داوطلبان کنکوری\r\nبود.\r\nامید داریم کنکور 1400 در فضایی به دور از هرگونه بیماری و با آرامش بیشتری برگزار شود و خاطره تلخ\r\nاین روزها را با خودش ببرد.\r\nدر این میان گروهی از داوطلبان بیشترین اضطراب را متحمل شدند. گروه داوطلبان پسر که اگر امسال در\r\nکنکور قبول نشوند مشمول خدمت سربازی خواهند شد.\r\nاین درحالی است که دانش آموزان دختر می توانند به مراتب در سال های بیشتری در رقابت کنکور حاضر\r\nشوند.\r\n<blockquote>[free-video src=\"http://localhost/wordpress/wp-content/uploads/2023/07/167e6eef358976c43ee209a4f97fbd3418898427-360p.mp4\"]\r\n<p class=\"text\">با وجود کرونا برگزار شد. در بسیاری از مراکز پروتکل های بهداشتی به نحو احسن اجرا\r\nشد و در بعضی دیگر اصلا رعایت نشده بود. پس از کنکور اعلام شد که دانش آموزی خودکشی کرده و\r\nبسیاری از ماها که دیگر پا به سن گذاشته ایم غمگین شدیم که این همه جدال برای چه!!!</p>\r\n\r\n<h5 class=\"name\">- فرخ جوادی</h5>\r\n</blockquote>\r\nلورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.\r\nچاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی\r\nمورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه\r\nدرصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری\r\nرا برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این\r\nصورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد\r\nوزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی\r\nاساسا مورد استفاده قرار گیرد.\r\n\r\n\r\nکنکور در ایران همیشه دغدغه دانش آموزان بوده و هست. پیشتر, از سال های اول دبیرستان دانش\r\nآموزان وارد این چالش می شدند و 4 سال با آن درگیر بودند. هر سال یک بیانه صادر می شد و نحوه محاسبه\r\nتراز و رتبه اعلام می شد اما باز همانی برگزار می شد که بود. اما امروزه از دوران ابتدایی خانواده\r\nفرزندان خود را درگیر کنکور می کنند و با نوشتن کلاس های مختلف دانش آموزان را برای این برهه از\r\nزندگی آماده می کنند و به خیال خودشان کار درستی است اما اگر واقع بین باشیم این امر بسیار مخرب\r\nاست. جدا از سیستم آموزشی که به هر حال اینطور رقم خورده, فرزندانمان نیاز به کسب مهرات هم دارند.\r\nمهارت ها و هنرهایی که چه بسا می توانند بیشتر کارآیی داشته باشند.\r\nکافیست به این درک برسیم که دانشگاه رفتن برای کسب سواد اجتماعی و شعور اجتماعی لازم است اما بدون\r\nمدرک دانشگاهی هم می توان زندگی کرد و می توان بسیار هم موفق بود.', 'Vue', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2023-08-06 21:15:54', '2023-08-06 17:45:54', '', 152, 'http://localhost/wordpress/?p=169', 0, 'revision', '', 0),
(178, 1, '2023-08-08 17:39:46', '0000-00-00 00:00:00', 'تست تکنولوژی', 'تست', '', 'draft', 'open', 'open', '', '', '', '', '2023-08-08 17:39:46', '2023-08-08 14:09:46', '', 0, 'http://localhost/wordpress/?p=178', 0, 'post', '', 0),
(180, 1, '2023-08-08 17:41:05', '2023-08-08 14:11:05', 'تست تکنولو ژی', 'تست', '', 'trash', 'open', 'open', '', '%d8%aa%d8%b3%d8%aa__trashed', '', '', '2023-08-08 18:02:46', '2023-08-08 14:32:46', '', 0, 'http://localhost/wordpress/?p=180', 0, 'post', '', 0),
(181, 1, '2023-08-08 17:41:05', '2023-08-08 14:11:05', 'تست تکنولو ژی', 'تست', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2023-08-08 17:41:05', '2023-08-08 14:11:05', '', 180, 'http://localhost/wordpress/?p=181', 0, 'revision', '', 0),
(193, 1, '2023-08-08 19:06:26', '2023-08-08 15:36:26', 'اپل قصد دارد پردازنده‌های M3 پرو و M3 مکس را سال آینده میلادی با فناوری ۳ نانومتری معرفی کند. قبلا شایعاتی درباره یک نسخه ۱۴ هسته‌ای برای M3 مکس وجود داشت اما حالا به نظر می رسد اپل در حال توسعه نسخه قوی‌تر آن با هسته‌های اضافی است.\r\n\r\nاز بین سه تراشه سری M3، پردازنده M3 مکس بیشترین تعداد هسته‌های پردازشی و گرافیکی را خواهد داشت البته تا زمانی که M3 اولترا معرفی نشده باشد. گزارش‌های قبلی به یک نسخه با ۱۴ هسته پردازشی و ۴۰ هسته گرافیکی برای M3 مکس اشاره کرده بودند، حالا بلومبرگ فاش کرده که نسخه دیگری با ۱۶ هسته در حال تست شدن است و احتمالا در مدل‌های آینده مک بوک پرو ۱۴ و ۱۶ اینچی استفاده خواهد شد.\r\n\r\nبا این حال، به نظر می رسد که تعداد هسته‌های گرافیکی M3 مکس، فراتر از ۴۰ هسته نخواهد رفت و ظاهرا فقط یک افزایش اسمی نسبت به ۳۸ هسته گرافیکی M2 مکس خواهد بود. البته اپل برخلاف پردازنده‌های M2 پرو و M2 مکس از فناوری ساخت ۳ نانومتری TSMC در تراشه‌های M3 ،M3 پرو و M3 مکس استفاده خواهد کرد که باعث بهبود عملکرد و کارایی آن‌ها خواهد شد.\r\n\r\nنکته دیگر اینکه نسخه ۱۶ هسته‌ای M3 مکس دارای ۱۲ هسته عملکردی و چهار هسته کم‌مصرف خواهد بود. ظاهرا اپل تست این نسخه را روی یک دستگاه مک‌بوک پرو با شماره مدل J514 و ۴۸ گیگابایت رم انجام داده است. اپل حتی ممکن است سال آینده یک مک‌بوک پرو با ۹۶ گیگابایت رم معرفی کند.\r\n\r\nبه هر حال، انتظار می‌رود که M3 مکس اپل بتواند با پردازنده‌های اینتل و AMD رقابت کند.\r\n\r\n&nbsp;\r\n\r\n[free-video src=\"http://localhost/wordpress/wp-content/uploads/2023/08/bac3b3e78d80c7a1b24c6c10b0a42b9052648422-480p.mp4\"]', 'شایعه: پردازنده M3 مکس اپل دو نسخه با هسته‌های متفاوت خواهد داشت', '', 'publish', 'open', 'open', '', 'apple', '', '', '2023-08-20 13:30:45', '2023-08-20 10:00:45', '', 0, 'http://localhost/wordpress/?post_type=tech&#038;p=193', 0, 'tech', '', 4),
(194, 1, '2023-08-08 19:05:32', '2023-08-08 15:35:32', '', 'Two-M3-Max-Variants-Reportedly-Being-Tested-Will-Have-Varying-Number-Of-CPU-Cores', '', 'inherit', 'open', 'closed', '', 'two-m3-max-variants-reportedly-being-tested-will-have-varying-number-of-cpu-cores', '', '', '2023-08-08 19:05:32', '2023-08-08 15:35:32', '', 193, 'http://localhost/wordpress/wp-content/uploads/2023/08/Two-M3-Max-Variants-Reportedly-Being-Tested-Will-Have-Varying-Number-Of-CPU-Cores.jpg', 0, 'attachment', 'image/jpeg', 0),
(195, 1, '2023-08-08 19:06:26', '2023-08-08 15:36:26', 'اپل قصد دارد پردازنده‌های M3 پرو و M3 مکس را سال آینده میلادی با فناوری ۳ نانومتری معرفی کند. قبلا شایعاتی درباره یک نسخه ۱۴ هسته‌ای برای M3 مکس وجود داشت اما حالا به نظر می رسد اپل در حال توسعه نسخه قوی‌تر آن با هسته‌های اضافی است.\r\n\r\nاز بین سه تراشه سری M3، پردازنده M3 مکس بیشترین تعداد هسته‌های پردازشی و گرافیکی را خواهد داشت البته تا زمانی که M3 اولترا معرفی نشده باشد. گزارش‌های قبلی به یک نسخه با ۱۴ هسته پردازشی و ۴۰ هسته گرافیکی برای M3 مکس اشاره کرده بودند، حالا بلومبرگ فاش کرده که نسخه دیگری با ۱۶ هسته در حال تست شدن است و احتمالا در مدل‌های آینده مک بوک پرو ۱۴ و ۱۶ اینچی استفاده خواهد شد.\r\n\r\nبا این حال، به نظر می رسد که تعداد هسته‌های گرافیکی M3 مکس، فراتر از ۴۰ هسته نخواهد رفت و ظاهرا فقط یک افزایش اسمی نسبت به ۳۸ هسته گرافیکی M2 مکس خواهد بود. البته اپل برخلاف پردازنده‌های M2 پرو و M2 مکس از فناوری ساخت ۳ نانومتری TSMC در تراشه‌های M3 ،M3 پرو و M3 مکس استفاده خواهد کرد که باعث بهبود عملکرد و کارایی آن‌ها خواهد شد.\r\n\r\nنکته دیگر اینکه نسخه ۱۶ هسته‌ای M3 مکس دارای ۱۲ هسته عملکردی و چهار هسته کم‌مصرف خواهد بود. ظاهرا اپل تست این نسخه را روی یک دستگاه مک‌بوک پرو با شماره مدل J514 و ۴۸ گیگابایت رم انجام داده است. اپل حتی ممکن است سال آینده یک مک‌بوک پرو با ۹۶ گیگابایت رم معرفی کند.\r\n\r\nبه هر حال، انتظار می‌رود که M3 مکس اپل بتواند با پردازنده‌های اینتل و AMD رقابت کند.', 'شایعه: پردازنده M3 مکس اپل دو نسخه با هسته‌های متفاوت خواهد داشت', '', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2023-08-08 19:06:26', '2023-08-08 15:36:26', '', 193, 'http://localhost/wordpress/?p=195', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(196, 1, '2023-08-08 19:08:22', '2023-08-08 15:38:22', 'ازاین‌پس برندهایی که خواهان ارائه محصولاتشان در سرویس‌های گوگل هستند باید سیاست جدیدی را که توسط این شرکت اعلام شده است را رعایت کنند. در این راستا گوگل سیاست‌های ارائه اطلاعات نادرست را با اطلاعات دقیق در مورد چگونگی اعتماد بازاریابان به‌روز کرده است. این سند به برندهای مختلف توصیه می‌کند که چه قدم‌ها و مراحلی را باید طی کنند تا از اینکه محصولات و پیشنهادهایشان واجد شرایط ارائه در جست‌وجو باشد مطمئن شوند.\r\n<ul>\r\n 	<li><strong><a title=\"گوگل همچنان به دلیل سیاست‌های جمع‌آوری اطلاعات خود، تحت بررسی قرار دارد\" href=\"https://techfars.com/110801/google-investigated-yet-again-over-its-data-collection-practices/\" target=\"_blank\" rel=\"noopener\">گوگل همچنان به دلیل سیاست‌های جمع‌آوری اطلاعات خود، تحت بررسی قرار دارد</a></strong></li>\r\n</ul>\r\nاین به‌روزرسانی ازآن‌جهت قابل‌اهمیت است که باعث می‌شود از این پس برندها معیارهای خاصی را رعایت کنند که در نتیجه جزئیات این به‌روزرسانی، کسانی که با تعلیق یا هشدار نادرست روبرو شده‌اند بهتر بتوانند این مشکل را حل کنند. همچنین برای اعتمادسازی بیشتر گوگل توضیح می‌دهد که چهار مسئله برای نهادینه‌کردن اعتماد باید در نظر گرفته شود و این چهار مسئله طبق توضیحات خود شرکت گوگل به این صورت است:\r\n<ul>\r\n 	<li><strong>هویت تجاری</strong></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>اطمینان حاصل کنید نام تجاری اعلام شده رسمی باشد و بین نام تجاری ثبت شده و نام دامنه هماهنگی وجود داشته باشد.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>وب‌سایت هر برند باید یک صفحه “درباره ما” داشته باشد. این مسئله باعث کمک بیشتر به مشتریان می‌شود و حس منحصربه فردی به آنها می دهد.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>از وب‌سایت</em> به<em> دیگر پروفایل‌هایی رسانه اجتماعی خود پیوند دهید تا مشتریان در صورت تمایل آنها را دنبال کنند</em>.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>شفافیت</strong></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>اطمینان حاصل کنید که محتوای وب‌سایت و پیام‌ها کاملاً واضح باشد و شامل جزئیات مربوط به حمل‌ونقل، بازگشت هزینه و سیاست‌های حفظ حریم خصوصی است.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>از صداقت و شفافیت در مورد مدل تجاری برند و نحوه عملکرد شرکت اطمینان حاصل کنید.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>شهرت آنلاین</strong></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>نظرات و دیدگاه‌های صادقانه مردم را در مورد محصولات و خدمات یک برند نشان دهید تا به مشتریان در درک نحوه استفاده از آنها کمک کند.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>نحوه ارتباط مشتریان را با خودتان به‌صورت کاملاً واضح نشان دهید.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>طراحی حرفه‌ای</strong></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>اطمینان حاصل کنید که وب‌سایت برند دارای گواهی SSL است تا به مشتریان اطمینان دهد که داده‌های حساس آنها به‌صورت ایمن ذخیره می‌شود.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>وب‌سایت برند باید به‌راحتی قابل پیمایش باشد و نباید حاوی هیچ‌گونه تغییر مسیر غیرضروری به لینک‌های دیگر باشد.</em></li>\r\n</ul>\r\nگوگل همچنین اشاره می‌کند راهکارهای دیگری نیز برای کمک به برندها برای درک سریع‌تر و بهتر تجارتشان وجود دارد که همگی آنها در پروفایل گوگل بیزنس Google Business قابل‌دسترسی خواهد بود.', 'گوگل سیاست‌های ارائه اطلاعات را به‌روزرسانی می‌کند', '', 'publish', 'open', 'open', '', 'google', '', '', '2023-08-18 19:43:20', '2023-08-18 16:13:20', '', 0, 'http://localhost/wordpress/?post_type=tech&#038;p=196', 0, 'tech', '', 1),
(197, 1, '2023-08-08 19:08:10', '2023-08-08 15:38:10', '', 'google-trust-services-root-certificate-authority', '', 'inherit', 'open', 'closed', '', 'google-trust-services-root-certificate-authority', '', '', '2023-08-08 19:08:10', '2023-08-08 15:38:10', '', 196, 'http://localhost/wordpress/wp-content/uploads/2023/08/google-trust-services-root-certificate-authority.png', 0, 'attachment', 'image/png', 0),
(198, 1, '2023-08-08 19:08:22', '2023-08-08 15:38:22', 'ازاین‌پس برندهایی که خواهان ارائه محصولاتشان در سرویس‌های گوگل هستند باید سیاست جدیدی را که توسط این شرکت اعلام شده است را رعایت کنند. در این راستا گوگل سیاست‌های ارائه اطلاعات نادرست را با اطلاعات دقیق در مورد چگونگی اعتماد بازاریابان به‌روز کرده است. این سند به برندهای مختلف توصیه می‌کند که چه قدم‌ها و مراحلی را باید طی کنند تا از اینکه محصولات و پیشنهادهایشان واجد شرایط ارائه در جست‌وجو باشد مطمئن شوند.\r\n<ul>\r\n 	<li><strong><a title=\"گوگل همچنان به دلیل سیاست‌های جمع‌آوری اطلاعات خود، تحت بررسی قرار دارد\" href=\"https://techfars.com/110801/google-investigated-yet-again-over-its-data-collection-practices/\" target=\"_blank\" rel=\"noopener\">گوگل همچنان به دلیل سیاست‌های جمع‌آوری اطلاعات خود، تحت بررسی قرار دارد</a></strong></li>\r\n</ul>\r\nاین به‌روزرسانی ازآن‌جهت قابل‌اهمیت است که باعث می‌شود از این پس برندها معیارهای خاصی را رعایت کنند که در نتیجه جزئیات این به‌روزرسانی، کسانی که با تعلیق یا هشدار نادرست روبرو شده‌اند بهتر بتوانند این مشکل را حل کنند. همچنین برای اعتمادسازی بیشتر گوگل توضیح می‌دهد که چهار مسئله برای نهادینه‌کردن اعتماد باید در نظر گرفته شود و این چهار مسئله طبق توضیحات خود شرکت گوگل به این صورت است:\r\n<ul>\r\n 	<li><strong>هویت تجاری</strong></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>اطمینان حاصل کنید نام تجاری اعلام شده رسمی باشد و بین نام تجاری ثبت شده و نام دامنه هماهنگی وجود داشته باشد.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>وب‌سایت هر برند باید یک صفحه “درباره ما” داشته باشد. این مسئله باعث کمک بیشتر به مشتریان می‌شود و حس منحصربه فردی به آنها می دهد.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>از وب‌سایت</em> به<em> دیگر پروفایل‌هایی رسانه اجتماعی خود پیوند دهید تا مشتریان در صورت تمایل آنها را دنبال کنند</em>.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>شفافیت</strong></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>اطمینان حاصل کنید که محتوای وب‌سایت و پیام‌ها کاملاً واضح باشد و شامل جزئیات مربوط به حمل‌ونقل، بازگشت هزینه و سیاست‌های حفظ حریم خصوصی است.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>از صداقت و شفافیت در مورد مدل تجاری برند و نحوه عملکرد شرکت اطمینان حاصل کنید.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>شهرت آنلاین</strong></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>نظرات و دیدگاه‌های صادقانه مردم را در مورد محصولات و خدمات یک برند نشان دهید تا به مشتریان در درک نحوه استفاده از آنها کمک کند.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>نحوه ارتباط مشتریان را با خودتان به‌صورت کاملاً واضح نشان دهید.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>طراحی حرفه‌ای</strong></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>اطمینان حاصل کنید که وب‌سایت برند دارای گواهی SSL است تا به مشتریان اطمینان دهد که داده‌های حساس آنها به‌صورت ایمن ذخیره می‌شود.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li><em>وب‌سایت برند باید به‌راحتی قابل پیمایش باشد و نباید حاوی هیچ‌گونه تغییر مسیر غیرضروری به لینک‌های دیگر باشد.</em></li>\r\n</ul>\r\nگوگل همچنین اشاره می‌کند راهکارهای دیگری نیز برای کمک به برندها برای درک سریع‌تر و بهتر تجارتشان وجود دارد که همگی آنها در پروفایل گوگل بیزنس Google Business قابل‌دسترسی خواهد بود.', 'گوگل سیاست‌های ارائه اطلاعات را به‌روزرسانی می‌کند', '', 'inherit', 'closed', 'closed', '', '196-revision-v1', '', '', '2023-08-08 19:08:22', '2023-08-08 15:38:22', '', 196, 'http://localhost/wordpress/?p=198', 0, 'revision', '', 0),
(199, 1, '2023-08-08 19:10:20', '2023-08-08 15:40:20', 'اپل در گزارش مالی سه ماهه سوم ۲۰۲۳ اعلام کرد که گوشی‌های آیفون ۳۹.۶۷ میلیارد دلار در طول این سه ماهه درآمد داشته‌اند، اما این رقم در مقایسه با سه ماهه مشابه سال گذشته حدود ۲ درصد کاهش یافته است. اما به نظر می‌رسد که این اتفاق ناشی از یک تغییر بزرگ است؛ تغییری که حتی اپل هم متوجه آن شده است و چاره‌ای جز اعتراف کردن به آن ندارد. بازار گوشی‌های هوشمند آمریکا مدتی است که با افت چسمگیری مواجه شده است و همین موضوع اپا را مجبور کرده تا وابستگی خود را به بزرگترین منبع درآمد خود کاهش دهد.\r\n\r\nبازار گوشی هوشمند آمریکا یکی از بازارهای اصلی اپل برای فروش آیفون است و بیشترین درآمد این شرکت از این کشور حاصل می‌شود. مارک گورمن تحلیلگر بلومبرگ در گزارش جدید خود گفته است که اپل احتمالا تغییراتی در استراتژی خود ایجاد خواهد کرد که شامل بهبود سایر بخش‌های درآمدزا یا گسترش فروش آیفون در بازارهایی غیر از آمریکا خواهد بود. بازار گوشی هوشمند آمریکا حتی می‌تواند چالشی جدی برای سری آیفون ۱۵ باشد.\r\n\r\nآیفون نسل بعدی اپل قرار است بزرگترین به‌روزرسانی گوشی‌های آیفون را در طول سه سال گذشته ارائه کند. اپل قبلا تغییرات مهمی در آیفون ۶ در سال ۲۰۱۴، آیفون X در سال ۲۰۱۷ و آیفون ۱۲ در سال ۲۰۲۰ ایجاد کرده بود و این تغییرات معمولا شامل استفاده از نمایشگرهای بزرگتر و ارائه طراحی‌های به‌روزتر می‌شوند.\r\n\r\nاز طرفی انتظار می‌رود که گوشی‌های آیفون ۱۵ پرو و آیفون ۱۵ پرو مکس افزایش قیمت داشته باشند و گفته می‌شود قیمت آیفون ۱۵ پرو در آمریکا ممکن است از ۱۰۹۹ دلار برای مدل پایه به جای ۹۹۹ دلار شروع شود.\r\n\r\nاپل در گزارش سه ماهه سوم ۲۰۲۳ خود اعلام کرد که کسب و کار خدمات این شرکت درآمدی برابر ۲۱.۲۱ میلیارد دلار داشته است که ۲۶ درصد از کل درآمد ۸۱.۸ میلیارد دلاری این شرکت را تشکیل می‌دهد. تکنولوژی', 'اپل این واقعیت را پذیرفته که بازار گوشی هوشمند آمریکا افت کرده است', '', 'publish', 'open', 'open', '', '%d8%a7%d9%be%d9%84-%d8%a7%db%8c%d9%86-%d9%88%d8%a7%d9%82%d8%b9%db%8c%d8%aa-%d8%b1%d8%a7-%d9%be%d8%b0%db%8c%d8%b1%d9%81%d8%aa%d9%87-%da%a9%d9%87-%d8%a8%d8%a7%d8%b2%d8%a7%d8%b1-%da%af%d9%88%d8%b4%db%8c', '', '', '2023-08-20 13:29:41', '2023-08-20 09:59:41', '', 0, 'http://localhost/wordpress/?post_type=tech&#038;p=199', 0, 'tech', '', 2),
(200, 1, '2023-08-08 19:09:53', '2023-08-08 15:39:53', '', 'apple', '', 'inherit', 'open', 'closed', '', 'apple', '', '', '2023-08-08 19:09:53', '2023-08-08 15:39:53', '', 199, 'http://localhost/wordpress/wp-content/uploads/2023/08/apple.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2023-08-08 19:10:20', '2023-08-08 15:40:20', 'اپل در گزارش مالی سه ماهه سوم ۲۰۲۳ اعلام کرد که گوشی‌های آیفون ۳۹.۶۷ میلیارد دلار در طول این سه ماهه درآمد داشته‌اند، اما این رقم در مقایسه با سه ماهه مشابه سال گذشته حدود ۲ درصد کاهش یافته است. اما به نظر می‌رسد که این اتفاق ناشی از یک تغییر بزرگ است؛ تغییری که حتی اپل هم متوجه آن شده است و چاره‌ای جز اعتراف کردن به آن ندارد. بازار گوشی‌های هوشمند آمریکا مدتی است که با افت چسمگیری مواجه شده است و همین موضوع اپا را مجبور کرده تا وابستگی خود را به بزرگترین منبع درآمد خود کاهش دهد.\r\n\r\nبازار گوشی هوشمند آمریکا یکی از بازارهای اصلی اپل برای فروش آیفون است و بیشترین درآمد این شرکت از این کشور حاصل می‌شود. مارک گورمن تحلیلگر بلومبرگ در گزارش جدید خود گفته است که اپل احتمالا تغییراتی در استراتژی خود ایجاد خواهد کرد که شامل بهبود سایر بخش‌های درآمدزا یا گسترش فروش آیفون در بازارهایی غیر از آمریکا خواهد بود. بازار گوشی هوشمند آمریکا حتی می‌تواند چالشی جدی برای سری آیفون ۱۵ باشد.\r\n\r\nآیفون نسل بعدی اپل قرار است بزرگترین به‌روزرسانی گوشی‌های آیفون را در طول سه سال گذشته ارائه کند. اپل قبلا تغییرات مهمی در آیفون ۶ در سال ۲۰۱۴، آیفون X در سال ۲۰۱۷ و آیفون ۱۲ در سال ۲۰۲۰ ایجاد کرده بود و این تغییرات معمولا شامل استفاده از نمایشگرهای بزرگتر و ارائه طراحی‌های به‌روزتر می‌شوند.\r\n\r\nاز طرفی انتظار می‌رود که گوشی‌های آیفون ۱۵ پرو و آیفون ۱۵ پرو مکس افزایش قیمت داشته باشند و گفته می‌شود قیمت آیفون ۱۵ پرو در آمریکا ممکن است از ۱۰۹۹ دلار برای مدل پایه به جای ۹۹۹ دلار شروع شود.\r\n\r\nاپل در گزارش سه ماهه سوم ۲۰۲۳ خود اعلام کرد که کسب و کار خدمات این شرکت درآمدی برابر ۲۱.۲۱ میلیارد دلار داشته است که ۲۶ درصد از کل درآمد ۸۱.۸ میلیارد دلاری این شرکت را تشکیل می‌دهد.', 'اپل این واقعیت را پذیرفته که بازار گوشی هوشمند آمریکا افت کرده است', '', 'inherit', 'closed', 'closed', '', '199-revision-v1', '', '', '2023-08-08 19:10:20', '2023-08-08 15:40:20', '', 199, 'http://localhost/wordpress/?p=201', 0, 'revision', '', 0),
(204, 1, '2023-08-09 13:21:28', '2023-08-09 09:51:28', '', 'آپدیت', '', 'inherit', 'closed', 'closed', '', '116-autosave-v1', '', '', '2023-08-09 13:21:28', '2023-08-09 09:51:28', '', 116, 'http://localhost/wordpress/?p=204', 0, 'revision', '', 0),
(205, 1, '2023-08-09 13:22:17', '2023-08-09 09:52:17', '', 'تکنولوژِی', '', 'publish', 'closed', 'closed', '', 'technology', '', '', '2023-08-09 15:39:24', '2023-08-09 12:09:24', '', 0, 'http://localhost/wordpress/?page_id=205', 0, 'page', '', 0),
(207, 1, '2023-08-09 13:22:17', '2023-08-09 09:52:17', '', 'تکنولوژی', '', 'inherit', 'closed', 'closed', '', '205-revision-v1', '', '', '2023-08-09 13:22:17', '2023-08-09 09:52:17', '', 205, 'http://localhost/wordpress/?p=207', 0, 'revision', '', 0),
(208, 1, '2023-08-09 14:01:55', '2023-08-09 10:31:55', '', 'آرشیو1', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2023-08-09 14:01:55', '2023-08-09 10:31:55', '', 114, 'http://localhost/wordpress/?p=208', 0, 'revision', '', 0),
(209, 1, '2023-08-09 14:02:51', '2023-08-09 10:32:51', '', 'آرشیو', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2023-08-09 14:02:51', '2023-08-09 10:32:51', '', 114, 'http://localhost/wordpress/?p=209', 0, 'revision', '', 0),
(210, 1, '2023-08-09 14:18:41', '2023-08-09 10:48:41', '', 'technology', '', 'inherit', 'closed', 'closed', '', '205-revision-v1', '', '', '2023-08-09 14:18:41', '2023-08-09 10:48:41', '', 205, 'http://localhost/wordpress/?p=210', 0, 'revision', '', 0),
(211, 1, '2023-08-09 14:47:19', '2023-08-09 11:17:19', '111111', 'technology', '', 'trash', 'open', 'open', '', 'technology__trashed', '', '', '2023-08-09 15:17:48', '2023-08-09 11:47:48', '', 0, 'http://localhost/wordpress/?post_type=tech&#038;p=211', 0, 'tech', '', 0),
(212, 1, '2023-08-09 14:47:19', '2023-08-09 11:17:19', '', 'technology', '', 'inherit', 'closed', 'closed', '', '211-revision-v1', '', '', '2023-08-09 14:47:19', '2023-08-09 11:17:19', '', 211, 'http://localhost/wordpress/?p=212', 0, 'revision', '', 0),
(213, 1, '2023-08-09 14:47:30', '2023-08-09 11:17:30', '111111', 'technology', '', 'inherit', 'closed', 'closed', '', '211-revision-v1', '', '', '2023-08-09 14:47:30', '2023-08-09 11:17:30', '', 211, 'http://localhost/wordpress/?p=213', 0, 'revision', '', 0),
(214, 1, '2023-08-09 15:39:24', '2023-08-09 12:09:24', '', 'تکنولوژِی', '', 'inherit', 'closed', 'closed', '', '205-revision-v1', '', '', '2023-08-09 15:39:24', '2023-08-09 12:09:24', '', 205, 'http://localhost/wordpress/?p=214', 0, 'revision', '', 0),
(215, 1, '2023-08-10 16:32:30', '2023-08-10 13:02:30', 'اپل در گزارش مالی سه ماهه سوم ۲۰۲۳ اعلام کرد که گوشی‌های آیفون ۳۹.۶۷ میلیارد دلار در طول این سه ماهه درآمد داشته‌اند، اما این رقم در مقایسه با سه ماهه مشابه سال گذشته حدود ۲ درصد کاهش یافته است. اما به نظر می‌رسد که این اتفاق ناشی از یک تغییر بزرگ است؛ تغییری که حتی اپل هم متوجه آن شده است و چاره‌ای جز اعتراف کردن به آن ندارد. بازار گوشی‌های هوشمند آمریکا مدتی است که با افت چسمگیری مواجه شده است و همین موضوع اپا را مجبور کرده تا وابستگی خود را به بزرگترین منبع درآمد خود کاهش دهد.\n\nبازار گوشی هوشمند آمریکا یکی از بازارهای اصلی اپل برای فروش آیفون است و بیشترین درآمد این شرکت از این کشور حاصل می‌شود. مارک گورمن تحلیلگر بلومبرگ در گزارش جدید خود گفته است که اپل احتمالا تغییراتی در استراتژی خود ایجاد خواهد کرد که شامل بهبود سایر بخش‌های درآمدزا یا گسترش فروش آیفون در بازارهایی غیر از آمریکا خواهد بود. بازار گوشی هوشمند آمریکا حتی می‌تواند چالشی جدی برای سری آیفون ۱۵ باشد.\n\nآیفون نسل بعدی اپل قرار است بزرگترین به‌روزرسانی گوشی‌های آیفون را در طول سه سال گذشته ارائه کند. اپل قبلا تغییرات مهمی در آیفون ۶ در سال ۲۰۱۴، آیفون X در سال ۲۰۱۷ و آیفون ۱۲ در سال ۲۰۲۰ ایجاد کرده بود و این تغییرات معمولا شامل استفاده از نمایشگرهای بزرگتر و ارائه طراحی‌های به‌روزتر می‌شوند.\n\nاز طرفی انتظار می‌رود که گوشی‌های آیفون ۱۵ پرو و آیفون ۱۵ پرو مکس افزایش قیمت داشته باشند و گفته می‌شود قیمت آیفون ۱۵ پرو در آمریکا ممکن است از ۱۰۹۹ دلار برای مدل پایه به جای ۹۹۹ دلار شروع شود.\n\nاپل در گزارش سه ماهه سوم ۲۰۲۳ خود اعلام کرد که کسب و کار خدمات این شرکت درآمدی برابر ۲۱.۲۱ میلیارد دلار داشته است که ۲۶ درصد از کل درآمد ۸۱.۸ میلیارد دلاری این شرکت را تشکیل می‌دهد. تکنولوژی', 'اپل این واقعیت را پذیرفته که بازار گوشی هوشمند آمریکا افت کرده است', '', 'inherit', 'closed', 'closed', '', '199-autosave-v1', '', '', '2023-08-10 16:32:30', '2023-08-10 13:02:30', '', 199, 'http://localhost/wordpress/?p=215', 0, 'revision', '', 0),
(216, 1, '2023-08-10 11:46:05', '2023-08-10 08:16:05', '', 'macBook', '', 'inherit', 'open', 'closed', '', 'bac3b3e78d80c7a1b24c6c10b0a42b9052648422-480p', '', '', '2023-08-10 11:46:25', '2023-08-10 08:16:25', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/08/bac3b3e78d80c7a1b24c6c10b0a42b9052648422-480p.mp4', 0, 'attachment', 'video/mp4', 0),
(217, 1, '2023-08-10 11:47:16', '2023-08-10 08:17:16', 'اپل قصد دارد پردازنده‌های M3 پرو و M3 مکس را سال آینده میلادی با فناوری ۳ نانومتری معرفی کند. قبلا شایعاتی درباره یک نسخه ۱۴ هسته‌ای برای M3 مکس وجود داشت اما حالا به نظر می رسد اپل در حال توسعه نسخه قوی‌تر آن با هسته‌های اضافی است.\r\n\r\nاز بین سه تراشه سری M3، پردازنده M3 مکس بیشترین تعداد هسته‌های پردازشی و گرافیکی را خواهد داشت البته تا زمانی که M3 اولترا معرفی نشده باشد. گزارش‌های قبلی به یک نسخه با ۱۴ هسته پردازشی و ۴۰ هسته گرافیکی برای M3 مکس اشاره کرده بودند، حالا بلومبرگ فاش کرده که نسخه دیگری با ۱۶ هسته در حال تست شدن است و احتمالا در مدل‌های آینده مک بوک پرو ۱۴ و ۱۶ اینچی استفاده خواهد شد.\r\n\r\nبا این حال، به نظر می رسد که تعداد هسته‌های گرافیکی M3 مکس، فراتر از ۴۰ هسته نخواهد رفت و ظاهرا فقط یک افزایش اسمی نسبت به ۳۸ هسته گرافیکی M2 مکس خواهد بود. البته اپل برخلاف پردازنده‌های M2 پرو و M2 مکس از فناوری ساخت ۳ نانومتری TSMC در تراشه‌های M3 ،M3 پرو و M3 مکس استفاده خواهد کرد که باعث بهبود عملکرد و کارایی آن‌ها خواهد شد.\r\n\r\nنکته دیگر اینکه نسخه ۱۶ هسته‌ای M3 مکس دارای ۱۲ هسته عملکردی و چهار هسته کم‌مصرف خواهد بود. ظاهرا اپل تست این نسخه را روی یک دستگاه مک‌بوک پرو با شماره مدل J514 و ۴۸ گیگابایت رم انجام داده است. اپل حتی ممکن است سال آینده یک مک‌بوک پرو با ۹۶ گیگابایت رم معرفی کند.\r\n\r\nبه هر حال، انتظار می‌رود که M3 مکس اپل بتواند با پردازنده‌های اینتل و AMD رقابت کند.\r\n\r\n&nbsp;\r\n\r\n[free-video src=\"http://localhost/wordpress/wp-content/uploads/2023/08/bac3b3e78d80c7a1b24c6c10b0a42b9052648422-480p.mp4\"]', 'شایعه: پردازنده M3 مکس اپل دو نسخه با هسته‌های متفاوت خواهد داشت', '', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2023-08-10 11:47:16', '2023-08-10 08:17:16', '', 193, 'http://localhost/wordpress/?p=217', 0, 'revision', '', 0),
(218, 1, '2023-08-10 16:32:33', '2023-08-10 13:02:33', 'اپل در گزارش مالی سه ماهه سوم ۲۰۲۳ اعلام کرد که گوشی‌های آیفون ۳۹.۶۷ میلیارد دلار در طول این سه ماهه درآمد داشته‌اند، اما این رقم در مقایسه با سه ماهه مشابه سال گذشته حدود ۲ درصد کاهش یافته است. اما به نظر می‌رسد که این اتفاق ناشی از یک تغییر بزرگ است؛ تغییری که حتی اپل هم متوجه آن شده است و چاره‌ای جز اعتراف کردن به آن ندارد. بازار گوشی‌های هوشمند آمریکا مدتی است که با افت چسمگیری مواجه شده است و همین موضوع اپا را مجبور کرده تا وابستگی خود را به بزرگترین منبع درآمد خود کاهش دهد.\r\n\r\nبازار گوشی هوشمند آمریکا یکی از بازارهای اصلی اپل برای فروش آیفون است و بیشترین درآمد این شرکت از این کشور حاصل می‌شود. مارک گورمن تحلیلگر بلومبرگ در گزارش جدید خود گفته است که اپل احتمالا تغییراتی در استراتژی خود ایجاد خواهد کرد که شامل بهبود سایر بخش‌های درآمدزا یا گسترش فروش آیفون در بازارهایی غیر از آمریکا خواهد بود. بازار گوشی هوشمند آمریکا حتی می‌تواند چالشی جدی برای سری آیفون ۱۵ باشد.\r\n\r\nآیفون نسل بعدی اپل قرار است بزرگترین به‌روزرسانی گوشی‌های آیفون را در طول سه سال گذشته ارائه کند. اپل قبلا تغییرات مهمی در آیفون ۶ در سال ۲۰۱۴، آیفون X در سال ۲۰۱۷ و آیفون ۱۲ در سال ۲۰۲۰ ایجاد کرده بود و این تغییرات معمولا شامل استفاده از نمایشگرهای بزرگتر و ارائه طراحی‌های به‌روزتر می‌شوند.\r\n\r\nاز طرفی انتظار می‌رود که گوشی‌های آیفون ۱۵ پرو و آیفون ۱۵ پرو مکس افزایش قیمت داشته باشند و گفته می‌شود قیمت آیفون ۱۵ پرو در آمریکا ممکن است از ۱۰۹۹ دلار برای مدل پایه به جای ۹۹۹ دلار شروع شود.\r\n\r\nاپل در گزارش سه ماهه سوم ۲۰۲۳ خود اعلام کرد که کسب و کار خدمات این شرکت درآمدی برابر ۲۱.۲۱ میلیارد دلار داشته است که ۲۶ درصد از کل درآمد ۸۱.۸ میلیارد دلاری این شرکت را تشکیل می‌دهد. تکنولوژی', 'اپل این واقعیت را پذیرفته که بازار گوشی هوشمند آمریکا افت کرده است', '', 'inherit', 'closed', 'closed', '', '199-revision-v1', '', '', '2023-08-10 16:32:33', '2023-08-10 13:02:33', '', 199, 'http://localhost/wordpress/?p=218', 0, 'revision', '', 0),
(224, 1, '2023-08-10 18:37:09', '2023-08-10 15:07:09', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-08-10 18:37:09', '2023-08-10 15:07:09', '', 8, 'http://localhost/wordpress/?p=224', 0, 'revision', '', 0),
(237, 1, '2023-08-10 19:38:25', '2023-08-10 16:08:25', '', 'آرشیومطالب', '', 'publish', 'closed', 'closed', '', 'cat_tech', '', '', '2023-08-18 17:39:21', '2023-08-18 14:09:21', '', 0, 'http://localhost/wordpress/?page_id=237', 0, 'page', '', 0),
(238, 1, '2023-08-10 19:38:25', '2023-08-10 16:08:25', '', 'آرشیومطالب', '', 'inherit', 'closed', 'closed', '', '237-revision-v1', '', '', '2023-08-10 19:38:25', '2023-08-10 16:08:25', '', 237, 'http://localhost/wordpress/?p=238', 0, 'revision', '', 0),
(239, 1, '2023-08-10 23:20:02', '2023-08-10 19:50:02', '', 'searchNetwork', '', 'publish', 'closed', 'closed', '', 'searchnetwork', '', '', '2023-08-11 00:40:18', '2023-08-10 21:10:18', '', 0, 'http://localhost/wordpress/?page_id=239', 0, 'page', '', 0),
(240, 1, '2023-08-10 23:20:02', '2023-08-10 19:50:02', '', 'searchNetwork', '', 'inherit', 'closed', 'closed', '', '239-revision-v1', '', '', '2023-08-10 23:20:02', '2023-08-10 19:50:02', '', 239, 'http://localhost/wordpress/?p=240', 0, 'revision', '', 0),
(279, 1, '2023-08-11 18:41:56', '2023-08-11 15:11:56', '[about text=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'mostafa', '', 'publish', 'open', 'closed', '', 'mostafa', '', '', '2023-08-15 14:50:44', '2023-08-15 11:20:44', '', 0, 'http://localhost/wordpress/?post_type=operator&#038;p=279', 0, 'operator', '', 5),
(280, 1, '2023-08-11 18:41:44', '2023-08-11 15:11:44', '', 'Two-M3-Max-Variants-Reportedly-Being-Tested-Will-Have-Varying-Number-Of-CPU-Cores', '', 'inherit', 'open', 'closed', '', 'two-m3-max-variants-reportedly-being-tested-will-have-varying-number-of-cpu-cores-2', '', '', '2023-08-11 18:41:44', '2023-08-11 15:11:44', '', 279, 'http://localhost/wordpress/wp-content/uploads/2023/08/Two-M3-Max-Variants-Reportedly-Being-Tested-Will-Have-Varying-Number-Of-CPU-Cores-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(281, 1, '2023-08-11 18:41:56', '2023-08-11 15:11:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-11 18:41:56', '2023-08-11 15:11:56', '', 279, 'http://localhost/wordpress/?p=281', 0, 'revision', '', 0),
(318, 1, '2023-08-14 14:05:51', '2023-08-14 10:35:51', '', 'searchResults', '', 'publish', 'closed', 'closed', '', 'searchresults', '', '', '2023-08-14 14:05:51', '2023-08-14 10:35:51', '', 0, 'http://localhost/wordpress/?page_id=318', 0, 'page', '', 0),
(319, 1, '2023-08-14 14:05:51', '2023-08-14 10:35:51', '', 'searchResults', '', 'inherit', 'closed', 'closed', '', '318-revision-v1', '', '', '2023-08-14 14:05:51', '2023-08-14 10:35:51', '', 318, 'http://localhost/wordpress/?p=319', 0, 'revision', '', 0),
(323, 1, '2023-08-15 13:33:02', '2023-08-15 10:03:02', '[about text=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\"]\n\n&nbsp;\n\n&nbsp;\n\n[start title = \"mostafa\"]\n[operator name=\"mostafa\" time=\"19/05/2023\" img=\"http://localhost/wordpress/wp-content/uploads/2023/07/t-4.jpg\"]\ndfasdfasdfadsfasdfasdf\n[/operator]\n\n[operator name=\"mostafa\" time=\"19/05/2023\" img=\"http://localhost/wordpress/wp-content/uploads/2023/07/t-4.jpg\"]\ndfasdfasdfadsfasdfasdf\n[/operator]\n\n[end]\n\n&nbsp;', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-autosave-v1', '', '', '2023-08-15 13:33:02', '2023-08-15 10:03:02', '', 279, 'http://localhost/wordpress/?p=323', 0, 'revision', '', 0),
(324, 1, '2023-08-14 21:47:11', '2023-08-14 18:17:11', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-14 21:47:11', '2023-08-14 18:17:11', '', 279, 'http://localhost/wordpress/?p=324', 0, 'revision', '', 0),
(325, 1, '2023-08-14 21:59:32', '2023-08-14 18:29:32', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n&nbsp;\r\n\r\n[\r\n<div>\r\n<pre>endorsements</pre>\r\n</div>\r\n]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-14 21:59:32', '2023-08-14 18:29:32', '', 279, 'http://localhost/wordpress/?p=325', 0, 'revision', '', 0),
(326, 1, '2023-08-14 22:00:16', '2023-08-14 18:30:16', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n&nbsp;\r\n\r\n[<span style=\"font-family: Consolas, Monaco, monospace;\">endorsements</span>]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-14 22:00:16', '2023-08-14 18:30:16', '', 279, 'http://localhost/wordpress/?p=326', 0, 'revision', '', 0),
(327, 1, '2023-08-14 22:01:58', '2023-08-14 18:31:58', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n&nbsp;\r\n\r\n[ endorsements title=\"Endorse mark\"]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-14 22:01:58', '2023-08-14 18:31:58', '', 279, 'http://localhost/wordpress/?p=327', 0, 'revision', '', 0),
(328, 1, '2023-08-14 22:03:43', '2023-08-14 18:33:43', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n&nbsp;\r\n\r\n[endorsements title=\"endorsements\"]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-14 22:03:43', '2023-08-14 18:33:43', '', 279, 'http://localhost/wordpress/?p=328', 0, 'revision', '', 0),
(329, 1, '2023-08-14 22:06:48', '2023-08-14 18:36:48', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[endorsements title=\"endorsements\"] mostafa [/endorsements]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-14 22:06:48', '2023-08-14 18:36:48', '', 279, 'http://localhost/wordpress/?p=329', 0, 'revision', '', 0),
(330, 1, '2023-08-14 22:13:23', '2023-08-14 18:43:23', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[endorsements title=\"endorsements\"] [operator] asdfasdfasdfasdfasdfasdfasd [/operator] [/endorsements]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-14 22:13:23', '2023-08-14 18:43:23', '', 279, 'http://localhost/wordpress/?p=330', 0, 'revision', '', 0),
(331, 1, '2023-08-14 22:14:05', '2023-08-14 18:44:05', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[endorsements title=\"endorsements\"] [operator] asdfasdfasdfasdfasdfasdfasd [/operator] [/endorsements]\r\n\r\n[operator] asdfasdfasdfasdfasdfasdfasd [/operator]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-14 22:14:05', '2023-08-14 18:44:05', '', 279, 'http://localhost/wordpress/?p=331', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(332, 1, '2023-08-14 22:26:52', '2023-08-14 18:56:52', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[operator] asdfasdfasdfasdfasdfasdfasd [/operator]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-14 22:26:52', '2023-08-14 18:56:52', '', 279, 'http://localhost/wordpress/?p=332', 0, 'revision', '', 0),
(333, 1, '2023-08-14 22:27:18', '2023-08-14 18:57:18', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[operator] asdfasdfasdfasdfasdfasdfasd [/operator]\r\n\r\n[operator] asdfasdfasdfasdfasdfasdfasd [/operator]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-14 22:27:18', '2023-08-14 18:57:18', '', 279, 'http://localhost/wordpress/?p=333', 0, 'revision', '', 0),
(334, 1, '2023-08-14 22:35:06', '2023-08-14 19:05:06', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n[start titile = \"mostafa\"]\r\n\r\n[operator]dfasdfasdfadsfasdfasdf[/]\r\n[end]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-14 22:35:06', '2023-08-14 19:05:06', '', 279, 'http://localhost/wordpress/?p=334', 0, 'revision', '', 0),
(335, 1, '2023-08-14 22:37:22', '2023-08-14 19:07:22', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n[start titile = \"mostafa\"]\r\n\r\n[operator name=\"mostafa\"]dfasdfasdfadsfasdfasdf[/operator]\r\n[end]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-14 22:37:22', '2023-08-14 19:07:22', '', 279, 'http://localhost/wordpress/?p=335', 0, 'revision', '', 0),
(336, 1, '2023-08-14 22:38:20', '2023-08-14 19:08:20', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n[start title = \"mostafa\"]\r\n\r\n[operator name=\"mostafa\"]dfasdfasdfadsfasdfasdf[/operator]\r\n[end]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-14 22:38:20', '2023-08-14 19:08:20', '', 279, 'http://localhost/wordpress/?p=336', 0, 'revision', '', 0),
(337, 1, '2023-08-14 22:38:51', '2023-08-14 19:08:51', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n[start title = \"mostafa\"]\r\n\r\n[operator name=\"mostafa\"]dfasdfasdfadsfasdfasdf[/operator]\r\n[operator name=\"mostafa\"]dfasdfasdfadsfasdfasdf[/operator]\r\n\r\n[end]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-14 22:38:51', '2023-08-14 19:08:51', '', 279, 'http://localhost/wordpress/?p=337', 0, 'revision', '', 0),
(338, 1, '2023-08-14 22:51:08', '2023-08-14 19:21:08', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n[start title = \"mostafa\"]\r\n\r\n[operator name=\"mostafa\" time=\"19/05/2023\" img=\"http://localhost/wordpress/wp-content/uploads/2023/07/t-4.jpg\"]dfasdfasdfadsfasdfasdf[/operator]\r\n[operator name=\"mostafa\"]dfasdfasdfadsfasdfasdf[/operator]\r\n\r\n[end]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-14 22:51:08', '2023-08-14 19:21:08', '', 279, 'http://localhost/wordpress/?p=338', 0, 'revision', '', 0),
(339, 1, '2023-08-14 22:59:14', '2023-08-14 19:29:14', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n[start title = \"mostafa\"]\r\n\r\n[operator name=\"mostafa\" time=\"19/05/2023\" img=\"http://localhost/wordpress/wp-content/uploads/2023/07/t-4.jpg\"]\r\n\r\ndfasdfasdfadsfasdfasdf\r\n\r\n[/operator]\r\n\r\n[operator name=\"mostafa\"]dfasdfasdfadsfasdfasdf[/operator]\r\n\r\n[end]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-14 22:59:14', '2023-08-14 19:29:14', '', 279, 'http://localhost/wordpress/?p=339', 0, 'revision', '', 0),
(340, 1, '2023-08-15 13:14:11', '2023-08-15 09:44:11', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n[start title = \"mostafa\"] [operator name=\"mostafa\" time=\"19/05/2023\" img=\"http://localhost/wordpress/wp-content/uploads/2023/07/t-4.jpg\"]dfasdfasdfadsfasdfasdf[/operator] [operator name=\"mostafa\"] dfasdfasdfadsfasdfasdf [/operator] [end]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-15 13:14:11', '2023-08-15 09:44:11', '', 279, 'http://localhost/wordpress/?p=340', 0, 'revision', '', 0),
(341, 1, '2023-08-15 13:17:20', '2023-08-15 09:47:20', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n&nbsp;', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-15 13:17:20', '2023-08-15 09:47:20', '', 279, 'http://localhost/wordpress/?p=341', 0, 'revision', '', 0),
(342, 1, '2023-08-15 13:26:14', '2023-08-15 09:56:14', '[about text=\"\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\r\n\r\n\"]\r\n\r\n[start title = \"mostafa\"]\r\n[operator name=\"mostafa\" time=\"19/05/2023\" img=\"http://localhost/wordpress/wp-content/uploads/2023/07/t-4.jpg\"]\r\ndfasdfasdfadsfasdfasdf\r\n[/operator]\r\n[end]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-15 13:26:14', '2023-08-15 09:56:14', '', 279, 'http://localhost/wordpress/?p=342', 0, 'revision', '', 0),
(343, 1, '2023-08-15 13:28:00', '2023-08-15 09:58:00', '[about text=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[start title = \"mostafa\"]\r\n[operator name=\"mostafa\" time=\"19/05/2023\" img=\"http://localhost/wordpress/wp-content/uploads/2023/07/t-4.jpg\"]\r\ndfasdfasdfadsfasdfasdf\r\n[/operator]\r\n\r\n[operator name=\"mostafa\" time=\"19/05/2023\" img=\"http://localhost/wordpress/wp-content/uploads/2023/07/t-4.jpg\"]\r\ndfasdfasdfadsfasdfasdf\r\n[/operator]\r\n\r\n[end]', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-15 13:28:00', '2023-08-15 09:58:00', '', 279, 'http://localhost/wordpress/?p=343', 0, 'revision', '', 0),
(345, 1, '2023-08-15 14:50:44', '2023-08-15 11:20:44', '[about text=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'mostafa', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2023-08-15 14:50:44', '2023-08-15 11:20:44', '', 279, 'http://localhost/wordpress/?p=345', 0, 'revision', '', 0),
(346, 1, '2023-08-15 17:55:49', '2023-08-15 14:25:49', '[about text=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'ali', '', 'publish', 'open', 'open', '', 'ali', '', '', '2023-08-24 15:50:46', '2023-08-24 12:20:46', '', 0, 'http://localhost/wordpress/?post_type=operator&#038;p=346', 0, 'operator', '', 2),
(347, 1, '2023-08-15 17:55:49', '2023-08-15 14:25:49', '[about text=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'ali', '', 'inherit', 'closed', 'closed', '', '346-revision-v1', '', '', '2023-08-15 17:55:49', '2023-08-15 14:25:49', '', 346, 'http://localhost/wordpress/?p=347', 0, 'revision', '', 0),
(348, 1, '2023-08-15 22:54:09', '2023-08-15 19:24:09', '', 'shortlist', '', 'publish', 'closed', 'closed', '', 'shortlist', '', '', '2023-08-15 22:54:09', '2023-08-15 19:24:09', '', 0, 'http://localhost/wordpress/?page_id=348', 0, 'page', '', 0),
(349, 1, '2023-08-15 22:54:09', '2023-08-15 19:24:09', '', 'shortlist', '', 'inherit', 'closed', 'closed', '', '348-revision-v1', '', '', '2023-08-15 22:54:09', '2023-08-15 19:24:09', '', 348, 'http://localhost/wordpress/?p=349', 0, 'revision', '', 0),
(350, 1, '2023-08-25 19:52:51', '2023-08-16 14:15:34', ' ', '', '', 'publish', 'closed', 'closed', '', '350', '', '', '2023-08-25 19:52:51', '2023-08-25 16:22:51', '', 0, 'http://localhost/wordpress/?p=350', 2, 'nav_menu_item', '', 0),
(351, 1, '2023-08-16 17:45:22', '2023-08-16 14:15:22', '', 'icons8-list-48', '', 'inherit', 'open', 'closed', '', 'icons8-list-48', '', '', '2023-08-16 17:45:22', '2023-08-16 14:15:22', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/08/icons8-list-48.png', 0, 'attachment', 'image/png', 0),
(353, 1, '2023-08-23 19:27:29', '2023-08-23 15:57:29', '', 'searchResults', '', 'publish', 'closed', 'closed', '', 'searchresults-2', '', '', '2023-08-23 19:27:44', '2023-08-23 15:57:44', '', 0, 'http://localhost/wordpress/?page_id=353', 0, 'page', '', 0),
(354, 1, '2023-08-23 19:27:29', '2023-08-23 15:57:29', '', 'searchResults', '', 'inherit', 'closed', 'closed', '', '353-revision-v1', '', '', '2023-08-23 19:27:29', '2023-08-23 15:57:29', '', 353, 'http://localhost/wordpress/?p=354', 0, 'revision', '', 0),
(357, 1, '2023-08-24 16:25:50', '2023-08-24 12:55:50', '', 'list-posts', '', 'publish', 'closed', 'closed', '', 'list-posts', '', '', '2023-08-24 16:27:51', '2023-08-24 12:57:51', '', 0, 'http://localhost/wordpress/?page_id=357', 0, 'page', '', 0),
(358, 1, '2023-08-24 16:25:50', '2023-08-24 12:55:50', '', 'list-posts', '', 'inherit', 'closed', 'closed', '', '357-revision-v1', '', '', '2023-08-24 16:25:50', '2023-08-24 12:55:50', '', 357, 'http://localhost/wordpress/?p=358', 0, 'revision', '', 0),
(359, 1, '2023-08-25 19:01:34', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-08-25 19:01:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=359', 0, 'post', '', 0),
(360, 1, '2023-08-25 19:52:51', '2023-08-25 16:22:51', ' ', '', '', 'publish', 'closed', 'closed', '', '360', '', '', '2023-08-25 19:52:51', '2023-08-25 16:22:51', '', 0, 'http://localhost/wordpress/?p=360', 3, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_product`
--

CREATE TABLE `wp_product` (
  `id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_brand` varchar(255) NOT NULL,
  `p_model` varchar(255) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `p_status` int(1) NOT NULL DEFAULT 0,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wp_product`
--

INSERT INTO `wp_product` (`id`, `p_name`, `p_brand`, `p_model`, `p_price`, `p_status`, `create_at`, `update_at`) VALUES
(11, 'phone', 'samsung', 'A512', '200000', 0, '2023-07-25 15:35:00', '2023-07-25 15:35:00'),
(13, 'phone', 'samsung', '4', '450000', 1, '2023-07-26 12:18:26', '2023-07-26 12:18:26'),
(14, 'phone', 'samsung', '4', '450000', 1, '2023-07-26 12:18:32', '2023-07-26 12:18:32');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'دسته‌بندی نشده', '%d8%af%d8%b3%d8%aa%d9%87%d8%a8%d9%86%d8%af%db%8c-%d9%86%d8%b4%d8%af%d9%87', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'وردپرس', 'wordpress', 0),
(17, 'twentytwentythree', 'twentytwentythree', 0),
(18, 'اکشن', '%d8%a7%da%a9%d8%b4%d9%86', 0),
(19, 'top-menu', 'top-menu', 0),
(20, 'vue', 'vue', 0),
(21, 'front-end', 'front-end', 0),
(22, 'js', 'js', 0),
(23, 'زبان برنامه نویسی', 'program', 0),
(24, 'لاراول', '%d9%84%d8%a7%d8%b1%d8%a7%d9%88%d9%84', 0),
(25, 'php', 'php', 0),
(27, 'اپل', '%d8%a7%d9%be%d9%84', 0),
(28, 'گوگل', '%da%af%d9%88%da%af%d9%84', 0),
(29, 'اپل', '%d8%a7%d9%be%d9%84', 0),
(31, 'گوگل', 'google', 0),
(32, 'اپل', 'apple', 0),
(34, 'گوگل', 'google', 0),
(35, 'technology', 'technology', 0),
(36, 'tech', 'tech', 0),
(37, 'tech', 'tech', 0),
(38, 'tecnologey', 'tecnologey', 0),
(39, 'اپل', 'apple', 0),
(40, 'تکنولوژی', '%d8%aa%da%a9%d9%86%d9%88%d9%84%d9%88%da%98%db%8c', 0),
(41, 'اپل', '%d8%a7%d9%be%d9%84', 0),
(44, 'programer', 'programmer', 0),
(46, 'vue', 'vue', 0),
(47, 'تکنولوژی', 'tech', 0),
(48, 'تکنولوژی', '%d8%aa%da%a9%d9%86%d9%88%d9%84%d9%88%da%98%db%8c', 0),
(49, 'اپل', '%d8%a7%d9%be%d9%84', 0),
(50, 'تکنولوژی', '%d8%aa%da%a9%d9%86%d9%88%d9%84%d9%88%da%98%db%8c', 0),
(51, 'اپل', '%d8%a7%d9%be%d9%84', 0),
(52, 'گوگل', '%da%af%d9%88%da%af%d9%84', 0),
(53, 'گوگل', '%da%af%d9%88%da%af%d9%84', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(13, 2, 0),
(13, 15, 0),
(15, 2, 0),
(15, 15, 0),
(25, 17, 0),
(131, 19, 0),
(143, 23, 0),
(143, 24, 0),
(146, 23, 0),
(146, 25, 0),
(149, 16, 0),
(149, 21, 0),
(149, 23, 0),
(152, 20, 0),
(152, 21, 0),
(152, 22, 0),
(152, 23, 0),
(178, 1, 0),
(180, 1, 0),
(193, 27, 0),
(193, 29, 0),
(193, 32, 0),
(193, 35, 0),
(193, 36, 0),
(193, 47, 0),
(193, 49, 0),
(193, 50, 0),
(193, 51, 0),
(196, 28, 0),
(196, 31, 0),
(196, 34, 0),
(196, 36, 0),
(196, 47, 0),
(196, 50, 0),
(196, 52, 0),
(196, 53, 0),
(199, 27, 0),
(199, 29, 0),
(199, 32, 0),
(199, 35, 0),
(199, 36, 0),
(199, 38, 0),
(199, 39, 0),
(199, 40, 0),
(199, 41, 0),
(199, 47, 0),
(199, 48, 0),
(199, 49, 0),
(199, 50, 0),
(199, 51, 0),
(279, 44, 0),
(279, 46, 0),
(350, 19, 0),
(360, 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 2),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 2),
(16, 16, 'category', '', 0, 1),
(17, 17, 'wp_theme', '', 0, 1),
(18, 18, 'category', '', 0, 0),
(19, 19, 'nav_menu', '', 0, 3),
(20, 20, 'category', '', 23, 1),
(21, 21, 'post_tag', '', 0, 2),
(22, 22, 'post_tag', '', 0, 1),
(23, 23, 'category', '', 0, 4),
(24, 24, 'category', '', 23, 1),
(25, 25, 'category', '', 23, 1),
(27, 27, 'برگه ها', '', 0, 2),
(28, 28, 'برگه ها', '', 0, 1),
(29, 29, 'tech_tag', '', 0, 2),
(31, 31, 'tech_tag', '', 0, 1),
(32, 32, 'tech', '', 36, 2),
(34, 34, 'tech', '', 36, 1),
(35, 35, 'tech_tag', '', 0, 2),
(36, 36, 'tech', '', 0, 3),
(37, 37, 'tech_tag', '', 0, 0),
(38, 38, 'cat_tech', '', 0, 1),
(39, 39, 'cat_tech', '', 38, 1),
(40, 40, 'cat-tech', '', 0, 1),
(41, 41, 'cat-tech', '', 40, 1),
(44, 44, 'category-operators', '', 0, 1),
(46, 46, 'category-operators', '', 44, 1),
(47, 47, 'tech_cat', '', 0, 3),
(48, 48, 'tech-tag', '', 0, 1),
(49, 49, 'tech-tag', '', 0, 2),
(50, 50, 'tech-cat', '', 0, 3),
(51, 51, 'tech-cat', '', 50, 2),
(52, 52, 'tech-cat', '', 50, 1),
(53, 53, 'tech-tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(58, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(102, 1, 'wp_capabilities', '10'),
(103, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&urlbutton=file&mfold=o&hidetb=1&advImgDetails=hide&posts_list_mode=list&editor_plain_text_paste_warning=1'),
(104, 1, 'wp_user-settings-time', '1692989130'),
(149, 11, 'first_name', ''),
(150, 11, 'last_name', ''),
(151, 11, 'description', ''),
(152, 11, 'rich_editing', 'true'),
(153, 11, 'syntax_highlighting', 'true'),
(154, 11, 'comment_shortcuts', 'false'),
(155, 11, 'admin_color', 'fresh'),
(156, 11, 'use_ssl', '0'),
(157, 11, 'show_admin_bar_front', 'true'),
(158, 11, 'locale', ''),
(159, 11, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(160, 11, 'wp_user_level', '0'),
(161, 11, 'dismissed_wp_pointers', ''),
(222, 1, 'nickname', 'mostafank'),
(223, 1, 'first_name', 'مصطفی'),
(224, 1, 'last_name', 'نیاکان'),
(225, 1, 'description', 'مصطفی یک برنامه‌نویس وب است. او در حوزه توسعه وب سایت‌ها، برنامه‌های کاربردی و رابط‌های برنامه‌نویسی (API) فعالیت می‌کند. با توجه به علاقه و اشتیاق قوی او به زبان‌های برنامه‌نویسی و تکنولوژی‌های وب، او توانسته است تجربه و مهارت لازم برای ایجاد و توسعه وب سایت‌ها و برنامه‌های کاربردی را کسب کند.'),
(226, 1, 'rich_editing', 'true'),
(227, 1, 'syntax_highlighting', 'true'),
(228, 1, 'comment_shortcuts', 'false'),
(229, 1, 'admin_color', 'fresh'),
(230, 1, 'use_ssl', '0'),
(231, 1, 'show_admin_bar_front', 'true'),
(232, 1, 'locale', ''),
(233, 1, '_phone', '09035441578'),
(234, 16, 'nickname', 'ali'),
(235, 16, 'first_name', 'مصطفی'),
(236, 16, 'last_name', 'نیاکان'),
(237, 16, 'description', ''),
(238, 16, 'rich_editing', 'true'),
(239, 16, 'syntax_highlighting', 'true'),
(240, 16, 'comment_shortcuts', 'false'),
(241, 16, 'admin_color', 'fresh'),
(242, 16, 'use_ssl', '0'),
(243, 16, 'show_admin_bar_front', 'true'),
(244, 16, 'locale', ''),
(245, 16, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(246, 16, 'wp_user_level', '0'),
(247, 16, 'dismissed_wp_pointers', ''),
(248, 16, '_phone', '09033333'),
(250, 17, 'nickname', 'asdfa'),
(251, 17, 'first_name', ''),
(252, 17, 'last_name', ''),
(253, 17, 'description', ''),
(254, 17, 'rich_editing', 'true'),
(255, 17, 'syntax_highlighting', 'true'),
(256, 17, 'comment_shortcuts', 'false'),
(257, 17, 'admin_color', 'fresh'),
(258, 17, 'use_ssl', '0'),
(259, 17, 'show_admin_bar_front', 'true'),
(260, 17, 'locale', ''),
(261, 17, 'wp_capabilities', 'a:1:{s:3:\"vip\";b:1;}'),
(262, 17, 'wp_user_level', '0'),
(263, 17, 'dismissed_wp_pointers', ''),
(264, 17, '_phone', '222333'),
(265, 18, 'nickname', 'mostafaniaka111n96@gmail.com'),
(266, 18, 'first_name', ''),
(267, 18, 'last_name', ''),
(268, 18, 'description', ''),
(269, 18, 'rich_editing', 'true'),
(270, 18, 'syntax_highlighting', 'true'),
(271, 18, 'comment_shortcuts', 'false'),
(272, 18, 'admin_color', 'fresh'),
(273, 18, 'use_ssl', '0'),
(274, 18, 'show_admin_bar_front', 'true'),
(275, 18, 'locale', ''),
(276, 18, 'wp_capabilities', 'a:1:{s:3:\"vip\";b:1;}'),
(277, 18, 'wp_user_level', '0'),
(278, 18, 'dismissed_wp_pointers', ''),
(279, 18, '_phone', '1234'),
(280, 19, 'nickname', '09035441578'),
(281, 19, 'first_name', ''),
(282, 19, 'last_name', ''),
(283, 19, 'description', ''),
(284, 19, 'rich_editing', 'true'),
(285, 19, 'syntax_highlighting', 'true'),
(286, 19, 'comment_shortcuts', 'false'),
(287, 19, 'admin_color', 'fresh'),
(288, 19, 'use_ssl', '0'),
(289, 19, 'show_admin_bar_front', 'true'),
(290, 19, 'locale', ''),
(291, 19, 'wp_capabilities', 'a:1:{s:3:\"vip\";b:1;}'),
(292, 19, 'wp_user_level', '0'),
(293, 19, 'dismissed_wp_pointers', ''),
(294, 19, '_phone', '111222'),
(295, 20, 'nickname', '11228'),
(296, 20, 'first_name', ''),
(297, 20, 'last_name', ''),
(298, 20, 'description', ''),
(299, 20, 'rich_editing', 'true'),
(300, 20, 'syntax_highlighting', 'true'),
(301, 20, 'comment_shortcuts', 'false'),
(302, 20, 'admin_color', 'fresh'),
(303, 20, 'use_ssl', '0'),
(304, 20, 'show_admin_bar_front', 'true'),
(305, 20, 'locale', ''),
(306, 20, 'wp_capabilities', 'a:1:{s:3:\"vip\";b:1;}'),
(307, 20, 'wp_user_level', '0'),
(308, 20, 'dismissed_wp_pointers', ''),
(309, 20, '_phone', '11228'),
(310, 21, 'nickname', '1122333'),
(311, 21, 'first_name', 'ali'),
(312, 21, 'last_name', 'niakan'),
(313, 21, 'description', ''),
(314, 21, 'rich_editing', 'true'),
(315, 21, 'syntax_highlighting', 'true'),
(316, 21, 'comment_shortcuts', 'false'),
(317, 21, 'admin_color', 'fresh'),
(318, 21, 'use_ssl', '0'),
(319, 21, 'show_admin_bar_front', 'true'),
(320, 21, 'locale', ''),
(321, 21, 'wp_capabilities', 'a:1:{s:3:\"vip\";b:1;}'),
(322, 21, 'wp_user_level', '0'),
(323, 21, 'dismissed_wp_pointers', ''),
(324, 21, '_phone', '1122333'),
(325, 1, 'wp_dashboard_quick_press_last_post_id', '359'),
(326, 1, 'closedpostboxes_vip', 'a:0:{}'),
(327, 1, 'metaboxhidden_vip', 'a:0:{}'),
(328, 1, 'meta-box-order_vip', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:22:\"submitdiv,postimagediv\";s:6:\"normal\";s:46:\"postexcerpt,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(329, 1, 'screen_layout_vip', '2'),
(331, 22, 'nickname', 'jafari'),
(332, 22, 'first_name', ''),
(333, 22, 'last_name', ''),
(334, 22, 'description', ''),
(335, 22, 'rich_editing', 'true'),
(336, 22, 'syntax_highlighting', 'true'),
(337, 22, 'comment_shortcuts', 'false'),
(338, 22, 'admin_color', 'fresh'),
(339, 22, 'use_ssl', '0'),
(340, 22, 'show_admin_bar_front', 'true'),
(341, 22, 'locale', ''),
(342, 22, 'wp_capabilities', 'a:1:{s:3:\"vip\";b:1;}'),
(343, 22, 'wp_user_level', '0'),
(346, 1, 'closedpostboxes_post', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(347, 1, 'metaboxhidden_post', 'a:0:{}'),
(348, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:60:\"dashboard_site_health,dashboard_right_now,dashboard_activity\";s:4:\"side\";s:17:\"dashboard_primary\";s:7:\"column3\";s:21:\"dashboard_quick_press\";s:7:\"column4\";s:0:\"\";}'),
(349, 1, 'meta-box-order_post', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:51:\"submitdiv,categorydiv,tagsdiv-post_tag,postimagediv\";s:6:\"normal\";s:106:\"dwt_level,wpseo_meta,postexcerpt,trackbacksdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv,revisionsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(350, 1, 'screen_layout_post', '2'),
(351, 16, 'wp_dashboard_quick_press_last_post_id', '77'),
(352, 23, 'nickname', 'jafari1'),
(353, 23, 'first_name', ''),
(354, 23, 'last_name', ''),
(355, 23, 'description', ''),
(356, 23, 'rich_editing', 'true'),
(357, 23, 'syntax_highlighting', 'true'),
(358, 23, 'comment_shortcuts', 'false'),
(359, 23, 'admin_color', 'fresh'),
(360, 23, 'use_ssl', '0'),
(361, 23, 'show_admin_bar_front', 'true'),
(362, 23, 'locale', ''),
(363, 23, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(364, 23, 'wp_user_level', '0'),
(366, 27, 'nickname', '444mostafa'),
(367, 27, 'first_name', 'مصطفی'),
(368, 27, 'last_name', 'نیاکان'),
(369, 27, 'description', ''),
(370, 27, 'rich_editing', 'true'),
(371, 27, 'syntax_highlighting', 'true'),
(372, 27, 'comment_shortcuts', 'false'),
(373, 27, 'admin_color', 'fresh'),
(374, 27, 'use_ssl', '0'),
(375, 27, 'show_admin_bar_front', 'true'),
(376, 27, 'locale', ''),
(377, 27, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(378, 27, 'wp_user_level', '0'),
(379, 27, 'dismissed_wp_pointers', ''),
(380, 28, 'nickname', 'mosta1112fa'),
(381, 28, 'first_name', 'مصطفی'),
(382, 28, 'last_name', 'نیاکان'),
(383, 28, 'description', ''),
(384, 28, 'rich_editing', 'true'),
(385, 28, 'syntax_highlighting', 'true'),
(386, 28, 'comment_shortcuts', 'false'),
(387, 28, 'admin_color', 'fresh'),
(388, 28, 'use_ssl', '0'),
(389, 28, 'show_admin_bar_front', 'true'),
(390, 28, 'locale', ''),
(391, 28, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(392, 28, 'wp_user_level', '0'),
(393, 28, 'dismissed_wp_pointers', ''),
(394, 28, 'session_tokens', 'a:1:{s:64:\"c8db4061ec97f98b9773a317294c9ec7e08ba1c2cb56daea6ea0928383e7ca6f\";a:4:{s:10:\"expiration\";i:1691777587;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690567987;}}'),
(405, 29, 'nickname', 'mosta1111fa'),
(406, 29, 'first_name', 'مصطفی'),
(407, 29, 'last_name', 'نیاکان'),
(408, 29, 'description', ''),
(409, 29, 'rich_editing', 'true'),
(410, 29, 'syntax_highlighting', 'true'),
(411, 29, 'comment_shortcuts', 'false'),
(412, 29, 'admin_color', 'fresh'),
(413, 29, 'use_ssl', '0'),
(414, 29, 'show_admin_bar_front', 'true'),
(415, 29, 'locale', ''),
(416, 29, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(417, 29, 'wp_user_level', '0'),
(418, 29, 'dismissed_wp_pointers', ''),
(420, 30, 'nickname', 'moqqqstafa'),
(421, 30, 'first_name', 'مصطفیqqq'),
(422, 30, 'last_name', 'نیاکان'),
(423, 30, 'description', ''),
(424, 30, 'rich_editing', 'true'),
(425, 30, 'syntax_highlighting', 'true'),
(426, 30, 'comment_shortcuts', 'false'),
(427, 30, 'admin_color', 'fresh'),
(428, 30, 'use_ssl', '0'),
(429, 30, 'show_admin_bar_front', 'true'),
(430, 30, 'locale', ''),
(431, 30, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(432, 30, 'wp_user_level', '0'),
(433, 30, 'dismissed_wp_pointers', ''),
(435, 31, 'nickname', 'mosssstafa'),
(436, 31, 'first_name', 'مصطssفی'),
(437, 31, 'last_name', 'نیاکانs'),
(438, 31, 'description', ''),
(439, 31, 'rich_editing', 'true'),
(440, 31, 'syntax_highlighting', 'true'),
(441, 31, 'comment_shortcuts', 'false'),
(442, 31, 'admin_color', 'fresh'),
(443, 31, 'use_ssl', '0'),
(444, 31, 'show_admin_bar_front', 'true'),
(445, 31, 'locale', ''),
(446, 31, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(447, 31, 'wp_user_level', '0'),
(448, 31, 'dismissed_wp_pointers', ''),
(449, 32, 'nickname', 'mostafaa'),
(450, 32, 'first_name', 'مصطفیaa'),
(451, 32, 'last_name', 'نیاکانa'),
(452, 32, 'description', ''),
(453, 32, 'rich_editing', 'true'),
(454, 32, 'syntax_highlighting', 'true'),
(455, 32, 'comment_shortcuts', 'false'),
(456, 32, 'admin_color', 'fresh'),
(457, 32, 'use_ssl', '0'),
(458, 32, 'show_admin_bar_front', 'true'),
(459, 32, 'locale', ''),
(460, 32, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(461, 32, 'wp_user_level', '0'),
(462, 32, 'dismissed_wp_pointers', ''),
(463, 32, 'session_tokens', 'a:1:{s:64:\"4e9674e0ffe164d7cde7e1d6e00c50f7da8bd8885bdad08ea9fc859ef08e732c\";a:4:{s:10:\"expiration\";i:1691780040;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690570440;}}'),
(464, 33, 'nickname', 'mostafank'),
(465, 33, 'first_name', 'مصطفی'),
(466, 33, 'last_name', 'نیاکان'),
(467, 33, 'description', ''),
(468, 33, 'rich_editing', 'true'),
(469, 33, 'syntax_highlighting', 'true'),
(470, 33, 'comment_shortcuts', 'false'),
(471, 33, 'admin_color', 'fresh'),
(472, 33, 'use_ssl', '0'),
(473, 33, 'show_admin_bar_front', 'true'),
(474, 33, 'locale', ''),
(475, 33, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(476, 33, 'wp_user_level', '0'),
(477, 33, 'dismissed_wp_pointers', ''),
(478, 33, 'session_tokens', 'a:10:{s:64:\"a02a76146ddc2e9fa9c7cb5723f0e288d30a35c60693ab0d6401e11d64251892\";a:4:{s:10:\"expiration\";i:1691780699;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690571099;}s:64:\"c66f77b62aef91b57259ad32e290bb7d1a9679b4f1e51b276f629703cdd466a2\";a:4:{s:10:\"expiration\";i:1691781236;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690571636;}s:64:\"bb00fb8ec57b6ec932381f8cb90e858546c2a2bf97c42837244b5aa93c145455\";a:4:{s:10:\"expiration\";i:1691781849;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690572249;}s:64:\"382fe77cfc0c9c1b13699a7a6ec88d0f0136551ce4868f459ba639755f1b7bc3\";a:4:{s:10:\"expiration\";i:1691781899;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690572299;}s:64:\"6fb9cfff554e624b952aeb5a7be457a9b883d294b75be371fbc895f4ca04ed7c\";a:4:{s:10:\"expiration\";i:1691781951;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690572351;}s:64:\"7c3148db8d25cc4f1a3016eed6ab9d5e1a154dbc442de0b2f3979b4227ac9697\";a:4:{s:10:\"expiration\";i:1691782009;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690572409;}s:64:\"88a04b92a0716519967e0fb2dda0ddad757e26aa585c2bb252128ebcf0ebc6ed\";a:4:{s:10:\"expiration\";i:1691782033;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690572433;}s:64:\"93de56503e1a47c19b5ce91463bddbdf424000300f9e7edb0345e58ae8d7906c\";a:4:{s:10:\"expiration\";i:1691782090;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690572490;}s:64:\"e9f0278136bbf222b1f533e73c98e3c95c462babd44b4f8a4c374cbb6f43049c\";a:4:{s:10:\"expiration\";i:1691782161;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690572561;}s:64:\"db4ebda3dab373b526e722042c0f4bf1ec9e5a6c6af92eb35d33616ee088ad4f\";a:4:{s:10:\"expiration\";i:1691783389;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690573789;}}'),
(479, 34, 'nickname', 'moaaastafa'),
(480, 34, 'first_name', 'مصطفaی'),
(481, 34, 'last_name', 'نیاکaان'),
(482, 34, 'description', ''),
(483, 34, 'rich_editing', 'true'),
(484, 34, 'syntax_highlighting', 'true'),
(485, 34, 'comment_shortcuts', 'false'),
(486, 34, 'admin_color', 'fresh'),
(487, 34, 'use_ssl', '0'),
(488, 34, 'show_admin_bar_front', 'true'),
(489, 34, 'locale', ''),
(490, 34, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(491, 34, 'wp_user_level', '0'),
(492, 34, 'dismissed_wp_pointers', ''),
(493, 34, 'session_tokens', 'a:1:{s:64:\"80a0936255f004bc46752bf7d6b8ee67c80398ac8c2713dd63f7e8c6dd97b811\";a:4:{s:10:\"expiration\";i:1691784074;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690574474;}}'),
(494, 35, 'nickname', '99mostafa'),
(495, 35, 'first_name', 'مصطفی'),
(496, 35, 'last_name', 'نیاکان'),
(497, 35, 'description', ''),
(498, 35, 'rich_editing', 'true'),
(499, 35, 'syntax_highlighting', 'true'),
(500, 35, 'comment_shortcuts', 'false'),
(501, 35, 'admin_color', 'fresh'),
(502, 35, 'use_ssl', '0'),
(503, 35, 'show_admin_bar_front', 'true'),
(504, 35, 'locale', ''),
(505, 35, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(506, 35, 'wp_user_level', '0'),
(507, 35, 'dismissed_wp_pointers', ''),
(508, 35, 'session_tokens', 'a:1:{s:64:\"e9a3da018870e65fbe716a0bc964750e0a1acfc7ad4ae0278777ea32773f5674\";a:4:{s:10:\"expiration\";i:1691784142;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690574542;}}'),
(509, 36, 'nickname', 'mossssssstafa'),
(510, 36, 'first_name', 'مصطفی'),
(511, 36, 'last_name', 'نیاکان'),
(512, 36, 'description', ''),
(513, 36, 'rich_editing', 'true'),
(514, 36, 'syntax_highlighting', 'true'),
(515, 36, 'comment_shortcuts', 'false'),
(516, 36, 'admin_color', 'fresh'),
(517, 36, 'use_ssl', '0'),
(518, 36, 'show_admin_bar_front', 'true'),
(519, 36, 'locale', ''),
(520, 36, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(521, 36, 'wp_user_level', '0'),
(522, 36, 'dismissed_wp_pointers', ''),
(523, 36, 'session_tokens', 'a:1:{s:64:\"1b790b4b105077452157da0aa5bdc28f9b118d6133673d04b90974bd08e71055\";a:4:{s:10:\"expiration\";i:1691785456;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690575856;}}'),
(524, 37, 'nickname', 'mostaaafa'),
(525, 37, 'first_name', 'مصطaفی'),
(526, 37, 'last_name', 'نیاکانa'),
(527, 37, 'description', ''),
(528, 37, 'rich_editing', 'true'),
(529, 37, 'syntax_highlighting', 'true'),
(530, 37, 'comment_shortcuts', 'false'),
(531, 37, 'admin_color', 'fresh'),
(532, 37, 'use_ssl', '0'),
(533, 37, 'show_admin_bar_front', 'true'),
(534, 37, 'locale', ''),
(535, 37, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(536, 37, 'wp_user_level', '0'),
(537, 37, 'dismissed_wp_pointers', ''),
(538, 37, 'session_tokens', 'a:1:{s:64:\"9e0b2d59b6282f5f71861aa7976dc1b67bd19b0de549f5b94ed60ee8034b96bd\";a:4:{s:10:\"expiration\";i:1691785499;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690575899;}}'),
(539, 38, 'nickname', 'mostafas'),
(540, 38, 'first_name', 'مصطفیs'),
(541, 38, 'last_name', 'نیاکانs'),
(542, 38, 'description', ''),
(543, 38, 'rich_editing', 'true'),
(544, 38, 'syntax_highlighting', 'true'),
(545, 38, 'comment_shortcuts', 'false'),
(546, 38, 'admin_color', 'fresh'),
(547, 38, 'use_ssl', '0'),
(548, 38, 'show_admin_bar_front', 'true'),
(549, 38, 'locale', ''),
(550, 38, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(551, 38, 'wp_user_level', '0'),
(552, 38, 'dismissed_wp_pointers', ''),
(553, 38, 'session_tokens', 'a:1:{s:64:\"a99fa538899d0e55f04690ff98eb3f7753cc161c111abeb461e579b6673b824e\";a:4:{s:10:\"expiration\";i:1691785556;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690575956;}}'),
(554, 39, 'nickname', 'mostafas'),
(555, 39, 'first_name', 'مصطفیs'),
(556, 39, 'last_name', 'نیاکانs'),
(557, 39, 'description', ''),
(558, 39, 'rich_editing', 'true'),
(559, 39, 'syntax_highlighting', 'true'),
(560, 39, 'comment_shortcuts', 'false'),
(561, 39, 'admin_color', 'fresh'),
(562, 39, 'use_ssl', '0'),
(563, 39, 'show_admin_bar_front', 'true'),
(564, 39, 'locale', ''),
(565, 39, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(566, 39, 'wp_user_level', '0'),
(567, 39, 'dismissed_wp_pointers', ''),
(568, 39, 'session_tokens', 'a:1:{s:64:\"374564d6c9f2deb1e736fc7c786b196359709b3db9ffd32201b9531fe3ee2ed0\";a:4:{s:10:\"expiration\";i:1691785663;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690576063;}}'),
(569, 40, 'nickname', 'mostafas'),
(570, 40, 'first_name', 'مصطفیs'),
(571, 40, 'last_name', 'نیاکانs'),
(572, 40, 'description', ''),
(573, 40, 'rich_editing', 'true'),
(574, 40, 'syntax_highlighting', 'true'),
(575, 40, 'comment_shortcuts', 'false'),
(576, 40, 'admin_color', 'fresh'),
(577, 40, 'use_ssl', '0'),
(578, 40, 'show_admin_bar_front', 'true'),
(579, 40, 'locale', ''),
(580, 40, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(581, 40, 'wp_user_level', '0'),
(582, 40, 'dismissed_wp_pointers', ''),
(583, 40, 'session_tokens', 'a:1:{s:64:\"fe2ee04c75709706928ffcd4e6e68e387723743ce032f82e846dddb2afa48e6a\";a:4:{s:10:\"expiration\";i:1691785691;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690576091;}}'),
(584, 41, 'nickname', 'mostafas'),
(585, 41, 'first_name', 'مصطفیs'),
(586, 41, 'last_name', 'نیاکانs'),
(587, 41, 'description', ''),
(588, 41, 'rich_editing', 'true'),
(589, 41, 'syntax_highlighting', 'true'),
(590, 41, 'comment_shortcuts', 'false'),
(591, 41, 'admin_color', 'fresh'),
(592, 41, 'use_ssl', '0'),
(593, 41, 'show_admin_bar_front', 'true'),
(594, 41, 'locale', ''),
(595, 41, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(596, 41, 'wp_user_level', '0'),
(597, 41, 'dismissed_wp_pointers', ''),
(598, 41, 'session_tokens', 'a:1:{s:64:\"ffe1262634034f01718b70e6e5ea48a6aa69597c94a3f880d8c6bd4be1da674b\";a:4:{s:10:\"expiration\";i:1691830634;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690621034;}}'),
(599, 42, 'nickname', 'mostafas'),
(600, 42, 'first_name', 'مصطفیs'),
(601, 42, 'last_name', 'نیاکانs'),
(602, 42, 'description', ''),
(603, 42, 'rich_editing', 'true'),
(604, 42, 'syntax_highlighting', 'true'),
(605, 42, 'comment_shortcuts', 'false'),
(606, 42, 'admin_color', 'fresh'),
(607, 42, 'use_ssl', '0'),
(608, 42, 'show_admin_bar_front', 'true'),
(609, 42, 'locale', ''),
(610, 42, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(611, 42, 'wp_user_level', '0'),
(612, 42, 'dismissed_wp_pointers', ''),
(613, 42, 'session_tokens', 'a:1:{s:64:\"35f850c897c4b022f8d71437267ae6df033ea2da88282e9046cb2f778c80d46c\";a:4:{s:10:\"expiration\";i:1691830711;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1690621111;}}'),
(616, 43, 'nickname', 'mostafank96'),
(617, 43, 'first_name', 'mostafa'),
(618, 43, 'last_name', 'niakan'),
(619, 43, 'description', ''),
(620, 43, 'rich_editing', 'true'),
(621, 43, 'syntax_highlighting', 'true'),
(622, 43, 'comment_shortcuts', 'false'),
(623, 43, 'admin_color', 'fresh'),
(624, 43, 'use_ssl', '0'),
(625, 43, 'show_admin_bar_front', 'true'),
(626, 43, 'locale', ''),
(627, 43, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(628, 43, 'wp_user_level', '0'),
(629, 43, 'dismissed_wp_pointers', ''),
(630, 43, 'session_tokens', 'a:1:{s:64:\"19078a7077c1f7605c58647abccdbeda56689dc8d2ff906b1a174d295b2839f5\";a:4:{s:10:\"expiration\";i:1691929854;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0\";s:5:\"login\";i:1690720254;}}'),
(631, 1, 'closedpostboxes_page', 'a:0:{}'),
(632, 1, 'metaboxhidden_page', 'a:0:{}'),
(633, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(634, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(635, 1, 'nav_menu_recently_edited', '19'),
(636, 1, 'wp_persisted_preferences', 'a:2:{s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:0;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-08-03T17:20:02.731Z\";}'),
(644, 16, '_yoast_wpseo_profile_updated', '1691496553'),
(645, 16, 'wpseo_title', ''),
(646, 16, 'wpseo_metadesc', ''),
(647, 16, 'wpseo_noindex_author', ''),
(648, 16, 'wpseo_content_analysis_disable', ''),
(649, 16, 'wpseo_keyword_analysis_disable', ''),
(650, 16, 'wpseo_inclusive_language_analysis_disable', ''),
(651, 16, 'facebook', ''),
(652, 16, 'instagram', ''),
(653, 16, 'linkedin', ''),
(654, 16, 'myspace', ''),
(655, 16, 'pinterest', ''),
(656, 16, 'soundcloud', ''),
(657, 16, 'tumblr', ''),
(658, 16, 'twitter', ''),
(659, 16, 'youtube', ''),
(660, 16, 'wikipedia', ''),
(661, 16, 'session_tokens', 'a:1:{s:64:\"2ae3340678c44f4dd7b150f255d68031105fe0220cd00f56c43e8ee558e9ad5d\";a:4:{s:10:\"expiration\";i:1691669363;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0\";s:5:\"login\";i:1691496563;}}'),
(662, 1, '_yoast_wpseo_profile_updated', '1692988039'),
(663, 1, 'wpseo_title', ''),
(664, 1, 'wpseo_metadesc', ''),
(665, 1, 'wpseo_noindex_author', ''),
(666, 1, 'wpseo_content_analysis_disable', ''),
(667, 1, 'wpseo_keyword_analysis_disable', ''),
(668, 1, 'wpseo_inclusive_language_analysis_disable', ''),
(669, 1, 'facebook', 'asdfasdfasd'),
(670, 1, 'instagram', 'fasdf'),
(671, 1, 'linkedin', 'asdf'),
(672, 1, 'myspace', 'asdf'),
(673, 1, 'pinterest', 'asdf'),
(674, 1, 'soundcloud', 'f'),
(675, 1, 'tumblr', ''),
(676, 1, 'twitter', ''),
(677, 1, 'youtube', ''),
(678, 1, 'wikipedia', ''),
(680, 1, 'closedpostboxes_tech', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(681, 1, 'metaboxhidden_tech', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(682, 1, 'meta-box-order_tech', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:65:\"submitdiv,tech_catdiv,tagsdiv-tech_tag,pageparentdiv,postimagediv\";s:6:\"normal\";s:106:\"dwt_level,wpseo_meta,postexcerpt,trackbacksdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv,revisionsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(683, 1, 'screen_layout_tech', '2'),
(686, 19, '_yoast_wpseo_profile_updated', '1692988039'),
(687, 21, '_yoast_wpseo_profile_updated', '1692988039'),
(688, 20, '_yoast_wpseo_profile_updated', '1692988039'),
(689, 17, '_yoast_wpseo_profile_updated', '1692988039'),
(690, 22, '_yoast_wpseo_profile_updated', '1692988039'),
(691, 18, '_yoast_wpseo_profile_updated', '1692988039'),
(692, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:67:\"wpseo_meta,commentstatusdiv,commentsdiv,slugdiv,authordiv,dwt_level\";s:8:\"advanced\";s:0:\"\";}'),
(693, 1, 'screen_layout_page', '2'),
(694, 1, 'closedpostboxes_custom-page', 'a:0:{}'),
(695, 1, 'metaboxhidden_custom-page', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(697, 1, 'closedpostboxes_operator', 'a:0:{}'),
(698, 1, 'metaboxhidden_operator', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(699, 1, 'meta-box-order_operator', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:127:\"submitdiv,category-operatorsdiv,tagsdiv-operator_tag,otn_experience,otn_sector,otn_operators,postimagediv,pageparentdiv,slugdiv\";s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:49:\"wpseo_meta,postexcerpt,authordiv,commentstatusdiv\";}'),
(700, 1, 'screen_layout_operator', '2'),
(739, 1, 'session_tokens', 'a:2:{s:64:\"aab70669e3ea5543e7847aea8a45c293812a0faabb9338b4c62b719472c4aae2\";a:4:{s:10:\"expiration\";i:1693147051;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36\";s:5:\"login\";i:1692974251;}s:64:\"5924b9d9a60e49f74c8a99fc964538d46d627c478ee8dec23633cb9630b1a1a6\";a:4:{s:10:\"expiration\";i:1693150292;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36\";s:5:\"login\";i:1692977492;}}'),
(747, 23, '_yoast_wpseo_profile_updated', '1692612756'),
(748, 23, 'wpseo_title', ''),
(749, 23, 'wpseo_metadesc', ''),
(750, 23, 'wpseo_noindex_author', ''),
(751, 23, 'wpseo_content_analysis_disable', ''),
(752, 23, 'wpseo_keyword_analysis_disable', ''),
(753, 23, 'wpseo_inclusive_language_analysis_disable', ''),
(754, 23, '_dwt_vocation', 'برنامه نویس'),
(755, 23, 'facebook', ''),
(756, 23, 'instagram', ''),
(757, 23, 'linkedin', ''),
(758, 23, 'myspace', ''),
(759, 23, 'pinterest', ''),
(760, 23, 'soundcloud', ''),
(761, 23, 'tumblr', ''),
(762, 23, 'twitter', ''),
(763, 23, 'youtube', ''),
(764, 23, 'wikipedia', ''),
(765, 1, '_dwt_vocation', 'برنامه نویس'),
(771, 1, 'wp_yoast_notifications', 'a:3:{i:0;a:2:{s:7:\"message\";s:200:\"You&#039;ve added a new type of content. We recommend that you review the corresponding <a href=\"http://localhost/wordpress/wp-admin/admin.php?page=wpseo_page_settings\">Search appearance settings</a>.\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:25:\"content-types-made-public\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:7:\"mostafa\";s:9:\"user_pass\";s:34:\"$P$BR/T3ruTQoRw8d.ZCEM6C4EhD.Aix31\";s:13:\"user_nicename\";s:7:\"mostafa\";s:10:\"user_email\";s:25:\"mostafaniakan96@gmail.com\";s:8:\"user_url\";s:43:\"https://www.youtube.com/watch?v=Iry8fAYMD48\";s:15:\"user_registered\";s:19:\"2023-07-15 17:22:52\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"1\";s:12:\"display_name\";s:23:\"مصطفی نیاکان\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:118:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:13:\"view_vip_post\";b:1;s:14:\"view_book_post\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:432:\"<p>به دلیل تغییر در ساختار پیوند ثابت شما ، برخی از داده های سئو شما نیاز به پردازش مجدد دارند</p><p>پیش بینی می کنیم این کار در کمتر از چند دقیقه انجام شود</p><a class=\"button\" href=\"http://localhost/wordpress/wp-admin/admin.php?page=wpseo_tools&start-indexation=true\">شروع بهینه سازی اطلاعات</a>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:7:\"mostafa\";s:9:\"user_pass\";s:34:\"$P$BR/T3ruTQoRw8d.ZCEM6C4EhD.Aix31\";s:13:\"user_nicename\";s:7:\"mostafa\";s:10:\"user_email\";s:25:\"mostafaniakan96@gmail.com\";s:8:\"user_url\";s:43:\"https://www.youtube.com/watch?v=Iry8fAYMD48\";s:15:\"user_registered\";s:19:\"2023-07-15 17:22:52\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"1\";s:12:\"display_name\";s:23:\"مصطفی نیاکان\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:118:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:13:\"view_vip_post\";b:1;s:14:\"view_book_post\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:613:\"به نظر می‌رسد از افزونه <strong>Yoast WooCommerce SEO</strong> ما استفاده نمی‌کنید. <a href=\"https://yoa.st/1o0?php_version=8.0&platform=wordpress&platform_version=6.3&software=free&software_version=20.12&days_active=20&user_language=fa_IR\" aria-label=\"اطلاعات بیشتر درباره Yoast WooCommerce SEO\" target=\"_blank\" rel=\"noopener noreferrer\">امروز </a> را ارتقا دهید تا قفل ابزارها و ویژگی‌های سئو بیشتر را باز کنید تا محصولات خود را در نتایج جستجو بهتر نمایش دهید.\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:44:\"wpseo-suggested-plugin-yoast-woocommerce-seo\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:7:\"mostafa\";s:9:\"user_pass\";s:34:\"$P$BR/T3ruTQoRw8d.ZCEM6C4EhD.Aix31\";s:13:\"user_nicename\";s:7:\"mostafa\";s:10:\"user_email\";s:25:\"mostafaniakan96@gmail.com\";s:8:\"user_url\";s:43:\"https://www.youtube.com/watch?v=Iry8fAYMD48\";s:15:\"user_registered\";s:19:\"2023-07-15 17:22:52\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"1\";s:12:\"display_name\";s:23:\"مصطفی نیاکان\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:118:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:13:\"view_vip_post\";b:1;s:14:\"view_book_post\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:15:\"install_plugins\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'mostafa', '$P$BR/T3ruTQoRw8d.ZCEM6C4EhD.Aix31', 'mostafa', 'mostafaniakan96@gmail.com', 'https://www.youtube.com/watch?v=Iry8fAYMD48', '2023-07-15 17:22:52', '', 1, 'مصطفی نیاکان'),
(16, 'ali', '$P$BDkBodvAlmoCQ32Jnok9Bi6bCYdq/M.', 'ali', 'mostafaniakan196@gmail.com', '', '2023-07-15 17:22:52', '', 0, 'ali'),
(17, 'asdfa', '$P$Bt/10KWWwut/o4fuZBumbNHs3bdsun0', 'asdfa', 'mostafaniakafn96@gmail.com', '', '2023-07-16 16:06:45', '', 0, 'asdfa'),
(18, 'mostafaniaka111n96@gmail.com', '$P$BXjy49ISnrrnRqo3eEaZt5q9MpbAkJ1', 'mostafaniaka111n96gmail-com', 'mostafaniaka11111n96@gmail.com', '', '2023-07-16 16:08:36', '', 0, 'mostafaniaka111n96@gmail.com'),
(19, '09035441578', '$P$B20c9vVYBi3KUttvjTZqn2ir2ep3J3.', '09035441578', 'mostafaniakan9611@gmail.com', '', '2023-07-16 16:25:38', '', 0, '09035441578'),
(20, '11228', '$P$ByBhnhcI0vdykkSdZadmyCv.nF9cPF.', '11228', 'mostafaniakan1111196@gmail.com', '', '2023-07-16 18:07:10', '', 0, '11228'),
(21, '1122333', '$P$BFh3pSDIX5fjoW/DjKJggg207IiCoV0', '1122333', 'mostafaniaka11211n96@gmail.com', '', '2023-07-16 18:08:25', '', 0, '1122333'),
(22, 'jafari', '$P$Bl.MLUn742Y0h0.3B04wbODiYKKli50', 'jafari', 'jefre@gmail.com', '', '2023-07-22 09:46:20', '', 0, 'jafari'),
(23, 'jafari1', '$P$BspGeCG0.T6E4N2V3SG/4shOEF3fie1', 'jafari1', 'jefre@gmail1.com', '', '2023-07-27 17:30:30', '', 0, 'jafari1'),
(24, 'mostafa1', '827ccb0eea8a706c4c34a16891f84e7b', 'mostafa1', 'mostafahhh@gmail.com', '', '0000-00-00 00:00:00', '', 0, ''),
(25, 'mostafa1', '827ccb0eea8a706c4c34a16891f84e7b', 'mostafa1', 'mostafa1@gmail.com', '', '0000-00-00 00:00:00', '', 0, ''),
(26, 'mostafa1', 'c491c2704636a1cc79e994366a187970', 'mostafa1', 'mostafa1@gmail.com', '', '2023-06-27 22:01:16', '', 0, ''),
(42, 'mostafas', '$P$B1k3iRlpL8vkkkLwK4/t51dMhOxeMj1', 'mostafas', 'mostafaniakan9s6@gmail.com', '', '2023-07-29 08:58:31', '', 0, 'مصطفیs نیاکانs'),
(43, 'mostafank96', '$P$BDuD4WzsdfWompYq2R32FJkW0wpugX.', 'mostafank96', 'mostafa1396@gmail.com', '', '2023-07-30 12:30:53', '', 0, 'mostafa niakan');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `locale` varchar(20) NOT NULL,
  `title` longtext NOT NULL,
  `content` longtext NOT NULL,
  `content_data` longtext DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `source` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) NOT NULL DEFAULT '',
  `image` varchar(200) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `is_read`, `icon`) VALUES
(1, 'wc-refund-returns-page', 'info', 'en_US', 'Setup a Refund and Returns Policy page to boost your store\'s credibility.', 'We have created a sample draft Refund and Returns Policy page for you. Please have a look and update it to fit your store.', '{}', 'unactioned', 'woocommerce-core', '2023-07-06 06:03:45', NULL, 0, 'plain', '', 0, 1, 'info'),
(2, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2023-07-06 06:03:45', NULL, 0, 'plain', '', 0, 1, 'info'),
(3, 'wc-admin-install-jp-and-wcs-plugins', 'info', 'en_US', 'اوه اوه ... هنگام نصب سرویس های Jetpack و WooCommerce مشکلی روی داد. لطفا دوباره تلاش کنید.', 'ما متوجه شدیم که در هنگام نصب سرویس های Jetpack و WooCommerce مشکلی ایجاد شده است. لطفاً دوباره امتحان کنید و از تمام مزایای اتصال پلاگین ها به فروشگاه خود لذت ببرید! بابت این اتفاق متاسفیم. افزونه های \"Jetpack\" و \"WooCommerce Services\" به صورت رایگان نصب و فعال می شوند.', '{}', 'unactioned', 'woocommerce-admin', '2023-07-06 06:26:26', NULL, 0, 'plain', '', 0, 1, 'info'),
(4, 'wc-admin-choosing-a-theme', 'marketing', 'en_US', 'یک پوسته انتخاب میکنید؟', 'پوسته‌های سازگار با ووکامرس را بررسی کنید و یکی را انتخاب کنید که مطابق با نیازهای برند و تجارت شما باشد.', '{}', 'unactioned', 'woocommerce-admin', '2023-07-10 09:01:44', NULL, 0, 'plain', '', 0, 0, 'info'),
(5, 'wc-admin-customizing-product-catalog', 'info', 'en_US', 'نحوۀ سفارشی‌سازی فهرست محصول', 'شما می خواهید کاتالوگ و تصاویر محصول شما عالی و مطابق با نام تجاری شما باشد. این راهنما به شما نکاتی را می دهد که می خواهید محصولات شما در فروشگاه عالی جلوه کند.', '{}', 'unactioned', 'woocommerce-admin', '2023-07-10 09:01:44', NULL, 0, 'plain', '', 0, 0, 'info'),
(6, 'wc-admin-launch-checklist', 'info', 'en_US', 'آماده اجرای فروشگاه هستید؟', 'برای اطمینان از اینکه هرگز آن احساس غرق شدن \"چه فراموش کردم\" را ندارید، چک لیست ضروری قبل از راه اندازی را گردآوری کرده ایم.', '{}', 'unactioned', 'woocommerce-admin', '2023-07-10 09:01:44', NULL, 0, 'plain', '', 0, 0, 'info'),
(7, 'wc-admin-mobile-app', 'info', 'en_US', 'نصب نرم افزار موبایل وو', 'برنامۀ تلفن همراه ووکامرس را برای مدیریت سفارشات، دریافت اعلان‌های فروش و مشاهدۀ معیارهای کلیدی - هر کجا که هستید، نصب کنید.', '{}', 'unactioned', 'woocommerce-admin', '2023-07-10 09:01:44', NULL, 0, 'plain', '', 0, 0, 'info');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `actioned_text` varchar(255) NOT NULL,
  `nonce_action` varchar(255) DEFAULT NULL,
  `nonce_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `actioned_text`, `nonce_action`, `nonce_name`) VALUES
(1, 1, 'notify-refund-returns-page', 'Edit page', 'http://localhost/wordpress/wp-admin/post.php?post=11&action=edit', 'actioned', '', NULL, NULL),
(2, 2, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', '', NULL, NULL),
(3, 3, 'install-jp-and-wcs-plugins', 'نصب پلاگین ها', '', 'actioned', '', NULL, NULL),
(4, 4, 'visit-the-theme-marketplace', 'مشاهده قالب فروشگاهی', 'https://woocommerce.com/product-category/themes/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(5, 5, 'day-after-first-product', 'بیشتر بدانید', 'https://woocommerce.com/document/woocommerce-customizer/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(6, 6, 'learn-more', 'بیشتر بدانید', 'https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(7, 7, 'learn-more', 'بیشتر بدانید', 'https://woocommerce.com/mobile/?utm_medium=product', 'actioned', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) NOT NULL DEFAULT '',
  `postcode` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(100) NOT NULL DEFAULT '',
  `state` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_paid` datetime DEFAULT '0000-00-00 00:00:00',
  `date_completed` datetime DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_attributes_lookup`
--

CREATE TABLE `wp_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_download_directories`
--

CREATE TABLE `wp_wc_product_download_directories` (
  `url_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(256) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_product_download_directories`
--

INSERT INTO `wp_wc_product_download_directories` (`url_id`, `url`, `enabled`) VALUES
(1, 'file://C:/xampp/htdocs/wordpress/wp-content/uploads/woocommerce_uploads/', 1),
(2, 'http://localhost/wordpress/wp-content/uploads/woocommerce_uploads/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) DEFAULT 'taxable',
  `tax_class` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(13, '', 0, 0, '654321.0000', '654321.0000', 1, 4, 'instock', 0, '0.00', 0, 'taxable', ''),
(15, '', 0, 0, '52345.0000', '52345.0000', 0, 5, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_rate_limits`
--

CREATE TABLE `wp_wc_rate_limits` (
  `rate_limit_id` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_key` varchar(200) NOT NULL,
  `rate_limit_expiry` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) NOT NULL,
  `name` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text NOT NULL,
  `secret` text NOT NULL,
  `topic` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `permissions` varchar(10) NOT NULL,
  `consumer_key` char(64) NOT NULL,
  `consumer_secret` char(43) NOT NULL,
  `nonces` longtext DEFAULT NULL,
  `truncated_key` char(7) NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` varchar(200) DEFAULT NULL,
  `attribute_type` varchar(20) NOT NULL,
  `attribute_orderby` varchar(20) NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_ir`
--

CREATE TABLE `wp_woocommerce_ir` (
  `id` int(11) NOT NULL,
  `text1` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `text2` text CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `context` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) NOT NULL,
  `token` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) NOT NULL,
  `session_value` longtext NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(2, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:748:\"a:27:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:3:\"SMN\";s:7:\"country\";s:2:\"IR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:3:\"SMN\";s:16:\"shipping_country\";s:2:\"IR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:25:\"mostafaniakan96@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}', 1689152462);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'ایران', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) NOT NULL,
  `location_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'IR', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(8) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext DEFAULT NULL,
  `permalink_hash` varchar(40) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) NOT NULL,
  `object_sub_type` varchar(32) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `breadcrumb_title` text DEFAULT NULL,
  `post_status` varchar(20) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext DEFAULT NULL,
  `primary_focus_keyword` varchar(191) DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text DEFAULT NULL,
  `twitter_image` longtext DEFAULT NULL,
  `twitter_description` longtext DEFAULT NULL,
  `twitter_image_id` varchar(191) DEFAULT NULL,
  `twitter_image_source` text DEFAULT NULL,
  `open_graph_title` text DEFAULT NULL,
  `open_graph_description` longtext DEFAULT NULL,
  `open_graph_image` longtext DEFAULT NULL,
  `open_graph_image_id` varchar(191) DEFAULT NULL,
  `open_graph_image_source` text DEFAULT NULL,
  `open_graph_image_meta` mediumtext DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  `schema_page_type` varchar(64) DEFAULT NULL,
  `schema_article_type` varchar(64) DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`, `inclusive_language_score`) VALUES
(1, 'http://localhost/wordpress/vue/program/', '39:15a360e03f754ac8d0743034cd97374b', 152, 'post', 'post', 1, 0, NULL, NULL, 'Vue', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-05 20:16:38', '2023-08-25 16:45:56', 1, NULL, NULL, NULL, NULL, 0, 3, 2, '2023-08-21 12:49:04', '2023-08-02 13:30:26', 0),
(2, 'http://localhost/wordpress/author/mostafa/', '42:457bd733f34daf94d1f9de09461280a7', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://1.gravatar.com/avatar/a84fce1b98757c0ef9a719580a4b4a7e?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://1.gravatar.com/avatar/a84fce1b98757c0ef9a719580a4b4a7e?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2023-08-05 20:16:38', '2023-08-25 15:23:14', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-25 18:45:21', '2023-07-05 13:54:32', NULL),
(3, 'http://localhost/wordpress/', '27:f6ce664b63cd5429c9dfe0e29670b4df', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2023-08-05 20:16:39', '2023-08-25 15:15:24', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-25 18:45:21', '2023-08-02 13:05:09', NULL),
(4, 'http://localhost/wordpress/?page_id=3', '37:8974cd9472d7efb35f574c376af4e91c', 3, 'post', 'page', 1, 0, NULL, NULL, 'سیاست حفظ حریم خصوصی', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-05 13:54:32', '2023-07-05 13:54:32', 0),
(5, 'http://localhost/wordpress/?page_id=11', '38:2fc9e471bd940ba9da29f14da89e3dab', 11, 'post', 'page', 1, 0, NULL, NULL, 'Refund and Returns Policy', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(6, 'http://localhost/wordpress/برگه-نمونه/', '47:d31c2d7b0f6229cd25a28aa0ba5621a3', 2, 'post', 'page', 1, 0, NULL, NULL, 'برگه نمونه', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-05 13:54:32', '2023-07-05 13:54:32', 0),
(7, 'http://localhost/wordpress/shop/', '32:fac8ab8e5450faa99127a78df553f19d', 7, 'post', 'page', 1, 0, NULL, NULL, 'Shop', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-06 06:03:10', '2023-07-06 06:03:10', 0),
(8, 'http://localhost/wordpress/cart/', '32:359555db904475f673ff49b8fa0d386b', 8, 'post', 'page', 1, 0, NULL, NULL, 'Cart', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-10 15:07:09', '2023-07-06 06:03:10', 0),
(9, 'http://localhost/wordpress/checkout/', '36:914561ba803f79872fdefe43adf265a1', 9, 'post', 'page', 1, 0, NULL, NULL, 'Checkout', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-06 06:03:10', '2023-07-06 06:03:10', 0),
(10, 'http://localhost/wordpress/my-account/', '38:5be0e0cd9c0bfb9432cb4f0cfd88a036', 10, 'post', 'page', 1, 0, NULL, NULL, 'My account', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-06 06:03:10', '2023-07-06 06:03:10', 0),
(11, 'http://localhost/wordpress/?page_id=114', '39:7584bc42e2bff6dcfcac083361d701a5', 114, 'post', 'page', 1, 0, NULL, NULL, 'آرشیو', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:45:56', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-08-20 16:05:24', '2023-08-01 13:49:29', 0),
(12, 'http://localhost/wordpress/update/', '34:b45c0651a4aaf9db8430f4deddb43a52', 116, 'post', 'page', 1, 0, NULL, NULL, 'آپدیت', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-01 14:29:35', '2023-08-01 14:29:28', 0),
(13, 'http://localhost/wordpress/share/', '33:4934502ba4ce9abe7134e6d7078f4d89', 118, 'post', 'page', 1, 0, NULL, NULL, 'اشتراک گذاری', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-01 14:45:35', '2023-08-01 14:45:35', 0),
(14, 'http://localhost/wordpress/blog-2/', '34:c27e7d32b9fba91dc375a76ae00bd622', 123, 'post', 'page', 1, 0, NULL, NULL, 'وبلاگ ها', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-01 16:59:34', '2023-08-01 16:59:34', 0),
(15, 'http://localhost/wordpress/blogs/', '33:a47ad8078c996bcd949a63d6d0c4bd37', 128, 'post', 'page', 1, 0, NULL, NULL, 'وبلاگ ها', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-01 17:11:15', '2023-08-01 17:06:04', 0),
(16, 'http://localhost/wordpress/?page_id=120', '39:c1d167f8d50475686f761a93d613ffab', 120, 'post', 'page', 1, 0, NULL, NULL, 'وبلاگ ها', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:45:56', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-01 17:05:43', '2023-08-01 15:02:43', 0),
(17, 'http://localhost/wordpress/laravel/program/', '43:0e027fb67e9f5cd2561b28c68f0d4345', 143, 'post', 'post', 1, 0, NULL, NULL, 'Laravel', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/08/OReilly.Laravel.Up_.and_.Running.2nd.Edition.www_.EBooksWorld.ir_.jpg', NULL, '144', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/08/OReilly.Laravel.Up_.and_.Running.2nd.Edition.www_.EBooksWorld.ir_.jpg', '144', 'featured-image', '{\n    \"width\": 600,\n    \"height\": 787,\n    \"filesize\": 61801,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2023/08/OReilly.Laravel.Up_.and_.Running.2nd.Edition.www_.EBooksWorld.ir_.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2023/08/OReilly.Laravel.Up_.and_.Running.2nd.Edition.www_.EBooksWorld.ir_.jpg\",\n    \"size\": \"full\",\n    \"id\": 144,\n    \"alt\": \"\",\n    \"pixels\": 472200,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:45:56', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-03 14:29:25', '2023-08-02 13:05:09', 0),
(18, 'http://localhost/wordpress/php/program/', '39:d31e7f5646984505e04ab78e570011e5', 146, 'post', 'post', 1, 0, NULL, NULL, 'PHP', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/08/download.png', NULL, '147', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/08/download.png', '147', 'featured-image', '{\n    \"width\": 284,\n    \"height\": 177,\n    \"filesize\": 2032,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2023/08/download.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2023/08/download.png\",\n    \"size\": \"full\",\n    \"id\": 147,\n    \"alt\": \"\",\n    \"pixels\": 50268,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 15:40:37', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-08-10 08:47:19', '2023-08-02 13:06:10', 0),
(19, 'http://localhost/wordpress/category/%d8%af%d8%b3%d8%aa%d9%87%d8%a8%d9%86%d8%af%db%8c-%d9%86%d8%b4%d8%af%d9%87/', '110:2076fa5c3a52c7b67d48b6eab3cd0e3e', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'دسته‌بندی نشده', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL, NULL),
(20, 'http://localhost/wordpress/category/wordpress/', '46:b9d01912222af578bdcffe3b6dccde9c', 16, 'term', 'category', NULL, NULL, NULL, NULL, 'وردپرس', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 15:41:23', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-25 18:45:21', '2023-08-02 13:07:07', NULL),
(21, 'http://localhost/wordpress/category/%d8%a7%da%a9%d8%b4%d9%86/', '61:4646fd9b3e743b14dddeaf2fac4f5a63', 18, 'term', 'category', NULL, NULL, NULL, NULL, 'اکشن', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL, NULL),
(22, 'http://localhost/wordpress/category/program/vue/', '48:17097bf4530219da9a0f852b2b765c52', 20, 'term', 'category', NULL, NULL, NULL, NULL, 'vue', NULL, NULL, 0, NULL, NULL, NULL, 'vue', 36, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-08-21 12:49:04', '2023-08-02 13:30:26', NULL),
(23, 'http://localhost/wordpress/tag/front-end/', '41:0d64ef406d379fa621210874cd44258e', 21, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'front-end', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 15:23:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-25 18:45:21', '2023-08-02 13:07:07', NULL),
(24, 'http://localhost/wordpress/tag/js/', '34:7ba8b211f50dc3cd9d0a47ddd8864cc9', 22, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'js', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-21 12:49:04', '2023-08-02 13:30:26', NULL),
(25, 'http://localhost/wordpress/category/program/', '44:29b8dc64032364a5ae6b23b2040ae2b3', 23, 'term', 'category', NULL, NULL, NULL, NULL, 'زبان برنامه نویسی', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-25 18:45:21', '2023-08-02 13:05:09', NULL),
(26, 'http://localhost/wordpress/category/program/%d9%84%d8%a7%d8%b1%d8%a7%d9%88%d9%84/', '81:8a2193db585d38e049f9eb77cf3a27a7', 24, 'term', 'category', NULL, NULL, NULL, NULL, 'لاراول', NULL, NULL, 0, NULL, NULL, NULL, 'لاراول', 36, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-08-03 14:29:25', '2023-08-02 13:05:09', NULL),
(27, 'http://localhost/wordpress/category/program/php/', '48:1a7cc33075aa18f74c2fa101455c5ec4', 25, 'term', 'category', NULL, NULL, NULL, NULL, 'php', NULL, NULL, 0, NULL, NULL, NULL, 'php', 36, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-08-10 08:47:19', '2023-08-02 13:06:10', NULL),
(28, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(29, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(30, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 13:02:13', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(31, 'http://localhost/wordpress/wordpress/wordpress/', '47:44f6085994c4a809176c4978836d6fd9', 149, 'post', 'post', 1, 0, NULL, NULL, 'WordPress', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/08/Two-M3-Max-Variants-Reportedly-Being-Tested-Will-Have-Varying-Number-Of-CPU-Cores-1.jpg', NULL, '280', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/08/Two-M3-Max-Variants-Reportedly-Being-Tested-Will-Have-Varying-Number-Of-CPU-Cores-1.jpg', '280', 'featured-image', '{\n    \"width\": 728,\n    \"height\": 409,\n    \"filesize\": 100068,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2023/08/Two-M3-Max-Variants-Reportedly-Being-Tested-Will-Have-Varying-Number-Of-CPU-Cores-1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2023/08/Two-M3-Max-Variants-Reportedly-Being-Tested-Will-Have-Varying-Number-Of-CPU-Cores-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 280,\n    \"alt\": \"\",\n    \"pixels\": 297752,\n    \"type\": \"image/jpeg\"\n}', 1, NULL, NULL, '2023-08-06 13:12:36', '2023-08-25 15:23:14', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-08-25 18:45:21', '2023-08-02 13:07:07', 0),
(32, 'http://localhost/wordpress/?p=178', '33:b2386141483a43f26d8ac2da41961e48', 178, 'post', 'post', 1, 0, NULL, NULL, 'تست', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-08 14:08:24', '2023-08-25 16:45:56', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-08 14:09:46', '0000-00-00 00:00:00', 0),
(33, 'http://localhost/wordpress/?p=180', '33:fc66969569221a26c5de952bb5ec8ffb', 180, 'post', 'post', 1, 0, NULL, NULL, 'تست', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/07/product4.jpg', NULL, '55', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/07/product4.jpg', '55', 'featured-image', '{\n    \"width\": 460,\n    \"height\": 571,\n    \"filesize\": 36484,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2023/07/product4.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2023/07/product4.jpg\",\n    \"size\": \"full\",\n    \"id\": 55,\n    \"alt\": \"\",\n    \"pixels\": 262660,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2023-08-08 14:10:22', '2023-08-25 16:45:56', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-08-08 14:32:46', '2023-08-08 14:11:05', 0),
(44, 'http://localhost/wordpress/technology/', '38:d105d9968bd334a61963688afc1aadd7', 205, 'post', 'page', 1, 0, NULL, NULL, 'تکنولوژِی', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-09 09:52:21', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-08-09 12:09:24', '2023-08-09 09:52:17', 0),
(54, 'http://localhost/wordpress/cat_tech/', '36:52ab957d088dd8b19126baa5af46693f', 237, 'post', 'page', 1, 0, NULL, NULL, 'آرشیومطالب', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-10 16:08:27', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-08-18 14:09:21', '2023-08-10 16:08:25', 0),
(57, 'http://localhost/wordpress/searchnetwork/', '41:d61171e293a4ba0634330c49b6b81743', 239, 'post', 'page', 1, 0, NULL, NULL, 'searchNetwork', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-10 19:50:04', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-08-10 21:10:18', '2023-08-10 19:50:02', 0),
(68, 'http://localhost/wordpress/searchresults/', '41:5cd0f785fcd6115b4a2cf9bd694ec42b', 318, 'post', 'page', 1, 0, NULL, NULL, 'searchResults', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-14 10:35:53', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-08-14 10:35:51', '2023-08-14 10:35:51', 0),
(77, 'http://localhost/wordpress/shortlist/', '37:f929838af8bdf8bfcfbf28e7d8508187', 348, 'post', 'page', 1, 0, NULL, NULL, 'shortlist', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-15 19:24:11', '2023-08-25 16:45:56', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-08-15 19:24:09', '2023-08-15 19:24:09', 0),
(131, 'http://localhost/wordpress/searchresults-2/', '43:bd4123ed5ac95bac26707c0209f51c7d', 353, 'post', 'page', 1, 0, NULL, NULL, 'searchResults', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-23 15:57:32', '2023-08-25 16:45:56', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-08-23 15:57:44', '2023-08-23 15:57:29', 0),
(132, 'http://localhost/wordpress/list-posts/', '38:21a6aa3b6016027ffeca498bdfe47f40', 357, 'post', 'page', 1, 0, NULL, NULL, 'list-posts', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-24 12:55:52', '2023-08-25 16:45:56', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-08-24 12:57:51', '2023-08-24 12:55:50', 0),
(143, 'http://localhost/wordpress/tech/google/', '39:0d8de8fcb980e1559ad4d0c4d69b27d4', 196, 'post', 'tech', 1, 0, NULL, NULL, 'گوگل سیاست‌های ارائه اطلاعات را به‌روزرسانی می‌کند', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/08/google-trust-services-root-certificate-authority.png', NULL, '197', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/08/google-trust-services-root-certificate-authority.png', '197', 'featured-image', '{\n    \"width\": 728,\n    \"height\": 380,\n    \"filesize\": 17812,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2023/08/google-trust-services-root-certificate-authority.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2023/08/google-trust-services-root-certificate-authority.png\",\n    \"size\": \"full\",\n    \"id\": 197,\n    \"alt\": \"\",\n    \"pixels\": 276640,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2023-08-25 18:35:23', '2023-08-25 16:06:03', 1, NULL, NULL, NULL, NULL, 0, 3, 2, '2023-08-18 16:13:20', '2023-08-08 15:38:22', 0),
(144, NULL, NULL, NULL, 'post-type-archive', 'tech', NULL, NULL, 'بایگانی %%pt_plural%% %%page%% %%sep%% %%sitename%%', '', 'techs', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-25 18:35:23', '2023-08-25 18:53:06', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2023-08-20 10:00:45', '2023-08-08 15:36:26', NULL),
(145, 'http://localhost/wordpress/tech/%d8%a7%d9%be%d9%84-%d8%a7%db%8c%d9%86-%d9%88%d8%a7%d9%82%d8%b9%db%8c%d8%aa-%d8%b1%d8%a7-%d9%be%d8%b0%db%8c%d8%b1%d9%81%d8%aa%d9%87-%da%a9%d9%87-%d8%a8%d8%a7%d8%b2%d8%a7%d8%b1-%da%af%d9%88%d8%b4%db%8c/', '232:7cb980acadb0c17d3a230d1e12cf752a', 199, 'post', 'tech', 1, 0, NULL, NULL, 'اپل این واقعیت را پذیرفته که بازار گوشی هوشمند آمریکا افت کرده است', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/08/apple.jpg', NULL, '200', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/08/apple.jpg', '200', 'featured-image', '{\n    \"width\": 728,\n    \"height\": 486,\n    \"filesize\": 48029,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2023/08/apple.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2023/08/apple.jpg\",\n    \"size\": \"full\",\n    \"id\": 200,\n    \"alt\": \"\",\n    \"pixels\": 353808,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2023-08-25 18:45:54', '2023-08-25 16:06:03', 1, NULL, NULL, NULL, NULL, 0, 2, 2, '2023-08-20 09:59:41', '2023-08-08 15:40:20', 0),
(146, 'http://localhost/wordpress/tech-tag/%d8%aa%da%a9%d9%86%d9%88%d9%84%d9%88%da%98%db%8c/', '85:4472ef4c3d807fe72f350ae8055a32f5', 48, 'term', 'tech-tag', NULL, NULL, NULL, NULL, 'تکنولوژی', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-25 19:36:02', '2023-08-25 16:45:56', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-20 09:59:41', '2023-08-08 15:40:20', NULL),
(147, 'http://localhost/wordpress/tech-tag/%d8%a7%d9%be%d9%84/', '55:3a72af20b67e59f68b1f90d76abbb601', 49, 'term', 'tech-tag', NULL, NULL, NULL, NULL, 'اپل', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-25 19:36:02', '2023-08-25 16:45:56', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-20 10:00:45', '2023-08-08 15:36:26', NULL),
(148, 'http://localhost/wordpress/tech-cat/%d8%aa%da%a9%d9%86%d9%88%d9%84%d9%88%da%98%db%8c/', '85:4b826e5b2ba0ac5a597add85a2c7b366', 50, 'term', 'tech-cat', NULL, NULL, NULL, NULL, 'تکنولوژی', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-25 19:36:02', '2023-08-25 16:06:03', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-20 10:00:45', '2023-08-08 15:36:26', NULL),
(149, 'http://localhost/wordpress/tech-cat/%d8%a7%d9%be%d9%84/', '55:ee191729510f050ef034fb19f52badf0', 51, 'term', 'tech-cat', NULL, NULL, NULL, NULL, 'اپل', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-25 19:36:02', '2023-08-25 16:06:03', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-20 10:00:45', '2023-08-08 15:36:26', NULL),
(150, 'http://localhost/wordpress/tech-cat/%da%af%d9%88%da%af%d9%84/', '61:90bfb94f12a7fc01592966dafec6ba30', 52, 'term', 'tech-cat', NULL, NULL, NULL, NULL, 'گوگل', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-25 19:36:02', '2023-08-25 16:06:03', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-18 16:13:20', '2023-08-08 15:38:22', NULL),
(151, 'http://localhost/wordpress/tech-tag/%da%af%d9%88%da%af%d9%84/', '61:2ef8297fb56c2c7830e25c0957672ce9', 53, 'term', 'tech-tag', NULL, NULL, NULL, NULL, 'گوگل', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-25 19:36:02', '2023-08-25 16:45:56', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-18 16:13:20', '2023-08-08 15:38:22', NULL),
(152, 'http://localhost/wordpress/tech/', '32:c084c28413a6ff9dee2c7e5a2698e56f', NULL, 'post-type-archive', 'tech', NULL, NULL, 'بایگانی %%pt_plural%% %%page%% %%sep%% %%sitename%%', '', 'techs', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-25 19:36:02', '2023-08-25 16:06:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-20 10:00:45', '2023-08-08 15:36:26', NULL),
(153, 'http://localhost/wordpress/tech/apple/', '38:f4177cffc6453b3ba8288752b2a625c7', 193, 'post', 'tech', 1, 0, NULL, NULL, 'شایعه: پردازنده M3 مکس اپل دو نسخه با هسته‌های متفاوت خواهد داشت', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/08/Two-M3-Max-Variants-Reportedly-Being-Tested-Will-Have-Varying-Number-Of-CPU-Cores.jpg', NULL, '194', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/08/Two-M3-Max-Variants-Reportedly-Being-Tested-Will-Have-Varying-Number-Of-CPU-Cores.jpg', '194', 'featured-image', '{\n    \"width\": 728,\n    \"height\": 409,\n    \"filesize\": 100068,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2023/08/Two-M3-Max-Variants-Reportedly-Being-Tested-Will-Have-Varying-Number-Of-CPU-Cores.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2023/08/Two-M3-Max-Variants-Reportedly-Being-Tested-Will-Have-Varying-Number-Of-CPU-Cores.jpg\",\n    \"size\": \"full\",\n    \"id\": 194,\n    \"alt\": \"\",\n    \"pixels\": 297752,\n    \"type\": \"image/jpeg\"\n}', 1, NULL, NULL, '2023-08-25 19:36:02', '2023-08-25 16:06:03', 1, NULL, NULL, NULL, NULL, 0, 2, 2, '2023-08-20 10:00:45', '2023-08-08 15:36:26', 0),
(154, 'http://localhost/wordpress/?post_type=tech&p=211', '48:bb8511e0eb8c47545c344459d5622896', 211, 'post', 'tech', 1, 0, NULL, NULL, 'technology', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-25 20:15:56', '2023-08-25 16:45:56', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-08-09 11:47:48', '2023-08-09 11:17:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 0, 1),
(14, 0, 0, 1),
(15, 0, 0, 1),
(16, 0, 0, 1),
(17, 0, 0, 1),
(18, 0, 0, 1),
(19, 0, 0, 1),
(20, 0, 0, 1),
(21, 0, 0, 1),
(22, 25, 1, 1),
(23, 0, 0, 1),
(24, 0, 0, 1),
(25, 0, 0, 1),
(26, 25, 1, 1),
(27, 25, 1, 1),
(29, 0, 0, 1),
(30, 0, 0, 1),
(31, 0, 0, 1),
(32, 0, 0, 1),
(33, 0, 0, 1),
(44, 0, 0, 1),
(54, 0, 0, 1),
(57, 0, 0, 1),
(68, 0, 0, 1),
(77, 0, 0, 1),
(131, 0, 0, 1),
(132, 0, 0, 1),
(143, 0, 0, 1),
(145, 0, 0, 1),
(146, 0, 0, 1),
(147, 0, 0, 1),
(148, 0, 0, 1),
(149, 148, 1, 1),
(150, 148, 1, 1),
(151, 0, 0, 1),
(153, 0, 0, 1),
(154, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(25, '20190715101200'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(26, '20210827093024'),
(23, '20211020091404'),
(24, '20230417083836');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_primary_term`
--

INSERT INTO `wp_yoast_primary_term` (`id`, `post_id`, `term_id`, `taxonomy`, `created_at`, `updated_at`, `blog_id`) VALUES
(1, 152, 23, 'category', '2023-08-06 13:30:07', '2023-08-25 16:45:56', 1),
(2, 193, 32, 'tech', '2023-08-08 15:36:57', '2023-08-10 10:52:19', 1),
(3, 196, 34, 'tech', '2023-08-08 15:38:24', '2023-08-10 10:52:29', 1),
(4, 199, 32, 'tech', '2023-08-08 15:40:22', '2023-08-18 12:35:57', 1),
(5, 211, 26, 'tech', '2023-08-09 11:17:21', '2023-08-18 11:31:40', 1),
(6, 199, 38, 'cat_tech', '2023-08-10 16:04:10', '2023-08-18 12:13:02', 1),
(7, 199, 40, 'cat-tech', '2023-08-10 16:21:08', '2023-08-18 12:16:42', 1),
(9, 199, 47, 'tech_cat', '2023-08-18 15:35:20', '2023-08-18 12:05:20', 1),
(10, 193, 47, 'tech_cat', '2023-08-18 15:35:31', '2023-08-18 12:05:31', 1),
(11, 196, 47, 'tech_cat', '2023-08-18 15:35:39', '2023-08-18 12:05:39', 1),
(12, 199, 50, 'tech-cat', '2023-08-18 16:11:51', '2023-08-25 16:06:03', 1),
(13, 193, 50, 'tech-cat', '2023-08-18 16:13:00', '2023-08-25 16:06:02', 1),
(14, 196, 50, 'tech-cat', '2023-08-18 16:13:22', '2023-08-25 16:06:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_prominent_words`
--

CREATE TABLE `wp_yoast_prominent_words` (
  `id` int(11) UNSIGNED NOT NULL,
  `stem` varchar(191) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `weight` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(1, 'http://localhost/wordpress/wp-admin/', 2, NULL, 'internal', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'http://localhost/wordpress/wp-content/uploads/2023/07/167e6eef358976c43ee209a4f97fbd3418898427-360p.mp4', 149, NULL, 'internal', 31, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'http://localhost/wordpress/wp-content/uploads/2023/07/167e6eef358976c43ee209a4f97fbd3418898427-360p.mp4', 152, NULL, 'internal', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'http://localhost/wordpress/wp-content/uploads/2023/08/bac3b3e78d80c7a1b24c6c10b0a42b9052648422-480p.mp4', 193, NULL, 'internal', 153, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'https://techfars.com/110801/google-investigated-yet-again-over-its-data-collection-practices/', 196, NULL, 'external', 143, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_bot_button_id`
--
ALTER TABLE `wp_bot_button_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bot_channels`
--
ALTER TABLE `wp_bot_channels`
  ADD PRIMARY KEY (`channel_id`);

--
-- Indexes for table `wp_bot_items_users`
--
ALTER TABLE `wp_bot_items_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_bot_message_id`
--
ALTER TABLE `wp_bot_message_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bot_rates`
--
ALTER TABLE `wp_bot_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bot_users`
--
ALTER TABLE `wp_bot_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_custom_front_user`
--
ALTER TABLE `wp_custom_front_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_me_add_operator`
--
ALTER TABLE `wp_me_add_operator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shortlist_id` (`shortlist_id`);

--
-- Indexes for table `wp_me_users`
--
ALTER TABLE `wp_me_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_my_bookshelf`
--
ALTER TABLE `wp_my_bookshelf`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_my_shortlist`
--
ALTER TABLE `wp_my_shortlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_my_users`
--
ALTER TABLE `wp_my_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_my_users_like_book`
--
ALTER TABLE `wp_my_users_like_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booc_id` (`book_id`),
  ADD KEY `wp_my_users_like_post` (`user_id`) USING BTREE;

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_product`
--
ALTER TABLE `wp_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexes for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexes for table `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_product_attributes_lookup`
--
ALTER TABLE `wp_wc_product_attributes_lookup`
  ADD PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  ADD KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`);

--
-- Indexes for table `wp_wc_product_download_directories`
--
ALTER TABLE `wp_wc_product_download_directories`
  ADD PRIMARY KEY (`url_id`),
  ADD KEY `url` (`url`(191));

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_rate_limits`
--
ALTER TABLE `wp_wc_rate_limits`
  ADD PRIMARY KEY (`rate_limit_id`),
  ADD UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191));

--
-- Indexes for table `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_ir`
--
ALTER TABLE `wp_woocommerce_ir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Indexes for table `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Indexes for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Indexes for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Indexes for table `wp_yoast_prominent_words`
--
ALTER TABLE `wp_yoast_prominent_words`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stem` (`stem`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `indexable_id_and_stem` (`indexable_id`,`stem`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp_bot_button_id`
--
ALTER TABLE `wp_bot_button_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bot_channels`
--
ALTER TABLE `wp_bot_channels`
  MODIFY `channel_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bot_items_users`
--
ALTER TABLE `wp_bot_items_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bot_message_id`
--
ALTER TABLE `wp_bot_message_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bot_rates`
--
ALTER TABLE `wp_bot_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bot_users`
--
ALTER TABLE `wp_bot_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wp_custom_front_user`
--
ALTER TABLE `wp_custom_front_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_me_add_operator`
--
ALTER TABLE `wp_me_add_operator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_me_users`
--
ALTER TABLE `wp_me_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `wp_my_bookshelf`
--
ALTER TABLE `wp_my_bookshelf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_my_shortlist`
--
ALTER TABLE `wp_my_shortlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_my_users`
--
ALTER TABLE `wp_my_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_my_users_like_book`
--
ALTER TABLE `wp_my_users_like_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4420;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=970;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT for table `wp_product`
--
ALTER TABLE `wp_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=772;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_product_download_directories`
--
ALTER TABLE `wp_wc_product_download_directories`
  MODIFY `url_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_rate_limits`
--
ALTER TABLE `wp_wc_rate_limits`
  MODIFY `rate_limit_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_ir`
--
ALTER TABLE `wp_woocommerce_ir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_yoast_prominent_words`
--
ALTER TABLE `wp_yoast_prominent_words`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_bot_items_users`
--
ALTER TABLE `wp_bot_items_users`
  ADD CONSTRAINT `wp_bot_items_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `wp_bot_users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `wp_me_add_operator`
--
ALTER TABLE `wp_me_add_operator`
  ADD CONSTRAINT `wp_me_add_operator_ibfk_1` FOREIGN KEY (`shortlist_id`) REFERENCES `wp_my_shortlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wp_my_bookshelf`
--
ALTER TABLE `wp_my_bookshelf`
  ADD CONSTRAINT `wp_my_bookshelf_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `wp_users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wp_my_users_like_book`
--
ALTER TABLE `wp_my_users_like_book`
  ADD CONSTRAINT `wp_my_users_like_book_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `wp_my_bookshelf` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wp_my_users_like_book_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `wp_users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
