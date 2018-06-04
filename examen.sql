-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2018 a las 21:41:08
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Estructura de tabla para la tabla `congresomedico`
--

CREATE TABLE `congresomedico` (
  `id_congreso` int(11) NOT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `congresomedico`
--

INSERT INTO `congresomedico` (`id_congreso`, `DESCRIPCION`) VALUES
(1, 'Medicina Interna-Medicina del paciente critico, Coordinador: Dr. Guillermo Porras'),
(2, 'Pediatria, Coordinador: Dr. Fulgencio Baez'),
(3, 'Actualizacion en enfermedad cardiovascular, Coordinador: Dr. Daniel Rivas B.'),
(4, 'Cirugia, Coordinador: Dr. Milton Mairena'),
(5, 'Gineco-Obstreticia, Coordinador: Dr. Juan J. Lugo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `id_inscripcion` int(11) NOT NULL,
  `primer_apellido` varchar(20) DEFAULT NULL,
  `segundo_apellido` varchar(20) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `No_cedula` int(11) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `especialidad` varchar(30) DEFAULT NULL,
  `ano_titulacion` int(11) DEFAULT NULL,
  `cod_minsa` varchar(20) DEFAULT NULL,
  `anos_estudio` int(11) DEFAULT NULL,
  `decripcion_lugar` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`id_inscripcion`, `primer_apellido`, `segundo_apellido`, `nombre`, `No_cedula`, `direccion`, `ciudad`, `telefono`, `email`, `especialidad`, `ano_titulacion`, `cod_minsa`, `anos_estudio`, `decripcion_lugar`) VALUES
(1, 'Hernandez', 'Victoria', 'Jose Luis', 5771325, 'Villa Victoria', 'Mexico', '7226841260', 'jluis_victoria@gmail.com', 'Medico cirujano', 2017, '75125', 10, 'Hospital'),
(2, 'Gonzalez', 'Flores', 'Adriana', 4611826, 'Valle de Bravo', 'Mexico', '7224059871', 'gonzalez_adriana@gmail.com', 'Cardiologo', 2016, '461218', 10, 'Institucion'),
(3, 'Morales', 'Basilio', 'Yareli', 7910535, 'Amanalco', 'Mexico', '7225975861', 'yare_morales@gmail.com', 'Partero', 2016, '511611', 8, 'Estudiante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precongreso`
--

CREATE TABLE `precongreso` (
  `id_precongreso` int(11) NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `precongreso`
--

INSERT INTO `precongreso` (`id_precongreso`, `descripcion`) VALUES
(1, 'Curso de Insulinoterapia'),
(2, 'Curso de abordaje de Via Aerea');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `congresomedico`
--
ALTER TABLE `congresomedico`
  ADD PRIMARY KEY (`id_congreso`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`id_inscripcion`);

--
-- Indices de la tabla `precongreso`
--
ALTER TABLE `precongreso`
  ADD PRIMARY KEY (`id_precongreso`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `congresomedico`
--
ALTER TABLE `congresomedico`
  MODIFY `id_congreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `id_inscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `precongreso`
--
ALTER TABLE `precongreso`
  MODIFY `id_precongreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
