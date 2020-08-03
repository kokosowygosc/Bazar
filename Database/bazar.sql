-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Sie 2020, 08:30
-- Wersja serwera: 10.4.13-MariaDB
-- Wersja PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bazar`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `catalog_images` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `catalog_images`
--

INSERT INTO `catalog_images` (`id`, `image`, `item_id`) VALUES
(120, 'images/114-7jlVQPX8PLE.jpg', 114),
(121, 'images/115-iMgQHSUO1p0.jpg', 115),
(122, 'images/115-OcgiVh8HTsA.jpg', 115),
(123, 'images/115-Z1Ynv9TbExA.jpg', 115),
(124, 'images/116-0Y0zEX4t1XY.jpg', 116),
(125, 'images/116-kgE33_XTVaQ.jpg', 116),
(126, 'images/116-u5krK0tBH8Y.jpg', 116),
(128, 'images/118-a1GA21R4Q9g.jpg', 118);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `catalog_item`
--

CREATE TABLE `catalog_item` (
  `id` int(11) NOT NULL,
  `item_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `item_price` decimal(12,2) NOT NULL,
  `item_description` varchar(500) CHARACTER SET utf32 NOT NULL,
  `pub_date` datetime NOT NULL,
  `item_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `catalog_item`
--

INSERT INTO `catalog_item` (`id`, `item_name`, `item_price`, `item_description`, `pub_date`, `item_id_id`) VALUES
(114, 'Łóżko', '2500.00', 'Nowe łóżko, kompletnie nowe', '2020-07-30 12:16:02', 1),
(115, 'Czerwony samochód', '20000.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vehicula bibendum urna, non auctor erat auctor et. Mauris id consectetur ipsum. Pellentesque lacinia ante vitae tristique scelerisque. Pellentesque blandit, quam quis luctus aliquam, nulla odio posuere tellus, eget sollicitudin leo felis at metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean leo neque, int', '2020-07-30 12:25:23', 1),
(116, 'Samochód Niebieski', '15000.00', 'test', '2020-07-30 13:28:30', 17),
(118, 'test', '111.00', '2', '2020-07-30 13:38:45', 17);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `catalog_user`
--

CREATE TABLE `catalog_user` (
  `id` int(11) NOT NULL,
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
  `observing` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `catalog_user`
--

INSERT INTO `catalog_user` (`id`, `user_phonenumber`, `date_joined`, `email`, `first_name`, `is_active`, `is_staff`, `is_superuser`, `last_login`, `last_name`, `password`, `username`, `observing`) VALUES
(1, 530289222, '2019-03-10 10:42:16', 'mati1995@onet.pl', 'Mateusz', 1, 1, 1, '2020-07-30 11:44:21', 'Marcinkowski', 'pbkdf2_sha256$180000$NkpIQqMZA703$nXRsBUPeQN6eBNnYEYfl/GmIovjW03XFOwMkCCGL97s=', 'kokosowygosc', ''),
(17, NULL, '2020-07-30 12:40:07', '', 'Mateusz', 1, 0, 0, '2020-07-30 13:27:41', 'Marcinkowski', 'pbkdf2_sha256$180000$bWwOBsb8BVgI$g5zJLshE3oin+T4UOjMzFOa1PHegL7mFbSAdKHUnkrk=', 'MateuszMarcinkowski', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `catalog_user_groups`
--

CREATE TABLE `catalog_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `catalog_user_user_permissions`
--

