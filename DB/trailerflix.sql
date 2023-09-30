CREATE DATABASE  IF NOT EXISTS `trailerflix` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trailerflix`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: trailerflix
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actricesyactores`
--

DROP TABLE IF EXISTS `actricesyactores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actricesyactores` (
  `idActricesyactores` int NOT NULL AUTO_INCREMENT,
  `nombreyapellido` varchar(100) NOT NULL,
  PRIMARY KEY (`idActricesyactores`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actricesyactores`
--

LOCK TABLES `actricesyactores` WRITE;
/*!40000 ALTER TABLE `actricesyactores` DISABLE KEYS */;
INSERT INTO `actricesyactores` VALUES (1,'Adam Nagaitis'),(2,'Adeel Akhtar'),(3,'Aidan Gallagher'),(4,'Alana Cavanaugh'),(5,'Alice Braga'),(6,'Alicia Vikander'),(7,'Amy Manson'),(8,'Amybeth McNulty'),(9,'Angus Macfadyen'),(10,'Anya Taylor-Joy'),(11,'Awkwafina'),(12,'Benjamin Sokolow'),(13,'Bill Hader'),(14,'Bill Skarsgård'),(15,'Brett Cullen'),(16,'Bruce Harwood'),(17,'Bryce Dallas Howard '),(18,'Burn Gorman'),(19,'Cailee Spaeny'),(20,'Caitriona Balfe'),(21,'Camila Mendes'),(22,'Candice Patton'),(23,'Carl Weathers'),(24,'Carlos Valdes'),(25,'Casey Cott'),(26,'Chadwick Boseman'),(27,'Charlie Tahan'),(28,'Chloe Pirrie'),(29,'Chris Bartlett'),(30,'Chris Evans'),(31,'Chris Hemsworth'),(32,'Chris Messina'),(33,'Chris Pratt'),(34,'Christian Bale'),(35,'Claire Fox'),(36,'Claire Foy'),(37,'Claire Selby'),(38,'Corey Johnson'),(39,'Corey Stoll'),(40,'Corrine Koslo'),(41,'Courteney Cox'),(42,'Dalila Bela'),(43,'Danai Gurira'),(44,'Daniel Kaluuya'),(45,'Danielle Panabaker'),(46,'Dash Mihok'),(47,'David Castañeda'),(48,'David Duchovny'),(49,'David Harbour'),(50,'David Schwimmer'),(51,'Domhnall Gleeson'),(52,'Dominic Mafham'),(53,'Dwayne Johnson'),(54,'Ed Harris'),(55,'Elliot Page'),(56,'Emilia Clarke'),(57,'Emily Bayiokos'),(58,'Emily Watson'),(59,'Emma Thompson'),(60,'Emmy Raver-Lampman'),(61,'Enver Gjokaj'),(62,'Evan Rachel Wood'),(63,'Ewan McGregor'),(64,'Florence Pugh'),(65,'Frances Conroy'),(66,'Gana Bayarsaikhan'),(67,'Geraldine James'),(68,'Giancarlo Esposito'),(69,'Gillian Anderson'),(70,'Grant Gustin'),(71,'Gwyneth Paltrow'),(72,'Génesis Rodríguez'),(73,'Harry Melling'),(74,'Helena Bonham Carter'),(75,'Henry Cavill'),(76,'Irrfan Khan'),(77,'Isaiah Mustafa'),(78,'Jack Black'),(79,'James McAvoy'),(80,'James Weber Brown'),(81,'Janina Elkin'),(82,'Jared Harris'),(83,'Jason Clarke'),(84,'Jay Ryan'),(85,'Jeff Daniels'),(86,'Jeffrey Wright'),(87,'Jennifer Aniston'),(88,'Jennifer Ehle'),(89,'Jeremy Renner'),(90,'Jesse L. Martin'),(91,'Jessica Chastain'),(92,'Jessie Buckley'),(93,'Jim Parsons'),(94,'Jing Tian'),(95,'Joaquin Phoenix'),(96,'John Boyega'),(97,'Johnny Galecki'),(98,'Jon Bernthal'),(99,'Jorja Fox'),(100,'Josh Lucas'),(101,'Jude Law'),(102,'Judy Greer'),(103,'Jurnee Smollett'),(104,'Kaley Cuoco'),(105,'Karen Gillan'),(106,'Kate Mara'),(107,'Kate Walsh'),(108,'Kate Winslet'),(109,'Kerry Bishé'),(110,'Kevin Hart'),(111,'Kit Harington'),(112,'Kristen Wiig'),(113,'Kunal Nayyar'),(114,'Kyle Chandler'),(115,'Laurence Fishburne'),(116,'Lee Pace'),(117,'Lena Headey'),(118,'Lia Williams'),(119,'Lili Reinhart'),(120,'Lisa Kudrow'),(121,'Lorina Kamburova'),(122,'Louis Partridge'),(123,'Lucas Jade Zumann'),(124,'Luke Allen-Gale'),(125,'Luke Hemsworth'),(126,'Lupita Nyong\'o'),(127,'Mackenzie Davis'),(128,'Madelaine Petsch'),(129,'Margot Robbie'),(130,'Marion Cotillard'),(131,'Marisol Nichols'),(132,'Mark Ruffalo'),(133,'Martin Freeman'),(134,'Mary Elizabeth Winstead'),(135,'Matt Damon'),(136,'Matt LeBlanc'),(137,'Matt Smith'),(138,'Matthew Perry'),(139,'Mayim Bialik'),(140,'Melissa Rauch'),(141,'Michael B. Jordan'),(142,'Michael Peña'),(143,'Millie Bobby Brown'),(144,'Miranda Cosgrove'),(145,'Misty Rosas'),(146,'Mitch Pileggi'),(147,'Moses Ingram'),(148,'Mädchen Amick'),(149,'Nick Jonas'),(150,'Nick Robinson'),(151,'Nikolaj Coster-Waldau'),(152,'Nina Bergman'),(153,'Noah Jupe'),(154,'O.T. Fagbenle'),(155,'Olivia Colman'),(156,'Omar Epps'),(157,'Omar Sy'),(158,'Oscar Isaac'),(159,'Patrick Fugit'),(160,'Paul Ritter'),(161,'Pedro Pascal'),(162,'Peter Dinklage'),(163,'Peter Ferdinando'),(164,'R. H. Thomson'),(165,'Rachel Weisz'),(166,'Ray Winstone'),(167,'Rhona Mitra'),(168,'Rinko Kikuchi'),(169,'Rio Hackford'),(170,'Robert De Niro'),(171,'Robert Downey Jr.'),(172,'Robert Patrick'),(173,'Robert Sheehan'),(174,'Rosie Perez'),(175,'Ryan Gosling'),(176,'Salli Richardson-Whitfield'),(177,'Sam Claflin'),(178,'Scarlett Johansson'),(179,'Scoot McNairy'),(180,'Scott Eastwood'),(181,'Sean Bean'),(182,'Shea Whigham'),(183,'Simon Helberg'),(184,'Sonoya Mizuno'),(185,'Sophie Turner'),(186,'Stacy Martin'),(187,'Stellan Skarsgård'),(188,'Tessa Thompson'),(189,'Thandie Newton'),(190,'Theo James'),(191,'Thomas Brodie-Sangster'),(192,'Tobias Menzies'),(193,'Toby Huss, '),(194,'Toby Jones'),(195,'Tom Braidwood'),(196,'Tom Cavanagh'),(197,'Tom Hopper'),(198,'Vanesa Kirby'),(199,'Vincent D\'Onofrio'),(200,'Vincent Piazza'),(201,'Will Smith'),(202,'William Hurt'),(203,'Willow Smith'),(204,'Zazie Beetz'),(205,'John Malkovich'),(206,'Colin Farrell'),(207,'Common'),(208,'Geena Davis'),(209,'Ioan Gruffudd'),(210,'pepe');
/*!40000 ALTER TABLE `actricesyactores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo`
--

DROP TABLE IF EXISTS `catalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo` (
  `idCatalogo` int NOT NULL AUTO_INCREMENT,
  `poster` varchar(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `idCategorias` int NOT NULL,
  `resumen` text NOT NULL,
  `temporadas` varchar(45) NOT NULL DEFAULT 'N/A',
  `trailer` varchar(100) NOT NULL,
  PRIMARY KEY (`idCatalogo`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo`
--

LOCK TABLES `catalogo` WRITE;
/*!40000 ALTER TABLE `catalogo` DISABLE KEYS */;
INSERT INTO `catalogo` VALUES (1,'/posters/1.jpg','The Crown',2,'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.','4',' '),(2,'/posters/2.jpg','Riverdale',2,'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.','5',' '),(3,'/posters/18.jpg','Ava',1,'Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.','N/A',' '),(4,'/posters/actualizado.jpg','avan',1,'Nuevo resumen','5','https://nuevo-trailer.com'),(5,'/posters/3.jpg','The Mandalorian',2,'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.','2','https://www.youtube.com/embed/aOC8E8z_ifw'),(6,'/posters/4.jpg','The Umbrella Academy',2,'La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.','1',' '),(7,'/posters/5.jpg','Gambito de Dama',2,'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones','1',' '),(8,'/posters/6.jpg','Enola Holmes',1,'La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.','N/A',' '),(9,'/posters/7.jpg','Guasón',1,'Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.','N/A','https://www.youtube.com/embed/zAGVQLHvwOY'),(10,'/posters/20.jpg','Archivo',1,'2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.','N/A','https://www.youtube.com/embed/VHSoCnDioAo'),(11,'/posters/21.jpg','Jumanji - The next level',1,'Las aventuras continúan en el fantástico mundo del video juego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?','N/A','https://www.youtube.com/embed/rBxcF-r9Ibs'),(12,'/posters/8.jpg','Avengers: End Game',1,'Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.','N/A',' '),(13,'/posters/22.jpg','3022',1,'La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flashbacks y flash-forward.','N/A','https://www.youtube.com/embed/AGQ7OkmIx4Q'),(14,'/posters/9.jpg','Juego de tronos',2,'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.','8',' '),(15,'/posters/10.jpg','The Flash',2,'Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.','6',' '),(16,'/posters/11.jpg','The Big Bang Theory',2,'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.','12','https://www.youtube.com/embed/WBb3fojgW0Q'),(17,'/posters/23.jpg','IT - Capítulo 2',1,'En este segundo capitulo Han pasado 27 años desde que el \'Club de los Perdedores\', formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.','N/A','https://www.youtube.com/embed/hZeFeYSmBcg'),(18,'/posters/12.jpg','Friends',2,'\'Friends\' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.','10',' '),(19,'/posters/24.jpg','Pantera Negra',1,'T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.','N/A','https://www.youtube.com/embed/BE6inv8Xh4A'),(20,'/posters/13.jpg','Anne with an \'E\'',2,'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.','2',' '),(21,'/posters/25.jpg','Contra lo imposible (Ford versus Ferrari)',1,'Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.','N/A','https://www.youtube.com/embed/SOVb0-2g1Q0'),(22,'/posters/26.jpg','Centígrados',1,'Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.','N/A',' '),(23,'/posters/27.jpg','DOOM: Aniquilación',1,'Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.','N/A','https://www.youtube.com/embed/nat3u3gAVLE'),(24,'/posters/28.jpg','Contagio',1,'De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.','N/A','https://www.youtube.com/embed/4sYSyuuLk5g'),(25,'/posters/14.jpg','Expedientes Secretos \'X\'',2,'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de \'siniestro\'','11','https://www.youtube.com/embed/KKziOmsJxzE'),(26,'/posters/15.jpg','Chernobyl',2,'Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.','1','https://www.youtube.com/embed/s9APLXM9Ei8'),(27,'/posters/16.jpg','Westworld',2,'\'Westworld\' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.','3','https://www.youtube.com/embed/qLFBcdd6Qw0'),(28,'/posters/17.jpg','Halt and Catch Fire',2,'Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valey. \\n Esta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos online, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers).','4','https://www.youtube.com/embed/pWrioRji60A'),(29,'/posters/29.jpg','Viuda Negra',1,'Primera pelicula individual de la Viuda Negra en el universo cinematografico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.','N/A','https://www.youtube.com/embed/BIn8iANwEog'),(30,'/posters/30.jpg','The Martian',1,'Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.','N/A','https://www.youtube.com/embed/XvB58bCVfng'),(31,'/posters/31.jpg','Ex-Machina',1,'Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.','N/A','https://www.youtube.com/embed/XRYL5spvEcI'),(32,'/posters/32.jpg','Jurassic World',1,'Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic Wold, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.','N/A',' '),(33,'/posters/33.jpg','Soy leyenda',1,'Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.','N/A','https://www.youtube.com/embed/dtKMEAXyPkg'),(34,'/posters/34.jpg','El primer hombre en la luna',1,'Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.','N/A',' '),(35,'/posters/35.jpg','Titanes del pacífico - La insurrección',1,'Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.','N/A',' ');
/*!40000 ALTER TABLE `catalogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_generos`
--

DROP TABLE IF EXISTS `catalogo_generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo_generos` (
  `idCatalogo_generos` int NOT NULL AUTO_INCREMENT,
  `idCatalogo` int NOT NULL,
  `idGeneros` int NOT NULL,
  PRIMARY KEY (`idCatalogo_generos`),
  KEY `idCatalogo` (`idCatalogo`),
  KEY `idGeneros` (`idGeneros`),
  CONSTRAINT `catalogo_generos_ibfk_1` FOREIGN KEY (`idCatalogo`) REFERENCES `catalogo` (`idCatalogo`),
  CONSTRAINT `catalogo_generos_ibfk_2` FOREIGN KEY (`idGeneros`) REFERENCES `generos` (`idGeneros`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_generos`
--

LOCK TABLES `catalogo_generos` WRITE;
/*!40000 ALTER TABLE `catalogo_generos` DISABLE KEYS */;
INSERT INTO `catalogo_generos` VALUES (1,1,6),(2,1,9),(3,2,5),(4,2,13),(5,2,9),(6,3,3),(7,3,8),(8,4,3),(9,4,8),(10,5,6),(11,5,9),(12,5,14),(13,6,9),(14,6,6),(15,6,13),(16,7,5),(17,7,15),(18,7,6),(19,8,2),(20,8,3),(21,8,1),(22,9,2),(23,9,8),(24,9,6),(25,10,3),(26,10,8),(27,11,4),(28,11,8),(29,11,9),(30,12,4),(31,12,7),(32,12,6),(33,13,6),(34,13,7),(35,13,18),(36,14,6),(37,14,3),(38,15,6),(39,15,10),(40,16,18),(41,16,3),(42,17,9),(43,17,6),(44,17,16),(45,18,1),(46,18,6),(47,18,15),(48,19,1),(49,19,9),(50,19,4),(51,20,1),(52,20,3),(53,20,15),(54,21,4),(55,21,9),(56,21,2),(57,22,3),(58,22,15),(59,23,17),(60,23,15),(61,23,8),(62,24,1),(63,24,2),(64,24,8),(65,25,6),(66,25,11),(67,25,2),(68,26,6),(69,26,15),(70,26,13),(71,27,1),(72,27,3),(73,27,17),(74,28,6),(75,28,15),(76,28,9),(77,29,6),(78,29,1),(79,29,2),(80,30,6),(81,30,3),(82,30,2),(83,31,6),(84,31,3),(85,31,15),(86,32,15),(87,32,2),(88,32,9),(89,33,6),(90,33,17),(91,33,9),(92,34,6),(93,34,10),(94,35,1),(95,35,15),(96,35,3);
/*!40000 ALTER TABLE `catalogo_generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_reparto`
--

DROP TABLE IF EXISTS `catalogo_reparto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo_reparto` (
  `idCatalogo_reparto` int NOT NULL AUTO_INCREMENT,
  `idCatalogo` int NOT NULL,
  `idActricesyactores` int NOT NULL,
  PRIMARY KEY (`idCatalogo_reparto`),
  KEY `PKC_idx` (`idCatalogo`),
  KEY `idActricesyactores` (`idActricesyactores`),
  CONSTRAINT `catalogo_reparto_ibfk_1` FOREIGN KEY (`idCatalogo`) REFERENCES `catalogo` (`idCatalogo`),
  CONSTRAINT `catalogo_reparto_ibfk_2` FOREIGN KEY (`idActricesyactores`) REFERENCES `actricesyactores` (`idActricesyactores`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_reparto`
--

LOCK TABLES `catalogo_reparto` WRITE;
/*!40000 ALTER TABLE `catalogo_reparto` DISABLE KEYS */;
INSERT INTO `catalogo_reparto` VALUES (1,1,35),(2,1,155),(3,1,137),(4,1,192),(5,1,198),(6,1,74),(7,2,119),(8,2,25),(9,2,21),(10,2,131),(11,2,128),(12,2,148),(13,3,161),(14,3,23),(15,3,145),(16,3,29),(17,3,169),(18,3,68),(19,4,197),(20,4,47),(21,4,60),(22,4,173),(23,4,3),(24,4,55),(25,5,10),(26,5,191),(27,5,73),(28,5,147),(29,5,28),(30,5,81),(31,6,143),(32,6,75),(33,6,177),(34,6,74),(35,6,122),(36,6,2),(37,7,95),(38,7,170),(39,7,204),(40,7,65),(41,7,15),(42,7,182),(43,8,171),(44,8,30),(45,8,132),(46,8,31),(47,8,178),(48,8,89),(49,9,56),(50,9,117),(51,9,185),(52,9,111),(53,9,162),(54,9,151),(55,10,70),(56,10,24),(57,10,45),(58,10,22),(59,10,90),(60,10,196),(61,11,93),(62,11,97),(63,11,104),(64,11,183),(65,11,113),(66,11,140),(67,11,139),(68,12,87),(69,12,41),(70,12,120),(71,12,50),(72,12,137),(73,12,136),(74,13,8),(75,13,67),(76,13,164),(77,13,40),(78,13,42),(79,13,123),(80,14,69),(81,14,48),(82,14,146),(83,14,172),(84,14,195),(85,14,16),(86,15,82),(87,15,187),(88,15,58),(89,15,160),(90,15,92),(91,15,1),(92,16,62),(93,16,189),(94,16,86),(95,16,188),(96,16,54),(97,16,125),(98,17,116),(99,17,179),(100,17,127),(101,17,109),(102,17,193),(103,17,4),(104,18,91),(105,18,205),(106,18,206),(107,18,207),(108,18,208),(109,18,209),(110,19,129),(111,19,63),(112,19,134),(113,19,103),(114,19,174),(115,19,32),(116,20,186),(117,20,167),(118,20,190),(119,20,163),(120,20,118),(121,20,194),(122,21,53),(123,21,110),(124,21,78),(125,21,105),(126,21,11),(127,21,149),(128,22,144),(129,22,107),(130,22,156),(131,22,9),(132,22,99),(133,22,61),(134,23,14),(135,23,91),(136,23,13),(137,23,79),(138,23,77),(139,23,84),(140,24,26),(141,24,141),(142,24,126),(143,24,43),(144,24,133),(145,24,44),(146,25,34),(147,25,135),(148,25,20),(149,25,100),(150,25,153),(151,25,98),(152,26,72),(153,26,200),(154,26,12),(155,26,57),(156,27,7),(157,27,124),(158,27,152),(159,27,52),(160,27,80),(161,27,121),(162,28,130),(163,28,135),(164,28,115),(165,28,101),(166,28,108),(167,28,88),(168,28,71),(169,29,178),(170,29,64),(171,29,49),(172,29,154),(173,29,165),(174,29,202),(175,29,166),(176,30,135),(177,30,91),(178,30,112),(179,30,85),(180,30,142),(181,30,181),(182,30,106),(183,31,6),(184,31,51),(185,31,158),(186,31,184),(187,31,38),(188,31,37),(189,31,66),(190,32,17),(191,32,33),(192,32,76),(193,32,199),(194,32,157),(195,32,150),(196,32,102),(197,33,201),(198,33,5),(199,33,27),(200,33,46),(201,33,176),(202,33,203),(203,33,59),(204,34,175),(205,34,36),(206,34,83),(207,34,114),(208,34,39),(209,34,159),(210,35,96),(211,35,180),(212,35,19),(213,35,94),(214,35,168),(215,35,18);
/*!40000 ALTER TABLE `catalogo_reparto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategorias` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategorias`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Películas'),(2,'Serie');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `idGeneros` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idGeneros`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Acción'),(2,'Aventura'),(3,'Ciencia Ficción'),(4,'Comedia'),(5,'Crimen'),(6,'Drama'),(7,'Familia'),(8,'Fantasía'),(9,'Ficción'),(10,'Hechos verídicos'),(11,'Historia'),(12,'Intriga'),(13,'Misterio'),(14,'Sucesos'),(15,'Suspenso'),(16,'Tecnoogía'),(17,'Terror'),(18,'Western');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_catalogo`
--

DROP TABLE IF EXISTS `vista_catalogo`;
/*!50001 DROP VIEW IF EXISTS `vista_catalogo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_catalogo` AS SELECT 
 1 AS `id`,
 1 AS `poster`,
 1 AS `titulo`,
 1 AS `categorias`,
 1 AS `genero`,
 1 AS `resumen`,
 1 AS `temporadas`,
 1 AS `reparto`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'trailerflix'
--

--
-- Dumping routines for database 'trailerflix'
--

--
-- Final view structure for view `vista_catalogo`
--

/*!50001 DROP VIEW IF EXISTS `vista_catalogo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_catalogo` AS select `c`.`idCatalogo` AS `id`,`c`.`poster` AS `poster`,`c`.`titulo` AS `titulo`,`ca`.`nombre` AS `categorias`,group_concat(distinct `g`.`nombre` order by `g`.`nombre` ASC separator ',') AS `genero`,`c`.`resumen` AS `resumen`,`c`.`temporadas` AS `temporadas`,group_concat(distinct `at`.`nombreyapellido` order by `at`.`nombreyapellido` ASC separator ',') AS `reparto` from (((((`catalogo` `c` left join `categorias` `ca` on((`c`.`idCategorias` = `ca`.`idCategorias`))) left join `catalogo_generos` `ct` on((`c`.`idCatalogo` = `ct`.`idCatalogo`))) left join `generos` `g` on((`ct`.`idGeneros` = `g`.`idGeneros`))) left join `catalogo_reparto` `cr` on((`c`.`idCatalogo` = `cr`.`idCatalogo`))) left join `actricesyactores` `at` on((`cr`.`idActricesyactores` = `at`.`idActricesyactores`))) group by `c`.`idCatalogo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-30 10:12:25
