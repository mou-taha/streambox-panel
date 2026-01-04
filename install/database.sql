-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 16, 2025 at 12:12 PM
-- Server version: 10.6.23-MariaDB-cll-lve-log
-- PHP Version: 8.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nemosoftss_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activation_code`
--

CREATE TABLE `tbl_activation_code` (
  `id` int(10) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'xui',
  `user_name` varchar(60) NOT NULL,
  `user_password` text NOT NULL,
  `dns_base` text NOT NULL,
  `activation_code` text NOT NULL,
  `registered_on` varchar(200) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT 1,
  `admin_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `admin_type` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `email`, `image`, `status`, `admin_type`) VALUES
(1, 'admin', '$2y$10$NDJvTu9eFC7MQj2oUpNGfOQ1o5sSF3acUwXElCXa7Ek7n13/2Eayy', 'info.nemosoftso@gmail.com', '', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advertisement`
--

CREATE TABLE `tbl_advertisement` (
  `id` int(11) NOT NULL,
  `ad_status` varchar(10) NOT NULL DEFAULT 'false',
  `ad_network` varchar(30) NOT NULL DEFAULT 'admob',
  `admob_publisher_id` text NOT NULL,
  `admob_banner_unit_id` text NOT NULL,
  `admob_interstitial_unit_id` text NOT NULL,
  `admob_native_unit_id` text NOT NULL,
  `admob_app_open_ad_unit_id` text NOT NULL,
  `admob_reward_ad_unit_id` text NOT NULL,
  `banner_movie` varchar(10) NOT NULL DEFAULT 'false',
  `banner_series` varchar(10) NOT NULL DEFAULT 'false',
  `banner_epg` varchar(10) NOT NULL DEFAULT 'false',
  `interstitial_post_list` varchar(10) NOT NULL DEFAULT 'false',
  `reward_ad_on_movie` varchar(10) NOT NULL DEFAULT 'false',
  `reward_ad_on_episodes` varchar(10) NOT NULL DEFAULT 'false',
  `reward_ad_on_live` varchar(10) NOT NULL DEFAULT 'false',
  `reward_ad_on_single` varchar(10) NOT NULL DEFAULT 'false',
  `reward_ad_on_local` varchar(10) NOT NULL DEFAULT 'false',
  `interstital_ad_click` int(10) NOT NULL DEFAULT 5,
  `reward_minutes` int(10) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_advertisement`
--

INSERT INTO `tbl_advertisement` (`id`, `ad_status`, `ad_network`, `admob_publisher_id`, `admob_banner_unit_id`, `admob_interstitial_unit_id`, `admob_native_unit_id`, `admob_app_open_ad_unit_id`, `admob_reward_ad_unit_id`, `banner_movie`, `banner_series`, `banner_epg`, `interstitial_post_list`, `reward_ad_on_movie`, `reward_ad_on_episodes`, `reward_ad_on_live`, `reward_ad_on_single`, `reward_ad_on_local`, `interstital_ad_click`, `reward_minutes`) VALUES
(1, 'true', 'admob', 'ca-app-pub-3940256099942544', 'ca-app-pub-3940256099942544/6300978111', 'ca-app-pub-3940256099942544/1033173712', '', '', 'ca-app-pub-3940256099942544/5224354917', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_custom_ads`
--

CREATE TABLE `tbl_custom_ads` (
  `id` int(11) NOT NULL,
  `ads_type` varchar(255) NOT NULL,
  `ads_title` varchar(255) NOT NULL,
  `ads_image` varchar(255) NOT NULL,
  `ads_redirect_type` varchar(255) NOT NULL,
  `ads_redirect_url` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` int(11) NOT NULL,
  `notification_title` varchar(255) NOT NULL,
  `notification_msg` text NOT NULL,
  `notification_description` text NOT NULL,
  `notification_on` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_policy_deletion`
--

CREATE TABLE `tbl_policy_deletion` (
  `id` int(11) NOT NULL,
  `policy_type` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `report_msg` text NOT NULL,
  `deletion_on` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_poster_gallery`
--

CREATE TABLE `tbl_poster_gallery` (
  `id` int(11) NOT NULL,
  `poster_type` varchar(255) NOT NULL,
  `poster_image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_poster_gallery`
--

INSERT INTO `tbl_poster_gallery` (`id`, `poster_type`, `poster_image`, `status`) VALUES
(1, 'movie_ui', '89005_poster.jpg', 1),
(2, 'movie_ui', '68145_poster.jpg', 1),
(3, 'movie_ui', '11996_poster.jpg', 1),
(12, 'sports_ui', '85896_poster.jpg', 1),
(13, 'ramadan_ui', '89919_poster.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reports`
--

CREATE TABLE `tbl_reports` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `report_title` varchar(255) NOT NULL,
  `report_msg` text NOT NULL,
  `report_on` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_select_page`
--

CREATE TABLE `tbl_select_page` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `redirect_type` varchar(255) NOT NULL,
  `page_data` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_select_page`
--

INSERT INTO `tbl_select_page` (`id`, `title`, `redirect_type`, `page_data`, `status`) VALUES
(1, 'Select Page 1', 'internal', 'https://nemosofts.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `app_name` varchar(100) NOT NULL,
  `app_logo` varchar(200) NOT NULL,
  `app_email` varchar(100) NOT NULL,
  `app_author` varchar(100) NOT NULL,
  `app_contact` varchar(100) NOT NULL,
  `app_website` varchar(150) NOT NULL,
  `app_description` text NOT NULL,
  `app_developed_by` varchar(150) NOT NULL,
  `app_privacy_policy` text NOT NULL,
  `app_terms` text NOT NULL,
  `account_delete_intruction` text NOT NULL,
  `envato_buyer_name` varchar(100) NOT NULL,
  `envato_purchase_code` text NOT NULL,
  `envato_package_name` varchar(150) NOT NULL,
  `envato_api_key` text NOT NULL,
  `onesignal_app_id` text NOT NULL,
  `onesignal_rest_key` text NOT NULL,
  `is_rtl` varchar(10) NOT NULL DEFAULT 'false',
  `is_maintenance` varchar(10) NOT NULL DEFAULT 'false',
  `is_screenshot` varchar(10) NOT NULL DEFAULT 'false',
  `is_apk` varchar(10) NOT NULL DEFAULT 'false',
  `is_vpn` varchar(10) NOT NULL DEFAULT 'false',
  `is_xui_dns` varchar(10) NOT NULL DEFAULT 'false',
  `app_update_status` varchar(10) NOT NULL DEFAULT 'false',
  `app_new_version` double NOT NULL DEFAULT 1,
  `app_update_desc` text NOT NULL,
  `app_redirect_url` text NOT NULL,
  `custom_ads` varchar(10) NOT NULL DEFAULT 'false',
  `custom_ads_clicks` int(10) NOT NULL DEFAULT 12,
  `is_theme` varchar(255) NOT NULL,
  `is_dowload` varchar(255) NOT NULL DEFAULT 'true',
  `is_xui_radio` varchar(255) NOT NULL,
  `ad_network` varchar(30) NOT NULL DEFAULT 'admob',
  `publisher_id` text NOT NULL,
  `banner_ad` varchar(10) NOT NULL DEFAULT 'true',
  `banner_ad_id` text NOT NULL,
  `interstital_ad` varchar(10) NOT NULL DEFAULT 'true',
  `interstital_ad_id` text NOT NULL,
  `interstital_ad_click` int(10) NOT NULL DEFAULT 5,
  `ads_limits` varchar(10) NOT NULL DEFAULT 'true',
  `ads_count_click` int(10) NOT NULL DEFAULT 20,
  `is_select_xui` varchar(255) NOT NULL DEFAULT 'true',
  `is_select_stream` varchar(255) NOT NULL DEFAULT 'true',
  `is_select_playlist` varchar(255) NOT NULL DEFAULT 'true',
  `is_select_device_id` varchar(255) NOT NULL DEFAULT 'true',
  `is_select_single` varchar(255) NOT NULL DEFAULT 'true',
  `is_stream_dns` varchar(255) NOT NULL DEFAULT 'false',
  `is_stream_radio` varchar(255) NOT NULL DEFAULT 'false',
  `is_epg` varchar(255) NOT NULL,
  `is_local_storage` varchar(255) NOT NULL,
  `site_description` text NOT NULL,
  `site_keywords` text NOT NULL,
  `header_code` longtext NOT NULL,
  `footer_code` longtext NOT NULL,
  `is_select_activation_code` varchar(255) NOT NULL DEFAULT 'true',
  `site_direction` varchar(200) NOT NULL DEFAULT '0',
  `is_trial_xui` varchar(255) NOT NULL DEFAULT 'true',
  `login_access_code` varchar(255) NOT NULL,
  `admin_access_code` varchar(255) NOT NULL,
  `admin_api_key` varchar(255) NOT NULL,
  `admin_packages` varchar(255) NOT NULL,
  `reseller_access_code` varchar(255) NOT NULL,
  `reseller_api_key` varchar(255) NOT NULL,
  `admin_trial_note` text NOT NULL,
  `is_recaptcha` varchar(10) NOT NULL DEFAULT 'false',
  `recaptcha_site_key` text NOT NULL,
  `recaptcha_secret_key` text NOT NULL,
  `is_ovpn` varchar(10) NOT NULL DEFAULT 'false',
  `app_orientation` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `app_name`, `app_logo`, `app_email`, `app_author`, `app_contact`, `app_website`, `app_description`, `app_developed_by`, `app_privacy_policy`, `app_terms`, `account_delete_intruction`, `envato_buyer_name`, `envato_purchase_code`, `envato_package_name`, `envato_api_key`, `onesignal_app_id`, `onesignal_rest_key`, `is_rtl`, `is_maintenance`, `is_screenshot`, `is_apk`, `is_vpn`, `is_xui_dns`, `app_update_status`, `app_new_version`, `app_update_desc`, `app_redirect_url`, `custom_ads`, `custom_ads_clicks`, `is_theme`, `is_dowload`, `is_xui_radio`, `ad_network`, `publisher_id`, `banner_ad`, `banner_ad_id`, `interstital_ad`, `interstital_ad_id`, `interstital_ad_click`, `ads_limits`, `ads_count_click`, `is_select_xui`, `is_select_stream`, `is_select_playlist`, `is_select_device_id`, `is_select_single`, `is_stream_dns`, `is_stream_radio`, `is_epg`, `is_local_storage`, `site_description`, `site_keywords`, `header_code`, `footer_code`, `is_select_activation_code`, `site_direction`, `is_trial_xui`, `login_access_code`, `admin_access_code`, `admin_api_key`, `admin_packages`, `reseller_access_code`, `reseller_api_key`, `admin_trial_note`, `is_recaptcha`, `recaptcha_site_key`, `recaptcha_secret_key`, `is_ovpn`, `app_orientation`) VALUES
(1, 'StreamBox', '21146_logo.png', 'info.nemosofts@gmail.com', 'nemosofts', '0356525684', 'nemosofts.com', '', 'thivakaran', '', '', '', '', '', '', '', '', '', 'false', 'false', 'false', 'false', 'false', 'true', 'false', 1, 'Description', 'https://play.google.com/store/apps/details', 'false', 15, '1', 'true', 'false', 'admob', 'ca-app-pub-3940256099942544~3347511713', 'false', 'ca-app-pub-3940256099942544/6300978111', 'false', 'ca-app-pub-3940256099942544/1033173712', 20, 'true', 20, 'true', 'true', 'true', 'true', 'true', 'true', 'false', '2', 'true', 'nemosofts admin panel', 'nemosofts,admin,panel', '', '', 'true', '0', 'true', '', '', '', '', '', '', '', '0', '', '', 'true', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_smtp_settings`
--

CREATE TABLE `tbl_smtp_settings` (
  `id` int(5) NOT NULL,
  `smtp_type` varchar(20) NOT NULL DEFAULT 'server',
  `smtp_host` varchar(150) NOT NULL,
  `smtp_email` varchar(150) NOT NULL,
  `smtp_password` text NOT NULL,
  `smtp_secure` varchar(20) NOT NULL,
  `port_no` varchar(10) NOT NULL,
  `smtp_ghost` varchar(150) NOT NULL,
  `smtp_gemail` varchar(150) NOT NULL,
  `smtp_gpassword` text NOT NULL,
  `smtp_gsecure` varchar(20) NOT NULL,
  `gport_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_smtp_settings`
--

INSERT INTO `tbl_smtp_settings` (`id`, `smtp_type`, `smtp_host`, `smtp_email`, `smtp_password`, `smtp_secure`, `port_no`, `smtp_ghost`, `smtp_gemail`, `smtp_gpassword`, `smtp_gsecure`, `gport_no`) VALUES
(1, 'gmail', '', '', '', 'ssl', '465', '', '', '', 'tls', 587);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stream_dns`
--

CREATE TABLE `tbl_stream_dns` (
  `id` int(11) NOT NULL,
  `dns_title` varchar(255) NOT NULL,
  `dns_base` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token_code`
--

CREATE TABLE `tbl_token_code` (
  `id` int(10) NOT NULL,
  `token_name` varchar(60) NOT NULL,
  `token_code` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'xui',
  `user_name` varchar(60) NOT NULL,
  `user_password` text NOT NULL,
  `dns_base` text NOT NULL,
  `device_id` text NOT NULL,
  `registered_on` varchar(200) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT 1,
  `admin_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_trial`
--

CREATE TABLE `tbl_users_trial` (
  `id` int(10) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'xui',
  `user_name` text NOT NULL,
  `user_password` text NOT NULL,
  `dns_base` text NOT NULL,
  `exp_date` varchar(200) NOT NULL DEFAULT '0',
  `registered_on` varchar(200) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web_settings`
--

CREATE TABLE `tbl_web_settings` (
  `id` int(2) NOT NULL,
  `admin_panel` text NOT NULL,
  `site_name` text NOT NULL,
  `site_description` text NOT NULL,
  `site_keywords` text NOT NULL,
  `copyright_text` text NOT NULL,
  `web_logo_1` text NOT NULL,
  `web_logo_2` text NOT NULL,
  `web_favicon` text NOT NULL,
  `header_code` longtext NOT NULL,
  `footer_code` longtext NOT NULL,
  `contact_page_title` varchar(150) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_number` varchar(60) NOT NULL,
  `contact_email` varchar(60) NOT NULL,
  `android_app_url` text NOT NULL,
  `ios_app_url` text NOT NULL,
  `facebook_url` text NOT NULL,
  `twitter_url` text NOT NULL,
  `youtube_url` text NOT NULL,
  `instagram_url` text NOT NULL,
  `about_page_title` varchar(150) NOT NULL,
  `about_content` longtext NOT NULL,
  `about_status` varchar(10) NOT NULL DEFAULT 'true',
  `privacy_page_title` varchar(150) NOT NULL,
  `privacy_content` longtext NOT NULL,
  `privacy_page_status` varchar(10) NOT NULL DEFAULT 'true',
  `terms_of_use_page_title` varchar(150) NOT NULL,
  `terms_of_use_content` longtext NOT NULL,
  `terms_of_use_page_status` varchar(10) NOT NULL DEFAULT 'true',
  `is_select_xui` varchar(255) NOT NULL DEFAULT 'true',
  `is_select_stream` varchar(255) NOT NULL DEFAULT 'true',
  `is_select_device_id` varchar(255) NOT NULL DEFAULT 'true',
  `is_select_activation_code` varchar(255) NOT NULL DEFAULT 'true',
  `is_select_single` varchar(255) NOT NULL DEFAULT 'false',
  `is_maintenance` varchar(255) NOT NULL DEFAULT 'true',
  `is_xui_dns` varchar(255) NOT NULL DEFAULT 'true',
  `is_stream_dns` varchar(255) NOT NULL DEFAULT 'true',
  `is_theme` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_web_settings`
--

INSERT INTO `tbl_web_settings` (`id`, `admin_panel`, `site_name`, `site_description`, `site_keywords`, `copyright_text`, `web_logo_1`, `web_logo_2`, `web_favicon`, `header_code`, `footer_code`, `contact_page_title`, `address`, `contact_number`, `contact_email`, `android_app_url`, `ios_app_url`, `facebook_url`, `twitter_url`, `youtube_url`, `instagram_url`, `about_page_title`, `about_content`, `about_status`, `privacy_page_title`, `privacy_content`, `privacy_page_status`, `terms_of_use_page_title`, `terms_of_use_content`, `terms_of_use_page_status`, `is_select_xui`, `is_select_stream`, `is_select_device_id`, `is_select_activation_code`, `is_select_single`, `is_maintenance`, `is_xui_dns`, `is_stream_dns`, `is_theme`) VALUES
(1, '', 'StreamBox', 'IPTV StreamBox is a fabulous video streaming player that allows your IPTV customers or end-users to stream content like Live TV, VOD, Series, and TV Catchup.', 'streaming, platform, streambox , iptv', 'Copyright © 2025 StreamBox - Video Streaming Web Application, All rights reserved.', '1740302001_cc427f2fab14ba44ddb5.jpg', 'logo.jpg', '54806_web_favicon.png', '', '', '', 'your Address', '+7463459646', 'info.nemosofts@gnail.com', 'https://play.google.com/store/apps/details?id=com.app.name', 'https://www.apple.com/app-store/', 'https://www.facebook.com/', 'https://twitter.com', 'https://www.youtube.com/', 'https://www.instagram.com/', 'About Us', '', 'true', 'Privacy Policy', '', 'true', 'Terms & Conditions', '', 'true', 'true', 'true', 'true', 'true', 'true', 'false', 'true', 'true', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_xui_dns`
--

CREATE TABLE `tbl_xui_dns` (
  `id` int(11) NOT NULL,
  `dns_title` varchar(255) NOT NULL,
  `dns_base` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_xui_dns_block`
--

CREATE TABLE `tbl_xui_dns_block` (
  `id` int(11) NOT NULL,
  `dns_base` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_activation_code`
--
ALTER TABLE `tbl_activation_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_custom_ads`
--
ALTER TABLE `tbl_custom_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_policy_deletion`
--
ALTER TABLE `tbl_policy_deletion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_poster_gallery`
--
ALTER TABLE `tbl_poster_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reports`
--
ALTER TABLE `tbl_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_select_page`
--
ALTER TABLE `tbl_select_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_smtp_settings`
--
ALTER TABLE `tbl_smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_stream_dns`
--
ALTER TABLE `tbl_stream_dns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_token_code`
--
ALTER TABLE `tbl_token_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users_trial`
--
ALTER TABLE `tbl_users_trial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_web_settings`
--
ALTER TABLE `tbl_web_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_xui_dns`
--
ALTER TABLE `tbl_xui_dns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_xui_dns_block`
--
ALTER TABLE `tbl_xui_dns_block`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_activation_code`
--
ALTER TABLE `tbl_activation_code`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_custom_ads`
--
ALTER TABLE `tbl_custom_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_policy_deletion`
--
ALTER TABLE `tbl_policy_deletion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_poster_gallery`
--
ALTER TABLE `tbl_poster_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_reports`
--
ALTER TABLE `tbl_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_select_page`
--
ALTER TABLE `tbl_select_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_smtp_settings`
--
ALTER TABLE `tbl_smtp_settings`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_stream_dns`
--
ALTER TABLE `tbl_stream_dns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_token_code`
--
ALTER TABLE `tbl_token_code`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users_trial`
--
ALTER TABLE `tbl_users_trial`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_web_settings`
--
ALTER TABLE `tbl_web_settings`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_xui_dns`
--
ALTER TABLE `tbl_xui_dns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_xui_dns_block`
--
ALTER TABLE `tbl_xui_dns_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;