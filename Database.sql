-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.5.8-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para flask_mvc
CREATE DATABASE IF NOT EXISTS `flask_mvc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `flask_mvc`;

-- Volcando estructura para tabla flask_mvc.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` mediumtext DEFAULT 'Ninguna',
  `precio_venta` varchar(255) NOT NULL,
  `precio_compra` varchar(255) NOT NULL,
  `ganancia` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL DEFAULT 'Activo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla flask_mvc.productos: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio_venta`, `precio_compra`, `ganancia`, `estado`) VALUES
	(25, 'Leche', 'Leche Entera Colanta', '6000', '2500', '140', 'Activo'),
	(26, 'Gaseosa', 'Gaseosa 1.5L Postobon', '3400', '1700', '100', 'Activo'),
	(27, 'Galleta', 'Galleta Wafer', '500', '100', '400', 'Activo'),
	(28, 'Arroz', 'Arroz Diana', '2000', '800', '150', 'Inactivo');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
