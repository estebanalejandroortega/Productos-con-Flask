CREATE DATABASE IF NOT EXISTS `flask_mvc`

USE `flask_mvc`;

CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `Descripcion` varchar(100) NOT NULL DEFAULT '',
  `precioDeVenta` int(15) NOT NULL DEFAULT 0,
  `precioDeCompra` int(15) NOT NULL DEFAULT 0,
  `Estado` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO `productos` (`id`, `nombre`, `Descripcion`, `precioDeVenta`, `precioDeCompra`, `Estado`) VALUES
	(1, 'Leche', 'Leche Entera Colanta', 2500, 900, 'Activo'),
	(2, 'Gaseosa', 'Gaseosa 1.5L Postobon', 3400, 1700, 'Activo'),
	(3, 'Galleta', 'Galleta Wafer ', 500, 100, 'Inactivo'),
	(4, 'Arroz', 'Arroz Diana', 2000, 800, 'Inactivo'),
	(5, 'Papas', 'Papas Margarita', 1200, 300, 'Activo'),
	(6, 'Licuadora', 'Licuadora marca imusa', 60000, 25000, 'Activo'),
	(7, 'Azúcar', '1Kg Azúcar manuelita ', 2000, 900, 'Inactivo'),
	(8, 'Salsa de Tomate', 'Salsa de tomate Fruco 250gr', 4300, 1800, 'Activo');