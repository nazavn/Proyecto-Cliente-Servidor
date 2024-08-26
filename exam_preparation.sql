-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 27-08-2024 a las 01:55:07
-- Versión del servidor: 8.0.33
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `exam_preparation`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exams`
--

CREATE TABLE `exams` (
  `id` int NOT NULL,
  `subject_id` int DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `exams`
--

INSERT INTO `exams` (`id`, `subject_id`, `date`) VALUES
(1, 1, '2024-10-15'),
(2, 2, '2024-10-16'),
(3, 3, '2024-10-17'),
(4, 4, '2024-10-18'),
(5, 5, '2024-10-19'),
(6, 6, '2024-10-20'),
(7, 7, '2024-10-21'),
(8, 8, '2024-10-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id` int NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `subject` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id`, `file_name`, `subject`) VALUES
(7, 'INGLES-BACHILLERATO-POR-MADUREZ-2.pdf', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grades`
--

CREATE TABLE `grades` (
  `id` int NOT NULL,
  `student_id` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  `grade` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grades`
--

INSERT INTO `grades` (`id`, `student_id`, `subject_id`, `grade`) VALUES
(1, 1, 1, 85.5),
(2, 1, 2, 90),
(3, 2, 3, 88),
(4, 2, 4, 92.5),
(5, 21, 1, 50),
(6, 25, 8, 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `subject_id` int DEFAULT NULL,
  `question_text` text COLLATE utf8mb4_general_ci NOT NULL,
  `correct_answer` text COLLATE utf8mb4_general_ci NOT NULL,
  `wrong_answer1` text COLLATE utf8mb4_general_ci NOT NULL,
  `wrong_answer2` text COLLATE utf8mb4_general_ci NOT NULL,
  `wrong_answer3` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`id`, `subject_id`, `question_text`, `correct_answer`, `wrong_answer1`, `wrong_answer2`, `wrong_answer3`) VALUES
(1, 1, '¿Cuál es la capital de España?', 'Madrid', 'Barcelona', 'Valencia', 'Sevilla'),
(2, 2, 'What is the capital of the United Kingdom?', 'London', 'Manchester', 'Liverpool', 'Birmingham'),
(3, 3, '¿En qué año comenzó la Segunda Guerra Mundial?', '1939', '1940', '1941', '1942'),
(4, 1, '¿Cuál es la capital de España?', 'Madrid', 'Barcelona', 'Valencia', 'Sevilla'),
(5, 1, '¿Quién escribió \"Don Quijote de la Mancha\"?', 'Miguel de Cervantes', 'Lope de Vega', 'Garcilaso de la Vega', 'Francisco de Quevedo'),
(6, 1, '¿Cuál es el sinónimo de \"feliz\"?', 'Alegre', 'Triste', 'Enojado', 'Indiferente'),
(7, 1, '¿Qué es un verbo?', 'Una acción', 'Un sustantivo', 'Un adjetivo', 'Una preposición'),
(8, 1, '¿Qué es un sustantivo?', 'Una persona, lugar o cosa', 'Una acción', 'Un adjetivo', 'Una preposición'),
(9, 2, 'What is the capital of the United Kingdom?', 'London', 'Manchester', 'Liverpool', 'Birmingham'),
(10, 2, 'What is the past tense of \"go\"?', 'Went', 'Gone', 'Goes', 'Going'),
(11, 2, 'What is the synonym of \"happy\"?', 'Joyful', 'Sad', 'Angry', 'Indifferent'),
(12, 2, 'What is an adjective?', 'A word that describes a noun', 'A verb', 'A noun', 'A preposition'),
(13, 2, 'What is a noun?', 'A person, place, or thing', 'An action', 'An adjective', 'A preposition'),
(14, 3, '¿En qué año comenzó la Segunda Guerra Mundial?', '1939', '1940', '1941', '1942'),
(15, 3, '¿Quién fue el primer presidente de los Estados Unidos?', 'George Washington', 'Abraham Lincoln', 'Thomas Jefferson', 'John Adams'),
(16, 3, '¿Cuál es el río más largo del mundo?', 'El Nilo', 'El Amazonas', 'El Yangtsé', 'El Mississippi'),
(17, 3, '¿Qué país tiene la mayor población del mundo?', 'China', 'India', 'Estados Unidos', 'Brasil'),
(18, 3, '¿Cuál es el océano más grande del mundo?', 'El Pacífico', 'El Atlántico', 'El Índico', 'El Ártico'),
(19, 4, '¿Cuál es el resultado de 2+2?', '4', '3', '5', '6'),
(20, 4, '¿Cuál es el valor de pi?', '3.1416', '3.1214', '3.1415', '3.1417'),
(21, 4, '¿Cuál es la raíz cuadrada de 9?', '3', '2', '4', '5'),
(22, 4, '¿Qué es un número primo?', 'Un número que solo es divisible por 1 y por sí mismo', 'Un número que es divisible por 2', 'Un número impar', 'Un número par'),
(23, 4, '¿Cuál es el resultado de 5x5?', '25', '20', '30', '35'),
(24, 5, '¿Qué molécula lleva el código genético?', 'ADN', 'ARN', 'Proteína', 'Lípido'),
(25, 5, '¿Cuál es la célula más pequeña del cuerpo humano?', 'El espermatozoide', 'La neurona', 'El glóbulo rojo', 'El óvulo'),
(26, 5, '¿Qué tipo de sangre es el donante universal?', 'O negativo', 'A positivo', 'B positivo', 'AB positivo'),
(27, 5, '¿Qué órgano es responsable de bombear la sangre?', 'El corazón', 'El cerebro', 'El hígado', 'Los pulmones'),
(28, 5, '¿Cuál es la unidad básica de la vida?', 'La célula', 'El átomo', 'La molécula', 'El tejido'),
(29, 6, '¿Cuál es la fórmula de la velocidad?', 'Distancia/tiempo', 'Masa/volumen', 'Fuerza/peso', 'Energía/trabajo'),
(30, 6, '¿Qué mide un Newton?', 'La fuerza', 'La velocidad', 'La energía', 'La masa'),
(31, 6, '¿Qué es la gravedad?', 'Una fuerza que atrae los objetos hacia la Tierra', 'Una fuerza que empuja los objetos hacia el espacio', 'La resistencia al movimiento', 'La inercia de los cuerpos'),
(32, 6, '¿Qué es la energía cinética?', 'La energía del movimiento', 'La energía almacenada', 'La energía eléctrica', 'La energía química'),
(33, 6, '¿Qué es un átomo?', 'La unidad básica de la materia', 'Una molécula', 'Una célula', 'Un electrón'),
(34, 7, '¿Qué es el agua?', 'H2O', 'CO2', 'O2', 'NaCl'),
(35, 7, '¿Cuál es el símbolo químico del sodio?', 'Na', 'K', 'S', 'Cl'),
(36, 7, '¿Qué mide el pH?', 'La acidez o basicidad de una solución', 'La concentración de sal', 'La temperatura', 'La presión'),
(37, 7, '¿Qué es un mol?', 'La cantidad de sustancia que contiene tantas entidades elementales como átomos hay en 12 gramos de carbono-12', 'Una unidad de masa', 'Una medida de volumen', 'Una forma de energía'),
(38, 7, '¿Qué es una reacción química?', 'Un proceso que convierte una o más sustancias en otras diferentes', 'Un cambio físico', 'Una fusión nuclear', 'Una cristalización'),
(39, 8, '¿Cuál es la capital de Costa Rica?', 'San José', 'Cartago', 'Heredia', 'Alajuela'),
(40, 8, '¿Quién es el jefe de Estado en una república?', 'El presidente', 'El rey', 'El primer ministro', 'El gobernador'),
(41, 8, '¿Qué es la democracia?', 'Un sistema de gobierno en el cual los ciudadanos ejercen el poder mediante el voto', 'Una dictadura', 'Un imperio', 'Un reino'),
(42, 8, '¿Cuál es el poder que interpreta la ley?', 'El poder judicial', 'El poder ejecutivo', 'El poder legislativo', 'El poder militar'),
(43, 8, '¿Qué documento establece los derechos y deberes de los ciudadanos?', 'La constitución', 'El acta de independencia', 'El código civil', 'El reglamento escolar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` enum('usuario','admin') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `date_of_birth`, `address`, `phone_number`, `role`) VALUES
(1, 'Juan Pérez', 'juan.perez@example.com', '123', '2000-01-15', '123 Main St', '123-456-7890', 'usuario'),
(2, 'Ana Gómez', 'ana.gomez@example.com', '123', '1999-05-20', '456 Elm St', '098-765-4321', 'usuario'),
(8, 'José Terán', 'joseteran.cordero1@gmail.com', '$2y$10$GI6U3LOnxTQ9P.MffV6coeOcQzPXaIBicpGcukAhctjUtAeTBNtnG', '2000-01-01', 'aaa', '70070628', 'usuario'),
(11, 'Pablo', 'pablo@gmail.com', '$2y$10$xpaUI3dsREQxNCZyFJzZ/ehq1QLsQnJlzOoWrcylQr1BYVpV6gpiK', '2024-08-01', 'Backyardiganland', '415941', 'usuario'),
(12, 'snopp', 'snopp@gmail.com', '$2y$10$hrUUQuC9cjuI6ykCQKkOguUXBt45gyIh6tFMytBKn1pHIYZ21G2le', '2024-08-01', 'Backyardiganland', '415941', 'usuario'),
(13, 'ad', 'ad@gmail.com', '$2y$10$fFPRaJc7oa0gOSJG0ezDOOXchlvoMO8QY57wMemSj068IXjOQIWU6', '2024-08-01', 'Backyardiganland', '415941', 'usuario'),
(15, 'superman', 'superman@gmail.com', '$2y$10$UdzBSaDxm/lFDYwwMhBYjun0swLF5BXoAzmC1lpKWusx0I88K6WTq', '2024-08-01', 'Backyardiganland', '324423424', 'usuario'),
(16, 'BATMAN', 'BATMAN@gmail.com', '$2y$10$ydtBnjRrNn6xHtYClPBYxOWDU/1RSMw3dJ4s07YEEt3MLyTQ49KEe', '2024-08-01', 'Backyardiganland', '324423424', 'usuario'),
(17, 'iron', 'iron@gmail.com', '$2y$10$eptJnKOMsV7vc3eUnUz/KecQKEbzZgNM/LgbTmmTL3fH3kVWtFnhW', '2024-08-01', 'Backyardiganland', '541684684', 'usuario'),
(18, 'tadeo', 'tadeo@email.com', '$2y$10$aHz8lG/5UDDeVHyGnkgyHOed4ZsjeC/7RTzdJ37zTL6UprIV2fTkK', '2024-08-22', 'Backyardiganland', '1234234', 'usuario'),
(19, 'lacho', 'lacho@email.com', '$2y$10$hABD0l6mDIFIS7h65K5JgepzpG9eg1nzCqdUCIJ77fsXIb8k/eNV.', '2024-08-22', 'Backyardiganland', '4512345235', 'usuario'),
(21, 'admin', 'admin@email.com', '$2y$10$97us7Jct2NQyBseLNoFHDOFQVLYijgLONZ.4wYyU7TReks3AhbUO6', '2024-07-30', 'Backyardiganland', '1234423443', 'admin'),
(22, 'isaczito', 'isaczito@email.com', '$2y$10$lxgcEhTItP.O5jE.1dcwLu2imivVwNl0XWqp.l9RiFsQyqZYl0y6C', '2002-07-22', 'Alajula', '70072568', 'usuario'),
(25, 'Ema', 'emalva99guz@gmail.com', '$2y$10$kCT5XOPhV096lHa6wvqO/uf7Hw39zVNU0SZMgBbuAPFEJChjqJTjy', '2024-07-31', '2745 NW 82ND AVE', '3054369224', 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subjects`
--

CREATE TABLE `subjects` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `subjects`
--

INSERT INTO `subjects` (`id`, `name`) VALUES
(1, 'Español'),
(2, 'Inglés'),
(3, 'Estudios Sociales'),
(4, 'Matemática'),
(5, 'Biología'),
(6, 'Física'),
(7, 'Química'),
(8, 'Educación Cívica');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject`);

--
-- Indices de la tabla `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Filtros para la tabla `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`subject`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Filtros para la tabla `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
