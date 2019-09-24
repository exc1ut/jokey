-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 24 2019 г., 08:58
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `jokey`
--

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_blog_blog`
--

CREATE TABLE `yupe_blog_blog` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `description` text,
  `icon` varchar(250) NOT NULL DEFAULT '',
  `slug` varchar(150) NOT NULL,
  `lang` char(2) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '1',
  `create_user_id` int(11) NOT NULL,
  `update_user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `member_status` int(11) NOT NULL DEFAULT '1',
  `post_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_blog_post`
--

CREATE TABLE `yupe_blog_post` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `create_user_id` int(11) NOT NULL,
  `update_user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `publish_time` int(11) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `lang` char(2) DEFAULT NULL,
  `title` varchar(250) NOT NULL,
  `quote` text,
  `content` text NOT NULL,
  `link` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `comment_status` int(11) NOT NULL DEFAULT '1',
  `create_user_ip` varchar(20) NOT NULL,
  `access_type` int(11) NOT NULL DEFAULT '1',
  `meta_keywords` varchar(250) NOT NULL DEFAULT '',
  `meta_description` varchar(250) NOT NULL DEFAULT '',
  `image` varchar(300) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `meta_title` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_blog_post_to_tag`
--

CREATE TABLE `yupe_blog_post_to_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_blog_tag`
--

CREATE TABLE `yupe_blog_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_blog_user_to_blog`
--

CREATE TABLE `yupe_blog_user_to_blog` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '1',
  `note` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_category_category`
--

CREATE TABLE `yupe_category_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(150) NOT NULL,
  `lang` char(2) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `short_description` text,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_category_category`
--

INSERT INTO `yupe_category_category` (`id`, `parent_id`, `slug`, `lang`, `name`, `image`, `short_description`, `description`, `status`) VALUES
(1, NULL, 'taby', 'ru', 'Табы', NULL, '', '', 1),
(2, NULL, 'banner', 'ru', 'Banner', NULL, '', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_comment_comment`
--

CREATE TABLE `yupe_comment_comment` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `model` varchar(100) NOT NULL,
  `model_id` int(11) NOT NULL,
  `url` varchar(150) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `text` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) DEFAULT NULL,
  `level` int(11) DEFAULT '0',
  `root` int(11) DEFAULT '0',
  `lft` int(11) DEFAULT '0',
  `rgt` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_contentblock_content_block`
--

CREATE TABLE `yupe_contentblock_content_block` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `content` text NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_contentblock_content_block`
--