CREATE TABLE `catalog_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-03-10 10:54:18', '1', '1 Samochod 2019-03-10 11:54:17+01:00', 1, '[{\"added\": {}}]', 6, 1),
(2, '2019-03-10 10:54:36', '5', 'MateuszMarcinkowski', 3, '', 7, 1),
(3, '2019-03-24 20:17:06', '11', 'janek', 3, '', 7, 1),
(4, '2019-03-24 20:17:06', '10', 'jasiek', 3, '', 7, 1),
(5, '2019-05-19 18:13:14', '14', 'elo', 1, '[{\"added\": {}}]', 7, 1),
(6, '2019-06-20 14:45:53', '14', 'elo', 3, '', 7, 1),
(7, '2019-06-20 14:45:53', '13', 'monia', 3, '', 7, 1),
(8, '2019-07-01 17:52:37', '112', '112 ??? 2019-06-20 22:32:44+02:00', 2, '[{\"changed\": {\"fields\": [\"item_description\"]}}]', 6, 1),
(9, '2019-07-01 17:52:53', '111', '111 yrddg 2019-06-20 22:23:43+02:00', 2, '[{\"changed\": {\"fields\": [\"item_description\"]}}]', 6, 1),
(10, '2019-07-01 17:53:10', '109', '109 nowe 2019-06-20 18:32:55+02:00', 2, '[{\"changed\": {\"fields\": [\"item_description\"]}}]', 6, 1),
(11, '2019-07-01 17:53:22', '108', '108 tewst2 2019-06-20 16:42:58+02:00', 2, '[{\"changed\": {\"fields\": [\"item_description\"]}}]', 6, 1),
(12, '2019-07-01 17:53:31', '107', '107 elo ogloszenie 2019-06-20 16:42:44+02:00', 2, '[{\"changed\": {\"fields\": [\"item_description\"]}}]', 6, 1),
(13, '2019-07-01 17:53:42', '106', '106 S?onecznikkkkkk 2019-05-22 21:24:52+02:00', 2, '[{\"changed\": {\"fields\": [\"item_description\"]}}]', 6, 1),
(14, '2019-07-01 17:53:53', '103', '103 Pociag 2019-05-22 20:49:52+02:00', 2, '[{\"changed\": {\"fields\": [\"item_description\"]}}]', 6, 1),
(15, '2019-07-01 17:54:02', '102', '102 Samochody 2019-05-22 20:49:14+02:00', 2, '[{\"changed\": {\"fields\": [\"item_description\"]}}]', 6, 1),
(16, '2019-07-01 17:54:49', '104', '104 Kamienica 2019-05-22 20:50:53+02:00', 2, '[{\"changed\": {\"fields\": [\"item_description\"]}}]', 6, 1),
(17, '2019-07-01 17:55:09', '106', '106 S?onecznik 2019-05-22 21:24:52+02:00', 2, '[{\"changed\": {\"fields\": [\"item_name\"]}}]', 6, 1),
(18, '2019-07-01 17:55:20', '107', '107 Rower górski 2019-06-20 16:42:44+02:00', 2, '[{\"changed\": {\"fields\": [\"item_name\"]}}]', 6, 1),
(19, '2019-07-01 17:55:30', '108', '108 Kwiaty 2019-06-20 16:42:58+02:00', 2, '[{\"changed\": {\"fields\": [\"item_name\"]}}]', 6, 1),
(20, '2019-07-01 17:55:39', '109', '109 Szklane ozdoby 2019-06-20 18:32:55+02:00', 2, '[{\"changed\": {\"fields\": [\"item_name\"]}}]', 6, 1),
(21, '2019-07-01 17:55:50', '111', '111 Konto Steam 2019-06-20 22:23:43+02:00', 2, '[{\"changed\": {\"fields\": [\"item_name\"]}}]', 6, 1),
(22, '2019-07-01 17:56:02', '112', '112 Ksi??ki Sienkiewicza 2019-06-20 22:32:44+02:00', 2, '[{\"changed\": {\"fields\": [\"item_name\"]}}]', 6, 1),
(23, '2020-07-30 11:45:40', '16', 'test2', 3, '', 7, 1),
(24, '2020-07-30 11:45:40', '15', 'test', 3, '', 7, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(46, 'pinax_messages', '0001_initial', '2019-05-22 20:00:22'),
(47, 'social_django', '0009_auto_20191118_0520', '2020-07-30 11:29:29'),
(48, 'social_django', '0010_uid_db_index', '2020-07-30 11:29:29'),
(49, 'catalog', '0010_user_observing', '2020-07-30 11:42:28'),
(50, 'catalog', '0011_auto_20200730_1437', '2020-07-30 12:37:14'),
(51, 'catalog', '0012_auto_20200730_1437', '2020-07-30 12:37:45');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
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
('bfe35salwzlh5p91pt7ym5rqv12byrev', 'MTUwMGIxZmMxM2I1MjExNzhhY2QwYTVhYzQzNzUwYTBmMTk2ZWQwZDp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOThiNWVmY2NjYjJkMDJjNDUzZjExMThmZTQ0ZGJmOTY2MTk0MWU4YSJ9', '2020-08-13 13:27:41'),
('ieihkde19s2vm4nwl4cs6ki5lb4gpyyg', 'MjcwNWNlMTI1N2MxMWYwOGMzYTY3MjJhMWY1NzBlNTU3ZWVmYjgxZDp7Il9hdXRoX3VzZXJfaWQiOiIxNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzM4MzU0MWY4MGY4ZDRjYWY5MTI1OTE5NWUyNGNkMjUxOWFhZDBiMyJ9', '2019-04-07 20:41:09'),
('oencuqljvjq5mdk271yg4j940khwx261', 'NzM0Y2E1Y2RiYTAyOGIxZWEyOTllZTAxNzE5N2M5OGE3NWNlNDIyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlOWFkOTllNTZmYzVkNzhmMDJmNTg2YWY1YzQ0MjVhYzJmZWRkODVmIn0=', '2019-07-21 18:38:07'),
('uu7xe6en8us8uyf3g454732n78ok08mn', 'ZjE2MTQ0ODM2ZDY2ZjZmOTFlYTM2MjBmY2JiYTM2ZTgxNGE2NGM0Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODM0YzY1ZDBkMzlhODk1M2MzZGU3ZjFiZjMyNTA2NGY3YTgyZmQ3In0=', '2019-05-12 14:28:57'),
('ygryr5pjfrjq7ma0w4a949xbuhdg1ifn', 'ZjE2MTQ0ODM2ZDY2ZjZmOTFlYTM2MjBmY2JiYTM2ZTgxNGE2NGM0Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODM0YzY1ZDBkMzlhODk1M2MzZGU3ZjFiZjMyNTA2NGY3YTgyZmQ3In0=', '2019-04-21 09:52:15'),
('ywehzgh9irlur0v2ddxthizs6m2v21ez', 'ZjE2MTQ0ODM2ZDY2ZjZmOTFlYTM2MjBmY2JiYTM2ZTgxNGE2NGM0Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODM0YzY1ZDBkMzlhODk1M2MzZGU3ZjFiZjMyNTA2NGY3YTgyZmQ3In0=', '2019-05-26 15:05:23');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pinax_messages_message`
--

