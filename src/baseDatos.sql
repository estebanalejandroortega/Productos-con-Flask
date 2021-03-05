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
CREATE DATABASE IF NOT EXISTS `flask_mvc` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `flask_mvc`;

-- Volcando estructura para tabla flask_mvc.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `Descripcion` varchar(100) NOT NULL DEFAULT '',
  `precioDeVenta` int(15) NOT NULL DEFAULT 0,
  `precioDeCompra` int(15) NOT NULL DEFAULT 0,
  `Estado` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla flask_mvc.productos: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`id`, `nombre`, `Descripcion`, `precioDeVenta`, `precioDeCompra`, `Estado`) VALUES
	(1, 'Leche', 'Leche Entera Colanta', 2500, 900, 'Activo'),
	(2, 'Gaseosa', 'Gaseosa 1.5L Postobon', 3400, 1700, 'Activo'),
	(3, 'Galleta', 'Galleta Wafer ', 500, 100, 'Inactivo'),
	(4, 'Arroz', 'Arroz Diana', 2000, 800, 'Inactivo'),
	(5, 'Papas', 'Papas Margarita', 1200, 300, 'Activo'),
	(6, 'Licuadora', 'Licuadora marca imusa', 60000, 25000, 'Activo'),
	(7, 'Azúcar', '1Kg Azúcar manuelita ', 2000, 900, 'Inactivo'),
	(8, 'Salsa de Tomate', 'Salsa de tomate Fruco 250gr', 4300, 1800, 'Activo');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
