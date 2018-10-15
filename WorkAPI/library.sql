-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 14 2018 г., 23:02
-- Версия сервера: 5.6.38
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
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Licenses`
--

CREATE TABLE `Licenses` (
  `Id` int(11) NOT NULL,
  `KeyLicense` text,
  `LifeTime` datetime NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Licenses`
--

INSERT INTO `Licenses` (`Id`, `KeyLicense`, `LifeTime`, `UserId`) VALUES
(0, '1AFA64D42C3792049A60CA3791451212', '2018-10-12 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `Partners`
--

CREATE TABLE `Partners` (
  `Id` int(11) NOT NULL,
  `Email` text,
  `Password` text,
  `ActingBasis` text,
  `ActualAddress` text,
  `BIK` text,
  `BankName` text,
  `CheckingAccount` text,
  `CorrespondentAccount` text,
  `DateOfIssueCertificate` text,
  `DateOfIssuePasport` datetime NOT NULL,
  `Fio` text,
  `INN` text,
  `IssuedByPasport` text,
  `KPP` text,
  `LegalAddress` text,
  `NameOrganization` text,
  `OGRN` text,
  `OGRNIP` text,
  `PhoneNumber` text,
  `Position` text,
  `SeriesAndNumberCertificate` text,
  `SeriesAndNumberPasport` text,
  `Success` bit(1) NOT NULL,
  `TypeClient` int(11) NOT NULL,
  `UnitCodePasport` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Partners`
--

INSERT INTO `Partners` (`Id`, `Email`, `Password`, `ActingBasis`, `ActualAddress`, `BIK`, `BankName`, `CheckingAccount`, `CorrespondentAccount`, `DateOfIssueCertificate`, `DateOfIssuePasport`, `Fio`, `INN`, `IssuedByPasport`, `KPP`, `LegalAddress`, `NameOrganization`, `OGRN`, `OGRNIP`, `PhoneNumber`, `Position`, `SeriesAndNumberCertificate`, `SeriesAndNumberPasport`, `Success`, `TypeClient`, `UnitCodePasport`) VALUES
(0, 'gseni@mail.ru', '39359ca2f69ef44c8329cde27e76696208e9c92a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `Prices`
--

CREATE TABLE `Prices` (
  `Id` int(11) NOT NULL,
  `NamePosition` text,
  `PricePosition` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `__EFMigrationsHistory`
--

CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `__EFMigrationsHistory`
--

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`) VALUES
('20181009180538_TestTest', '2.0.3-rtm-10026'),
('20181011181135_test', '2.0.3-rtm-10026'),
('20181011183000_test1', '2.0.3-rtm-10026'),
('20181011204619_mysql', '2.0.3-rtm-10026');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Licenses`
--
ALTER TABLE `Licenses`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `Partners`
--
ALTER TABLE `Partners`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `Prices`
--
ALTER TABLE `Prices`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `__EFMigrationsHistory`
--
ALTER TABLE `__EFMigrationsHistory`
  ADD PRIMARY KEY (`MigrationId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
