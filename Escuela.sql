-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 08-03-2023 a las 21:14:50
-- Versión del servidor: 5.7.39
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `id_carrera` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `id_carrera`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hola', '2023-03-08 21:13:30', '2023-03-09 03:50:13'),
(2, 2, 'Bruh', '2023-03-08 21:13:39', '2023-03-09 03:36:22'),
(3, 3, 'Hola', '2023-03-08 21:14:05', '2023-03-09 03:57:30'),
(4, 4, 'Yeah', '2023-03-08 21:14:13', '2023-03-09 03:57:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` int(11) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Lic. en Administracion', '2023-03-08 21:05:17', NULL),
(2, 'Lic. en Contabilidad', '2023-03-08 21:05:17', NULL),
(3, 'Lic. en Enfermeria', '2023-03-08 21:05:17', NULL),
(4, 'Lic. en Comercio Internacional', '2023-03-08 21:05:17', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_carrera` (`id_carrera`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
