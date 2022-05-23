-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2022 a las 01:30:07
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `country` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` varchar(400) NOT NULL,
  `zip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `address`
--

INSERT INTO `address` (`id`, `userid`, `country`, `region`, `city`, `address`, `zip`) VALUES
(1, 1, 'Mexico', 'Jalisco', 'Guadalajara', 'Zaragoza #343 Haciendas', 80923),
(2, 2, 'Mexico', 'Aguascalientes', 'Aguascalientes', 'Av. Insurgentes #454 Arboledas', 23710),
(3, 3, 'Mexico', 'Sinaloa\r\n', 'Michoacan', 'Calle Altamira #6767', 5435345),
(4, 4, 'Mexico', 'Mazatlan', 'Sinaloa', 'Av de los maestros #499', 304434),
(5, 5, 'Mexico', 'Leon', 'Guanajuato', 'Calle Mirador #89478', 432423),
(6, 6, 'Estados Unidos', 'Texas', 'Dallas', 'Melbourne St. #2344A', 999596),
(7, 7, 'Mexico', 'Guadalajara ', 'Jalisco', 'Av Fundcion #4900', 34934),
(8, 8, 'Mexico', 'Aguascalientes', 'Aguascalientes', 'Congreso de chilpancingo #813 Morelos 1', 20298),
(9, 9, 'Mexico', 'Mazatlan', 'Sinaloa', 'Los altos #4565', 3044345),
(10, 10, 'Mexico', 'Aguascalientes', 'Aguascalientes', 'Artillero Mier 384', 20298),
(11, 11, 'Mexico', 'Guadalajara', 'Jalisco', 'Av Pedro Parga #32432', 34934),
(12, 12, 'Mexico', 'Aguascalientes', 'Aguascalientes', 'Hacienda de chapingo 104 Real de Haciendas', 20196),
(13, 13, 'Mexico', 'Sinaloa', 'Mazatlan', 'Los altos #4565', 3044345),
(14, 14, 'Mexico', 'Sinaloa', 'Michoacan', 'Calle Altamira #4534', 5435),
(15, 15, 'Mexico', 'Leon', 'Guanajuato', 'Calle Mirador #8947', 234353),
(16, 16, 'Mexico', 'Guadalajara', 'Jalisco', 'Av Pedro #32A', 242452),
(17, 17, 'Mexico', 'Guadalajara', 'Jalisco', 'Av Convencion #32432', 4645785),
(18, 18, 'Mexico', 'Aguascalientes', 'Aguascalientes', 'Av Tecnologico #2342', 45454634),
(19, 19, 'Mexico', 'Guadalajara', 'Jalisco', 'Av Convencion #324', 12324),
(20, 20, 'Mexico', 'Sinaloa', 'Michoacan', 'Calle Altamira #6767', 5543);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Ropa de mujer'),
(2, 'Ropa de hombre'),
(3, 'Cosplays de hombre'),
(4, 'Cosplays de mujer'),
(5, 'Ropa formal de mujer'),
(6, 'Ropa deportiva'),
(7, 'Trajes de baño'),
(8, 'Casual'),
(9, 'Pantalones para hombre'),
(10, 'Pantalones de mujer'),
(11, 'Chaqueta de cuero de hombre'),
(12, 'Chaqueta de cuero de mujer'),
(13, 'Chaqueta de vinipiel de hombre'),
(14, 'Chaqueta de vinipiel de mujer'),
(15, 'Trajes'),
(16, 'Conjuntos'),
(17, 'Camisas de vestir de hombre'),
(18, 'Faldas'),
(19, 'Vestidos'),
(20, 'Conjunto deportivo de mujer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `last purchase orders`
--

CREATE TABLE `last purchase orders` (
  `id` int(11) NOT NULL,
  `transaction` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `method` varchar(50) NOT NULL,
  `sale date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `Departure date` date NOT NULL,
  `Delivery time` text NOT NULL,
  `Deadline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `last purchase orders`
--

INSERT INTO `last purchase orders` (`id`, `transaction`, `productid`, `userid`, `Status`, `method`, `sale date`, `amount`, `Departure date`, `Delivery time`, `Deadline`) VALUES
(1, 99, 1, 1, 'Liberada', 'Envio', '2022-05-01', 100, '2022-06-25', '1 Hora', '2022-07-15'),
(2, 100, 2, 2, 'En proceso', 'Envio', '2022-05-07', 2, '2022-06-04', '2 Hora', '2022-05-28'),
(3, 78, 3, 3, 'Rechazada', 'Envio', '2022-07-15', 100, '2022-05-31', '3 horas', '2022-05-31'),
(4, 99, 4, 4, 'Pendiente', 'Envio', '2022-06-17', 2, '2022-05-20', '8 horas', '2022-05-21'),
(5, 79, 5, 5, 'Liberada', 'Envio', '2022-05-21', 100, '2022-05-28', '9 horas', '2022-05-31'),
(6, 99, 6, 6, 'En proceso', 'Envio', '2022-05-31', 2, '2022-06-01', '5 horas', '2022-06-09'),
(7, 34, 7, 7, 'En proceso', 'Envio', '2022-05-21', 100, '2022-05-21', '3 horas', '2022-05-24'),
(8, 89, 8, 8, 'Rechazada', 'Envio', '2022-05-31', 20, '2022-06-01', '1 hora', '2022-06-03'),
(9, 15, 9, 9, 'Liberada', 'Envio', '2022-07-02', 19, '2022-07-10', '10 horas', '2022-07-14'),
(10, 99, 10, 10, 'Pendiente', 'Envio', '2022-05-13', 21, '2022-05-20', '5 horas', '2022-05-27'),
(11, 95, 11, 11, 'Rechazada', 'Envio', '2022-05-28', 100, '2022-05-31', '6 horas', '2022-06-30'),
(12, 79, 12, 12, 'En proceso', 'Envio', '2022-05-31', 99, '2022-05-26', '7 horas', '2022-05-30'),
(13, 78, 13, 13, 'Rechazada', 'Envio', '2022-06-18', 100, '2022-07-16', '7 horas', '2022-07-18'),
(14, 99, 14, 14, 'Liberada', 'Envio', '2022-06-30', 20, '2022-07-01', '4 horas', '2022-07-06'),
(15, 95, 15, 15, 'En proceso', 'Envio', '2022-05-27', 100, '2022-06-02', '3 horas', '2022-06-04'),
(16, 100, 16, 16, 'Rechazada', 'Envio', '2022-06-17', 21, '2022-06-24', '8 horas', '2022-06-27'),
(17, 95, 17, 17, 'Pendiente', 'Envio', '2022-05-28', 100, '2022-05-31', '10 horas', '2022-06-03'),
(18, 89, 18, 18, 'Liberada', 'Envio', '2022-06-17', 99, '2022-06-24', '7 horas', '2022-06-30'),
(19, 95, 19, 19, 'Liberada', 'Envio', '2022-05-25', 23, '2022-05-31', '5 horas', '2022-06-03'),
(20, 99, 20, 20, 'En proceso', 'Envio', '2022-05-28', 100, '2022-05-31', '6 horas', '2022-06-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product name` varchar(255) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `review` varchar(500) NOT NULL,
  `registration date` date NOT NULL,
  `categoryid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `product name`, `price`, `stock`, `Status`, `review`, `registration date`, `categoryid`) VALUES
(1, 'Bikini completo', '99.00', 2, 'Liberada', 'Llamativo, con estampado hermoso, de varios colores.', '2022-06-17', 1),
(2, 'Short estampado de hombre', '34.00', 5, 'Pendiente', 'Variedad de colores y de estampados.', '2022-05-10', 2),
(3, 'Cosplay de Spider-Man', '98.00', 9, 'En proceso', 'Estampado de la araña, excelentes colores, super comodo', '2022-04-18', 3),
(4, 'Cosplay de hada', '77.00', 10, 'Rechazada', 'Trae sus alas, su corona, muy bonito, llamativo.', '2022-07-14', 4),
(5, 'Ropa formal para mujer', '99.00', 15, 'Liberada', 'Elegante, saco, pantalon, blusa. ', '2022-04-03', 5),
(6, 'Pants para hombre y mujer', '99.00', 20, 'En proceso', 'Variedad de colores, estampados, largos, cortos, etc.', '2022-07-15', 6),
(7, 'Trajes de baño para hombre y mujer', '77.00', 100, 'En proceso', 'Variedad de trajes de baño, conjuntos, diseños, colores, etc.', '2022-03-14', 7),
(8, 'Ropa casual para hombre y mujer', '74.00', 0, 'Rechazada', 'Saco, pantalon de mezclilla, camisa, zapato, etc, muy elegante.', '2022-04-12', 8),
(9, 'Pantalones de mezclilla, de cuero, piel, etc.', '89.00', 20, 'En proceso', 'Comodos, Elegantes, Llamativos, Diferentes colores, etc.', '2022-05-09', 9),
(10, 'Pantalones de mujer', '99.00', 10, 'Pendiente', 'Formal,de vestir, estampados, colores, etc.', '2022-06-17', 10),
(11, 'Chaqueta de cuero.', '100.00', 100, 'En proceso', 'Super comodos, de diferentes tamaños, colores, etc.', '2022-05-10', 11),
(12, 'Chaqueta de cuero de mujer', '99.00', 100, 'En proceso', 'Super comodos, de diferentes tamaños, colores, etc.', '2022-05-26', 12),
(13, 'Chaqueta de vinipiel de hombre', '100.00', 100, 'Liberada', 'Super comodos, de diferentes tamaños, colores, etc.', '2022-05-17', 13),
(14, 'Chaqueta de vinipiel de mujer', '99.00', 15, 'Liberada', 'Super comodos, de diferentes tamaños, colores, etc.', '2022-05-31', 14),
(15, 'Trajes ', '100.00', 1, 'Liberada', 'Trajes muy elegantes, de fiesta, llamativos, diseñadores unicos, etc.', '2022-06-17', 15),
(16, 'Conjuntos', '99.00', 20, 'En proceso', 'Conjuntos de hombre, mujer, diferentes diseños, colores, etc.', '2022-04-03', 16),
(17, 'Camisas de vestir de Hombre', '100.00', 22, 'Pendiente', 'Camisas de vestir de diferentes tamñanos, colores, ', '2022-03-22', 17),
(18, 'Faldas', '95.00', 100, 'En proceso', 'Faldas largas, cortas, con cierre, con botones, de diferentes tamaños, colores, diseños, etc.', '2022-03-13', 18),
(19, 'Vestidos', '99.00', 100, 'Liberada', 'Vestidos de noche, de dia, graduación, fiestas de jala, diseñadores unicos, diferentes tamaños, colores, etc', '2022-05-28', 19),
(20, 'Conjuntos deportivo de mujer', '78.00', 10, 'En proceso', 'Diferentes estilos, colores, diseños, tamaños, etc.', '2022-07-14', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `review` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `review`
--

INSERT INTO `review` (`id`, `userid`, `productid`, `review`) VALUES
(1, 1, 1, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(2, 2, 2, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(3, 3, 3, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(4, 4, 4, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(5, 5, 5, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(6, 6, 6, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(7, 7, 7, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(8, 8, 8, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(9, 9, 9, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(10, 10, 10, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(11, 11, 11, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(12, 12, 12, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(13, 13, 13, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(14, 14, 14, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(15, 15, 15, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(16, 16, 16, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(17, 17, 17, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(18, 18, 18, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(19, 19, 19, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.'),
(20, 20, 20, 'Me gusto el trato, el servicio que ofrecen, la categoria que tienen sobre los productos que tienen, los buenos precios que manejan.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `transaction` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `method` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `Address ID` int(11) NOT NULL,
  `time` varchar(50) DEFAULT NULL,
  `medium_postal` varchar(50) DEFAULT NULL,
  `state` varchar(20) NOT NULL,
  `complete` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sale`
--

INSERT INTO `sale` (`id`, `code`, `transaction`, `userid`, `productid`, `method`, `amount`, `Address ID`, `time`, `medium_postal`, `state`, `complete`) VALUES
(1, '01960', '99,00', 1, 1, 'Envio', 100, 1, '2 horas', '20298', 'Mexico', '99.00'),
(2, '01959', '100,00', 2, 2, 'Envio', 2, 2, '1 hora', '20292', 'Mexico', '100.00'),
(3, '01958', '89,00', 3, 3, 'Envio', 44, 3, '5 horas', '20288', 'Mexico', '89.00'),
(4, '01957', '100,00', 4, 4, 'Envio', 99, 4, '1 hora', '20290', 'Mexico', '100.00'),
(5, '01956', '99,00', 5, 5, 'Envio', 23, 5, '2 horas', '20255', 'Mexico', '99.00'),
(6, '01955', '87,00', 6, 6, 'Envio', 99, 6, '1 hora', '20292', 'Mexico', '87.00'),
(7, '01954', '34,00', 7, 7, 'Envio', 44, 7, '2 horas', '20200', 'Mexico', '34.00'),
(8, '01953', '98,00', 8, 8, 'Envio', 100, 8, '1 hora', '20201', 'Mexico', '98.00'),
(9, '01952', '56,00', 9, 9, 'Envio', 19, 9, '2 horas', '20205', 'Mexico', '56.00'),
(10, '01951', '90,00', 10, 10, 'Envio', 100, 10, '5 horas', '20299', 'Mexico', '90.00'),
(11, '01950', '99,00', 11, 11, 'Envio', 19, 11, '5 horas', '20209', 'Mexico', '99.00'),
(12, '01949', '100,00', 12, 12, 'Envio', 100, 12, '5 horas', '20220', 'Mexico', '100.00'),
(13, '01948', '98,00', 13, 13, 'Envio', 19, 13, '2 horas', '20233', 'Mexico', '98.00'),
(14, '01947', '95,00', 14, 14, 'Envio', 2, 14, '1 hora', '20280', 'Mexico', '95.00'),
(15, '01946', '100,00', 15, 15, 'Envio', 19, 15, '2 horas', '20209', 'Mexico', '100.00'),
(16, '01945', '90,00', 16, 16, 'Envio', 21, 16, '5 horas', '20281', 'Mexico', '90.00'),
(17, '01944', '100,00', 17, 17, 'Envio', 44, 17, '2 horas', '20289', 'Mexico', '100.00'),
(18, '01943', '90,00', 18, 18, 'Envio', 20, 18, '1 hora', '20240', 'Mexico', '90.00'),
(19, '01942', '100,00', 19, 19, 'Envio', 19, 19, '5 horas', '20259', 'Mexico', '100.00'),
(20, '01941', '99,99', 20, 20, 'Envio', 100, 20, '5 horas', '20230', 'Mexico', '99.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shopping cart`
--

CREATE TABLE `shopping cart` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(400) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `Payment methods` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `shopping cart`
--

INSERT INTO `shopping cart` (`id`, `productid`, `userid`, `amount`, `description`, `price`, `Payment methods`) VALUES
(1, 1, 1, 100, 'Excelente servicio, me gusta su manera de atender a la gente', '99.00', 'Trajeta'),
(2, 2, 2, 2, 'Excelente servicio, me gusta su manera de atender a la gente', '100.00', 'Efectivo'),
(3, 3, 3, 19, 'Excelente servicio, me gusta su manera de atender a la gente', '99.00', 'Tarjeta'),
(4, 4, 4, 100, 'Excelente servicio, me gusta su manera de atender a la gente', '100.00', 'Efectivo'),
(5, 5, 5, 99, 'Excelente servicio, me gusta su manera de atender a la gente', '99.00', 'Efectivo'),
(6, 6, 6, 21, 'Excelente servicio, me gusta su manera de atender a la gente', '78.00', 'Tarjeta'),
(7, 7, 7, 23, 'Excelente servicio, me gusta su manera de atender a la gente', '89.00', 'Tarjeta'),
(8, 8, 8, 77, 'Excelente servicio, me gusta su manera de atender a la gente', '34.50', 'Efectivo'),
(9, 9, 9, 78, 'Excelente servicio, me gusta su manera de atender a la gente', '74.00', 'Efectivo'),
(10, 10, 10, 20, 'Excelente servicio, me gusta su manera de atender a la gente', '100.00', 'Tarjeta'),
(11, 11, 11, 99, 'Excelente servicio, me gusta su manera de atender a la gente', '77.00', 'Mercado pago'),
(12, 12, 12, 77, 'Excelente servicio, me gusta su manera de atender a la gente', '99.00', 'Mercado pago'),
(13, 13, 13, 100, 'Excelente servicio, me gusta su manera de atender a la gente', '99.00', 'Tarjeta'),
(14, 14, 14, 100, 'Excelente servicio, me gusta su manera de atender a la gente', '34.50', 'Efectivo'),
(15, 15, 15, 99, 'Excelente servicio, me gusta su manera de atender a la gente', '89.00', 'Mercado pago'),
(16, 16, 16, 20, 'Excelente servicio, me gusta su manera de atender a la gente', '100.00', 'Efectivo'),
(17, 17, 17, 44, 'Excelente servicio, me gusta su manera de atender a la gente', '99.00', 'Tarjeta'),
(18, 18, 18, 77, 'Excelente servicio, me gusta su manera de atender a la gente', '78.00', 'Efectivo'),
(19, 19, 19, 30, 'Excelente servicio, me gusta su manera de atender a la gente', '77.00', 'Mercado pago'),
(20, 20, 20, 20, 'Excelente servicio, me gusta su manera de atender a la gente', '100.00', 'Mercado pago');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `Address` varchar(400) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `registration date` date NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `Address`, `email`, `Status`, `phone`, `registration date`, `password`) VALUES
(1, 'David', 'La españa #122', 'david_23@gamil.com', 'liberado', '4491234560', '2022-04-30', 'david1222'),
(2, 'Maria', 'Lomas de la vista', 'maria.linda82@hotmail.com', 'Rechazada', '4492345069', '2022-05-01', '12345maria'),
(3, 'Juan Manuel', 'Zona militar #212', 'Manuelito123@outlook.com', 'En proceso', '4491872830', '2022-03-15', 'juanmanuel1222'),
(4, 'Pedro Aguirre', 'La dama dorada #190', 'san_pedro_39@gamil.com', 'Pendiente', '4490873456', '2022-02-28', '12345678910'),
(5, 'Maria Jose', 'La quinta avenida #145', 'maria.jose.33@hotmail.com', 'Liberada', '4495756439', '2022-06-02', 'maria_jose56'),
(6, 'Francisco Sanchez', 'Lopez mateos', 'sanchezfrank.34@gmail.com', 'En proceso', '4498772237', '2022-07-13', 'sanchezfrancisco123'),
(7, 'Mariana Limon', 'Avenida los maestros #467 int A', 'limon.mariana.estrellita@outlook.com', 'En proceso', '4491112435', '2022-05-31', '0987654321'),
(8, 'Julian Figueroa', 'La quinta estación #445', 'figue_julian@hotmail.com', 'Rechazado', '4491234566', '2022-06-18', 'JULIAN_234FI@outlook.com'),
(9, 'Enrique Guzmán', 'Isaac diaz de leon #22', 'guzmán_342@gamil.com', 'Pendiente', '4497865744', '2022-05-20', 'guzmen2231'),
(10, 'Victor', 'J. Guadalupe Zamarripa #265', 'victor.44@gmail.com', 'En proceso', '4492348588', '2022-03-20', '12345@44'),
(11, 'Margarita', 'Emiliano Zapata', 'magoisa99@gmail.com', 'Liberada', '4491262924', '2022-06-15', 'margarita991211'),
(12, 'Esteban Rodriguez', 'LA CALLE JUAREZ', 'esteban_rodriguez65@gmail.com', 'Rechazado', '4491123456', '2022-05-01', '4491123456esteban'),
(13, 'Jose Luis', 'Benito Juarez', 'luis_22@gmail.com', 'Liberado', '4498784940', '2022-06-28', '123354'),
(14, 'Jose Pablo', 'Héroe de Nacozari ', 'pablo.jose.33@outlook.com', 'Rechazado', '4496754833', '2022-03-06', 'gamer345jose'),
(15, 'Maria Victoria', 'Alvaro Obregón #234', 'victorialinda@hotmail.com', 'Pendiente', '4495556453', '2022-01-03', 'Ma_victoria33@gmail.com'),
(16, 'Luis Felipe', '5 de Mayo', 'villanueva.luis@hotmail.com', 'Rechazado', '4491023456', '2022-03-14', '123456789'),
(17, 'Gerardo Villalpando', 'Convento de San Diego', 'gerar_villa97@gmail.com', 'En proceso', '4494186404', '2022-05-23', '19970311villa'),
(18, 'Teresa de Jesus', 'Mercado Terán', 'tere_jesus_22@hotmail.com', 'En proceso', '4492205442', '2022-04-24', '123456789.'),
(19, 'Juan Zalaz', 'Callejón de la Indita', 'juan.zalaz@gmail.com', 'Liberado', '4483899319', '2022-03-31', '74734172693683296'),
(20, 'Amalia Isabel', 'Mariano Hidalgo #269', 'a.isa@gmail.com', 'En proceso', '4491122773', '2022-06-16', 'amaliaisabel1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`userid`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `last purchase orders`
--
ALTER TABLE `last purchase orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product` (`productid`),
  ADD KEY `user` (`userid`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryid` (`categoryid`);

--
-- Indices de la tabla `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`userid`),
  ADD KEY `product` (`productid`);

--
-- Indices de la tabla `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product` (`productid`),
  ADD KEY `user` (`userid`),
  ADD KEY `address` (`Address ID`);

--
-- Indices de la tabla `shopping cart`
--
ALTER TABLE `shopping cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product` (`productid`),
  ADD KEY `user` (`userid`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `last purchase orders`
--
ALTER TABLE `last purchase orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `shopping cart`
--
ALTER TABLE `shopping cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `last purchase orders`
--
ALTER TABLE `last purchase orders`
  ADD CONSTRAINT `last purchase orders_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `last purchase orders_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `shopping cart`
--
ALTER TABLE `shopping cart`
  ADD CONSTRAINT `shopping cart_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shopping cart_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
