-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 27, 2023 at 02:17 PM
-- Server version: 10.5.17-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u857084818_indifamesmm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(225) DEFAULT NULL,
  `password` text NOT NULL,
  `register_date` datetime NOT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(225) DEFAULT NULL,
  `client_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF',
  `access` varchar(999) NOT NULL,
  `mode` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `username`, `password`, `register_date`, `login_date`, `login_ip`, `client_type`, `access`, `mode`) VALUES
(1, 'admin', '1234567890', '2021-09-08 10:19:05', '2023-01-27 14:11:59', '2401:4900:1c80:6075:d005:7795:3673:c537', '2', '{\"admin_access\":\"1\",\"users\":\"1\",\"orders\":\"1\",\"subscriptions\":\"1\",\"dripfeed\":\"1\",\"services\":\"1\",\"payments\":\"1\",\"tickets\":\"1\",\"reports\":\"1\",\"general_settings\":\"1\",\"pages\":\"1\",\"payments_settings\":\"1\",\"bank_accounts\":\"1\",\"payments_bonus\":\"1\",\"alert_settings\":\"1\",\"providers\":\"1\",\"themes\":\"1\",\"child-panels\":\"1\",\"coupon\":\"1\",\"language\":\"1\",\"meta\":\"1\",\"twice\":\"1\",\"files\":\"1\",\"coupon\":\"1\",\"admins\":\"1\",\"update-prices\":\"1\",\"bulk\":\"1\",\"bulkc\":\"1\",\"synced-logs\":\"1\",\"refill\":\"1\",\"referral\":\"1\",\"broadcast\":\"1\",\"logs\":\"1\",\"videop\":\"1\",\"updates\":\"1\",\"menu\":\"1\",\"inte\":\"1\",\"currency\":\"1\",\"news\":\"1\",\"blog\":\"1\",\"modules\":\"1\",\"subject\":\"1\"}', 'sun');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `image_file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(225) NOT NULL,
  `bank_sube` varchar(225) NOT NULL,
  `bank_hesap` varchar(225) NOT NULL,
  `bank_iban` text NOT NULL,
  `bank_alici` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` datetime NOT NULL,
  `image_file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `blog_get` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bulkedit`
--

CREATE TABLE `bulkedit` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` text COLLATE utf8mb4_bin NOT NULL,
  `category_line` double NOT NULL,
  `category_type` enum('1','2') CHARACTER SET utf8 NOT NULL DEFAULT '2',
  `category_secret` enum('1','2') COLLATE utf8mb4_bin NOT NULL DEFAULT '2',
  `category_icon` text COLLATE utf8mb4_bin NOT NULL,
  `is_refill` enum('1','2') CHARACTER SET utf8 NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_line`, `category_type`, `category_secret`, `category_icon`, `is_refill`) VALUES
(1, '♛ Instagram Followers ( Server #1 )', 1, '2', '2', '', ''),
(2, '♛ Instagram Followers ( Server #2 )', 2, '2', '2', '', ''),
(3, '♛ Instagram Followers ( Server #3 )', 3, '2', '2', '', ''),
(4, '♛ Instagram Likes ( Server #1 )', 4, '2', '2', '', ''),
(5, '♛ Instagram Likes ( Server #2 )', 5, '2', '2', '', ''),
(6, '♛ Instagram Likes ( Server #3 )', 6, '2', '2', '', ''),
(7, '♛ Instagram Views ( Server #1 )', 7, '2', '2', '', ''),
(8, '♛ Instagram Views ( Server #2 )', 8, '2', '2', '', ''),
(9, '♛ Instagram Views ( Server #3 )', 9, '2', '2', '', ''),
(10, '♛ Instagram Story ( Server #1 )', 10, '2', '2', '', ''),
(11, '♛ Instagram Story ( Server #2 )', 11, '2', '2', '', ''),
(12, '♛ Instagram Story ( Server #3 )', 12, '2', '2', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `childpanels`
--

CREATE TABLE `childpanels` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `domain` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `child_username` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `child_password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `charge` double NOT NULL,
  `status` enum('active','terminated','disabled') COLLATE utf8_unicode_ci NOT NULL,
  `renewal_date` date NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `email` varchar(225) NOT NULL,
  `username` varchar(225) DEFAULT NULL,
  `admin_type` enum('1','2') NOT NULL DEFAULT '2',
  `password` text NOT NULL,
  `telephone` varchar(225) DEFAULT NULL,
  `balance` decimal(21,7) NOT NULL,
  `balance_type` enum('1','2') NOT NULL DEFAULT '2',
  `debit_limit` double DEFAULT NULL,
  `spent` decimal(21,7) NOT NULL,
  `register_date` datetime NOT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(225) DEFAULT NULL,
  `apikey` text NOT NULL,
  `tel_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `email_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `client_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF',
  `access` text DEFAULT NULL,
  `lang` varchar(255) NOT NULL DEFAULT 'tr',
  `timezone` double NOT NULL DEFAULT 0,
  `currency_type` enum('INR','USD') NOT NULL DEFAULT 'USD',
  `ref_code` text NOT NULL,
  `ref_by` text DEFAULT NULL,
  `change_email` enum('1','2') NOT NULL DEFAULT '2',
  `resend_max` int(11) NOT NULL,
  `currency` varchar(225) NOT NULL DEFAULT '1',
  `passwordreset_token` varchar(225) NOT NULL,
  `verified` enum('Yes','No') NOT NULL DEFAULT 'No',
  `coustm_rate` double NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `name`, `email`, `username`, `admin_type`, `password`, `telephone`, `balance`, `balance_type`, `debit_limit`, `spent`, `register_date`, `login_date`, `login_ip`, `apikey`, `tel_type`, `email_type`, `client_type`, `access`, `lang`, `timezone`, `currency_type`, `ref_code`, `ref_by`, `change_email`, `resend_max`, `currency`, `passwordreset_token`, `verified`, `coustm_rate`) VALUES
(1, '', 'luckysingh1ty@gmail.com', 'Lucky34748', '2', '6e05cf6e964c110131549c53a6a43b6b', '911234567890', '0.0000000', '2', NULL, '0.0000000', '2023-01-27 12:46:03', NULL, NULL, '2fddbae50d17461883de6ee4a8a34c24', '1', '2', '2', NULL, 'en', 0, 'USD', '6ada1e', NULL, '2', 0, '1', '', 'No', 0),
(2, '', 'kfkkhkbkv@k9.kskf', 'Qwertty138', '2', '85ade094ea6cec137d1c538ea3f7e88c', '912720372937', '0.0000000', '2', NULL, '0.0000000', '2023-01-27 12:56:28', NULL, NULL, 'b98ff77707fe21d37f77cbb6df207a1f', '1', '2', '2', NULL, 'en', 0, 'USD', '2e4d30', NULL, '2', 0, '2', '', 'No', 0);

-- --------------------------------------------------------

--
-- Table structure for table `clients_category`
--

CREATE TABLE `clients_category` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `clients_price`
--

CREATE TABLE `clients_price` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_price` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `clients_service`
--

CREATE TABLE `clients_service` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client_report`
--

CREATE TABLE `client_report` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `action` text NOT NULL,
  `report_ip` varchar(225) NOT NULL,
  `report_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client_report`
--

INSERT INTO `client_report` (`id`, `client_id`, `action`, `report_ip`, `report_date`) VALUES
(1, 1, '\r\n    User registered.', '2401:4900:1c80:6075:d005:7795:3673:c537', '2023-01-27 12:46:03'),
(2, 1, 'Free Balance Added of  : 0 ', '2401:4900:1c80:6075:d005:7795:3673:c537', '2023-01-27 12:46:03'),
(3, 2, '\r\n    User registered.', '2401:4900:1c80:6075:d005:7795:3673:c537', '2023-01-27 12:56:28'),
(4, 2, 'Free Balance Added of  : 0 ', '2401:4900:1c80:6075:d005:7795:3673:c537', '2023-01-27 12:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `symbol` text DEFAULT NULL,
  `value` double DEFAULT NULL,
  `name` varchar(225) NOT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `default` enum('2','1') NOT NULL DEFAULT '2',
  `nouse` enum('1','2') NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `symbol`, `value`, `name`, `status`, `default`, `nouse`) VALUES
(1, '$', 1, 'USD', '1', '1', '1'),
(2, '₹', 82, 'INR', '1', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `earn`
--

CREATE TABLE `earn` (
  `earn_id` int(255) NOT NULL,
  `client_id` int(255) NOT NULL,
  `link` text NOT NULL,
  `earn_note` text NOT NULL,
  `status` enum('Pending','Under Review','Funds Granted','Rejected','Not Eligible') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `link` text DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `link`, `date`) VALUES
(3, 'https://quickpanelv2.ownsmmpanel.in/img/files/aa406f571f4dfeee85806e2322a62597.png', '2022-11-28 13:29:43');

-- --------------------------------------------------------

--
-- Table structure for table `General_options`
--

CREATE TABLE `General_options` (
  `id` int(11) NOT NULL,
  `coupon_status` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `updates_show` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `panel_status` enum('Pending','Active','Frozen','Suspended') COLLATE utf8_unicode_ci NOT NULL,
  `panel_orders` int(11) NOT NULL,
  `panel_thismonthorders` int(11) NOT NULL,
  `massorder` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '2',
  `balance_format` enum('0.0','0.00','0.000','0.0000') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.0',
  `currency_format` enum('0','2','3','4') COLLATE utf8_unicode_ci NOT NULL DEFAULT '3',
  `ticket_system` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `General_options`
--

INSERT INTO `General_options` (`id`, `coupon_status`, `updates_show`, `panel_status`, `panel_orders`, `panel_thismonthorders`, `massorder`, `balance_format`, `currency_format`, `ticket_system`) VALUES
(1, '', '2', 'Active', 1024, 20, '1', '', '3', '2');

-- --------------------------------------------------------

--
-- Table structure for table `integrations`
--

CREATE TABLE `integrations` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `icon_url` varchar(225) NOT NULL,
  `code` text NOT NULL,
  `visibility` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `integrations`
--

INSERT INTO `integrations` (`id`, `name`, `description`, `icon_url`, `code`, `visibility`, `status`) VALUES
(1, 'Beamer', 'Announce updates and get feedback with in-app notification center, widgets and changelog', '/img/integrations/Beamer.svg', '', 1, 1),
(2, 'Getsitecontrol', 'It helps you prevent website visitors from leaving your website without taking any action.', '/img/integrations/Getsitecontrol.svg', '', 1, 1),
(3, 'Google Analytics', 'Statistics and basic analytical tools for search engine optimization (SEO) and marketing purposes', '/img/integrations/Google%20Analytics.svg', '', 1, 1),
(4, 'Google Tag manager', 'Manage all your website tags without editing the code using simple tag management solutions', '/img/integrations/Google%20Tag%20manager.svg', '', 1, 1),
(5, 'JivoChat', 'All-in-one business messenger to talk to customers: live chat, phone, email and social', '/img/integrations/JivoChat.svg', '', 1, 1),
(6, 'Onesignal', 'Leader in customer engagement, empowers mobile push, web push, email, in-app messages', '/img/integrations/Onesignal.svg', '', 1, 1),
(7, 'Push alert', 'Increase reach, revenue, retarget users with Push Notifications on desktop and mobile', '/img/integrations/Push%20alert.svg', '', 1, 1),
(8, 'Smartsupp', 'Live chat, email inbox and Facebook Messenger in one customer messaging platform', '/img/integrations/Smartsupp.svg', '', 1, 1),
(9, 'Tawk.to', 'Track and chat with visitors on your website, mobile app or a free customizable page', '/img/integrations/Tawk.to.svg', '', 1, 1),
(10, 'Tidio', 'Communicator for businesses that keep live chat, chatbots, Messenger and email in one place', '/img/integrations/Tidio.svg', '', 1, 1),
(11, 'Zendesk Chat', 'Helps respond quickly to customer questions, reduce wait times and increase sales', '/img/integrations/Zendesk%20Chat.svg', '', 1, 1),
(12, 'Getbutton.io', 'Chat with website visitors through popular messaging apps. Whatsapp, messenger etc. contact button.', '/img/integrations/Getbutton.svg', '', 1, 1),
(13, 'Google reCAPTCHA v2', 'It uses an advanced risk analysis engine and adaptive challenges to prevent malware from engaging in abusive activities on your website.', '/img/integrations/reCAPTCHA.svg', '', 1, 1),
(14, 'Whatsapp', 'Whatsapp is for Personal Support of your Users', '/img/integrations/whatsapp.svg', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kuponlar`
--

CREATE TABLE `kuponlar` (
  `id` int(11) NOT NULL,
  `kuponadi` varchar(255) NOT NULL,
  `adet` int(11) NOT NULL,
  `tutar` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kupon_kullananlar`
--

CREATE TABLE `kupon_kullananlar` (
  `id` int(11) NOT NULL,
  `uye_id` int(11) NOT NULL,
  `kuponadi` varchar(255) NOT NULL,
  `tutar` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language_name` varchar(225) NOT NULL,
  `language_code` varchar(225) NOT NULL,
  `language_type` enum('2','1') NOT NULL DEFAULT '2',
  `default_language` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language_name`, `language_code`, `language_type`, `default_language`) VALUES
(1, 'English', 'en', '2', '1'),
(4, 'arabic', 'ar', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `Mailforms`
--

CREATE TABLE `Mailforms` (
  `id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `message` varchar(225) NOT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `header` varchar(225) NOT NULL,
  `footer` varchar(225) NOT NULL,
  `type` enum('Admins','Users') NOT NULL DEFAULT 'Users'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_bin NOT NULL,
  `menu_line` double NOT NULL,
  `type` enum('1','2') CHARACTER SET utf8 NOT NULL DEFAULT '2',
  `slug` varchar(225) COLLATE utf8mb4_bin NOT NULL DEFAULT '2',
  `icon` varchar(225) COLLATE utf8mb4_bin DEFAULT NULL,
  `menu_status` enum('1','2') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `visible` enum('Internal','External') COLLATE utf8mb4_bin NOT NULL DEFAULT 'Internal',
  `active` varchar(225) COLLATE utf8mb4_bin NOT NULL,
  `tiptext` varchar(225) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `menu_line`, `type`, `slug`, `icon`, `menu_status`, `visible`, `active`, `tiptext`) VALUES
