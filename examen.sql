-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql
-- Tiempo de generación: 21-03-2023 a las 16:51:55
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` tinyint NOT NULL,
  `deleted` tinyint NOT NULL,
  `login_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `status`, `deleted`, `login_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(41, 'admin', 'admin@gmail.com', '6943dabaafc9cd92e631749d675cf1810cbac10acc63c731bfa0c63e5a370e99a8d0e03e81a111e153f3107c487f98adf444081224dcf44988e273647cf0c1ad', 1, 0, '2023-03-21 16:16:18', '2023-03-14 22:46:06', NULL, NULL),
(54, 'nuevo', 'nuevo@gmail.com', '209812c5d96f16f857c354a8dc6c37f4bdc35bf1b0caaa7bf9f8aa9f9de2395811882deca099d8ffb3e7fc78922cfb514fdbc31504b95d01c260fbd71b1342df', 1, 0, '2023-03-20 13:38:36', '2023-03-20 13:38:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` int NOT NULL,
  `state` tinyint NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `send` decimal(10,2) NOT NULL,
  `date` datetime NOT NULL,
  `total` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id`, `state`, `user_id`, `product_id`, `quantity`, `discount`, `send`, `date`, `total`) VALUES
(95, 1, 4, 1, '1.00', '0.99', '1.99', '2023-03-21 15:23:01', '0.00'),
(96, 1, 4, 5, '1.00', '0.00', '0.00', '2023-03-21 15:24:38', '0.00'),
(97, 0, 4, 1, '1.00', '0.99', '1.99', '2023-03-21 15:28:39', '0.00'),
(101, 1, 51, 3, '1.00', '0.99', '0.00', '2023-03-21 16:26:37', '9.00'),
(102, 1, 51, 1, '1.00', '0.99', '1.99', '2023-03-21 16:51:24', '10.99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int NOT NULL,
  `type` varchar(50) NOT NULL,
  `value` int NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `type`, `value`, `description`) VALUES
(1, 'adminStatus', 0, 'Inactivo'),
(2, 'adminStatus', 1, 'Activo'),
(3, 'productType', 1, 'Curso en línea'),
(4, 'productType', 2, 'Libro'),
(5, 'productStatus', 0, 'Inactivo'),
(6, 'productStatus', 1, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `payment_id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`payment_id`, `name`) VALUES
(4, 'prueba'),
(5, 'prueba2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `type` char(1) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `name` varchar(200) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `send` decimal(10,2) NOT NULL,
  `image` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `published` date NOT NULL,
  `relation1` int NOT NULL,
  `relation2` int NOT NULL,
  `relation3` int NOT NULL,
  `mostSold` char(1) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `new` char(1) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `status` tinyint NOT NULL,
  `deleted` tinyint NOT NULL,
  `create_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `author` varchar(200) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `publisher` varchar(200) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `pages` int NOT NULL,
  `people` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `objetives` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `necesites` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `type`, `name`, `description`, `price`, `discount`, `send`, `image`, `published`, `relation1`, `relation2`, `relation3`, `mostSold`, `new`, `status`, `deleted`, `create_at`, `updated_at`, `deleted_at`, `author`, `publisher`, `pages`, `people`, `objetives`, `necesites`) VALUES
(1, '2', 'El nombre de la rosa', '&lt;p&gt;123456789012345678901234567890&lt;/p&gt;', '9.99', '0.99', '1.99', '20150801-mac.jpg', '2023-05-05', 3, 5, 6, '1', '1', 0, 0, '2022-10-18 19:12:02', '2023-03-21 16:13:04', NULL, 'Pepe', 'Jos&eacute;', 100, '', '', ''),
(2, '2', 'El retorno del rey', '&lt;p&gt;prueba prueba prueba prue&lt;/p&gt;', '19.99', '1.99', '2.99', '03652_threesisters_2880x1800.jpg', '2023-05-05', 0, 0, 0, '0', '1', 0, 0, '2022-10-18 19:16:16', '2023-03-11 14:54:50', NULL, 'Pepe', 'Jos&eacute;', 100, '', '', ''),
(3, '1', 'From zero to master in PHP', '&lt;p&gt;&lt;i&gt;Mejora hasta el infinito&lt;/i&gt; tus habilidades en &lt;strong&gt;PHP&lt;/strong&gt; y programaci&oacute;n orientada a objetos, &lt;strong&gt;POO&lt;/strong&gt;.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&lt;br&gt;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&lt;br&gt;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&lt;br&gt;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&lt;br&gt;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&lt;br&gt;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&lt;br&gt;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&lt;br&gt;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&lt;br&gt;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&lt;br&gt;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&lt;br&gt;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;', '9.99', '0.99', '0.00', '20150613-mac.jpg', '2023-05-05', 0, 0, 0, '1', '1', 1, 0, '2022-10-20 14:23:44', '2023-03-11 14:55:49', NULL, 'Pepe', 'Jos&eacute;', 100, 'Novatos', 'Desde la nada al todo en PHP', 'Ganas, muchas ganas'),
(4, '2', 'ergegdfg', '&lt;p&gt;tiuyiiyi&lt;/p&gt;', '20.00', '0.00', '0.00', '20150627-mac.jpg', '2023-05-05', 0, 0, 0, '0', '0', 1, 0, '2023-03-10 13:35:30', '2023-03-10 13:42:06', NULL, 'Pepe', 'Jos&eacute;', 100, 'Novatos', 'Desde la nada al todo en PHP', 'Ganas, muchas ganas'),
(5, '1', 'ggdtfhgfth', '&lt;p&gt;dftdufyuyt&lt;/p&gt;', '25.00', '0.00', '0.00', '20150711-mac.jpg', '2023-05-05', 0, 0, 0, '0', '0', 1, 0, '2023-03-10 13:36:08', '2023-03-10 13:42:18', NULL, 'Pepe', 'Jos&eacute;', 100, 'Novatos', 'Desde la nada al todo en PHP', 'Ganas, muchas ganas'),
(6, '1', 'prueba', '&lt;p&gt;prueba&lt;/p&gt;', '50.00', '0.00', '0.00', '20150801-mac.jpg', '2023-05-05', 0, 0, 0, '0', '0', 1, 0, '2023-03-10 13:43:11', NULL, NULL, 'Pepe', 'Jos&eacute;', 100, 'Novatos', 'Desde la nada al todo en PHP', 'Ganas, muchas ganas'),
(7, '2', 'aaaaaaaaaaaa', '&lt;p&gt;aaaaaaaaaaaaa&lt;/p&gt;', '500.00', '0.00', '0.00', '20150613-mac.jpg', '2023-05-05', 0, 0, 0, '0', '0', 1, 0, '2023-03-10 14:35:21', NULL, NULL, 'Pepe', 'Jos&eacute;', 100, 'Novatos', 'Desde la nada al todo en PHP', 'Ganas, muchas ganas'),
(8, '1', 'yo que se algo nuevo', '&lt;p&gt;dfhdgfh&lt;/p&gt;', '20.00', '0.00', '0.00', '20150711-mac.jpg', '2023-05-05', 6, 0, 0, '0', '0', 1, 0, '2023-03-17 19:09:20', NULL, NULL, 'Pepe', 'Jos&eacute;', 100, 'Novatos', 'Desde la nada al todo en PHP', 'Ganas, muchas ganas'),
(9, '1', 'sdg', '&lt;p&gt;dfhdh&lt;/p&gt;', '20.00', '0.00', '0.00', '20150613-mac.jpg', '2023-05-05', 0, 0, 0, '0', '0', 0, 0, '2023-03-21 16:04:05', NULL, NULL, 'Pepe', 'Jos&eacute;', 100, 'fg', 'Desde la nada al todo en PHP', 'Ganas, muchas ganas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `last_name_1` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `last_name_2` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `address` varchar(150) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `city` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `state` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `zipcode` varchar(10) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `country` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `password` varchar(200) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name_1`, `last_name_2`, `email`, `address`, `city`, `state`, `zipcode`, `country`, `password`) VALUES
(51, 'a', 'a', 'a', 'a@gmail.com', 'dfh', 'dfh', 'dh', 'ddhg', 'fdh', '209812c5d96f16f857c354a8dc6c37f4bdc35bf1b0caaa7bf9f8aa9f9de2395811882deca099d8ffb3e7fc78922cfb514fdbc31504b95d01c260fbd71b1342df');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
