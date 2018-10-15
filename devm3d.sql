-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u3
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Окт 15 2018 г., 18:36
-- Версия сервера: 5.5.60-0+deb8u1
-- Версия PHP: 5.6.38-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `devm3d`
--

-- --------------------------------------------------------

--
-- Структура таблицы `partner`
--

CREATE TABLE IF NOT EXISTS `partner` (
`id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(255) NOT NULL,
  `actingBasis` varchar(150) DEFAULT NULL,
  `bik` varchar(15) DEFAULT NULL,
  `bankName` varchar(150) DEFAULT NULL,
  `checkingAccount` varchar(20) DEFAULT NULL,
  `correspondentAccount` varchar(20) DEFAULT NULL,
  `dateOfIssueCertificate` date DEFAULT NULL,
  `dateOfIssuePassport` date DEFAULT NULL,
  `fio` varchar(150) DEFAULT NULL,
  `inn` varchar(15) DEFAULT NULL,
  `issueByPassport` varchar(150) DEFAULT NULL,
  `kpp` varchar(15) DEFAULT NULL,
  `legalAdress` varchar(150) DEFAULT NULL,
  `nameOrganization` varchar(150) DEFAULT NULL,
  `ogrn` varchar(50) DEFAULT NULL,
  `ogrnip` varchar(50) DEFAULT NULL,
  `phoneNumber` varchar(22) DEFAULT NULL,
  `position` varchar(150) DEFAULT NULL,
  `seriesAndNumberCertificate` varchar(50) DEFAULT NULL,
  `seriesAndNumberPassword` varchar(50) DEFAULT NULL,
  `success` tinyint(1) DEFAULT NULL,
  `typeClient` int(2) DEFAULT NULL,
  `unitCodePassport` varchar(10) DEFAULT NULL,
  `actualAddress` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `partner`
--
ALTER TABLE `partner`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `partner`
--
ALTER TABLE `partner`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
