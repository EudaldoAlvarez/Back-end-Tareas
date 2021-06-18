-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2021 a las 01:34:26
-- Versión del servidor: 10.4.17-MariaDB-log
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tareas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`id`, `email`, `titulo`, `descripcion`, `fecha_inicio`, `fecha_fin`) VALUES
(4, 'eudaldo@hotmail.com', 'Cena con los abuelos editado', 'Asistir a la reunion con los abuelos, No olvides llevar un presente. Editado', '2021-05-13 01:36:57', '2021-05-25 01:36:57'),
(29, 'eudaldo@hotmail.com', 'prueba de creacion de tarea', 'si jaló', '2021-05-13 01:36:57', '2021-05-25 01:36:57'),
(30, 'eudaldo@hotmail.com', 'prueba de creacion de tarea', 'si jaló', '2021-05-13 01:36:57', '2021-05-25 01:36:57'),
(31, 'eudaldo@hotmail.com', 'edit', 'edit', '2021-05-13 07:36:57', '2021-05-25 07:39:57'),
(48, 'eudaldo@hotmail.com', 'asdasd', 'asdasd', '2021-06-18 15:02:00', '2021-06-18 15:02:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `password` varchar(75) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `password`, `email`) VALUES
(5, '$2b$10$DZljJn3MFC9quwzWAObUGuvCnWrqmxhpCUQzpY69AMQqH.kfvqww6', 'eudaldo@hotmail.com'),
(6, '$2b$10$s.1h1IGt1Av3TBaJgeNitOVcWVuHJk8ohBT0xbX24sxxGo34uUQqe', 'antonio@hotmail.com'),
(17, '$2b$10$xRfL3ajxbF1owjThwKD4m.cRCOITZJd7foBHfaENbkZV2wSFUVO.K', 'correoFalso@hotmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD CONSTRAINT `tareas_ibfk_1` FOREIGN KEY (`email`) REFERENCES `usuarios` (`email`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
