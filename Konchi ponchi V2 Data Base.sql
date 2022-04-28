-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2022 a las 04:19:43
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kp_v1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id_det_pedido` int(11) NOT NULL,
  `id_pasteles` int(11) NOT NULL,
  `id_usuarios` int(11) NOT NULL,
  `id_pedidos` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id_det_pedido`, `id_pasteles`, `id_usuarios`, `id_pedidos`, `monto`, `id_sucursal`) VALUES
(1, 3, 1, 1, 460, 1),
(2, 6, 1, 2, 1140, 1),
(3, 9, 1, 3, 2040, 1),
(4, 14, 2, 4, 340, 2),
(5, 22, 2, 5, 500, 3),
(6, 21, 3, 6, 1140, 3),
(7, 20, 1, 7, 2010, 1),
(8, 15, 2, 8, 1140, 2),
(9, 23, 4, 9, 1940, 3),
(10, 16, 4, 10, 560, 3),
(11, 4, 1, 11, 1600, 1),
(12, 4, 5, 12, 3200, 3),
(13, 2, 5, 13, 400, 2),
(14, 1, 1, 14, 560, 1),
(15, 14, 1, 15, 340, 1),
(16, 12, 1, 16, 680, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_producto`
--

CREATE TABLE `detalle_producto` (
  `id_detalleP` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_producto`
--

INSERT INTO `detalle_producto` (`id_detalleP`, `id_producto`, `id_empleado`) VALUES
(1, 3, 3),
(2, 6, 3),
(3, 9, 3),
(4, 14, 3),
(5, 22, 3),
(6, 21, 3),
(7, 20, 3),
(8, 15, 3),
(9, 23, 3),
(10, 16, 3),
(11, 4, 3),
(12, 4, 3),
(13, 2, 3),
(14, 1, 3),
(15, 14, 3),
(16, 12, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `id_material` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `contenido` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_provedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`id_material`, `nombre`, `contenido`, `id_tipo`, `id_provedor`) VALUES
(1, 'harina silca', 50, 1, 1),
(2, 'harina malca', 30, 1, 1),
(3, 'chocolate blanco', 70, 3, 2),
(4, 'chocolate oscuro', 70, 3, 2),
(5, 'chocolate amargo', 50, 3, 2),
(6, 'cacao en polvo', 30, 1, 5),
(7, 'leche condensada', 40, 3, 6),
(8, 'leche condensada', 100, 3, 7),
(9, 'queso crema', 80, 3, 9),
(10, 'azucar de grano', 50, 1, 14),
(11, 'leche condensada', 60, 3, 8),
(12, 'leche condensada R', 60, 3, 10),
(13, 'chantilly', 10, 1, 11),
(14, 'huevo san juan', 360, 3, 13),
(15, 'azucar moscabada', 40, 1, 14),
(16, 'azucar glass', 50, 1, 14),
(17, 'caramelo liquido', 5, 2, 15),
(18, 'mantequilla sin sal', 50, 3, 16),
(19, 'mantequilla con sal', 50, 3, 16),
(20, 'leche deslactosada', 16, 2, 17),
(21, 'leche entera', 20, 2, 17),
(22, 'leche deslactosada', 20, 2, 18),
(23, 'leche entera', 16, 2, 18),
(24, 'durazno en almibar', 30, 3, 19),
(25, 'fresas en almibar', 25, 3, 20),
(26, 'piña en almibar', 25, 3, 20),
(27, 'mix en almibar', 20, 3, 19),
(28, 'granos de elote', 30, 3, 21),
(29, 'aceite de maiz', 20, 2, 22),
(30, 'aceite de girasol', 30, 3, 23),
(31, 'huevo rojo', 360, 3, 24),
(32, 'gelatina anis', 40, 3, 25),
(33, 'gelatina cristalina', 40, 3, 25),
(34, 'gelatina piña', 50, 3, 25),
(35, 'gelatina moras', 50, 3, 25),
(36, 'gelatina limon', 50, 3, 25),
(37, 'aceite de coco', 30, 1, 26),
(38, 'polvo para hornear', 60, 3, 28),
(39, 'fondant azul', 8, 1, 31),
(40, 'fondant chocolate', 8, 1, 31),
(41, 'fondant blanco', 7, 1, 31),
(42, 'fondant violeta', 7, 1, 31),
(43, 'fondant rosa', 8, 1, 30),
(44, 'betun vainilla', 16, 3, 30),
(45, 'betun chocolate', 16, 3, 30),
(46, 'betun cacahuate', 20, 3, 31),
(47, 'betun fresa', 15, 3, 31),
(48, 'crema pastelera', 30, 2, 30),
(49, 'crema para batir', 20, 2, 30),
(50, 'crema para batir', 30, 2, 32),
(51, 'crema pastelera', 20, 2, 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `id_inv` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_ingrediente` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inventarios`
--

INSERT INTO `inventarios` (`id_inv`, `id_sucursal`, `id_ingrediente`, `cantidad`) VALUES
(1, 1, 1, 30),
(2, 1, 2, 13),
(3, 1, 3, 16),
(4, 1, 4, 17),
(5, 1, 5, 22),
(6, 1, 6, 34),
(7, 1, 7, 32),
(8, 1, 8, 26),
(9, 1, 9, 55),
(10, 1, 10, 48),
(11, 1, 11, 55),
(12, 1, 12, 70),
(13, 1, 13, 64),
(14, 1, 14, 55),
(15, 1, 15, 48),
(16, 1, 16, 46),
(17, 1, 17, 64),
(18, 1, 18, 36),
(19, 1, 19, 64),
(20, 1, 20, 48),
(21, 1, 21, 12),
(22, 1, 22, 26),
(23, 1, 23, 48),
(24, 1, 24, 47),
(25, 1, 25, 45),
(26, 1, 26, 26),
(27, 1, 27, 47),
(28, 2, 1, 26),
(29, 2, 2, 24),
(30, 2, 3, 35),
(31, 2, 4, 12),
(32, 2, 5, 46),
(33, 2, 6, 38),
(34, 2, 7, 40),
(35, 2, 8, 24),
(36, 2, 9, 48),
(37, 2, 10, 13),
(38, 2, 11, 15),
(39, 2, 12, 45),
(40, 2, 13, 36),
(41, 2, 14, 45),
(42, 2, 15, 36),
(43, 2, 16, 15),
(44, 2, 17, 15),
(45, 2, 18, 10),
(46, 2, 19, 15),
(47, 2, 20, 30),
(48, 2, 21, 31),
(49, 2, 22, 20),
(50, 2, 23, 31),
(51, 2, 24, 14),
(52, 2, 25, 24),
(53, 2, 26, 25),
(54, 2, 27, 36),
(55, 3, 1, 45),
(56, 3, 2, 15),
(57, 3, 3, 16),
(58, 3, 4, 26),
(59, 3, 5, 48),
(60, 3, 6, 42),
(61, 3, 7, 25),
(62, 3, 8, 37),
(63, 3, 9, 64),
(64, 3, 10, 54),
(65, 3, 11, 41),
(66, 3, 12, 52),
(67, 3, 13, 15),
(68, 3, 14, 16),
(69, 3, 15, 45),
(70, 3, 16, 26),
(71, 3, 17, 15),
(72, 3, 18, 46),
(73, 3, 19, 54),
(74, 3, 20, 23),
(75, 3, 21, 26),
(76, 3, 22, 33),
(77, 3, 23, 32),
(78, 3, 24, 25),
(79, 3, 25, 15),
(80, 3, 26, 5),
(81, 3, 27, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicion`
--

CREATE TABLE `medicion` (
  `id_medidor` int(11) NOT NULL,
  `unidad_medida` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medicion`
--

INSERT INTO `medicion` (`id_medidor`, `unidad_medida`) VALUES
(1, 'Kilogramo'),
(2, 'Litros'),
(3, 'Piezas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasteles`
--

CREATE TABLE `pasteles` (
  `id_pastel` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `costo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pasteles`
--

INSERT INTO `pasteles` (`id_pastel`, `nombre`, `costo`) VALUES
(1, 'tarta de viajero', 560),
(2, 'spirit blossom', 400),
(3, 'pastel de azusa', 460),
(4, 'delicia de ganyu', 800),
(5, 'delicia deyor', 460),
(6, 'sweet revenge', 570),
(7, 'cherry blossom', 390),
(8, 'cherry mint', 470),
(9, 'tarta de lyra', 680),
(10, 'cheescake de lia', 700),
(11, 'el oro negro', 750),
(12, 'dolche bocado', 340),
(13, 'bocado pecorinne', 280),
(14, 'bon apetit ', 340),
(15, 'blue blossom', 480),
(16, '1001 hojas', 560),
(17, 'delicia especial', 340),
(18, 'lagrima de luna', 330),
(19, 'mentiras de celestia', 370),
(20, 'sunset shimmer', 670),
(21, 'apple pie', 570),
(22, 'legacy pie', 500),
(23, 'morgies club', 970);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `fecha_pedido` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `cantidad` int(3) NOT NULL,
  `id_pastel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `fecha_pedido`, `fecha_entrega`, `cantidad`, `id_pastel`) VALUES
(1, '2022-03-05', '2033-03-08', 1, 3),
(2, '2022-03-12', '2022-03-15', 2, 6),
(3, '2022-03-12', '2022-03-15', 3, 9),
(4, '2022-03-13', '2022-03-15', 1, 14),
(5, '2022-03-14', '2022-03-17', 1, 22),
(6, '2022-03-15', '2022-03-18', 2, 21),
(7, '2022-03-15', '2022-03-18', 3, 20),
(8, '2022-03-15', '2022-03-18', 3, 15),
(9, '2022-03-15', '2022-03-18', 2, 23),
(10, '2022-04-04', '2022-04-07', 1, 16),
(11, '2022-04-06', '2022-04-09', 2, 4),
(12, '2022-04-09', '2022-04-12', 3, 4),
(13, '2022-04-10', '2022-04-13', 1, 2),
(14, '2022-04-15', '2022-04-18', 1, 1),
(15, '2022-04-22', '2022-04-25', 1, 14),
(16, '2022-04-22', '2022-04-25', 2, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_provedor` int(11) NOT NULL,
  `nombre_compañia` varchar(40) NOT NULL,
  `nombre_contacto` varchar(40) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `estado` varchar(40) NOT NULL,
  `codigo_postal` varchar(40) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  `pagina_web` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_provedor`, `nombre_compañia`, `nombre_contacto`, `direccion`, `estado`, `codigo_postal`, `telefono`, `pagina_web`) VALUES
(1, 'molino el triunfo', 'benito camelo', 'av bocanegra 476', 'CDMX', '44606', '01 4840284', 'https://benoti.com/'),
(2, 'sicao', 'ludovico morales', 'zapopan delicias 1908', 'jalisco', '45180', '33 36091461', 'https://www.sicao.com/'),
(3, 'callebaut', 'janis  sykora', 'rua de san pedro 54', 'CDMX', '37795', '45 85143066', 'https://www.callebaut.com/'),
(4, 'van leer', 'julia pickett', 'Av Los llanos 17', 'edo. mexico', '27700', '77 2137 5477', 'https://www.vanleer.com/'),
(5, 'cacao barry', 'nora girouard', 'av marquez 23', 'oaxaca', '26311', '62 00345849', 'https://www.cacaobarry.com/'),
(6, 'la lechera', 'raul saltonado', 'la garita av 3', 'puebla', '87987', '13 25879007', 'https://www.lalechera.com/'),
(7, 'pronto', 'alejandro galicia', 'av hank gonzales', 'edo. mex', '45871', '49 87985468', 'https://www.pronto.com/'),
(8, 'nestle', 'cristopher lopez', 'av eje 8 ', 'nuevo leon', '56932', '67 45897560', 'https://www.nestle.com/'),
(9, 'philadelphia', 'juan alejandro', 'c 8 lomas', 'campeche', '78540', '49 78912068', 'https://www.philadelphia.com/'),
(10, 'carnation', 'jacob yezer', 'c quintana ro 4', 'jalisco', '87589', '78 89789587', 'https://www.carnation.com/'),
(11, 'chantilly', 'rafael rendon', 'av ixtle 34', 'michoacan', '78952', '35 49875468', 'https://www.chantilly.com/'),
(12, 'sorpresa', 'blanca garcia', 'av lopez portillo', 'chiapas', '48697', '45 87985468', 'https://www.sorpresa.com/'),
(13, 'huevo san juan', 'mateo alejandro', 'av san mateo 56', 'veracruz', '78542', '32 25648754', 'https://www.huevosanjuan.com/'),
(14, 'zulka', 'guadalupe espinoza', 'c siempre muerta 45', 'veracruz', '32121', '45 87985468', 'https://www.zulka.com/'),
(15, 'caramello ', 'giovani velazquez', 'av siempre dormida 34', 'puebla', '78954', '55 48975612', 'https://www.caramello.com/'),
(16, 'ibero', 'sarah cruz', 'av liberal fuentes 34', 'edo. mex', '78900', '56 58974589', 'https://www.ibero.com/'),
(17, 'lala', 'yetzelin sevilla', 'c llanero solitarios 4', 'CDMX', '55787', '32 02102150', 'https://www.lala.com/'),
(18, 'alpura', 'samantha delgado', 'av los llanos 65', 'sinaloa', '66987', '66 58974258', 'https://www.alpura.com/'),
(19, 'clemente  jaques', 'victor espiniza', 'av de los maestros 34', 'quintana roo', '98658', '45 45987456', 'https://www.clementejaques.com/'),
(20, 'great value', 'miriam karther', 'av 34 sanjudas', 'sn luis potosi', '07587', '12 88799564', 'https://www.greatvalue.com/'),
(21, 'la costeña', 'alexa sofia', 'c valentin napi 67', 'campeche', '10236', '45 45875684', 'https://www.lacosteña.com/'),
(22, 'nutriolli', 'ana vazquez', 'lamas carbajal 20', 'sonora', '12547', '02 13558795', 'https://www.nutriolli.com/'),
(23, 'capullo', 'lucia jimenez', 'tepextlauah av 34', 'sonora', '01234', '78 54832258', 'https://www.capullo.com/'),
(24, 'el gallo de oro', 'cristian fernando', 'c 16 septiembre 34', 'nuevo leon', '55879', '31 58798457', 'https://www.elgallodeoro.com/'),
(25, 'dgary', 'tyler nixon', 'paseo serena av 39', 'CDMX', '25458', '33 21549850', 'https://www.dgary.com/'),
(26, 'san lucas', 'nancy esmeralda', 'reyes catolicos 13', 'CDMX', '77896', '87 56984257', 'https://www.sanlucas.com/'),
(27, 'molina', 'miles morales', 'c andalucia 8', 'CDMX', '25870', '12 45698758', 'https://www.molina.com/'),
(28, 'royal', 'hernesto delgado', 'paseo atlantico 91', 'oaxaca', '15874', '47 85632048', 'https://www.royal.com/'),
(29, 'creamy supreme', 'avery lewis', 'c canarias 22', 'CDMX', '78965', '64 87958115', 'https://www.creamysupreme.com/'),
(30, 'rich & creamy', 'steven baker', 'herreria av 3', 'monterrey', '02358', '88 42015978', 'https://www.rich&creamy.com/'),
(31, 'sweet art', 'sharon gooding', 'hijuela de lojo 29', 'jalisco', '78654', '87 85693010', 'https://www.sweetart.com/'),
(32, 'sati ice', 'ryan sicard', 'villa longa 34', 'CDMX', '45872', '87 54896524', 'https://www.satice.com/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pw`
--

CREATE TABLE `pw` (
  `id_pw` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `contrasena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pw`
--

INSERT INTO `pw` (`id_pw`, `id_empleado`, `contrasena`) VALUES
(1, 1, 'contrasena1'),
(2, 7, 'password'),
(3, 6, 'contrasena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `descripcion`, `nivel`) VALUES
(1, 'administrador', 3),
(2, 'vendedora', 2),
(3, 'pastelero', 2),
(4, 'cliente', 1),
(5, 'decorador', 2),
(6, 'gerente', 3),
(7, 'jefe de almacen', 2),
(8, 'repartidor', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `estado`) VALUES
(1, 'CDMX'),
(2, 'nuevo leon'),
(3, 'jalisco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `ap_p` varchar(30) NOT NULL,
  `ap_m` varchar(30) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nombre`, `ap_p`, `ap_m`, `correo`, `id_rol`) VALUES
(1, 'rodrigo', 'cruz', 'chavez', 'rodrigo.cc_pasteleria@KonchiPonchi.com', 3),
(2, 'sergio', 'alvarez', 'carranza', 'sergio.ac_administracion@KonchiPonchi.com', 1),
(3, 'cesar', 'ortiz', 'torres', 'cesar.ot_vendedor@KonchiPonchi.com', 2),
(4, 'jose', 'ortiz', 'chaves', 'jose.oc_almacen@KonchiPonchi.com', 7),
(5, 'angel', 'velasco', 'rodriguez', 'angel.vr_gerente@KonchiPonchi.com', 6),
(6, 'gabriel', 'cortes', 'soles', 'gabrielsoler_321@hotmail.com', 4),
(7, 'violeta', 'jimenez', 'astra', 'violeta.ja_decoracion@KonchiPonchi.com', 5),
(8, 'ricardo', 'becerril', 'carranco', 'ricardo.bc_repartidor@KonchiPonchi.com', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usu_sucu`
--

CREATE TABLE `usu_sucu` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_sucur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usu_sucu`
--

INSERT INTO `usu_sucu` (`id`, `id_usuario`, `id_sucur`) VALUES
(1, 1, 1),
(2, 3, 3),
(3, 2, 1),
(4, 7, 3),
(5, 4, 3),
(6, 5, 1),
(7, 8, 2),
(8, 6, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id_det_pedido`),
  ADD KEY `id_pasteles` (`id_pasteles`),
  ADD KEY `id_usuarios` (`id_usuarios`),
  ADD KEY `id_pedidos` (`id_pedidos`),
  ADD KEY `id_sucursal` (`id_sucursal`);

--
-- Indices de la tabla `detalle_producto`
--
ALTER TABLE `detalle_producto`
  ADD PRIMARY KEY (`id_detalleP`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`id_material`),
  ADD KEY `tipo` (`id_tipo`),
  ADD KEY `id_provedor` (`id_provedor`);

--
-- Indices de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`id_inv`),
  ADD KEY `id_sucursal` (`id_sucursal`),
  ADD KEY `id_ingrediente` (`id_ingrediente`);

--
-- Indices de la tabla `medicion`
--
ALTER TABLE `medicion`
  ADD PRIMARY KEY (`id_medidor`);

--
-- Indices de la tabla `pasteles`
--
ALTER TABLE `pasteles`
  ADD PRIMARY KEY (`id_pastel`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_pastel` (`id_pastel`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_provedor`);

--
-- Indices de la tabla `pw`
--
ALTER TABLE `pw`
  ADD PRIMARY KEY (`id_pw`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `usu_sucu`
--
ALTER TABLE `usu_sucu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_sucur` (`id_sucur`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id_det_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `detalle_producto`
--
ALTER TABLE `detalle_producto`
  MODIFY `id_detalleP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `id_material` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  MODIFY `id_inv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `medicion`
--
ALTER TABLE `medicion`
  MODIFY `id_medidor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pasteles`
--
ALTER TABLE `pasteles`
  MODIFY `id_pastel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_provedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `pw`
--
ALTER TABLE `pw`
  MODIFY `id_pw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usu_sucu`
--
ALTER TABLE `usu_sucu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`id_pasteles`) REFERENCES `pasteles` (`id_pastel`),
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`),
  ADD CONSTRAINT `detalle_pedido_ibfk_3` FOREIGN KEY (`id_pedidos`) REFERENCES `pedidos` (`id_pedido`),
  ADD CONSTRAINT `detalle_pedido_ibfk_4` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursales` (`id`);

--
-- Filtros para la tabla `detalle_producto`
--
ALTER TABLE `detalle_producto`
  ADD CONSTRAINT `detalle_producto_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `pasteles` (`id_pastel`),
  ADD CONSTRAINT `detalle_producto_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `usuarios` (`id_usuarios`);

--
-- Filtros para la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD CONSTRAINT `ingredientes_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `medicion` (`id_medidor`),
  ADD CONSTRAINT `ingredientes_ibfk_2` FOREIGN KEY (`id_provedor`) REFERENCES `proveedores` (`id_provedor`);

--
-- Filtros para la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD CONSTRAINT `inventarios_ibfk_1` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursales` (`id`),
  ADD CONSTRAINT `inventarios_ibfk_2` FOREIGN KEY (`id_ingrediente`) REFERENCES `ingredientes` (`id_material`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_pastel`) REFERENCES `pasteles` (`id_pastel`);

--
-- Filtros para la tabla `pw`
--
ALTER TABLE `pw`
  ADD CONSTRAINT `pw_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `usuarios` (`id_usuarios`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);

--
-- Filtros para la tabla `usu_sucu`
--
ALTER TABLE `usu_sucu`
  ADD CONSTRAINT `usu_sucu_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`),
  ADD CONSTRAINT `usu_sucu_ibfk_2` FOREIGN KEY (`id_sucur`) REFERENCES `sucursales` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
