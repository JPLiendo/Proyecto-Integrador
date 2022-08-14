-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 13-08-2022 a las 20:59:59
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `peluqueriacaninaispc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueno`
--

DROP TABLE IF EXISTS `dueno`;
CREATE TABLE IF NOT EXISTS `dueno` (
  `DNI` int(11) NOT NULL,
  `Nombre` varchar(40) CHARACTER SET latin1 NOT NULL,
  `Apellido` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Direccion` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `dueno`
--

INSERT INTO `dueno` (`DNI`, `Nombre`, `Apellido`, `Telefono`, `Direccion`) VALUES
(23568988, 'Jose', 'Gomez', 1124558978, 'Libertad 123'),
(23589972, 'Carlos', 'Fuila', 1125897845, 'Vidal 2356 CABA'),
(25487895, 'Juan', 'Perez', 11658945, 'Nicaragua 568 CABA'),
(25789451, 'Laura', 'Gimenez', 1134568975, 'Vidt 2345 CABA'),
(35255889, 'Julia', 'Dias', 1126589956, 'Amenábar 2356 CABA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

DROP TABLE IF EXISTS `historial`;
CREATE TABLE IF NOT EXISTS `historial` (
  `ID_Historial` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Perro` int(11) NOT NULL,
  `Descripcion` varchar(250) CHARACTER SET latin1 NOT NULL,
  `Monto` float DEFAULT NULL,
  PRIMARY KEY (`ID_Historial`),
  KEY `Perro` (`Perro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`ID_Historial`, `Fecha`, `Perro`, `Descripcion`, `Monto`) VALUES
(23, '2022-08-11', 35255889, 'Caniche Toy', 4000),
(25, '2022-05-11', 23589972, 'Labrador Golden ', 12000),
(26, '2022-04-06', 23568988, 'Caniche Marron', 50000),
(27, '2022-03-08', 35255889, 'Boxer adulta blanca', 56000),
(33, '2022-04-05', 25789451, 'Pitbull Marron mediana', 20000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perro`
--

DROP TABLE IF EXISTS `perro`;
CREATE TABLE IF NOT EXISTS `perro` (
  `IDPerro` int(11) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `FechaNac` date DEFAULT NULL,
  `Sexo` varchar(3) NOT NULL,
  `DNI_Dueno` int(11) NOT NULL,
  PRIMARY KEY (`IDPerro`),
  KEY `DNI_Dueno` (`DNI_Dueno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perro`
--

INSERT INTO `perro` (`IDPerro`, `Nombre`, `FechaNac`, `Sexo`, `DNI_Dueno`) VALUES
(23, 'Lolo', '2022-08-02', 'M', 35255889),
(25, 'Lilo', '2022-03-08', 'M', 23589972),
(26, 'Lila', '2021-07-12', 'F', 35255889),
(27, 'Lian', '2021-10-10', 'M', 23568988),
(33, 'Reyna', '2022-01-05', 'F', 25789451);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `Perro` FOREIGN KEY (`Perro`) REFERENCES `dueno` (`DNI`);

--
-- Filtros para la tabla `perro`
--
ALTER TABLE `perro`
  ADD CONSTRAINT `DNI_Dueno` FOREIGN KEY (`DNI_Dueno`) REFERENCES `dueno` (`DNI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

select * from Dueno;
update Dueno set Direccion = 'Libertad 1234' where DNI = 23568988;

select * from Dueno;