CREATE TABLE `pinax_messages_message` (
  `id` int(11) NOT NULL,
  `sent_at` datetime NOT NULL,
  `content` longtext NOT NULL,
  `sender_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pinax_messages_thread`
--

CREATE TABLE `pinax_messages_thread` (
  `id` int(11) NOT NULL,
  `subject` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pinax_messages_userthread`
--

CREATE TABLE `pinax_messages_userthread` (
  `id` int(11) NOT NULL,
  `unread` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) UNSIGNED NOT NULL,
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `thumbnail_kvstore`
--

CREATE TABLE `thumbnail_kvstore` (
  `key` varchar(200) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `thumbnail_kvstore`
--

INSERT INTO `thumbnail_kvstore` (`key`, `value`) VALUES
('sorl-thumbnail||image||061832c57d2a0bf3c528028de4b6a234', '{\"name\": \"cache/bb/da/bbda1aace605d25a45dc81de4daeb9d6.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [228, 340]}'),
('sorl-thumbnail||image||0978cbbc5bcaf9bd772c667383882f23', '{\"name\": \"images/102-ShwzRYo8CKs.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||0bad6086c10ee69b9facf10b3ab6c211', '{\"name\": \"images/106-ShwzRYo8CKs.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||0ee38594f11c237d14acb68e16e83816', '{\"name\": \"cache/f2/ea/f2eab56ca989ab74d8d76cba9ceda9cb.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [500, 500]}'),
('sorl-thumbnail||image||114b02ee1190ab032b7d97ec11cc8d06', '{\"name\": \"images/101-TBNbpd6Xs_4.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||13d1f2d8c1c158fce7a31ca1b32d7d99', '{\"name\": \"images/102-SWQxdsQ-uU0.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||193ce479f983a6efa2d635415f9413c1', '{\"name\": \"images/101-qIHIGRxB_tw.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||1be767e72fa90fe636f771f9e01318c1', '{\"name\": \"cache/4d/5a/4d5af5fd94cb50c3aee598441e14360f.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [204, 340]}'),
('sorl-thumbnail||image||1e18654480968c784945ad614cc09328', '{\"name\": \"images/114-7jlVQPX8PLE.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [6000, 4000]}'),
('sorl-thumbnail||image||2012a7896a91890c4862d921833ec2e7', '{\"name\": \"cache/bd/de/bddeede462c72d1eee7004f210caad02.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [550, 550]}'),
('sorl-thumbnail||image||219e73aa7a7432ac14e5e1fdb9dfb153', '{\"name\": \"images/115-Z1Ynv9TbExA.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [5318, 3404]}'),
('sorl-thumbnail||image||283f433a0b56eac0c17dd069d3aaf53d', '{\"name\": \"images/109-TBNbpd6Xs_4.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||28cdab83cf3dbf4d16b27c21ee102f9c', '{\"name\": \"cache/d6/b6/d6b6904dd96292f313f4495493af5814.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [204, 340]}'),
('sorl-thumbnail||image||2979550340d2b5be32a13e2c26b0a0f7', '{\"name\": \"cache/10/57/1057aa7853d55982ace224f85b901d05.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||2fbe9209473526c433cfe808cde6f508', '{\"name\": \"images/102-5Dw0WrcbK40.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||3223452b4ca2711b2546fad20fd644a3', '{\"name\": \"images/108-ShwzRYo8CKs.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||3303652e04e5f6098b3d3fb22c7e336f', '{\"name\": \"cache/61/3c/613cb4738a6609515cee9ee17cac0b72.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [204, 340]}'),
('sorl-thumbnail||image||33baa77c827907e73c6abb1f89be82df', '{\"name\": \"images/113-TBNbpd6Xs_4.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||3831ed2fb6955f36f78526575862398d', '{\"name\": \"cache/91/87/91876b8d6c5377d226c35bd1fd493511.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [500, 500]}'),
('sorl-thumbnail||image||3852275594bb82dc3bdefc923790abe3', '{\"name\": \"cache/36/0e/360ec0e553d30ee22b38effee3e382e3.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||3f2d33f6983e494836709e9415fc4727', '{\"name\": \"cache/36/86/3686ce952d5cd54a9f2510b5f9993f62.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [500, 500]}'),
('sorl-thumbnail||image||411b352369417698ca2480ea9a0464ee', '{\"name\": \"cache/27/f0/27f0ff967955cc4141b7dcac537f6085.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [204, 340]}'),
('sorl-thumbnail||image||419b590eb8b7af13bc4dca3fab5effca', '{\"name\": \"cache/25/a6/25a6faae1a8e42acb7bc187518ad8796.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [500, 500]}'),
('sorl-thumbnail||image||41ad0870c36554ea46abd352a0458084', '{\"name\": \"cache/b6/f6/b6f60455d43ec8c5908816e76d246177.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [500, 500]}'),
('sorl-thumbnail||image||4296fafa297df8763c9829bcfa208a06', '{\"name\": \"cache/31/3b/313b2026cab71f6526be6d80b24bdb6d.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||438097a3af151a76db2c3ff39d6b1b34', '{\"name\": \"cache/f4/ae/f4aee6ce4eb74a966518bfeb1cb21754.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [500, 500]}'),
('sorl-thumbnail||image||44a12287cd05956f2f21433679f76b06', '{\"name\": \"cache/a3/18/a3189b9220a1035449143e2ba07b04f6.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||464c1f7062425ad308c5e459cee8b5de', '{\"name\": \"cache/90/59/90596b2c9fa675aa7d62af9e1ed2e202.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||4a7fb52fbc6ee83d925385c73e45e211', '{\"name\": \"images/101-somuTrHGhKw.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||4fa1387822363873d1e3befd694f74d5', '{\"name\": \"cache/0d/ec/0dec559ec1c0a6c4a78b1b03994a4062.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||59f592626f984d4efd18897979dd33a9', '{\"name\": \"cache/9d/d2/9dd2bddb52f89baa7b28a55cd60dde08.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [550, 550]}'),
('sorl-thumbnail||image||5a474e8f01db5f7e038b3a784bb2dee8', '{\"name\": \"images/107-EHxhvz64mIQ.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||605ea176a25a8b56f05e02dc84349115', '{\"name\": \"cache/28/90/2890b7545af73a9258700c23609b91f3.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [550, 550]}'),
('sorl-thumbnail||image||60d4b0e79056f2a274e5bea1d07c9bcb', '{\"name\": \"cache/59/b8/59b8411e592b41be4ac4a885bdabde54.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [500, 500]}'),
('sorl-thumbnail||image||6440561da8f0256b922e58de2b15f1a1', '{\"name\": \"cache/4b/59/4b59d14662da4a57096ee8a6c8c612e5.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [500, 500]}'),
('sorl-thumbnail||image||6c3f4206bf8b52f57f35eda008f9a17f', '{\"name\": \"cache/ea/6a/ea6a2ff3791ee36c9615885698b888cc.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [204, 340]}'),
('sorl-thumbnail||image||6e0f1bdf7074f07a72ca18ca251850e6', '{\"name\": \"cache/b4/97/b4976220aa44a0961485021b55dd884a.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [230, 147]}'),
('sorl-thumbnail||image||6f70fda84126f65865327b16f4f7538f', '{\"name\": \"cache/50/1d/501d485bac3a5cbaca02c2b81e53173e.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [550, 550]}'),
('sorl-thumbnail||image||72d959fa484a0c3ce36e2b0df31515d1', '{\"name\": \"cache/48/43/4843361bdafdb7d7c8c2eff5e9a42306.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [550, 550]}'),
('sorl-thumbnail||image||7432b0a7a2886735c26b9f57f5b0303e', '{\"name\": \"cache/fc/2d/fc2da47586dfb559cf1eb8c512361a89.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [500, 500]}'),
('sorl-thumbnail||image||74512fbed605fd346d6fc3348524b975', '{\"name\": \"cache/7d/b8/7db81bbb4ec9db5105337e274ae6e234.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||75bd7185c5b6e74b44c633bf3b049b2f', '{\"name\": \"cache/cc/87/cc878dce0001d4f2bf8711593207acd6.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [204, 340]}'),
('sorl-thumbnail||image||82ebede921673a2fc803c41c6328984c', '{\"name\": \"cache/c1/50/c1501adb289c14008785d98b7bf5cd32.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||83df946ed240f62e2cc29792b473aa3a', '{\"name\": \"cache/9a/ae/9aaedf1a11fd795f42ef25594cfce548.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||8507e22c4ff1a31db59606217433a391', '{\"name\": \"images/96-sosGi2y_Oyg.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||85ec0a5619ec6bd84e7f1f7f4ba22d33', '{\"name\": \"cache/60/a2/60a2beb1cab2f6b92e6a29891ce5ffca.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [230, 153]}'),
('sorl-thumbnail||image||8b16c2ca1b0287f36a52fea164c4be54', '{\"name\": \"cache/e1/f2/e1f277a5d803e143f73c845d8413dcf3.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [550, 550]}'),
('sorl-thumbnail||image||8caae500a4eac0178e35b6cac9a61624', '{\"name\": \"images/98-0y1whh6QY5Q.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||8d912e514d6e4f445443ed8c01b5fe7c', '{\"name\": \"cache/ab/fc/abfc773927cf564d29906e625bfec427.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||8f8b79db007a3a327f94be76345821e4', '{\"name\": \"cache/5c/19/5c1998be0a9939e3c17c80ab3e0e9cfd.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||9149df31db5b170f8cb461e0aefb2cd5', '{\"name\": \"images/115-OcgiVh8HTsA.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [4719, 7075]}'),
('sorl-thumbnail||image||948c8a0304079c5633d4cd470ab99a1b', '{\"name\": \"cache/63/70/63706944cfaea614ef375d994cfa694b.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||953a19f3210456f9980044da014cfa91', '{\"name\": \"images/99-EHxhvz64mIQ.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||955d3e9e8067f3c16888b053ef15b00a', '{\"name\": \"cache/a5/cb/a5cb0ebd1d57271977c989a4d5eb5756.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||96460806d1af21d93e73beeff180a610', '{\"name\": \"images/112-SWQxdsQ-uU0.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||96ac1bbbd8c33cfa464d860a1e320be7', '{\"name\": \"images/99-Hh5dgrky1zA.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||98caa76b82c747b9ccdce7c96c0eae30', '{\"name\": \"images/100-boCk0rIiOSw.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||9b45dad138f92cd2d6ccb484a64e42a8', '{\"name\": \"cache/80/09/80096b68243574ca8e5f4b1786e0705d.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||9db4baa5c0bf85677151ba0fa8bdf03a', '{\"name\": \"images/103-ShwzRYo8CKs.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||9e77236db3c3d1703fc78c228a82ccc4', '{\"name\": \"cache/38/43/3843fe9a5ca79e96674a792382266371.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [204, 340]}'),
('sorl-thumbnail||image||9f955c0f16393dd4e8a147ee9c854859', '{\"name\": \"images/98-Lks7vei-eAg.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||a11eed9531ee6a08abf161210a830039', '{\"name\": \"images/116-u5krK0tBH8Y.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [6000, 4000]}'),
('sorl-thumbnail||image||a33bee7f1655cea4d06d6625ae7a5de3', '{\"name\": \"images/99-Lks7vei-eAg_4I7SIQd.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||aacf63db4986e8e481a0fb8712ab98f1', '{\"name\": \"images/101-iYDWJS5-QQ4.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||ab2ea2c2e9d155b89552cfa717a08e21', '{\"name\": \"images/101-5Dw0WrcbK40.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||ad5e1b9fdba493e5cabe13f284e9d843', '{\"name\": \"cache/59/45/59454f0760e46dd0c2978f286c00d665.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||adb539c1704ad0a6852d7bd5477060d0', '{\"name\": \"cache/84/e7/84e706781020850c1c0ff5f1ba7d1933.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||b14e6d8cbee24a90afe1def2c577c984', '{\"name\": \"images/116-0Y0zEX4t1XY.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [2335, 3488]}'),
('sorl-thumbnail||image||b3a554f22440e8107b6aba5d03bd4904', '{\"name\": \"cache/f4/f2/f4f2f1812f2febbdf86f41f230f7e5ef.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||b3de18bbc87448a0ac0d21e0c4eb441b', '{\"name\": \"cache/a3/9f/a39f2e9fe4ab8cff8d534bcf4f65506f.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [550, 550]}'),
('sorl-thumbnail||image||ba8d03cef1c0106df14e2106546b607e', '{\"name\": \"images/99-Lks7vei-eAg_Jwiul5j.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||bc298d81681c686d4296042ff9ea5aa2', '{\"name\": \"cache/9c/43/9c4307936608656e1ef17bd4c0d5ed79.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||bcad4ef000a0ca23b6dfa74950c79921', '{\"name\": \"images/101-6kov0YQCRFg.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||bcff790463952ff0ed8642ebe150d872', '{\"name\": \"cache/9c/b0/9cb0f6c289566bba2431e0901caa8189.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||c44436994909395c43c3b7a59122eab0', '{\"name\": \"cache/05/ef/05ef53076964db69a6973c2005c99741.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||c45f9439196d385b4e3af5477596a8b6', '{\"name\": \"cache/27/07/270716fa2f9a4cb7585bb92e79739799.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||c5daed7c3a1a7c2c9042663decc6435c', '{\"name\": \"cache/5c/7f/5c7fc832d68d7f87337f14f22c0bfc75.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [230, 153]}'),
('sorl-thumbnail||image||c8fac203183e9bcc9c8538e3f6c66064', '{\"name\": \"images/95-pLioYI_dWsE.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||c90f93dcca75191a39b82467404030d6', '{\"name\": \"images/113-5Dw0WrcbK40.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||c938e49d4c568e4fc8b0e08454ef1223', '{\"name\": \"images/97-yoUCbDLwk8E.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||c965d457048806da7895b2682d454d2a', '{\"name\": \"cache/32/83/3283b2608f52f5a1453436239e498bd3.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [204, 340]}'),
('sorl-thumbnail||image||ca981bc413994dc28cc4ac65b27c2849', '{\"name\": \"images/99-ShwzRYo8CKs.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||cc8a50c159b8a2064055ce4724e88927', '{\"name\": \"images/94-TBNbpd6Xs_4.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||d10437f25d71c0b3f28c32920f84225a', '{\"name\": \"cache/a9/af/a9af762f8df91faa143bd8728c1286e0.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||d3822e2067eea422fadae8438ae5c04f', '{\"name\": \"cache/ee/c5/eec52d94522c34a9e43489079dd9628f.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||da034998456a5ecc3042da1cdaad5ec9', '{\"name\": \"cache/c6/f0/c6f046dd226a6eb6404689c033bea420.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||dc66e657d3f5b3fb6516edc6f3e90403', '{\"name\": \"images/117-GWuxHBPQitw.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [6000, 3845]}'),
('sorl-thumbnail||image||de5be0b7d760fd53c914f97bb62d38be', '{\"name\": \"cache/0c/8b/0c8bf76d6284836d495677505f2f4d2a.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [230, 153]}'),
('sorl-thumbnail||image||e01a81a2eea50a008cf003dfae4f406a', '{\"name\": \"images/118-a1GA21R4Q9g.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [2867, 1911]}'),
('sorl-thumbnail||image||e0fb694f719aff95b084ab52748ad406', '{\"name\": \"cache/18/c3/18c362925e2ae29912f680a05a01d6e4.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||e49c81f4931287731f904545f0b154a0', '{\"name\": \"cache/e4/93/e4930eeceabb1909b8fc2bb9569322f6.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||e5b5a47da75696a6c441e979ae1c2dab', '{\"name\": \"cache/95/27/9527cee37f74991c4827a85e35162f70.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||e78fa6a632b74c6e4615600b1c05308c', '{\"name\": \"cache/ad/21/ad21b425f73522e17a266c08b2bd26ff.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||e7d947b30f5674cc2da1c23a35d5a31c', '{\"name\": \"images/106-DPyTmiItKgM.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||e87f405070186d00f3271b43d22e9c5d', '{\"name\": \"images/96-qIHIGRxB_tw.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||ead343843844d0119afb189f7922c73d', '{\"name\": \"cache/0c/97/0c97d087326373fcd557d80c5b5de941.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||eb46bc173628a0ae9e088052d513717d', '{\"name\": \"images/98-EHxhvz64mIQ.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||ebe9727f5669d18665c0d3f7c71bffab', '{\"name\": \"images/111-dJCmQY4CyVs.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||ec10941b2e906e8ca99614a4e845fa04', '{\"name\": \"cache/3c/2c/3c2cb6ad614e0c7f2bf13c6598db6de9.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||f016388d879f76802ba1ac06cb8cc9a7', '{\"name\": \"cache/4d/09/4d095beec2dcc5e412b13c7ba0ff369c.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [550, 550]}'),
('sorl-thumbnail||image||f18913dc3d0c840832ffe5008b10a30b', '{\"name\": \"images/116-kgE33_XTVaQ.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [3982, 2655]}'),
('sorl-thumbnail||image||f1d183c9227079f9b937ff4ad15f03d2', '{\"name\": \"cache/a1/4e/a14e90be2bc8295ec846b09388a6d8b8.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||f32a64502aed70b4b7762099447cad9d', '{\"name\": \"cache/0f/04/0f042bb6f379bcd6d02f884515a645c4.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||f3ad9971d0ac97b7d0f32990fcc3add9', '{\"name\": \"images/93-N1pz4i2ZFlw.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||f3de182db9db6e24af892196dbc59538', '{\"name\": \"cache/80/bc/80bc5893af5645a03971c7be09d0e693.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||f52d9781cd7d90f5907ea04fa8d96727', '{\"name\": \"images/98-MN5IZ2Y4KcU.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||f57e56732ef246f77ac6605ad763d8a8', '{\"name\": \"cache/3d/e4/3de4025fcc975b3c32459567efa0bf50.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||f7654ba1cc2c4c31bbb9da86df0add09', '{\"name\": \"cache/02/71/0271c6cf7847de36f25b2a5f8fd640ec.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [500, 500]}'),
('sorl-thumbnail||image||f7926614875f713c9042304473313d41', '{\"name\": \"cache/74/35/7435f2a7f9b01b3c9bdd27b96cd55216.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||f7ace94d930a020b07ddcb8fbb7c1619', '{\"name\": \"images/95-TBNbpd6Xs_4.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||f839470935d1fec1fcfa3d5e18c28841', '{\"name\": \"images/106-pLioYI_dWsE.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||f8655c0c9211152a04cba5073e011f9a', '{\"name\": \"images/101-EHxhvz64mIQ.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||f876babf6778139f24ebe267a1158d34', '{\"name\": \"images/98-sosGi2y_Oyg.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||f94eab256c4314287dffccd56c160b5d', '{\"name\": \"images/99-Lks7vei-eAg.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||fb0b15b36253a3c8df3a2daae9d9e924', '{\"name\": \"images/115-iMgQHSUO1p0.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [5913, 3942]}'),
('sorl-thumbnail||image||fc8afb8edd8f065c3e26f34bbed0f567', '{\"name\": \"cache/8c/d7/8cd77a4a6ce6092834543e8a8abaec40.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [150, 150]}'),
('sorl-thumbnail||image||fd706f5e007159961b8c1424f0123f5f', '{\"name\": \"images/98-ShwzRYo8CKs.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 500]}'),
('sorl-thumbnail||image||ff5aa8ff0bf529eb74b4cb312bec6f16', '{\"name\": \"cache/7b/98/7b98828ae76ba88d97e4019e26e41731.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [500, 500]}'),
('sorl-thumbnail||thumbnails||0106d4cc54462535cafb08264591d1d7', '[\"68ad11154fd98a645cf6c52767f663aa\"]'),
('sorl-thumbnail||thumbnails||02418b698e77f9ad5d5c1ccb998fc3b4', '[\"e49c81f4931287731f904545f0b154a0\"]'),
('sorl-thumbnail||thumbnails||06163eb7f774228bcdf86c25acf843fb', '[\"1d695cc94cb8f6bb33ad0b5890462bdb\"]'),
('sorl-thumbnail||thumbnails||0978cbbc5bcaf9bd772c667383882f23', '[\"948c8a0304079c5633d4cd470ab99a1b\", \"ff5aa8ff0bf529eb74b4cb312bec6f16\"]'),
('sorl-thumbnail||thumbnails||0aedb13b17e1420eea84328edf8be470', '[\"ec10941b2e906e8ca99614a4e845fa04\"]'),
('sorl-thumbnail||thumbnails||0bad6086c10ee69b9facf10b3ab6c211', '[\"4fa1387822363873d1e3befd694f74d5\", \"c965d457048806da7895b2682d454d2a\", \"f7654ba1cc2c4c31bbb9da86df0add09\"]'),
('sorl-thumbnail||thumbnails||114b02ee1190ab032b7d97ec11cc8d06', '[\"da034998456a5ecc3042da1cdaad5ec9\"]'),
('sorl-thumbnail||thumbnails||125ab594792335d5059057ea86c2a9f7', '[\"26bb6588398d374c6a08006124434678\"]'),
('sorl-thumbnail||thumbnails||13d1f2d8c1c158fce7a31ca1b32d7d99', '[\"4296fafa297df8763c9829bcfa208a06\", \"41ad0870c36554ea46abd352a0458084\"]'),
('sorl-thumbnail||thumbnails||193ce479f983a6efa2d635415f9413c1', '[\"464c1f7062425ad308c5e459cee8b5de\"]'),
('sorl-thumbnail||thumbnails||1e18654480968c784945ad614cc09328', '[\"6f70fda84126f65865327b16f4f7538f\", \"85ec0a5619ec6bd84e7f1f7f4ba22d33\"]'),
('sorl-thumbnail||thumbnails||1e4d30974edb8136a5d11cbb5592bff9', '[\"4ef4b8d44a1be52e7ef175b26c4fc070\"]'),
('sorl-thumbnail||thumbnails||219e73aa7a7432ac14e5e1fdb9dfb153', '[\"8b16c2ca1b0287f36a52fea164c4be54\", \"74512fbed605fd346d6fc3348524b975\"]'),
('sorl-thumbnail||thumbnails||23ad5417a46319151c8b0a3b59cb54bb', '[\"82ebede921673a2fc803c41c6328984c\"]'),
('sorl-thumbnail||thumbnails||253589e297020d862f256a983f0a62cd', '[\"83df946ed240f62e2cc29792b473aa3a\"]'),
('sorl-thumbnail||thumbnails||2834baf5c60dff83c2845dc2d320d743', '[\"e5b5a47da75696a6c441e979ae1c2dab\"]'),
('sorl-thumbnail||thumbnails||283f433a0b56eac0c17dd069d3aaf53d', '[\"3303652e04e5f6098b3d3fb22c7e336f\"]'),
('sorl-thumbnail||thumbnails||2fbe9209473526c433cfe808cde6f508', '[\"3f2d33f6983e494836709e9415fc4727\", \"2979550340d2b5be32a13e2c26b0a0f7\"]'),
('sorl-thumbnail||thumbnails||3223452b4ca2711b2546fad20fd644a3', '[\"3831ed2fb6955f36f78526575862398d\", \"9e77236db3c3d1703fc78c228a82ccc4\"]'),
('sorl-thumbnail||thumbnails||33baa77c827907e73c6abb1f89be82df', '[\"0ee38594f11c237d14acb68e16e83816\"]'),
('sorl-thumbnail||thumbnails||35673ed91df0b4136702a105dbf6efb4', '[\"adb539c1704ad0a6852d7bd5477060d0\"]'),
('sorl-thumbnail||thumbnails||3d6d7615c51460cd28ffa8b54ad00207', '[\"773387b2853f2c06a1bdc5e54aa7da79\"]'),
('sorl-thumbnail||thumbnails||3ff0b0a327569dcf567ce3eacec17aca', '[\"8d912e514d6e4f445443ed8c01b5fe7c\"]'),
('sorl-thumbnail||thumbnails||4a7fb52fbc6ee83d925385c73e45e211', '[\"9b45dad138f92cd2d6ccb484a64e42a8\"]'),
('sorl-thumbnail||thumbnails||5593c2bc94ba972091137b32e4586bc7', '[\"27ce42e3055bce453a9d7e9e670413fb\"]'),
('sorl-thumbnail||thumbnails||5a474e8f01db5f7e038b3a784bb2dee8', '[\"411b352369417698ca2480ea9a0464ee\", \"7432b0a7a2886735c26b9f57f5b0303e\"]'),
('sorl-thumbnail||thumbnails||5f6e25c595812c45a5fde068be92c5f0', '[\"bc298d81681c686d4296042ff9ea5aa2\"]'),
('sorl-thumbnail||thumbnails||68e331336509e5468e425024f2fb0bcd', '[\"4e5fc684bbfad51c487bef437c592593\"]'),
('sorl-thumbnail||thumbnails||8507e22c4ff1a31db59606217433a391', '[\"f32a64502aed70b4b7762099447cad9d\"]'),
('sorl-thumbnail||thumbnails||8caae500a4eac0178e35b6cac9a61624', '[\"57bebfc1b785545df34a34cd081d9b02\"]'),
('sorl-thumbnail||thumbnails||9149df31db5b170f8cb461e0aefb2cd5', '[\"2012a7896a91890c4862d921833ec2e7\", \"e78fa6a632b74c6e4615600b1c05308c\"]'),
('sorl-thumbnail||thumbnails||953a19f3210456f9980044da014cfa91', '[\"285ce79023ff245d026f32d21dcab06c\"]'),
('sorl-thumbnail||thumbnails||96460806d1af21d93e73beeff180a610', '[\"419b590eb8b7af13bc4dca3fab5effca\", \"1be767e72fa90fe636f771f9e01318c1\"]'),
('sorl-thumbnail||thumbnails||96ac1bbbd8c33cfa464d860a1e320be7', '[\"25f28fc61ea042f9a76d4b3cf5af754a\"]'),
('sorl-thumbnail||thumbnails||98caa76b82c747b9ccdce7c96c0eae30', '[\"955d3e9e8067f3c16888b053ef15b00a\"]'),
('sorl-thumbnail||thumbnails||9db4baa5c0bf85677151ba0fa8bdf03a', '[\"605ea176a25a8b56f05e02dc84349115\", \"75bd7185c5b6e74b44c633bf3b049b2f\", \"6440561da8f0256b922e58de2b15f1a1\"]'),
('sorl-thumbnail||thumbnails||9f955c0f16393dd4e8a147ee9c854859', '[\"6117df10f6e5a29c15e896fe800e257a\"]'),
('sorl-thumbnail||thumbnails||a11eed9531ee6a08abf161210a830039', '[\"b3de18bbc87448a0ac0d21e0c4eb441b\"]'),
('sorl-thumbnail||thumbnails||a33bee7f1655cea4d06d6625ae7a5de3', '[\"6e4b71c9aa8db62d5b49a95e75de2be4\"]'),
('sorl-thumbnail||thumbnails||aacf63db4986e8e481a0fb8712ab98f1', '[\"f57e56732ef246f77ac6605ad763d8a8\"]'),
('sorl-thumbnail||thumbnails||ab2ea2c2e9d155b89552cfa717a08e21', '[\"e0fb694f719aff95b084ab52748ad406\"]'),
('sorl-thumbnail||thumbnails||b14e6d8cbee24a90afe1def2c577c984', '[\"061832c57d2a0bf3c528028de4b6a234\", \"f016388d879f76802ba1ac06cb8cc9a7\"]'),
('sorl-thumbnail||thumbnails||ba8d03cef1c0106df14e2106546b607e', '[\"0c5c454d80161b51c76879ec0f62c1a0\"]'),
('sorl-thumbnail||thumbnails||bcad4ef000a0ca23b6dfa74950c79921', '[\"3852275594bb82dc3bdefc923790abe3\"]'),
('sorl-thumbnail||thumbnails||c8fac203183e9bcc9c8538e3f6c66064', '[\"fc8afb8edd8f065c3e26f34bbed0f567\"]'),
('sorl-thumbnail||thumbnails||c90f93dcca75191a39b82467404030d6', '[\"28cdab83cf3dbf4d16b27c21ee102f9c\", \"438097a3af151a76db2c3ff39d6b1b34\"]'),
('sorl-thumbnail||thumbnails||c938e49d4c568e4fc8b0e08454ef1223', '[\"f7926614875f713c9042304473313d41\"]'),
('sorl-thumbnail||thumbnails||ca981bc413994dc28cc4ac65b27c2849', '[\"c45f9439196d385b4e3af5477596a8b6\"]'),
('sorl-thumbnail||thumbnails||cc8a50c159b8a2064055ce4724e88927', '[\"f3de182db9db6e24af892196dbc59538\"]'),
('sorl-thumbnail||thumbnails||dc66e657d3f5b3fb6516edc6f3e90403', '[\"6e0f1bdf7074f07a72ca18ca251850e6\"]'),
('sorl-thumbnail||thumbnails||e01a81a2eea50a008cf003dfae4f406a', '[\"de5be0b7d760fd53c914f97bb62d38be\"]'),
('sorl-thumbnail||thumbnails||e7d947b30f5674cc2da1c23a35d5a31c', '[\"60d4b0e79056f2a274e5bea1d07c9bcb\", \"bcff790463952ff0ed8642ebe150d872\"]'),
('sorl-thumbnail||thumbnails||e87f405070186d00f3271b43d22e9c5d', '[\"ad5e1b9fdba493e5cabe13f284e9d843\"]'),
('sorl-thumbnail||thumbnails||eb46bc173628a0ae9e088052d513717d', '[\"d10437f25d71c0b3f28c32920f84225a\"]'),
('sorl-thumbnail||thumbnails||ebe9727f5669d18665c0d3f7c71bffab', '[\"6c3f4206bf8b52f57f35eda008f9a17f\"]'),
('sorl-thumbnail||thumbnails||f18913dc3d0c840832ffe5008b10a30b', '[\"59f592626f984d4efd18897979dd33a9\"]'),
('sorl-thumbnail||thumbnails||f3ad9971d0ac97b7d0f32990fcc3add9', '[\"d3822e2067eea422fadae8438ae5c04f\"]'),
('sorl-thumbnail||thumbnails||f52d9781cd7d90f5907ea04fa8d96727', '[\"3bf9dd7c397891c335adb69c20e78594\"]'),
('sorl-thumbnail||thumbnails||f7ace94d930a020b07ddcb8fbb7c1619', '[\"f1d183c9227079f9b937ff4ad15f03d2\"]'),
('sorl-thumbnail||thumbnails||f839470935d1fec1fcfa3d5e18c28841', '[\"8f8b79db007a3a327f94be76345821e4\"]'),
('sorl-thumbnail||thumbnails||f8655c0c9211152a04cba5073e011f9a', '[\"b3a554f22440e8107b6aba5d03bd4904\"]'),
('sorl-thumbnail||thumbnails||f876babf6778139f24ebe267a1158d34', '[\"2e541324e3f7d5ae586ecdc06ad60211\"]'),
('sorl-thumbnail||thumbnails||f94eab256c4314287dffccd56c160b5d', '[\"c44436994909395c43c3b7a59122eab0\"]'),
('sorl-thumbnail||thumbnails||fb0b15b36253a3c8df3a2daae9d9e924', '[\"c5daed7c3a1a7c2c9042663decc6435c\", \"44a12287cd05956f2f21433679f76b06\", \"72d959fa484a0c3ce36e2b0df31515d1\"]'),
('sorl-thumbnail||thumbnails||fd706f5e007159961b8c1424f0123f5f', '[\"ead343843844d0119afb189f7922c73d\"]');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeksy dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeksy dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeksy dla tabeli `catalog_images`
--
ALTER TABLE `catalog_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_images_item_id_4ccba089_fk_catalog_item_id` (`item_id`);

--
-- Indeksy dla tabeli `catalog_item`
--
ALTER TABLE `catalog_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_item_item_id_id_ce0260eb_fk_catalog_user_id` (`item_id_id`);

--
-- Indeksy dla tabeli `catalog_user`
--
ALTER TABLE `catalog_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeksy dla tabeli `catalog_user_groups`
--
ALTER TABLE `catalog_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `catalog_user_groups_user_id_group_id_3693985b_uniq` (`user_id`,`group_id`),
  ADD KEY `catalog_user_groups_group_id_0bc7fc48_fk_auth_group_id` (`group_id`);

--
-- Indeksy dla tabeli `catalog_user_user_permissions`
--
ALTER TABLE `catalog_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `catalog_user_user_permis_user_id_permission_id_c179604f_uniq` (`user_id`,`permission_id`),
  ADD KEY `catalog_user_user_pe_permission_id_061f7363_fk_auth_perm` (`permission_id`);

--
-- Indeksy dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_catalog_user_id` (`user_id`);

--
-- Indeksy dla tabeli `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeksy dla tabeli `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeksy dla tabeli `pinax_messages_message`
--
ALTER TABLE `pinax_messages_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pinax_messages_message_sender_id_53ce0bd9_fk_catalog_user_id` (`sender_id`),
  ADD KEY `pinax_messages_messa_thread_id_ae0e70b6_fk_pinax_mes` (`thread_id`);

--
-- Indeksy dla tabeli `pinax_messages_thread`
--
ALTER TABLE `pinax_messages_thread`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pinax_messages_userthread`
--
ALTER TABLE `pinax_messages_userthread`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pinax_messages_usert_thread_id_d1f4224e_fk_pinax_mes` (`thread_id`),
  ADD KEY `pinax_messages_userthread_user_id_78a90e4f_fk_catalog_user_id` (`user_id`);

--
-- Indeksy dla tabeli `social_auth_association`
--
ALTER TABLE `social_auth_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`);

--
-- Indeksy dla tabeli `social_auth_code`
--
ALTER TABLE `social_auth_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  ADD KEY `social_auth_code_code_a2393167` (`code`),
  ADD KEY `social_auth_code_timestamp_176b341f` (`timestamp`);

--
-- Indeksy dla tabeli `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`);

--
-- Indeksy dla tabeli `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_auth_partial_token_3017fea3` (`token`),
  ADD KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`);

--
-- Indeksy dla tabeli `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  ADD KEY `social_auth_usersocialauth_user_id_17d28448_fk_catalog_user_id` (`user_id`),
  ADD KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`);

--
-- Indeksy dla tabeli `thumbnail_kvstore`
--
ALTER TABLE `thumbnail_kvstore`
  ADD PRIMARY KEY (`key`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT dla tabeli `catalog_images`
--
ALTER TABLE `catalog_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT dla tabeli `catalog_item`
--
ALTER TABLE `catalog_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT dla tabeli `catalog_user`
--
ALTER TABLE `catalog_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `catalog_user_groups`
--
ALTER TABLE `catalog_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `catalog_user_user_permissions`
--
ALTER TABLE `catalog_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT dla tabeli `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT dla tabeli `pinax_messages_message`
--
ALTER TABLE `pinax_messages_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT dla tabeli `pinax_messages_thread`
--
ALTER TABLE `pinax_messages_thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `pinax_messages_userthread`
--
ALTER TABLE `pinax_messages_userthread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT dla tabeli `social_auth_association`
--
ALTER TABLE `social_auth_association`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `social_auth_code`
--
ALTER TABLE `social_auth_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

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
  ADD CONSTRAINT `pinax_messages_messa_thread_id_ae0e70b6_fk_pinax_mes` FOREIGN KEY (`thread_id`) REFERENCES `pinax_messages_thread` (`id`),
  ADD CONSTRAINT `pinax_messages_message_sender_id_53ce0bd9_fk_catalog_user_id` FOREIGN KEY (`sender_id`) REFERENCES `catalog_user` (`id`);

--
-- Ograniczenia dla tabeli `pinax_messages_userthread`
--
ALTER TABLE `pinax_messages_userthread`
  ADD CONSTRAINT `pinax_messages_usert_thread_id_d1f4224e_fk_pinax_mes` FOREIGN KEY (`thread_id`) REFERENCES `pinax_messages_thread` (`id`),
  ADD CONSTRAINT `pinax_messages_userthread_user_id_78a90e4f_fk_catalog_user_id` FOREIGN KEY (`user_id`) REFERENCES `catalog_user` (`id`);

--
-- Ograniczenia dla tabeli `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_catalog_user_id` FOREIGN KEY (`user_id`) REFERENCES `catalog_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
