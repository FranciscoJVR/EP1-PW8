-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-01-2018 a las 07:16:11
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pizzeria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Pizzas', 'Pizzas al estilo italiano'),
(2, 'Pastas', 'Pastas al estilo italiano'),
(3, 'Ensaladas', 'Ensaladas al estilo italiano'),
(4, 'Bebidas', 'Bebidas al estilo italiano'),
(5, 'postres', 'posttres'),
(6, 'Bebidas exóticas', 'Gran variedad de bebidas internaciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `direccion`, `telefono`) VALUES
(1, 'Miguel', 'Av. Roble verde #15 col. Delfines', NULL),
(2, 'miguel', 'upemor', '123456789'),
(3, 'miguel', 'upemor', '123456789'),
(4, 'miguel', 'upemor', '123456789'),
(5, 'miguel', 'upemor', '123456789'),
(6, 'miguel', 'upemor', '123456789'),
(7, 'miguel', 'upemor', '123456789'),
(8, 'miguel', 'upemor', '123456789'),
(9, 'miguel', 'upemor', '123456789'),
(10, 'miguel', 'upemor', '123456789'),
(11, 'miguel', 'upemor', '123456789'),
(12, 'miguel1', 'upemor1', '1234567891'),
(13, 'miguel1', 'upemor1', '1234567891'),
(14, 'miguel1', 'upemor1', '1234567891'),
(15, 'miguel1', 'upemor1', '1234567891'),
(16, 'John', 'Av. Justicia #4', '7775144126');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `fecha` datetime(6) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `estado` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `fecha`, `cliente_id`, `estado`) VALUES
(1, '2017-05-18 16:04:43.000000', 1, 'Pendiente'),
(2, '2017-05-29 08:27:40.000000', 4, 'Pendiente'),
(3, '2017-05-29 08:27:57.000000', 5, 'Pendiente'),
(4, '2017-05-29 08:28:31.000000', 6, 'Pendiente'),
(5, '2017-05-29 08:35:24.000000', 7, 'Pendiente'),
(6, '2017-05-29 08:35:55.000000', 8, 'Pendiente'),
(7, '2017-05-29 08:36:21.000000', 9, 'Pendiente'),
(8, '2017-05-29 08:36:46.000000', 10, 'Pendiente'),
(9, '2017-05-29 08:37:12.000000', 11, 'Pendiente'),
(10, '2017-05-29 08:37:36.000000', 12, 'Pendiente'),
(11, '2017-05-29 08:38:30.000000', 13, 'Pendiente'),
(12, '2017-05-29 08:40:06.000000', 14, 'Pendiente'),
(13, '2017-05-29 08:40:24.000000', 15, 'Pendiente'),
(14, '2017-11-25 18:23:36.000000', 1, 'pendiente'),
(15, '2017-11-25 18:26:27.000000', 1, 'pendiente'),
(16, '2017-11-25 18:29:02.000000', 1, 'pendiente'),
(17, '2017-11-25 18:30:11.000000', 1, 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_producto`
--

CREATE TABLE `pedido_producto` (
  `id` int(11) NOT NULL,
  `pedido_id` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedido_producto`
--

INSERT INTO `pedido_producto` (`id`, `pedido_id`, `producto_id`, `cantidad`) VALUES
(1, 1, 1, 3),
(2, 1, 3, 1),
(3, 12, 1, 1),
(4, 13, 1, 1),
(5, 14, 10, 2),
(6, 14, 11, 1),
(7, 15, 3, 11),
(8, 15, 11, 3),
(9, 16, 1, 1),
(10, 17, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` text,
  `precio` decimal(6,2) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `imagen` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `categoria_id`, `imagen`) VALUES
(1, 'Romana', 'Tomate, mozzarella, anchoas y orégano', '150.00', 1, NULL),
(2, 'Capricciosa', 'Tomate, mozzarella, jamon cocido, champiñon, huevo escalfado, gambas, aceitunas negras, orégano', '190.00', 1, NULL),
(3, 'Cuatro Estaciones', 'Tomate, mozzarella, jamón cocido, champiñón, bacon, atún, alcachofas, alcaparras, aceitunas y orégano.', '230.00', 4, NULL),
(4, 'Ensalada Finas Hierbas', 'Ensalada con salmón a las finas hierbas', '100.00', 3, NULL),
(5, 'Marinera', 'Tomate, mozzarella, atún, berberechos, mejillones, gambas, anchoas, alcaparras, aceitunas y orégano.', '199.00', 1, NULL),
(6, 'Vegetariana', 'Tomate, mozzarella, champiñón, espárragos, alcachofas, alcaparras, pimiento, aceitunas y orégano.', '199.00', 1, NULL),
(7, 'Cuatro Quesos', 'Tomate, mozzarella, cabrales, maasdam, gouda y orégano.', '199.00', 1, NULL),
(8, 'Tropical', 'Tomate, mozzarella, jamón cocido, piña, espárragos, pimiento, emmental y orégano.', '180.00', 1, NULL),
(9, 'Boloñesa', 'Salsa boloñesa, mozzarella, orégano y calabacín.', '195.00', 1, NULL),
(10, 'Pizza Barbacoa', 'Salsa barbacoa, Tomate, Bacon , Ternera, Pollo, Mozzarella y oregano', '150.00', 1, NULL),
(11, 'Pizza Carbonara', 'Salsa Carbonara, bacon , champiñon , cebolla, pimenta negra , mozzarella, nata y oregano', '200.00', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Miguel Ángel', 'Rea', 'mrea@upemor.edu.mx', 'ce5ca673d13b36118d54a7cf13aeb0ca012383bf771e713421b4d1fd841f539a', NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_cliente_idx` (`cliente_id`);

--
-- Indices de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pproducto_producto_idx` (`producto_id`),
  ADD KEY `pproducto_pedido_idx` (`pedido_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_categoria_idx` (`categoria_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedido_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  ADD CONSTRAINT `pproducto_pedido` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pproducto_producto` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `producto_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
