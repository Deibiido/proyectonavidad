-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-01-2024 a las 14:42:03
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--

CREATE TABLE `consulta` (
  `SIP` varchar(10) NOT NULL,
  `testimoniopaciente` varchar(250) NOT NULL,
  `observacion` varchar(250) NOT NULL,
  `recomendacion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consulta`
--

INSERT INTO `consulta` (`SIP`, `testimoniopaciente`, `observacion`, `recomendacion`) VALUES
('1111h', 'sagfsrgdf', 'tyjytjtyj', 'paracetamol'),
('1111p', 'sagfsrgdf', 'tyjytjtyj', 'paracetamol'),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('asfdasdf', 'sdfgsdfg', 'agsfdg', 'paracetamol');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datospacientes`
--

CREATE TABLE `datospacientes` (
  `SIP` varchar(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Fechadenacimiento` varchar(10) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Telefonocontacto` varchar(15) NOT NULL,
  `Enfermedades/Alergias` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datospacientes`
--

INSERT INTO `datospacientes` (`SIP`, `Nombre`, `Apellidos`, `Fechadenacimiento`, `Direccion`, `Telefonocontacto`, `Enfermedades/Alergias`) VALUES
('111111111P', 'Juan', 'Pérez Pérez', '05/11/1986', 'C/ Almudena 24 9', '+34 666555444', 'Asma, alérgico a la penicilina y naranja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

CREATE TABLE `medicamentos` (
  `Identificador` int(255) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Recomendacion` varchar(100) NOT NULL,
  `Componentes` varchar(100) NOT NULL,
  `Modalidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicamentos`
--

INSERT INTO `medicamentos` (`Identificador`, `Nombre`, `Recomendacion`, `Componentes`, `Modalidad`) VALUES
(1, 'Paracetamol', 'Para la fiebre, el dolor muscular, de cabeza, etc', 'Medicina tipo A, medicina tipo 4', 'En capsulas, pastilla, sobres de polvo disolvente'),
(2, 'Frenadol', 'Para constipados, resfriados, fiebre, dolor de cabeza', 'Medicina tipo b, medicina tipo 8', 'Sobres de polvo disolutivo, pastillas'),
(3, 'Ibuprofeno', 'Para aliviar el dolor en corto plazo, fiebre', 'Medicina tipo F, medicina tipo 4', 'Capsulas, Sobres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usumedicos`
--

CREATE TABLE `usumedicos` (
  `identificador` int(20) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `especialidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usumedicos`
--

INSERT INTO `usumedicos` (`identificador`, `usuario`, `nombre`, `apellidos`, `contrasena`, `especialidad`) VALUES
(1, 'frangeneral', 'Francisco', 'Palomar Perez', 'ContraFran', 'Medico general de familia'),
(2, 'juanfisio', 'Juan Alberto', 'Ramón Gutiérrez', 'ContraJuan', 'Fisioterapeuta'),
(3, 'marianes', 'María de los Desamparados', 'Sánchez Guillem', 'ContraMaria', 'Anestesista'),
(4, 'patrigin', 'Patricia', 'Pérez Santa', 'ContraPat', 'Ginecología');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `usumedicos`
--
ALTER TABLE `usumedicos`
  ADD PRIMARY KEY (`identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usumedicos`
--
ALTER TABLE `usumedicos`
  MODIFY `identificador` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
