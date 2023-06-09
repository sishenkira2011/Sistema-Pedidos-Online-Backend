-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-05-2023 a las 20:24:37
-- Versión del servidor: 8.0.33-0ubuntu0.22.04.1
-- Versión de PHP: 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pedidos-online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` bigint NOT NULL,
  `ct_estado` bit(1) DEFAULT NULL,
  `ct_nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `ct_estado`, `ct_nombre`) VALUES
(3, b'1', 'ENSALDAa'),
(7, b'0', 'CARNES'),
(8, b'0', 'POLLO'),
(10, b'0', 'VERDURA02'),
(11, b'0', 'VERDURA03'),
(12, b'1', 'VERDURA10'),
(14, b'1', 'VERDURA12'),
(15, b'0', 'VERDURA13'),
(16, b'1', 'VERDURA14'),
(17, b'0', 'VERDURA14'),
(19, b'1', 'aaaaaaaaaaaaaaaaaaaaaaa'),
(20, b'1', 'aaaaaaa'),
(22, b'1', 'nue ctd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company`
--

CREATE TABLE `company` (
  `id` bigint NOT NULL,
  `cp_direccion` varchar(255) DEFAULT NULL,
  `cp_nombre` varchar(255) DEFAULT NULL,
  `cp_abreviatura` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `company`
--

INSERT INTO `company` (`id`, `cp_direccion`, `cp_nombre`, `cp_abreviatura`) VALUES
(1, 'AV SUR BULEVAR', 'primera matrizshhh', 'CMm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `dui` varchar(255) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `fecha_nacimiento` datetime(6) DEFAULT NULL,
  `lugar_nacimiento` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `salario` double DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `puesto_laboral_id` int DEFAULT NULL,
  `sucursal_id` bigint DEFAULT NULL,
  `usuario_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `id_evento` bigint NOT NULL,
  `ev_hora_cierre` time DEFAULT NULL,
  `ev_hora_iicio` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` bigint NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `ganancia` double DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `url_imagen` varchar(255) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `evento_id_evento` bigint DEFAULT NULL,
  `promocion_id_promocion` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `descripcion`, `estado`, `ganancia`, `nombre`, `precio_venta`, `url_imagen`, `category_id`, `evento_id_evento`, `promocion_id_promocion`) VALUES
(1, 'PLATO FUERaa', b'0', NULL, 'PLAT01aaaaaaaaaa', 16, NULL, 3, NULL, NULL),
(2, 'des', b'1', NULL, 'plato ferte', 150, 'https://www.facebook.com/', 7, NULL, NULL),
(3, 'soipas', b'1', NULL, 'sopas', 1130, 'https://github.com/', 3, NULL, NULL),
(4, 'juuuuuuuu', b'1', 100, 'juuuuuuuu', 25, 'juuuuuuuu', 20, NULL, NULL),
(6, 'lato vvvv', b'1', NULL, 'manzanas verder', 10, 'https://www.youtube.com/watch?v=DumRgbN797M', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

CREATE TABLE `promocion` (
  `id_promocion` bigint NOT NULL,
  `pr_cantidad` int DEFAULT NULL,
  `pr_nombre` varchar(255) DEFAULT NULL,
  `pr_porcentaje` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `id` int NOT NULL,
  `estado` bit(1) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `rol_id` bigint NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`rol_id`, `nombre`) VALUES
(1, 'ADMIN'),
(2, 'NORMAL'),
(3, 'COCINA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id` bigint NOT NULL,
  `abreviatura` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `empresa_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `abreviatura`, `direccion`, `estado`, `nombre`, `empresa_id`) VALUES
(2, 'sa', 'armeina', b'1', 'sucursal armeniaaaa', 1),
(3, 's', 'barrio nuevo', b'1', 'ssssssssssssssssssssssssss', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `perfil` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `apellido`, `email`, `enabled`, `nombre`, `password`, `perfil`, `telefono`, `username`) VALUES
(1, 'ENRIQUE', 'nelson.karma2012@gmail.com', b'1', 'NELSON', '$2a$10$Sq8T1xneHzCdi1NjB5JaYODUCRZIGfpspiANd42iv/mpbvS9mDubS', 'foto.png', '7431-6963', 'nelson'),
(2, 'jorge', 'nelson.j@gmail.com', b'1', 'jorge', '$2a$10$6qUZ7hDsR1TwhdfSxk03Hu8iMtVnVLT7hA01pVZ2ZiVCoYMqSQnRy', 'default.png', '4255555', 'jorge'),
(3, 'jorg', 'nelso.j@gmail.com', b'1', 'jorg', '$2a$10$YdABUHtm0Mpi2LlKT82a1eBRvAzwgvquORwuAdldeQ95WBxRCeJY.', 'default.png', '425555', 'jorg'),
(4, 'jor', 'neso.j@gmail.com', b'1', 'jor', '$2a$10$mDRV0E0J21wW20JAGsE1bebkbfoKPaKn5z0pIB1.ium.MMLbpqQNO', 'default.png', '45555', 'jor'),
(7, 'sssj', 'nesssoj@gail.com', b'1', 'jss', '$2a$10$ZCC/9ClUKpbqBDN92riFPOup9tlXCIHz.jwkKFnkLK/kg9n/Gu5fq', 'default.png', '4ss55', 'jss');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `usuario_rol_id` bigint NOT NULL,
  `rol_rol_id` bigint DEFAULT NULL,
  `usuario_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`usuario_rol_id`, `rol_rol_id`, `usuario_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(7, 3, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `FK3ipviehq0ariwjp46o2ro19fx` (`puesto_laboral_id`),
  ADD KEY `FKjqovyah2j2nqlkrae0wpivbdv` (`sucursal_id`),
  ADD KEY `FKc52djicn9takjx994d8ktrxas` (`usuario_id`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id_evento`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `FKdapsphbstdaa3crxao2qrxa0k` (`category_id`),
  ADD KEY `FK22mk1r7jp96nvrtfle8bgs37f` (`evento_id_evento`),
  ADD KEY `FK33u0gko0kynxeupuxiiphn0ba` (`promocion_id_promocion`);

--
-- Indices de la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`id_promocion`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKctb8qvycnmf636wbb9n6t88ix` (`empresa_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`usuario_rol_id`),
  ADD KEY `FK7j1tyvjj1tv8gbq7n6f7efccc` (`rol_rol_id`),
  ADD KEY `FKktsemf1f6awjww4da0ocv4n32` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `company`
--
ALTER TABLE `company`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `id_evento` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `promocion`
--
ALTER TABLE `promocion`
  MODIFY `id_promocion` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  MODIFY `usuario_rol_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `FK3ipviehq0ariwjp46o2ro19fx` FOREIGN KEY (`puesto_laboral_id`) REFERENCES `puesto` (`id`),
  ADD CONSTRAINT `FKc52djicn9takjx994d8ktrxas` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `FKjqovyah2j2nqlkrae0wpivbdv` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursales` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `FK22mk1r7jp96nvrtfle8bgs37f` FOREIGN KEY (`evento_id_evento`) REFERENCES `evento` (`id_evento`),
  ADD CONSTRAINT `FK33u0gko0kynxeupuxiiphn0ba` FOREIGN KEY (`promocion_id_promocion`) REFERENCES `promocion` (`id_promocion`),
  ADD CONSTRAINT `FKdapsphbstdaa3crxao2qrxa0k` FOREIGN KEY (`category_id`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD CONSTRAINT `FKctb8qvycnmf636wbb9n6t88ix` FOREIGN KEY (`empresa_id`) REFERENCES `company` (`id`);

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `FK7j1tyvjj1tv8gbq7n6f7efccc` FOREIGN KEY (`rol_rol_id`) REFERENCES `roles` (`rol_id`),
  ADD CONSTRAINT `FKktsemf1f6awjww4da0ocv4n32` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
