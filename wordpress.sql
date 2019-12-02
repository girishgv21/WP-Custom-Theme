-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 02, 2019 at 03:22 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-11-29 16:29:46', '2019-11-29 16:29:46', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Wordpress Theme Site', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'girishgv21@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'custom', 'yes'),
(41, 'stylesheet', 'custom', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Asia/Kolkata', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1590596980', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1575253788;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1575260988;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1575304187;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575304195;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575304198;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1575253306;s:15:\"version_checked\";s:3:\"5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(116, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1575045253;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(118, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1575253310;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1575253310;s:7:\"checked\";a:5:{s:6:\"custom\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(122, '_site_transient_timeout_browser_7af84f6d8f9b36d29966f2526c85673e', '1575649796', 'no'),
(123, '_site_transient_browser_7af84f6d8f9b36d29966f2526c85673e', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"78.0.3904.97\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, '_site_transient_timeout_php_check_b1f7d17548e7b3eac5214a006719f44e', '1575649798', 'no'),
(125, '_site_transient_php_check_b1f7d17548e7b3eac5214a006719f44e', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(140, 'current_theme', 'Custom Theme GV', 'yes'),
(141, 'theme_mods_custom', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:5;s:6:\"footer\";i:6;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(150, 'category_children', 'a:1:{i:2;a:2:{i:0;i:3;i:1;i:4;}}', 'yes'),
(170, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(179, 'WPLANG', '', 'yes'),
(180, 'new_admin_email', 'girishgv21@gmail.com', 'yes'),
(190, 'recovery_mode_email_last_sent', '1575124367', 'yes'),
(231, '_site_transient_timeout_theme_roots', '1575255108', 'no'),
(232, '_site_transient_theme_roots', 'a:5:{s:6:\"custom\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'special-template.php'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1575087739:1'),
(4, 5, '_edit_lock', '1575087532:1'),
(7, 7, '_edit_lock', '1575087525:1'),
(10, 7, '_edit_last', '1'),
(13, 5, '_edit_last', '1'),
(16, 9, '_edit_lock', '1575087571:1'),
(19, 1, '_edit_last', '1'),
(22, 12, '_edit_lock', '1575091294:1'),
(25, 3, '_edit_lock', '1575091317:1'),
(26, 15, '_edit_lock', '1575122311:1'),
(27, 18, '_edit_lock', '1575211775:2'),
(28, 20, '_edit_lock', '1575091453:1'),
(29, 22, '_menu_item_type', 'post_type'),
(30, 22, '_menu_item_menu_item_parent', '0'),
(31, 22, '_menu_item_object_id', '20'),
(32, 22, '_menu_item_object', 'page'),
(33, 22, '_menu_item_target', ''),
(34, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 22, '_menu_item_xfn', ''),
(36, 22, '_menu_item_url', ''),
(38, 23, '_menu_item_type', 'post_type'),
(39, 23, '_menu_item_menu_item_parent', '0'),
(40, 23, '_menu_item_object_id', '18'),
(41, 23, '_menu_item_object', 'page'),
(42, 23, '_menu_item_target', ''),
(43, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 23, '_menu_item_xfn', ''),
(45, 23, '_menu_item_url', ''),
(47, 24, '_menu_item_type', 'post_type'),
(48, 24, '_menu_item_menu_item_parent', '0'),
(49, 24, '_menu_item_object_id', '15'),
(50, 24, '_menu_item_object', 'page'),
(51, 24, '_menu_item_target', ''),
(52, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 24, '_menu_item_xfn', ''),
(54, 24, '_menu_item_url', ''),
(56, 25, '_menu_item_type', 'custom'),
(57, 25, '_menu_item_menu_item_parent', '0'),
(58, 25, '_menu_item_object_id', '25'),
(59, 25, '_menu_item_object', 'custom'),
(60, 25, '_menu_item_target', ''),
(61, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 25, '_menu_item_xfn', ''),
(63, 25, '_menu_item_url', 'https://www.facebook.com'),
(65, 26, '_menu_item_type', 'custom'),
(66, 26, '_menu_item_menu_item_parent', '0'),
(67, 26, '_menu_item_object_id', '26'),
(68, 26, '_menu_item_object', 'custom'),
(69, 26, '_menu_item_target', ''),
(70, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 26, '_menu_item_xfn', ''),
(72, 26, '_menu_item_url', 'https://www.twitter.com'),
(74, 27, '_menu_item_type', 'custom'),
(75, 27, '_menu_item_menu_item_parent', '0'),
(76, 27, '_menu_item_object_id', '27'),
(77, 27, '_menu_item_object', 'custom'),
(78, 27, '_menu_item_target', ''),
(79, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 27, '_menu_item_xfn', ''),
(81, 27, '_menu_item_url', 'https://www.github.com'),
(83, 28, '_edit_lock', '1575092018:1'),
(86, 30, '_edit_lock', '1575093899:1'),
(89, 32, '_edit_lock', '1575102384:1'),
(90, 33, '_edit_lock', '1575106301:1'),
(93, 15, '_wp_page_template', ''),
(94, 2, '_edit_lock', '1575122335:1'),
(95, 36, '_menu_item_type', 'post_type'),
(96, 36, '_menu_item_menu_item_parent', '0'),
(97, 36, '_menu_item_object_id', '2'),
(98, 36, '_menu_item_object', 'page'),
(99, 36, '_menu_item_target', ''),
(100, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(101, 36, '_menu_item_xfn', ''),
(102, 36, '_menu_item_url', ''),
(104, 37, '_edit_lock', '1575211817:2'),
(109, 40, '_edit_lock', '1575123821:1'),
(110, 42, '_edit_lock', '1575123840:1'),
(111, 45, '_edit_lock', '1575211782:2'),
(112, 46, '_edit_lock', '1575212396:2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-11-29 16:29:46', '2019-11-29 16:29:46', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Post 0', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-11-30 04:22:19', '2019-11-30 04:22:19', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2019-11-29 16:29:46', '2019-11-29 16:29:46', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Special Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-11-30 19:31:15', '2019-11-30 14:01:15', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-11-29 16:29:46', '2019-11-29 16:29:46', '<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://localhost/wordpress.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->', 'Privacy Policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2019-11-30 05:24:19', '2019-11-30 05:24:19', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-11-29 16:29:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-11-29 16:29:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2019-11-29 16:50:45', '2019-11-29 16:50:45', '<!-- wp:paragraph -->\n<p>Hello everyone this is my first post</p>\n<!-- /wp:paragraph -->', 'Post 1', '', 'publish', 'open', 'open', '', 'post-1', '', '', '2019-11-30 04:18:52', '2019-11-30 04:18:52', '', 0, 'http://localhost/wordpress/?p=5', 0, 'post', '', 0),
(6, 1, '2019-11-29 16:50:45', '2019-11-29 16:50:45', '<!-- wp:paragraph -->\n<p>Hello everyone this is my first post</p>\n<!-- /wp:paragraph -->', 'Post 1', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-11-29 16:50:45', '2019-11-29 16:50:45', '', 5, 'http://localhost/wordpress/index.php/2019/11/29/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-11-30 04:03:28', '2019-11-30 04:03:28', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec est et quam malesuada ullamcorper. Maecenas posuere vel ex vel tincidunt. Aliquam finibus ex ante, ut varius sem fringilla in. Donec dignissim pulvinar pulvinar. Ut sodales vel tellus eget posuere. Curabitur eget aliquet leo. Curabitur diam eros, placerat ut finibus eget, volutpat in libero. Sed in arcu non lectus auctor condimentum. Vestibulum fringilla, odio imperdiet rutrum consequat, libero libero tincidunt sem, sed ultricies sem enim quis diam. Curabitur cursus ligula eu risus euismod laoreet. Praesent nec mi sed massa aliquet sollicitudin. Nunc urna sem, ultrices et auctor in, tristique nec nulla. Integer orci sapien, cursus sed nisi eget, vestibulum varius lorem. Maecenas nunc mauris, pulvinar ac erat sit amet, porta condimentum dui. Nunc vitae sapien iaculis, convallis ex et, porta augue. Integer nisl dui, faucibus sit amet purus ac, laoreet congue metus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi nec sapien porttitor, dictum ligula id, pulvinar leo. Curabitur et purus viverra, scelerisque lorem ut, eleifend diam. Quisque sed turpis elit. Morbi volutpat felis purus, vel consectetur odio finibus eu. Aenean varius tellus ex, sit amet pulvinar magna fermentum quis. Morbi tincidunt scelerisque augue pulvinar congue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque dapibus sapien id ultricies eleifend. Fusce nulla lorem, auctor sed elementum et, posuere ac elit. Suspendisse commodo ut risus vitae viverra. Nunc nec quam vel libero commodo interdum. In blandit tellus purus, sed sagittis massa sodales nec. Nam volutpat quam vitae luctus porta. Nullam rutrum cursus pharetra. Nunc fringilla non lacus sit amet vehicula. Cras dictum in odio at consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean eget justo in lorem pulvinar fermentum. Nunc venenatis eleifend lectus, eu mollis nisi malesuada id. Cras convallis, velit nec malesuada ultricies, velit turpis bibendum neque, nec tempor massa lorem non libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget sagittis tellus. Sed hendrerit aliquam ultricies. Maecenas posuere mi sapien, vitae pharetra est blandit eu. Vivamus vestibulum placerat nibh vel gravida. Donec faucibus odio tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ultrices, libero et facilisis condimentum, enim ipsum bibendum diam, eu rhoncus nisi sem vel odio. Nullam non consectetur eros. Nullam dui tortor, congue et dapibus quis, vestibulum eget sapien. Integer egestas massa eros, at condimentum ante fringilla nec. Mauris condimentum accumsan nibh, sit amet placerat ipsum laoreet et. Donec varius, metus nec rutrum sollicitudin, eros mi aliquet nunc, posuere facilisis risus arcu at dolor. Aliquam volutpat metus non porttitor lacinia. Aenean fringilla, ante at euismod feugiat, elit nunc venenatis urna, id bibendum lectus nunc ac libero. Pellentesque a risus nec tellus laoreet luctus et et diam. Vivamus odio erat, semper nec feugiat in, iaculis id dolor. Integer quis dictum nisi. Praesent molestie sagittis arcu faucibus congue. Donec eget tellus tempus nibh lobortis pharetra et ut urna. Etiam elementum mi sit amet elit blandit consectetur. Donec dolor justo, tempor sit amet tempus lacinia, maximus sed lorem.</p>\n<!-- /wp:paragraph -->', 'Post 2', '', 'publish', 'open', 'open', '', 'post-2', '', '', '2019-11-30 04:18:44', '2019-11-30 04:18:44', '', 0, 'http://localhost/wordpress/?p=7', 0, 'post', '', 0),
(8, 1, '2019-11-30 04:03:28', '2019-11-30 04:03:28', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec est et quam malesuada ullamcorper. Maecenas posuere vel ex vel tincidunt. Aliquam finibus ex ante, ut varius sem fringilla in. Donec dignissim pulvinar pulvinar. Ut sodales vel tellus eget posuere. Curabitur eget aliquet leo. Curabitur diam eros, placerat ut finibus eget, volutpat in libero. Sed in arcu non lectus auctor condimentum. Vestibulum fringilla, odio imperdiet rutrum consequat, libero libero tincidunt sem, sed ultricies sem enim quis diam. Curabitur cursus ligula eu risus euismod laoreet. Praesent nec mi sed massa aliquet sollicitudin. Nunc urna sem, ultrices et auctor in, tristique nec nulla. Integer orci sapien, cursus sed nisi eget, vestibulum varius lorem. Maecenas nunc mauris, pulvinar ac erat sit amet, porta condimentum dui. Nunc vitae sapien iaculis, convallis ex et, porta augue. Integer nisl dui, faucibus sit amet purus ac, laoreet congue metus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi nec sapien porttitor, dictum ligula id, pulvinar leo. Curabitur et purus viverra, scelerisque lorem ut, eleifend diam. Quisque sed turpis elit. Morbi volutpat felis purus, vel consectetur odio finibus eu. Aenean varius tellus ex, sit amet pulvinar magna fermentum quis. Morbi tincidunt scelerisque augue pulvinar congue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque dapibus sapien id ultricies eleifend. Fusce nulla lorem, auctor sed elementum et, posuere ac elit. Suspendisse commodo ut risus vitae viverra. Nunc nec quam vel libero commodo interdum. In blandit tellus purus, sed sagittis massa sodales nec. Nam volutpat quam vitae luctus porta. Nullam rutrum cursus pharetra. Nunc fringilla non lacus sit amet vehicula. Cras dictum in odio at consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean eget justo in lorem pulvinar fermentum. Nunc venenatis eleifend lectus, eu mollis nisi malesuada id. Cras convallis, velit nec malesuada ultricies, velit turpis bibendum neque, nec tempor massa lorem non libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget sagittis tellus. Sed hendrerit aliquam ultricies. Maecenas posuere mi sapien, vitae pharetra est blandit eu. Vivamus vestibulum placerat nibh vel gravida. Donec faucibus odio tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ultrices, libero et facilisis condimentum, enim ipsum bibendum diam, eu rhoncus nisi sem vel odio. Nullam non consectetur eros. Nullam dui tortor, congue et dapibus quis, vestibulum eget sapien. Integer egestas massa eros, at condimentum ante fringilla nec. Mauris condimentum accumsan nibh, sit amet placerat ipsum laoreet et. Donec varius, metus nec rutrum sollicitudin, eros mi aliquet nunc, posuere facilisis risus arcu at dolor. Aliquam volutpat metus non porttitor lacinia. Aenean fringilla, ante at euismod feugiat, elit nunc venenatis urna, id bibendum lectus nunc ac libero. Pellentesque a risus nec tellus laoreet luctus et et diam. Vivamus odio erat, semper nec feugiat in, iaculis id dolor. Integer quis dictum nisi. Praesent molestie sagittis arcu faucibus congue. Donec eget tellus tempus nibh lobortis pharetra et ut urna. Etiam elementum mi sit amet elit blandit consectetur. Donec dolor justo, tempor sit amet tempus lacinia, maximus sed lorem.</p>\n<!-- /wp:paragraph -->', 'Post 2', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-11-30 04:03:28', '2019-11-30 04:03:28', '', 7, 'http://localhost/wordpress/index.php/2019/11/30/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-11-30 04:20:55', '2019-11-30 04:20:55', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec est et quam malesuada ullamcorper. Maecenas posuere vel ex vel tincidunt. Aliquam finibus ex ante, ut varius sem fringilla in. Donec dignissim pulvinar pulvinar. Ut sodales vel tellus eget posuere. Curabitur eget aliquet leo. Curabitur diam eros, placerat ut finibus eget, volutpat in libero. Sed in arcu non lectus auctor condimentum. Vestibulum fringilla, odio imperdiet rutrum consequat, libero libero tincidunt sem, sed ultricies sem enim quis diam. Curabitur cursus ligula eu risus euismod laoreet. Praesent nec mi sed massa aliquet sollicitudin. Nunc urna sem, ultrices et auctor in, tristique nec nulla. Integer orci sapien, cursus sed nisi eget, vestibulum varius lorem. Maecenas nunc mauris, pulvinar ac erat sit amet, porta condimentum dui. Nunc vitae sapien iaculis, convallis ex et, porta augue. Integer nisl dui, faucibus sit amet purus ac, laoreet congue metus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi nec sapien porttitor, dictum ligula id, pulvinar leo. Curabitur et purus viverra, scelerisque lorem ut, eleifend diam. Quisque sed turpis elit. Morbi volutpat felis purus, vel consectetur odio finibus eu. Aenean varius tellus ex, sit amet pulvinar magna fermentum quis. Morbi tincidunt scelerisque augue pulvinar congue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque dapibus sapien id ultricies eleifend. Fusce nulla lorem, auctor sed elementum et, posuere ac elit. Suspendisse commodo ut risus vitae viverra. Nunc nec quam vel libero commodo interdum. In blandit tellus purus, sed sagittis massa sodales nec. Nam volutpat quam vitae luctus porta. Nullam rutrum cursus pharetra. Nunc fringilla non lacus sit amet vehicula. Cras dictum in odio at consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean eget justo in lorem pulvinar fermentum. Nunc venenatis eleifend lectus, eu mollis nisi malesuada id. Cras convallis, velit nec malesuada ultricies, velit turpis bibendum neque, nec tempor massa lorem non libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget sagittis tellus. Sed hendrerit aliquam ultricies. Maecenas posuere mi sapien, vitae pharetra est blandit eu. Vivamus vestibulum placerat nibh vel gravida. Donec faucibus odio tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ultrices, libero et facilisis condimentum, enim ipsum bibendum diam, eu rhoncus nisi sem vel odio. Nullam non consectetur eros. Nullam dui tortor, congue et dapibus quis, vestibulum eget sapien. Integer egestas massa eros, at condimentum ante fringilla nec. Mauris condimentum accumsan nibh, sit amet placerat ipsum laoreet et. Donec varius, metus nec rutrum sollicitudin, eros mi aliquet nunc, posuere facilisis risus arcu at dolor. Aliquam volutpat metus non porttitor lacinia. Aenean fringilla, ante at euismod feugiat, elit nunc venenatis urna, id bibendum lectus nunc ac libero. Pellentesque a risus nec tellus laoreet luctus et et diam. Vivamus odio erat, semper nec feugiat in, iaculis id dolor. Integer quis dictum nisi. Praesent molestie sagittis arcu faucibus congue. Donec eget tellus tempus nibh lobortis pharetra et ut urna. Etiam elementum mi sit amet elit blandit consectetur. Donec dolor justo, tempor sit amet tempus lacinia, maximus sed lorem.</p>\n<!-- /wp:paragraph -->', 'Post 3', '', 'publish', 'open', 'open', '', 'post-3', '', '', '2019-11-30 04:20:55', '2019-11-30 04:20:55', '', 0, 'http://localhost/wordpress/?p=9', 0, 'post', '', 0),
(10, 1, '2019-11-30 04:20:55', '2019-11-30 04:20:55', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec est et quam malesuada ullamcorper. Maecenas posuere vel ex vel tincidunt. Aliquam finibus ex ante, ut varius sem fringilla in. Donec dignissim pulvinar pulvinar. Ut sodales vel tellus eget posuere. Curabitur eget aliquet leo. Curabitur diam eros, placerat ut finibus eget, volutpat in libero. Sed in arcu non lectus auctor condimentum. Vestibulum fringilla, odio imperdiet rutrum consequat, libero libero tincidunt sem, sed ultricies sem enim quis diam. Curabitur cursus ligula eu risus euismod laoreet. Praesent nec mi sed massa aliquet sollicitudin. Nunc urna sem, ultrices et auctor in, tristique nec nulla. Integer orci sapien, cursus sed nisi eget, vestibulum varius lorem. Maecenas nunc mauris, pulvinar ac erat sit amet, porta condimentum dui. Nunc vitae sapien iaculis, convallis ex et, porta augue. Integer nisl dui, faucibus sit amet purus ac, laoreet congue metus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi nec sapien porttitor, dictum ligula id, pulvinar leo. Curabitur et purus viverra, scelerisque lorem ut, eleifend diam. Quisque sed turpis elit. Morbi volutpat felis purus, vel consectetur odio finibus eu. Aenean varius tellus ex, sit amet pulvinar magna fermentum quis. Morbi tincidunt scelerisque augue pulvinar congue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque dapibus sapien id ultricies eleifend. Fusce nulla lorem, auctor sed elementum et, posuere ac elit. Suspendisse commodo ut risus vitae viverra. Nunc nec quam vel libero commodo interdum. In blandit tellus purus, sed sagittis massa sodales nec. Nam volutpat quam vitae luctus porta. Nullam rutrum cursus pharetra. Nunc fringilla non lacus sit amet vehicula. Cras dictum in odio at consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean eget justo in lorem pulvinar fermentum. Nunc venenatis eleifend lectus, eu mollis nisi malesuada id. Cras convallis, velit nec malesuada ultricies, velit turpis bibendum neque, nec tempor massa lorem non libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget sagittis tellus. Sed hendrerit aliquam ultricies. Maecenas posuere mi sapien, vitae pharetra est blandit eu. Vivamus vestibulum placerat nibh vel gravida. Donec faucibus odio tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ultrices, libero et facilisis condimentum, enim ipsum bibendum diam, eu rhoncus nisi sem vel odio. Nullam non consectetur eros. Nullam dui tortor, congue et dapibus quis, vestibulum eget sapien. Integer egestas massa eros, at condimentum ante fringilla nec. Mauris condimentum accumsan nibh, sit amet placerat ipsum laoreet et. Donec varius, metus nec rutrum sollicitudin, eros mi aliquet nunc, posuere facilisis risus arcu at dolor. Aliquam volutpat metus non porttitor lacinia. Aenean fringilla, ante at euismod feugiat, elit nunc venenatis urna, id bibendum lectus nunc ac libero. Pellentesque a risus nec tellus laoreet luctus et et diam. Vivamus odio erat, semper nec feugiat in, iaculis id dolor. Integer quis dictum nisi. Praesent molestie sagittis arcu faucibus congue. Donec eget tellus tempus nibh lobortis pharetra et ut urna. Etiam elementum mi sit amet elit blandit consectetur. Donec dolor justo, tempor sit amet tempus lacinia, maximus sed lorem.</p>\n<!-- /wp:paragraph -->', 'Post 3', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-11-30 04:20:55', '2019-11-30 04:20:55', '', 9, 'http://localhost/wordpress/index.php/2019/11/30/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-11-30 04:22:19', '2019-11-30 04:22:19', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Post 0', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-11-30 04:22:19', '2019-11-30 04:22:19', '', 1, 'http://localhost/wordpress/index.php/2019/11/30/1-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-11-30 04:22:52', '2019-11-30 04:22:52', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec est et quam malesuada ullamcorper. Maecenas posuere vel ex vel tincidunt. Aliquam finibus ex ante, ut varius sem fringilla in. Donec dignissim pulvinar pulvinar. Ut sodales vel tellus eget posuere. Curabitur eget aliquet leo. Curabitur diam eros, placerat ut finibus eget, volutpat in libero. Sed in arcu non lectus auctor condimentum. Vestibulum fringilla, odio imperdiet rutrum consequat, libero libero tincidunt sem, sed ultricies sem enim quis diam. Curabitur cursus ligula eu risus euismod laoreet. Praesent nec mi sed massa aliquet sollicitudin. Nunc urna sem, ultrices et auctor in, tristique nec nulla. Integer orci sapien, cursus sed nisi eget, vestibulum varius lorem. Maecenas nunc mauris, pulvinar ac erat sit amet, porta condimentum dui. Nunc vitae sapien iaculis, convallis ex et, porta augue. Integer nisl dui, faucibus sit amet purus ac, laoreet congue metus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi nec sapien porttitor, dictum ligula id, pulvinar leo. Curabitur et purus viverra, scelerisque lorem ut, eleifend diam. Quisque sed turpis elit. Morbi volutpat felis purus, vel consectetur odio finibus eu. Aenean varius tellus ex, sit amet pulvinar magna fermentum quis. Morbi tincidunt scelerisque augue pulvinar congue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque dapibus sapien id ultricies eleifend. Fusce nulla lorem, auctor sed elementum et, posuere ac elit. Suspendisse commodo ut risus vitae viverra. Nunc nec quam vel libero commodo interdum. In blandit tellus purus, sed sagittis massa sodales nec. Nam volutpat quam vitae luctus porta. Nullam rutrum cursus pharetra. Nunc fringilla non lacus sit amet vehicula. Cras dictum in odio at consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean eget justo in lorem pulvinar fermentum. Nunc venenatis eleifend lectus, eu mollis nisi malesuada id. Cras convallis, velit nec malesuada ultricies, velit turpis bibendum neque, nec tempor massa lorem non libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget sagittis tellus. Sed hendrerit aliquam ultricies. Maecenas posuere mi sapien, vitae pharetra est blandit eu. Vivamus vestibulum placerat nibh vel gravida. Donec faucibus odio tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ultrices, libero et facilisis condimentum, enim ipsum bibendum diam, eu rhoncus nisi sem vel odio. Nullam non consectetur eros. Nullam dui tortor, congue et dapibus quis, vestibulum eget sapien. Integer egestas massa eros, at condimentum ante fringilla nec. Mauris condimentum accumsan nibh, sit amet placerat ipsum laoreet et. Donec varius, metus nec rutrum sollicitudin, eros mi aliquet nunc, posuere facilisis risus arcu at dolor. Aliquam volutpat metus non porttitor lacinia. Aenean fringilla, ante at euismod feugiat, elit nunc venenatis urna, id bibendum lectus nunc ac libero. Pellentesque a risus nec tellus laoreet luctus et et diam. Vivamus odio erat, semper nec feugiat in, iaculis id dolor. Integer quis dictum nisi. Praesent molestie sagittis arcu faucibus congue. Donec eget tellus tempus nibh lobortis pharetra et ut urna. Etiam elementum mi sit amet elit blandit consectetur. Donec dolor justo, tempor sit amet tempus lacinia, maximus sed lorem.</p>\n<!-- /wp:paragraph -->', 'Post 4', '', 'publish', 'open', 'open', '', 'post-4', '', '', '2019-11-30 04:22:52', '2019-11-30 04:22:52', '', 0, 'http://localhost/wordpress/?p=12', 0, 'post', '', 0),
(13, 1, '2019-11-30 04:22:52', '2019-11-30 04:22:52', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec est et quam malesuada ullamcorper. Maecenas posuere vel ex vel tincidunt. Aliquam finibus ex ante, ut varius sem fringilla in. Donec dignissim pulvinar pulvinar. Ut sodales vel tellus eget posuere. Curabitur eget aliquet leo. Curabitur diam eros, placerat ut finibus eget, volutpat in libero. Sed in arcu non lectus auctor condimentum. Vestibulum fringilla, odio imperdiet rutrum consequat, libero libero tincidunt sem, sed ultricies sem enim quis diam. Curabitur cursus ligula eu risus euismod laoreet. Praesent nec mi sed massa aliquet sollicitudin. Nunc urna sem, ultrices et auctor in, tristique nec nulla. Integer orci sapien, cursus sed nisi eget, vestibulum varius lorem. Maecenas nunc mauris, pulvinar ac erat sit amet, porta condimentum dui. Nunc vitae sapien iaculis, convallis ex et, porta augue. Integer nisl dui, faucibus sit amet purus ac, laoreet congue metus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi nec sapien porttitor, dictum ligula id, pulvinar leo. Curabitur et purus viverra, scelerisque lorem ut, eleifend diam. Quisque sed turpis elit. Morbi volutpat felis purus, vel consectetur odio finibus eu. Aenean varius tellus ex, sit amet pulvinar magna fermentum quis. Morbi tincidunt scelerisque augue pulvinar congue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque dapibus sapien id ultricies eleifend. Fusce nulla lorem, auctor sed elementum et, posuere ac elit. Suspendisse commodo ut risus vitae viverra. Nunc nec quam vel libero commodo interdum. In blandit tellus purus, sed sagittis massa sodales nec. Nam volutpat quam vitae luctus porta. Nullam rutrum cursus pharetra. Nunc fringilla non lacus sit amet vehicula. Cras dictum in odio at consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean eget justo in lorem pulvinar fermentum. Nunc venenatis eleifend lectus, eu mollis nisi malesuada id. Cras convallis, velit nec malesuada ultricies, velit turpis bibendum neque, nec tempor massa lorem non libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget sagittis tellus. Sed hendrerit aliquam ultricies. Maecenas posuere mi sapien, vitae pharetra est blandit eu. Vivamus vestibulum placerat nibh vel gravida. Donec faucibus odio tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ultrices, libero et facilisis condimentum, enim ipsum bibendum diam, eu rhoncus nisi sem vel odio. Nullam non consectetur eros. Nullam dui tortor, congue et dapibus quis, vestibulum eget sapien. Integer egestas massa eros, at condimentum ante fringilla nec. Mauris condimentum accumsan nibh, sit amet placerat ipsum laoreet et. Donec varius, metus nec rutrum sollicitudin, eros mi aliquet nunc, posuere facilisis risus arcu at dolor. Aliquam volutpat metus non porttitor lacinia. Aenean fringilla, ante at euismod feugiat, elit nunc venenatis urna, id bibendum lectus nunc ac libero. Pellentesque a risus nec tellus laoreet luctus et et diam. Vivamus odio erat, semper nec feugiat in, iaculis id dolor. Integer quis dictum nisi. Praesent molestie sagittis arcu faucibus congue. Donec eget tellus tempus nibh lobortis pharetra et ut urna. Etiam elementum mi sit amet elit blandit consectetur. Donec dolor justo, tempor sit amet tempus lacinia, maximus sed lorem.</p>\n<!-- /wp:paragraph -->', 'Post 4', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-11-30 04:22:52', '2019-11-30 04:22:52', '', 12, 'http://localhost/wordpress/index.php/2019/11/30/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2019-11-30 05:24:19', '2019-11-30 05:24:19', '<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://localhost/wordpress.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-11-30 05:24:19', '2019-11-30 05:24:19', '', 3, 'http://localhost/wordpress/index.php/2019/11/30/3-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-11-30 05:24:37', '2019-11-30 05:24:37', '<!-- wp:paragraph -->\n<p>Aenean eget justo in lorem pulvinar fermentum. Nunc venenatis eleifend lectus, eu mollis nisi malesuada id. Cras convallis, velit nec malesuada ultricies, velit turpis bibendum neque, nec tempor massa lorem non libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget sagittis tellus. Sed hendrerit aliquam ultricies. Maecenas posuere mi sapien, vitae pharetra est blandit eu. Vivamus vestibulum placerat nibh vel gravida. Donec faucibus odio tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ultrices, libero et facilisis condimentum, enim ipsum bibendum diam, eu rhoncus nisi sem vel odio. Nullam non consectetur eros. Nullam dui tortor, congue et dapibus quis, vestibulum eget sapien. Integer egestas massa eros, at condimentum ante fringilla nec. Mauris condimentum accumsan nibh, sit amet placerat ipsum laoreet et. Donec varius, metus nec rutrum sollicitudin, eros mi aliquet nunc, posuere facilisis risus arcu at dolor. Aliquam volutpat metus non porttitor lacinia. Aenean fringilla, ante at euismod feugiat, elit nunc venenatis urna, id bibendum lectus nunc ac libero. Pellentesque a risus nec tellus laoreet luctus et et diam. Vivamus odio erat, semper nec feugiat in, iaculis id dolor. Integer quis dictum nisi. Praesent molestie sagittis arcu faucibus congue. Donec eget tellus tempus nibh lobortis pharetra et ut urna. Etiam elementum mi sit amet elit blandit consectetur. Donec dolor justo, tempor sit amet tempus lacinia, maximus sed lorem.</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-11-30 19:30:42', '2019-11-30 14:00:42', '', 0, 'http://localhost/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-11-30 05:24:37', '2019-11-30 05:24:37', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-11-30 05:24:37', '2019-11-30 05:24:37', '', 15, 'http://localhost/wordpress/index.php/2019/11/30/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-11-30 05:24:57', '2019-11-30 05:24:57', '<!-- wp:paragraph -->\n<p>Aenean eget justo in lorem pulvinar fermentum. Nunc venenatis eleifend lectus, eu mollis nisi malesuada id. Cras convallis, velit nec malesuada ultricies, velit turpis bibendum neque, nec tempor massa lorem non libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget sagittis tellus. Sed hendrerit aliquam ultricies. Maecenas posuere mi sapien, vitae pharetra est blandit eu. Vivamus vestibulum placerat nibh vel gravida. Donec faucibus odio tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ultrices, libero et facilisis condimentum, enim ipsum bibendum diam, eu rhoncus nisi sem vel odio. Nullam non consectetur eros. Nullam dui tortor, congue et dapibus quis, vestibulum eget sapien. Integer egestas massa eros, at condimentum ante fringilla nec. Mauris condimentum accumsan nibh, sit amet placerat ipsum laoreet et. Donec varius, metus nec rutrum sollicitudin, eros mi aliquet nunc, posuere facilisis risus arcu at dolor. Aliquam volutpat metus non porttitor lacinia. Aenean fringilla, ante at euismod feugiat, elit nunc venenatis urna, id bibendum lectus nunc ac libero. Pellentesque a risus nec tellus laoreet luctus et et diam. Vivamus odio erat, semper nec feugiat in, iaculis id dolor. Integer quis dictum nisi. Praesent molestie sagittis arcu faucibus congue. Donec eget tellus tempus nibh lobortis pharetra et ut urna. Etiam elementum mi sit amet elit blandit consectetur. Donec dolor justo, tempor sit amet tempus lacinia, maximus sed lorem.</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-11-30 05:24:57', '2019-11-30 05:24:57', '', 15, 'http://localhost/wordpress/index.php/2019/11/30/15-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-11-30 05:25:15', '2019-11-30 05:25:15', '<!-- wp:paragraph -->\n<p>Aenean eget justo in lorem pulvinar fermentum. Nunc venenatis eleifend lectus, eu mollis nisi malesuada id. Cras convallis, velit nec malesuada ultricies, velit turpis bibendum neque, nec tempor massa lorem non libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget sagittis tellus. Sed hendrerit aliquam ultricies. Maecenas posuere mi sapien, vitae pharetra est blandit eu. Vivamus vestibulum placerat nibh vel gravida. Donec faucibus odio tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ultrices, libero et facilisis condimentum, enim ipsum bibendum diam, eu rhoncus nisi sem vel odio. Nullam non consectetur eros. Nullam dui tortor, congue et dapibus quis, vestibulum eget sapien. Integer egestas massa eros, at condimentum ante fringilla nec. Mauris condimentum accumsan nibh, sit amet placerat ipsum laoreet et. Donec varius, metus nec rutrum sollicitudin, eros mi aliquet nunc, posuere facilisis risus arcu at dolor. Aliquam volutpat metus non porttitor lacinia. Aenean fringilla, ante at euismod feugiat, elit nunc venenatis urna, id bibendum lectus nunc ac libero. Pellentesque a risus nec tellus laoreet luctus et et diam. Vivamus odio erat, semper nec feugiat in, iaculis id dolor. Integer quis dictum nisi. Praesent molestie sagittis arcu faucibus congue. Donec eget tellus tempus nibh lobortis pharetra et ut urna. Etiam elementum mi sit amet elit blandit consectetur. Donec dolor justo, tempor sit amet tempus lacinia, maximus sed lorem.</p>\n<!-- /wp:paragraph -->', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2019-11-30 05:25:15', '2019-11-30 05:25:15', '', 0, 'http://localhost/wordpress/?page_id=18', 0, 'page', '', 0),
(19, 1, '2019-11-30 05:25:15', '2019-11-30 05:25:15', '<!-- wp:paragraph -->\n<p>Aenean eget justo in lorem pulvinar fermentum. Nunc venenatis eleifend lectus, eu mollis nisi malesuada id. Cras convallis, velit nec malesuada ultricies, velit turpis bibendum neque, nec tempor massa lorem non libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget sagittis tellus. Sed hendrerit aliquam ultricies. Maecenas posuere mi sapien, vitae pharetra est blandit eu. Vivamus vestibulum placerat nibh vel gravida. Donec faucibus odio tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ultrices, libero et facilisis condimentum, enim ipsum bibendum diam, eu rhoncus nisi sem vel odio. Nullam non consectetur eros. Nullam dui tortor, congue et dapibus quis, vestibulum eget sapien. Integer egestas massa eros, at condimentum ante fringilla nec. Mauris condimentum accumsan nibh, sit amet placerat ipsum laoreet et. Donec varius, metus nec rutrum sollicitudin, eros mi aliquet nunc, posuere facilisis risus arcu at dolor. Aliquam volutpat metus non porttitor lacinia. Aenean fringilla, ante at euismod feugiat, elit nunc venenatis urna, id bibendum lectus nunc ac libero. Pellentesque a risus nec tellus laoreet luctus et et diam. Vivamus odio erat, semper nec feugiat in, iaculis id dolor. Integer quis dictum nisi. Praesent molestie sagittis arcu faucibus congue. Donec eget tellus tempus nibh lobortis pharetra et ut urna. Etiam elementum mi sit amet elit blandit consectetur. Donec dolor justo, tempor sit amet tempus lacinia, maximus sed lorem.</p>\n<!-- /wp:paragraph -->', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-11-30 05:25:15', '2019-11-30 05:25:15', '', 18, 'http://localhost/wordpress/index.php/2019/11/30/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-11-30 05:25:38', '2019-11-30 05:25:38', '<!-- wp:paragraph -->\n<p>Aenean eget justo in lorem pulvinar fermentum. Nunc venenatis eleifend lectus, eu mollis nisi malesuada id. Cras convallis, velit nec malesuada ultricies, velit turpis bibendum neque, nec tempor massa lorem non libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget sagittis tellus. Sed hendrerit aliquam ultricies. Maecenas posuere mi sapien, vitae pharetra est blandit eu. Vivamus vestibulum placerat nibh vel gravida. Donec faucibus odio tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ultrices, libero et facilisis condimentum, enim ipsum bibendum diam, eu rhoncus nisi sem vel odio. Nullam non consectetur eros. Nullam dui tortor, congue et dapibus quis, vestibulum eget sapien. Integer egestas massa eros, at condimentum ante fringilla nec. Mauris condimentum accumsan nibh, sit amet placerat ipsum laoreet et. Donec varius, metus nec rutrum sollicitudin, eros mi aliquet nunc, posuere facilisis risus arcu at dolor. Aliquam volutpat metus non porttitor lacinia. Aenean fringilla, ante at euismod feugiat, elit nunc venenatis urna, id bibendum lectus nunc ac libero. Pellentesque a risus nec tellus laoreet luctus et et diam. Vivamus odio erat, semper nec feugiat in, iaculis id dolor. Integer quis dictum nisi. Praesent molestie sagittis arcu faucibus congue. Donec eget tellus tempus nibh lobortis pharetra et ut urna. Etiam elementum mi sit amet elit blandit consectetur. Donec dolor justo, tempor sit amet tempus lacinia, maximus sed lorem.</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-11-30 05:25:38', '2019-11-30 05:25:38', '', 0, 'http://localhost/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2019-11-30 05:25:38', '2019-11-30 05:25:38', '<!-- wp:paragraph -->\n<p>Aenean eget justo in lorem pulvinar fermentum. Nunc venenatis eleifend lectus, eu mollis nisi malesuada id. Cras convallis, velit nec malesuada ultricies, velit turpis bibendum neque, nec tempor massa lorem non libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget sagittis tellus. Sed hendrerit aliquam ultricies. Maecenas posuere mi sapien, vitae pharetra est blandit eu. Vivamus vestibulum placerat nibh vel gravida. Donec faucibus odio tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ultrices, libero et facilisis condimentum, enim ipsum bibendum diam, eu rhoncus nisi sem vel odio. Nullam non consectetur eros. Nullam dui tortor, congue et dapibus quis, vestibulum eget sapien. Integer egestas massa eros, at condimentum ante fringilla nec. Mauris condimentum accumsan nibh, sit amet placerat ipsum laoreet et. Donec varius, metus nec rutrum sollicitudin, eros mi aliquet nunc, posuere facilisis risus arcu at dolor. Aliquam volutpat metus non porttitor lacinia. Aenean fringilla, ante at euismod feugiat, elit nunc venenatis urna, id bibendum lectus nunc ac libero. Pellentesque a risus nec tellus laoreet luctus et et diam. Vivamus odio erat, semper nec feugiat in, iaculis id dolor. Integer quis dictum nisi. Praesent molestie sagittis arcu faucibus congue. Donec eget tellus tempus nibh lobortis pharetra et ut urna. Etiam elementum mi sit amet elit blandit consectetur. Donec dolor justo, tempor sit amet tempus lacinia, maximus sed lorem.</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-11-30 05:25:38', '2019-11-30 05:25:38', '', 20, 'http://localhost/wordpress/index.php/2019/11/30/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-11-30 05:26:58', '2019-11-30 05:26:58', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2019-11-30 19:31:33', '2019-11-30 14:01:33', '', 0, 'http://localhost/wordpress/?p=22', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(23, 1, '2019-11-30 05:26:58', '2019-11-30 05:26:58', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2019-11-30 19:31:34', '2019-11-30 14:01:34', '', 0, 'http://localhost/wordpress/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2019-11-30 05:26:59', '2019-11-30 05:26:59', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2019-11-30 19:31:34', '2019-11-30 14:01:34', '', 0, 'http://localhost/wordpress/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2019-11-30 05:34:05', '2019-11-30 05:34:05', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2019-11-30 05:34:05', '2019-11-30 05:34:05', '', 0, 'http://localhost/wordpress/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2019-11-30 05:34:05', '2019-11-30 05:34:05', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2019-11-30 05:34:05', '2019-11-30 05:34:05', '', 0, 'http://localhost/wordpress/?p=26', 2, 'nav_menu_item', '', 0),
(27, 1, '2019-11-30 05:34:06', '2019-11-30 05:34:06', '', 'Github', '', 'publish', 'closed', 'closed', '', 'github', '', '', '2019-11-30 05:34:06', '2019-11-30 05:34:06', '', 0, 'http://localhost/wordpress/?p=27', 3, 'nav_menu_item', '', 0),
(28, 1, '2019-11-30 05:35:45', '2019-11-30 05:35:45', '<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi nec sapien porttitor, dictum ligula id, pulvinar leo. Curabitur et purus viverra, scelerisque lorem ut, eleifend diam. Quisque sed turpis elit. Morbi volutpat felis purus, vel consectetur odio finibus eu. Aenean varius tellus ex, sit amet pulvinar magna fermentum quis. Morbi tincidunt scelerisque augue pulvinar congue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque dapibus sapien id ultricies eleifend. Fusce nulla lorem, auctor sed elementum et, posuere ac elit. Suspendisse commodo ut risus vitae viverra. Nunc nec quam vel libero commodo interdum. In blandit tellus purus, sed sagittis massa sodales nec. Nam volutpat quam vitae luctus porta. Nullam rutrum cursus pharetra. Nunc fringilla non lacus sit amet vehicula. Cras dictum in odio at consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean eget justo in lorem pulvinar fermentum. Nunc venenatis eleifend lectus, eu mollis nisi malesuada id. Cras convallis, velit nec malesuada ultricies, velit turpis bibendum neque, nec tempor massa lorem non libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget sagittis tellus. Sed hendrerit aliquam ultricies. Maecenas posuere mi sapien, vitae pharetra est blandit eu. Vivamus vestibulum placerat nibh vel gravida. Donec faucibus odio tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ultrices, libero et facilisis condimentum, enim ipsum bibendum diam, eu rhoncus nisi sem vel odio. Nullam non consectetur eros. Nullam dui tortor, congue et dapibus quis, vestibulum eget sapien. Integer egestas massa eros, at condimentum ante fringilla nec. Mauris condimentum accumsan nibh, sit amet placerat ipsum laoreet et. Donec varius, metus nec rutrum sollicitudin, eros mi aliquet nunc, posuere facilisis risus arcu at dolor. Aliquam volutpat metus non porttitor lacinia. Aenean fringilla, ante at euismod feugiat, elit nunc venenatis urna, id bibendum lectus nunc ac libero. Pellentesque a risus nec tellus laoreet luctus et et diam. Vivamus odio erat, semper nec feugiat in, iaculis id dolor. Integer quis dictum nisi. Praesent molestie sagittis arcu faucibus congue. Donec eget tellus tempus nibh lobortis pharetra et ut urna. Etiam elementum mi sit amet elit blandit consectetur. Donec dolor justo, tempor sit amet tempus lacinia, maximus sed lorem.</p>\n<!-- /wp:paragraph -->', 'Post 5', '', 'publish', 'open', 'open', '', 'post-5', '', '', '2019-11-30 05:35:45', '2019-11-30 05:35:45', '', 0, 'http://localhost/wordpress/?p=28', 0, 'post', '', 0),
(29, 1, '2019-11-30 05:35:45', '2019-11-30 05:35:45', '<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi nec sapien porttitor, dictum ligula id, pulvinar leo. Curabitur et purus viverra, scelerisque lorem ut, eleifend diam. Quisque sed turpis elit. Morbi volutpat felis purus, vel consectetur odio finibus eu. Aenean varius tellus ex, sit amet pulvinar magna fermentum quis. Morbi tincidunt scelerisque augue pulvinar congue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque dapibus sapien id ultricies eleifend. Fusce nulla lorem, auctor sed elementum et, posuere ac elit. Suspendisse commodo ut risus vitae viverra. Nunc nec quam vel libero commodo interdum. In blandit tellus purus, sed sagittis massa sodales nec. Nam volutpat quam vitae luctus porta. Nullam rutrum cursus pharetra. Nunc fringilla non lacus sit amet vehicula. Cras dictum in odio at consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean eget justo in lorem pulvinar fermentum. Nunc venenatis eleifend lectus, eu mollis nisi malesuada id. Cras convallis, velit nec malesuada ultricies, velit turpis bibendum neque, nec tempor massa lorem non libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget sagittis tellus. Sed hendrerit aliquam ultricies. Maecenas posuere mi sapien, vitae pharetra est blandit eu. Vivamus vestibulum placerat nibh vel gravida. Donec faucibus odio tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ultrices, libero et facilisis condimentum, enim ipsum bibendum diam, eu rhoncus nisi sem vel odio. Nullam non consectetur eros. Nullam dui tortor, congue et dapibus quis, vestibulum eget sapien. Integer egestas massa eros, at condimentum ante fringilla nec. Mauris condimentum accumsan nibh, sit amet placerat ipsum laoreet et. Donec varius, metus nec rutrum sollicitudin, eros mi aliquet nunc, posuere facilisis risus arcu at dolor. Aliquam volutpat metus non porttitor lacinia. Aenean fringilla, ante at euismod feugiat, elit nunc venenatis urna, id bibendum lectus nunc ac libero. Pellentesque a risus nec tellus laoreet luctus et et diam. Vivamus odio erat, semper nec feugiat in, iaculis id dolor. Integer quis dictum nisi. Praesent molestie sagittis arcu faucibus congue. Donec eget tellus tempus nibh lobortis pharetra et ut urna. Etiam elementum mi sit amet elit blandit consectetur. Donec dolor justo, tempor sit amet tempus lacinia, maximus sed lorem.</p>\n<!-- /wp:paragraph -->', 'Post 5', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-11-30 05:35:45', '2019-11-30 05:35:45', '', 28, 'http://localhost/wordpress/index.php/2019/11/30/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-11-30 05:36:18', '2019-11-30 05:36:18', '<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi nec sapien porttitor, dictum ligula id, pulvinar leo. Curabitur et purus viverra, scelerisque lorem ut, eleifend diam. Quisque sed turpis elit. Morbi volutpat felis purus, vel consectetur odio finibus eu. Aenean varius tellus ex, sit amet pulvinar magna fermentum quis. Morbi tincidunt scelerisque augue pulvinar congue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque dapibus sapien id ultricies eleifend. Fusce nulla lorem, auctor sed elementum et, posuere ac elit. Suspendisse commodo ut risus vitae viverra. Nunc nec quam vel libero commodo interdum. In blandit tellus purus, sed sagittis massa sodales nec. Nam volutpat quam vitae luctus porta. Nullam rutrum cursus pharetra. Nunc fringilla non lacus sit amet vehicula. Cras dictum in odio at consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean eget justo in lorem pulvinar fermentum. Nunc venenatis eleifend lectus, eu mollis nisi malesuada id. Cras convallis, velit nec malesuada ultricies, velit turpis bibendum neque, nec tempor massa lorem non libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget sagittis tellus. Sed hendrerit aliquam ultricies. Maecenas posuere mi sapien, vitae pharetra est blandit eu. Vivamus vestibulum placerat nibh vel gravida. Donec faucibus odio tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ultrices, libero et facilisis condimentum, enim ipsum bibendum diam, eu rhoncus nisi sem vel odio. Nullam non consectetur eros. Nullam dui tortor, congue et dapibus quis, vestibulum eget sapien. Integer egestas massa eros, at condimentum ante fringilla nec. Mauris condimentum accumsan nibh, sit amet placerat ipsum laoreet et. Donec varius, metus nec rutrum sollicitudin, eros mi aliquet nunc, posuere facilisis risus arcu at dolor. Aliquam volutpat metus non porttitor lacinia. Aenean fringilla, ante at euismod feugiat, elit nunc venenatis urna, id bibendum lectus nunc ac libero. Pellentesque a risus nec tellus laoreet luctus et et diam. Vivamus odio erat, semper nec feugiat in, iaculis id dolor. Integer quis dictum nisi. Praesent molestie sagittis arcu faucibus congue. Donec eget tellus tempus nibh lobortis pharetra et ut urna. Etiam elementum mi sit amet elit blandit consectetur. Donec dolor justo, tempor sit amet tempus lacinia, maximus sed lorem.</p>\n<!-- /wp:paragraph -->', 'Post 6', '', 'publish', 'open', 'open', '', 'post-6', '', '', '2019-11-30 05:36:18', '2019-11-30 05:36:18', '', 0, 'http://localhost/wordpress/?p=30', 0, 'post', '', 0),
(31, 1, '2019-11-30 05:36:18', '2019-11-30 05:36:18', '<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi nec sapien porttitor, dictum ligula id, pulvinar leo. Curabitur et purus viverra, scelerisque lorem ut, eleifend diam. Quisque sed turpis elit. Morbi volutpat felis purus, vel consectetur odio finibus eu. Aenean varius tellus ex, sit amet pulvinar magna fermentum quis. Morbi tincidunt scelerisque augue pulvinar congue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque dapibus sapien id ultricies eleifend. Fusce nulla lorem, auctor sed elementum et, posuere ac elit. Suspendisse commodo ut risus vitae viverra. Nunc nec quam vel libero commodo interdum. In blandit tellus purus, sed sagittis massa sodales nec. Nam volutpat quam vitae luctus porta. Nullam rutrum cursus pharetra. Nunc fringilla non lacus sit amet vehicula. Cras dictum in odio at consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean eget justo in lorem pulvinar fermentum. Nunc venenatis eleifend lectus, eu mollis nisi malesuada id. Cras convallis, velit nec malesuada ultricies, velit turpis bibendum neque, nec tempor massa lorem non libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget sagittis tellus. Sed hendrerit aliquam ultricies. Maecenas posuere mi sapien, vitae pharetra est blandit eu. Vivamus vestibulum placerat nibh vel gravida. Donec faucibus odio tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ultrices, libero et facilisis condimentum, enim ipsum bibendum diam, eu rhoncus nisi sem vel odio. Nullam non consectetur eros. Nullam dui tortor, congue et dapibus quis, vestibulum eget sapien. Integer egestas massa eros, at condimentum ante fringilla nec. Mauris condimentum accumsan nibh, sit amet placerat ipsum laoreet et. Donec varius, metus nec rutrum sollicitudin, eros mi aliquet nunc, posuere facilisis risus arcu at dolor. Aliquam volutpat metus non porttitor lacinia. Aenean fringilla, ante at euismod feugiat, elit nunc venenatis urna, id bibendum lectus nunc ac libero. Pellentesque a risus nec tellus laoreet luctus et et diam. Vivamus odio erat, semper nec feugiat in, iaculis id dolor. Integer quis dictum nisi. Praesent molestie sagittis arcu faucibus congue. Donec eget tellus tempus nibh lobortis pharetra et ut urna. Etiam elementum mi sit amet elit blandit consectetur. Donec dolor justo, tempor sit amet tempus lacinia, maximus sed lorem.</p>\n<!-- /wp:paragraph -->', 'Post 6', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-11-30 05:36:18', '2019-11-30 05:36:18', '', 30, 'http://localhost/wordpress/index.php/2019/11/30/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-11-30 13:55:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-11-30 13:55:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=32', 0, 'page', '', 0),
(33, 1, '2019-11-30 13:57:06', '2019-11-30 08:27:06', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla tincidunt sapien non egestas aliquam. Donec in porttitor quam. Vestibulum laoreet nunc ex, id convallis purus tempus quis. Vestibulum eget nunc quis arcu interdum sodales eget at mi. Morbi nisi augue, viverra sit amet accumsan in, efficitur vel lorem. Etiam et egestas mi, ac imperdiet metus. Proin sed dolor nec massa sollicitudin cursus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In eu interdum libero. Nunc ullamcorper, urna in elementum efficitur, libero magna suscipit lectus, mollis ornare enim metus eleifend turpis. Suspendisse eu nisi sit amet tortor mollis facilisis eget vitae eros. Integer feugiat faucibus sem, quis rutrum ligula lacinia finibus. Sed quis purus fringilla, porttitor mauris varius, congue lectus. Duis ac volutpat urna, ut porttitor quam. In fringilla luctus congue. Etiam suscipit velit sit amet eros vulputate venenatis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean tincidunt tortor quis velit iaculis consequat. Curabitur vel eleifend nisl. Vivamus sed bibendum purus. Morbi imperdiet condimentum ante et hendrerit. Aenean ut tincidunt mauris. Aliquam id velit sed neque finibus porttitor molestie eu ante. Vestibulum facilisis arcu urna, quis maximus augue pellentesque vel. Mauris faucibus laoreet ex et rutrum. Morbi sed ex rutrum, cursus tortor a, faucibus ex. Nunc ornare blandit diam, quis scelerisque erat mollis in. Vestibulum at scelerisque quam. Maecenas felis risus, maximus ut nisi non, gravida commodo arcu. Integer vulputate tellus a nisi vestibulum pellentesque.</p>\n<!-- /wp:paragraph -->', 'Post 7', '', 'publish', 'open', 'open', '', 'post-7', '', '', '2019-11-30 13:57:06', '2019-11-30 08:27:06', '', 0, 'http://localhost/wordpress/?p=33', 0, 'post', '', 0),
(34, 1, '2019-11-30 13:57:06', '2019-11-30 08:27:06', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla tincidunt sapien non egestas aliquam. Donec in porttitor quam. Vestibulum laoreet nunc ex, id convallis purus tempus quis. Vestibulum eget nunc quis arcu interdum sodales eget at mi. Morbi nisi augue, viverra sit amet accumsan in, efficitur vel lorem. Etiam et egestas mi, ac imperdiet metus. Proin sed dolor nec massa sollicitudin cursus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In eu interdum libero. Nunc ullamcorper, urna in elementum efficitur, libero magna suscipit lectus, mollis ornare enim metus eleifend turpis. Suspendisse eu nisi sit amet tortor mollis facilisis eget vitae eros. Integer feugiat faucibus sem, quis rutrum ligula lacinia finibus. Sed quis purus fringilla, porttitor mauris varius, congue lectus. Duis ac volutpat urna, ut porttitor quam. In fringilla luctus congue. Etiam suscipit velit sit amet eros vulputate venenatis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean tincidunt tortor quis velit iaculis consequat. Curabitur vel eleifend nisl. Vivamus sed bibendum purus. Morbi imperdiet condimentum ante et hendrerit. Aenean ut tincidunt mauris. Aliquam id velit sed neque finibus porttitor molestie eu ante. Vestibulum facilisis arcu urna, quis maximus augue pellentesque vel. Mauris faucibus laoreet ex et rutrum. Morbi sed ex rutrum, cursus tortor a, faucibus ex. Nunc ornare blandit diam, quis scelerisque erat mollis in. Vestibulum at scelerisque quam. Maecenas felis risus, maximus ut nisi non, gravida commodo arcu. Integer vulputate tellus a nisi vestibulum pellentesque.</p>\n<!-- /wp:paragraph -->', 'Post 7', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-11-30 13:57:06', '2019-11-30 08:27:06', '', 33, 'http://localhost/wordpress/index.php/2019/11/30/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-11-30 19:31:15', '2019-11-30 14:01:15', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Special Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-11-30 19:31:15', '2019-11-30 14:01:15', '', 2, 'http://localhost/wordpress/index.php/2019/11/30/2-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-11-30 19:31:34', '2019-11-30 14:01:34', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2019-11-30 19:31:34', '2019-11-30 14:01:34', '', 0, 'http://localhost/wordpress/?p=36', 4, 'nav_menu_item', '', 0),
(37, 1, '2019-11-30 19:42:11', '2019-11-30 14:12:11', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam elementum dapibus blandit. Fusce sodales sem sed urna commodo, nec pretium risus tempor. Donec feugiat risus eu arcu dictum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer varius elit erat, vel vestibulum erat fermentum et. Phasellus sed viverra tellus. Proin id ante pulvinar, tincidunt dui ac, sodales nisl. Integer efficitur maximus dolor sit amet volutpat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur sit amet dolor cursus, ornare felis eget, venenatis massa. Curabitur vel lacus egestas, eleifend nulla ac, sodales purus. Maecenas in tortor sit amet elit posuere egestas eu egestas tellus. Nullam mollis ex turpis, non ornare ipsum pulvinar eget. Praesent venenatis libero nec efficitur egestas. Vivamus in dolor odio. Quisque arcu mi, pharetra vitae commodo in, sollicitudin id eros. Nullam eleifend ipsum eget elit cursus porta. Phasellus eu risus dolor. Donec gravida justo arcu, eu maximus erat semper a. Mauris pharetra blandit justo, pharetra tincidunt nisl luctus sit amet. Donec a tortor ante. Aenean sit amet tempus purus. Maecenas fringilla egestas augue et dignissim. Suspendisse tincidunt id erat at auctor. Sed vel suscipit nisi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed tristique est vel elit faucibus consequat eget in justo. Quisque suscipit posuere euismod. Suspendisse fringilla lorem in ultricies ornare. Fusce ultrices, tellus id dapibus varius, velit mi mollis augue, suscipit tempor elit ligula vel massa. Phasellus tempus odio mollis purus rhoncus maximus. Duis scelerisque eleifend efficitur. Aliquam facilisis ex eu ligula elementum, eget pretium arcu consequat. Mauris in nibh diam. Ut posuere quis massa non volutpat. Nunc mauris metus, mollis non libero id, lacinia aliquam felis. Aliquam tempor consequat laoreet. Donec sit amet libero eros. Duis pharetra dictum tempus. Quisque diam mi, eleifend eget auctor id, vestibulum sit amet tellus.</p>\n<!-- /wp:paragraph -->', 'Post 8', '', 'publish', 'open', 'open', '', 'post-8', '', '', '2019-11-30 19:42:36', '2019-11-30 14:12:36', '', 0, 'http://localhost/wordpress/?p=37', 0, 'post', '', 0),
(38, 1, '2019-11-30 19:42:11', '2019-11-30 14:12:11', '<!-- wp:html -->\n<figure><iframe src=\"https://tpc.googlesyndication.com/safeframe/1-0-36/html/container.html\" width=\"160\" height=\"600\"></iframe></figure>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam elementum dapibus blandit. Fusce sodales sem sed urna commodo, nec pretium risus tempor. Donec feugiat risus eu arcu dictum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer varius elit erat, vel vestibulum erat fermentum et. Phasellus sed viverra tellus. Proin id ante pulvinar, tincidunt dui ac, sodales nisl. Integer efficitur maximus dolor sit amet volutpat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur sit amet dolor cursus, ornare felis eget, venenatis massa. Curabitur vel lacus egestas, eleifend nulla ac, sodales purus. Maecenas in tortor sit amet elit posuere egestas eu egestas tellus. Nullam mollis ex turpis, non ornare ipsum pulvinar eget. Praesent venenatis libero nec efficitur egestas. Vivamus in dolor odio. Quisque arcu mi, pharetra vitae commodo in, sollicitudin id eros. Nullam eleifend ipsum eget elit cursus porta. Phasellus eu risus dolor. Donec gravida justo arcu, eu maximus erat semper a. Mauris pharetra blandit justo, pharetra tincidunt nisl luctus sit amet. Donec a tortor ante. Aenean sit amet tempus purus. Maecenas fringilla egestas augue et dignissim. Suspendisse tincidunt id erat at auctor. Sed vel suscipit nisi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed tristique est vel elit faucibus consequat eget in justo. Quisque suscipit posuere euismod. Suspendisse fringilla lorem in ultricies ornare. Fusce ultrices, tellus id dapibus varius, velit mi mollis augue, suscipit tempor elit ligula vel massa. Phasellus tempus odio mollis purus rhoncus maximus. Duis scelerisque eleifend efficitur. Aliquam facilisis ex eu ligula elementum, eget pretium arcu consequat. Mauris in nibh diam. Ut posuere quis massa non volutpat. Nunc mauris metus, mollis non libero id, lacinia aliquam felis. Aliquam tempor consequat laoreet. Donec sit amet libero eros. Duis pharetra dictum tempus. Quisque diam mi, eleifend eget auctor id, vestibulum sit amet tellus.</p>\n<!-- /wp:paragraph -->', 'Post 8', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-11-30 19:42:11', '2019-11-30 14:12:11', '', 37, 'http://localhost/wordpress/index.php/2019/11/30/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2019-11-30 19:42:36', '2019-11-30 14:12:36', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam elementum dapibus blandit. Fusce sodales sem sed urna commodo, nec pretium risus tempor. Donec feugiat risus eu arcu dictum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer varius elit erat, vel vestibulum erat fermentum et. Phasellus sed viverra tellus. Proin id ante pulvinar, tincidunt dui ac, sodales nisl. Integer efficitur maximus dolor sit amet volutpat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur sit amet dolor cursus, ornare felis eget, venenatis massa. Curabitur vel lacus egestas, eleifend nulla ac, sodales purus. Maecenas in tortor sit amet elit posuere egestas eu egestas tellus. Nullam mollis ex turpis, non ornare ipsum pulvinar eget. Praesent venenatis libero nec efficitur egestas. Vivamus in dolor odio. Quisque arcu mi, pharetra vitae commodo in, sollicitudin id eros. Nullam eleifend ipsum eget elit cursus porta. Phasellus eu risus dolor. Donec gravida justo arcu, eu maximus erat semper a. Mauris pharetra blandit justo, pharetra tincidunt nisl luctus sit amet. Donec a tortor ante. Aenean sit amet tempus purus. Maecenas fringilla egestas augue et dignissim. Suspendisse tincidunt id erat at auctor. Sed vel suscipit nisi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed tristique est vel elit faucibus consequat eget in justo. Quisque suscipit posuere euismod. Suspendisse fringilla lorem in ultricies ornare. Fusce ultrices, tellus id dapibus varius, velit mi mollis augue, suscipit tempor elit ligula vel massa. Phasellus tempus odio mollis purus rhoncus maximus. Duis scelerisque eleifend efficitur. Aliquam facilisis ex eu ligula elementum, eget pretium arcu consequat. Mauris in nibh diam. Ut posuere quis massa non volutpat. Nunc mauris metus, mollis non libero id, lacinia aliquam felis. Aliquam tempor consequat laoreet. Donec sit amet libero eros. Duis pharetra dictum tempus. Quisque diam mi, eleifend eget auctor id, vestibulum sit amet tellus.</p>\n<!-- /wp:paragraph -->', 'Post 8', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-11-30 19:42:36', '2019-11-30 14:12:36', '', 37, 'http://localhost/wordpress/index.php/2019/11/30/37-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-11-30 19:56:00', '2019-11-30 14:26:00', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam elementum dapibus blandit. Fusce sodales sem sed urna commodo, nec pretium risus tempor. Donec feugiat risus eu arcu dictum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer varius elit erat, vel vestibulum erat fermentum et. Phasellus sed viverra tellus. Proin id ante pulvinar, tincidunt dui ac, sodales nisl. Integer efficitur maximus dolor sit amet volutpat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur sit amet dolor cursus, ornare felis eget, venenatis massa. Curabitur vel lacus egestas, eleifend nulla ac, sodales purus. Maecenas in tortor sit amet elit posuere egestas eu egestas tellus. Nullam mollis ex turpis, non ornare ipsum pulvinar eget. Praesent venenatis libero nec efficitur egestas. Vivamus in dolor odio. Quisque arcu mi, pharetra vitae commodo in, sollicitudin id eros. Nullam eleifend ipsum eget elit cursus porta. Phasellus eu risus dolor. Donec gravida justo arcu, eu maximus erat semper a. Mauris pharetra blandit justo, pharetra tincidunt nisl luctus sit amet. Donec a tortor ante. Aenean sit amet tempus purus. Maecenas fringilla egestas augue et dignissim. Suspendisse tincidunt id erat at auctor. Sed vel suscipit nisi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed tristique est vel elit faucibus consequat eget in justo. Quisque suscipit posuere euismod. Suspendisse fringilla lorem in ultricies ornare. Fusce ultrices, tellus id dapibus varius, velit mi mollis augue, suscipit tempor elit ligula vel massa. Phasellus tempus odio mollis purus rhoncus maximus. Duis scelerisque eleifend efficitur. Aliquam facilisis ex eu ligula elementum, eget pretium arcu consequat. Mauris in nibh diam. Ut posuere quis massa non volutpat. Nunc mauris metus, mollis non libero id, lacinia aliquam felis. Aliquam tempor consequat laoreet. Donec sit amet libero eros. Duis pharetra dictum tempus. Quisque diam mi, eleifend eget auctor id, vestibulum sit amet tellus.</p>\n<!-- /wp:paragraph -->', 'Who are We?', '', 'publish', 'closed', 'closed', '', 'who-are-we', '', '', '2019-11-30 19:56:00', '2019-11-30 14:26:00', '', 20, 'http://localhost/wordpress/?page_id=40', 0, 'page', '', 0),
(41, 1, '2019-11-30 19:56:00', '2019-11-30 14:26:00', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam elementum dapibus blandit. Fusce sodales sem sed urna commodo, nec pretium risus tempor. Donec feugiat risus eu arcu dictum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer varius elit erat, vel vestibulum erat fermentum et. Phasellus sed viverra tellus. Proin id ante pulvinar, tincidunt dui ac, sodales nisl. Integer efficitur maximus dolor sit amet volutpat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur sit amet dolor cursus, ornare felis eget, venenatis massa. Curabitur vel lacus egestas, eleifend nulla ac, sodales purus. Maecenas in tortor sit amet elit posuere egestas eu egestas tellus. Nullam mollis ex turpis, non ornare ipsum pulvinar eget. Praesent venenatis libero nec efficitur egestas. Vivamus in dolor odio. Quisque arcu mi, pharetra vitae commodo in, sollicitudin id eros. Nullam eleifend ipsum eget elit cursus porta. Phasellus eu risus dolor. Donec gravida justo arcu, eu maximus erat semper a. Mauris pharetra blandit justo, pharetra tincidunt nisl luctus sit amet. Donec a tortor ante. Aenean sit amet tempus purus. Maecenas fringilla egestas augue et dignissim. Suspendisse tincidunt id erat at auctor. Sed vel suscipit nisi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed tristique est vel elit faucibus consequat eget in justo. Quisque suscipit posuere euismod. Suspendisse fringilla lorem in ultricies ornare. Fusce ultrices, tellus id dapibus varius, velit mi mollis augue, suscipit tempor elit ligula vel massa. Phasellus tempus odio mollis purus rhoncus maximus. Duis scelerisque eleifend efficitur. Aliquam facilisis ex eu ligula elementum, eget pretium arcu consequat. Mauris in nibh diam. Ut posuere quis massa non volutpat. Nunc mauris metus, mollis non libero id, lacinia aliquam felis. Aliquam tempor consequat laoreet. Donec sit amet libero eros. Duis pharetra dictum tempus. Quisque diam mi, eleifend eget auctor id, vestibulum sit amet tellus.</p>\n<!-- /wp:paragraph -->', 'Who are We?', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-11-30 19:56:00', '2019-11-30 14:26:00', '', 40, 'http://localhost/wordpress/index.php/2019/11/30/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-11-30 19:56:23', '2019-11-30 14:26:23', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam elementum dapibus blandit. Fusce sodales sem sed urna commodo, nec pretium risus tempor. Donec feugiat risus eu arcu dictum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer varius elit erat, vel vestibulum erat fermentum et. Phasellus sed viverra tellus. Proin id ante pulvinar, tincidunt dui ac, sodales nisl. Integer efficitur maximus dolor sit amet volutpat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur sit amet dolor cursus, ornare felis eget, venenatis massa. Curabitur vel lacus egestas, eleifend nulla ac, sodales purus. Maecenas in tortor sit amet elit posuere egestas eu egestas tellus. Nullam mollis ex turpis, non ornare ipsum pulvinar eget. Praesent venenatis libero nec efficitur egestas. Vivamus in dolor odio. Quisque arcu mi, pharetra vitae commodo in, sollicitudin id eros. Nullam eleifend ipsum eget elit cursus porta. Phasellus eu risus dolor. Donec gravida justo arcu, eu maximus erat semper a. Mauris pharetra blandit justo, pharetra tincidunt nisl luctus sit amet. Donec a tortor ante. Aenean sit amet tempus purus. Maecenas fringilla egestas augue et dignissim. Suspendisse tincidunt id erat at auctor. Sed vel suscipit nisi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed tristique est vel elit faucibus consequat eget in justo. Quisque suscipit posuere euismod. Suspendisse fringilla lorem in ultricies ornare. Fusce ultrices, tellus id dapibus varius, velit mi mollis augue, suscipit tempor elit ligula vel massa. Phasellus tempus odio mollis purus rhoncus maximus. Duis scelerisque eleifend efficitur. Aliquam facilisis ex eu ligula elementum, eget pretium arcu consequat. Mauris in nibh diam. Ut posuere quis massa non volutpat. Nunc mauris metus, mollis non libero id, lacinia aliquam felis. Aliquam tempor consequat laoreet. Donec sit amet libero eros. Duis pharetra dictum tempus. Quisque diam mi, eleifend eget auctor id, vestibulum sit amet tellus.</p>\n<!-- /wp:paragraph -->', 'Why Join Us?', '', 'publish', 'closed', 'closed', '', 'why-join-us', '', '', '2019-11-30 19:56:23', '2019-11-30 14:26:23', '', 20, 'http://localhost/wordpress/?page_id=42', 0, 'page', '', 0),
(43, 1, '2019-11-30 19:56:23', '2019-11-30 14:26:23', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam elementum dapibus blandit. Fusce sodales sem sed urna commodo, nec pretium risus tempor. Donec feugiat risus eu arcu dictum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer varius elit erat, vel vestibulum erat fermentum et. Phasellus sed viverra tellus. Proin id ante pulvinar, tincidunt dui ac, sodales nisl. Integer efficitur maximus dolor sit amet volutpat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur sit amet dolor cursus, ornare felis eget, venenatis massa. Curabitur vel lacus egestas, eleifend nulla ac, sodales purus. Maecenas in tortor sit amet elit posuere egestas eu egestas tellus. Nullam mollis ex turpis, non ornare ipsum pulvinar eget. Praesent venenatis libero nec efficitur egestas. Vivamus in dolor odio. Quisque arcu mi, pharetra vitae commodo in, sollicitudin id eros. Nullam eleifend ipsum eget elit cursus porta. Phasellus eu risus dolor. Donec gravida justo arcu, eu maximus erat semper a. Mauris pharetra blandit justo, pharetra tincidunt nisl luctus sit amet. Donec a tortor ante. Aenean sit amet tempus purus. Maecenas fringilla egestas augue et dignissim. Suspendisse tincidunt id erat at auctor. Sed vel suscipit nisi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed tristique est vel elit faucibus consequat eget in justo. Quisque suscipit posuere euismod. Suspendisse fringilla lorem in ultricies ornare. Fusce ultrices, tellus id dapibus varius, velit mi mollis augue, suscipit tempor elit ligula vel massa. Phasellus tempus odio mollis purus rhoncus maximus. Duis scelerisque eleifend efficitur. Aliquam facilisis ex eu ligula elementum, eget pretium arcu consequat. Mauris in nibh diam. Ut posuere quis massa non volutpat. Nunc mauris metus, mollis non libero id, lacinia aliquam felis. Aliquam tempor consequat laoreet. Donec sit amet libero eros. Duis pharetra dictum tempus. Quisque diam mi, eleifend eget auctor id, vestibulum sit amet tellus.</p>\n<!-- /wp:paragraph -->', 'Why Join Us?', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2019-11-30 19:56:23', '2019-11-30 14:26:23', '', 42, 'http://localhost/wordpress/index.php/2019/11/30/42-revision-v1/', 0, 'revision', '', 0),
(44, 2, '2019-12-01 20:21:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-01 20:21:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=44', 0, 'post', '', 0),
(45, 2, '2019-12-01 20:22:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-12-01 20:22:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=45', 0, 'page', '', 0),
(46, 2, '2019-12-01 20:22:32', '2019-12-01 14:52:32', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam elementum dapibus blandit. Fusce sodales sem sed urna commodo, nec pretium risus tempor. Donec feugiat risus eu arcu dictum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer varius elit erat, vel vestibulum erat fermentum et. Phasellus sed viverra tellus. Proin id ante pulvinar, tincidunt dui ac, sodales nisl. Integer efficitur maximus dolor sit amet volutpat.</p>\n<!-- /wp:paragraph -->', 'Post 9', '', 'publish', 'open', 'open', '', 'post-9', '', '', '2019-12-01 20:22:57', '2019-12-01 14:52:57', '', 0, 'http://localhost/wordpress/?p=46', 0, 'post', '', 0),
(47, 2, '2019-12-01 20:22:32', '2019-12-01 14:52:32', '', 'Post 9', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2019-12-01 20:22:32', '2019-12-01 14:52:32', '', 46, 'http://localhost/wordpress/?p=47', 0, 'revision', '', 0),
(48, 2, '2019-12-01 20:22:57', '2019-12-01 14:52:57', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam elementum dapibus blandit. Fusce sodales sem sed urna commodo, nec pretium risus tempor. Donec feugiat risus eu arcu dictum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer varius elit erat, vel vestibulum erat fermentum et. Phasellus sed viverra tellus. Proin id ante pulvinar, tincidunt dui ac, sodales nisl. Integer efficitur maximus dolor sit amet volutpat.</p>\n<!-- /wp:paragraph -->', 'Post 9', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2019-12-01 20:22:57', '2019-12-01 14:52:57', '', 46, 'http://localhost/wordpress/?p=48', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'All Categories', 'all', 0),
(3, 'CSS', 'css', 0),
(4, 'Javascript', 'js', 0),
(5, 'Main Menu', 'main-menu', 0),
(6, 'Footer Menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 4, 0),
(5, 4, 0),
(7, 3, 0),
(9, 3, 0),
(12, 4, 0),
(22, 5, 0),
(23, 5, 0),
(24, 5, 0),
(25, 6, 0),
(26, 6, 0),
(27, 6, 0),
(28, 3, 0),
(30, 4, 0),
(33, 4, 0),
(36, 5, 0),
(37, 1, 0),
(46, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 2, 3),
(4, 4, 'category', '', 2, 5),
(5, 5, 'nav_menu', '', 0, 4),
(6, 6, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'girishgv21'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '6'),
(21, 2, 'nickname', 'guest'),
(22, 2, 'first_name', 'Guest'),
(23, 2, 'last_name', 'One'),
(24, 2, 'description', ''),
(25, 2, 'rich_editing', 'true'),
(26, 2, 'syntax_highlighting', 'true'),
(27, 2, 'comment_shortcuts', 'false'),
(28, 2, 'admin_color', 'fresh'),
(29, 2, 'use_ssl', '0'),
(30, 2, 'show_admin_bar_front', 'true'),
(31, 2, 'locale', ''),
(32, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(33, 2, 'wp_user_level', '10'),
(34, 2, 'dismissed_wp_pointers', ''),
(35, 2, 'session_tokens', 'a:1:{s:64:\"9fd19913d9b1fc702ce8bf9a5c2442a867ce86a5c99ab298327cca6be496fe92\";a:4:{s:10:\"expiration\";i:1576421494;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36\";s:5:\"login\";i:1575211894;}}'),
(36, 2, 'wp_dashboard_quick_press_last_post_id', '44');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'girishgv21', '$P$BandBhQQLpOG8Xr2nSS9JXmEHQyLnD/', 'girishgv21', 'girishgv21@gmail.com', '', '2019-11-29 16:29:45', '', 0, 'girishgv21'),
(2, 'guest', '$P$BoEsr8DSlWgRvvzB54nrGDpXL88pva0', 'guest', 'guest@gmail.com', '', '2019-12-01 14:51:20', '1575211881:$P$BgUvWXpiLj0KnHZW62Gm1XTmAl34Zf0', 0, 'Guest One');

--
-- Indexes for dumped tables
--

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
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
