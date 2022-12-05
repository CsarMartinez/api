-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2022 a las 05:45:54
-- Versión del servidor: 10.10.2-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `productos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(10) UNSIGNED NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `precio_producto` float(18,2) UNSIGNED NOT NULL,
  `imagen_producto` varchar(255) DEFAULT NULL,
  `descripcion_producto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre_producto`, `precio_producto`, `imagen_producto`, `descripcion_producto`) VALUES
(1, 'PINTURA BEREL VINIL ACRÍLICA BASE NEUTRA 19 L', 2195.00, 'berel19l.jpg', 'Pintura base neutra Berelinte Berel de 19 L, brinda un recubrimiento para superficies de yeso, cemento, mortero, entre otros; tanto en interiores como en exteriores. Hecha con vinil y acrílico que le brinda resistencia al lavado y dura hasta 7 años.'),
(2, 'PINTURA BEHR PREMIUM PLUS MATE BASE BLANCO ULTRA PURO 18.9 L', 3945.00, 'BEHR.jpg', 'Pintura 100% acrílica Behr Premium Plus, entintable en colores claros, brinda un recubrimiento especial para superficies exteriores como revestimiento de madera, vinilo y de fibra de cemento como mortero, ladrillo, mampostería y enrejado; dejando en ellas un acabado mate, ideal para disimular imperfecciones. Su fórmula ecológica, tiene cero niveles de COV y bajo olor, es resistente a la humedad y rayos UV, además de ser lavable con agua y jabón. Cuenta con secado rápido 2 horas al tacto. Su presentación es en cubeta de 18.9 L que brinda un rendimiento de 116 a 186 m2 con excelente cobertura. Para su aplicación con brocha o rodillo se debe utilizar directamente, sin diluir.'),
(3, 'SELLADOR VINÍLICO 19 L', 1529.00, 'sellador.jpg', 'Sellador vinílico 570 Berel. Diseñado especialmente para uso interior en aplanados de yeso, cemento o mortero que serán pintados por pinturas emulsionadas de cualquier tipo; su secado al tacto es de 1 hora. Su fórmula elaborada con resinas de alta calidad vinilacrílicas brinda gran adhesión, resistencia a la humedad y sellado, la mezcla diluida rinde de 3 a 5m2/L. Presentación en cubeta de 19 L.'),
(4, 'PISTOLA ELÉCTRICA DE 900 ML NEGRO MASTER HARDWARE', 1129.00, 'pistola.jpg', 'La Pistola Eléctrica Master Hardware con capacidad de 900 mililitros permite realizar trabajos de pintura con excelente calidad y acabados. Se puede emplear con todo tipo de pinturas y sobre cualquier material, trabajando tanto en interior como exterior, cuenta con ajuste de aire, volumen y abanico para adaptarse a las necesidades del usuario. Ahorra tiempo y pintura cada vez que se utiliza, gracias a su potencia de 450 W que permite pintar a una distancia de hasta 5 metros en sólo 5 minutos.'),
(5, 'KIT SEMIPROFESIONAL DE PLÁSTICO DE 39.5 X 29 X 6.5', 185.00, 'kit.jpg', 'Kit semiprofesional HDX con 5 piezas, útil para realizar tareas de mantenimiento y decoración sobre los muros del hogar. Cuenta con 1 charola para cargar los rodillos y dosificar la pintura evitando desperdicios de 39.5 x 29 x 6.5 cm, 1 brocha de poliéster de 2-1/2 pulgadas (6.3 cm) y 1 maneral semiprofesional de 9-1/2 pulgadas (24.1 cm) con mango de plástico negro. Además, 2 felpas de uso general, la primera de 3/4 de pulgada (1.9 cm) para superficies rugosas y la segunda de 3/8 de pulgada (0.9 cm) para superficies lisas.'),
(6, 'RESANADOR MULTIUSOS DE 980 ML', 189.00, 'metylan.jpg', 'Resanador Metylan de 980 ml, es una pasta suave y sin solventes que ayuda a resanar hoyos, grietas, cuarteaduras o imperfecciones en general en materiales de yeso, tablaroca, concreto, madera, ladrillo, entre otro'),
(7, 'COMPRESOR LUBRICADO 13.2 GALONES 3.5 HP', 4849.00, 'compresor.jpg', 'Compresor Lubricado de Transmisión Directa Master Hardware, cuenta con un tanque de 13.2 galones (50 litros) y proporciona una presión máxima de 120 PSI (Fuerza por pulgada) para ofrecer un mayor rendimiento de la herramienta.'),
(9, 'PRIMER SELLADOR BEHR PREMIUM PLUS ACRÍLICO ANTICORROSIVO BLANCO 18.6 L', 3669.00, 'BEHRSellador.jpg', 'Primer sellador Behr Premium Plus, entintable para un mejor bloqueo de manchas, es ideal para interiores y exteriores, ofrece una alta protección contra la corrosión, mejora la adherencia de la pintura y bloquea manchas de las superficies.'),
(10, 'AGUARRAS DE 4 L', 625.00, 'aguarras.jpg', 'Aguarras de 4 L Labmex, útil para disolver pinturas, ya sea de base aceite o base agua, ayudando a que se rebaje su viscosidad.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD UNIQUE KEY `id_producto` (`id_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