INSERT INTO `yupe_contentblock_content_block` (`id`, `name`, `code`, `type`, `content`, `description`, `category_id`, `status`) VALUES
(1, 'Some name', 'some-name', 1, 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '<p>lorem ipsum lorem ipsum <span class=\"redactor-invisible-space\">lorem </span></p>', NULL, 1),
(2, 'Имя', 'imya', 1, 'яфывфывфыв', '', 1, 1),
(3, 'Statistics', 'statistics', 1, 'asdasdasd', '', 1, 1),
(4, 'Контакт', 'kontakt', 4, 'Группа компаний Джокей - ведущий мировой производитель пластмассовой тары и упаковки.\r\n\r\nКонтакты головного офиса и региональных представительств указаны на карте.', '', NULL, 1),
(5, 'yandex map', 'yandex-map', 4, '<iframe src=\"https://yandex.uz/map-widget/v1/-/CGcPU6ID\" width=\"860\" height=\"400\" frameborder=\"1\" allowfullscreen=\"true\"></iframe>', '', NULL, 1),
(6, 'Склад', 'sklad', 3, '<p>\r\n		<strong><span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">СООО «Джокей Пластик Могилёв»</span></strong><br style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">\r\n		<span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">УНП 812000091</span><br style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">\r\n		<span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">212030, г. Могилёв, ул. Крупской, 226-4</span><br style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">\r\n		<span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Беларусь</span><br style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">\r\n		<span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">+375222722398</span><br style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">\r\n		<strong><br>\r\n		</strong>\r\n	</p>\r\n	<p>\r\n		<strong><span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">ООО «Джокей Пластик Ульяновск»</span></strong><br style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">\r\n		<span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">ИНН 1127325007787</span><br style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">\r\n		<span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">432072, г. Ульяновск,</span><br style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">\r\n		<span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Промзона «Заволжье»,</span><br style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">\r\n		<span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">11-й проезд Инженерный</span><br style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">\r\n		<span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">+78422371013</span>\r\n	</p>', '', NULL, 1),
(7, 'Офис', 'ofis', 3, '<p>\r\n		<strong><span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">ООО\r\n                        ТД «Джокей Пластик Рус»\r\n		<br>\r\n		</span></strong><span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">ИНН\r\n                    7721519275\r\n		<br>\r\n		</span><span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">142072,\r\n                    Московская обл., г. Домодедово,\r\n		<br>\r\n		</span><span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">мкрн.\r\n                    Востряково, территория Триколор,\r\n		<br>\r\n		</span><span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">стр.\r\n                    14, пом. 302\r\n		<br>\r\n		</span><span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">Россия</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">+74957392637</span><br style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">\r\n		<span style=\"color: rgb(16, 16, 16); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">+74957392638</span>\r\n	</p>', '', NULL, 1),
(8, 'Youtube', 'youtube', 4, '<iframe width=\"450\" height=\"250\" src=\"https://www.youtube.com/embed/Xu3P-Z4vy_o\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', NULL, 1),
(9, 'Youtube заголовок', 'youtube-zagolovok', 1, 'Тара и упаковка производства компании Джокей вновь задает тенденции в упаковке.', '', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_feedback_feedback`
--

CREATE TABLE `yupe_feedback_feedback` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `answer_user` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `theme` varchar(250) NOT NULL,
  `text` text NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `answer` text NOT NULL,
  `answer_time` datetime DEFAULT NULL,
  `is_faq` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_gallery_gallery`
--

CREATE TABLE `yupe_gallery_gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `owner` int(11) DEFAULT NULL,
  `preview_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_gallery_image_to_gallery`
--

CREATE TABLE `yupe_gallery_image_to_gallery` (
  `id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `position` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_image_image`
--

CREATE TABLE `yupe_image_image` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `description` text,
  `file` varchar(250) NOT NULL,
  `create_time` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `alt` varchar(250) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_image_image`
--

INSERT INTO `yupe_image_image` (`id`, `category_id`, `parent_id`, `name`, `description`, `file`, `create_time`, `user_id`, `alt`, `type`, `status`, `sort`) VALUES
(1, 2, NULL, 'Name', 'Desc', 'be1bbb70fe313fda5ecc9fc2913fd283.jpg', '2019-09-22 18:50:46', 1, 'Some name', 0, 1, 1),
(2, 2, NULL, 'asdasd', 'asdasd', '17c7f50f69c38515a2db3793db049828.jpg', '2019-09-22 19:01:10', 1, 'asdasd', 0, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_mail_mail_event`
--

CREATE TABLE `yupe_mail_mail_event` (
  `id` int(11) NOT NULL,
  `code` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_mail_mail_template`
--

CREATE TABLE `yupe_mail_mail_template` (
  `id` int(11) NOT NULL,
  `code` varchar(150) NOT NULL,
  `event_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text,
  `from` varchar(150) NOT NULL,
  `to` varchar(150) NOT NULL,
  `theme` text NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_menu_menu`
--

CREATE TABLE `yupe_menu_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_menu_menu`
--

INSERT INTO `yupe_menu_menu` (`id`, `name`, `code`, `description`, `status`) VALUES
(1, 'Верхнее меню', 'top-menu', 'Основное меню сайта, расположенное сверху в блоке mainmenu.', 1),
(2, 'top-menu-ru', 'top-menu-ru', 'Russian', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_menu_menu_item`
--

CREATE TABLE `yupe_menu_menu_item` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `regular_link` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL,
  `href` varchar(150) NOT NULL,
  `class` varchar(150) DEFAULT NULL,
  `title_attr` varchar(150) DEFAULT NULL,
  `before_link` varchar(150) DEFAULT NULL,
  `after_link` varchar(150) DEFAULT NULL,
  `target` varchar(150) DEFAULT NULL,
  `rel` varchar(150) DEFAULT NULL,
  `condition_name` varchar(150) DEFAULT '0',
  `condition_denial` int(11) DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '1',
  `entity_module_name` varchar(40) DEFAULT NULL,
  `entity_name` varchar(40) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_menu_menu_item`
--

INSERT INTO `yupe_menu_menu_item` (`id`, `parent_id`, `menu_id`, `regular_link`, `title`, `href`, `class`, `title_attr`, `before_link`, `after_link`, `target`, `rel`, `condition_name`, `condition_denial`, `sort`, `status`, `entity_module_name`, `entity_name`, `entity_id`) VALUES
(1, 0, 1, 1, 'Главная', '/', '', 'Главная страница сайта', '', '', '', '', '', 0, 1, 1, NULL, NULL, NULL),
(2, 0, 1, 0, 'Блоги', '/blog/blog/index', '', 'Блоги', '', '', '', '', '', 0, 2, 1, NULL, NULL, NULL),
(3, 2, 1, 0, 'Пользователи', '/user/people/index', '', 'Пользователи', '', '', '', '', '', 0, 3, 1, NULL, NULL, NULL),
(4, 0, 1, 0, 'Wiki', '/wiki/default/index', '', 'Wiki', '', '', '', '', '', 0, 9, 0, NULL, NULL, NULL),
(5, 0, 1, 0, 'Войти', '/user/account/login', 'login-text', 'Войти на сайт', '', '', '', '', 'isAuthenticated', 1, 11, 1, NULL, NULL, NULL),
(6, 0, 1, 0, 'Выйти', '/user/account/logout', 'login-text', 'Выйти', '', '', '', '', 'isAuthenticated', 0, 12, 1, NULL, NULL, NULL),
(7, 0, 1, 0, 'Регистрация', '/user/account/registration', 'login-text', 'Регистрация на сайте', '', '', '', '', 'isAuthenticated', 1, 10, 1, NULL, NULL, NULL),
(8, 0, 1, 0, 'Панель управления', '/yupe/backend/index', 'login-text', 'Панель управления сайтом', '', '', '', '', 'isSuperUser', 0, 13, 1, NULL, NULL, NULL),
(9, 0, 1, 0, 'FAQ', '/feedback/contact/faq', '', 'FAQ', '', '', '', '', '', 0, 7, 1, NULL, NULL, NULL),
(10, 0, 1, 0, 'Контакты', '/feedback/contact/index', '', 'Контакты', '', '', '', '', '', 0, 7, 1, NULL, NULL, NULL),
(11, 0, 1, 0, 'Магазин', '/store/product/index', '', 'Магазин', '', '', '', '', '', 0, 1, 1, NULL, NULL, NULL),
(12, 0, 2, 1, 'О компании', '/o-kompanii', '', '', '', '', '', '', '', 0, 14, 1, '', '', NULL),
(13, 0, 2, 1, 'Новости', '/news', '', '', '', '', '', '', '', 0, 15, 1, '', '', NULL),
(14, 0, 2, 1, 'Продукция', '/store', '', '', '', '', '', '', '', 0, 16, 1, '', '', NULL),
(16, 0, 2, 1, 'Контакты', '/contact', '', '', '', '', '', '', '', 0, 18, 1, '', '', NULL),
(17, 0, 2, 1, 'Оплата и доставка', '/payments', '', '', '', '', '', '', '', 0, 19, 1, '', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_migrations`
--

CREATE TABLE `yupe_migrations` (
  `id` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_migrations`
--

INSERT INTO `yupe_migrations` (`id`, `module`, `version`, `apply_time`) VALUES
(1, 'user', 'm000000_000000_user_base', 1568539445),
(2, 'user', 'm131019_212911_user_tokens', 1568539445),
(3, 'user', 'm131025_152911_clean_user_table', 1568539448),
(4, 'user', 'm131026_002234_prepare_hash_user_password', 1568539450),
(5, 'user', 'm131106_111552_user_restore_fields', 1568539450),
(6, 'user', 'm131121_190850_modify_tokes_table', 1568539451),
(7, 'user', 'm140812_100348_add_expire_to_token_table', 1568539452),
(8, 'user', 'm150416_113652_rename_fields', 1568539452),
(9, 'user', 'm151006_000000_user_add_phone', 1568539453),
(10, 'yupe', 'm000000_000000_yupe_base', 1568539455),
(11, 'yupe', 'm130527_154455_yupe_change_unique_index', 1568539455),
(12, 'yupe', 'm150416_125517_rename_fields', 1568539455),
(13, 'yupe', 'm160204_195213_change_settings_type', 1568539455),
(14, 'category', 'm000000_000000_category_base', 1568539457),
(15, 'category', 'm150415_150436_rename_fields', 1568539457),
(16, 'image', 'm000000_000000_image_base', 1568539461),
(17, 'image', 'm150226_121100_image_order', 1568539461),
(18, 'image', 'm150416_080008_rename_fields', 1568539461),
(19, 'comment', 'm000000_000000_comment_base', 1568539464),
(20, 'comment', 'm130704_095200_comment_nestedsets', 1568539467),
(21, 'comment', 'm150415_151804_rename_fields', 1568539467),
(22, 'gallery', 'm000000_000000_gallery_base', 1568539469),
(23, 'gallery', 'm130427_120500_gallery_creation_user', 1568539471),
(24, 'gallery', 'm150416_074146_rename_fields', 1568539471),
(25, 'gallery', 'm160514_131314_add_preview_to_gallery', 1568539472),
(26, 'gallery', 'm160515_123559_add_category_to_gallery', 1568539473),
(27, 'gallery', 'm160515_151348_add_position_to_gallery_image', 1568539473),
(28, 'gallery', 'm181224_072816_add_sort_to_gallery', 1568539474),
(29, 'store', 'm140812_160000_store_attribute_group_base', 1568539474),
(30, 'store', 'm140812_170000_store_attribute_base', 1568539475),
(31, 'store', 'm140812_180000_store_attribute_option_base', 1568539476),
(32, 'store', 'm140813_200000_store_category_base', 1568539478),
(33, 'store', 'm140813_210000_store_type_base', 1568539478),
(34, 'store', 'm140813_220000_store_type_attribute_base', 1568539480),
(35, 'store', 'm140813_230000_store_producer_base', 1568539480),
(36, 'store', 'm140814_000000_store_product_base', 1568539483),
(37, 'store', 'm140814_000010_store_product_category_base', 1568539485),
(38, 'store', 'm140814_000013_store_product_attribute_eav_base', 1568539486),
(39, 'store', 'm140814_000018_store_product_image_base', 1568539487),
(40, 'store', 'm140814_000020_store_product_variant_base', 1568539489),
(41, 'store', 'm141014_210000_store_product_category_column', 1568539491),
(42, 'store', 'm141015_170000_store_product_image_column', 1568539493),
(43, 'store', 'm141218_091834_default_null', 1568539493),
(44, 'store', 'm150210_063409_add_store_menu_item', 1568539493),
(45, 'store', 'm150210_105811_add_price_column', 1568539496),
(46, 'store', 'm150210_131238_order_category', 1568539496),
(47, 'store', 'm150211_105453_add_position_for_product_variant', 1568539497),
(48, 'store', 'm150226_065935_add_product_position', 1568539498),
(49, 'store', 'm150416_112008_rename_fields', 1568539498),
(50, 'store', 'm150417_180000_store_product_link_base', 1568539500),
(51, 'store', 'm150825_184407_change_store_url', 1568539500),
(52, 'store', 'm150907_084604_new_attributes', 1568539502),
(53, 'store', 'm151218_081635_add_external_id_fields', 1568539503),
(54, 'store', 'm151218_082939_add_external_id_ix', 1568539503),
(55, 'store', 'm151218_142113_add_product_index', 1568539504),
(56, 'store', 'm151223_140722_drop_product_type_categories', 1568539504),
(57, 'store', 'm160210_084850_add_h1_and_canonical', 1568539507),
(58, 'store', 'm160210_131541_add_main_image_alt_title', 1568539510),
(59, 'store', 'm160211_180200_add_additional_images_alt_title', 1568539510),
(60, 'store', 'm160215_110749_add_image_groups_table', 1568539511),
(61, 'store', 'm160227_114934_rename_producer_order_column', 1568539512),
(62, 'store', 'm160309_091039_add_attributes_sort_and_search_fields', 1568539513),
(63, 'store', 'm160413_184551_add_type_attr_fk', 1568539514),
(64, 'store', 'm160602_091243_add_position_product_index', 1568539514),
(65, 'store', 'm160602_091909_add_producer_sort_index', 1568539514),
(66, 'store', 'm160713_105449_remove_irrelevant_product_status', 1568539514),
(67, 'store', 'm160805_070905_add_attribute_description', 1568539515),
(68, 'store', 'm161015_121915_change_product_external_id_type', 1568539519),
(69, 'store', 'm161122_090922_add_sort_product_position', 1568539520),
(70, 'store', 'm161122_093736_add_store_layouts', 1568539524),
(71, 'store', 'm181218_121815_store_product_variant_quantity_column', 1568539525),
(72, 'mail', 'm000000_000000_mail_base', 1568539528),
(73, 'payment', 'm140815_170000_store_payment_base', 1568539530),
(74, 'delivery', 'm140815_190000_store_delivery_base', 1568539533),
(75, 'delivery', 'm140815_200000_store_delivery_payment_base', 1568539534),
(76, 'order', 'm140814_200000_store_order_base', 1568539540),
(77, 'order', 'm150324_105949_order_status_table', 1568539542),
(78, 'order', 'm150416_100212_rename_fields', 1568539543),
(79, 'order', 'm150514_065554_change_order_price', 1568539543),
(80, 'order', 'm151209_185124_split_address', 1568539545),
(81, 'order', 'm151211_115447_add_appartment_field', 1568539546),
(82, 'order', 'm160415_055344_add_manager_to_order', 1568539547),
(83, 'order', 'm160618_145025_add_status_color', 1568539547),
(84, 'page', 'm000000_000000_page_base', 1568539551),
(85, 'page', 'm130115_155600_columns_rename', 1568539551),
(86, 'page', 'm140115_083618_add_layout', 1568539552),
(87, 'page', 'm140620_072543_add_view', 1568539553),
(88, 'page', 'm150312_151049_change_body_type', 1568539553),
(89, 'page', 'm150416_101038_rename_fields', 1568539554),
(90, 'page', 'm180224_105407_meta_title_column', 1568539554),
(91, 'page', 'm180421_143324_update_page_meta_column', 1568539554),
(92, 'notify', 'm141031_091039_add_notify_table', 1568539556),
(93, 'coupon', 'm140816_200000_store_coupon_base', 1568539559),
(94, 'coupon', 'm150414_124659_add_order_coupon_table', 1568539561),
(95, 'coupon', 'm150415_153218_rename_fields', 1568539561),
(96, 'blog', 'm000000_000000_blog_base', 1568539575),
(97, 'blog', 'm130503_091124_BlogPostImage', 1568539575),
(98, 'blog', 'm130529_151602_add_post_category', 1568539577),
(99, 'blog', 'm140226_052326_add_community_fields', 1568539578),
(100, 'blog', 'm140714_110238_blog_post_quote_type', 1568539579),
(101, 'blog', 'm150406_094809_blog_post_quote_type', 1568539580),
(102, 'blog', 'm150414_180119_rename_date_fields', 1568539581),
(103, 'blog', 'm160518_175903_alter_blog_foreign_keys', 1568539582),
(104, 'blog', 'm180421_143937_update_blog_meta_column', 1568539582),
(105, 'blog', 'm180421_143938_add_post_meta_title_column', 1568539583),
(106, 'contentblock', 'm000000_000000_contentblock_base', 1568539587),
(107, 'contentblock', 'm140715_130737_add_category_id', 1568539587),
(108, 'contentblock', 'm150127_130425_add_status_column', 1568539588),
(109, 'news', 'm000000_000000_news_base', 1568539591),
(110, 'news', 'm150416_081251_rename_fields', 1568539591),
(111, 'news', 'm180224_105353_meta_title_column', 1568539591),
(112, 'news', 'm180421_142416_update_news_meta_column', 1568539591),
(113, 'feedback', 'm000000_000000_feedback_base', 1568539594),
(114, 'feedback', 'm150415_184108_rename_fields', 1568539594),
(115, 'menu', 'm000000_000000_menu_base', 1568539598),
(116, 'menu', 'm121220_001126_menu_test_data', 1568539598),
(117, 'menu', 'm160914_134555_fix_menu_item_default_values', 1568539600),
(118, 'menu', 'm181214_110527_menu_item_add_entity_fields', 1568539601);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_news_news`
--

CREATE TABLE `yupe_news_news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `lang` char(2) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `date` date NOT NULL,
  `title` varchar(250) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `short_text` text,
  `full_text` text NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `link` varchar(300) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `meta_title` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_news_news`
--

INSERT INTO `yupe_news_news` (`id`, `category_id`, `lang`, `create_time`, `update_time`, `date`, `title`, `slug`, `short_text`, `full_text`, `image`, `link`, `user_id`, `status`, `is_protected`, `meta_keywords`, `meta_description`, `meta_title`) VALUES
(1, NULL, 'ru', '2019-09-22 18:19:00', '2019-09-22 18:37:35', '2019-09-22', 'News', 'news', '<p>Lorem ipsumLorem ipsum<span class=\"redactor-invisible-space\">Lorem ipsum<span class=\"redactor-invisible-space\">Lorem ipsum<span class=\"redactor-invisible-space\">Lorem ipsum<span class=\"redactor-invisible-space\">Lorem ipsum<span class=\"redactor-invisible-space\">Lorem ipsum<span class=\"redactor-invisible-space\">Lorem ipsum<span class=\"redactor-invisible-space\">Lorem ipsum<span class=\"redactor-invisible-space\"></span></span></span></span></span></span></span></span></p>', '<p>Lorem ipsum Lorem ipsumLorem ipsum<span class=\"redactor-invisible-space\">Lorem ipsum<span class=\"redactor-invisible-space\">Lorem ipsum<span class=\"redactor-invisible-space\">Lorem ipsum<span class=\"redactor-invisible-space\">Lorem ipsum<span class=\"redactor-invisible-space\">Lorem ipsum<span class=\"redactor-invisible-space\">Lorem ipsumLorem ipsum<span class=\"redactor-invisible-space\">Lorem ipsumLorem ipsum<span class=\"redactor-invisible-space\">Lorem ipsum<span class=\"redactor-invisible-space\">Lorem ipsum<span class=\"redactor-invisible-space\"></span></span></span></span></span></span></span></span></span></span></p>', '3a1062a0c2e2ffdc20be0e43e34ca2c7.jpg', 'https://forum.yiiframework.com/t/how-to-include-relation-of-relation-in-find-model/84982', 1, 1, 0, '', '', ''),
(2, NULL, 'ru', '2019-09-22 18:30:04', '2019-09-22 18:45:19', '2019-09-22', 'asdasd', 'asdasd', '<p>ghjgh</p>', '<p>jhgjhgjgh</p>', '527d20a9057166a649c68f15fb64b533.jpg', '', 1, 1, 0, '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_notify_settings`
--

CREATE TABLE `yupe_notify_settings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `my_post` tinyint(1) NOT NULL DEFAULT '1',
  `my_comment` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_page_page`
--

CREATE TABLE `yupe_page_page` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `lang` char(2) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `change_user_id` int(11) DEFAULT NULL,
  `title_short` varchar(150) NOT NULL,
  `title` varchar(250) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `body` mediumtext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `layout` varchar(250) DEFAULT NULL,
  `view` varchar(250) DEFAULT NULL,
  `meta_title` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_page_page`
--

INSERT INTO `yupe_page_page` (`id`, `category_id`, `lang`, `parent_id`, `create_time`, `update_time`, `user_id`, `change_user_id`, `title_short`, `title`, `slug`, `body`, `meta_keywords`, `meta_description`, `status`, `is_protected`, `order`, `layout`, `view`, `meta_title`) VALUES
(1, NULL, 'ru', NULL, '2019-09-22 19:12:13', '2019-09-24 09:44:24', 1, 1, 'О компании', 'О компании', 'o-kompanii', '<h1>О компании</h1>\r\n\r\n		<p>\r\n	Группа&nbsp;компаний Джокей является<strong> ведущим</strong> <strong>мировым</strong> <strong>производителем</strong> <strong>пластмассовой упаковки</strong> и предлагает&nbsp;широкое разнообразие&nbsp;пластмассовых контейнеров и вёдер. Пластмассовая упаковка Jokey сочетает в себе современный дизайн и привлекательный декор с практичной возможностью вторичного использования.</p>\r\n<p>\r\n	Мы являемся опытным, технически компетентным и надежным партнером и готовы помочь Вам реализовать Ваши самые смелые мечты в упаковке!</p>\r\n<h2>\r\n	Мировой лидер</h2>\r\n<p>\r\n	&nbsp;<img alt=\"\" src=\"/webroot/delivery/images/SHUN6901_375_250(2).jpg\" style=\"width: 493px; height: 250px\"></p>\r\n<p>\r\n	Наше производство&nbsp;оснащено на самом высоком уровне! Основываясь на&nbsp;исходные данные и требования Вашего конечного потребителя, мы предложим Вам подробную программную разработку пластмассовой тары, выполненную в трехмерном изображении, а далее изготавливаем пресс-форму для ее производства.&nbsp;<br>\r\n	Пластмассовая упаковка Jokey сочетает в себе современный дизайн и привлекательный декор с практичной возможностью вторичного использования. <strong>Около 6.000 клиентов доверяют нашим решениям в упаковке </strong>и используют их изо дня в день в качестве средства хранения и транспортировки.</p>\r\n<blockquote>\r\n	<p>\r\n		Jokey вновь и вновь определяет масштаб в упаковочной отрасли. Многочисленные патенты и награды подтверждают нашу инновационную силу и возможности. Используемые нами самые современные технологии в литье под давлением – гарантия качества нашей продукций и успеха Ваших продаж.</p>\r\n</blockquote>', '', '', 1, 0, 1, '', '', ''),
(2, NULL, 'ru', NULL, '2019-09-24 08:42:46', '2019-09-24 08:42:59', 1, 1, 'О нас', 'о нас', 'about', '<p><strong>О нас </strong></p>', '', '', 1, 0, 2, '', '', ''),
(3, NULL, 'ru', NULL, '2019-09-24 09:40:15', '2019-09-24 09:41:44', 1, 1, 'Оплата и доставка', 'Оплата и доставка', 'payments', '<h1>Оплата и доставка</h1><p>\r\n	<strong>ПОРЯДОК ПОСТАВКИ ПРОДУКЦИИ</strong></p><p>\r\n	Покупатель направляет Поставщику заявку в письменном виде путем передачи по электронной связи, в которой обязательно указывается ассортимент, количество и сроки поставки.</p><p>\r\n	Поставщик не позднее 3 (трех) банковских дней обязан направить Покупателю подтверждение заявки в полном объеме или частично, либо отказ в ее принятии. Направление спецификации и/или счет приравнивается к подтверждению заявку в указанном в документах объеме.</p><p style=\"margin-left:.6pt;\">\r\n	В случае возникновения у Поставщика обстоятельств, которые делаю невозможным исполнение подтвержденного заказа, Поставщик информирует об этом Покупателя либо устно по телефону, либо письменно путем направления уведомления по средствам факсимильной или электронной связи.</p><p>\r\n	Поставка пластиковой тары (емкости и крышки полимерные) с использованием технологии нанесения этикетки IML либо офсетной печати, осуществляется на нижеследующих условиях и  в сроки:</p><ul>\r\n	<li>\r\n		Поставка пластиковой тары без декорации осуществляется после подтверждения наличия товара на складе.</li>\r\n	<li>\r\n		Поставка пластиковой тары с этикеткой IML происходит в срок письменно согласованный сторонами с учетом процедуры, указанной в п.п.4.5 договора, с даты утверждения образца макета IML этикетки  Покупателем. Датой утверждения является дата получения электронной копии цветопробы с подписью Покупателя. Срок изготовления продукции с IML при наличии плёнок на складе поставщика составляет 3-4 недели.</li>\r\n	<li>\r\n		Поставка пластиковой тары с офсетной печатью осуществляется в срок, письменно согласованный сторонами, после утверждения Покупателем образца готового изделия с офсетной печатью. Стороны обмениваются подписанными с двух сторон образцами ведер с офсетной печатью, по одному для каждой из сторон. Датой утверждения образца с офсетной печатью является дата подписания образца Покупателем.</li>\r\n	<li>\r\n		Срок изготовления ведер с офсетной печатью составляет ориентировочно 2-3 недели после утверждения эталона-образца.</li>\r\n</ul><p>\r\n	Если Покупатель имеет задолженность перед Поставщиком по оплате ранее отгруженной партии Продукции, Поставщик вправе в одностороннем порядке без предварительного уведомления об этом, не отгружать полученный и подтвержденный заказ на новую партию до погашения задолженности в полном объеме. В таком случае ответственность за просрочку в поставке Продукции настоящего договора Поставщик не несет.</p><p>\r\n	Покупатель вправе инициировать иные условия поставки (франко-склад Поставщика или франко-склад Покупателя) в заказе. Согласованные условия поставки по результатам устных переговоров указываются в спецификации/или счете.</p><p>\r\n	<u>В случае поставки Продукции на условиях франко-склад Поставщика, Покупатель обязуется:</u></p><p>\r\n	- заблаговременно до согласованного дня отгрузки, направить по электронной почте Поставщику информационное письмо, содержащее сведения об автомобиле (марка, государственный регистрационный номер), который будет забирать товар со склада, и ФИО водителя;</p><p>\r\n	- забрать продукцию со склада Поставщика в течение 5 календарных дней с даты уведомления его Поставщиком о готовности Продукции к отгрузке по средствам факсимильной либо электронной связи. В случае нарушения указанного срока, Покупатель на усмотрение Поставщика уплачивает пеню за нарушение сроков получения Продукции в размере 0,15% от стоимости партии Продукции за каждый день просрочки либо возмещает понесенные Поставщиком затраты по хранению такой Продукции у сторонней организации.</p><p>\r\n	<u>В случае поставки Продукции на условиях франко-склад Покупателя, последний обязуется:</u></p><p>\r\n	- указывает в заказе либо отдельном письме конкретный адрес доставки Продукции, с указанием желаемого времени доставки;</p><p>\r\n	- осуществить выгрузку Продукции с транспортного средства до окончания рабочего дня, в случае прибытия его в согласованное время, и не позднее 12:00 следующего рабочего дня, в случае прибытии за 2 часа до окончания рабочего дня и отсутствии у Покупателя возможности выгрузки, о чем последний информирует письменно и по телефону Поставщика с указанием причин.</p><p>\r\n	<strong>ДОСТАВКА</strong></p><p>\r\n	Мы с удовольствием сформируем и отправим вам целые фуры до Вашего склада с наших заводов в Могилёве и Ульяновске. Кроме того, наша тара всегда есть в наличии на складах в Москве, Санкт-Петербурге, Ростове-на-Дону, Воронеже, Белгороде, Краснодаре, Екатеринбурге, Нижнем Новгороде, Новосибирске, Ярославле.</p><p>\r\n	Обратите внимание, что отгрузка производится только кратно паллетам.</p><p>\r\n	<strong>СПОСОБЫ ОПЛАТЫ</strong></p><p>\r\n	Предоплатой по счёту банковским переводом. Cчёт выставляется менеджером при подтверждении заказа.</p><p>\r\n	Возможна отсрочка платежа.</p>', '', '', 1, 0, 3, 'yupe', 'payments', '');

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_attribute`
--

CREATE TABLE `yupe_store_attribute` (
  `id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `is_filter` smallint(6) NOT NULL DEFAULT '1',
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_attribute_group`
--

CREATE TABLE `yupe_store_attribute_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_attribute_option`
--

CREATE TABLE `yupe_store_attribute_option` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `position` tinyint(4) DEFAULT NULL,
  `value` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_category`
--

CREATE TABLE `yupe_store_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `meta_title` varchar(250) DEFAULT NULL,
  `meta_description` varchar(250) DEFAULT NULL,
  `meta_keywords` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '1',
  `external_id` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_canonical` varchar(255) DEFAULT NULL,
  `image_alt` varchar(255) DEFAULT NULL,
  `image_title` varchar(255) DEFAULT NULL,
  `view` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_store_category`
--

INSERT INTO `yupe_store_category` (`id`, `parent_id`, `slug`, `name`, `image`, `short_description`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `sort`, `external_id`, `title`, `meta_canonical`, `image_alt`, `image_title`, `view`) VALUES
(1, NULL, 'some-category', 'Some category', NULL, '', '', '', '', '', 1, 1, NULL, 'Cat', '', '', '', ''),
(2, NULL, 'new-category', 'New category', NULL, '', '', '', '', '', 1, 2, NULL, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_coupon`
--

CREATE TABLE `yupe_store_coupon` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `code` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `min_order_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `registered_user` tinyint(4) NOT NULL DEFAULT '0',
  `free_shipping` tinyint(4) NOT NULL DEFAULT '0',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `quantity_per_user` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_delivery`
--

CREATE TABLE `yupe_store_delivery` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` float(10,2) NOT NULL DEFAULT '0.00',
  `free_from` float(10,2) DEFAULT NULL,
  `available_from` float(10,2) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `separate_payment` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_delivery_payment`
--

CREATE TABLE `yupe_store_delivery_payment` (
  `delivery_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_order`
--

CREATE TABLE `yupe_store_order` (
  `id` int(11) NOT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `delivery_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment_method_id` int(11) DEFAULT NULL,
  `paid` tinyint(4) DEFAULT '0',
  `payment_time` datetime DEFAULT NULL,
  `payment_details` text,
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `coupon_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `separate_delivery` tinyint(4) DEFAULT '0',
  `status_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(1024) NOT NULL DEFAULT '',
  `ip` varchar(15) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `note` varchar(1024) NOT NULL DEFAULT '',
  `modified` datetime DEFAULT NULL,
  `zipcode` varchar(30) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `house` varchar(50) DEFAULT NULL,
  `apartment` varchar(10) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_order_coupon`
--

CREATE TABLE `yupe_store_order_coupon` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_order_product`
--

CREATE TABLE `yupe_store_order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `variants` text,
  `variants_text` varchar(1024) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `sku` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_order_status`
--

CREATE TABLE `yupe_store_order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_store_order_status`
--

INSERT INTO `yupe_store_order_status` (`id`, `name`, `is_system`, `color`) VALUES
(1, 'Новый', 1, 'default'),
(2, 'Принят', 1, 'info'),
(3, 'Выполнен', 1, 'success'),
(4, 'Удален', 1, 'danger');

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_payment`
--

CREATE TABLE `yupe_store_payment` (
  `id` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `settings` text,
  `currency_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_producer`
--

CREATE TABLE `yupe_store_producer` (
  `id` int(11) NOT NULL,
  `name_short` varchar(150) NOT NULL,
  `name` varchar(250) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `meta_title` varchar(250) DEFAULT NULL,
  `meta_keywords` varchar(250) DEFAULT NULL,
  `meta_description` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '0',
  `view` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_product`
--

CREATE TABLE `yupe_store_product` (
  `id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `producer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `price` decimal(19,3) NOT NULL DEFAULT '0.000',
  `discount_price` decimal(19,3) DEFAULT NULL,
  `discount` decimal(19,3) DEFAULT NULL,
  `description` text,
  `short_description` text,
  `data` text,
  `is_special` tinyint(1) NOT NULL DEFAULT '0',
  `length` decimal(19,3) DEFAULT NULL,
  `width` decimal(19,3) DEFAULT NULL,
  `height` decimal(19,3) DEFAULT NULL,
  `weight` decimal(19,3) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `in_stock` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `meta_title` varchar(250) DEFAULT NULL,
  `meta_keywords` varchar(250) DEFAULT NULL,
  `meta_description` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `average_price` decimal(19,3) DEFAULT NULL,
  `purchase_price` decimal(19,3) DEFAULT NULL,
  `recommended_price` decimal(19,3) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `external_id` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_canonical` varchar(255) DEFAULT NULL,
  `image_alt` varchar(255) DEFAULT NULL,
  `image_title` varchar(255) DEFAULT NULL,
  `view` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_store_product`
--

INSERT INTO `yupe_store_product` (`id`, `type_id`, `producer_id`, `category_id`, `sku`, `name`, `slug`, `price`, `discount_price`, `discount`, `description`, `short_description`, `data`, `is_special`, `length`, `width`, `height`, `weight`, `quantity`, `in_stock`, `status`, `create_time`, `update_time`, `meta_title`, `meta_keywords`, `meta_description`, `image`, `average_price`, `purchase_price`, `recommended_price`, `position`, `external_id`, `title`, `meta_canonical`, `image_alt`, `image_title`, `view`) VALUES
(1, NULL, NULL, 1, 'name', 'name', 'name', '1.000', '2.000', '3.000', '<p>asdasd</p>', '<p>asdasd</p>', '<p>asdasd\r\n</p>', 0, '3.000', '4.000', '5.000', '6.000', 2, 1, 1, '2019-09-22 20:18:38', '2019-09-22 20:18:52', '', '', '', '208f6617939d8252e8a6be5f6fdcfcd2.jpg', '54.000', '45.000', '54.000', 1, NULL, '', '', '', '', ''),
(2, NULL, NULL, NULL, '', 'asdasd', 'asdasd', '123123213.000', '12312.000', '21312.000', '<p>12312</p>', '<p>12312</p>', '<p>12312</p>', 0, '12312.000', '213.000', '12312.000', '12312.000', 123, 1, 1, '2019-09-22 20:49:22', '2019-09-22 20:49:22', '', '', '', 'df64ccc176de68a0183a4293ddb75d09.jpg', NULL, NULL, NULL, 2, NULL, '', '', '', '', ''),
(3, NULL, NULL, 1, 'Name', 'Box', 'box', '1561.000', '545.000', '56.000', '<div class=\"rightCol\">\r\n	<div class=\"caption\">Основные параметры\r\n	</div>\r\n	<div class=\"cols\">\r\n		<div class=\"columnLeft\">\r\n			<table class=\"chars\"><tbody><tr><th>Объем:\r\n				</th>\r\n				<td>1,2 л\r\n				</td>\r\n			</tr><tr><th>Вес:\r\n				</th>\r\n				<td>40 г\r\n				</td>\r\n			</tr><tr><th>Вес. группа:\r\n				</th>\r\n				<td>Медиум\r\n				</td>\r\n			</tr></tbody></table></div>\r\n		<div class=\"columnRight\">\r\n			<table class=\"chars\"><tbody><tr><th>Вид ручки:\r\n				</th>\r\n				<td>Пластмассовая\r\n				</td>\r\n			</tr><tr><th>Вес ручки:\r\n				</th>\r\n				<td>2 г\r\n				</td>\r\n			</tr></tbody></table></div>\r\n	</div>\r\n	<div class=\"cols\">\r\n		<div class=\"columnLeft\">\r\n			<img style=\"width:150px;\" src=\"https://image.shutterstock.com/image-photo/large-beautiful-drops-transparent-rain-260nw-668593321.jpg\" alt=\"\" /></div>\r\n		<div class=\"columnRight\">\r\n			<table class=\"chars\"><tbody><tr><th>D1:\r\n				</th>\r\n				<td>132 мм\r\n				</td>\r\n			</tr><tr><th>D2:\r\n				</th>\r\n				<td>122 мм\r\n				</td>\r\n			</tr><tr><th>D3:\r\n				</th>\r\n				<td>105 мм\r\n				</td>\r\n			</tr><tr><th>H:\r\n				</th>\r\n				<td>131 мм\r\n				</td>\r\n			</tr></tbody></table></div>\r\n	</div>\r\n	<div class=\"caption\">Допуски\r\n	</div>\r\n	<table class=\"chars\"><tbody><tr><th>Размеры:\r\n		</th>\r\n		<td>+/- 1 мм\r\n		</td>\r\n	</tr><tr><th>Вес/Объем:\r\n		</th>\r\n		<td>+/- 5 %\r\n		</td>\r\n	</tr></tbody></table></div>', '<div class=\"productReview\">\r\n		<div class=\"leftCol\">\r\n			<div class=\"caption\">Информация по логистике</div>\r\n			<p>\r\n	Рекомендуемая нагрузка: не более 15,3 кг<br />\r\n	Штук в одном ряду: 26<br />\r\n	Штук на одном поддоне: 1118</p>\r\n\r\n			<p><br /></p>\r\n<p><img src=\"/webroot/delivery/images/products/JETO_35.jpg\" alt=\"\" /></p>\r\n		</div>\r\n		<div class=\"rightCol\">\r\n			<div class=\"caption\">Печать</div>\r\n			<div class=\"printImage\"><img src=\"/webroot/delivery/images/products/img28.png\" alt=\"\" /></div>\r\n			<table class=\"tbl2\"><tbody><tr><th></th>\r\n					<th>Высота <span class=\"unit\">(мм)</span></th>\r\n					<th>Ширина <span class=\"unit\">(мм)</span></th>\r\n					<th>Средний радиус <span class=\"unit\">(мм)</span></th>\r\n				</tr><tr><td>IML</td>\r\n					<td>139,3 мм</td>\r\n					<td>577,6 мм</td>\r\n					<td>-</td>\r\n				</tr><tr><td>Offset</td>\r\n					<td>110,0 мм</td>\r\n					<td>565,0 мм</td>\r\n					<td>580,0 мм</td>\r\n				</tr></tbody></table></div>\r\n	</div>', '<div class=\"productReview\">\r\n	<div class=\"caption\">Производство</div>\r\n	\r\n</div>', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-09-23 21:30:26', '2019-09-24 00:12:05', '', '', '', 'cc78ce1bed9a9b5f85b67f4f771bf039.jpg', NULL, NULL, NULL, 3, NULL, '', '', '', '', ''),
(4, NULL, NULL, 2, 'asdas', 'New product', 'new-product', '4646.000', '654.000', '6546.000', '<div class=\"rightCol\">\r\n	<div class=\"caption\">Основные параметры\r\n	</div>\r\n	<div class=\"cols\">\r\n		<div class=\"columnLeft\">\r\n			<table class=\"chars\"><tbody><tr><th>Объем:\r\n				</th>\r\n				<td>1,2 л\r\n				</td>\r\n			</tr><tr><th>Вес:\r\n				</th>\r\n				<td>40 г\r\n				</td>\r\n			</tr><tr><th>Вес. группа:\r\n				</th>\r\n				<td>Медиум\r\n				</td>\r\n			</tr></tbody></table></div>\r\n		<div class=\"columnRight\">\r\n			<table class=\"chars\"><tbody><tr><th>Вид ручки:\r\n				</th>\r\n				<td>Пластмассовая\r\n				</td>\r\n			</tr><tr><th>Вес ручки:\r\n				</th>\r\n				<td>2 г\r\n				</td>\r\n			</tr></tbody></table></div>\r\n	</div>\r\n	<div class=\"cols\">\r\n		<div class=\"columnLeft\">\r\n			<img style=\"width:150px;\" src=\"https://image.shutterstock.com/image-photo/large-beautiful-drops-transparent-rain-260nw-668593321.jpg\" alt=\"\" /></div>\r\n		<div class=\"columnRight\">\r\n			<table class=\"chars\"><tbody><tr><th>D1:\r\n				</th>\r\n				<td>132 мм\r\n				</td>\r\n			</tr><tr><th>D2:\r\n				</th>\r\n				<td>122 мм\r\n				</td>\r\n			</tr><tr><th>D3:\r\n				</th>\r\n				<td>105 мм\r\n				</td>\r\n			</tr><tr><th>H:\r\n				</th>\r\n				<td>131 мм\r\n				</td>\r\n			</tr></tbody></table></div>\r\n	</div>\r\n	<div class=\"caption\">Допуски\r\n	</div>\r\n	<table class=\"chars\"><tbody><tr><th>Размеры:\r\n		</th>\r\n		<td>+/- 1 мм\r\n		</td>\r\n	</tr><tr><th>Вес/Объем:\r\n		</th>\r\n		<td>+/- 5 %\r\n		</td>\r\n	</tr></tbody></table></div>', '<div class=\"productReview\">\r\n	<div class=\"leftCol\">\r\n		<div class=\"caption\">Информация по логистике\r\n		</div>\r\n		<p>\r\n			Рекомендуемая нагрузка: не более 15,3 кг<br />\r\n			Штук в одном ряду: 26<br />\r\n			Штук на одном поддоне: 1118\r\n		</p>\r\n		<p><br /></p>\r\n		<p><img src=\"/webroot/delivery/images/products/JETO_35.jpg\" alt=\"\" /></p>\r\n	</div>\r\n	<div class=\"rightCol\">\r\n		<div class=\"caption\">Печать\r\n		</div>\r\n		<div class=\"printImage\"><img src=\"/webroot/delivery/images/products/img28.png\" alt=\"\" /></div>\r\n		<table class=\"tbl2\"><tbody><tr><th>\r\n			</th>\r\n			<th>Высота <span class=\"unit\">(мм)</span>\r\n			</th>\r\n			<th>Ширина <span class=\"unit\">(мм)</span>\r\n			</th>\r\n			<th>Средний радиус <span class=\"unit\">(мм)</span>\r\n			</th>\r\n		</tr><tr><td>IML\r\n			</td>\r\n			<td>139,3 мм\r\n			</td>\r\n			<td>577,6 мм\r\n			</td>\r\n			<td>-\r\n			</td>\r\n		</tr><tr><td>Offset\r\n			</td>\r\n			<td>110,0 мм\r\n			</td>\r\n			<td>565,0 мм\r\n			</td>\r\n			<td>580,0 мм\r\n			</td>\r\n		</tr></tbody></table></div>\r\n</div>', '<div class=\"productReview\">\r\n	<div class=\"caption\">Производство\r\n	</div>\r\n</div>', 0, '123.000', '123.000', '123.000', '123.000', 123, 1, 1, '2019-09-24 00:17:00', '2019-09-24 00:22:58', '', '', '', '362a831961617fa7956550d80c6b6e08.jpg', NULL, NULL, NULL, 4, NULL, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_product_attribute_value`
--

CREATE TABLE `yupe_store_product_attribute_value` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `number_value` double DEFAULT NULL,
  `string_value` varchar(250) DEFAULT NULL,
  `text_value` text,
  `option_value` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_product_category`
--

CREATE TABLE `yupe_store_product_category` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_product_image`
--

CREATE TABLE `yupe_store_product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_store_product_image`
--

INSERT INTO `yupe_store_product_image` (`id`, `product_id`, `name`, `title`, `alt`, `group_id`) VALUES
(1, 3, 'b239d06680a45092243a0f6b24e98d1a.jpg', '', '', NULL),
(2, 4, 'fb1db4d797a321c518ccf6bd06efbcbc.jpg', '', '', NULL),
(3, 4, 'd27e666503a903433c8e50784d465a48.jpg', '', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_product_image_group`
--

CREATE TABLE `yupe_store_product_image_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_product_link`
--

CREATE TABLE `yupe_store_product_link` (
  `id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `linked_product_id` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_product_link_type`
--

CREATE TABLE `yupe_store_product_link_type` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_store_product_link_type`
--

INSERT INTO `yupe_store_product_link_type` (`id`, `code`, `title`) VALUES
(1, 'similar', 'Похожие'),
(2, 'related', 'Сопутствующие');

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_product_variant`
--

CREATE TABLE `yupe_store_product_variant` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `attribute_value` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_type`
--

CREATE TABLE `yupe_store_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_type_attribute`
--

CREATE TABLE `yupe_store_type_attribute` (
  `type_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_user_tokens`
--

CREATE TABLE `yupe_user_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `expire_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_user_tokens`
--

INSERT INTO `yupe_user_tokens` (`id`, `user_id`, `token`, `type`, `status`, `create_time`, `update_time`, `ip`, `expire_time`) VALUES
(5, 1, 'uGMC1dCLKCy92yK2_s5H5sv~yIwDXoOC', 4, 0, '2019-09-23 10:11:16', '2019-09-23 10:11:16', '127.0.0.1', '2019-09-30 10:11:16');

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_user_user`
--

CREATE TABLE `yupe_user_user` (
  `id` int(11) NOT NULL,
  `update_time` datetime NOT NULL,
  `first_name` varchar(250) DEFAULT NULL,
  `middle_name` varchar(250) DEFAULT NULL,
  `last_name` varchar(250) DEFAULT NULL,
  `nick_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `birth_date` date DEFAULT NULL,
  `site` varchar(250) NOT NULL DEFAULT '',
  `about` varchar(250) NOT NULL DEFAULT '',
  `location` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '2',
  `access_level` int(11) NOT NULL DEFAULT '0',
  `visit_time` datetime DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `avatar` varchar(150) DEFAULT NULL,
  `hash` varchar(255) NOT NULL DEFAULT '33c21262d56075440681026278e936580.89057900 1568539448',
  `email_confirm` tinyint(1) NOT NULL DEFAULT '0',
  `phone` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_user_user`
--

INSERT INTO `yupe_user_user` (`id`, `update_time`, `first_name`, `middle_name`, `last_name`, `nick_name`, `email`, `gender`, `birth_date`, `site`, `about`, `location`, `status`, `access_level`, `visit_time`, `create_time`, `avatar`, `hash`, `email_confirm`, `phone`) VALUES
(1, '2019-09-15 14:27:40', '', '', '', 'Exc1ut', 'umid19999@gmail.com', 0, NULL, '', '', '', 1, 1, '2019-09-23 10:11:16', '2019-09-15 14:27:40', NULL, '$2y$13$Sa8oWoxrOzErnmGnGR4xHenTkS9QOWeU2iS3gtNwzOJIqyrmaWsjq', 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_yupe_settings`
--

CREATE TABLE `yupe_yupe_settings` (
  `id` int(11) NOT NULL,
  `module_id` varchar(100) NOT NULL,
  `param_name` varchar(100) NOT NULL,
  `param_value` varchar(500) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_yupe_settings`
--

INSERT INTO `yupe_yupe_settings` (`id`, `module_id`, `param_name`, `param_value`, `create_time`, `update_time`, `user_id`, `type`) VALUES
(1, 'yupe', 'siteDescription', 'Юпи! - самый простой способ создать сайт на Yii!', '2019-09-15 14:28:01', '2019-09-15 14:28:01', 1, 1),
(2, 'yupe', 'siteName', 'Юпи!', '2019-09-15 14:28:01', '2019-09-15 14:28:01', 1, 1),
(3, 'yupe', 'siteKeyWords', 'Юпи!, yupe, цмс, yii', '2019-09-15 14:28:01', '2019-09-15 14:28:01', 1, 1),
(4, 'yupe', 'email', 'umid19999@gmail.com', '2019-09-15 14:28:01', '2019-09-15 14:28:01', 1, 1),
(5, 'yupe', 'theme', 'shop', '2019-09-15 14:28:01', '2019-09-15 15:28:54', 1, 1),
(6, 'yupe', 'backendTheme', '', '2019-09-15 14:28:01', '2019-09-15 14:28:01', 1, 1),
(7, 'yupe', 'defaultLanguage', 'ru', '2019-09-15 14:28:01', '2019-09-15 14:28:01', 1, 1),
(8, 'yupe', 'defaultBackendLanguage', 'ru', '2019-09-15 14:28:01', '2019-09-15 14:28:01', 1, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `yupe_blog_blog`
--
ALTER TABLE `yupe_blog_blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_blog_blog_slug_lang` (`slug`,`lang`),
  ADD KEY `ix_yupe_blog_blog_create_user` (`create_user_id`),
  ADD KEY `ix_yupe_blog_blog_update_user` (`update_user_id`),
  ADD KEY `ix_yupe_blog_blog_status` (`status`),
  ADD KEY `ix_yupe_blog_blog_type` (`type`),
  ADD KEY `ix_yupe_blog_blog_create_date` (`create_time`),
  ADD KEY `ix_yupe_blog_blog_update_date` (`update_time`),
  ADD KEY `ix_yupe_blog_blog_lang` (`lang`),
  ADD KEY `ix_yupe_blog_blog_slug` (`slug`),
  ADD KEY `ix_yupe_blog_blog_category_id` (`category_id`);

--
-- Индексы таблицы `yupe_blog_post`
--
ALTER TABLE `yupe_blog_post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_blog_post_lang_slug` (`slug`,`lang`),
  ADD KEY `ix_yupe_blog_post_blog_id` (`blog_id`),
  ADD KEY `ix_yupe_blog_post_create_user_id` (`create_user_id`),
  ADD KEY `ix_yupe_blog_post_update_user_id` (`update_user_id`),
  ADD KEY `ix_yupe_blog_post_status` (`status`),
  ADD KEY `ix_yupe_blog_post_access_type` (`access_type`),
  ADD KEY `ix_yupe_blog_post_comment_status` (`comment_status`),
  ADD KEY `ix_yupe_blog_post_lang` (`lang`),
  ADD KEY `ix_yupe_blog_post_slug` (`slug`),
  ADD KEY `ix_yupe_blog_post_publish_date` (`publish_time`),
  ADD KEY `ix_yupe_blog_post_category_id` (`category_id`);

--
-- Индексы таблицы `yupe_blog_post_to_tag`
--
ALTER TABLE `yupe_blog_post_to_tag`
  ADD PRIMARY KEY (`post_id`,`tag_id`),
  ADD KEY `ix_yupe_blog_post_to_tag_post_id` (`post_id`),
  ADD KEY `ix_yupe_blog_post_to_tag_tag_id` (`tag_id`);

--
-- Индексы таблицы `yupe_blog_tag`
--
ALTER TABLE `yupe_blog_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_blog_tag_tag_name` (`name`);

--
-- Индексы таблицы `yupe_blog_user_to_blog`
--
ALTER TABLE `yupe_blog_user_to_blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_blog_user_to_blog_blog_user_to_blog_u_b` (`user_id`,`blog_id`),
  ADD KEY `ix_yupe_blog_user_to_blog_blog_user_to_blog_user_id` (`user_id`),
  ADD KEY `ix_yupe_blog_user_to_blog_blog_user_to_blog_id` (`blog_id`),
  ADD KEY `ix_yupe_blog_user_to_blog_blog_user_to_blog_status` (`status`),
  ADD KEY `ix_yupe_blog_user_to_blog_blog_user_to_blog_role` (`role`);

--
-- Индексы таблицы `yupe_category_category`
--
ALTER TABLE `yupe_category_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_category_category_alias_lang` (`slug`,`lang`),
  ADD KEY `ix_yupe_category_category_parent_id` (`parent_id`),
  ADD KEY `ix_yupe_category_category_status` (`status`);

--
-- Индексы таблицы `yupe_comment_comment`
--
ALTER TABLE `yupe_comment_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_comment_comment_status` (`status`),
  ADD KEY `ix_yupe_comment_comment_model_model_id` (`model`,`model_id`),
  ADD KEY `ix_yupe_comment_comment_model` (`model`),
  ADD KEY `ix_yupe_comment_comment_model_id` (`model_id`),
  ADD KEY `ix_yupe_comment_comment_user_id` (`user_id`),
  ADD KEY `ix_yupe_comment_comment_parent_id` (`parent_id`),
  ADD KEY `ix_yupe_comment_comment_level` (`level`),
  ADD KEY `ix_yupe_comment_comment_root` (`root`),
  ADD KEY `ix_yupe_comment_comment_lft` (`lft`),
  ADD KEY `ix_yupe_comment_comment_rgt` (`rgt`);

--
-- Индексы таблицы `yupe_contentblock_content_block`
--
ALTER TABLE `yupe_contentblock_content_block`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_contentblock_content_block_code` (`code`),
  ADD KEY `ix_yupe_contentblock_content_block_type` (`type`),
  ADD KEY `ix_yupe_contentblock_content_block_status` (`status`);

--
-- Индексы таблицы `yupe_feedback_feedback`
--
ALTER TABLE `yupe_feedback_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_feedback_feedback_category` (`category_id`),
  ADD KEY `ix_yupe_feedback_feedback_type` (`type`),
  ADD KEY `ix_yupe_feedback_feedback_status` (`status`),
  ADD KEY `ix_yupe_feedback_feedback_isfaq` (`is_faq`),
  ADD KEY `ix_yupe_feedback_feedback_answer_user` (`answer_user`);

--
-- Индексы таблицы `yupe_gallery_gallery`
--
ALTER TABLE `yupe_gallery_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_gallery_gallery_status` (`status`),
  ADD KEY `ix_yupe_gallery_gallery_owner` (`owner`),
  ADD KEY `fk_yupe_gallery_gallery_gallery_preview_to_image` (`preview_id`),
  ADD KEY `fk_yupe_gallery_gallery_gallery_to_category` (`category_id`),
  ADD KEY `ix_yupe_gallery_gallery_sort` (`sort`);

--
-- Индексы таблицы `yupe_gallery_image_to_gallery`
--
ALTER TABLE `yupe_gallery_image_to_gallery`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_gallery_image_to_gallery_gallery_to_image` (`image_id`,`gallery_id`),
  ADD KEY `ix_yupe_gallery_image_to_gallery_gallery_to_image_image` (`image_id`),
  ADD KEY `ix_yupe_gallery_image_to_gallery_gallery_to_image_gallery` (`gallery_id`);

--
-- Индексы таблицы `yupe_image_image`
--
ALTER TABLE `yupe_image_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_image_image_status` (`status`),
  ADD KEY `ix_yupe_image_image_user` (`user_id`),
  ADD KEY `ix_yupe_image_image_type` (`type`),
  ADD KEY `ix_yupe_image_image_category_id` (`category_id`),
  ADD KEY `fk_yupe_image_image_parent_id` (`parent_id`);

--
-- Индексы таблицы `yupe_mail_mail_event`
--
ALTER TABLE `yupe_mail_mail_event`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_mail_mail_event_code` (`code`);

--
-- Индексы таблицы `yupe_mail_mail_template`
--
ALTER TABLE `yupe_mail_mail_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_mail_mail_template_code` (`code`),
  ADD KEY `ix_yupe_mail_mail_template_status` (`status`),
  ADD KEY `ix_yupe_mail_mail_template_event_id` (`event_id`);

--
-- Индексы таблицы `yupe_menu_menu`
--
ALTER TABLE `yupe_menu_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_menu_menu_code` (`code`),
  ADD KEY `ix_yupe_menu_menu_status` (`status`);

--
-- Индексы таблицы `yupe_menu_menu_item`
--
ALTER TABLE `yupe_menu_menu_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_menu_menu_item_menu_id` (`menu_id`),
  ADD KEY `ix_yupe_menu_menu_item_sort` (`sort`),
  ADD KEY `ix_yupe_menu_menu_item_status` (`status`);

--
-- Индексы таблицы `yupe_migrations`
--
ALTER TABLE `yupe_migrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_migrations_module` (`module`);

--
-- Индексы таблицы `yupe_news_news`
--
ALTER TABLE `yupe_news_news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_news_news_alias_lang` (`slug`,`lang`),
  ADD KEY `ix_yupe_news_news_status` (`status`),
  ADD KEY `ix_yupe_news_news_user_id` (`user_id`),
  ADD KEY `ix_yupe_news_news_category_id` (`category_id`),
  ADD KEY `ix_yupe_news_news_date` (`date`);

--
-- Индексы таблицы `yupe_notify_settings`
--
ALTER TABLE `yupe_notify_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_notify_settings_user_id` (`user_id`);

--
-- Индексы таблицы `yupe_page_page`
--
ALTER TABLE `yupe_page_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_page_page_slug_lang` (`slug`,`lang`),
  ADD KEY `ix_yupe_page_page_status` (`status`),
  ADD KEY `ix_yupe_page_page_is_protected` (`is_protected`),
  ADD KEY `ix_yupe_page_page_user_id` (`user_id`),
  ADD KEY `ix_yupe_page_page_change_user_id` (`change_user_id`),
  ADD KEY `ix_yupe_page_page_menu_order` (`order`),
  ADD KEY `ix_yupe_page_page_category_id` (`category_id`);

--
-- Индексы таблицы `yupe_store_attribute`
--
ALTER TABLE `yupe_store_attribute`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_store_attribute_name_group` (`name`,`group_id`),
  ADD KEY `ix_yupe_store_attribute_title` (`title`),
  ADD KEY `fk_yupe_store_attribute_group` (`group_id`);

--
-- Индексы таблицы `yupe_store_attribute_group`
--
ALTER TABLE `yupe_store_attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `yupe_store_attribute_option`
--
ALTER TABLE `yupe_store_attribute_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_store_attribute_option_attribute_id` (`attribute_id`),
  ADD KEY `ix_yupe_store_attribute_option_position` (`position`);

--
-- Индексы таблицы `yupe_store_category`
--
ALTER TABLE `yupe_store_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_store_category_alias` (`slug`),
  ADD KEY `ix_yupe_store_category_parent_id` (`parent_id`),
  ADD KEY `ix_yupe_store_category_status` (`status`),
  ADD KEY `yupe_store_category_external_id_ix` (`external_id`);

--
-- Индексы таблицы `yupe_store_coupon`
--
ALTER TABLE `yupe_store_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `yupe_store_delivery`
--
ALTER TABLE `yupe_store_delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_yupe_store_delivery_position` (`position`);

--
-- Индексы таблицы `yupe_store_delivery_payment`
--
ALTER TABLE `yupe_store_delivery_payment`
  ADD PRIMARY KEY (`delivery_id`,`payment_id`),
  ADD KEY `fk_yupe_store_delivery_payment_payment` (`payment_id`);

--
-- Индексы таблицы `yupe_store_order`
--
ALTER TABLE `yupe_store_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `udx_yupe_store_order_url` (`url`),
  ADD KEY `idx_yupe_store_order_user_id` (`user_id`),
  ADD KEY `idx_yupe_store_order_date` (`date`),
  ADD KEY `idx_yupe_store_order_status` (`status_id`),
  ADD KEY `idx_yupe_store_order_paid` (`paid`),
  ADD KEY `fk_yupe_store_order_delivery` (`delivery_id`),
  ADD KEY `fk_yupe_store_order_payment` (`payment_method_id`),
  ADD KEY `fk_yupe_store_order_manager` (`manager_id`);

--
-- Индексы таблицы `yupe_store_order_coupon`
--
ALTER TABLE `yupe_store_order_coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_yupe_store_order_coupon_order` (`order_id`),
  ADD KEY `fk_yupe_store_order_coupon_coupon` (`coupon_id`);

--
-- Индексы таблицы `yupe_store_order_product`
--
ALTER TABLE `yupe_store_order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_yupe_store_order_product_order_id` (`order_id`),
  ADD KEY `idx_yupe_store_order_product_product_id` (`product_id`);

--
-- Индексы таблицы `yupe_store_order_status`
--
ALTER TABLE `yupe_store_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `yupe_store_payment`
--
ALTER TABLE `yupe_store_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_yupe_store_payment_position` (`position`);

--
-- Индексы таблицы `yupe_store_producer`
--
ALTER TABLE `yupe_store_producer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_store_producer_slug` (`slug`),
  ADD KEY `ix_yupe_store_producer_sort` (`sort`);

--
-- Индексы таблицы `yupe_store_product`
--
ALTER TABLE `yupe_store_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_store_product_alias` (`slug`),
  ADD KEY `ix_yupe_store_product_status` (`status`),
  ADD KEY `ix_yupe_store_product_type_id` (`type_id`),
  ADD KEY `ix_yupe_store_product_producer_id` (`producer_id`),
  ADD KEY `ix_yupe_store_product_price` (`price`),
  ADD KEY `ix_yupe_store_product_discount_price` (`discount_price`),
  ADD KEY `ix_yupe_store_product_create_time` (`create_time`),
  ADD KEY `ix_yupe_store_product_update_time` (`update_time`),
  ADD KEY `fk_yupe_store_product_category` (`category_id`),
  ADD KEY `yupe_store_product_external_id_ix` (`external_id`),
  ADD KEY `ix_yupe_store_product_sku` (`sku`),
  ADD KEY `ix_yupe_store_product_name` (`name`),
  ADD KEY `ix_yupe_store_product_position` (`position`);

--
-- Индексы таблицы `yupe_store_product_attribute_value`
--
ALTER TABLE `yupe_store_product_attribute_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `yupe_fk_product_attribute_product` (`product_id`),
  ADD KEY `yupe_fk_product_attribute_attribute` (`attribute_id`),
  ADD KEY `yupe_fk_product_attribute_option` (`option_value`),
  ADD KEY `yupe_ix_product_attribute_number_value` (`number_value`),
  ADD KEY `yupe_ix_product_attribute_string_value` (`string_value`);

--
-- Индексы таблицы `yupe_store_product_category`
--
ALTER TABLE `yupe_store_product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_store_product_category_product_id` (`product_id`),
  ADD KEY `ix_yupe_store_product_category_category_id` (`category_id`);

--
-- Индексы таблицы `yupe_store_product_image`
--
ALTER TABLE `yupe_store_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_yupe_store_product_image_product` (`product_id`),
  ADD KEY `fk_yupe_store_product_image_group` (`group_id`);

--
-- Индексы таблицы `yupe_store_product_image_group`
--
ALTER TABLE `yupe_store_product_image_group`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `yupe_store_product_link`
--
ALTER TABLE `yupe_store_product_link`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_store_product_link_product` (`product_id`,`linked_product_id`),
  ADD KEY `fk_yupe_store_product_link_linked_product` (`linked_product_id`),
  ADD KEY `fk_yupe_store_product_link_type` (`type_id`);

--
-- Индексы таблицы `yupe_store_product_link_type`
--
ALTER TABLE `yupe_store_product_link_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_store_product_link_type_code` (`code`),
  ADD UNIQUE KEY `ux_yupe_store_product_link_type_title` (`title`);

--
-- Индексы таблицы `yupe_store_product_variant`
--
ALTER TABLE `yupe_store_product_variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_yupe_store_product_variant_product` (`product_id`),
  ADD KEY `idx_yupe_store_product_variant_attribute` (`attribute_id`),
  ADD KEY `idx_yupe_store_product_variant_value` (`attribute_value`);

--
-- Индексы таблицы `yupe_store_type`
--
ALTER TABLE `yupe_store_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_store_type_name` (`name`);

--
-- Индексы таблицы `yupe_store_type_attribute`
--
ALTER TABLE `yupe_store_type_attribute`
  ADD PRIMARY KEY (`type_id`,`attribute_id`),
  ADD KEY `fk_yupe_store_type_attribute_attribute` (`attribute_id`);

--
-- Индексы таблицы `yupe_user_tokens`
--
ALTER TABLE `yupe_user_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_user_tokens_user_id` (`user_id`);

--
-- Индексы таблицы `yupe_user_user`
--
ALTER TABLE `yupe_user_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_user_user_nick_name` (`nick_name`),
  ADD UNIQUE KEY `ux_yupe_user_user_email` (`email`),
  ADD KEY `ix_yupe_user_user_status` (`status`);

--
-- Индексы таблицы `yupe_yupe_settings`
--
ALTER TABLE `yupe_yupe_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_yupe_settings_module_id_param_name_user_id` (`module_id`,`param_name`,`user_id`),
  ADD KEY `ix_yupe_yupe_settings_module_id` (`module_id`),
  ADD KEY `ix_yupe_yupe_settings_param_name` (`param_name`),
  ADD KEY `fk_yupe_yupe_settings_user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `yupe_blog_blog`
--
ALTER TABLE `yupe_blog_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_blog_post`
--
ALTER TABLE `yupe_blog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_blog_tag`
--
ALTER TABLE `yupe_blog_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_blog_user_to_blog`
--
ALTER TABLE `yupe_blog_user_to_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_category_category`
--
ALTER TABLE `yupe_category_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `yupe_comment_comment`
--
ALTER TABLE `yupe_comment_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_contentblock_content_block`
--
ALTER TABLE `yupe_contentblock_content_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `yupe_feedback_feedback`
--
ALTER TABLE `yupe_feedback_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_gallery_gallery`
--
ALTER TABLE `yupe_gallery_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_gallery_image_to_gallery`
--
ALTER TABLE `yupe_gallery_image_to_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_image_image`
--
ALTER TABLE `yupe_image_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `yupe_mail_mail_event`
--
ALTER TABLE `yupe_mail_mail_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_mail_mail_template`
--
ALTER TABLE `yupe_mail_mail_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_menu_menu`
--
ALTER TABLE `yupe_menu_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `yupe_menu_menu_item`
--
ALTER TABLE `yupe_menu_menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `yupe_migrations`
--
ALTER TABLE `yupe_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT для таблицы `yupe_news_news`
--
ALTER TABLE `yupe_news_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `yupe_notify_settings`
--
ALTER TABLE `yupe_notify_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_page_page`
--
ALTER TABLE `yupe_page_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `yupe_store_attribute`
--
ALTER TABLE `yupe_store_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_store_attribute_group`
--
ALTER TABLE `yupe_store_attribute_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_store_attribute_option`
--
ALTER TABLE `yupe_store_attribute_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_store_category`
--
ALTER TABLE `yupe_store_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `yupe_store_coupon`
--
ALTER TABLE `yupe_store_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_store_delivery`
--
ALTER TABLE `yupe_store_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_store_order`
--
ALTER TABLE `yupe_store_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_store_order_coupon`
--
ALTER TABLE `yupe_store_order_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_store_order_product`
--
ALTER TABLE `yupe_store_order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_store_order_status`
--
ALTER TABLE `yupe_store_order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `yupe_store_payment`
--
ALTER TABLE `yupe_store_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_store_producer`
--
ALTER TABLE `yupe_store_producer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_store_product`
--
ALTER TABLE `yupe_store_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `yupe_store_product_attribute_value`
--
ALTER TABLE `yupe_store_product_attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_store_product_category`
--
ALTER TABLE `yupe_store_product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_store_product_image`
--
ALTER TABLE `yupe_store_product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `yupe_store_product_image_group`
--
ALTER TABLE `yupe_store_product_image_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_store_product_link`
--
ALTER TABLE `yupe_store_product_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_store_product_link_type`
--
ALTER TABLE `yupe_store_product_link_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `yupe_store_product_variant`
--
ALTER TABLE `yupe_store_product_variant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_store_type`
--
ALTER TABLE `yupe_store_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `yupe_user_tokens`
--
ALTER TABLE `yupe_user_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `yupe_user_user`
--
ALTER TABLE `yupe_user_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `yupe_yupe_settings`
--
ALTER TABLE `yupe_yupe_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `yupe_blog_blog`
--
ALTER TABLE `yupe_blog_blog`
  ADD CONSTRAINT `fk_yupe_blog_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_blog_blog_create_user` FOREIGN KEY (`create_user_id`) REFERENCES `yupe_user_user` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_blog_blog_update_user` FOREIGN KEY (`update_user_id`) REFERENCES `yupe_user_user` (`id`) ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_blog_post`
--
ALTER TABLE `yupe_blog_post`
  ADD CONSTRAINT `fk_yupe_blog_post_blog` FOREIGN KEY (`blog_id`) REFERENCES `yupe_blog_blog` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_blog_post_category_id` FOREIGN KEY (`category_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_blog_post_create_user` FOREIGN KEY (`create_user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_blog_post_update_user` FOREIGN KEY (`update_user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_blog_post_to_tag`
--
ALTER TABLE `yupe_blog_post_to_tag`
  ADD CONSTRAINT `fk_yupe_blog_post_to_tag_post_id` FOREIGN KEY (`post_id`) REFERENCES `yupe_blog_post` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_blog_post_to_tag_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `yupe_blog_tag` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_blog_user_to_blog`
--
ALTER TABLE `yupe_blog_user_to_blog`
  ADD CONSTRAINT `fk_yupe_blog_user_to_blog_blog_user_to_blog_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `yupe_blog_blog` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_blog_user_to_blog_blog_user_to_blog_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_category_category`
--
ALTER TABLE `yupe_category_category`
  ADD CONSTRAINT `fk_yupe_category_category_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_comment_comment`
--
ALTER TABLE `yupe_comment_comment`
  ADD CONSTRAINT `fk_yupe_comment_comment_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `yupe_comment_comment` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_comment_comment_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_feedback_feedback`
--
ALTER TABLE `yupe_feedback_feedback`
  ADD CONSTRAINT `fk_yupe_feedback_feedback_answer_user` FOREIGN KEY (`answer_user`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_feedback_feedback_category` FOREIGN KEY (`category_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_gallery_gallery`
--
ALTER TABLE `yupe_gallery_gallery`
  ADD CONSTRAINT `fk_yupe_gallery_gallery_gallery_preview_to_image` FOREIGN KEY (`preview_id`) REFERENCES `yupe_image_image` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_gallery_gallery_gallery_to_category` FOREIGN KEY (`category_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_gallery_gallery_owner` FOREIGN KEY (`owner`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_gallery_image_to_gallery`
--
ALTER TABLE `yupe_gallery_image_to_gallery`
  ADD CONSTRAINT `fk_yupe_gallery_image_to_gallery_gallery_to_image_gallery` FOREIGN KEY (`gallery_id`) REFERENCES `yupe_gallery_gallery` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_gallery_image_to_gallery_gallery_to_image_image` FOREIGN KEY (`image_id`) REFERENCES `yupe_image_image` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_image_image`
--
ALTER TABLE `yupe_image_image`
  ADD CONSTRAINT `fk_yupe_image_image_category_id` FOREIGN KEY (`category_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_image_image_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `yupe_image_image` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_image_image_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_mail_mail_template`
--
ALTER TABLE `yupe_mail_mail_template`
  ADD CONSTRAINT `fk_yupe_mail_mail_template_event_id` FOREIGN KEY (`event_id`) REFERENCES `yupe_mail_mail_event` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_menu_menu_item`
--
ALTER TABLE `yupe_menu_menu_item`
  ADD CONSTRAINT `fk_yupe_menu_menu_item_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `yupe_menu_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_news_news`
--
ALTER TABLE `yupe_news_news`
  ADD CONSTRAINT `fk_yupe_news_news_category_id` FOREIGN KEY (`category_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_news_news_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_notify_settings`
--
ALTER TABLE `yupe_notify_settings`
  ADD CONSTRAINT `fk_yupe_notify_settings_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_page_page`
--
ALTER TABLE `yupe_page_page`
  ADD CONSTRAINT `fk_yupe_page_page_category_id` FOREIGN KEY (`category_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_page_page_change_user_id` FOREIGN KEY (`change_user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_page_page_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_store_attribute`
--
ALTER TABLE `yupe_store_attribute`
  ADD CONSTRAINT `fk_yupe_store_attribute_group` FOREIGN KEY (`group_id`) REFERENCES `yupe_store_attribute_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_attribute_option`
--
ALTER TABLE `yupe_store_attribute_option`
  ADD CONSTRAINT `fk_yupe_store_attribute_option_attribute` FOREIGN KEY (`attribute_id`) REFERENCES `yupe_store_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_category`
--
ALTER TABLE `yupe_store_category`
  ADD CONSTRAINT `fk_yupe_store_category_parent` FOREIGN KEY (`parent_id`) REFERENCES `yupe_store_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_delivery_payment`
--
ALTER TABLE `yupe_store_delivery_payment`
  ADD CONSTRAINT `fk_yupe_store_delivery_payment_delivery` FOREIGN KEY (`delivery_id`) REFERENCES `yupe_store_delivery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_delivery_payment_payment` FOREIGN KEY (`payment_id`) REFERENCES `yupe_store_payment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_order`
--
ALTER TABLE `yupe_store_order`
  ADD CONSTRAINT `fk_yupe_store_order_delivery` FOREIGN KEY (`delivery_id`) REFERENCES `yupe_store_delivery` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_order_manager` FOREIGN KEY (`manager_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_order_payment` FOREIGN KEY (`payment_method_id`) REFERENCES `yupe_store_payment` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_order_status` FOREIGN KEY (`status_id`) REFERENCES `yupe_store_order_status` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_order_user` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_order_coupon`
--
ALTER TABLE `yupe_store_order_coupon`
  ADD CONSTRAINT `fk_yupe_store_order_coupon_coupon` FOREIGN KEY (`coupon_id`) REFERENCES `yupe_store_coupon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_order_coupon_order` FOREIGN KEY (`order_id`) REFERENCES `yupe_store_order` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_order_product`
--
ALTER TABLE `yupe_store_order_product`
  ADD CONSTRAINT `fk_yupe_store_order_product_order` FOREIGN KEY (`order_id`) REFERENCES `yupe_store_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_order_product_product` FOREIGN KEY (`product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_product`
--
ALTER TABLE `yupe_store_product`
  ADD CONSTRAINT `fk_yupe_store_product_category` FOREIGN KEY (`category_id`) REFERENCES `yupe_store_category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_product_producer` FOREIGN KEY (`producer_id`) REFERENCES `yupe_store_producer` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_product_type` FOREIGN KEY (`type_id`) REFERENCES `yupe_store_type` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_product_attribute_value`
--
ALTER TABLE `yupe_store_product_attribute_value`
  ADD CONSTRAINT `yupe_fk_product_attribute_attribute` FOREIGN KEY (`attribute_id`) REFERENCES `yupe_store_attribute` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `yupe_fk_product_attribute_option` FOREIGN KEY (`option_value`) REFERENCES `yupe_store_attribute_option` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `yupe_fk_product_attribute_product` FOREIGN KEY (`product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_product_category`
--
ALTER TABLE `yupe_store_product_category`
  ADD CONSTRAINT `fk_yupe_store_product_category_category` FOREIGN KEY (`category_id`) REFERENCES `yupe_store_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_product_category_product` FOREIGN KEY (`product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_product_image`
--
ALTER TABLE `yupe_store_product_image`
  ADD CONSTRAINT `fk_yupe_store_product_image_group` FOREIGN KEY (`group_id`) REFERENCES `yupe_store_product_image_group` (`id`) ON DELETE NO ACTION ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_yupe_store_product_image_product` FOREIGN KEY (`product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_product_link`
--
ALTER TABLE `yupe_store_product_link`
  ADD CONSTRAINT `fk_yupe_store_product_link_linked_product` FOREIGN KEY (`linked_product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_product_link_product` FOREIGN KEY (`product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_product_link_type` FOREIGN KEY (`type_id`) REFERENCES `yupe_store_product_link_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_product_variant`
--
ALTER TABLE `yupe_store_product_variant`
  ADD CONSTRAINT `fk_yupe_store_product_variant_attribute` FOREIGN KEY (`attribute_id`) REFERENCES `yupe_store_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_product_variant_product` FOREIGN KEY (`product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_type_attribute`
--
ALTER TABLE `yupe_store_type_attribute`
  ADD CONSTRAINT `fk_yupe_store_type_attribute_attribute` FOREIGN KEY (`attribute_id`) REFERENCES `yupe_store_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_type_attribute_type` FOREIGN KEY (`type_id`) REFERENCES `yupe_store_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_user_tokens`
--
ALTER TABLE `yupe_user_tokens`
  ADD CONSTRAINT `fk_yupe_user_tokens_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_yupe_settings`
--
ALTER TABLE `yupe_yupe_settings`
  ADD CONSTRAINT `fk_yupe_yupe_settings_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
