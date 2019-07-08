-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 08 Lip 2019, 22:12
-- Wersja serwera: 5.5.21-log
-- Wersja PHP: 5.3.20

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `bazar`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Zrzut danych tabeli `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add item', 6, 'add_item'),
(22, 'Can change item', 6, 'change_item'),
(23, 'Can delete item', 6, 'delete_item'),
(24, 'Can view item', 6, 'view_item'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add association', 8, 'add_association'),
(30, 'Can change association', 8, 'change_association'),
(31, 'Can delete association', 8, 'delete_association'),
(32, 'Can view association', 8, 'view_association'),
(33, 'Can add code', 9, 'add_code'),
(34, 'Can change code', 9, 'change_code'),
(35, 'Can delete code', 9, 'delete_code'),
(36, 'Can view code', 9, 'view_code'),
(37, 'Can add nonce', 10, 'add_nonce'),
(38, 'Can change nonce', 10, 'change_nonce'),
(39, 'Can delete nonce', 10, 'delete_nonce'),
(40, 'Can view nonce', 10, 'view_nonce'),
(41, 'Can add user social auth', 11, 'add_usersocialauth'),
(42, 'Can change user social auth', 11, 'change_usersocialauth'),
(43, 'Can delete user social auth', 11, 'delete_usersocialauth'),
(44, 'Can view user social auth', 11, 'view_usersocialauth'),
(45, 'Can add partial', 12, 'add_partial'),
(46, 'Can change partial', 12, 'change_partial'),
(47, 'Can delete partial', 12, 'delete_partial'),
(48, 'Can view partial', 12, 'view_partial'),
(49, 'Can add images', 13, 'add_images'),
(50, 'Can change images', 13, 'change_images'),
(51, 'Can delete images', 13, 'delete_images'),
(52, 'Can view images', 13, 'view_images'),
(53, 'Can add kv store', 14, 'add_kvstore'),
(54, 'Can change kv store', 14, 'change_kvstore'),
(55, 'Can delete kv store', 14, 'delete_kvstore'),
(56, 'Can view kv store', 14, 'view_kvstore'),
(57, 'Can add thread', 15, 'add_thread'),
(58, 'Can change thread', 15, 'change_thread'),
(59, 'Can delete thread', 15, 'delete_thread'),
(60, 'Can view thread', 15, 'view_thread'),
(61, 'Can add message', 16, 'add_message'),
(62, 'Can change message', 16, 'change_message'),
(63, 'Can delete message', 16, 'delete_message'),
(64, 'Can view message', 16, 'view_message'),
(65, 'Can add user thread', 17, 'add_userthread'),
(66, 'Can change user thread', 17, 'change_userthread'),
(67, 'Can delete user thread', 17, 'delete_userthread'),
(68, 'Can view user thread', 17, 'view_userthread');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `catalog_images`
--

CREATE TABLE IF NOT EXISTS `catalog_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_images_item_id_4ccba089_fk_catalog_item_id` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=120 ;

--
-- Zrzut danych tabeli `catalog_images`
--

INSERT INTO `catalog_images` (`id`, `image`, `item_id`) VALUES
(106, 'images/103-ShwzRYo8CKs.jpg', 103),
(108, 'images/106-ShwzRYo8CKs.jpg', 106),
(109, 'images/106-DPyTmiItKgM.jpg', 106),
(112, 'images/107-EHxhvz64mIQ.jpg', 107),
(113, 'images/108-ShwzRYo8CKs.jpg', 108),
(114, 'images/109-TBNbpd6Xs_4.jpg', 109),
(116, 'images/111-dJCmQY4CyVs.jpg', 111),
(117, 'images/112-SWQxdsQ-uU0.jpg', 112),
(118, 'images/113-5Dw0WrcbK40.jpg', 113),
(119, 'images/113-TBNbpd6Xs_4.jpg', 113);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `catalog_item`
--

CREATE TABLE IF NOT EXISTS `catalog_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `item_price` decimal(12,2) NOT NULL,
  `item_description` varchar(500) CHARACTER SET utf32 NOT NULL,
  `pub_date` datetime NOT NULL,
  `item_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_item_item_id_id_ce0260eb_fk_catalog_user_id` (`item_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=114 ;

--
-- Zrzut danych tabeli `catalog_item`
--

INSERT INTO `catalog_item` (`id`, `item_name`, `item_price`, `item_description`, `pub_date`, `item_id_id`) VALUES
(103, 'Pociag', 1000.00, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A assumenda consequatur cum deleniti eius expedita illo impedit ipsa iste minima mollitia, obcaecati optio pariatur quae quaerat quam rerum tempore voluptates!', '2019-05-22 18:49:52', 1),
(104, 'Kamienica', 100.00, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, unde!', '2019-05-22 18:50:53', 1),
(106, 'Słonecznik', 15.45, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab aliquid amet at beatae, consequuntur distinctio ex id, impedit libero magnam obcaecati, provident tenetur. Delectus?', '2019-05-22 19:24:52', 1),
(107, 'Rower górski', 435.34, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquid commodi eveniet incidunt ipsum iure modi nihil non officiis, saepe. A, voluptate.', '2019-06-20 14:42:44', 16),
(108, 'Kwiaty', 35.70, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque blanditiis enim ex laborum nisi omnis placeat, similique ullam?', '2019-06-20 14:42:58', 16),
(109, 'Szklane ozdoby', 35.00, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At consequatur cupiditate dignissimos dolorem eius eligendi est exercitationem fugiat inventore iure nam nesciunt numquam obcaecati pariatur placeat, quae quisquam repudiandae vel.', '2019-06-20 16:32:55', 15),
(111, 'Konto Steam', 4.00, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque eaque eius, molestias nemo reprehenderit tempore?', '2019-06-20 20:23:43', 15),
(112, 'Książki Sienkiewicza', 0.01, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A, aperiam delectus earum iste minima molestias nostrum reiciendis reprehenderit veniam vitae!', '2019-06-20 20:32:44', 15),
(113, 'Drukarka', 160.40, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aut eaque eum hic praesentium repellat repudiandae. Atque porro saepe voluptatum.', '2019-07-07 12:55:03', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `catalog_user`
--

CREATE TABLE IF NOT EXISTS `catalog_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_phonenumber` int(14) DEFAULT NULL,
  `date_joined` datetime NOT NULL,
  `email` varchar(254) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_name` varchar(150) NOT NULL,
  `password` varchar(128) NOT NULL,
  `username` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Zrzut danych tabeli `catalog_user`
--

INSERT INTO `catalog_user` (`id`, `user_phonenumber`, `date_joined`, `email`, `first_name`, `is_active`, `is_staff`, `is_superuser`, `last_login`, `last_name`, `password`, `username`) VALUES
(1, 530289222, '2019-03-10 10:42:16', 'mati1995@onet.pl', 'Mateusz', 1, 1, 1, '2019-07-07 18:38:07', 'Marcinkowski', 'pbkdf2_sha256$150000$BQ0z8TcJHLUH$Y/+vHxw7ZF1omniOl9D08kQIXbOPLrTkH2gssQYhI9I=', 'kokosowygosc'),
(15, NULL, '2019-05-19 18:14:08', 'test@wp.pl', '', 1, 0, 0, '2019-07-07 18:36:19', '', 'pbkdf2_sha256$150000$4USjweADFbMQ$MMUaE9xcmyvNW5BafQd+y1hJ0PmO+CuZB5evvEwSZec=', 'test'),
(16, NULL, '2019-06-20 14:42:03', 'test2@wp.pl', '', 1, 0, 0, '2019-06-20 16:16:12', '', 'pbkdf2_sha256$150000$0GCQEi1EYDWL$aJdFwKv2lGhJpFtsIzyaOGzvnpg1cKsm8ZZFVwTrUwQ=', 'test2');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `catalog_user_groups`
--

CREATE TABLE IF NOT EXISTS `catalog_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `catalog_user_groups_user_id_group_id_3693985b_uniq` (`user_id`,`group_id`),
  KEY `catalog_user_groups_group_id_0bc7fc48_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `catalog_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `catalog_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `catalog_user_user_permis_user_id_permission_id_c179604f_uniq` (`user_id`,`permission_id`),
  KEY `catalog_user_user_pe_permission_id_061f7363_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_catalog_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Zrzut danych tabeli `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-03-10 10:54:18', '1', '1 Samochod 2019-03-10 11:54:17+01:00', 1, '[{"added": {}}]', 6, 1),
(2, '2019-03-10 10:54:36', '5', 'MateuszMarcinkowski', 3, '', 7, 1),
(3, '2019-03-24 20:17:06', '11', 'janek', 3, '', 7, 1),
(4, '2019-03-24 20:17:06', '10', 'jasiek', 3, '', 7, 1),
(5, '2019-05-19 18:13:14', '14', 'elo', 1, '[{"added": {}}]', 7, 1),
(6, '2019-06-20 14:45:53', '14', 'elo', 3, '', 7, 1),
(7, '2019-06-20 14:45:53', '13', 'monia', 3, '', 7, 1),
(8, '2019-07-01 17:52:37', '112', '112 ??? 2019-06-20 22:32:44+02:00', 2, '[{"changed": {"fields": ["item_description"]}}]', 6, 1),
(9, '2019-07-01 17:52:53', '111', '111 yrddg 2019-06-20 22:23:43+02:00', 2, '[{"changed": {"fields": ["item_description"]}}]', 6, 1),
(10, '2019-07-01 17:53:10', '109', '109 nowe 2019-06-20 18:32:55+02:00', 2, '[{"changed": {"fields": ["item_description"]}}]', 6, 1),
(11, '2019-07-01 17:53:22', '108', '108 tewst2 2019-06-20 16:42:58+02:00', 2, '[{"changed": {"fields": ["item_description"]}}]', 6, 1),
(12, '2019-07-01 17:53:31', '107', '107 elo ogloszenie 2019-06-20 16:42:44+02:00', 2, '[{"changed": {"fields": ["item_description"]}}]', 6, 1),
(13, '2019-07-01 17:53:42', '106', '106 S?onecznikkkkkk 2019-05-22 21:24:52+02:00', 2, '[{"changed": {"fields": ["item_description"]}}]', 6, 1),
(14, '2019-07-01 17:53:53', '103', '103 Pociag 2019-05-22 20:49:52+02:00', 2, '[{"changed": {"fields": ["item_description"]}}]', 6, 1),
(15, '2019-07-01 17:54:02', '102', '102 Samochody 2019-05-22 20:49:14+02:00', 2, '[{"changed": {"fields": ["item_description"]}}]', 6, 1),
(16, '2019-07-01 17:54:49', '104', '104 Kamienica 2019-05-22 20:50:53+02:00', 2, '[{"changed": {"fields": ["item_description"]}}]', 6, 1),
(17, '2019-07-01 17:55:09', '106', '106 S?onecznik 2019-05-22 21:24:52+02:00', 2, '[{"changed": {"fields": ["item_name"]}}]', 6, 1),
(18, '2019-07-01 17:55:20', '107', '107 Rower górski 2019-06-20 16:42:44+02:00', 2, '[{"changed": {"fields": ["item_name"]}}]', 6, 1),
(19, '2019-07-01 17:55:30', '108', '108 Kwiaty 2019-06-20 16:42:58+02:00', 2, '[{"changed": {"fields": ["item_name"]}}]', 6, 1),
(20, '2019-07-01 17:55:39', '109', '109 Szklane ozdoby 2019-06-20 18:32:55+02:00', 2, '[{"changed": {"fields": ["item_name"]}}]', 6, 1),
(21, '2019-07-01 17:55:50', '111', '111 Konto Steam 2019-06-20 22:23:43+02:00', 2, '[{"changed": {"fields": ["item_name"]}}]', 6, 1),
(22, '2019-07-01 17:56:02', '112', '112 Ksi??ki Sienkiewicza 2019-06-20 22:32:44+02:00', 2, '[{"changed": {"fields": ["item_name"]}}]', 6, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Zrzut danych tabeli `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(13, 'catalog', 'images'),
(6, 'catalog', 'item'),
(7, 'catalog', 'user'),
(4, 'contenttypes', 'contenttype'),
(16, 'pinax_messages', 'message'),
(15, 'pinax_messages', 'thread'),
(17, 'pinax_messages', 'userthread'),
(5, 'sessions', 'session'),
(8, 'social_django', 'association'),
(9, 'social_django', 'code'),
(10, 'social_django', 'nonce'),
(12, 'social_django', 'partial'),
(11, 'social_django', 'usersocialauth'),
(14, 'thumbnail', 'kvstore');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Zrzut danych tabeli `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'catalog', '0001_initial', '2019-03-10 10:39:59'),
(2, 'contenttypes', '0001_initial', '2019-03-10 10:40:12'),
(3, 'admin', '0001_initial', '2019-03-10 10:40:12'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-03-10 10:40:12'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-03-10 10:40:12'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-03-10 10:40:12'),
(7, 'auth', '0001_initial', '2019-03-10 10:40:12'),
(8, 'auth', '0002_alter_permission_name_max_length', '2019-03-10 10:40:12'),
(9, 'auth', '0003_alter_user_email_max_length', '2019-03-10 10:40:12'),
(10, 'auth', '0004_alter_user_username_opts', '2019-03-10 10:40:12'),
(11, 'auth', '0005_alter_user_last_login_null', '2019-03-10 10:40:12'),
(12, 'auth', '0006_require_contenttypes_0002', '2019-03-10 10:40:12'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2019-03-10 10:40:12'),
(14, 'auth', '0008_alter_user_username_max_length', '2019-03-10 10:40:12'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2019-03-10 10:40:12'),
(16, 'sessions', '0001_initial', '2019-03-10 10:41:01'),
(17, 'default', '0001_initial', '2019-03-10 10:41:02'),
(18, 'social_auth', '0001_initial', '2019-03-10 10:41:02'),
(19, 'default', '0002_add_related_name', '2019-03-10 10:41:02'),
(20, 'social_auth', '0002_add_related_name', '2019-03-10 10:41:02'),
(21, 'default', '0003_alter_email_max_length', '2019-03-10 10:41:02'),
(22, 'social_auth', '0003_alter_email_max_length', '2019-03-10 10:41:02'),
(23, 'default', '0004_auto_20160423_0400', '2019-03-10 10:41:02'),
(24, 'social_auth', '0004_auto_20160423_0400', '2019-03-10 10:41:02'),
(25, 'social_auth', '0005_auto_20160727_2333', '2019-03-10 10:41:02'),
(26, 'social_django', '0006_partial', '2019-03-10 10:41:02'),
(27, 'social_django', '0007_code_timestamp', '2019-03-10 10:41:02'),
(28, 'social_django', '0008_partial_timestamp', '2019-03-10 10:41:02'),
(29, 'social_django', '0003_alter_email_max_length', '2019-03-10 10:41:02'),
(30, 'social_django', '0001_initial', '2019-03-10 10:41:02'),
(31, 'social_django', '0002_add_related_name', '2019-03-10 10:41:02'),
(32, 'social_django', '0004_auto_20160423_0400', '2019-03-10 10:41:02'),
(33, 'social_django', '0005_auto_20160727_2333', '2019-03-10 10:41:02'),
(34, 'catalog', '0002_auto_20190310_1141', '2019-03-10 10:41:33'),
(35, 'catalog', '0003_auto_20190310_1150', '2019-03-10 10:50:19'),
(36, 'catalog', '0003_auto_20190310_1152', '2019-03-10 10:52:28'),
(37, 'catalog', '0004_auto_20190329_2204', '2019-03-29 21:04:11'),
(38, 'catalog', '0005_auto_20190407_1652', '2019-04-07 14:52:46'),
(39, 'catalog', '0006_auto_20190512_1858', '2019-05-12 16:58:59'),
(40, 'catalog', '0007_auto_20190512_1924', '2019-05-12 17:24:37'),
(41, 'thumbnail', '0001_initial', '2019-05-16 19:02:07'),
(42, 'catalog', '0008_auto_20190522_2012', '2019-05-22 18:12:52'),
(43, 'catalog', '0009_auto_20190522_2051', '2019-05-22 18:51:23'),
(44, 'auth', '0010_alter_group_name_max_length', '2019-05-22 19:48:21'),
(45, 'auth', '0011_update_proxy_permissions', '2019-05-22 19:48:21'),
(46, 'pinax_messages', '0001_initial', '2019-05-22 20:00:22');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0kv7fpv0vf34ixctppynhcuuu23oby37', 'NzM0Y2E1Y2RiYTAyOGIxZWEyOTllZTAxNzE5N2M5OGE3NWNlNDIyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlOWFkOTllNTZmYzVkNzhmMDJmNTg2YWY1YzQ0MjVhYzJmZWRkODVmIn0=', '2019-06-06 18:17:43'),
('0th0bds952j2mbyduwh6vbed8sbp18kh', 'N2I3NWY5ODE2NjljZDQ4ZDU2NDQzNDJiNGExZmM3YmI1Nzk3MDY2Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YzlmOWU5ZmU4YzUwMDU5OWNjOTIwOGE2ZTJiNzk3NWM3YWRmYWY4In0=', '2019-03-24 20:07:10'),
('5j9cghihpt8ic4cm5d4ldsaitlaz5qo2', 'ZDMxN2Q2ZWQwNjUxNTIxYzgxZWVkMmU4ZTI0ODA4OWE2MTRiOTk3ODp7ImZhY2Vib29rX3N0YXRlIjoiSzVqUXZBVTg3bzUyMVFxNnQ2QXFDR1lhY2NiUFBGNmIiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGFlYzZmMmFkNTVlMjQ5ZWMyOTc2MDNjZDdhNTI4Y2FiZTliZTE0NiIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIn0=', '2019-03-24 18:44:01'),
('674un44cq6ixzbuvkkbc5raleuqxdqje', 'NjNiZmE4OTJmYjBlNTY2NzkyN2RhNThlOTVkZDc5YjQ5MmM5NmE0YTp7fQ==', '2019-03-25 18:42:17'),
('9k5vohq6ffgnk840568ust5w7e0etv7d', 'ZjE2MTQ0ODM2ZDY2ZjZmOTFlYTM2MjBmY2JiYTM2ZTgxNGE2NGM0Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODM0YzY1ZDBkMzlhODk1M2MzZGU3ZjFiZjMyNTA2NGY3YTgyZmQ3In0=', '2019-05-26 14:58:52'),
('ieihkde19s2vm4nwl4cs6ki5lb4gpyyg', 'MjcwNWNlMTI1N2MxMWYwOGMzYTY3MjJhMWY1NzBlNTU3ZWVmYjgxZDp7Il9hdXRoX3VzZXJfaWQiOiIxNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzM4MzU0MWY4MGY4ZDRjYWY5MTI1OTE5NWUyNGNkMjUxOWFhZDBiMyJ9', '2019-04-07 20:41:09'),
('oencuqljvjq5mdk271yg4j940khwx261', 'NzM0Y2E1Y2RiYTAyOGIxZWEyOTllZTAxNzE5N2M5OGE3NWNlNDIyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlOWFkOTllNTZmYzVkNzhmMDJmNTg2YWY1YzQ0MjVhYzJmZWRkODVmIn0=', '2019-07-21 18:38:07'),
('uu7xe6en8us8uyf3g454732n78ok08mn', 'ZjE2MTQ0ODM2ZDY2ZjZmOTFlYTM2MjBmY2JiYTM2ZTgxNGE2NGM0Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODM0YzY1ZDBkMzlhODk1M2MzZGU3ZjFiZjMyNTA2NGY3YTgyZmQ3In0=', '2019-05-12 14:28:57'),
('ygryr5pjfrjq7ma0w4a949xbuhdg1ifn', 'ZjE2MTQ0ODM2ZDY2ZjZmOTFlYTM2MjBmY2JiYTM2ZTgxNGE2NGM0Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODM0YzY1ZDBkMzlhODk1M2MzZGU3ZjFiZjMyNTA2NGY3YTgyZmQ3In0=', '2019-04-21 09:52:15'),
('ywehzgh9irlur0v2ddxthizs6m2v21ez', 'ZjE2MTQ0ODM2ZDY2ZjZmOTFlYTM2MjBmY2JiYTM2ZTgxNGE2NGM0Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODM0YzY1ZDBkMzlhODk1M2MzZGU3ZjFiZjMyNTA2NGY3YTgyZmQ3In0=', '2019-05-26 15:05:23');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pinax_messages_message`
--

CREATE TABLE IF NOT EXISTS `pinax_messages_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sent_at` datetime NOT NULL,
  `content` longtext NOT NULL,
  `sender_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pinax_messages_message_sender_id_53ce0bd9_fk_catalog_user_id` (`sender_id`),
  KEY `pinax_messages_messa_thread_id_ae0e70b6_fk_pinax_mes` (`thread_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Zrzut danych tabeli `pinax_messages_message`
--

INSERT INTO `pinax_messages_message` (`id`, `sent_at`, `content`, `sender_id`, `thread_id`) VALUES
(27, '2019-06-20 14:47:42', 'testowa wiadomosc', 1, 17),
(28, '2019-06-20 14:53:15', 'test', 16, 17),
(29, '2019-06-20 14:53:43', 'druga', 16, 18),
(30, '2019-06-20 16:07:21', 'drgdrg', 16, 19),
(31, '2019-06-20 16:13:40', 'test', 1, 20),
(32, '2019-06-20 16:23:45', 'odpowiedz', 16, 17);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pinax_messages_thread`
--

CREATE TABLE IF NOT EXISTS `pinax_messages_thread` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Zrzut danych tabeli `pinax_messages_thread`
--

INSERT INTO `pinax_messages_thread` (`id`, `subject`) VALUES
(17, 'Wiadomość dotycząca ogłoszenia 1'),
(18, 'Wiadomość dotycząca ogłoszenia 2'),
(19, 'Wiadomość dotycząca ogłoszenia'),
(20, 'Wiadomość dotycząca ogłoszenia12');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pinax_messages_userthread`
--

CREATE TABLE IF NOT EXISTS `pinax_messages_userthread` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unread` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pinax_messages_usert_thread_id_d1f4224e_fk_pinax_mes` (`thread_id`),
  KEY `pinax_messages_userthread_user_id_78a90e4f_fk_catalog_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Zrzut danych tabeli `pinax_messages_userthread`
--

INSERT INTO `pinax_messages_userthread` (`id`, `unread`, `deleted`, `thread_id`, `user_id`) VALUES
(33, 0, 0, 17, 16),
(34, 0, 0, 17, 1),
(35, 0, 0, 18, 1),
(36, 0, 0, 18, 16),
(37, 0, 0, 19, 1),
(38, 0, 1, 19, 16),
(39, 1, 0, 20, 16),
(40, 0, 0, 20, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `social_auth_association`
--

CREATE TABLE IF NOT EXISTS `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `social_auth_code`
--

CREATE TABLE IF NOT EXISTS `social_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_code_a2393167` (`code`),
  KEY `social_auth_code_timestamp_176b341f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `social_auth_nonce`
--

CREATE TABLE IF NOT EXISTS `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `social_auth_partial`
--

CREATE TABLE IF NOT EXISTS `social_auth_partial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) unsigned NOT NULL,
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`),
  KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `social_auth_usersocialauth`
--

CREATE TABLE IF NOT EXISTS `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersocialauth_user_id_17d28448_fk_catalog_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `social_auth_usersocialauth`
--

INSERT INTO `social_auth_usersocialauth` (`id`, `provider`, `uid`, `extra_data`, `user_id`) VALUES
(1, 'facebook', '2134046353330580', '{"auth_time": 1558286037, "id": "2134046353330580", "expires": 5183999, "granted_scopes": ["public_profile"], "denied_scopes": null, "access_token": "EAAdxX4j1gOgBALFYnDM4X8CqoYctWuYN4kr5ceVsZAZBujxfQa6XroUDTaIjcTCdV21otkv3CGKhMmho5NA5CWFDLSxZBpiDncG62MUkXUWW50FZCgA7QKO8jhfuEnqGTyQbVM32foZBRpBw3anT0nFsJbP3jpz48NUfI8wzsmqZAA4JmvGVbh", "token_type": null}', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `thumbnail_kvstore`
--

CREATE TABLE IF NOT EXISTS `thumbnail_kvstore` (
  `key` varchar(200) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `thumbnail_kvstore`
--

INSERT INTO `thumbnail_kvstore` (`key`, `value`) VALUES
('sorl-thumbnail||image||0978cbbc5bcaf9bd772c667383882f23', '{"name": "images/102-ShwzRYo8CKs.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||0bad6086c10ee69b9facf10b3ab6c211', '{"name": "images/106-ShwzRYo8CKs.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||0ee38594f11c237d14acb68e16e83816', '{"name": "cache/f2/ea/f2eab56ca989ab74d8d76cba9ceda9cb.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [500, 500]}'),
('sorl-thumbnail||image||114b02ee1190ab032b7d97ec11cc8d06', '{"name": "images/101-TBNbpd6Xs_4.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||13d1f2d8c1c158fce7a31ca1b32d7d99', '{"name": "images/102-SWQxdsQ-uU0.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||193ce479f983a6efa2d635415f9413c1', '{"name": "images/101-qIHIGRxB_tw.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||2979550340d2b5be32a13e2c26b0a0f7', '{"name": "cache/10/57/1057aa7853d55982ace224f85b901d05.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||2fbe9209473526c433cfe808cde6f508', '{"name": "images/102-5Dw0WrcbK40.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||3223452b4ca2711b2546fad20fd644a3', '{"name": "images/108-ShwzRYo8CKs.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||33baa77c827907e73c6abb1f89be82df', '{"name": "images/113-TBNbpd6Xs_4.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||3831ed2fb6955f36f78526575862398d', '{"name": "cache/91/87/91876b8d6c5377d226c35bd1fd493511.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [500, 500]}'),
('sorl-thumbnail||image||3852275594bb82dc3bdefc923790abe3', '{"name": "cache/36/0e/360ec0e553d30ee22b38effee3e382e3.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||3f2d33f6983e494836709e9415fc4727', '{"name": "cache/36/86/3686ce952d5cd54a9f2510b5f9993f62.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [500, 500]}'),
('sorl-thumbnail||image||419b590eb8b7af13bc4dca3fab5effca', '{"name": "cache/25/a6/25a6faae1a8e42acb7bc187518ad8796.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [500, 500]}'),
('sorl-thumbnail||image||41ad0870c36554ea46abd352a0458084', '{"name": "cache/b6/f6/b6f60455d43ec8c5908816e76d246177.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [500, 500]}'),
('sorl-thumbnail||image||4296fafa297df8763c9829bcfa208a06', '{"name": "cache/31/3b/313b2026cab71f6526be6d80b24bdb6d.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||438097a3af151a76db2c3ff39d6b1b34', '{"name": "cache/f4/ae/f4aee6ce4eb74a966518bfeb1cb21754.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [500, 500]}'),
('sorl-thumbnail||image||464c1f7062425ad308c5e459cee8b5de', '{"name": "cache/90/59/90596b2c9fa675aa7d62af9e1ed2e202.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||4a7fb52fbc6ee83d925385c73e45e211', '{"name": "images/101-somuTrHGhKw.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||4fa1387822363873d1e3befd694f74d5', '{"name": "cache/0d/ec/0dec559ec1c0a6c4a78b1b03994a4062.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||5a474e8f01db5f7e038b3a784bb2dee8', '{"name": "images/107-EHxhvz64mIQ.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||60d4b0e79056f2a274e5bea1d07c9bcb', '{"name": "cache/59/b8/59b8411e592b41be4ac4a885bdabde54.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [500, 500]}'),
('sorl-thumbnail||image||6440561da8f0256b922e58de2b15f1a1', '{"name": "cache/4b/59/4b59d14662da4a57096ee8a6c8c612e5.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [500, 500]}'),
('sorl-thumbnail||image||7432b0a7a2886735c26b9f57f5b0303e', '{"name": "cache/fc/2d/fc2da47586dfb559cf1eb8c512361a89.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [500, 500]}'),
('sorl-thumbnail||image||82ebede921673a2fc803c41c6328984c', '{"name": "cache/c1/50/c1501adb289c14008785d98b7bf5cd32.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||83df946ed240f62e2cc29792b473aa3a', '{"name": "cache/9a/ae/9aaedf1a11fd795f42ef25594cfce548.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||8507e22c4ff1a31db59606217433a391', '{"name": "images/96-sosGi2y_Oyg.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||8caae500a4eac0178e35b6cac9a61624', '{"name": "images/98-0y1whh6QY5Q.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||8d912e514d6e4f445443ed8c01b5fe7c', '{"name": "cache/ab/fc/abfc773927cf564d29906e625bfec427.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||8f8b79db007a3a327f94be76345821e4', '{"name": "cache/5c/19/5c1998be0a9939e3c17c80ab3e0e9cfd.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||948c8a0304079c5633d4cd470ab99a1b', '{"name": "cache/63/70/63706944cfaea614ef375d994cfa694b.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||953a19f3210456f9980044da014cfa91', '{"name": "images/99-EHxhvz64mIQ.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||955d3e9e8067f3c16888b053ef15b00a', '{"name": "cache/a5/cb/a5cb0ebd1d57271977c989a4d5eb5756.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||96460806d1af21d93e73beeff180a610', '{"name": "images/112-SWQxdsQ-uU0.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||96ac1bbbd8c33cfa464d860a1e320be7', '{"name": "images/99-Hh5dgrky1zA.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||98caa76b82c747b9ccdce7c96c0eae30', '{"name": "images/100-boCk0rIiOSw.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||9b45dad138f92cd2d6ccb484a64e42a8', '{"name": "cache/80/09/80096b68243574ca8e5f4b1786e0705d.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||9db4baa5c0bf85677151ba0fa8bdf03a', '{"name": "images/103-ShwzRYo8CKs.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||9f955c0f16393dd4e8a147ee9c854859', '{"name": "images/98-Lks7vei-eAg.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||a33bee7f1655cea4d06d6625ae7a5de3', '{"name": "images/99-Lks7vei-eAg_4I7SIQd.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||aacf63db4986e8e481a0fb8712ab98f1', '{"name": "images/101-iYDWJS5-QQ4.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||ab2ea2c2e9d155b89552cfa717a08e21', '{"name": "images/101-5Dw0WrcbK40.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||ad5e1b9fdba493e5cabe13f284e9d843', '{"name": "cache/59/45/59454f0760e46dd0c2978f286c00d665.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||adb539c1704ad0a6852d7bd5477060d0', '{"name": "cache/84/e7/84e706781020850c1c0ff5f1ba7d1933.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||b3a554f22440e8107b6aba5d03bd4904', '{"name": "cache/f4/f2/f4f2f1812f2febbdf86f41f230f7e5ef.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||ba8d03cef1c0106df14e2106546b607e', '{"name": "images/99-Lks7vei-eAg_Jwiul5j.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||bc298d81681c686d4296042ff9ea5aa2', '{"name": "cache/9c/43/9c4307936608656e1ef17bd4c0d5ed79.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||bcad4ef000a0ca23b6dfa74950c79921', '{"name": "images/101-6kov0YQCRFg.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||bcff790463952ff0ed8642ebe150d872', '{"name": "cache/9c/b0/9cb0f6c289566bba2431e0901caa8189.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||c44436994909395c43c3b7a59122eab0', '{"name": "cache/05/ef/05ef53076964db69a6973c2005c99741.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||c45f9439196d385b4e3af5477596a8b6', '{"name": "cache/27/07/270716fa2f9a4cb7585bb92e79739799.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||c8fac203183e9bcc9c8538e3f6c66064', '{"name": "images/95-pLioYI_dWsE.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||c90f93dcca75191a39b82467404030d6', '{"name": "images/113-5Dw0WrcbK40.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||c938e49d4c568e4fc8b0e08454ef1223', '{"name": "images/97-yoUCbDLwk8E.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||ca981bc413994dc28cc4ac65b27c2849', '{"name": "images/99-ShwzRYo8CKs.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||cc8a50c159b8a2064055ce4724e88927', '{"name": "images/94-TBNbpd6Xs_4.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||d10437f25d71c0b3f28c32920f84225a', '{"name": "cache/a9/af/a9af762f8df91faa143bd8728c1286e0.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||d3822e2067eea422fadae8438ae5c04f', '{"name": "cache/ee/c5/eec52d94522c34a9e43489079dd9628f.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||da034998456a5ecc3042da1cdaad5ec9', '{"name": "cache/c6/f0/c6f046dd226a6eb6404689c033bea420.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||e0fb694f719aff95b084ab52748ad406', '{"name": "cache/18/c3/18c362925e2ae29912f680a05a01d6e4.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||e49c81f4931287731f904545f0b154a0', '{"name": "cache/e4/93/e4930eeceabb1909b8fc2bb9569322f6.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||e5b5a47da75696a6c441e979ae1c2dab', '{"name": "cache/95/27/9527cee37f74991c4827a85e35162f70.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||e7d947b30f5674cc2da1c23a35d5a31c', '{"name": "images/106-DPyTmiItKgM.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||e87f405070186d00f3271b43d22e9c5d', '{"name": "images/96-qIHIGRxB_tw.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||ead343843844d0119afb189f7922c73d', '{"name": "cache/0c/97/0c97d087326373fcd557d80c5b5de941.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||eb46bc173628a0ae9e088052d513717d', '{"name": "images/98-EHxhvz64mIQ.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||ec10941b2e906e8ca99614a4e845fa04', '{"name": "cache/3c/2c/3c2cb6ad614e0c7f2bf13c6598db6de9.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||f1d183c9227079f9b937ff4ad15f03d2', '{"name": "cache/a1/4e/a14e90be2bc8295ec846b09388a6d8b8.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||f32a64502aed70b4b7762099447cad9d', '{"name": "cache/0f/04/0f042bb6f379bcd6d02f884515a645c4.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||f3ad9971d0ac97b7d0f32990fcc3add9', '{"name": "images/93-N1pz4i2ZFlw.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||f3de182db9db6e24af892196dbc59538', '{"name": "cache/80/bc/80bc5893af5645a03971c7be09d0e693.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||f52d9781cd7d90f5907ea04fa8d96727', '{"name": "images/98-MN5IZ2Y4KcU.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||f57e56732ef246f77ac6605ad763d8a8', '{"name": "cache/3d/e4/3de4025fcc975b3c32459567efa0bf50.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||f7654ba1cc2c4c31bbb9da86df0add09', '{"name": "cache/02/71/0271c6cf7847de36f25b2a5f8fd640ec.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [500, 500]}'),
('sorl-thumbnail||image||f7926614875f713c9042304473313d41', '{"name": "cache/74/35/7435f2a7f9b01b3c9bdd27b96cd55216.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||f7ace94d930a020b07ddcb8fbb7c1619', '{"name": "images/95-TBNbpd6Xs_4.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||f839470935d1fec1fcfa3d5e18c28841', '{"name": "images/106-pLioYI_dWsE.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||f8655c0c9211152a04cba5073e011f9a', '{"name": "images/101-EHxhvz64mIQ.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||f876babf6778139f24ebe267a1158d34', '{"name": "images/98-sosGi2y_Oyg.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||f94eab256c4314287dffccd56c160b5d', '{"name": "images/99-Lks7vei-eAg.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||fc8afb8edd8f065c3e26f34bbed0f567', '{"name": "cache/8c/d7/8cd77a4a6ce6092834543e8a8abaec40.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150]}'),
('sorl-thumbnail||image||fd706f5e007159961b8c1424f0123f5f', '{"name": "images/98-ShwzRYo8CKs.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [300, 500]}'),
('sorl-thumbnail||image||ff5aa8ff0bf529eb74b4cb312bec6f16', '{"name": "cache/7b/98/7b98828ae76ba88d97e4019e26e41731.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [500, 500]}'),
('sorl-thumbnail||thumbnails||0106d4cc54462535cafb08264591d1d7', '["68ad11154fd98a645cf6c52767f663aa"]'),
('sorl-thumbnail||thumbnails||02418b698e77f9ad5d5c1ccb998fc3b4', '["e49c81f4931287731f904545f0b154a0"]'),
('sorl-thumbnail||thumbnails||06163eb7f774228bcdf86c25acf843fb', '["1d695cc94cb8f6bb33ad0b5890462bdb"]'),
('sorl-thumbnail||thumbnails||0978cbbc5bcaf9bd772c667383882f23', '["948c8a0304079c5633d4cd470ab99a1b", "ff5aa8ff0bf529eb74b4cb312bec6f16"]'),
('sorl-thumbnail||thumbnails||0aedb13b17e1420eea84328edf8be470', '["ec10941b2e906e8ca99614a4e845fa04"]'),
('sorl-thumbnail||thumbnails||0bad6086c10ee69b9facf10b3ab6c211', '["f7654ba1cc2c4c31bbb9da86df0add09", "4fa1387822363873d1e3befd694f74d5"]'),
('sorl-thumbnail||thumbnails||114b02ee1190ab032b7d97ec11cc8d06', '["da034998456a5ecc3042da1cdaad5ec9"]'),
('sorl-thumbnail||thumbnails||125ab594792335d5059057ea86c2a9f7', '["26bb6588398d374c6a08006124434678"]'),
('sorl-thumbnail||thumbnails||13d1f2d8c1c158fce7a31ca1b32d7d99', '["4296fafa297df8763c9829bcfa208a06", "41ad0870c36554ea46abd352a0458084"]'),
('sorl-thumbnail||thumbnails||193ce479f983a6efa2d635415f9413c1', '["464c1f7062425ad308c5e459cee8b5de"]'),
('sorl-thumbnail||thumbnails||1e4d30974edb8136a5d11cbb5592bff9', '["4ef4b8d44a1be52e7ef175b26c4fc070"]'),
('sorl-thumbnail||thumbnails||23ad5417a46319151c8b0a3b59cb54bb', '["82ebede921673a2fc803c41c6328984c"]'),
('sorl-thumbnail||thumbnails||253589e297020d862f256a983f0a62cd', '["83df946ed240f62e2cc29792b473aa3a"]'),
('sorl-thumbnail||thumbnails||2834baf5c60dff83c2845dc2d320d743', '["e5b5a47da75696a6c441e979ae1c2dab"]'),
('sorl-thumbnail||thumbnails||2fbe9209473526c433cfe808cde6f508', '["3f2d33f6983e494836709e9415fc4727", "2979550340d2b5be32a13e2c26b0a0f7"]'),
('sorl-thumbnail||thumbnails||3223452b4ca2711b2546fad20fd644a3', '["3831ed2fb6955f36f78526575862398d"]'),
('sorl-thumbnail||thumbnails||33baa77c827907e73c6abb1f89be82df', '["0ee38594f11c237d14acb68e16e83816"]'),
('sorl-thumbnail||thumbnails||35673ed91df0b4136702a105dbf6efb4', '["adb539c1704ad0a6852d7bd5477060d0"]'),
('sorl-thumbnail||thumbnails||3d6d7615c51460cd28ffa8b54ad00207', '["773387b2853f2c06a1bdc5e54aa7da79"]'),
('sorl-thumbnail||thumbnails||3ff0b0a327569dcf567ce3eacec17aca', '["8d912e514d6e4f445443ed8c01b5fe7c"]'),
('sorl-thumbnail||thumbnails||4a7fb52fbc6ee83d925385c73e45e211', '["9b45dad138f92cd2d6ccb484a64e42a8"]'),
('sorl-thumbnail||thumbnails||5593c2bc94ba972091137b32e4586bc7', '["27ce42e3055bce453a9d7e9e670413fb"]'),
('sorl-thumbnail||thumbnails||5a474e8f01db5f7e038b3a784bb2dee8', '["7432b0a7a2886735c26b9f57f5b0303e"]'),
('sorl-thumbnail||thumbnails||5f6e25c595812c45a5fde068be92c5f0', '["bc298d81681c686d4296042ff9ea5aa2"]'),
('sorl-thumbnail||thumbnails||68e331336509e5468e425024f2fb0bcd', '["4e5fc684bbfad51c487bef437c592593"]'),
('sorl-thumbnail||thumbnails||8507e22c4ff1a31db59606217433a391', '["f32a64502aed70b4b7762099447cad9d"]'),
('sorl-thumbnail||thumbnails||8caae500a4eac0178e35b6cac9a61624', '["57bebfc1b785545df34a34cd081d9b02"]'),
('sorl-thumbnail||thumbnails||953a19f3210456f9980044da014cfa91', '["285ce79023ff245d026f32d21dcab06c"]'),
('sorl-thumbnail||thumbnails||96460806d1af21d93e73beeff180a610', '["419b590eb8b7af13bc4dca3fab5effca"]'),
('sorl-thumbnail||thumbnails||96ac1bbbd8c33cfa464d860a1e320be7', '["25f28fc61ea042f9a76d4b3cf5af754a"]'),
('sorl-thumbnail||thumbnails||98caa76b82c747b9ccdce7c96c0eae30', '["955d3e9e8067f3c16888b053ef15b00a"]'),
('sorl-thumbnail||thumbnails||9db4baa5c0bf85677151ba0fa8bdf03a', '["6440561da8f0256b922e58de2b15f1a1"]'),
('sorl-thumbnail||thumbnails||9f955c0f16393dd4e8a147ee9c854859', '["6117df10f6e5a29c15e896fe800e257a"]'),
('sorl-thumbnail||thumbnails||a33bee7f1655cea4d06d6625ae7a5de3', '["6e4b71c9aa8db62d5b49a95e75de2be4"]'),
('sorl-thumbnail||thumbnails||aacf63db4986e8e481a0fb8712ab98f1', '["f57e56732ef246f77ac6605ad763d8a8"]'),
('sorl-thumbnail||thumbnails||ab2ea2c2e9d155b89552cfa717a08e21', '["e0fb694f719aff95b084ab52748ad406"]'),
('sorl-thumbnail||thumbnails||ba8d03cef1c0106df14e2106546b607e', '["0c5c454d80161b51c76879ec0f62c1a0"]'),
('sorl-thumbnail||thumbnails||bcad4ef000a0ca23b6dfa74950c79921', '["3852275594bb82dc3bdefc923790abe3"]'),
('sorl-thumbnail||thumbnails||c8fac203183e9bcc9c8538e3f6c66064', '["fc8afb8edd8f065c3e26f34bbed0f567"]'),
('sorl-thumbnail||thumbnails||c90f93dcca75191a39b82467404030d6', '["438097a3af151a76db2c3ff39d6b1b34"]'),
('sorl-thumbnail||thumbnails||c938e49d4c568e4fc8b0e08454ef1223', '["f7926614875f713c9042304473313d41"]'),
('sorl-thumbnail||thumbnails||ca981bc413994dc28cc4ac65b27c2849', '["c45f9439196d385b4e3af5477596a8b6"]'),
('sorl-thumbnail||thumbnails||cc8a50c159b8a2064055ce4724e88927', '["f3de182db9db6e24af892196dbc59538"]'),
('sorl-thumbnail||thumbnails||e7d947b30f5674cc2da1c23a35d5a31c', '["60d4b0e79056f2a274e5bea1d07c9bcb", "bcff790463952ff0ed8642ebe150d872"]'),
('sorl-thumbnail||thumbnails||e87f405070186d00f3271b43d22e9c5d', '["ad5e1b9fdba493e5cabe13f284e9d843"]'),
('sorl-thumbnail||thumbnails||eb46bc173628a0ae9e088052d513717d', '["d10437f25d71c0b3f28c32920f84225a"]'),
('sorl-thumbnail||thumbnails||f3ad9971d0ac97b7d0f32990fcc3add9', '["d3822e2067eea422fadae8438ae5c04f"]'),
('sorl-thumbnail||thumbnails||f52d9781cd7d90f5907ea04fa8d96727', '["3bf9dd7c397891c335adb69c20e78594"]'),
('sorl-thumbnail||thumbnails||f7ace94d930a020b07ddcb8fbb7c1619', '["f1d183c9227079f9b937ff4ad15f03d2"]'),
('sorl-thumbnail||thumbnails||f839470935d1fec1fcfa3d5e18c28841', '["8f8b79db007a3a327f94be76345821e4"]'),
('sorl-thumbnail||thumbnails||f8655c0c9211152a04cba5073e011f9a', '["b3a554f22440e8107b6aba5d03bd4904"]'),
('sorl-thumbnail||thumbnails||f876babf6778139f24ebe267a1158d34', '["2e541324e3f7d5ae586ecdc06ad60211"]'),
('sorl-thumbnail||thumbnails||f94eab256c4314287dffccd56c160b5d', '["c44436994909395c43c3b7a59122eab0"]'),
('sorl-thumbnail||thumbnails||fd706f5e007159961b8c1424f0123f5f', '["ead343843844d0119afb189f7922c73d"]');

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Ograniczenia dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ograniczenia dla tabeli `catalog_images`
--
ALTER TABLE `catalog_images`
  ADD CONSTRAINT `catalog_images_item_id_4ccba089_fk_catalog_item_id` FOREIGN KEY (`item_id`) REFERENCES `catalog_item` (`id`);

--
-- Ograniczenia dla tabeli `catalog_item`
--
ALTER TABLE `catalog_item`
  ADD CONSTRAINT `catalog_item_item_id_id_ce0260eb_fk_catalog_user_id` FOREIGN KEY (`item_id_id`) REFERENCES `catalog_user` (`id`);

--
-- Ograniczenia dla tabeli `catalog_user_groups`
--
ALTER TABLE `catalog_user_groups`
  ADD CONSTRAINT `catalog_user_groups_group_id_0bc7fc48_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `catalog_user_groups_user_id_09b5941d_fk_catalog_user_id` FOREIGN KEY (`user_id`) REFERENCES `catalog_user` (`id`);

--
-- Ograniczenia dla tabeli `catalog_user_user_permissions`
--
ALTER TABLE `catalog_user_user_permissions`
  ADD CONSTRAINT `catalog_user_user_pe_permission_id_061f7363_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `catalog_user_user_pe_user_id_003ec3eb_fk_catalog_u` FOREIGN KEY (`user_id`) REFERENCES `catalog_user` (`id`);

--
-- Ograniczenia dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_catalog_user_id` FOREIGN KEY (`user_id`) REFERENCES `catalog_user` (`id`);

--
-- Ograniczenia dla tabeli `pinax_messages_message`
--
ALTER TABLE `pinax_messages_message`
  ADD CONSTRAINT `pinax_messages_message_sender_id_53ce0bd9_fk_catalog_user_id` FOREIGN KEY (`sender_id`) REFERENCES `catalog_user` (`id`),
  ADD CONSTRAINT `pinax_messages_messa_thread_id_ae0e70b6_fk_pinax_mes` FOREIGN KEY (`thread_id`) REFERENCES `pinax_messages_thread` (`id`);

--
-- Ograniczenia dla tabeli `pinax_messages_userthread`
--
ALTER TABLE `pinax_messages_userthread`
  ADD CONSTRAINT `pinax_messages_userthread_user_id_78a90e4f_fk_catalog_user_id` FOREIGN KEY (`user_id`) REFERENCES `catalog_user` (`id`),
  ADD CONSTRAINT `pinax_messages_usert_thread_id_d1f4224e_fk_pinax_mes` FOREIGN KEY (`thread_id`) REFERENCES `pinax_messages_thread` (`id`);

--
-- Ograniczenia dla tabeli `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_catalog_user_id` FOREIGN KEY (`user_id`) REFERENCES `catalog_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
