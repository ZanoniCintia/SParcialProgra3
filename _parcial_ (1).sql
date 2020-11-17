-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2020 a las 00:53:45
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parcial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `aLegajo` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `aEmail` varchar(40) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `aMateria` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`aLegajo`, `nombre`, `aEmail`, `aMateria`, `nota`) VALUES
(40, '', 'pepe@mail.com', '{\"id\":4,\"nombre\":\"contable\",\"cuatrimestre\":2,\"cupo', 0),
(42, 'pepe', 'pepe@mail.com', '', 0),
(43, 'pepe', 'pepe@mail.com', '', 0),
(40, '', 'pepe@mail.com', '{\"id\":4,\"nombre\":\"contable\",\"cuatrimestre\":2,\"cupo', 0),
(46, 'pepe', 'pepe@mail.com', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cuatrimestre` int(10) NOT NULL,
  `cupo` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `cuatrimestre`, `cupo`) VALUES
(1, 'ingles', 2, 24),
(2, 'programacion', 3, 27),
(3, 'laboratorio', 2, 13),
(4, 'contable', 2, 26),
(5, 'contable', 2, 31),
(6, 'contable', 2, 31),
(7, 'contable', 2, 31),
(8, 'contable', 2, 30),
(9, 'P3', 3, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `pLegajo` int(11) NOT NULL,
  `pEmail` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `pMateria` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `legajo` int(11) NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `clave` int(11) NOT NULL,
  `tipo` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`legajo`, `email`, `nombre`, `clave`, `tipo`) VALUES
(40, 'pepe@mail.com', 'pepe', 123456, 'alumno'),
(41, 'pepe@mail.com', 'pepe', 123456, 'alumno'),
(42, 'pepe@mail.com', 'pepe', 123456, 'alumno'),
(43, 'pepe@mail.com', 'pepe', 123456, 'alumno'),
(44, 'pepe@mail.com', 'pepe', 123456, 'alumno'),
(45, 'pepe@mail.com', 'pepe', 123456, 'alumno'),
(46, 'pepe@mail.com', 'pepe', 123456, 'alumno'),
(47, 'pepe@mail.com', 'pepe', 123456, 'alumno'),
(48, 'pepe@mail.com', 'pepe', 123456, 'alumno'),
(49, 'pepe@mail.com', 'pepe', 123456, 'alumno');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`legajo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `legajo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
