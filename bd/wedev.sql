-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 03, 2021 at 01:55 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedev`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_12_02_024821_create_rotas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rotas`
--

CREATE TABLE `rotas` (
  `bloco` int(11) NOT NULL,
  `batch` timestamp NOT NULL DEFAULT current_timestamp(),
  `entrada` varchar(300) NOT NULL,
  `chave` varchar(8) NOT NULL,
  `hash` varchar(300) NOT NULL,
  `tentativas` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rotas`
--

INSERT INTO `rotas` (`bloco`, `batch`, `entrada`, `chave`, `hash`, `tentativas`, `updated_at`, `created_at`) VALUES
(1, '2021-12-02 15:23:08', 'vinicius', 'fXerQV8N', '000004ad12ec59d22487d0d81b0005fdc090', 69, '2021-12-03 03:06:43', '2021-12-02 18:23:08'),
(2, '2021-12-02 18:08:01', 'vinas', 'NHh32O4t', '0000b50d04c3e74b2d6e2adf5292cad7460d', 8, '2021-12-02 21:26:36', '2021-12-02 21:08:01'),
(3, '2021-12-02 23:29:26', '0000d9367d1a401784fad6e1619478d55034', 'xkdT0HuD', '0000f75db4b2dea7b3593d8fce18e719473c', 1, '2021-12-03 02:29:26', '2021-12-03 02:29:26'),
(4, '2021-12-02 23:29:26', '0000f75db4b2dea7b3593d8fce18e719473c', 'tUNsVYeg', '0000fa0122389ac107de0bfc72bb7d74ea3c', 1, '2021-12-03 02:29:26', '2021-12-03 02:29:26'),
(5, '2021-12-02 23:29:27', '0000fa0122389ac107de0bfc72bb7d74ea3c', 'krSnXz2Y', '0000c6fee2b0200632d8144f226d6b34860d', 1, '2021-12-03 02:29:27', '2021-12-03 02:29:27'),
(6, '2021-12-02 23:29:27', '0000c6fee2b0200632d8144f226d6b34860d', 'EjlvZCNl', '00009c279fa66c5480bb1ffcb42f4296a65a', 1, '2021-12-03 02:29:27', '2021-12-03 02:29:27'),
(7, '2021-12-02 23:29:27', '00009c279fa66c5480bb1ffcb42f4296a65a', 'Rxgx71py', '0000f83bf67649d7d3ac7c9b19f2c87d4b17', 1, '2021-12-03 02:29:27', '2021-12-03 02:29:27'),
(8, '2021-12-02 23:29:27', '0000f83bf67649d7d3ac7c9b19f2c87d4b17', '9ku23HGc', '000085f5a77d722a8fbdf8f498680460f794', 1, '2021-12-03 02:29:27', '2021-12-03 02:29:27'),
(9, '2021-12-02 23:29:27', '000085f5a77d722a8fbdf8f498680460f794', 'ymC4dVL0', '00002b355e79e1568cd757adca6a6718a8d3', 1, '2021-12-03 02:29:27', '2021-12-03 02:29:27'),
(10, '2021-12-02 23:29:27', '00002b355e79e1568cd757adca6a6718a8d3', 'WHoWHQsJ', '000019db7c25b7c15d66ed3621588d38f80e', 1, '2021-12-03 02:29:27', '2021-12-03 02:29:27'),
(11, '2021-12-02 23:29:27', '000019db7c25b7c15d66ed3621588d38f80e', 'Ra7aGpgG', '0000705a0fcb92a9dd0dd9727afbfb77b342', 1, '2021-12-03 02:29:27', '2021-12-03 02:29:27'),
(12, '2021-12-02 23:30:06', '000029cc1adb178d5cc071f1da2f3867ec80', 'vgRbB2Hz', '0000fa9b6b10dce161e62bae71418b8b4169', 1, '2021-12-03 02:30:06', '2021-12-03 02:30:06'),
(13, '2021-12-02 23:30:06', '0000fa9b6b10dce161e62bae71418b8b4169', 'uOJmLAl5', '00005d31ddeb43aa677d2ede39cb55487fd7', 1, '2021-12-03 02:30:06', '2021-12-03 02:30:06'),
(14, '2021-12-02 23:30:06', '00005d31ddeb43aa677d2ede39cb55487fd7', 'bhiE2hxC', '0000865fc31e2aa2ffeec5339b5be051e88c', 1, '2021-12-03 02:30:06', '2021-12-03 02:30:06'),
(15, '2021-12-02 23:30:07', '0000865fc31e2aa2ffeec5339b5be051e88c', 'NGtvYYfI', '0000f6c5021e7e8d749f5cc7992cde9cfc0d', 1, '2021-12-03 02:30:07', '2021-12-03 02:30:07'),
(16, '2021-12-02 23:30:07', '0000f6c5021e7e8d749f5cc7992cde9cfc0d', '1hOBbvKN', '0000579e127adb526b3b68c41a8f57fe5b82', 1, '2021-12-03 02:30:07', '2021-12-03 02:30:07'),
(17, '2021-12-02 23:30:07', '0000579e127adb526b3b68c41a8f57fe5b82', 'MolIXGOL', '000088c2f82807ae209378d4852cdb720c32', 1, '2021-12-03 02:30:07', '2021-12-03 02:30:07'),
(18, '2021-12-02 23:30:07', '000088c2f82807ae209378d4852cdb720c32', 'pYC9QPa9', '000065013be8e70b3beab46b4375f1b6474e', 1, '2021-12-03 02:30:07', '2021-12-03 02:30:07'),
(19, '2021-12-02 23:30:07', '000065013be8e70b3beab46b4375f1b6474e', 'Wgbr5w5Z', '0000226249957fa656192bc7ade64591fbe9', 1, '2021-12-03 02:30:07', '2021-12-03 02:30:07'),
(20, '2021-12-02 23:30:07', '0000226249957fa656192bc7ade64591fbe9', 'SuMH69sQ', '0000c5b8125620b1d62fd71a9bc5daa3992e', 1, '2021-12-03 02:30:07', '2021-12-03 02:30:07'),
(21, '2021-12-02 23:30:07', '0000c5b8125620b1d62fd71a9bc5daa3992e', 'bXlm3ksy', '00002d35e4bef195e2a4b8f0c89f1fe0ee16', 1, '2021-12-03 02:30:07', '2021-12-03 02:30:07'),
(22, '2021-12-02 23:30:07', '00002d35e4bef195e2a4b8f0c89f1fe0ee16', '6hTys0rr', '0000fbf67d0e27b90c9d181debd3b02bc0f1', 1, '2021-12-03 02:30:07', '2021-12-03 02:30:07'),
(23, '2021-12-02 23:30:07', '0000fbf67d0e27b90c9d181debd3b02bc0f1', 'uQrafpST', '00008c5ca8bd227eea0c38aa312860f5aafc', 1, '2021-12-03 02:30:07', '2021-12-03 02:30:07'),
(24, '2021-12-02 23:30:07', '00008c5ca8bd227eea0c38aa312860f5aafc', 'b9idj61Z', '0000670a74b958d2b1a6ed1119d6116071b0', 1, '2021-12-03 02:30:07', '2021-12-03 02:30:07'),
(25, '2021-12-02 23:30:07', '0000670a74b958d2b1a6ed1119d6116071b0', 'fGzzTJ1F', '000024ee51fc5b91b7de2898e6fccfbca54c', 1, '2021-12-03 02:30:07', '2021-12-03 02:30:07'),
(26, '2021-12-02 23:30:08', '000024ee51fc5b91b7de2898e6fccfbca54c', '3NUVvu0S', '0000513e0f77b9fedb285765b62d87717657', 1, '2021-12-03 02:30:08', '2021-12-03 02:30:08'),
(27, '2021-12-02 23:30:08', '0000513e0f77b9fedb285765b62d87717657', 'i2t9GIIo', '00005edd7d3ff4c3dbed2d9bd8327f80e788', 1, '2021-12-03 02:30:08', '2021-12-03 02:30:08'),
(28, '2021-12-02 23:30:08', '00005edd7d3ff4c3dbed2d9bd8327f80e788', 'dp3LW45W', '00003b37f6d6dd3f037763b9d201be678cf1', 1, '2021-12-03 02:30:08', '2021-12-03 02:30:08'),
(29, '2021-12-02 23:30:08', '00003b37f6d6dd3f037763b9d201be678cf1', 'FYFlYrA7', '0000e9c209b8defaeedb7dbaa8fd51f643c9', 1, '2021-12-03 02:30:08', '2021-12-03 02:30:08'),
(30, '2021-12-02 23:30:08', '0000e9c209b8defaeedb7dbaa8fd51f643c9', '7ZD0Kbku', '0000df7c3dc7b67fe2c2471c037ca3edf0fe', 1, '2021-12-03 02:30:08', '2021-12-03 02:30:08'),
(31, '2021-12-02 23:30:08', '0000df7c3dc7b67fe2c2471c037ca3edf0fe', 'HZgeWD9W', '000071a445a9e07c28b7c26b076fb8b13044', 1, '2021-12-03 02:30:08', '2021-12-03 02:30:08'),
(32, '2021-12-02 23:30:08', '000071a445a9e07c28b7c26b076fb8b13044', 'augW7Bkh', '000014606aafa6ca1926065b240cf42a1251', 1, '2021-12-03 02:30:08', '2021-12-03 02:30:08'),
(33, '2021-12-02 23:30:08', '000014606aafa6ca1926065b240cf42a1251', 'hLWJCPFO', '000056c476cea261fa87d079e97a8588a674', 1, '2021-12-03 02:30:08', '2021-12-03 02:30:08'),
(34, '2021-12-02 23:30:08', '000056c476cea261fa87d079e97a8588a674', 'qXUhnmn6', '00005e3c39dc3c963c802bfbaf6ebd1b24c3', 1, '2021-12-03 02:30:08', '2021-12-03 02:30:08'),
(35, '2021-12-02 23:30:09', '00005e3c39dc3c963c802bfbaf6ebd1b24c3', 'Wx4eMQUF', '0000a4589af5862df4713e0f230e7de4ff7c', 1, '2021-12-03 02:30:09', '2021-12-03 02:30:09'),
(36, '2021-12-02 23:30:09', '0000a4589af5862df4713e0f230e7de4ff7c', 'wtxHv2CG', '0000aad55901e692edd9ef307d544d7dbd51', 1, '2021-12-03 02:30:09', '2021-12-03 02:30:09'),
(37, '2021-12-02 23:30:09', '0000aad55901e692edd9ef307d544d7dbd51', 'xIfFsF5d', '00003699ed6007f0bebca41ca5aac5efd9b8', 1, '2021-12-03 02:30:09', '2021-12-03 02:30:09'),
(38, '2021-12-02 23:30:09', '00003699ed6007f0bebca41ca5aac5efd9b8', 'xxTtqcMg', '00009defe766718f4f00e5e835f092102402', 1, '2021-12-03 02:30:09', '2021-12-03 02:30:09'),
(39, '2021-12-02 23:30:09', '00009defe766718f4f00e5e835f092102402', '18aLRoFO', '000095af5765137dab6e903e487772b169da', 1, '2021-12-03 02:30:09', '2021-12-03 02:30:09'),
(40, '2021-12-02 23:30:09', '000095af5765137dab6e903e487772b169da', 'CehboU7e', '00008707b43b24488b06d31d094254c50279', 1, '2021-12-03 02:30:09', '2021-12-03 02:30:09'),
(41, '2021-12-02 23:30:09', '00008707b43b24488b06d31d094254c50279', 'AaB6Dv0S', '0000e92e9c19995e2619c395d5c5888427b0', 1, '2021-12-03 02:30:09', '2021-12-03 02:30:09'),
(42, '2021-12-02 23:30:09', '0000e92e9c19995e2619c395d5c5888427b0', 'AjoDPxWc', '0000ec5e5b1381546858142853c91b8470ca', 1, '2021-12-03 02:30:09', '2021-12-03 02:30:09'),
(43, '2021-12-02 23:30:09', '0000ec5e5b1381546858142853c91b8470ca', 'uYvrAITq', '0000fc3a54c7e597e09dcf01dfe9e9d30017', 1, '2021-12-03 02:30:09', '2021-12-03 02:30:09'),
(44, '2021-12-02 23:30:09', '0000fc3a54c7e597e09dcf01dfe9e9d30017', 'CWgI8X74', '0000e131c753d987d5f78bed4016a31fac7a', 1, '2021-12-03 02:30:09', '2021-12-03 02:30:09'),
(45, '2021-12-02 23:30:09', '0000e131c753d987d5f78bed4016a31fac7a', 'PwKzjqOQ', '0000eb2202f3595d3f95a07fd8b82f93fb08', 1, '2021-12-03 02:30:09', '2021-12-03 02:30:09'),
(46, '2021-12-02 23:30:10', '0000eb2202f3595d3f95a07fd8b82f93fb08', 'BZcz9CF2', '00007f7e7a0b7a4a7e698fec7b6b65296f03', 1, '2021-12-03 02:30:10', '2021-12-03 02:30:10'),
(47, '2021-12-02 23:30:10', '00007f7e7a0b7a4a7e698fec7b6b65296f03', 'bXqotao9', '00003ef3c38d8c5f79d8eb72976669bada09', 1, '2021-12-03 02:30:10', '2021-12-03 02:30:10'),
(48, '2021-12-02 23:30:10', '00003ef3c38d8c5f79d8eb72976669bada09', 'LtilfyMG', '0000956e154b6562c811fff0b373ffa7ad13', 1, '2021-12-03 02:30:10', '2021-12-03 02:30:10'),
(49, '2021-12-02 23:30:10', '0000956e154b6562c811fff0b373ffa7ad13', 'EEMbqS91', '00005f63886dfc8c9cee8e9e464b6b3c2331', 1, '2021-12-03 02:30:10', '2021-12-03 02:30:10'),
(50, '2021-12-02 23:30:10', '00005f63886dfc8c9cee8e9e464b6b3c2331', 'lsbybZBX', '0000eafde547d3d1fd2b0e74b0793dae9469', 1, '2021-12-03 02:30:10', '2021-12-03 02:30:10'),
(51, '2021-12-02 23:30:10', '0000eafde547d3d1fd2b0e74b0793dae9469', '6Fxlqy4i', '00005b16a6ba876c97625f8cca61acd7cf6d', 1, '2021-12-03 02:30:10', '2021-12-03 02:30:10'),
(52, '2021-12-02 23:30:10', '00005b16a6ba876c97625f8cca61acd7cf6d', 'lbJP52W8', '000087b7776633e4bd6e528688427095fe63', 1, '2021-12-03 02:30:10', '2021-12-03 02:30:10'),
(53, '2021-12-02 23:30:10', '000087b7776633e4bd6e528688427095fe63', 'BmNJX4mv', '000037e38325776a897ec4025d248e30a5bc', 1, '2021-12-03 02:30:10', '2021-12-03 02:30:10'),
(54, '2021-12-02 23:30:10', '000037e38325776a897ec4025d248e30a5bc', 'MA3U1SVJ', '00004bce10f875efe50886261c2c47bbe702', 1, '2021-12-03 02:30:10', '2021-12-03 02:30:10'),
(55, '2021-12-02 23:30:10', '00004bce10f875efe50886261c2c47bbe702', 'H4Gnhilx', '00002523a29fe70b9b82de46a829adac96ad', 1, '2021-12-03 02:30:10', '2021-12-03 02:30:10'),
(56, '2021-12-02 23:30:11', '00002523a29fe70b9b82de46a829adac96ad', 'HNjPE1xr', '000019efe5814b1ccf4218386dbf10b19778', 1, '2021-12-03 02:30:11', '2021-12-03 02:30:11'),
(57, '2021-12-02 23:30:11', '000019efe5814b1ccf4218386dbf10b19778', 'wzoWnesE', '0000bf3fdf5f000bdaea8bbf0d6ad4479d67', 1, '2021-12-03 02:30:11', '2021-12-03 02:30:11'),
(58, '2021-12-02 23:30:11', '0000bf3fdf5f000bdaea8bbf0d6ad4479d67', 'J8YizrKe', '00008037aaa54e0a32d21b3f401de56d8cef', 1, '2021-12-03 02:30:11', '2021-12-03 02:30:11'),
(59, '2021-12-02 23:34:24', '000006c19920a642ec02158a344a5fc7897f', 'qM0fh7JP', '00000b8947f67fee728d2581c875e55eb2bc', 1, '2021-12-03 02:34:24', '2021-12-03 02:34:24'),
(60, '2021-12-02 23:34:24', '00000b8947f67fee728d2581c875e55eb2bc', '7T7YEHfs', '00008b31e4831d500c67a4b0a14b55e56f0f', 1, '2021-12-03 02:34:24', '2021-12-03 02:34:24'),
(61, '2021-12-02 23:34:24', '00008b31e4831d500c67a4b0a14b55e56f0f', 'UweUdnft', '000030f70d806c7c7a2fdf0414c7a5f934fc', 1, '2021-12-03 02:34:24', '2021-12-03 02:34:24'),
(62, '2021-12-02 23:34:25', '000030f70d806c7c7a2fdf0414c7a5f934fc', 'XjEJnG0t', '00003b3350c2cf43d4362293bac8230e8070', 1, '2021-12-03 02:34:25', '2021-12-03 02:34:25'),
(63, '2021-12-02 23:34:25', '00003b3350c2cf43d4362293bac8230e8070', 'PSSvyFc2', '0000155280ec9592d487de9541d54433ccf1', 1, '2021-12-03 02:34:25', '2021-12-03 02:34:25'),
(64, '2021-12-02 23:34:25', '0000155280ec9592d487de9541d54433ccf1', 'ANtP7RSN', '00006b43ac12fdcc9e6e8372c3e4686ae2ad', 1, '2021-12-03 02:34:25', '2021-12-03 02:34:25'),
(65, '2021-12-02 23:34:25', '00006b43ac12fdcc9e6e8372c3e4686ae2ad', '63ogmMq9', '0000fd285a213d6b43f71d1693a5d917fe08', 1, '2021-12-03 02:34:25', '2021-12-03 02:34:25'),
(66, '2021-12-02 23:34:25', '0000fd285a213d6b43f71d1693a5d917fe08', 'EWDr62f8', '0000eba6f9e4352ef6c6c9d1fe624c2fd378', 1, '2021-12-03 02:34:25', '2021-12-03 02:34:25'),
(67, '2021-12-02 23:34:25', '0000eba6f9e4352ef6c6c9d1fe624c2fd378', 'OcqzijDZ', '0000cba1dacbbc36c06bb9e6fa2095d8c4f2', 1, '2021-12-03 02:34:25', '2021-12-03 02:34:25'),
(68, '2021-12-02 23:34:25', '0000cba1dacbbc36c06bb9e6fa2095d8c4f2', '0aPuGCVR', '0000f0ee855ab40945cdeb3a3ee5d1519ead', 1, '2021-12-03 02:34:25', '2021-12-03 02:34:25'),
(69, '2021-12-02 23:34:25', '0000f0ee855ab40945cdeb3a3ee5d1519ead', '7U6xCO3Y', '00003e80471516561023441eea146488a985', 1, '2021-12-03 02:34:25', '2021-12-03 02:34:25'),
(70, '2021-12-02 23:34:25', '00003e80471516561023441eea146488a985', 'nko0tMmc', '00009e63e75a62f6edbb3dbb7e59a35717fe', 1, '2021-12-03 02:34:25', '2021-12-03 02:34:25'),
(71, '2021-12-02 23:34:25', '00009e63e75a62f6edbb3dbb7e59a35717fe', 'xP0Qlb0N', '0000ab241665f78e03a7d8d7ecf62b5d92be', 1, '2021-12-03 02:34:25', '2021-12-03 02:34:25'),
(72, '2021-12-02 23:34:26', '0000ab241665f78e03a7d8d7ecf62b5d92be', 'wCfntuf4', '00006f114256bc50ea9375699c20767273f3', 1, '2021-12-03 02:34:26', '2021-12-03 02:34:26'),
(73, '2021-12-02 23:34:26', '00006f114256bc50ea9375699c20767273f3', 'kntlyMGc', '0000fe1b3825ca54580d163a95557ef7631d', 1, '2021-12-03 02:34:26', '2021-12-03 02:34:26'),
(74, '2021-12-02 23:34:26', '0000fe1b3825ca54580d163a95557ef7631d', 'G9Z9T9k4', '0000ed7356fc1c70782efedb0359dd932be2', 1, '2021-12-03 02:34:26', '2021-12-03 02:34:26'),
(75, '2021-12-02 23:34:26', '0000ed7356fc1c70782efedb0359dd932be2', 'OUbyLG2y', '000089845f49477ec4c9502a9c9f2363e9d1', 1, '2021-12-03 02:34:26', '2021-12-03 02:34:26'),
(76, '2021-12-02 23:34:26', '000089845f49477ec4c9502a9c9f2363e9d1', 'XtmbNuzm', '0000ef8233deef9c79203877b7f6c8bccc3f', 1, '2021-12-03 02:34:26', '2021-12-03 02:34:26'),
(77, '2021-12-02 23:34:26', '0000ef8233deef9c79203877b7f6c8bccc3f', 'MhnWXvXu', '0000cab8972785baa41d30b212414c516cec', 1, '2021-12-03 02:34:26', '2021-12-03 02:34:26'),
(78, '2021-12-02 23:34:26', '0000cab8972785baa41d30b212414c516cec', 'KqEDjUfp', '0000a973f683b76d9289d9ff1ae874a56d46', 1, '2021-12-03 02:34:26', '2021-12-03 02:34:26'),
(79, '2021-12-02 23:34:26', '0000a973f683b76d9289d9ff1ae874a56d46', 't19ALbMr', '00009e46f515c48b247e6192312edc106877', 1, '2021-12-03 02:34:26', '2021-12-03 02:34:26'),
(80, '2021-12-02 23:34:26', '00009e46f515c48b247e6192312edc106877', 'qXuXaN1W', '0000ac976cf64831fc881b0c2ed0e29b1116', 1, '2021-12-03 02:34:26', '2021-12-03 02:34:26'),
(81, '2021-12-02 23:34:26', '0000ac976cf64831fc881b0c2ed0e29b1116', 'ZlBrplDV', '00008cdc3875fcb15865424ab81d6364370b', 1, '2021-12-03 02:34:26', '2021-12-03 02:34:26'),
(82, '2021-12-02 23:34:26', '00008cdc3875fcb15865424ab81d6364370b', 'MGuA5Bfy', '000090b945b76b8c253720cde34de0e43ef9', 1, '2021-12-03 02:34:26', '2021-12-03 02:34:26'),
(83, '2021-12-02 23:34:27', '000090b945b76b8c253720cde34de0e43ef9', '1euPvGIJ', '00009b6177e8d7b4b5c07dbe4f669862b8ed', 1, '2021-12-03 02:34:27', '2021-12-03 02:34:27'),
(84, '2021-12-02 23:34:27', '00009b6177e8d7b4b5c07dbe4f669862b8ed', 'qVQYrSDi', '0000acaf4992e8b4e9c2eaefbcab5d8065b5', 1, '2021-12-03 02:34:27', '2021-12-03 02:34:27'),
(85, '2021-12-02 23:34:27', '0000acaf4992e8b4e9c2eaefbcab5d8065b5', '7lmysF2r', '000055a00285f33109c9244dd187478bf100', 1, '2021-12-03 02:34:27', '2021-12-03 02:34:27'),
(86, '2021-12-02 23:34:27', '000055a00285f33109c9244dd187478bf100', 'N4E0k8Zn', '0000a50341dabea21de3dc660eafb39028a9', 1, '2021-12-03 02:34:27', '2021-12-03 02:34:27'),
(87, '2021-12-02 23:34:27', '0000a50341dabea21de3dc660eafb39028a9', 'jLAcMUPp', '00008da8fb867d8cc0fe085e0bf7c6449d71', 1, '2021-12-03 02:34:27', '2021-12-03 02:34:27'),
(88, '2021-12-02 23:34:27', '00008da8fb867d8cc0fe085e0bf7c6449d71', 'wDHLvdch', '00007f50ea0ccc2e958b636d73593f858908', 1, '2021-12-03 02:34:27', '2021-12-03 02:34:27'),
(89, '2021-12-02 23:34:27', '00007f50ea0ccc2e958b636d73593f858908', 'SEffavtH', '00007bc9f7174ac9c1f1444e36647402a53a', 1, '2021-12-03 02:34:27', '2021-12-03 02:34:27'),
(90, '2021-12-02 23:34:27', '00007bc9f7174ac9c1f1444e36647402a53a', 'LrFtiZAd', '00008baa47a73945fe07998b28d87c49f6d1', 1, '2021-12-03 02:34:27', '2021-12-03 02:34:27'),
(91, '2021-12-02 23:34:27', '00008baa47a73945fe07998b28d87c49f6d1', 'bkYXIPjJ', '0000a63a8c535cee213b5b9237f3603229a2', 1, '2021-12-03 02:34:27', '2021-12-03 02:34:27'),
(92, '2021-12-02 23:34:27', '0000a63a8c535cee213b5b9237f3603229a2', 'jXVGFJ97', '0000681fe147dff2bbe90ad31152f74bddd7', 1, '2021-12-03 02:34:27', '2021-12-03 02:34:27'),
(93, '2021-12-02 23:34:28', '0000681fe147dff2bbe90ad31152f74bddd7', 'BgNDZttL', '0000a2981c3ee6b8efd87d4e24db524ba20b', 1, '2021-12-03 02:34:28', '2021-12-03 02:34:28'),
(94, '2021-12-02 23:34:28', '0000a2981c3ee6b8efd87d4e24db524ba20b', 'zjm6TXOk', '0000de6eb53f2886d4b7e3ec527fc12302f8', 1, '2021-12-03 02:34:28', '2021-12-03 02:34:28'),
(95, '2021-12-02 23:34:28', '0000de6eb53f2886d4b7e3ec527fc12302f8', 'ZIzuOu5M', '00003c594cd15d8151cf46f810e342bf9f77', 1, '2021-12-03 02:34:28', '2021-12-03 02:34:28'),
(96, '2021-12-02 23:34:28', '00003c594cd15d8151cf46f810e342bf9f77', 'USNTiZV2', '0000af7d0714ac29f217b84766191595e7f3', 1, '2021-12-03 02:34:28', '2021-12-03 02:34:28'),
(97, '2021-12-02 23:34:28', '0000af7d0714ac29f217b84766191595e7f3', 'GY9AFd4z', '0000be052e9a3572904a96b9ebf200e9bbd7', 1, '2021-12-03 02:34:28', '2021-12-03 02:34:28'),
(98, '2021-12-02 23:34:28', '0000be052e9a3572904a96b9ebf200e9bbd7', 'erO3TSob', '00007387ac3874451097025f5708592d53d8', 1, '2021-12-03 02:34:28', '2021-12-03 02:34:28'),
(99, '2021-12-02 23:34:28', '00007387ac3874451097025f5708592d53d8', 'Zyv8MoFV', '00005c658992bcdaf44b278f802f85418a41', 1, '2021-12-03 02:34:28', '2021-12-03 02:34:28'),
(100, '2021-12-02 23:34:28', '00005c658992bcdaf44b278f802f85418a41', 't1OkHvZO', '000037070fd9903a0f7ebdbfaa121112f594', 1, '2021-12-03 02:34:28', '2021-12-03 02:34:28'),
(101, '2021-12-02 23:34:28', '000037070fd9903a0f7ebdbfaa121112f594', 'H9Mfl7h9', '0000bbfd2977a406565d45f6eb90be6a0d00', 1, '2021-12-03 02:34:28', '2021-12-03 02:34:28'),
(102, '2021-12-02 23:34:28', '0000bbfd2977a406565d45f6eb90be6a0d00', 'A7eWSy31', '000088d30431ad5cba3b212efa4d6d4f8768', 1, '2021-12-03 02:34:28', '2021-12-03 02:34:28'),
(103, '2021-12-02 23:34:29', '000088d30431ad5cba3b212efa4d6d4f8768', 'xAyv7NGh', '00005ff56930abca65d1585e38c8148c14cb', 1, '2021-12-03 02:34:29', '2021-12-03 02:34:29'),
(104, '2021-12-02 23:34:29', '00005ff56930abca65d1585e38c8148c14cb', 'NNk9qJcM', '0000e74dd5ddb966cbb4d60f9868407d7aeb', 1, '2021-12-03 02:34:29', '2021-12-03 02:34:29'),
(105, '2021-12-02 23:34:29', '0000e74dd5ddb966cbb4d60f9868407d7aeb', 'DH7X48BK', '0000fc58e8311f92767d2b3c35bdd1ac4a6b', 1, '2021-12-03 02:34:29', '2021-12-03 02:34:29'),
(106, '2021-12-02 23:34:29', '0000fc58e8311f92767d2b3c35bdd1ac4a6b', '0VoOaOXA', '00007c6fcd0f1c8990920356f2b662f6c647', 1, '2021-12-03 02:34:29', '2021-12-03 02:34:29'),
(107, '2021-12-02 23:34:29', '00007c6fcd0f1c8990920356f2b662f6c647', '66r36gX1', '0000ed71545b85276eb73534be5fd6d28ecf', 1, '2021-12-03 02:34:29', '2021-12-03 02:34:29'),
(108, '2021-12-02 23:34:29', '0000ed71545b85276eb73534be5fd6d28ecf', 'xkBe8t69', '000067c6292bc5ddb29c1995a9095bbc05c1', 1, '2021-12-03 02:34:29', '2021-12-03 02:34:29'),
(109, '2021-12-02 23:34:29', '000067c6292bc5ddb29c1995a9095bbc05c1', 'lDWa67Xc', '00006e9fd5a1389f465f190fd8340549408e', 1, '2021-12-03 02:34:29', '2021-12-03 02:34:29'),
(110, '2021-12-02 23:34:29', '00006e9fd5a1389f465f190fd8340549408e', 'zDmPUg85', '00006f2e30a593a74dbf10d4500138a23f89', 1, '2021-12-03 02:34:29', '2021-12-03 02:34:29'),
(111, '2021-12-02 23:34:29', '00006f2e30a593a74dbf10d4500138a23f89', 'zpMsWe80', '0000917ee0e2b0c9f6d2e328863f76c7a29d', 1, '2021-12-03 02:34:29', '2021-12-03 02:34:29'),
(112, '2021-12-02 23:34:29', '0000917ee0e2b0c9f6d2e328863f76c7a29d', 'axKQnN1f', '00005706191589cff9471c997c735512eb35', 1, '2021-12-03 02:34:29', '2021-12-03 02:34:29'),
(113, '2021-12-02 23:34:29', '00005706191589cff9471c997c735512eb35', '6jJdMwQ7', '000000446a6ba0250cef3caf54e176328cb2', 1, '2021-12-03 02:34:29', '2021-12-03 02:34:29'),
(114, '2021-12-02 23:34:30', '000000446a6ba0250cef3caf54e176328cb2', 'txnnbEus', '00007f06bf59b7cbb227e028cdc14eef5bc4', 1, '2021-12-03 02:34:30', '2021-12-03 02:34:30'),
(115, '2021-12-02 23:34:30', '00007f06bf59b7cbb227e028cdc14eef5bc4', 'mazACKbq', '0000f1e6466af8c4b1055d430140fb696525', 1, '2021-12-03 02:34:30', '2021-12-03 02:34:30'),
(116, '2021-12-02 23:34:30', '0000f1e6466af8c4b1055d430140fb696525', 'wB5qGtQy', '000053965dc08aa8ae4b6250d1fe2b7a0741', 1, '2021-12-03 02:34:30', '2021-12-03 02:34:30'),
(117, '2021-12-03 02:36:26', 'webdev', 'fyg6yFTc', '00002d61d7a7a35fdb76d347e66537f618ac', 2, '2021-12-03 05:37:32', '2021-12-03 05:36:26'),
(118, '2021-12-03 02:36:26', '00002d61d7a7a35fdb76d347e66537f618ac', 'wdgvDwRY', '000032552e92711961eda35447f699bf612b', 1, '2021-12-03 05:36:26', '2021-12-03 05:36:26'),
(119, '2021-12-03 02:36:26', '000032552e92711961eda35447f699bf612b', '3yXheTlz', '0000b5d2c1e972c61a70b65cfe273b81745c', 1, '2021-12-03 05:36:26', '2021-12-03 05:36:26'),
(120, '2021-12-03 02:36:26', '0000b5d2c1e972c61a70b65cfe273b81745c', 'dkvUJu5K', '0000bc4b728b5dbb749391e294423f333ba0', 1, '2021-12-03 05:36:26', '2021-12-03 05:36:26'),
(121, '2021-12-03 02:36:27', '0000bc4b728b5dbb749391e294423f333ba0', 'PVuWhR5L', '00006509d96d647d1b25d02581ec5e0f5215', 1, '2021-12-03 05:36:27', '2021-12-03 05:36:27'),
(122, '2021-12-03 02:36:27', '00006509d96d647d1b25d02581ec5e0f5215', 'Zsgltu19', '00001dddcba80f405f580f746e6421d3d1de', 1, '2021-12-03 05:36:27', '2021-12-03 05:36:27'),
(123, '2021-12-03 02:36:27', '00001dddcba80f405f580f746e6421d3d1de', 'NweXbS1Q', '0000482ad680c49de0b75517d4a891a516b6', 1, '2021-12-03 05:36:27', '2021-12-03 05:36:27'),
(124, '2021-12-03 02:36:27', '0000482ad680c49de0b75517d4a891a516b6', 'NQmhPzZk', '0000d0b8719a6f6915ee5175bfc8897e3438', 1, '2021-12-03 05:36:27', '2021-12-03 05:36:27'),
(125, '2021-12-03 02:36:27', '0000d0b8719a6f6915ee5175bfc8897e3438', 'IcLp9zJ3', '000089bd58407bc3668c9ebbc9b7eec4ed3e', 1, '2021-12-03 05:36:27', '2021-12-03 05:36:27'),
(126, '2021-12-03 02:36:27', '000089bd58407bc3668c9ebbc9b7eec4ed3e', 'bUgTTyfV', '0000e32d8a3274515ebb12fd3df9608a9dd3', 1, '2021-12-03 05:36:27', '2021-12-03 05:36:27'),
(127, '2021-12-03 02:37:32', '0000f5b767726c9734c4e484533a51db55c8', 'Axt16vel', '000017c912dde583033062030474b32d1c68', 1, '2021-12-03 05:37:32', '2021-12-03 05:37:32'),
(128, '2021-12-03 02:37:32', '000017c912dde583033062030474b32d1c68', 'ftNC7Haa', '000062a770ebde910a1b715fcc77ce44ecbc', 1, '2021-12-03 05:37:32', '2021-12-03 05:37:32'),
(129, '2021-12-03 02:37:32', '000062a770ebde910a1b715fcc77ce44ecbc', 'gbaS8Y91', '0000593098e54716dcadf515e0ee232fd1d6', 1, '2021-12-03 05:37:32', '2021-12-03 05:37:32'),
(130, '2021-12-03 02:37:32', '0000593098e54716dcadf515e0ee232fd1d6', 'VxmIHkgN', '0000c666b04d231b5998e276995e141cfdc0', 1, '2021-12-03 05:37:32', '2021-12-03 05:37:32'),
(131, '2021-12-03 02:37:32', '0000c666b04d231b5998e276995e141cfdc0', 'DIzS47eK', '0000356c27f6598b8f36da0577072a18135a', 1, '2021-12-03 05:37:32', '2021-12-03 05:37:32'),
(132, '2021-12-03 02:37:33', '0000356c27f6598b8f36da0577072a18135a', 'OAbL3nei', '0000c76caa23432c9507f948090c6fca98d3', 1, '2021-12-03 05:37:33', '2021-12-03 05:37:33'),
(133, '2021-12-03 02:37:33', '0000c76caa23432c9507f948090c6fca98d3', 'rItRU3H5', '0000c529730595f962c37ca2bd8266a8f3b0', 1, '2021-12-03 05:37:33', '2021-12-03 05:37:33'),
(134, '2021-12-03 02:37:33', '0000c529730595f962c37ca2bd8266a8f3b0', 'FCei4ICr', '00003a36d523dfb7c75d6f6675dea866a738', 1, '2021-12-03 05:37:33', '2021-12-03 05:37:33'),
(135, '2021-12-03 02:37:33', '00003a36d523dfb7c75d6f6675dea866a738', 'WSmYL0Kl', '00005db64f9620e402bb5d9ca5a2f030410b', 1, '2021-12-03 05:37:33', '2021-12-03 05:37:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rotas`
--
ALTER TABLE `rotas`
  ADD PRIMARY KEY (`bloco`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rotas`
--
ALTER TABLE `rotas`
  MODIFY `bloco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;