(1, 'New Order', 2, '2', '/', 'fas fa-cart-arrow-down', '1', 'Internal', 'neworder', ''),
(2, 'Mass Order', 3, '1', '/massorder', 'fas fa-cart-plus', '1', 'Internal', 'massorder', 'Shown only if Mass Order system enabled for use'),
(3, 'Orders ', 4, '2', '/orders', 'fad fa-bags-shopping', '1', 'Internal', 'orders', ''),
(4, 'Refill', 6, '2', '/refill', 'fas fa-recycle', '1', 'Internal', 'refill', 'Shown only if user have at least one refill task'),
(5, 'Login', 1, '2', '/', 'fas fa-address-card', '1', 'External', 'login', ''),
(6, 'Services', 7, '2', '/services', 'fas fa-clipboard-list', '1', 'Internal', 'services', ''),
(7, 'Add Funds', 5, '2', '/addfunds', 'fas fa-credit-card', '1', 'Internal', 'addfunds', ''),
(8, 'Api', 15, '2', '/api', 'far fa-unlink', '1', 'Internal', 'api', ''),
(9, 'Tickets ', 8, '2', '/tickets', 'fas fa-headset', '1', 'Internal', 'tickets', ''),
(10, 'Child Panels', 9, '2', '/child-panels', 'fas fa-child', '1', 'Internal', 'child-panels', 'Shown only if child panels selling enabled'),
(11, 'Refer & Earn', 11, '2', '/refer', 'fad fa-share-alt', '1', 'Internal', 'refer', 'Shown only if affiliate system enabled for use'),
(13, 'Terms ', 13, '2', '/terms', 'fas fa-exclamation-triangle', '1', 'Internal', 'terms', ''),
(14, 'Signup ', 2, '2', '/signup', 'fas fa-arrow-right', '1', 'External', 'signup', 'Shown only if Signup system enabled for use'),
(17, 'Updates', 10, '2', '/updates', 'fad fa-calendar-edit', '1', 'Internal', '', 'Shown only if Updates System enabled'),
(18, 'Services', 3, '2', '/services', 'fas fa-clipboard-list', '1', 'External', 'terms', ''),
(21, 'Blogs', 14, '2', '/blog', 'fab fa-blogger', '1', 'Internal', 'blog', ''),
(22, 'Earn', 12, '1', '/earn', 'fas fa-video', '1', 'Internal', '', 'Shown only if Updates System enabled'),
(23, 'Terms ', 14, '2', '/terms', 'fas fa-exclamation-triangle', '1', 'External', 'services', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_icon` varchar(225) NOT NULL,
  `news_title` varchar(225) NOT NULL,
  `news_content` varchar(225) NOT NULL,
  `news_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notifications_popup`
--

CREATE TABLE `notifications_popup` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `action_link` text NOT NULL,
  `isAllPage` enum('0','1') NOT NULL DEFAULT '0',
  `isAllUser` enum('1','0') NOT NULL DEFAULT '0',
  `expiry_date` date NOT NULL,
  `status` enum('1','2','0') NOT NULL DEFAULT '1',
  `allPages` varchar(225) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `action_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `api_orderid` int(11) NOT NULL DEFAULT 0,
  `order_error` text NOT NULL,
  `order_detail` text DEFAULT NULL,
  `order_api` int(11) NOT NULL DEFAULT 0,
  `api_serviceid` int(11) NOT NULL DEFAULT 0,
  `api_charge` double NOT NULL DEFAULT 0,
  `api_currencycharge` double DEFAULT 1,
  `order_profit` double NOT NULL,
  `order_quantity` double NOT NULL,
  `order_extras` text NOT NULL,
  `order_charge` double NOT NULL,
  `dripfeed` enum('1','2','3') DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `dripfeed_id` double NOT NULL DEFAULT 0,
  `subscriptions_id` double NOT NULL DEFAULT 0,
  `subscriptions_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `dripfeed_totalcharges` double DEFAULT NULL,
  `dripfeed_runs` double DEFAULT NULL,
  `dripfeed_delivery` double NOT NULL DEFAULT 0,
  `dripfeed_interval` double DEFAULT NULL,
  `dripfeed_totalquantity` double DEFAULT NULL,
  `dripfeed_status` enum('active','completed','canceled') NOT NULL DEFAULT 'active',
  `order_url` text NOT NULL,
  `order_start` double NOT NULL DEFAULT 0,
  `order_finish` double NOT NULL DEFAULT 0,
  `order_remains` double NOT NULL DEFAULT 0,
  `order_create` datetime NOT NULL,
  `order_status` enum('pending','inprogress','completed','partial','processing','canceled') NOT NULL DEFAULT 'pending',
  `subscriptions_status` enum('active','paused','completed','canceled','expired','limit') NOT NULL DEFAULT 'active',
  `subscriptions_username` text DEFAULT NULL,
  `subscriptions_posts` double DEFAULT NULL,
  `subscriptions_delivery` double NOT NULL DEFAULT 0,
  `subscriptions_delay` double DEFAULT NULL,
  `subscriptions_min` double DEFAULT NULL,
  `subscriptions_max` double DEFAULT NULL,
  `subscriptions_expiry` date DEFAULT NULL,
  `last_check` datetime NOT NULL,
  `order_where` enum('site','api') NOT NULL DEFAULT 'site',
  `refill_status` enum('Pending','Refilling','Completed','Rejected','Error') NOT NULL DEFAULT 'Pending',
  `is_refill` enum('1','2') NOT NULL DEFAULT '1',
  `refill` varchar(225) NOT NULL DEFAULT '1',
  `cancelbutton` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> OFF',
  `show_refill` enum('true','false') NOT NULL DEFAULT 'true',
  `api_refillid` double NOT NULL DEFAULT 0,
  `avg_done` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(225) NOT NULL,
  `page_get` varchar(225) NOT NULL,
  `page_content` text NOT NULL,
  `page_status` enum('1','2') NOT NULL DEFAULT '1',
  `active` enum('1','2') NOT NULL DEFAULT '1',
  `seo_title` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `seo_keywords` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `seo_description` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `last_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_name`, `page_get`, `page_content`, `page_status`, `active`, `seo_title`, `seo_keywords`, `seo_description`, `last_modified`) VALUES
(1, 'Account', 'account', '', '2', '1', '', '', '', '0000-00-00 00:00:00'),
(2, 'Add funds', 'addfunds', '', '2', '1', '', '', '', '2022-03-31 05:28:23'),
(3, 'Affiliates', 'refer', '', '2', '1', '', '', '', '0000-00-00 00:00:00'),
(4, 'Api', 'api', '', '2', '1', '', '', '', '2022-05-09 02:38:00'),
(5, 'Blog', 'blog', '', '2', '1', '', '', '', '0000-00-00 00:00:00'),
(6, 'Login', 'auth', '<h1>Buy Cheap Social Media followers, likes, Views, Share instantly.<br></h1>\r\n\r\n            <span><i class=\"fas fa-chevron-right\"></i> Fully Automated Instant trusted Panel.</span><br>\r\n       \r\n            <span><i class=\"fas fa-chevron-right\"></i> Orders are completed fully automatically and quickly.</span>\r\n            <br>\r\n       <span><i class=\"fas fa-chevron-right\"></i> We provide instant support for your questions and problems 24 hours a day, 7 days a week.</span>\r\n       <br>\r\n       <span><i class=\"fas fa-chevron-right\"></i> SMM Panel meaning is Cheapest SMM and SEO Services Reseller Panel Script or website, where People Buy-Sell Social Media Marketing Service Such as Facebook Fans, Twitter devotees, Instagram Followers, YouTube watch time Views, Website Traffic, tiktok likes, and more significant associations.</span>\r\n          ', '2', '1', 'The Best SMM Panel. Super Cheap & Super Fast!', '', '', '2022-09-18 08:47:33'),
(7, 'Child Panels', 'child-panels', '', '2', '1', '', '', '', '0000-00-00 00:00:00'),
(8, 'Mass Order', 'massorder', '', '2', '1', '', '', '', '0000-00-00 00:00:00'),
(9, 'New Order', 'neworder', '', '2', '1', 'New Order', '', '', '2022-09-27 11:21:29'),
(10, 'Orders', 'orders', '', '2', '1', '', '', '', '0000-00-00 00:00:00'),
(11, 'Refill', 'refill', '', '2', '1', '', '', '', '0000-00-00 00:00:00'),
(12, 'Services', 'services', '', '2', '1', '', '', '', '0000-00-00 00:00:00'),
(13, 'Sign Up', 'signup', '', '2', '1', '', '', '', '2022-11-20 06:51:50'),
(14, 'Terms', 'terms', '<p style=\"margin-bottom: 1rem; color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\">The use of services provided by YourDomain (<span style=\"font-weight: bolder;\"> Your Domain </span>) Established the agreement to these terms. By registering or using our services you agree that you have read and fully understood the following terms of Service and SocialKart will not be help liable for loss in any way for users who have not read the below terms of service.</p><p><span style=\"font-weight: bolder; color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\">Delivery Policy</span><span style=\"color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\"></span></p><p style=\"margin-bottom: 1rem; color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\">● By placing an order with <span style=\"font-weight: bolder;\">YourDomain</span>, you automatically accept all the below-listed term of services whether you read them or not.</p><p style=\"margin-bottom: 1rem; color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\">● We reserve the right to change these terms of service without notice. You are expected to read all terms of service before placing every order to ensure you are up to date with any changes or any future changes.</p><p style=\"margin-bottom: 1rem; color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\">● You will only use the <span style=\"font-weight: 700;\">YourDomain </span>website in a manner which follows all agreements made with <span style=\"font-weight: bolder;\">Soundcloud/Vine/Pinterest/Youtube/other social media site</span> on their individual Terms of Service page.</p><p style=\"margin-bottom: 1rem; color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\">● <span style=\"font-weight: 700;\">YourDomain </span>rates are subject to change at any time without notice. The terms stay in effect in the case of rate changes.</p><p style=\"margin-bottom: 1rem; color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\">● <span style=\"font-weight: 700;\">YourDomain </span>( YourDomain ) does not guarantee a delivery time for any services as its depend on the services order quantity. We offer our best estimation for when the order will be delivered. This is only an estimation and <span style=\"font-weight: 700;\">YourDomain </span>will not refund orders that are processing if you feel they are taking too long.</p><p style=\"margin-bottom: 1rem; color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\">● <span style=\"font-weight: 700;\">YourDomain </span>tries hard to deliver exactly what is expected of us by our resellers. In this case, we reserve the right to change a service type if we deem it necessary to complete an order.</p><p style=\"margin-bottom: 1rem; color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\">● <span style=\"font-weight: 700;\">YourDomain </span>Always provide the amount mentioned in Service Descriptions , But Remember , If Incase there is Any Update in Any Social Media Platforms then the Drop Ratios of NON DROP or any Guarantee can be Changed , And YourDomain cant be Responsible for this.</p><p><span style=\"font-weight: bolder; color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\">Disclaimer:</span><span style=\"color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\"></span></p><p style=\"margin-bottom: 1rem; color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">YourDomain </span>will not be responsible for any damages you or your business may suffer.</p><p><span style=\"font-weight: bolder; color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\">Liabilities:</span><span style=\"color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\"></span></p><p style=\"margin-bottom: 1rem; color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">YourDomain </span>is in no way liable for any account suspension or picture deletion done by Instagram or Twitter or Facebook or YouTube or Other Social Media.</p><p><br style=\"color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\"></p><h2 class=\"mb-5\" style=\"margin-top: 0px; line-height: 1.2; font-size: 2rem; color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; margin-bottom: 3rem !important;\">Privacy Policy</h2><p style=\"margin-bottom: 1rem; color: rgb(70, 78, 119); font-family: Poppins, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Open Sans\", \"Helvetica Neue\", sans-serif; font-size: 16px;\">● This policy covers how we use your personal information. We take your privacy seriously and will take all measures to protect your personal information. Any personal information received will only be used to fill your order. We will not sell or redistribute your personal information to anyone. All personal information is encrypted and saved in secure servers.</p>', '1', '1', 'Terms', 'Terms', 'Terms', '2022-05-27 10:17:23'),
(15, 'Tickets', 'tickets', '', '2', '1', '', '', '', '0000-00-00 00:00:00'),
(16, 'Updates', 'updates', '', '2', '1', '', '', '', '0000-00-00 00:00:00'),
(17, 'Earn', 'earn', '', '2', '1', '', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `panel_info`
--

CREATE TABLE `panel_info` (
  `panel_id` int(11) NOT NULL,
  `panel_domain` text COLLATE utf8_unicode_ci NOT NULL,
  `panel_plan` text COLLATE utf8_unicode_ci NOT NULL,
  `panel_status` enum('Pending','Active','Frozen','Suspended') COLLATE utf8_unicode_ci NOT NULL,
  `panel_orders` int(11) NOT NULL,
  `panel_thismonthorders` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `api_key` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `renewal_date` datetime NOT NULL,
  `panel_type` enum('Child','Main') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Main'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment_amount` decimal(15,4) NOT NULL,
  `payment_privatecode` double DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `payment_status` enum('1','2','3') NOT NULL DEFAULT '1',
  `payment_delivery` enum('1','2') NOT NULL DEFAULT '1',
  `payment_note` varchar(255) NOT NULL DEFAULT 'No',
  `payment_mode` enum('Manuel','Otomatik','Auto') NOT NULL DEFAULT 'Otomatik',
  `payment_create_date` datetime NOT NULL,
  `payment_update_date` datetime NOT NULL,
  `payment_ip` varchar(225) NOT NULL,
  `payment_extra` text NOT NULL,
  `payment_bank` int(11) NOT NULL,
  `t_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `client_id`, `client_balance`, `payment_amount`, `payment_privatecode`, `payment_method`, `payment_status`, `payment_delivery`, `payment_note`, `payment_mode`, `payment_create_date`, `payment_update_date`, `payment_ip`, `payment_extra`, `payment_bank`, `t_id`) VALUES
(1, 1, '0.00', '0.0000', NULL, 30, '3', '2', 'Free Balance added for New user of : 0  ', 'Otomatik', '2023-01-27 12:46:03', '2023-01-27 12:46:03', '2401:4900:1c80:6075:d005:7795:3673:c537', 'Free balance Added of  : 0 ', 0, NULL),
(2, 2, '0.00', '0.0000', NULL, 30, '3', '2', 'Free Balance added for New user of : 0  ', 'Otomatik', '2023-01-27 12:56:28', '2023-01-27 12:56:28', '2401:4900:1c80:6075:d005:7795:3673:c537', 'Free balance Added of  : 0 ', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments_bonus`
--

CREATE TABLE `payments_bonus` (
  `bonus_id` int(11) NOT NULL,
  `bonus_method` int(11) NOT NULL,
  `bonus_from` double NOT NULL,
  `bonus_amount` double NOT NULL,
  `bonus_type` enum('1','2') NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `method_name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `method_get` varchar(225) NOT NULL,
  `method_min` double NOT NULL,
  `method_max` double NOT NULL,
  `method_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF	',
  `method_extras` text NOT NULL,
  `method_line` double NOT NULL,
  `nouse` enum('1','2') NOT NULL DEFAULT '2',
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `method_name`, `method_get`, `method_min`, `method_max`, `method_type`, `method_extras`, `method_line`, `nouse`, `content`) VALUES
(1, 'Paypal', 'paypal', 10, 100, '2', '{\"method_type\":\"2\",\"name\":\"International Payments [\\ud835\\udc0f\\ud835\\udc1a\\ud835\\udc32\\ud835\\udc0f\\ud835\\udc1a\\ud835\\udc25] [\\ud835\\udc14\\ud835\\udc12\\ud835\\udc03]\",\"min\":\"10\",\"max\":\"100\",\"client_id\":\"\",\"client_secret\":\"\",\"fee\":\"10\"}', 5, '2', 'hello'),
(2, 'Stripe', 'stripe', 1, 100, '1', '{\"method_type\":\"1\",\"name\":\"Credit card\",\"min\":\"1\",\"max\":\"100\",\"stripe_publishable_key\":\"\",\"stripe_secret_key\":\"\",\"stripe_webhooks_secret\":\"\",\"fee\":\"10\",\"currency\":\"USD\"}', 10, '2', ''),
(3, 'Shopier', 'shopier', 5, 0, '1', '{\"method_type\":\"1\",\"name\":\"Kredi \\/ Banka Kart\\u0131 ile \\u00d6de\",\"min\":\"5\",\"max\":\"0\",\"apiKey\":\"\",\"apiSecret\":\"\",\"website_index\":\"1\",\"processing_fee\":\"1\",\"fee\":\"10\",\"currency\":\"USD\"}', 16, '2', ''),
(5, 'Paywant', 'paywant', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Paywant\",\"min\":\"1\",\"max\":\"0\",\"apiKey\":\"\",\"apiSecret\":\"\",\"fee\":\"0\",\"currency\":\"USD\",\"commissionType\":\"2\",\"payment_type\":[\"1\",\"2\",\"3\"]}', 17, '2', ''),
(7, 'PayTR', 'paytr', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Paytr\",\"min\":\"1\",\"max\":\"0\",\"merchant_id\":\"\",\"merchant_key\":\"\",\"merchant_salt\":\"\",\"fee\":\"0\",\"currency\":\"USD\"}', 19, '2', ''),
(8, 'Coinpayments', 'coinpayments', 10, 0, '1', '{\"method_type\":\"1\",\"name\":\"CoinPayments ( Cryptocurrency )\",\"min\":\"10\",\"max\":\"0\",\"coinpayments_public_key\":\"\",\"coinpayments_private_key\":\"\",\"coinpayments_currency\":\"BTC\",\"merchant_id\":\"\",\"ipn_secret\":\"\",\"fee\":\"0\",\"currency\":\"USD\"}', 8, '2', ''),
(9, '2checkout', '2checkout', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"2checkout\",\"min\":\"1\",\"max\":\"0\",\"seller_id\":\"\",\"private_key\":\"\",\"fee\":\"1\",\"currency\":\"USD\"}', 12, '2', ''),
(10, 'Payoneer', 'payoneer', 0, 0, '1', '{\"method_type\":\"1\",\"name\":\"Payoneer\",\"email\":\"\"}', 11, '2', ''),
(11, 'Mollie', 'mollie', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Mollie\",\"min\":\"1\",\"max\":\"0\",\"live_api_key\":\"\",\"fee\":\"0\",\"currency\":\"USD\"}', 20, '2', ''),
(12, 'PayTM', 'paytm', 10, 100000, '1', '{\"method_type\":\"2\",\"name\":\"PayTM ( INR )( UPI \\/ NET BANKING \\/ DEBIT \\/ CREDIT CARD)\",\"min\":\"10\",\"max\":\"100000\",\"merchant_key\":\"\",\"merchant_mid\":\"\",\"merchant_website\":\"DEFAULT\",\"fee\":\"0\",\"currency\":\"\"}', 7, '2', ''),
(13, 'Instamojo', 'instamojo', 0, 0, '1', '{\"method_type\":\"1\",\"name\":\"Instamojo\",\"min\":\"0\",\"max\":\"0\",\"api_key\":\"\",\"live_auth_token_key\":\"\",\"fee\":\"0\",\"currency\":\"INR\"}', 18, '2', ''),
(14, 'Paytm Business', 'paytmqr', 0.1, 0, '2', '{\"method_type\":\"2\",\"name\":\"PayTM QR\",\"min\":\"0.10\",\"max\":\"0\",\"merchant_key\":\"https:\\/\\/quickpanelv2.ownsmmpanel.in\\/img\\/files\\/aa406f571f4dfeee85806e2322a62597.png\",\"merchant_mid\":\"\",\"merchant_website\":\"DEFAULT\",\"fee\":\"0\"}', 6, '2', ''),
(15, 'Razorpay', 'razorpay', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Razorpay\",\"min\":\"1\",\"max\":\"0\",\"api_key\":\"0\",\"api_secret_key\":\"0\",\"fee\":\"0\",\"currency\":\"INR\"}', 9, '2', ''),
(16, 'Iyzico', 'iyzico', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Iyzico\",\"min\":\"1\",\"max\":\"0\",\"api_key\":\"0\",\"api_secret_key\":\"0\",\"fee\":\"0\",\"currency\":\"USD\"}', 21, '2', ''),
(17, 'Authorize.net', 'authorize-net', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Authorize.net\",\"min\":\"1\",\"max\":\"0\",\"api_login_id\":\"0\",\"secret_transaction_key\":\"0\",\"fee\":\"0\",\"currency\":\"USD\"}', 22, '2', ''),
(20, 'Ravepay', 'ravepay', 1, 10, '1', '{\"method_type\":\"2\",\"name\":\"Ravepay\",\"min\":\"1\",\"max\":\"10\",\"public_api_key\":\"0\",\"secret_api_key\":\"0\",\"fee\":\"0\",\"currency\":\"USD\"}', 23, '2', ''),
(21, 'Pagseguro', 'pagseguro', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Pagseguro\",\"min\":\"1\",\"max\":\"0\",\"email_id\":\"0\",\"live_production_token\":\"0\",\"fee\":\"0\",\"currency\":\"USD\"}', 24, '2', ''),
(22, 'Cashmaal', 'Cashmaal', 10, 0, '2', '{\"method_type\":\"2\",\"name\":\"JAZZCASH\\/EASYPAISA [\\ud835\\udc02\\ud835\\udc1a\\ud835\\udc2c\\ud835\\udc21\\ud835\\udc0c\\ud835\\udc1a\\ud835\\udc25\\ud835\\udc25] [\\ud835\\udc14\\ud835\\udc12\\ud835\\udc03]\",\"min\":\"10\",\"max\":\"0\",\"web_id\":\"\",\"fee\":\"0\",\"currency\":\"USD\"}', 3, '2', ''),
(25, 'Refer & earn', 'refer', 0, 0, '1', '{\"method_type\":\"2\",\"name\":\"Do Not Use\",\"min\":\"1\",\"max\":\"10000\",\"merchant_key\":\"P#n%aKfB3&DRAMqH\",\"merchant_mid\":\"DBWvgX98800736620578\",\"merchant_website\":\"DEFAULT\",\"fee\":\"0\",\"currency\":\"\"}', 25, '1', ''),
(26, 'payumoney', 'payumoney', 0.1, 0, '2', '{\"method_type\":\"2\",\"name\":\"UPI PHONEPE \\/ PAYTM - GPAY [\\ud835\\udc0f\\ud835\\udc00\\ud835\\udc18\\ud835\\udc14\\ud835\\udc0c\\ud835\\udc0e\\ud835\\udc0d\\ud835\\udc04\\ud835\\udc18] [\\ud835\\udc08\\ud835\\udc0d\\ud835\\udc11]\",\"min\":\"0.10\",\"max\":\"0\",\"merchant_key\":\"zQhJK3\",\"salt\":\"hJimPPAhAvOv3j6g1c1yBAkTK0h9SswH\",\"fee\":\"2\",\"currency\":\"USD\"}', 1, '2', ''),
(30, 'Freebalance', 'Freebalance', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"Freebalance\",\"min\":\"1\",\"max\":\"0\",\"merchant_id\":\"\",\"merchant_key\":\"\",\"merchant_salt\":\"\",\"fee\":\"0\"}', 30, '1', ''),
(31, 'Perfect Money', 'perfectmoney', 0.1, 10000, '2', '{\"method_type\":\"2\",\"name\":\"2% Extra Bonus [\\ud835\\udc0f\\ud835\\udc1e\\ud835\\udc2b\\ud835\\udc1f\\ud835\\udc1e\\ud835\\udc1c\\ud835\\udc2d\\ud835\\udc0c\\ud835\\udc28\\ud835\\udc27\\ud835\\udc32] [\\ud835\\udc14\\ud835\\udc12\\ud835\\udc03]\",\"min\":\"0.10\",\"max\":\"10000\",\"passphrase\":\"\",\"usd\":\"\",\"merchant_website\":\"YourDomain.com\",\"fee\":\"1\"}', 2, '2', ''),
(32, 'Coinbase', 'Coinbase', 1, 0, '2', '{\"method_type\":\"2\",\"name\":\"Cryptocurrency  [\\ud835\\udc02\\ud835\\udc28\\ud835\\udc22\\ud835\\udc27\\ud835\\udc1b\\ud835\\udc1a\\ud835\\udc2c\\ud835\\udc1e] [\\ud835\\udc01\\ud835\\udc13\\ud835\\udc02] \",\"min\":\"1\",\"max\":\"0\",\"api_key\":\"\",\"webhook_api\":\"\",\"fee\":\"3\"}', 4, '2', ''),
(33, 'Webmoney', 'Webmoney', 1, 1, '1', '{\"method_type\":\"2\",\"name\":\"Webmoney\",\"min\":\"1\",\"max\":\"1\",\"wmid\":\"\",\"purse\":\"\",\"fee\":\"0\"}', 25, '2', ''),
(34, 'UnitPay', 'UnityPay', 1, 0, '1', '{\"method_type\":\"1\",\"name\":\"UnitPay\",\"min\":\"1\",\"max\":\"0\",\"secret_key\":\"\",\"reg_email\":\"\",\"fee\":\"0\"}', 26, '2', ''),
(35, 'Payeer', 'payeer', 10, 0, '1', '{\"method_type\":\"2\",\"name\":\"Payeer\",\"min\":\"1\",\"max\":\"100000\",\"account\":\"P1059667343\",\"client_secret\":\"tQCaSXyX94pRgpOt\",\"user_id\":\"1654044737\",\"user_pass\":\"tQCaSXyX94pRgpOt\",\"m_shop\":\"1652134607\"}', 13, '2', ''),
(37, 'opay', 'opay', 1, 1000, '1', '{\"method_type\":\"1\",\"is_demo\":\"0\",\"name\":\"opay - Visa - Mastercard - Mobile Wallets\",\"min\":\"1\",\"max\":\"1000\",\"merchant_id\":\"\",\"secret_key\":\"\",\"public_key\":\"\",\"dollar_rate\":\"18.5\"}', 15, '2', ''),
(38, 'Custom', 'custom', 0, 0, '1', '{\"method_type\":\"1\",\"name\":\"Manul\",\"content\":\"\"}', 28, '2', ''),
(987, 'Gbprimepay', 'gbprimepay', 10, 10000, '1', '{\"method_type\":\"1\",\"name\":\"Gbprimepay\",\"min\":\"10\",\"max\":\"10000\",\"token\":\"\"}', 14, '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `referral_id` int(11) NOT NULL,
  `referral_client_id` int(11) NOT NULL,
  `referral_clicks` double NOT NULL DEFAULT 0,
  `referral_sign_up` double NOT NULL DEFAULT 0,
  `referral_totalFunds_byReffered` double NOT NULL DEFAULT 0,
  `referral_earned_commision` double DEFAULT 0,
  `referral_requested_commision` varchar(225) DEFAULT '0',
  `referral_total_commision` double DEFAULT 0,
  `referral_status` enum('1','2') NOT NULL DEFAULT '1',
  `referral_code` text NOT NULL,
  `referral_rejected_commision` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `referral`
--

INSERT INTO `referral` (`referral_id`, `referral_client_id`, `referral_clicks`, `referral_sign_up`, `referral_totalFunds_byReffered`, `referral_earned_commision`, `referral_requested_commision`, `referral_total_commision`, `referral_status`, `referral_code`, `referral_rejected_commision`) VALUES
(1, 1, 0, 0, 0, 0, '0', 0, '1', '6ada1e', 0),
(2, 2, 0, 0, 0, 0, '0', 0, '1', '2e4d30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `referral_payouts`
--

CREATE TABLE `referral_payouts` (
  `r_p_id` int(11) NOT NULL,
  `r_p_code` text NOT NULL,
  `r_p_status` enum('1','2','3','4','0') NOT NULL DEFAULT '0',
  `r_p_amount_requested` double NOT NULL,
  `r_p_requested_at` datetime NOT NULL,
  `r_p_updated_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `refill_status`
--

CREATE TABLE `refill_status` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `refill_apiid` int(11) DEFAULT NULL,
  `order_url` text NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `service_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `refill_status` enum('Pending','Refilling','Completed','Rejected','Error') DEFAULT 'Pending',
  `order_apiid` int(11) DEFAULT 0,
  `refill_response` text DEFAULT NULL,
  `refill_where` enum('site','api') DEFAULT 'site'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `serviceapi_alert`
--

CREATE TABLE `serviceapi_alert` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `serviceapi_alert` text NOT NULL,
  `servicealert_extra` text NOT NULL,
  `servicealert_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_api` int(11) NOT NULL DEFAULT 0,
  `api_service` int(11) NOT NULL DEFAULT 0,
  `api_servicetype` enum('1','2') NOT NULL DEFAULT '2',
  `api_detail` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `service_line` double NOT NULL,
  `service_type` enum('1','2') NOT NULL DEFAULT '2',
  `service_package` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17') NOT NULL,
  `service_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `service_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `service_price` varchar(225) NOT NULL,
  `service_min` double NOT NULL,
  `service_max` double NOT NULL,
  `service_dripfeed` enum('1','2') NOT NULL DEFAULT '1',
  `service_autotime` double NOT NULL DEFAULT 0,
  `service_autopost` double NOT NULL DEFAULT 0,
  `service_speed` enum('1','2','3','4') NOT NULL,
  `want_username` enum('1','2') NOT NULL DEFAULT '1',
  `service_secret` enum('1','2') NOT NULL DEFAULT '2',
  `price_type` enum('normal','percent','amount') NOT NULL DEFAULT 'normal',
  `price_cal` text DEFAULT NULL,
  `instagram_second` enum('1','2') NOT NULL DEFAULT '2',
  `start_count` enum('none','instagram_follower','instagram_photo','') NOT NULL,
  `instagram_private` enum('1','2') NOT NULL,
  `name_lang` varchar(225) DEFAULT 'en',
  `description_lang` text DEFAULT NULL,
  `time_lang` varchar(225) NOT NULL DEFAULT 'Not enough data',
  `time` varchar(225) NOT NULL DEFAULT 'Not enough data',
  `cancelbutton` enum('1','2') NOT NULL DEFAULT '2' COMMENT '1 -> ON, 2 -> OFF',
  `show_refill` enum('true','false') NOT NULL DEFAULT 'false',
  `service_profit` varchar(225) NOT NULL,
  `refill_days` varchar(225) NOT NULL DEFAULT '30',
  `refill_hours` varchar(225) NOT NULL DEFAULT '24',
  `avg_days` int(11) NOT NULL,
  `avg_hours` int(11) NOT NULL,
  `avg_minutes` int(11) NOT NULL,
  `avg_many` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_api`, `api_service`, `api_servicetype`, `api_detail`, `category_id`, `service_line`, `service_type`, `service_package`, `service_name`, `service_description`, `service_price`, `service_min`, `service_max`, `service_dripfeed`, `service_autotime`, `service_autopost`, `service_speed`, `want_username`, `service_secret`, `price_type`, `price_cal`, `instagram_second`, `start_count`, `instagram_private`, `name_lang`, `description_lang`, `time_lang`, `time`, `cancelbutton`, `show_refill`, `service_profit`, `refill_days`, `refill_hours`, `avg_days`, `avg_hours`, `avg_minutes`, `avg_many`) VALUES
(1, 17, 145, '2', '{\"min\":\"100\",\"max\":\"7000\",\"rate\":\"11.0500\",\"refill\":null,\"currency\":\"USD\"}', 1, 1, '2', '1', 'Instagram Followers [Real] [INSTANT] BEST SERVICE', 'Link: www.instagram.com/username\r\n\r\nStart: 0-2H\r\nSpeed: 1K/H\r\nQuality: REAL\r\nRefill: NOT\r\n\r\nMore Info,\r\nSuper Fast!!\r\nInstant !!\r\nDROP RATIO : 5-40?n Drop More also sometimes!!', '0.184', 100, 7000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers [Real] [INSTANT] BEST SERVICE\"}', '{\"en\":\"Link: www.instagram.com\\/username\\r\\n\\r\\nStart: 0-2H\\r\\nSpeed: 1K\\/H\\r\\nQuality: REAL\\r\\nRefill: NOT\\r\\n\\r\\nMore Info,\\r\\nSuper Fast!!\\r\\nInstant !!\\r\\nDROP RATIO : 5-40?n Drop More also sometimes!!\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(2, 17, 147, '2', '{\"min\":\"10\",\"max\":\"5000\",\"rate\":\"15.5100\",\"refill\":null,\"currency\":\"USD\"}', 1, 1, '2', '1', 'Instagram Followers [REAL] SLOW', 'Link: www.instagram.com/username/\r\n\r\nStart: 0-24H\r\nSpeed: 1K / Day\r\nQuality: REAL\r\nRefill: NOT\r\n\r\nMore Info,\r\nNo REFILL\r\nOrder may be set to partial', '0.259', 10, 5000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers [REAL] SLOW\"}', '{\"en\":\"Link: www.instagram.com\\/username\\/\\r\\n\\r\\nStart: 0-24H\\r\\nSpeed: 1K \\/ Day\\r\\nQuality: REAL\\r\\nRefill: NOT\\r\\n\\r\\nMore Info,\\r\\nNo REFILL\\r\\nOrder may be set to partial\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(3, 17, 149, '2', '{\"min\":\"10\",\"max\":\"10000\",\"rate\":\"16.7200\",\"refill\":null,\"currency\":\"USD\"}', 1, 1, '2', '1', 'Instagram Followers [REAL] MQ', 'Link: www.instagram.com/username/\r\n\r\nStart: 0-24H\r\nSpeed: 1K / Day\r\nQuality: REAL\r\nRefill: NOT\r\n\r\nMore Info,\r\nNo REFILL\r\nOrder may be set to partial', '0.279', 10, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers [REAL] MQ\"}', '{\"en\":\"Link: www.instagram.com\\/username\\/\\r\\n\\r\\nStart: 0-24H\\r\\nSpeed: 1K \\/ Day\\r\\nQuality: REAL\\r\\nRefill: NOT\\r\\n\\r\\nMore Info,\\r\\nNo REFILL\\r\\nOrder may be set to partial\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(4, 17, 148, '2', '{\"min\":\"10\",\"max\":\"6000\",\"rate\":\"16.7200\",\"refill\":null,\"currency\":\"USD\"}', 1, 1, '2', '1', 'Instagram Followers [REAL] LQ', 'Link: www.instagram.com/username/\r\n\r\nStart: 0-24H\r\nSpeed: 1K/ Day\r\nQuality: REAL\r\nRefill: NOT\r\nMore Info,\r\nNo REFILL\r\nOrder may be set to partial', '0.279', 10, 6000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers [REAL] LQ\"}', '{\"en\":\"Link: www.instagram.com\\/username\\/\\r\\n\\r\\nStart: 0-24H\\r\\nSpeed: 1K\\/ Day\\r\\nQuality: REAL\\r\\nRefill: NOT\\r\\nMore Info,\\r\\nNo REFILL\\r\\nOrder may be set to partial\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(5, 17, 163, '2', '{\"min\":\"10\",\"max\":\"1000\",\"rate\":\"7.8000\",\"refill\":null,\"currency\":\"USD\"}', 2, 1, '2', '1', 'Instagram  Followers [ Instant ] ] [ Slow Speed ]', 'Start - Instant  \r\n\r\nSpeed - 5K-10K / day \r\n\r\nQuality - Mix Quality \r\n\r\nRefill - No Refill \r\n\r\nLink - Account URL \r\n\r\nNote \r\n\r\n➜  No speed up available in cheap Service \r\n\r\n➜  Start may be delayed due to load in server ✌️\r\n\r\n➜  No api Discounts on this service ,❣️😔\r\n\r\n➜   If not satisfied with service order can be cancelled or partial within 12 hrs 🙂', '0.130', 10, 1000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram  Followers [ Instant ] ] [ Slow Speed ]\"}', '{\"en\":\"Start - Instant  \\r\\n\\r\\nSpeed - 5K-10K \\/ day \\r\\n\\r\\nQuality - Mix Quality \\r\\n\\r\\nRefill - No Refill \\r\\n\\r\\nLink - Account URL \\r\\n\\r\\nNote \\r\\n\\r\\n\\u279c  No speed up available in cheap Service \\r\\n\\r\\n\\u279c  Start may be delayed due to load in server \\u270c\\ufe0f\\r\\n\\r\\n\\u279c  No api Discounts on this service ,\\u2763\\ufe0f\\ud83d\\ude14\\r\\n\\r\\n\\u279c   If not satisfied with service order can be cancelled or partial within 12 hrs \\ud83d\\ude42\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(6, 17, 164, '2', '{\"min\":\"10\",\"max\":\"150000\",\"rate\":\"13.6500\",\"refill\":null,\"currency\":\"USD\"}', 2, 1, '2', '1', 'Instagram Followers [ HQ ] [ Big Base ]  [ No Refill ]', '', '0.228', 10, 150000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers [ HQ ] [ Big Base ]  [ No Refill ]\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(7, 17, 165, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"20.6100\",\"refill\":null,\"currency\":\"USD\"}', 2, 1, '2', '1', 'Instagram Followers [ Indian Mix ] [ 0-1 hrs ]', 'Start - 0-1 hrs \r\n\r\nSpeed - 10K-20K / day \r\n\r\nQuality - Mix Quality \r\n\r\nDrop - Less Drop \r\n\r\n\r\nRefill - No \r\n\r\nLink - Instagram Profile URL / Username \r\n\r\n\r\nNote - \r\n\r\n\r\n\r\n➜ The Services in this category of no gaurentee  so they can drop 0-100% no complains accepted in any case \r\n\r\n➜ No Refill followers services can have delays sometimes due to load [ Since Cheapest ] \r\n\r\n➜ API Users and Big Resellers Can Ask For Discounts \r\n\r\n', '0.344', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers [ Indian Mix ] [ 0-1 hrs ]\"}', '{\"en\":\"Start - 0-1 hrs \\r\\n\\r\\nSpeed - 10K-20K \\/ day \\r\\n\\r\\nQuality - Mix Quality \\r\\n\\r\\nDrop - Less Drop \\r\\n\\r\\n\\r\\nRefill - No \\r\\n\\r\\nLink - Instagram Profile URL \\/ Username \\r\\n\\r\\n\\r\\nNote - \\r\\n\\r\\n\\r\\n\\r\\n\\u279c The Services in this category of no gaurentee  so they can drop 0-100% no complains accepted in any case \\r\\n\\r\\n\\u279c No Refill followers services can have delays sometimes due to load [ Since Cheapest ] \\r\\n\\r\\n\\u279c API Users and Big Resellers Can Ask For Discounts \\r\\n\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(8, 17, 167, '2', '{\"min\":\"100\",\"max\":\"10000\",\"rate\":\"21.4500\",\"refill\":null,\"currency\":\"USD\"}', 2, 1, '2', '1', 'Instagram Followers [ AR𝟑𝟔𝟓 ] [ 10K-20K / day ] [ Instant ] [ Natural Speed ]', 'Start - Instant \r\nSpeed - 10K-20K / day \r\nDrop - 0-5% drop [ Refill Button Working ] \r\nRefill - 365 days \r\nLink - Instagram Profile URL \r\n\r\nNote - \r\n\r\nRefill Button is working press refill button for drops \r\nQuality is fine working with natural speed \r\nDo not use this service if u do not have patience \r\n\r\nDemo Quality - \r\n\r\nCheck his followers - \r\n\r\nhttps://www.instagram.com/dawson.marshd9q1/', '0.358', 100, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers [ AR\\ud835\\udfd1\\ud835\\udfd4\\ud835\\udfd3 ] [ 10K-20K \\/ day ] [ Instant ] [ Natural Speed ]\"}', '{\"en\":\"Start - Instant \\r\\nSpeed - 10K-20K \\/ day \\r\\nDrop - 0-5% drop [ Refill Button Working ] \\r\\nRefill - 365 days \\r\\nLink - Instagram Profile URL \\r\\n\\r\\nNote - \\r\\n\\r\\nRefill Button is working press refill button for drops \\r\\nQuality is fine working with natural speed \\r\\nDo not use this service if u do not have patience \\r\\n\\r\\nDemo Quality - \\r\\n\\r\\nCheck his followers - \\r\\n\\r\\nhttps:\\/\\/www.instagram.com\\/dawson.marshd9q1\\/\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(9, 17, 237, '2', '{\"min\":\"10\",\"max\":\"5000\",\"rate\":\"8.2000\",\"refill\":null,\"currency\":\"USD\"}', 3, 1, '2', '1', 'Instagram Followers | Start 0-1 Hour | No Refill', 'Link; Profile Link\r\n\r\n10% of followers can drop or 100%. NO REFUND\r\nCancel button: Yes', '0.137', 10, 5000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers | Start 0-1 Hour | No Refill\"}', '{\"en\":\"Link; Profile Link\\r\\n\\r\\n10% of followers can drop or 100%. NO REFUND\\r\\nCancel button: Yes\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(10, 17, 236, '2', '{\"min\":\"10\",\"max\":\"150000\",\"rate\":\"10.6600\",\"refill\":null,\"currency\":\"USD\"}', 3, 1, '2', '1', 'Instagram Followers | Fast', 'Link; Profile Link\r\n\r\nInstant Start\r\n\r\nVery Slow Speed ~ 10 Per Day\r\nNo Refill\r\nLow Drop ~ 10% Drop\r\nNon-Stable Service\r\n\r\nMore Info,\r\nWhen you order, put the profile link, please. Otherwise, the order will be cancelled.\r\nNo Cancel Button', '0.178', 10, 150000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers | Fast\"}', '{\"en\":\"Link; Profile Link\\r\\n\\r\\nInstant Start\\r\\n\\r\\nVery Slow Speed ~ 10 Per Day\\r\\nNo Refill\\r\\nLow Drop ~ 10% Drop\\r\\nNon-Stable Service\\r\\n\\r\\nMore Info,\\r\\nWhen you order, put the profile link, please. Otherwise, the order will be cancelled.\\r\\nNo Cancel Button\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(11, 17, 239, '2', '{\"min\":\"20\",\"max\":\"2000\",\"rate\":\"10.6600\",\"refill\":null,\"currency\":\"USD\"}', 3, 1, '2', '1', 'Instagram Followers | Fast | Max 2K', 'Link; Profile  Link\r\n\r\nSpeed: 0-30 Minutes\r\nMin Order: 10 | Max Order: 2K\r\nGuarantee: No Guarantee\r\n\r\nMore Info,\r\nCancel Button: Yes\r\nDrop ratio under 10-100% for now', '0.178', 20, 2000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers | Fast | Max 2K\"}', '{\"en\":\"Link; Profile  Link\\r\\n\\r\\nSpeed: 0-30 Minutes\\r\\nMin Order: 10 | Max Order: 2K\\r\\nGuarantee: No Guarantee\\r\\n\\r\\nMore Info,\\r\\nCancel Button: Yes\\r\\nDrop ratio under 10-100% for now\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(12, 17, 240, '2', '{\"min\":\"10\",\"max\":\"100000\",\"rate\":\"11.4800\",\"refill\":null,\"currency\":\"USD\"}', 3, 1, '2', '1', 'Instagram Followers | Fast', 'Link; Profile Link', '0.191', 10, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers | Fast\"}', '{\"en\":\"Link; Profile Link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(13, 17, 170, '2', '{\"min\":\"100\",\"max\":\"350000\",\"rate\":\"4.4700\",\"refill\":null,\"currency\":\"USD\"}', 4, 1, '2', '1', 'Instagram Likes [POST/REELS/IGTV] - 400K/D SUPER FAST CHEAPEST', 'Link Type: reel/post/igtv link\r\n\r\nQuality: REAL LOOKING\r\nStart: 0-1H\r\nSpeed: 300K-400K/D\r\nRefill: NOT\r\n\r\nMore Info,\r\nNO REFILL. , NO GUARANTEE\r\nCAn DROP ALL AT ANY TIME , NO GURARANTEE . ONLY 50-60 % LIKES YOU GET\r\nIF YOU ORDER 1000 - YOU GET 500-600 AROUND ONLY\r\nWORKS FOR ALL REEL / IGTV / POST VIEWS\r\nCAN DROP , NO REFILL and NO GUARANTEE SERVICE \r\nNO CANCEL / NO REFUNDS / NO REFILL IF CAME LESS ON ANY OFFERS SERVICES', '0.075', 100, 350000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Likes [POST\\/REELS\\/IGTV] - 400K\\/D SUPER FAST CHEAPEST\"}', '{\"en\":\"Link Type: reel\\/post\\/igtv link\\r\\n\\r\\nQuality: REAL LOOKING\\r\\nStart: 0-1H\\r\\nSpeed: 300K-400K\\/D\\r\\nRefill: NOT\\r\\n\\r\\nMore Info,\\r\\nNO REFILL. , NO GUARANTEE\\r\\nCAn DROP ALL AT ANY TIME , NO GURARANTEE . ONLY 50-60 % LIKES YOU GET\\r\\nIF YOU ORDER 1000 - YOU GET 500-600 AROUND ONLY\\r\\nWORKS FOR ALL REEL \\/ IGTV \\/ POST VIEWS\\r\\nCAN DROP , NO REFILL and NO GUARANTEE SERVICE \\r\\nNO CANCEL \\/ NO REFUNDS \\/ NO REFILL IF CAME LESS ON ANY OFFERS SERVICES\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(14, 17, 181, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"4.8400\",\"refill\":null,\"currency\":\"USD\"}', 4, 1, '2', '1', 'Instagram Likes [Real] - CHEAPEST IN MARKET  NEW', 'Link Type: www.instagram.com/p/B910VxfgEIO/\r\n\r\nStart: 0-24H\r\nSpeed: 100-1K/D\r\nQuality: REAL\r\nRefill: NOT\r\n\r\nMore Info,\r\nNew Cheapest service \r\nDROP RATIO : 50-80% (can drop more )\r\nNo Refill / No Cancel', '0.081', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Likes [Real] - CHEAPEST IN MARKET\\u00a0 NEW\"}', '{\"en\":\"Link Type: www.instagram.com\\/p\\/B910VxfgEIO\\/\\r\\n\\r\\nStart: 0-24H\\r\\nSpeed: 100-1K\\/D\\r\\nQuality: REAL\\r\\nRefill: NOT\\r\\n\\r\\nMore Info,\\r\\nNew Cheapest service \\r\\nDROP RATIO : 50-80% (can drop more )\\r\\nNo Refill \\/ No Cancel\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(15, 17, 172, '2', '{\"min\":\"10\",\"max\":\"300000\",\"rate\":\"6.4400\",\"refill\":null,\"currency\":\"USD\"}', 4, 1, '2', '1', 'Instagram Likes [POST/REELS/IGTV] - SUPER INSTANT HIGH FAST', 'Link: reel/post/igtv link\r\n\r\nQuality: REAL LOOKING\r\nStart: 0-1H\r\nSpeed: 40K-50K/D\r\nRefill: NOT\r\n\r\nMore Info,\r\nNO GUARANTEE\r\nSPEED: 40K-50K/D\r\nLESS DROP\r\nWORKS FOR ALL REEL / IGTV / POST VIEWS\r\nCAN DROP , NO REFILL and NO GUARANTEE SERVICE \r\nNO CANCEL / NO REFUNDS / NO REFILL IF CAME LESS ON ANY OFFERS SERVICES', '0.107', 10, 300000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Likes [POST\\/REELS\\/IGTV] - SUPER INSTANT HIGH FAST\"}', '{\"en\":\"Link: reel\\/post\\/igtv link\\r\\n\\r\\nQuality: REAL LOOKING\\r\\nStart: 0-1H\\r\\nSpeed: 40K-50K\\/D\\r\\nRefill: NOT\\r\\n\\r\\nMore Info,\\r\\nNO GUARANTEE\\r\\nSPEED: 40K-50K\\/D\\r\\nLESS DROP\\r\\nWORKS FOR ALL REEL \\/ IGTV \\/ POST VIEWS\\r\\nCAN DROP , NO REFILL and NO GUARANTEE SERVICE \\r\\nNO CANCEL \\/ NO REFUNDS \\/ NO REFILL IF CAME LESS ON ANY OFFERS SERVICES\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(16, 17, 174, '2', '{\"min\":\"25\",\"max\":\"80000\",\"rate\":\"7.6600\",\"refill\":null,\"currency\":\"USD\"}', 4, 1, '2', '1', 'Instagram Likes [INDIA MIXED] NEW', 'Link Type: post link\r\n\r\nQuality: REAL LOOKING\r\nStart: 0-12H\r\nSpeed: 10K-50K/D\r\nRefill: NOT\r\nSUPER FAST\r\nLOW QUALITY\r\nNO REFILL , NO GUARANTEE\r\n\r\nMore Info,\r\nInstant Instagram Likes\r\n0-12H START . OF HIGH ORDERS\r\nLowest Rate in Market\r\nWe Don\\\\\\\\\\\\\\\'t Have Any Drop Issue in Our Instagram Likes Server.\r\n( If Drop No Refill )\r\nOrder take Time Start Sometimes\r\nNo Cancellation once Order Placed', '0.128', 25, 80000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Likes [INDIA MIXED] NEW\"}', '{\"en\":\"Link Type: post link\\r\\n\\r\\nQuality: REAL LOOKING\\r\\nStart: 0-12H\\r\\nSpeed: 10K-50K\\/D\\r\\nRefill: NOT\\r\\nSUPER FAST\\r\\nLOW QUALITY\\r\\nNO REFILL , NO GUARANTEE\\r\\n\\r\\nMore Info,\\r\\nInstant Instagram Likes\\r\\n0-12H START . OF HIGH ORDERS\\r\\nLowest Rate in Market\\r\\nWe Don\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'t Have Any Drop Issue in Our Instagram Likes Server.\\r\\n( If Drop No Refill )\\r\\nOrder take Time Start Sometimes\\r\\nNo Cancellation once Order Placed\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(17, 17, 217, '2', '{\"min\":\"100\",\"max\":\"200000\",\"rate\":\"3.1500\",\"refill\":null,\"currency\":\"USD\"}', 5, 1, '2', '1', 'Instagram Likes  [ 20K-30K / day ] [ 0-1 hrs ]', 'Start - Instant [ 0-15 min ] \r\n\r\nSpeed - 25K-50K / day \r\n\r\nDrop - No \r\n\r\nRefill - No\r\n\r\nLink - Instagram Post URL\r\n\r\nNote - \r\n\r\nInstant Start Good Speed Service \r\n\r\nNo Refill Service\r\n\r\n\r\n', '0.053', 100, 200000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Likes  [ 20K-30K \\/ day ] [ 0-1 hrs ]\"}', '{\"en\":\"Start - Instant [ 0-15 min ] \\r\\n\\r\\nSpeed - 25K-50K \\/ day \\r\\n\\r\\nDrop - No \\r\\n\\r\\nRefill - No\\r\\n\\r\\nLink - Instagram Post URL\\r\\n\\r\\nNote - \\r\\n\\r\\nInstant Start Good Speed Service \\r\\n\\r\\nNo Refill Service\\r\\n\\r\\n\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(18, 17, 219, '2', '{\"min\":\"10\",\"max\":\"500000\",\"rate\":\"3.8900\",\"refill\":null,\"currency\":\"USD\"}', 5, 1, '2', '1', 'Instagram Likes  [ 300K-500K /day ] [ Instant ]', 'Start - Instant\r\n\r\nSpeed -300-500K+ / day\r\n\r\nQuality - Mix\r\n\r\nDrop - Non Drop \r\n\r\nRefill - Lifetime \r\n\r\nLink - Instagram Post / Reel / IGTV URL\r\n\r\nNote -\r\n\r\n➜  Most Accounts have profiles \r\n\r\n➜  Instant Cancel with button \r\n\r\n➜ Instant Refill start with button\r\n\r\n➜ Fastest Cancel And Refill button among all likes services \r\n\r\n\r\n', '0.065', 10, 500000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Likes  [ 300K-500K \\/day ] [ Instant ]\"}', '{\"en\":\"Start - Instant\\r\\n\\r\\nSpeed -300-500K+ \\/ day\\r\\n\\r\\nQuality - Mix\\r\\n\\r\\nDrop - Non Drop \\r\\n\\r\\nRefill - Lifetime \\r\\n\\r\\nLink - Instagram Post \\/ Reel \\/ IGTV URL\\r\\n\\r\\nNote -\\r\\n\\r\\n\\u279c  Most Accounts have profiles \\r\\n\\r\\n\\u279c  Instant Cancel with button \\r\\n\\r\\n\\u279c Instant Refill start with button\\r\\n\\r\\n\\u279c Fastest Cancel And Refill button among all likes services \\r\\n\\r\\n\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(19, 17, 220, '2', '{\"min\":\"10\",\"max\":\"100000\",\"rate\":\"5.3000\",\"refill\":null,\"currency\":\"USD\"}', 5, 1, '2', '1', 'Instagram Likes Non Drop [ Mix ] [ 50K+ / day ] [ Instant ] [ Lifetime Refill ]', 'Start - Always Instant \r\n\r\nSpeed - 100K+ / day and more \r\n\r\nQuality - Mix Quality \r\n\r\nDrop - Non Drop + 5% Extra Delivery \r\n\r\nRefill - Lifetime \r\n\r\nLink - Instagram Profile URL \r\n\r\nNote - \r\n\r\nAll Accounts With Profile And Posts \r\n\r\nSpeed can be sometimes delayed but quality is stable \r\n\r\nRefill button is active [ There are  no drops ] ', '0.088', 10, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Likes Non Drop [ Mix ] [ 50K+ \\/ day ] [ Instant ] [ Lifetime Refill ]\"}', '{\"en\":\"Start - Always Instant \\r\\n\\r\\nSpeed - 100K+ \\/ day and more \\r\\n\\r\\nQuality - Mix Quality \\r\\n\\r\\nDrop - Non Drop + 5% Extra Delivery \\r\\n\\r\\nRefill - Lifetime \\r\\n\\r\\nLink - Instagram Profile URL \\r\\n\\r\\nNote - \\r\\n\\r\\nAll Accounts With Profile And Posts \\r\\n\\r\\nSpeed can be sometimes delayed but quality is stable \\r\\n\\r\\nRefill button is active [ There are  no drops ] \"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(20, 17, 215, '2', '{\"min\":\"10\",\"max\":\"100000\",\"rate\":\"5.8500\",\"refill\":null,\"currency\":\"USD\"}', 5, 1, '2', '1', 'Instagram Likes [ Instant ] [ One Click Delivery ]', 'Start - Immediate Start \r\n\r\nSpeed - Fastest Speed \r\n\r\nQuality - HQ \r\n\r\nDrop - Non Drop \r\n\r\nRefill - Lifetime \r\n\r\nLink - Instagram Post URL \r\n\r\nNote - \r\n\r\n➜ Fastest Service Added here to use in case of urgent orders \r\n\r\n➜ Recommended to use if need fast likes \r\n\r\n➜ Quality Can Change Sometimes but speed is very stable\r\n\r\n➜ Cancel Button Active but no mannual support since fastest service \r\n\r\n\r\n\r\n', '0.098', 10, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Likes [ Instant ] [ One Click Delivery ]\"}', '{\"en\":\"Start - Immediate Start \\r\\n\\r\\nSpeed - Fastest Speed \\r\\n\\r\\nQuality - HQ \\r\\n\\r\\nDrop - Non Drop \\r\\n\\r\\nRefill - Lifetime \\r\\n\\r\\nLink - Instagram Post URL \\r\\n\\r\\nNote - \\r\\n\\r\\n\\u279c Fastest Service Added here to use in case of urgent orders \\r\\n\\r\\n\\u279c Recommended to use if need fast likes \\r\\n\\r\\n\\u279c Quality Can Change Sometimes but speed is very stable\\r\\n\\r\\n\\u279c Cancel Button Active but no mannual support since fastest service \\r\\n\\r\\n\\r\\n\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(21, 17, 246, '2', '{\"min\":\"20\",\"max\":\"50\",\"rate\":\"0.1066\",\"refill\":null,\"currency\":\"USD\"}', 6, 1, '2', '1', 'Instagram Likes | Start 0-48 Hours', 'Link; Post Link\r\n\r\nNo Cancel\r\nNo Refund\r\nStart 0-48 Hours', '0.002', 20, 50, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Likes | Start 0-48 Hours\"}', '{\"en\":\"Link; Post Link\\r\\n\\r\\nNo Cancel\\r\\nNo Refund\\r\\nStart 0-48 Hours\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(22, 17, 247, '2', '{\"min\":\"100\",\"max\":\"50000\",\"rate\":\"1.6400\",\"refill\":null,\"currency\":\"USD\"}', 6, 1, '2', '1', 'Instagram Likes | No Cancel | No Warranty', 'Link; Post Link', '0.027', 100, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Likes | No Cancel | No Warranty\"}', '{\"en\":\"Link; Post Link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(23, 17, 248, '2', '{\"min\":\"10\",\"max\":\"500000\",\"rate\":\"3.2800\",\"refill\":null,\"currency\":\"USD\"}', 6, 1, '2', '1', 'Instagram Likes | Fast Start', 'Link; Post Link', '0.055', 10, 500000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Likes | Fast Start\"}', '{\"en\":\"Link; Post Link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(24, 17, 249, '2', '{\"min\":\"10\",\"max\":\"300000\",\"rate\":\"4.1000\",\"refill\":null,\"currency\":\"USD\"}', 6, 1, '2', '1', 'Instagram Likes | Instant Speed | No/Low Drop', 'Link; post Link', '0.068', 10, 300000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Likes | Instant Speed | No\\/Low Drop\"}', '{\"en\":\"Link; post Link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(25, 17, 275, '2', '{\"min\":\"100\",\"max\":\"500000000\",\"rate\":\"0.1300\",\"refill\":null,\"currency\":\"USD\"}', 7, 1, '2', '1', 'Instagram Views [NEW]', 'Link type: www.instagram.com/p/B9rtqYnA88s/\r\n\r\nStart: 0-1H\r\nSpeed: 100K/H\r\nQuality: REAL\r\nRefill: NOT', '0.002', 100, 500000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Views [NEW]\"}', '{\"en\":\"Link type: www.instagram.com\\/p\\/B9rtqYnA88s\\/\\r\\n\\r\\nStart: 0-1H\\r\\nSpeed: 100K\\/H\\r\\nQuality: REAL\\r\\nRefill: NOT\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(26, 17, 264, '2', '{\"min\":\"100\",\"max\":\"500000000\",\"rate\":\"0.1400\",\"refill\":null,\"currency\":\"USD\"}', 7, 1, '2', '1', 'Instagram VIEWS + REELS + IGTV -  CHEAPEST', 'Link type; Post/igtv', '0.002', 100, 500000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram VIEWS + REELS + IGTV -  CHEAPEST\"}', '{\"en\":\"Link type; Post\\/igtv\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(27, 17, 276, '2', '{\"min\":\"100\",\"max\":\"10000000\",\"rate\":\"0.3000\",\"refill\":null,\"currency\":\"USD\"}', 7, 1, '2', '1', 'Instagram Views [CHEAP]', 'Link: www.instagram.com/p/B9rtqYnA88s/\r\n\r\nStart: 0-1H\r\nSpeed: 500K/H\r\nQuality: REAL\r\nRefill: NOT', '0.005', 100, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Views [CHEAP]\"}', '{\"en\":\"Link: www.instagram.com\\/p\\/B9rtqYnA88s\\/\\r\\n\\r\\nStart: 0-1H\\r\\nSpeed: 500K\\/H\\r\\nQuality: REAL\\r\\nRefill: NOT\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(28, 17, 265, '2', '{\"min\":\"100\",\"max\":\"50000000\",\"rate\":\"0.3600\",\"refill\":null,\"currency\":\"USD\"}', 7, 1, '2', '1', 'Instagram VIEWS + REELS + IGTV -  50K/H ', 'Link Type; REELS / POST / IGTV', '0.006', 100, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram VIEWS + REELS + IGTV -  50K\\/H\\u00a0\"}', '{\"en\":\"Link Type; REELS \\/ POST \\/ IGTV\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(29, 17, 370, '2', '{\"min\":\"100\",\"max\":\"10000000\",\"rate\":\"0.1173\",\"refill\":null,\"currency\":\"USD\"}', 8, 1, '2', '1', 'Instagram views (100/100m) [CHEAPEST] {0-15MIN START} [Works For all]', 'Link Type; post link\r\n\r\n Instant\r\nFast\r\nWorks for all reel, igtv', '0.002', 100, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram views (100\\/100m) [CHEAPEST] {0-15MIN START} [Works For all]\"}', '{\"en\":\"Link Type; post link\\r\\n\\r\\n Instant\\r\\nFast\\r\\nWorks for all reel, igtv\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(30, 17, 372, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"0.2665\",\"refill\":null,\"currency\":\"USD\"}', 8, 1, '2', '1', 'Instagram Views (100/1M) [Works for IGTV/Normal/Reel] {100k/day}', 'Link Type; post/reels/\r\n\r\n0-1hr\r\n100k/day', '0.004', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Views (100\\/1M) [Works for IGTV\\/Normal\\/Reel] {100k\\/day}\"}', '{\"en\":\"Link Type; post\\/reels\\/\\r\\n\\r\\n0-1hr\\r\\n100k\\/day\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(31, 17, 390, '2', '{\"min\":\"100\",\"max\":\"1000000000\",\"rate\":\"0.2985\",\"refill\":null,\"currency\":\"USD\"}', 8, 1, '2', '1', 'Instagram views (100/100m) [CHEAPEST] {0-15MIN START} [Works For all]', 'link ; post / reels\r\n\r\n0-1h\r\n50-100k/day', '0.005', 100, 1000000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram views (100\\/100m) [CHEAPEST] {0-15MIN START} [Works For all]\"}', '{\"en\":\"link ; post \\/ reels\\r\\n\\r\\n0-1h\\r\\n50-100k\\/day\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(32, 17, 378, '2', '{\"min\":\"100\",\"max\":\"5000000\",\"rate\":\"0.3198\",\"refill\":null,\"currency\":\"USD\"}', 8, 1, '2', '1', 'Instagram Views [Works for IGTV/Normal/Reels] (100/5M) [FAST]', 'Link ; Post / reels / IGTV\r\n\r\nInstant\r\nFast', '0.005', 100, 5000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Views [Works for IGTV\\/Normal\\/Reels] (100\\/5M) [FAST]\"}', '{\"en\":\"Link ; Post \\/ reels \\/ IGTV\\r\\n\\r\\nInstant\\r\\nFast\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(33, 17, 412, '2', '{\"min\":\"100\",\"max\":\"10000000\",\"rate\":\"0.1000\",\"refill\":null,\"currency\":\"USD\"}', 9, 1, '2', '1', 'Instagram Reel + Video + IGTV Views [ Instant ] [ Fast ]', 'Start - Instant \r\n\r\nSpeed - 5M + / hour \r\n\r\nQuality - HQ \r\n\r\nDrop - No \r\n\r\nRefill - No \r\n\r\nLink - Instagram Reel / Video / IGTV URL \r\n\r\n\r\nNote - \r\n\r\n➜ Limited Time Service Can be disabled anytime \r\n\r\n➜ Fastest Speed  views in almost free rate \r\n\r\n', '0.002', 100, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Reel + Video + IGTV Views [ Instant ] [ Fast ]\"}', '{\"en\":\"Start - Instant \\r\\n\\r\\nSpeed - 5M + \\/ hour \\r\\n\\r\\nQuality - HQ \\r\\n\\r\\nDrop - No \\r\\n\\r\\nRefill - No \\r\\n\\r\\nLink - Instagram Reel \\/ Video \\/ IGTV URL \\r\\n\\r\\n\\r\\nNote - \\r\\n\\r\\n\\u279c Limited Time Service Can be disabled anytime \\r\\n\\r\\n\\u279c Fastest Speed  views in almost free rate \\r\\n\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(34, 17, 408, '2', '{\"min\":\"100\",\"max\":\"50000000\",\"rate\":\"0.1300\",\"refill\":null,\"currency\":\"USD\"}', 9, 1, '2', '1', 'Instagram Reel + Video + IGTV Views  [ Cheapest ]', 'Start - Instant  \r\n\r\nSpeed - 1M+ ./ day \r\n\r\nDrop - Non Drop \r\n\r\nQuality - HQ \r\n\r\nRefill - Lifetime\r\n\r\nLink - Instagram Reel / Video / IGTV URL \r\n\r\nNote - \r\n\r\n➜  Instant Start Fast Speed Also Cheapest \r\n \r\n➜  There is extra delivery \r\n\r\n➜ New Server Can Be Slow When Overloaded\r\n\r\n\r\n', '0.002', 100, 50000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Reel + Video + IGTV Views  [ Cheapest ]\"}', '{\"en\":\"Start - Instant  \\r\\n\\r\\nSpeed - 1M+ .\\/ day \\r\\n\\r\\nDrop - Non Drop \\r\\n\\r\\nQuality - HQ \\r\\n\\r\\nRefill - Lifetime\\r\\n\\r\\nLink - Instagram Reel \\/ Video \\/ IGTV URL \\r\\n\\r\\nNote - \\r\\n\\r\\n\\u279c  Instant Start Fast Speed Also Cheapest \\r\\n \\r\\n\\u279c  There is extra delivery \\r\\n\\r\\n\\u279c New Server Can Be Slow When Overloaded\\r\\n\\r\\n\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(35, 17, 411, '2', '{\"min\":\"100\",\"max\":\"100000000\",\"rate\":\"0.1800\",\"refill\":null,\"currency\":\"USD\"}', 9, 1, '2', '1', 'Instagram Reel + Video + IGTV Views [ Instant ] [ Fast ]', 'Start - Instant \r\n\r\nSpeed - 10M + / day \r\n\r\nDrop - No \r\n\r\nRefill - No \r\n\r\nLink - Instagram Post / Reel / IGTV URL \r\n\r\nNote - \r\n\r\n➜ Fast Cheap Views Service \r\n\r\n➜ Instant Start Fast Speed with extra delivery ', '0.003', 100, 100000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Reel + Video + IGTV Views [ Instant ] [ Fast ]\"}', '{\"en\":\"Start - Instant \\r\\n\\r\\nSpeed - 10M + \\/ day \\r\\n\\r\\nDrop - No \\r\\n\\r\\nRefill - No \\r\\n\\r\\nLink - Instagram Post \\/ Reel \\/ IGTV URL \\r\\n\\r\\nNote - \\r\\n\\r\\n\\u279c Fast Cheap Views Service \\r\\n\\r\\n\\u279c Instant Start Fast Speed with extra delivery \"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(36, 17, 393, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"0.3300\",\"refill\":null,\"currency\":\"USD\"}', 9, 1, '2', '1', 'Instagram Views  [ Working on All Type of Videos ]', 'Start - Instant\r\n\r\nSpeed - 10M / day\r\n\r\nDrop - No\r\n\r\nRefill - No\r\n\r\nLink - Instagram Post / Reel / IGTV URL\r\n\r\nNote -\r\n\r\n➜ Instant Start Fast Speed Also Cheapest\r\n\r\n➜ Reliable Speed \r\n\r\n', '0.006', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Views  [ Working on All Type of Videos ]\"}', '{\"en\":\"Start - Instant\\r\\n\\r\\nSpeed - 10M \\/ day\\r\\n\\r\\nDrop - No\\r\\n\\r\\nRefill - No\\r\\n\\r\\nLink - Instagram Post \\/ Reel \\/ IGTV URL\\r\\n\\r\\nNote -\\r\\n\\r\\n\\u279c Instant Start Fast Speed Also Cheapest\\r\\n\\r\\n\\u279c Reliable Speed \\r\\n\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(37, 17, 413, '2', '{\"min\":\"100\",\"max\":\"150000\",\"rate\":\"12.1700\",\"refill\":null,\"currency\":\"USD\"}', 10, 1, '2', '1', 'Instagram Story [Views] [STORY VIEWS - INSTANT]', 'Link ; Story Link\r\n\r\nStart: 0-1H\r\nSpeed: 50K/D\r\nQuality: REAL\r\nRefill: NON DROP', '0.203', 100, 150000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story [Views] [STORY VIEWS - INSTANT]\"}', '{\"en\":\"Link ; Story Link\\r\\n\\r\\nStart: 0-1H\\r\\nSpeed: 50K\\/D\\r\\nQuality: REAL\\r\\nRefill: NON DROP\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(38, 17, 414, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"19.9000\",\"refill\":null,\"currency\":\"USD\"}', 10, 1, '2', '1', 'Instagram Story [Impressions]', 'Link: username only\r\n\r\nStart: INSTANT\r\nSpeed: 5K/D\r\nQuality: REAL HQ\r\nRefill: NON DROP\r\n\r\nMore info,\r\nEnter Only username Not profile Link Impressions will reach your story growth', '0.332', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story [Impressions]\"}', '{\"en\":\"Link: username only\\r\\n\\r\\nStart: INSTANT\\r\\nSpeed: 5K\\/D\\r\\nQuality: REAL HQ\\r\\nRefill: NON DROP\\r\\n\\r\\nMore info,\\r\\nEnter Only username Not profile Link Impressions will reach your story growth\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(39, 17, 415, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"116.9900\",\"refill\":null,\"currency\":\"USD\"}', 10, 1, '2', '1', 'Instagram Story [POLL VOTES] | VOTE = 1', 'Link: story link\r\n\r\n\r\nStart: 0-1H\r\nSpeed: 10K/Day\r\nQuality: REAL HQ\r\nRefill: NON DROP', '1.951', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story [POLL VOTES] | VOTE = 1\"}', '{\"en\":\"Link: story link\\r\\n\\r\\n\\r\\nStart: 0-1H\\r\\nSpeed: 10K\\/Day\\r\\nQuality: REAL HQ\\r\\nRefill: NON DROP\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(40, 17, 416, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"116.9900\",\"refill\":null,\"currency\":\"USD\"}', 10, 1, '2', '1', 'Instagram Story [POLL VOTES] | VOTE = 2', 'Link: story link\r\n\r\nStart: 0-1H\r\nSpeed: 10K/Day\r\nQuality: REAL HQ\r\nRefill: NON DROP', '1.951', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story [POLL VOTES] | VOTE = 2\"}', '{\"en\":\"Link: story link\\r\\n\\r\\nStart: 0-1H\\r\\nSpeed: 10K\\/Day\\r\\nQuality: REAL HQ\\r\\nRefill: NON DROP\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(41, 17, 418, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"0.2665\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Views | 50K Per Day | All Stories', 'Link: username\r\n\r\n\r\nimportant: All Stories\r\nuser photo: http://prntscr.com/11o0luq', '0.004', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views | 50K Per Day | All Stories\"}', '{\"en\":\"Link: username\\r\\n\\r\\n\\r\\nimportant: All Stories\\r\\nuser photo: http:\\/\\/prntscr.com\\/11o0luq\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(42, 17, 419, '2', '{\"min\":\"10\",\"max\":\"1000000\",\"rate\":\"0.3198\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Views | Speed 1M Per Day | All Stories', 'Link: username\r\n\r\nAll Stories', '0.005', 10, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views | Speed 1M Per Day | All Stories\"}', '{\"en\":\"Link: username\\r\\n\\r\\nAll Stories\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(43, 17, 420, '2', '{\"min\":\"10\",\"max\":\"20000\",\"rate\":\"0.8200\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Views | Max 20K | Fast', 'Link; Username', '0.014', 10, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views | Max 20K | Fast\"}', '{\"en\":\"Link; Username\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(44, 17, 421, '2', '{\"min\":\"10\",\"max\":\"500000\",\"rate\":\"0.8200\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Views | All Story | Max 500K | Speed 500K Per Day', 'link; Username\r\n\r\nAll stories', '0.014', 10, 500000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views | All Story | Max 500K | Speed 500K Per Day\"}', '{\"en\":\"link; Username\\r\\n\\r\\nAll stories\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(45, 17, 422, '2', '{\"min\":\"10\",\"max\":\"700000\",\"rate\":\"1.0660\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Views | Max 700K | Speed 700K Per Day | All Stories', 'Link; Username', '0.018', 10, 700000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views | Max 700K | Speed 700K Per Day | All Stories\"}', '{\"en\":\"Link; Username\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(46, 17, 423, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"1.6400\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Real Story Views | MQ 25K | All Stories', 'Link; username\r\n\r\nReal Story Views - All Stories!\r\nSuper Fast Delivery\r\n0-1h Start', '0.027', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Real Story Views | MQ 25K | All Stories\"}', '{\"en\":\"Link; username\\r\\n\\r\\nReal Story Views - All Stories!\\r\\nSuper Fast Delivery\\r\\n0-1h Start\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(47, 17, 424, '2', '{\"min\":\"100\",\"max\":\"5000\",\"rate\":\"1.6400\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Views | Perfect Service ', 'Link; Username', '0.027', 100, 5000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views | Perfect Service\\u00a0\"}', '{\"en\":\"Link; Username\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(48, 17, 425, '2', '{\"min\":\"100\",\"max\":\"2000\",\"rate\":\"2.4600\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story Views | Fast ', 'Link; username', '0.041', 100, 2000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story Views | Fast\\u00a0\"}', '{\"en\":\"Link; username\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(49, 17, 426, '2', '{\"min\":\"10\",\"max\":\"30000\",\"rate\":\"2.4600\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story Views | MQ 30K | All Stories', 'Link: username\r\n\r\nimportant: All Stories\r\nuser photo: http://prntscr.com/11o0luq', '0.041', 10, 30000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story Views | MQ 30K | All Stories\"}', '{\"en\":\"Link: username\\r\\n\\r\\nimportant: All Stories\\r\\nuser photo: http:\\/\\/prntscr.com\\/11o0luq\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(50, 17, 427, '2', '{\"min\":\"100\",\"max\":\"10000\",\"rate\":\"3.2800\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Views | Good Service ', 'link ; username', '0.055', 100, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views | Good Service\\u00a0\"}', '{\"en\":\"link ; username\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(51, 17, 428, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"3.2800\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Views | Real | MQ 15K | All Stories', 'Link ; username\r\n\r\nReal Story Views - All Stories!\r\nSuper Fast Delivery\r\nStart Time: 0-20 Minutes', '0.055', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views | Real | MQ 15K | All Stories\"}', '{\"en\":\"Link ; username\\r\\n\\r\\nReal Story Views - All Stories!\\r\\nSuper Fast Delivery\\r\\nStart Time: 0-20 Minutes\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(52, 17, 429, '2', '{\"min\":\"100\",\"max\":\"5000\",\"rate\":\"3.2800\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story Views | 100% Real | MQ 5K | All Stories', 'Link; username', '0.055', 100, 5000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story Views | 100% Real | MQ 5K | All Stories\"}', '{\"en\":\"Link; username\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(53, 17, 430, '2', '{\"min\":\"100\",\"max\":\"10000\",\"rate\":\"5.7400\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story Views | MQ 10K', 'link ; username', '0.096', 100, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story Views | MQ 10K\"}', '{\"en\":\"link ; username\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(54, 17, 431, '2', '{\"min\":\"100\",\"max\":\"500000\",\"rate\":\"6.5600\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story Views | Fast ', 'Link ; profile Link', '0.109', 100, 500000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story Views | Fast\\u00a0\"}', '{\"en\":\"Link ; profile Link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(55, 17, 444, '2', '{\"min\":\"250\",\"max\":\"25000\",\"rate\":\"7.3800\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Views | Reach + Profile Visits + Impressions | Max 100K', 'link; Username\r\n\r\n0-3 hours\r\nDelivers with speed of 5k/hour {it marks the order done and then starts delivering}\r\nStory Views ~ All stories\r\nImpression ~ Latest\r\nProfile Visits ~ Latest\r\n\r\nmore Info,\r\nimpressions/Profile Visits are being updated after few hours but views you can see in very less time after order is completed\r\ncan have some times slow speed or % under deliveries no refund policy', '0.123', 250, 25000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views | Reach + Profile Visits + Impressions | Max 100K\"}', '{\"en\":\"link; Username\\r\\n\\r\\n0-3 hours\\r\\nDelivers with speed of 5k\\/hour {it marks the order done and then starts delivering}\\r\\nStory Views ~ All stories\\r\\nImpression ~ Latest\\r\\nProfile Visits ~ Latest\\r\\n\\r\\nmore Info,\\r\\nimpressions\\/Profile Visits are being updated after few hours but views you can see in very less time after order is completed\\r\\ncan have some times slow speed or % under deliveries no refund policy\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(56, 17, 443, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"8.2000\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story Views | Real Users | Username Only', 'Link ; username\r\n\r\n\r\nNo refund for wrong link', '0.137', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story Views | Real Users | Username Only\"}', '{\"en\":\"Link ; username\\r\\n\\r\\n\\r\\nNo refund for wrong link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(57, 17, 432, '2', '{\"min\":\"250\",\"max\":\"30000\",\"rate\":\"9.0200\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story Views | MQ 30K | 0-1 Hour | 30K Per Day', 'link; username\r\n\r\nStart Time: Instant - 1 hours\r\nSpeed: 30K/ day\r\nRefill: no', '0.150', 250, 30000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story Views | MQ 30K | 0-1 Hour | 30K Per Day\"}', '{\"en\":\"link; username\\r\\n\\r\\nStart Time: Instant - 1 hours\\r\\nSpeed: 30K\\/ day\\r\\nRefill: no\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(58, 17, 452, '2', '{\"min\":\"100\",\"max\":\"50000\",\"rate\":\"9.0200\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Like | Only 1 Post | MQ 5K', 'Link; username', '0.150', 100, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Like | Only 1 Post | MQ 5K\"}', '{\"en\":\"Link; username\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(59, 17, 433, '2', '{\"min\":\"10\",\"max\":\"5000\",\"rate\":\"10.6600\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story Views | MQ 15K | All Stories', 'link ; username', '0.178', 10, 5000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story Views | MQ 15K | All Stories\"}', '{\"en\":\"link ; username\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(60, 17, 434, '2', '{\"min\":\"10\",\"max\":\"10000\",\"rate\":\"10.6600\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Views', 'link ; username', '0.178', 10, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views\"}', '{\"en\":\"link ; username\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(61, 17, 456, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"10.6600\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story | Profile Visits + Impressions + Interactions | MQ 50K', 'Link: story link or username\r\n\r\n\r\nimportant: Username will send to last story if entered\r\nimportant: statistics are reflected in an average of 2 hours.\r\n\r\nstatistic photo: https://prnt.sc/11o0it2\r\nuser photo: http://prntscr.com/11o0luq', '0.178', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story | Profile Visits + Impressions + Interactions | MQ 50K\"}', '{\"en\":\"Link: story link or username\\r\\n\\r\\n\\r\\nimportant: Username will send to last story if entered\\r\\nimportant: statistics are reflected in an average of 2 hours.\\r\\n\\r\\nstatistic photo: https:\\/\\/prnt.sc\\/11o0it2\\r\\nuser photo: http:\\/\\/prntscr.com\\/11o0luq\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(62, 17, 435, '2', '{\"min\":\"20\",\"max\":\"30000\",\"rate\":\"11.4800\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Last Story Only Story Views | MQ 30K | 0-1 Hour | 30K Per Day', 'Link ; username\r\n\r\nViews On The Last Story Posted ONLY \r\n0-1 Hour Start!\r\nUltra Fast!\r\nMinimum 20', '0.191', 20, 30000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Last Story Only Story Views | MQ 30K | 0-1 Hour | 30K Per Day\"}', '{\"en\":\"Link ; username\\r\\n\\r\\nViews On The Last Story Posted ONLY \\r\\n0-1 Hour Start!\\r\\nUltra Fast!\\r\\nMinimum 20\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(63, 17, 436, '2', '{\"min\":\"100\",\"max\":\"10000\",\"rate\":\"11.4800\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story Views | MQ 10K | 0-1 Hour', 'Link ; Username', '0.191', 100, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story Views | MQ 10K | 0-1 Hour\"}', '{\"en\":\"Link ; Username\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(64, 17, 437, '2', '{\"min\":\"100\",\"max\":\"30000\",\"rate\":\"12.3000\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story Views | Max 30K | Start 0-1 Hour | 30K Per Day', 'link ; username\r\n\r\nALL STORIES \r\nINSTANT START \r\nFAST DELIVERY \r\nMin = 100\r\nMax = 30k', '0.205', 100, 30000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story Views | Max 30K | Start 0-1 Hour | 30K Per Day\"}', '{\"en\":\"link ; username\\r\\n\\r\\nALL STORIES \\r\\nINSTANT START \\r\\nFAST DELIVERY \\r\\nMin = 100\\r\\nMax = 30k\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(65, 17, 442, '2', '{\"min\":\"100\",\"max\":\"10000\",\"rate\":\"12.3000\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Views + Profile Visit | Max 50K | Instant | All Stories | Fast ', 'Link: Story Link\r\n\r\nAverage Start Time : Instant\r\nAverage Speed : Fast\r\nQuality: Mixed\r\nDrops : No\r\nRefill : No\r\nCancel/Partial : Yes', '0.205', 100, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views + Profile Visit | Max 50K | Instant | All Stories | Fast\\u00a0\"}', '{\"en\":\"Link: Story Link\\r\\n\\r\\nAverage Start Time : Instant\\r\\nAverage Speed : Fast\\r\\nQuality: Mixed\\r\\nDrops : No\\r\\nRefill : No\\r\\nCancel\\/Partial : Yes\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(66, 17, 457, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"13.1200\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Poll Votes | 1/YES Votes on Answer | Max 100K | Story Link', 'link ; username', '0.219', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Poll Votes | 1\\/YES Votes on Answer | Max 100K | Story Link\"}', '{\"en\":\"link ; username\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(67, 17, 458, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"13.1200\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Poll Votes | 2/NO Votes on Answer | Max 5K | Story Link', 'link ; username', '0.219', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Poll Votes | 2\\/NO Votes on Answer | Max 5K | Story Link\"}', '{\"en\":\"link ; username\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0);
INSERT INTO `services` (`service_id`, `service_api`, `api_service`, `api_servicetype`, `api_detail`, `category_id`, `service_line`, `service_type`, `service_package`, `service_name`, `service_description`, `service_price`, `service_min`, `service_max`, `service_dripfeed`, `service_autotime`, `service_autopost`, `service_speed`, `want_username`, `service_secret`, `price_type`, `price_cal`, `instagram_second`, `start_count`, `instagram_private`, `name_lang`, `description_lang`, `time_lang`, `time`, `cancelbutton`, `show_refill`, `service_profit`, `refill_days`, `refill_hours`, `avg_days`, `avg_hours`, `avg_minutes`, `avg_many`) VALUES
(68, 17, 455, '2', '{\"min\":\"200\",\"max\":\"1000000\",\"rate\":\"13.9400\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story impressions | MQ 100K', 'Link ; username', '0.233', 200, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story impressions | MQ 100K\"}', '{\"en\":\"Link ; username\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(69, 17, 470, '2', '{\"min\":\"100\",\"max\":\"10000000\",\"rate\":\"23.7800\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story Share | 10K Per Hour', 'link ; story link', '0.397', 100, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story Share | 10K Per Hour\"}', '{\"en\":\"link ; story link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(70, 17, 461, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"24.6000\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story Poll Votes + Views | VOTE = 1', 'Link ; username', '0.410', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story Poll Votes + Views | VOTE = 1\"}', '{\"en\":\"Link ; username\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(71, 17, 462, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"24.6000\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story Poll Votes + Views | VOTE = 2', 'link; story link', '0.410', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story Poll Votes + Views | VOTE = 2\"}', '{\"en\":\"link; story link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(72, 17, 445, '2', '{\"min\":\"10\",\"max\":\"100000\",\"rate\":\"25.4200\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story Views | Profile Visits + Impressions + Interactions | MQ 100K | 0-1 Hour', 'Link; story Link\r\n\r\nStory Profile Visits (20% sent only to last post)\r\nStory Interactions (20% sent only to last post)', '0.424', 10, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story Views | Profile Visits + Impressions + Interactions | MQ 100K | 0-1 Hour\"}', '{\"en\":\"Link; story Link\\r\\n\\r\\nStory Profile Visits (20% sent only to last post)\\r\\nStory Interactions (20% sent only to last post)\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(73, 17, 468, '2', '{\"min\":\"100\",\"max\":\"250000\",\"rate\":\"31.9800\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Sticker Link Press | Max 250K | Fast', 'Link; Story Link', '0.533', 100, 250000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Sticker Link Press | Max 250K | Fast\"}', '{\"en\":\"Link; Story Link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(74, 17, 459, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"33.6200\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagran Story Poll Votes | 2. Votes on Answer | Max 50K | Story Link', 'VISUAL EXPRESSION \r\nhttps://cdn.mypanel.link/980087/y5t3etyp2ptfx766.png\r\nhttps://cdn.mypanel.link/980087/l9dhpw2mc4yi43g4.png\r\n\r\nIt will be enough to enter the link of the story when ordering.\r\nExample: https://instagram.com/stories/username/2290770508189607857/\r\n\r\nMore Info,\r\nOrders entered outside of this link format cannot be canceled or returned.\r\nIn order to get this link, it will be enough to click on your story and click on the three dots in the lower right corner and say copy the link.\r\nIt starts in an average of 15 minutes (there may be technical problems)', '0.561', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagran Story Poll Votes | 2. Votes on Answer | Max 50K | Story Link\"}', '{\"en\":\"VISUAL EXPRESSION \\r\\nhttps:\\/\\/cdn.mypanel.link\\/980087\\/y5t3etyp2ptfx766.png\\r\\nhttps:\\/\\/cdn.mypanel.link\\/980087\\/l9dhpw2mc4yi43g4.png\\r\\n\\r\\nIt will be enough to enter the link of the story when ordering.\\r\\nExample: https:\\/\\/instagram.com\\/stories\\/username\\/2290770508189607857\\/\\r\\n\\r\\nMore Info,\\r\\nOrders entered outside of this link format cannot be canceled or returned.\\r\\nIn order to get this link, it will be enough to click on your story and click on the three dots in the lower right corner and say copy the link.\\r\\nIt starts in an average of 15 minutes (there may be technical problems)\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(75, 17, 460, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"33.6200\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagran Story Poll Votes | 1. Votes on Answer | Max 50K | Story Link', 'VISUAL EXPRESSION \r\nhttps://cdn.mypanel.link/980087/y5t3etyp2ptfx766.png\r\nhttps://cdn.mypanel.link/980087/l9dhpw2mc4yi43g4.png\r\n\r\nIt will be enough to enter the link of the story when ordering.\r\nExample: https://instagram.com/stories/username/2290770508189607857/\r\n\r\nMore Info,\r\nOrders entered outside of this link format cannot be canceled or returned.\r\nIn order to get this link, it will be enough to click on your story and click on the three dots in the lower right corner and say copy the link.\r\nIt starts in an average of 15 minutes (there may be technical problems)', '0.561', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagran Story Poll Votes | 1. Votes on Answer | Max 50K | Story Link\"}', '{\"en\":\"VISUAL EXPRESSION \\r\\nhttps:\\/\\/cdn.mypanel.link\\/980087\\/y5t3etyp2ptfx766.png\\r\\nhttps:\\/\\/cdn.mypanel.link\\/980087\\/l9dhpw2mc4yi43g4.png\\r\\n\\r\\nIt will be enough to enter the link of the story when ordering.\\r\\nExample: https:\\/\\/instagram.com\\/stories\\/username\\/2290770508189607857\\/\\r\\n\\r\\nMore Info,\\r\\nOrders entered outside of this link format cannot be canceled or returned.\\r\\nIn order to get this link, it will be enough to click on your story and click on the three dots in the lower right corner and say copy the link.\\r\\nIt starts in an average of 15 minutes (there may be technical problems)\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(76, 17, 446, '2', '{\"min\":\"10\",\"max\":\"10000000\",\"rate\":\"41.8200\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - All Story Views | Impressions | MQ 100M', 'Link ; story Link', '0.698', 10, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - All Story Views | Impressions | MQ 100M\"}', '{\"en\":\"Link ; story Link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(77, 17, 464, '2', '{\"min\":\"100\",\"max\":\"10000000\",\"rate\":\"48.3800\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Swipe Up | MQ 10M | Fast', 'link ; story link', '0.807', 100, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Swipe Up | MQ 10M | Fast\"}', '{\"en\":\"link ; story link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(78, 17, 447, '2', '{\"min\":\"10\",\"max\":\"10000\",\"rate\":\"56.5800\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Views + Impressions [Max: 10K] [Start Time: 0-1 Hour] [Speed: 10K/Day]', 'link ; story Link', '0.944', 10, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views + Impressions [Max: 10K] [Start Time: 0-1 Hour] [Speed: 10K\\/Day]\"}', '{\"en\":\"link ; story Link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(79, 17, 448, '2', '{\"min\":\"10\",\"max\":\"80000\",\"rate\":\"82.8200\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story Views + Impression | Fast | MQ 80K', 'link; story link\r\n\r\nStart: 0-12 hours', '1.381', 10, 80000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story Views + Impression | Fast | MQ 80K\"}', '{\"en\":\"link; story link\\r\\n\\r\\nStart: 0-12 hours\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(80, 17, 465, '2', '{\"min\":\"100\",\"max\":\"5000000\",\"rate\":\"91.8400\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Swipe Up | Start 0-1 Hour | Super Fast ', 'link ; story link', '1.532', 100, 5000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Swipe Up | Start 0-1 Hour | Super Fast\\u00a0\"}', '{\"en\":\"link ; story link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(81, 17, 469, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"106.6000\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story Shares | MQ 100K', 'link; username\r\n\r\nInstant\r\nPlease only URL if you send USERNAME we can send the wrong service and we cannot refund', '1.778', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story Shares | MQ 100K\"}', '{\"en\":\"link; username\\r\\n\\r\\nInstant\\r\\nPlease only URL if you send USERNAME we can send the wrong service and we cannot refund\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(82, 17, 463, '2', '{\"min\":\"100\",\"max\":\"300000\",\"rate\":\"126.2800\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Slider Vote | Random 0-100 Vote | MQ 300K | 0-1 Hour | 300K Per Day', 'Link ; uesrname\r\n\r\nStart Time: Instant - 1 hour\r\nSpeed: 45K/ day\r\nRefill: No drop\r\n\r\nmore Info,\r\nPut your username and we will send Random votes between 0 and 100 to your story slider poll.', '2.106', 100, 300000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Slider Vote | Random 0-100 Vote | MQ 300K | 0-1 Hour | 300K Per Day\"}', '{\"en\":\"Link ; uesrname\\r\\n\\r\\nStart Time: Instant - 1 hour\\r\\nSpeed: 45K\\/ day\\r\\nRefill: No drop\\r\\n\\r\\nmore Info,\\r\\nPut your username and we will send Random votes between 0 and 100 to your story slider poll.\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(83, 17, 449, '2', '{\"min\":\"20\",\"max\":\"10000\",\"rate\":\"136.1200\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Story Views | Profile Visits + Impressions | All Stories | MQ 10K', 'Link ; username\r\n\r\n0-3 hours\r\nDelivers with speed of 5k/hour\r\nStory Views ~ All stories\r\nImpression ~ All Stories\r\nProfile Visits ~ All Stories\r\n\r\nMore info,\r\nimpressions/Profile Visits are being updated after few hours but views you can see in very less time after order is completed\r\ncan have some times slow speed or under deliveries no refund policy', '2.270', 20, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Story Views | Profile Visits + Impressions | All Stories | MQ 10K\"}', '{\"en\":\"Link ; username\\r\\n\\r\\n0-3 hours\\r\\nDelivers with speed of 5k\\/hour\\r\\nStory Views ~ All stories\\r\\nImpression ~ All Stories\\r\\nProfile Visits ~ All Stories\\r\\n\\r\\nMore info,\\r\\nimpressions\\/Profile Visits are being updated after few hours but views you can see in very less time after order is completed\\r\\ncan have some times slow speed or under deliveries no refund policy\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(84, 17, 453, '2', '{\"min\":\"20\",\"max\":\"10000\",\"rate\":\"157.4400\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Views + Likes + Reach + Impressions Brazil | MQ 10K | 1K Per Hour | NR', 'link; story link', '2.626', 20, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views + Likes + Reach + Impressions Brazil | MQ 10K | 1K Per Hour | NR\"}', '{\"en\":\"link; story link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(85, 17, 466, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"159.9000\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Swipe Up | Reccomended ', 'link ; username', '2.667', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Swipe Up | Reccomended\\u00a0\"}', '{\"en\":\"link ; username\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(86, 17, 450, '2', '{\"min\":\"20\",\"max\":\"8000\",\"rate\":\"177.9400\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Views | Reach + Navigation + Profile Visits | Instant', 'Link ; username', '2.968', 20, 8000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views | Reach + Navigation + Profile Visits | Instant\"}', '{\"en\":\"Link ; username\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(87, 17, 451, '2', '{\"min\":\"20\",\"max\":\"10000\",\"rate\":\"189.4200\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Views + Like | MQ 5K | 10K Per Hour', 'Link; sotry Link', '3.160', 20, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views + Like | MQ 5K | 10K Per Hour\"}', '{\"en\":\"Link; sotry Link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(88, 17, 467, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"287.8200\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Swipe Up | MQ 500K | Real Quality ', 'Link ; story Link', '4.801', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Swipe Up | MQ 500K | Real Quality\\u00a0\"}', '{\"en\":\"Link ; story Link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(89, 17, 438, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"501.0200\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Views | Max 50K | All Stories | TOP Service', 'link type; story Link', '8.357', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views | Max 50K | All Stories | TOP Service\"}', '{\"en\":\"link type; story Link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(90, 17, 439, '2', '{\"min\":\"10\",\"max\":\"10000\",\"rate\":\"533.0000\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Views | Super Real | All Stories | Max 10K', 'Link ; story Link', '8.890', 10, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views | Super Real | All Stories | Max 10K\"}', '{\"en\":\"Link ; story Link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(91, 17, 454, '2', '{\"min\":\"500\",\"max\":\"10000\",\"rate\":\"2771.6000\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram - Auto Story Views | 30 Days | MQ 10K | 0-1 Hour | 10K Per Day', 'Link ; Username Only\r\n\r\nGet Story Views to your account every time you add to your story for 30 days!\r\n0-1 Hour Start!\r\nUltra Fast!\r\nMinimum 500', '46.230', 500, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram - Auto Story Views | 30 Days | MQ 10K | 0-1 Hour | 10K Per Day\"}', '{\"en\":\"Link ; Username Only\\r\\n\\r\\nGet Story Views to your account every time you add to your story for 30 days!\\r\\n0-1 Hour Start!\\r\\nUltra Fast!\\r\\nMinimum 500\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(92, 17, 441, '2', '{\"min\":\"1000\",\"max\":\"1000\",\"rate\":\"6929.0000\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Mention | Health | 31k+ Followers ', 'link ; profile\r\n\r\nCategory: Health\r\nFollowers: 31k+\r\n100% Real Audience\r\n90% US audience', '115.576', 1000, 1000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Mention | Health | 31k+ Followers\\u00a0\"}', '{\"en\":\"link ; profile\\r\\n\\r\\nCategory: Health\\r\\nFollowers: 31k+\\r\\n100% Real Audience\\r\\n90% US audience\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(93, 17, 440, '2', '{\"min\":\"1000\",\"max\":\"1000\",\"rate\":\"9594.0000\",\"refill\":null,\"currency\":\"USD\"}', 11, 1, '2', '1', 'Instagram Story Mention | Fitness Niche | 230.2k+ Followers ', 'Link ; profile\r\n\r\nCategory: Fitness and Motivation\r\nFollowers: 230.2k+\r\n100% Real Audience', '160.028', 1000, 1000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Mention | Fitness Niche | 230.2k+ Followers\\u00a0\"}', '{\"en\":\"Link ; profile\\r\\n\\r\\nCategory: Fitness and Motivation\\r\\nFollowers: 230.2k+\\r\\n100% Real Audience\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(94, 17, 493, '2', '{\"min\":\"200\",\"max\":\"5000\",\"rate\":\"0.8200\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views [All Stories] (200/1k)', 'Link Type; Story Link', '0.014', 200, 5000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views [All Stories] (200\\/1k)\"}', '{\"en\":\"Link Type; Story Link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(95, 17, 484, '2', '{\"min\":\"100\",\"max\":\"20000\",\"rate\":\"2.4600\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views | (100/20K ) [All Stories]', 'Link Type; username\r\n\r\n0-2 hours\r\nFast after start\r\nData will be delivered to all stories', '0.041', 100, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views | (100\\/20K ) [All Stories]\"}', '{\"en\":\"Link Type; username\\r\\n\\r\\n0-2 hours\\r\\nFast after start\\r\\nData will be delivered to all stories\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(96, 17, 485, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"2.4600\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views (100/50K)  [All Stories]', 'link type; Username\r\n\r\n0-2 hours\r\nFast after start\r\nData will be delivered to all stories', '0.041', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views (100\\/50K)  [All Stories]\"}', '{\"en\":\"link type; Username\\r\\n\\r\\n0-2 hours\\r\\nFast after start\\r\\nData will be delivered to all stories\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(97, 17, 487, '2', '{\"min\":\"101\",\"max\":\"400000\",\"rate\":\"4.1000\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views (101/400k)', 'Link type; Story Link', '0.068', 101, 400000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views (101\\/400k)\"}', '{\"en\":\"Link type; Story Link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(98, 17, 474, '2', '{\"min\":\"101\",\"max\":\"100000\",\"rate\":\"6.5600\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views [ 100 % Real] [101/100k]', 'Link Type; Username\r\n\r\nMostly Instant Start [May take 3-5 hours to show in stats]\r\n5k/hour\r\n0 Bot 0 Pure Real Accounts\r\nPossible Impressions and Engagements!\r\n^xtra Delivery', '0.109', 101, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views [ 100 % Real] [101\\/100k]\"}', '{\"en\":\"Link Type; Username\\r\\n\\r\\nMostly Instant Start [May take 3-5 hours to show in stats]\\r\\n5k\\/hour\\r\\n0 Bot 0 Pure Real Accounts\\r\\nPossible Impressions and Engagements!\\r\\n^xtra Delivery\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(99, 17, 479, '2', '{\"min\":\"100\",\"max\":\"200000\",\"rate\":\"7.3800\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views  (100% Real)  (100/5K)  [All Stories]', 'Link type ; username\r\n\r\nInstant\r\n100% Real\r\n5k in few hours', '0.123', 100, 200000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views  (100% Real)  (100\\/5K)  [All Stories]\"}', '{\"en\":\"Link type ; username\\r\\n\\r\\nInstant\\r\\n100% Real\\r\\n5k in few hours\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(100, 17, 494, '2', '{\"min\":\"200\",\"max\":\"100000\",\"rate\":\"9.0200\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views [Old Stories] (200/100k)', 'Link Type; username\r\n\r\nIf you have 10 story in your profile, when ordered 10K , \r\nyou get 1000 views per story.', '0.150', 200, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views [Old Stories] (200\\/100k)\"}', '{\"en\":\"Link Type; username\\r\\n\\r\\nIf you have 10 story in your profile, when ordered 10K , \\r\\nyou get 1000 views per story.\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(101, 17, 481, '2', '{\"min\":\"100\",\"max\":\"200000\",\"rate\":\"9.8400\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views +Profile Visits + Impression', 'Link Type; Username\r\n\r\n\r\n0-3 hours\r\nDelivers with speed of 5k/hour {it marks the order done and then starts delivering}\r\nStory Views ~ All stories\r\nImpression ~ Latest\r\nProfile Visits ~ Latest\r\n\r\nmore Info,\r\nimpressions/Profile Visits are being updated after few hours but views you can see in very less time after order is completed\r\ncan have some times slow speed or % under deliveries no refund policy', '0.164', 100, 200000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views +Profile Visits + Impression\"}', '{\"en\":\"Link Type; Username\\r\\n\\r\\n\\r\\n0-3 hours\\r\\nDelivers with speed of 5k\\/hour {it marks the order done and then starts delivering}\\r\\nStory Views ~ All stories\\r\\nImpression ~ Latest\\r\\nProfile Visits ~ Latest\\r\\n\\r\\nmore Info,\\r\\nimpressions\\/Profile Visits are being updated after few hours but views you can see in very less time after order is completed\\r\\ncan have some times slow speed or % under deliveries no refund policy\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(102, 17, 486, '2', '{\"min\":\"100\",\"max\":\"40000\",\"rate\":\"9.8400\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views | (100/40k) {All Stories}', 'link Type; username\r\n\r\nInstant\r\nHQ\r\nReal', '0.164', 100, 40000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views | (100\\/40k) {All Stories}\"}', '{\"en\":\"link Type; username\\r\\n\\r\\nInstant\\r\\nHQ\\r\\nReal\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(103, 17, 495, '2', '{\"min\":\"100\",\"max\":\"50000\",\"rate\":\"9.8400\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views [All Stories] (100/50k)', 'Link Type; username\r\n\r\ninstant', '0.164', 100, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views [All Stories] (100\\/50k)\"}', '{\"en\":\"Link Type; username\\r\\n\\r\\ninstant\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(104, 17, 473, '2', '{\"min\":\"10\",\"max\":\"5000\",\"rate\":\"10.6600\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views (10/15k) {ALL}', 'Link type ; username\r\n\r\n Instant\r\n1-2k/h', '0.178', 10, 5000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views (10\\/15k) {ALL}\"}', '{\"en\":\"Link type ; username\\r\\n\\r\\n Instant\\r\\n1-2k\\/h\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(105, 17, 478, '2', '{\"min\":\"100\",\"max\":\"10000\",\"rate\":\"13.9400\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views + Impression + Profile Visit [all Stories]', 'link type; Username\r\n\r\n0-3 hours\r\nDelivers with speed of 5k/hour\r\nStory Views ~ All stories\r\nImpression ~ All Stories\r\nProfile Visits ~ All Stories\r\n\r\nmore info,\r\nimpressions/Profile Visits are being updated after few hours but views you can see in very less time after order is completed\r\ncan have some times slow speed or under deliveries no refund policy', '0.233', 100, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views + Impression + Profile Visit [all Stories]\"}', '{\"en\":\"link type; Username\\r\\n\\r\\n0-3 hours\\r\\nDelivers with speed of 5k\\/hour\\r\\nStory Views ~ All stories\\r\\nImpression ~ All Stories\\r\\nProfile Visits ~ All Stories\\r\\n\\r\\nmore info,\\r\\nimpressions\\/Profile Visits are being updated after few hours but views you can see in very less time after order is completed\\r\\ncan have some times slow speed or under deliveries no refund policy\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(106, 17, 482, '2', '{\"min\":\"200\",\"max\":\"1000000\",\"rate\":\"13.9400\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story impressions (200/100k)', 'Link type; story Link\r\n\r\ninstant\r\nIf username is entered we\\\'ll deliver the ordered quantity to latest story\r\nDelivered quantity may be less by some % ,please order accordingly.\r\nNo refund in any case\r\nIf 0?livered or less than 50% then take screenshot with current time and share with support', '0.233', 200, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story impressions (200\\/100k)\"}', '{\"en\":\"Link type; story Link\\r\\n\\r\\ninstant\\r\\nIf username is entered we\\\\\'ll deliver the ordered quantity to latest story\\r\\nDelivered quantity may be less by some % ,please order accordingly.\\r\\nNo refund in any case\\r\\nIf 0?livered or less than 50% then take screenshot with current time and share with support\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(107, 17, 476, '2', '{\"min\":\"100\",\"max\":\"30000\",\"rate\":\"14.7600\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views  [Super Real]  [ALL Stories] [100/35k]', 'Link Type; Username\r\n\r\n0-30 minutes\r\nSuper Real Quality', '0.246', 100, 30000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views  [Super Real]  [ALL Stories] [100\\/35k]\"}', '{\"en\":\"Link Type; Username\\r\\n\\r\\n0-30 minutes\\r\\nSuper Real Quality\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(108, 17, 475, '2', '{\"min\":\"100\",\"max\":\"10000\",\"rate\":\"22.1400\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views + Impression [Fast] (100/10k)', 'Link Type; username\r\n\r\nNo Refill', '0.369', 100, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views + Impression [Fast] (100\\/10k)\"}', '{\"en\":\"Link Type; username\\r\\n\\r\\nNo Refill\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(109, 17, 480, '2', '{\"min\":\"100\",\"max\":\"50000\",\"rate\":\"22.1400\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Through Profile Visits + Displays + Impressions & Reach [100/50k]', 'link type; Username \r\n\r\nPlease Take screenshot if it was not delivered to show on ticket/skype support\r\nCounts update on stats may take time of about 4-5 hours\r\nInstant\r\nProfile Visits + Displays + Impressions', '0.369', 100, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Through Profile Visits + Displays + Impressions & Reach [100\\/50k]\"}', '{\"en\":\"link type; Username \\r\\n\\r\\nPlease Take screenshot if it was not delivered to show on ticket\\/skype support\\r\\nCounts update on stats may take time of about 4-5 hours\\r\\nInstant\\r\\nProfile Visits + Displays + Impressions\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(110, 17, 511, '2', '{\"min\":\"100\",\"max\":\"5000\",\"rate\":\"22.1400\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story VOTE Option 1 (100/1M) {10K/hr}', 'Link Type; username\r\n\r\n Instant\r\n10k/hr', '0.369', 100, 5000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story VOTE Option 1 (100\\/1M) {10K\\/hr}\"}', '{\"en\":\"Link Type; username\\r\\n\\r\\n Instant\\r\\n10k\\/hr\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(111, 17, 512, '2', '{\"min\":\"100\",\"max\":\"5000\",\"rate\":\"22.1400\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story VOTE Option 2 (100/1M) {10K/hr}', 'link type; username\r\n\r\n Instant\r\n10k/hr', '0.369', 100, 5000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story VOTE Option 2 (100\\/1M) {10K\\/hr}\"}', '{\"en\":\"link type; username\\r\\n\\r\\n Instant\\r\\n10k\\/hr\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(112, 17, 513, '2', '{\"min\":\"100\",\"max\":\"10000000\",\"rate\":\"22.1400\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story QUIZ [Answer 1] (100/1M) {10k/hr}', 'Link Type; username\r\n\r\nInstant\r\n10k/hr', '0.369', 100, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story QUIZ [Answer 1] (100\\/1M) {10k\\/hr}\"}', '{\"en\":\"Link Type; username\\r\\n\\r\\nInstant\\r\\n10k\\/hr\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(113, 17, 514, '2', '{\"min\":\"100\",\"max\":\"10000000\",\"rate\":\"22.1400\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story QUIZ [Answer 2] (100/1M) {10k/hr}', 'link type ; story link\r\n\r\nInstant\r\n10k/hr', '0.369', 100, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story QUIZ [Answer 2] (100\\/1M) {10k\\/hr}\"}', '{\"en\":\"link type ; story link\\r\\n\\r\\nInstant\\r\\n10k\\/hr\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(114, 17, 520, '2', '{\"min\":\"100\",\"max\":\"10000000\",\"rate\":\"22.1400\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Share (100/1M) {10k/hr}', 'Link type; username\r\n\r\nInstant\r\n10k/hr\r\nNon Drop', '0.369', 100, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Share (100\\/1M) {10k\\/hr}\"}', '{\"en\":\"Link type; username\\r\\n\\r\\nInstant\\r\\n10k\\/hr\\r\\nNon Drop\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(115, 17, 477, '2', '{\"min\":\"100\",\"max\":\"2000\",\"rate\":\"25.4200\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views (100/20k) {ALL}', 'Link Type; username\r\n\r\n View will be delivered to all stories.\r\nInstant\r\nNo refill/refund', '0.424', 100, 2000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views (100\\/20k) {ALL}\"}', '{\"en\":\"Link Type; username\\r\\n\\r\\n View will be delivered to all stories.\\r\\nInstant\\r\\nNo refill\\/refund\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(116, 17, 488, '2', '{\"min\":\"100\",\"max\":\"10000000\",\"rate\":\"31.9800\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views + Impressions [All Stories] (100/100M)', 'Link Type ; username\r\n\r\nCounts may appear in few hours after the status is \\\"completed\\\"', '0.533', 100, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views + Impressions [All Stories] (100\\/100M)\"}', '{\"en\":\"Link Type ; username\\r\\n\\r\\nCounts may appear in few hours after the status is \\\\\\\"completed\\\\\\\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(117, 17, 519, '2', '{\"min\":\"100\",\"max\":\"250000\",\"rate\":\"43.4600\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Url Click Count (100/250k) {10k/hr}', 'Link Type; username\r\n\r\nInstant\r\n10k/hr\r\nNo Drop', '0.725', 100, 250000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Url Click Count (100\\/250k) {10k\\/hr}\"}', '{\"en\":\"Link Type; username\\r\\n\\r\\nInstant\\r\\n10k\\/hr\\r\\nNo Drop\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(118, 17, 491, '2', '{\"min\":\"5\",\"max\":\"200000\",\"rate\":\"45.9200\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Likes + Views + Reach (50/5k) {1 Story} [TURKISH] [REAL]', 'Link Type; username\r\n\r\nInstant\r\nOne Story\r\n100% Reach\r\n100%vTurkish Real Users', '0.766', 5, 200000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Likes + Views + Reach (50\\/5k) {1 Story} [TURKISH] [REAL]\"}', '{\"en\":\"Link Type; username\\r\\n\\r\\nInstant\\r\\nOne Story\\r\\n100% Reach\\r\\n100%vTurkish Real Users\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(119, 17, 489, '2', '{\"min\":\"100\",\"max\":\"5000\",\"rate\":\"54.1200\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views + Like (100/5k) {10k/hr}', 'Link Type; username\r\n\r\nInstant\r\n10k/hr', '0.903', 100, 5000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views + Like (100\\/5k) {10k\\/hr}\"}', '{\"en\":\"Link Type; username\\r\\n\\r\\nInstant\\r\\n10k\\/hr\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(120, 17, 471, '2', '{\"min\":\"100\",\"max\":\"5000\",\"rate\":\"63.9600\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Like [Only 1 Post] (100/5k)', 'Link type; username\r\n\r\n Instant\r\n10k/hr', '1.067', 100, 5000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Like [Only 1 Post] (100\\/5k)\"}', '{\"en\":\"Link type; username\\r\\n\\r\\n Instant\\r\\n10k\\/hr\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(121, 17, 509, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"85.2800\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Vote Poll Option 2 (Right Red Option)', 'Link Type; https://instagram.com/stories/username/2290770508189607857/\r\n\r\nInstant\r\nPlease don\\\'t send the only username we can not refund such.', '1.422', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Vote Poll Option 2 (Right Red Option)\"}', '{\"en\":\"Link Type; https:\\/\\/instagram.com\\/stories\\/username\\/2290770508189607857\\/\\r\\n\\r\\nInstant\\r\\nPlease don\\\\\'t send the only username we can not refund such.\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(122, 17, 518, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"85.2800\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Slider', 'link type; EX- https://instagram.com/stories/username/2290770508189607857/\r\n\r\nInstant\r\nPLease only URL if the wrong URL we can\\\'t refund', '1.422', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Slider\"}', '{\"en\":\"link type; EX- https:\\/\\/instagram.com\\/stories\\/username\\/2290770508189607857\\/\\r\\n\\r\\nInstant\\r\\nPLease only URL if the wrong URL we can\\\\\'t refund\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(123, 17, 483, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"114.8000\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Profile Visits', 'Link Type; Username\r\n\r\nStory Profile Visits\r\nPlease only URL if you send USERNAME we can send the wrong service and we cannot refund', '1.915', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Profile Visits\"}', '{\"en\":\"Link Type; Username\\r\\n\\r\\nStory Profile Visits\\r\\nPlease only URL if you send USERNAME we can send the wrong service and we cannot refund\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(124, 17, 504, '2', '{\"min\":\"20\",\"max\":\"100000\",\"rate\":\"114.8000\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Vote Poll Option 4 (20/100k)', 'Link Type; Full Story URL\r\n\r\n instant', '1.915', 20, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Vote Poll Option 4 (20\\/100k)\"}', '{\"en\":\"Link Type; Full Story URL\\r\\n\\r\\n instant\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(125, 17, 505, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"114.8000\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Vote Poll Option 1 (100/1M)', 'Link Type; story Link\r\n\r\nInstant\r\n24hrs Delivery', '1.915', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Vote Poll Option 1 (100\\/1M)\"}', '{\"en\":\"Link Type; story Link\\r\\n\\r\\nInstant\\r\\n24hrs Delivery\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(126, 17, 506, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"114.8000\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Vote Poll Option 2 (100/1M)', 'Link Type; story Link\r\n\r\nInstant\r\n24hrs Delivery', '1.915', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Vote Poll Option 2 (100\\/1M)\"}', '{\"en\":\"Link Type; story Link\\r\\n\\r\\nInstant\\r\\n24hrs Delivery\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(127, 17, 507, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"114.8000\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story QUIZ (Answer 2)', 'Link Type; Ex - https://instagram.com/stories/username/2290770508189607857/\r\n\r\nInstant\r\n\r\nDon\\\'t send a username we can\\\'t refund', '1.915', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story QUIZ (Answer 2)\"}', '{\"en\":\"Link Type; Ex - https:\\/\\/instagram.com\\/stories\\/username\\/2290770508189607857\\/\\r\\n\\r\\nInstant\\r\\n\\r\\nDon\\\\\'t send a username we can\\\\\'t refund\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(128, 17, 508, '2', '{\"min\":\"100\",\"max\":\"15000\",\"rate\":\"114.8000\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story QUIZ (Answer 1)', '', '1.915', 100, 15000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story QUIZ (Answer 1)\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(129, 17, 510, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"114.8000\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Vote Poll Option 1 (Left Green Option)', 'Link Type; EX- https://instagram.com/stories/username/2290770508189607857/\r\n\r\nInstant\r\nPlease don\\\'t send the wrong URL we can\\\'t refund', '1.915', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Vote Poll Option 1 (Left Green Option)\"}', '{\"en\":\"Link Type; EX- https:\\/\\/instagram.com\\/stories\\/username\\/2290770508189607857\\/\\r\\n\\r\\nInstant\\r\\nPlease don\\\\\'t send the wrong URL we can\\\\\'t refund\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(130, 17, 517, '2', '{\"min\":\"100\",\"max\":\"1000000\",\"rate\":\"114.8000\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Shares [100/100k]', 'Link Type; Ex-https://instagram.com/stories/username/2290770508189607857/\r\n\r\nInstant\r\nPlease only URL if you send USERNAME we can send the wrong service and we cannot refund', '1.915', 100, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Shares [100\\/100k]\"}', '{\"en\":\"Link Type; Ex-https:\\/\\/instagram.com\\/stories\\/username\\/2290770508189607857\\/\\r\\n\\r\\nInstant\\r\\nPlease only URL if you send USERNAME we can send the wrong service and we cannot refund\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(131, 17, 516, '2', '{\"min\":\"100\",\"max\":\"10000000\",\"rate\":\"127.9200\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story TREND +Story Impression + Story Profile Visit +Story Shares +Story Swipe Up+ Next + Exit', 'Link Type; story Link\r\n\r\n\r\n\r\nInstant', '2.134', 100, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story TREND +Story Impression + Story Profile Visit +Story Shares +Story Swipe Up+ Next + Exit\"}', '{\"en\":\"Link Type; story Link\\r\\n\\r\\n\\r\\n\\r\\nInstant\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(132, 17, 521, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"183.6800\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Share | From 1 Influencer', 'Link Type; username\r\n\r\nInstant', '3.064', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Share | From 1 Influencer\"}', '{\"en\":\"Link Type; username\\r\\n\\r\\nInstant\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(133, 17, 490, '2', '{\"min\":\"20\",\"max\":\"10000\",\"rate\":\"191.8800\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Views + Likes + Reach + Impressions [Brazil] (20/3k) {1k/hr} [NR]', 'Link Type; story Link\r\n\r\n0-1hr\r\n1k/hr\r\nNR', '3.201', 20, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Views + Likes + Reach + Impressions [Brazil] (20\\/3k) {1k\\/hr} [NR]\"}', '{\"en\":\"Link Type; story Link\\r\\n\\r\\n0-1hr\\r\\n1k\\/hr\\r\\nNR\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(134, 17, 472, '2', '{\"min\":\"100\",\"max\":\"250000\",\"rate\":\"319.8000\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Sticker Link (New Url Click Service) (100/250k)', 'Link Type ; username\r\n\r\nPlease do not place order if story is 12 hours or more old {usually numbers updates take time}\r\nif Problem please share screenshot link', '5.334', 100, 250000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Sticker Link (New Url Click Service) (100\\/250k)\"}', '{\"en\":\"Link Type ; username\\r\\n\\r\\nPlease do not place order if story is 12 hours or more old {usually numbers updates take time}\\r\\nif Problem please share screenshot link\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(135, 17, 496, '2', '{\"min\":\"1000\",\"max\":\"1000000\",\"rate\":\"319.8000\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Mentions [USER FOLLOWERS] (1k/1M) {100k/day}', 'Link Type; story link\r\n\r\nYou can enter any picture sharing platform and enter.\r\nType the username of the account from which the followers will be drawn into the \\\"Username\\\" box.\r\nAccounts taken will be tagged to the story and these people will be notified as \\\"Mentioned You in Her Story\\\".\r\nIt starts in 0-24 hours on average and is completed in 48 hours after it starts.', '5.334', 1000, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Mentions [USER FOLLOWERS] (1k\\/1M) {100k\\/day}\"}', '{\"en\":\"Link Type; story link\\r\\n\\r\\nYou can enter any picture sharing platform and enter.\\r\\nType the username of the account from which the followers will be drawn into the \\\\\\\"Username\\\\\\\" box.\\r\\nAccounts taken will be tagged to the story and these people will be notified as \\\\\\\"Mentioned You in Her Story\\\\\\\".\\r\\nIt starts in 0-24 hours on average and is completed in 48 hours after it starts.\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(136, 17, 497, '2', '{\"min\":\"250\",\"max\":\"1000000\",\"rate\":\"319.8000\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Mentions [USER FOLLOWING] (250/1M) {100k/day}', 'Link Type; story Link\r\n\r\nYou can enter any picture sharing platform and enter.\r\nType the username of the account from which the followers will be drawn into the \\\"Username\\\" box.\r\nAccounts taken will be tagged to the story and these people will be notified as \\\"Mentioned You in Her Story\\\".\r\nIt starts in 0-24 hours on average and is completed in 48 hours after it starts.', '5.334', 250, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Mentions [USER FOLLOWING] (250\\/1M) {100k\\/day}\"}', '{\"en\":\"Link Type; story Link\\r\\n\\r\\nYou can enter any picture sharing platform and enter.\\r\\nType the username of the account from which the followers will be drawn into the \\\\\\\"Username\\\\\\\" box.\\r\\nAccounts taken will be tagged to the story and these people will be notified as \\\\\\\"Mentioned You in Her Story\\\\\\\".\\r\\nIt starts in 0-24 hours on average and is completed in 48 hours after it starts.\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(137, 17, 498, '2', '{\"min\":\"1000\",\"max\":\"1000000\",\"rate\":\"319.8000\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Mentions [CUSTOM LIST] (1k/1M) {100k/day}', 'Link Type; story link\r\n\r\nYou can enter any picture sharing platform and enter.\r\nAccounts taken will be tagged to the story and these people will be notified as \\\"Mentioned You in Her Story\\\".\r\nIt starts in 0-24 hours on average and is completed in 48 hours after it starts.', '5.334', 1000, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Mentions [CUSTOM LIST] (1k\\/1M) {100k\\/day}\"}', '{\"en\":\"Link Type; story link\\r\\n\\r\\nYou can enter any picture sharing platform and enter.\\r\\nAccounts taken will be tagged to the story and these people will be notified as \\\\\\\"Mentioned You in Her Story\\\\\\\".\\r\\nIt starts in 0-24 hours on average and is completed in 48 hours after it starts.\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(138, 17, 499, '2', '{\"min\":\"1000\",\"max\":\"1000000\",\"rate\":\"319.8000\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Mentions [MEDIA LIKERS] (1k1/M) {100k/day}', 'Link Type; story link\r\n\r\nYou can enter any picture sharing platform and enter.\r\nWrite the link of the media from which users will be drawn in the \\\"Media URL\\\" box.\r\nAccounts taken will be tagged to the story and these people will be notified as \\\"Mentioned You in Her Story\\\".\r\nIt starts in 0-24 hours on average and is completed in 48 hours after it starts.', '5.334', 1000, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Mentions [MEDIA LIKERS] (1k1\\/M) {100k\\/day}\"}', '{\"en\":\"Link Type; story link\\r\\n\\r\\nYou can enter any picture sharing platform and enter.\\r\\nWrite the link of the media from which users will be drawn in the \\\\\\\"Media URL\\\\\\\" box.\\r\\nAccounts taken will be tagged to the story and these people will be notified as \\\\\\\"Mentioned You in Her Story\\\\\\\".\\r\\nIt starts in 0-24 hours on average and is completed in 48 hours after it starts.\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0);
INSERT INTO `services` (`service_id`, `service_api`, `api_service`, `api_servicetype`, `api_detail`, `category_id`, `service_line`, `service_type`, `service_package`, `service_name`, `service_description`, `service_price`, `service_min`, `service_max`, `service_dripfeed`, `service_autotime`, `service_autopost`, `service_speed`, `want_username`, `service_secret`, `price_type`, `price_cal`, `instagram_second`, `start_count`, `instagram_private`, `name_lang`, `description_lang`, `time_lang`, `time`, `cancelbutton`, `show_refill`, `service_profit`, `refill_days`, `refill_hours`, `avg_days`, `avg_hours`, `avg_minutes`, `avg_many`) VALUES
(139, 17, 522, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"365.7200\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Share | From 2 Influencer', 'Link Type; profile link\r\n\r\nStart - 12 Hours\r\nInfluencer Will Share Your Link in His/Her Story And Tag Your Profile With A Positive Comment\r\nShare Will Stay Until The End Of Story (24 Hours)\r\nMake Your Profile Public And Allow Tagging\r\nInconvenient Contents Aren\\\'t Allowed will not be refunded such as nudity/drugs', '6.100', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Share | From 2 Influencer\"}', '{\"en\":\"Link Type; profile link\\r\\n\\r\\nStart - 12 Hours\\r\\nInfluencer Will Share Your Link in His\\/Her Story And Tag Your Profile With A Positive Comment\\r\\nShare Will Stay Until The End Of Story (24 Hours)\\r\\nMake Your Profile Public And Allow Tagging\\r\\nInconvenient Contents Aren\\\\\'t Allowed will not be refunded such as nudity\\/drugs\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(140, 17, 500, '2', '{\"min\":\"1000\",\"max\":\"1000000\",\"rate\":\"383.7600\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Mentions + Link [USER FOLLOWERS ] (1k/1M) {100k/day}', 'Link type; story link\r\n\r\nYou can enter any picture sharing platform and enter.\r\nType the username of the account from which the followers will be drawn into the \\\"Username\\\" box.\r\nType the link to be added to the profile by putting a dash next to the username you wrote in the \\\"Username\\\" box.\r\nAccounts taken will be tagged to the story and these people will be notified as \\\"Mentioned You in Her Story\\\".\r\nIt starts in 0-24 hours on average and is completed in 48 hours after it starts.', '6.401', 1000, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Mentions + Link [USER FOLLOWERS ] (1k\\/1M) {100k\\/day}\"}', '{\"en\":\"Link type; story link\\r\\n\\r\\nYou can enter any picture sharing platform and enter.\\r\\nType the username of the account from which the followers will be drawn into the \\\\\\\"Username\\\\\\\" box.\\r\\nType the link to be added to the profile by putting a dash next to the username you wrote in the \\\\\\\"Username\\\\\\\" box.\\r\\nAccounts taken will be tagged to the story and these people will be notified as \\\\\\\"Mentioned You in Her Story\\\\\\\".\\r\\nIt starts in 0-24 hours on average and is completed in 48 hours after it starts.\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(141, 17, 501, '2', '{\"min\":\"1000\",\"max\":\"1000000\",\"rate\":\"383.7600\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Mentions + Link  [CUSTOM LIST] (1K/1M) {100k/day}', 'Link Type; username\r\n\r\nYou can enter any picture sharing platform and enter.\r\nWrite the usernames in the \\\"Usernames\\\" box.\r\nType the link to be added to the profile at the top of the \\\"Usernames\\\" box.\r\nAccounts taken will be tagged to the story and these people will be notified as \\\"Mentioned You in Her Story\\\".\r\nIt starts in 0-24 hours on average and is completed in 48 hours after it starts.', '6.401', 1000, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Mentions + Link  [CUSTOM LIST] (1K\\/1M) {100k\\/day}\"}', '{\"en\":\"Link Type; username\\r\\n\\r\\nYou can enter any picture sharing platform and enter.\\r\\nWrite the usernames in the \\\\\\\"Usernames\\\\\\\" box.\\r\\nType the link to be added to the profile at the top of the \\\\\\\"Usernames\\\\\\\" box.\\r\\nAccounts taken will be tagged to the story and these people will be notified as \\\\\\\"Mentioned You in Her Story\\\\\\\".\\r\\nIt starts in 0-24 hours on average and is completed in 48 hours after it starts.\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(142, 17, 502, '2', '{\"min\":\"1000\",\"max\":\"1000000\",\"rate\":\"383.7600\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Mentions + Link [MEDIA LIKERS] (1k/1M) {100k/day}', 'Link Type; story link\r\n\r\nPlease enter the link of the image to be shared in the story.\r\nYou can enter any picture sharing platform and enter.\r\nWrite the link of the media from which users will be drawn in the \\\"Media URL\\\" box.\r\nType the link to be added to the profile by putting a \\\"-\\\" dash next to the media link you wrote in the \\\"Media URL\\\" box.\r\nAccounts taken will be tagged to the story and these people will be notified as \\\"Mentioned You in Her Story\\\".\r\nIt starts in 0-24 hours on average and is completed in 48 hours after it starts.', '6.401', 1000, 1000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Mentions + Link [MEDIA LIKERS] (1k\\/1M) {100k\\/day}\"}', '{\"en\":\"Link Type; story link\\r\\n\\r\\nPlease enter the link of the image to be shared in the story.\\r\\nYou can enter any picture sharing platform and enter.\\r\\nWrite the link of the media from which users will be drawn in the \\\\\\\"Media URL\\\\\\\" box.\\r\\nType the link to be added to the profile by putting a \\\\\\\"-\\\\\\\" dash next to the media link you wrote in the \\\\\\\"Media URL\\\\\\\" box.\\r\\nAccounts taken will be tagged to the story and these people will be notified as \\\\\\\"Mentioned You in Her Story\\\\\\\".\\r\\nIt starts in 0-24 hours on average and is completed in 48 hours after it starts.\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0),
(143, 17, 529, '2', '{\"min\":\"1\",\"max\":\"1\",\"rate\":\"497.7400\",\"refill\":null,\"currency\":\"USD\"}', 12, 1, '2', '1', 'Instagram Story Share | From 1 Verified Profile', 'Link Type; profile link\r\n\r\nStart - 12 Hours\r\nInfluencer Will Share Your Link in His/Her Story And Tag Your Profile With A Positive Comment\r\nShare Will Stay Until The End Of Story (24 Hours)\r\nMake Your Profile Public And Allow Tagging\r\nInconvenient Contents Aren\\\'t Allowed will not be refunded such as nudity/drugs\r\nIn comment section client specify what type of comments they want alongside their link\r\nfor example -> \\\"check my wonderful page, post etc', '8.302', 1, 1, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Story Share | From 1 Verified Profile\"}', '{\"en\":\"Link Type; profile link\\r\\n\\r\\nStart - 12 Hours\\r\\nInfluencer Will Share Your Link in His\\/Her Story And Tag Your Profile With A Positive Comment\\r\\nShare Will Stay Until The End Of Story (24 Hours)\\r\\nMake Your Profile Public And Allow Tagging\\r\\nInconvenient Contents Aren\\\\\'t Allowed will not be refunded such as nudity\\/drugs\\r\\nIn comment section client specify what type of comments they want alongside their link\\r\\nfor example -> \\\\\\\"check my wonderful page, post etc\"}', 'Not enough data', 'Not enough data', '2', 'false', '20', '30', '24', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `service_api`
--

CREATE TABLE `service_api` (
  `id` int(11) NOT NULL,
  `api_name` varchar(225) NOT NULL,
  `api_url` text NOT NULL,
  `api_key` varchar(225) NOT NULL,
  `api_type` int(11) NOT NULL,
  `api_limit` double NOT NULL DEFAULT 0,
  `currency` enum('INR','USD') DEFAULT NULL,
  `api_alert` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> Gönder, 1 -> Gönderildi',
  `status` enum('1','2') NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_api`
--

INSERT INTO `service_api` (`id`, `api_name`, `api_url`, `api_key`, `api_type`, `api_limit`, `currency`, `api_alert`, `status`) VALUES
(17, 'socialmediamart.in', 'https://socialmediamart.in/api/v1', 'SUOuI0vDi6Z4h2M8iYWPL7dX8ihLpwnJ', 1, 0, 'USD', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_seo` text NOT NULL,
  `site_title` text DEFAULT NULL,
  `site_description` text DEFAULT NULL,
  `site_keywords` text DEFAULT NULL,
  `site_logo` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `site_currency` varchar(2555) NOT NULL DEFAULT 'try',
  `favicon` text DEFAULT NULL,
  `site_language` varchar(225) NOT NULL DEFAULT 'tr',
  `site_theme` text NOT NULL,
  `site_theme_alt` text DEFAULT NULL,
  `recaptcha` enum('1','2') NOT NULL DEFAULT '1',
  `recaptcha_key` text DEFAULT NULL,
  `recaptcha_secret` text DEFAULT NULL,
  `custom_header` text DEFAULT NULL,
  `custom_footer` text DEFAULT NULL,
  `ticket_system` enum('1','2') NOT NULL DEFAULT '2',
  `register_page` enum('1','2') NOT NULL DEFAULT '2',
  `service_speed` enum('1','2') NOT NULL,
  `service_list` enum('1','2') NOT NULL,
  `dolar_charge` double NOT NULL,
  `euro_charge` double NOT NULL,
  `smtp_user` text NOT NULL,
  `smtp_pass` text NOT NULL,
  `smtp_server` text NOT NULL,
  `smtp_port` varchar(225) NOT NULL,
  `smtp_protocol` enum('0','ssl','tls') NOT NULL,
  `alert_type` enum('1','2','3') NOT NULL,
  `alert_apimail` enum('1','2') NOT NULL,
  `alert_newmanuelservice` enum('1','2') NOT NULL,
  `alert_newticket` enum('1','2') NOT NULL,
  `alert_apibalance` enum('1','2') NOT NULL,
  `alert_serviceapialert` enum('1','2') NOT NULL,
  `sms_provider` varchar(225) NOT NULL,
  `sms_title` varchar(225) NOT NULL,
  `sms_user` varchar(225) NOT NULL,
  `sms_pass` varchar(225) NOT NULL,
  `sms_validate` enum('0','1') NOT NULL DEFAULT '0' COMMENT '1 -> OK, 0 -> NO',
  `admin_mail` varchar(225) NOT NULL,
  `admin_telephone` varchar(225) NOT NULL,
  `resetpass_page` enum('1','2') NOT NULL,
  `resetpass_sms` enum('1','2') NOT NULL,
  `resetpass_email` enum('1','2') NOT NULL,
  `site_maintenance` enum('1','2') NOT NULL DEFAULT '2',
  `servis_siralama` varchar(255) NOT NULL,
  `bronz_statu` int(11) NOT NULL,
  `silver_statu` int(11) NOT NULL,
  `gold_statu` int(11) NOT NULL,
  `bayi_statu` int(11) NOT NULL,
  `ns1` varchar(191) DEFAULT NULL,
  `ns2` varchar(191) DEFAULT NULL,
  `childpanel_price` double DEFAULT NULL,
  `snow_effect` enum('1','2') NOT NULL DEFAULT '2',
  `snow_colour` text NOT NULL,
  `promotion` enum('1','2') DEFAULT '2',
  `referral_commision` double NOT NULL,
  `referral_payout` double NOT NULL,
  `referral_status` enum('1','2') NOT NULL DEFAULT '1',
  `childpanel_selling` enum('1','2') NOT NULL DEFAULT '1',
  `tickets_per_user` double NOT NULL DEFAULT 5,
  `name_fileds` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> NO',
  `skype_feilds` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> NO',
  `csymbol` text NOT NULL,
  `inr_symbol` text NOT NULL,
  `inr_value` double NOT NULL DEFAULT 0,
  `usd_symbol` text NOT NULL,
  `inr_convert` double NOT NULL DEFAULT 0,
  `otp_login` enum('1','2','0') NOT NULL DEFAULT '0',
  `auto_deactivate_payment` enum('1','2') NOT NULL DEFAULT '1',
  `service_avg_time` enum('1','0') NOT NULL DEFAULT '0',
  `alert_orderfail` enum('1','2') NOT NULL DEFAULT '2',
  `alert_welcomemail` enum('1','2') NOT NULL DEFAULT '2',
  `freebalance` enum('1','2') NOT NULL DEFAULT '1',
  `freeamount` double DEFAULT 0,
  `alert_newmessage` enum('1','2') NOT NULL DEFAULT '1',
  `email_confirmation` enum('1','2') NOT NULL DEFAULT '2',
  `resend_max` int(11) NOT NULL,
  `orders` int(255) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `fundstransfer_fees` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_seo`, `site_title`, `site_description`, `site_keywords`, `site_logo`, `site_name`, `site_currency`, `favicon`, `site_language`, `site_theme`, `site_theme_alt`, `recaptcha`, `recaptcha_key`, `recaptcha_secret`, `custom_header`, `custom_footer`, `ticket_system`, `register_page`, `service_speed`, `service_list`, `dolar_charge`, `euro_charge`, `smtp_user`, `smtp_pass`, `smtp_server`, `smtp_port`, `smtp_protocol`, `alert_type`, `alert_apimail`, `alert_newmanuelservice`, `alert_newticket`, `alert_apibalance`, `alert_serviceapialert`, `sms_provider`, `sms_title`, `sms_user`, `sms_pass`, `sms_validate`, `admin_mail`, `admin_telephone`, `resetpass_page`, `resetpass_sms`, `resetpass_email`, `site_maintenance`, `servis_siralama`, `bronz_statu`, `silver_statu`, `gold_statu`, `bayi_statu`, `ns1`, `ns2`, `childpanel_price`, `snow_effect`, `snow_colour`, `promotion`, `referral_commision`, `referral_payout`, `referral_status`, `childpanel_selling`, `tickets_per_user`, `name_fileds`, `skype_feilds`, `csymbol`, `inr_symbol`, `inr_value`, `usd_symbol`, `inr_convert`, `otp_login`, `auto_deactivate_payment`, `service_avg_time`, `alert_orderfail`, `alert_welcomemail`, `freebalance`, `freeamount`, `alert_newmessage`, `email_confirmation`, `resend_max`, `orders`, `orders_id`, `status`, `fundstransfer_fees`) VALUES
(1, 'Best Indian SMM Panel', 'SocialBazar', 'India\'s Most Updated Social Media Panel! One Stop Shop for Social Media Services with Exclusive Support! Also Start Making Money by Resale our Quality Services.', 'smm panel, smm panel cheapest, smm panel cheap, cheapest smm panel, cheap smm panel, indian smm panel, indian smm, best smm panel, instagram panel, panel instagram, panel followers instagram, fastest smm panel, fast smm panel, buy smm panel, smm panel instagram, instagram smm panels, instagram smm panel, indian smm reseller panel, smm panel meaning, SocialBazar, Social Bazar SMM Panel, Best Indian SMM Panel', 'public/images/559cb990c9dffd8675f6bc2186971dc2.png', 'QuickPanel v2.3', 'USD', 'public/images/7ee08d3afb3a2ef0b04a9ebd0698bb2fffddc587.png', 'en', 'Clementine', 'Grapes', '1', '', '', '', '', '1', '2', '1', '2', 0, 0, '', '', '', '465', '0', '2', '1', '1', '1', '1', '1', 'bizimsms', '', '', '', '1', '', '', '2', '1', '2', '2', 'asc', 500, 2500, 10000, 15000, 'ns1.domain.com', 'ns4.domain.com', 5, '2', '#bf2dd1', '1', 5, 10, '2', '2', 9999999999, '2', '2', '$', '₹', 82, '$', 0.012, '0', '1', '1', '1', '1', '2', 0, '1', '2', 2, 12345678, 12345678, '0', '3');

-- --------------------------------------------------------

--
-- Table structure for table `sync_logs`
--

CREATE TABLE `sync_logs` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `action` varchar(225) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(225) NOT NULL,
  `api_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `theme_name` text NOT NULL,
  `theme_dirname` text NOT NULL,
  `theme_extras` text NOT NULL,
  `last_modified` datetime NOT NULL,
  `newpage` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `theme_name`, `theme_dirname`, `theme_extras`, `last_modified`, `newpage`) VALUES
(25, 'QuickPanel', 'Simplify', '', '2022-05-11 12:20:12', '{% include \'header.twig\' %} <div class=\"wrapper-content\">     <div class=\"wrapper-content__header\">           </div>     <div class=\"wrapper-content__body\">       <!-- Main variables *content* -->       <div id=\"block_93\">     <div class=\"new_order-block \">         <div class=\"bg\"></div>         <div class=\"divider-top\"></div>         <div class=\"divider-bottom\"></div>         <div class=\"container\">             <div class=\"row new-order-form\">                 <div class=\"col-lg-8\">                    <div class=\"component_form_group component_card component_radio_button\">                       <div class=\"card \">     <div class=\"col-md-12\">         {{ contentText }}       </div>     </div>   </div>  </div>  </div> </div> </div> </div>   </div> </div>  {% include \'footer.twig\' %}'),
(26, 'Clementine', 'Clementine', '', '2022-05-11 12:20:12', '{% include \'header.twig\' %} <div class=\"wrapper-content\">     <div class=\"wrapper-content__header\">           </div>     <div class=\"wrapper-content__body\">       <!-- Main variables *content* -->       <div id=\"block_93\">     <div class=\"new_order-block \">         <div class=\"bg\"></div>         <div class=\"divider-top\"></div>         <div class=\"divider-bottom\"></div>         <div class=\"container\">             <div class=\"row new-order-form\">                 <div class=\"col-lg-8\">                    <div class=\"component_form_group component_card component_radio_button\">                       <div class=\"card \">     <div class=\"col-md-12\">         {{ contentText }}       </div>     </div>   </div>  </div>  </div> </div> </div> </div>   </div> </div>  {% include \'footer.twig\' %}');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `time` datetime NOT NULL,
  `lastupdate_time` datetime NOT NULL,
  `client_new` enum('1','2') NOT NULL DEFAULT '2',
  `status` enum('pending','answered','closed') NOT NULL DEFAULT 'pending',
  `support_new` enum('1','2') NOT NULL DEFAULT '1',
  `canmessage` enum('1','2') NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_reply`
--

CREATE TABLE `ticket_reply` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `support` enum('1','2') NOT NULL DEFAULT '1',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `readed` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_subjects`
--

CREATE TABLE `ticket_subjects` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `content` text DEFAULT NULL,
  `auto_reply` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ticket_subjects`
--

INSERT INTO `ticket_subjects` (`subject_id`, `subject`, `content`, `auto_reply`) VALUES
(1, 'Order', 'Our Support Team Will Repay Your ticket Soon As Posible!', '0'),
(2, 'Payment', 'We Will Check And Update You Sppn As Posible!', '1'),
(4, 'Complaint & Suggestion', '', '0'),
(6, 'Others', 'You will be answered within minutes.', '1');

-- --------------------------------------------------------

--
-- Table structure for table `units_per_page`
--

CREATE TABLE `units_per_page` (
  `id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `page` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `units_per_page`
--

INSERT INTO `units_per_page` (`id`, `unit`, `page`) VALUES
(1, 500, 'clients'),
(2, 50, 'orders'),
(3, 500, 'payments'),
(4, 50, 'refill');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `u_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `action` varchar(225) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulkedit`
--
ALTER TABLE `bulkedit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `childpanels`
--
ALTER TABLE `childpanels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `clients_category`
--
ALTER TABLE `clients_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_price`
--
ALTER TABLE `clients_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_service`
--
ALTER TABLE `clients_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_report`
--
ALTER TABLE `client_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earn`
--
ALTER TABLE `earn`
  ADD PRIMARY KEY (`earn_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `General_options`
--
ALTER TABLE `General_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `integrations`
--
ALTER TABLE `integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuponlar`
--
ALTER TABLE `kuponlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kupon_kullananlar`
--
ALTER TABLE `kupon_kullananlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mailforms`
--
ALTER TABLE `Mailforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications_popup`
--
ALTER TABLE `notifications_popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`) USING BTREE;

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `panel_info`
--
ALTER TABLE `panel_info`
  ADD PRIMARY KEY (`panel_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payments_bonus`
--
ALTER TABLE `payments_bonus`
  ADD PRIMARY KEY (`bonus_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`referral_id`);

--
-- Indexes for table `referral_payouts`
--
ALTER TABLE `referral_payouts`
  ADD PRIMARY KEY (`r_p_id`);

--
-- Indexes for table `refill_status`
--
ALTER TABLE `refill_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serviceapi_alert`
--
ALTER TABLE `serviceapi_alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `service_api`
--
ALTER TABLE `service_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sync_logs`
--
ALTER TABLE `sync_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `units_per_page`
--
ALTER TABLE `units_per_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bulkedit`
--
ALTER TABLE `bulkedit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `childpanels`
--
ALTER TABLE `childpanels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clients_category`
--
ALTER TABLE `clients_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients_price`
--
ALTER TABLE `clients_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients_service`
--
ALTER TABLE `clients_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_report`
--
ALTER TABLE `client_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `earn`
--
ALTER TABLE `earn`
  MODIFY `earn_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `General_options`
--
ALTER TABLE `General_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `integrations`
--
ALTER TABLE `integrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kuponlar`
--
ALTER TABLE `kuponlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kupon_kullananlar`
--
ALTER TABLE `kupon_kullananlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Mailforms`
--
ALTER TABLE `Mailforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications_popup`
--
ALTER TABLE `notifications_popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=781;

--
-- AUTO_INCREMENT for table `panel_info`
--
ALTER TABLE `panel_info`
  MODIFY `panel_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments_bonus`
--
ALTER TABLE `payments_bonus`
  MODIFY `bonus_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=988;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `referral_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `referral_payouts`
--
ALTER TABLE `referral_payouts`
  MODIFY `r_p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refill_status`
--
ALTER TABLE `refill_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serviceapi_alert`
--
ALTER TABLE `serviceapi_alert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2726;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `service_api`
--
ALTER TABLE `service_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sync_logs`
--
ALTER TABLE `sync_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `units_per_page`
--
ALTER TABLE `units_per_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
