-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: prueba_zebrands
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,'2024-03-07 14:23:00'),(2,'2024-03-08 00:37:34'),(3,'2024-03-01 14:23:00'),(4,'2024-03-08 20:46:59');
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `comprador`
--

LOCK TABLES `comprador` WRITE;
/*!40000 ALTER TABLE `comprador` DISABLE KEYS */;
INSERT INTO `comprador` VALUES (1,'benjaminarauz@gmail.com','Benjamin Arauz'),(2,'axelcamacho@gmail.com','Axel Camacho'),(3,'cristianchavez@gmail.com','Cristian Chavez'),(4,'lalopineda@gmail.com','Lalo Pineda'),(5,'ricardocortez@gmail.com','Ricardo Cortez');
/*!40000 ALTER TABLE `comprador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `compraproducto`
--

LOCK TABLES `compraproducto` WRITE;
/*!40000 ALTER TABLE `compraproducto` DISABLE KEYS */;
INSERT INTO `compraproducto` VALUES (1,'NP6324',1,1),(2,'AN1133VCH',1,2),(3,'NB8651',1,NULL),(4,'NO1414',2,NULL),(5,'NB8651',2,NULL),(6,'MX-MAP-MAL-KIT2-SAN',3,NULL),(7,'MA0018',3,3),(8,'MA0018',3,NULL),(9,'MA1501',4,NULL),(10,'MAK5113',4,4),(11,'MA0014',4,NULL);
/*!40000 ALTER TABLE `compraproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `encuestaformato`
--

LOCK TABLES `encuestaformato` WRITE;
/*!40000 ALTER TABLE `encuestaformato` DISABLE KEYS */;
INSERT INTO `encuestaformato` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `encuestaformato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `encuestarespondida`
--

LOCK TABLES `encuestarespondida` WRITE;
/*!40000 ALTER TABLE `encuestarespondida` DISABLE KEYS */;
INSERT INTO `encuestarespondida` VALUES (1,1,'2024-03-08 08:48:40',1),(2,2,'2024-03-08 20:37:56',2),(3,3,'2024-03-08 21:00:31',3),(4,4,'2024-03-08 21:06:41',4);
/*!40000 ALTER TABLE `encuestarespondida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Nooz',1,15),(2,'Mappa',2,15),(3,'Luuna',NULL,30);
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `opcion`
--

LOCK TABLES `opcion` WRITE;
/*!40000 ALTER TABLE `opcion` DISABLE KEYS */;
INSERT INTO `opcion` VALUES (1,1,'15-24'),(2,1,'25-34'),(3,1,'35-44'),(4,1,'45-55'),(5,1,'56+'),(6,2,'Pareja'),(7,2,'Niños'),(8,2,'Mascotas'),(9,2,'Nadie'),(10,3,'Precio'),(11,3,'Garantía y calidad del producto'),(12,3,'Cualidades (tecnología, diseño, colores)'),(13,3,'Recomendaciones'),(14,3,'Otro');
/*!40000 ALTER TABLE `opcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pertenece`
--

LOCK TABLES `pertenece` WRITE;
/*!40000 ALTER TABLE `pertenece` DISABLE KEYS */;
INSERT INTO `pertenece` VALUES ('AN1133L',1),('AN1133V',1),('AN1133VCH',1),('AN1134VCH',1),('NB7221',1),('NB7224',1),('NB8651',1),('NO1114',1),('NO1212',1),('NO1213',1),('NO1214',1),('NO1413',1),('NO1414',1),('NP6321',1),('NP6323',1),('NP6324',1),('NS4221',1),('NS4223',1),('NS4224',1),('NS7221',1),('MA0012',2),('MA0013',2),('MA0014',2),('MA0015',2),('MA0016',2),('MA0017',2),('MA0018',2),('MA0019',2),('MA0020',2),('MA1201',2),('MA1301',2),('MA1401',2),('MA1501',2),('MA4003',2),('MA4012',2),('MAK1113',2),('MAK3113',2),('MAK4113',2),('MAK5113',2),('BL1001HS',3),('BL1002HS',3),('BL1003HS',3),('BL1004HS',3),('LB1231',3),('LB2231',3),('LB2301',3),('LB2302',3),('LB2303',3),('LB2304',3),('LB3231',3),('LU1001B2',3),('LU1002B2',3),('LU1003B2',3),('LU1003B3',3),('LU1004B2',3),('LU1004B3',3),('SH7003',3),('SI1003',3),('SI1004',3);
/*!40000 ALTER TABLE `pertenece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pregunta`
--

LOCK TABLES `pregunta` WRITE;
/*!40000 ALTER TABLE `pregunta` DISABLE KEYS */;
INSERT INTO `pregunta` VALUES (1,1,4,'¿Que edad tienes?',1),(2,1,1,'¿Con quien compartes tu cama?',0),(3,2,1,'¿Por qué elegiste Mappa vs otras marcas',1);
/*!40000 ALTER TABLE `pregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES ('AN1133L','Almohadas Nooz Essential de Microfibra Lvp Std','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/almohadas-nooz-essential-de-microfibra-lvp-std/2-pack-almohada-essential8837df.webp','2 Pack Almohada Essential','Para descansar como rey basta con un par de almohadas rellenas de microfibra cepillada que asemeja a la sensaci��n de las plumas naturales. ��Cr��enos, sostendr��n tu cabeza como a su majestad!'),('AN1133V','Almohadas Nooz Essential de Microfibra LVP-REG','','2 Pack Almohada Essential Regular','Para descansar como rey basta con un par de almohadas rellenas de microfibra cepillada que asemeja a la sensaci��n de las plumas naturales. ��Cr��enos, sostendr��n tu cabeza como a su majestad!'),('AN1133VCH','Almohadas Nooz Essential de Microfibra-REG','','2 Pack Almohada Essential Regular','Para descansar como rey basta con un par de almohadas rellenas de microfibra cepillada que asemeja a la sensaci��n de las plumas naturales. ��Cr��enos, sostendr��n tu cabeza como a su majestad!'),('AN1134VCH','Almohadas Nooz Essential de Microfibra-KING','','2 Pack Almohada Essential King','Para descansar como rey basta con un par de almohadas rellenas de microfibra cepillada que asemeja a la sensaci��n de las plumas naturales. ��Cr��enos, sostendr��n tu cabeza como a su majestad!'),('BL1001HS','Luuna Colch��n Blue High Support-INDI','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/luuna-colch��n-blue-high-support-indi/luuna-blue.jpg','Colch��n Luuna Blue Individual','Presentamos nuestro nuevo colch��n Luuna Blue dise��ado para ofrecerte los beneficios ergon��micos del memory foam, al mejor precio. Gracias a sus tres capas de espuma, ��ste colch��n es fresco, durable y sin transferencia de movimiento.'),('BL1002HS','Luuna Colch��n Blue High Support-MATRI','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/luuna-colch��n-blue-high-support-matri/luuna-blue.jpg','Colch��n Luuna Blue Matrimonial','Presentamos nuestro nuevo colch��n Luuna Blue dise��ado para ofrecerte los beneficios ergon��micos del memory foam, al mejor precio. Gracias a sus tres capas de espuma, ��ste colch��n es fresco, durable y sin transferencia de movimiento.'),('BL1003HS','Luuna Colch��n Blue High Support-QUEEN','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/luuna-colch��n-blue-high-support-queen/luuna-blue0b588d.jpg','Colch��n Luuna Blue Queen Size','Presentamos nuestro nuevo colch��n Luuna Blue dise��ado para ofrecerte los beneficios ergon��micos del memory foam, al mejor precio. Gracias a sus tres capas de espuma, ��ste colch��n es fresco, durable y sin transferencia de movimiento.'),('BL1004HS','Luuna Colch��n Blue High Support-KING','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/luuna-colch��n-blue-high-support-king/luuna-blue.jpg','Colch��n Luuna Blue King Size','Presentamos nuestro nuevo colch��n Luuna Blue dise��ado para ofrecerte los beneficios ergon��micos del memory foam, al mejor precio. Gracias a sus tres capas de espuma, ��ste colch��n es fresco, durable y sin transferencia de movimiento.'),('LB1231','Cama Quer��taro-INDI','','Cama Quer��taro Individual','Base de cama individual resistente, firme y f��cil de armar, son solo algunos de sus atributos. Adem��s, madera sustentable de eucalipto y roble blanco, con cabecera capitonada gris grafito.'),('LB2231','Cama Anzures-INDI','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/cama-anzures-indi/base-anzures8b4bc3.jpg','Cama Anzures Individual','Cama individual de madera sustentable de abedul y nogal negro, con cabecera capitonada gris grafito. Un complemento de lujo y comodidad para tu descanso. ��Tenemos 4 tama��os disponibles!'),('LB2301','Cama Nuevo Le��n-INDI','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/cama-nuevo-le��n-indi/base-nuevo-leon.jpg','Base Nuevo Le��n Individual','Base de cama individual de madera y metal, la pareja ideal para un buen soporte y durabilidad. Sus patas de acero son un plus para un descanso estable ��Te mandamos la tuya?'),('LB2302','Cama Nuevo Le��n-MATRI','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/cama-nuevo-le��n-matri/base-nuevo-leon.jpg','Base Nuevo Le��n Matrimonial','Base de cama matrimonial de madera y metal, la pareja ideal para un buen soporte y durabilidad. Sus patas de acero son un plus para un descanso estable ��Te mandamos la tuya?'),('LB2303','Cama Nuevo Le��n-QUEEN','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/cama-nuevo-le��n-queen/base-nuevo-leon.jpg','Base Nuevo Le��n Queen Size','Base de cama queen size de madera y metal, la pareja ideal para un buen soporte y durabilidad. Sus patas de acero son un plus para un descanso estable ��Te mandamos la tuya?'),('LB2304','Cama Nuevo Le��n-KING','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/cama-nuevo-le��n-king/base-nuevo-leon.jpg','Base Nuevo Le��n King Size','Base de cama king size de madera y metal, la pareja ideal para un buen soporte y durabilidad. Sus patas de acero son un plus para un descanso estable ��Te mandamos la tuya?'),('LB3231','Cama Condesa-INDI','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/cama-condesa-indi/cama-condesa.jpg','Cama Condesa Individual','Resistencia, elegancia y sustentabilidad fueron las tres ideas que ten��amos en la cabeza al crear esta cama individual de madera certificada con cabecera capitonada gris claro.'),('LU1001B2','Luuna Colch��n Basic 2-INDI','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/luuna-colch��n-basic-2-indi/basics-2.png','Colch��n Luuna Basics 2 Individual','Luuna Basics 2 Individual es ideal para tener un descanso profundo. Sus dos capas de espumas certificadas garantizan una combinaci��n de soporte y frescura que perduran con el paso de los a��os. ��Compru��balo t�� mismo!'),('LU1002B2','Luuna Colch��n Basic 2-MATRI','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/luuna-colch��n-basic-2-matri/basics-2.png','Colch��n Luuna Basics 2 Matrimonial','Luuna Basics 2 Matrimonial es ideal para tener un descanso profundo. Sus dos capas de espumas certificadas garantizan una combinaci��n de soporte y frescura que perduran con el paso de los a��os. ��Compru��balo t�� mismo!'),('LU1003B2','Luuna Colch��n Basic 2-QUEEN','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/luuna-colch��n-basic-2-queen/basics-21fec41.png','Colch��n Luuna Basics 2 Queen Size','Luuna Basics 2 Queen Size es ideal para tener un descanso profundo. Sus dos capas de espumas certificadas garantizan una combinaci��n de soporte y frescura que perduran con el paso de los a��os. ��Compru��balo t�� mismo!'),('LU1003B3','Luuna Colch��n Basic air B3-QUEEN','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/luuna-colch��n-basic-air-b3-queen/luuna-air.png','Colch��n Luuna Air Queen','Luuna Air es ideal para tener un descanso profundo. Sus dos capas de espumas certificadas garantizan una combinaci��n de soporte y frescura que perduran con el paso de los a��os. ��Compru��balo t�� mismo!'),('LU1004B2','Luuna Colch��n Basic 2-KING','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/luuna-colch��n-basic-2-king/basics-2.png','Colch��n Luuna Basics 2 King Size','Luuna Basics 2 King Size es ideal para tener un descanso profundo. Sus dos capas de espumas certificadas garantizan una combinaci��n de soporte y frescura que perduran con el paso de los a��os. ��Compru��balo t�� mismo!'),('LU1004B3','Luuna Colch��n Basic air B3-KING','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/luuna-colch��n-basic-air-b3-king/luuna-air.webp','Colch��n Luuna Air King','Luuna Air es ideal para tener un descanso profundo. Sus dos capas de espumas certificadas garantizan una combinaci��n de soporte y frescura que perduran con el paso de los a��os. ��Compru��balo t�� mismo!'),('MA0012','Kit Cabina + Cabina Lote-CHAR','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/kit-cabina-cabina-lote-char/mappa_bb_d2c_sets_mono_22-01.png','Set Maleta Cabina','La maleta ideal para tus escapadas cortas ahora en set. Cabe perfectamente en la cajuela de tu auto y en la cabina del avi��n, con medidas est��ndares para la mayor��a de aerol��neas internacionales para que no tengas necesidad de documentarla.'),('MA0013','Kit Cabina + Cabina Lote-NAVBL','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/kit-cabina-cabina-lote-navbl/mappa_bb_d2c_sets_mono_22-08.png','Set Maleta Cabina','La maleta ideal para tus escapadas cortas ahora en set. Cabe perfectamente en la cajuela de tu auto y en la cabina del avi��n, con medidas est��ndares para la mayor��a de aerol��neas internacionales para que no tengas necesidad de documentarla.'),('MA0014','Kit Cabina + Cabina Lote-GREEO','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/kit-cabina-cabina-lote-greeo/mappa_bb_d2c_sets_mono_22-22.png','Set Maleta Cabina','La maleta ideal para tus escapadas cortas ahora en set. Cabe perfectamente en la cajuela de tu auto y en la cabina del avi��n, con medidas est��ndares para la mayor��a de aerol��neas internacionales para que no tengas necesidad de documentarla.'),('MA0015','Kit Cabina + Cabina Lote-SAN','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/kit-cabina-cabina-lote-san/mappa_bb_d2c_sets_mono_22-29.png','Set Maleta Cabina','La maleta ideal para tus escapadas cortas ahora en set. Cabe perfectamente en la cajuela de tu auto y en la cabina del avi��n, con medidas est��ndares para la mayor��a de aerol��neas internacionales para que no tengas necesidad de documentarla.'),('MA0016','Kit Cabina + Cabina Lote-ORA','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/kit-cabina-cabina-lote-ora/mappa_bb_d2c_sets_mono_22-15.png','Set Maleta Cabina','La maleta ideal para tus escapadas cortas ahora en set. Cabe perfectamente en la cajuela de tu auto y en la cabina del avi��n, con medidas est��ndares para la mayor��a de aerol��neas internacionales para que no tengas necesidad de documentarla.'),('MA0017','Kit Cabina + Cabina Lote-NTR','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/kit-cabina-cabina-lote-ntr/mappa_bb_d2c_sets_22-22.png','Set Maleta Cabina','La maleta ideal para tus escapadas cortas ahora en set. Cabe perfectamente en la cajuela de tu auto y en la cabina del avi��n, con medidas est��ndares para la mayor��a de aerol��neas internacionales para que no tengas necesidad de documentarla.'),('MA0018','Kit Cabina + Cabina Lote-ORI','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/kit-cabina-cabina-lote-ori/mappa_bb_d2c_sets_22-01.png','Set Maleta Cabina','La maleta ideal para tus escapadas cortas ahora en set. Cabe perfectamente en la cajuela de tu auto y en la cabina del avi��n, con medidas est��ndares para la mayor��a de aerol��neas internacionales para que no tengas necesidad de documentarla.'),('MA0019','Kit Cabina + Cabina Lote-CIT','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/kit-cabina-cabina-lote-cit/mappa_bb_d2c_sets_22-08.png','Set Maleta Cabina','La maleta ideal para tus escapadas cortas ahora en set. Cabe perfectamente en la cajuela de tu auto y en la cabina del avi��n, con medidas est��ndares para la mayor��a de aerol��neas internacionales para que no tengas necesidad de documentarla.'),('MA0020','Kit Cabina + Cabina Lote-CLSC','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/kit-cabina-cabina-lote-clsc/mappa_bb_d2c_sets_22-15.png','Set Maleta Cabina','La maleta ideal para tus escapadas cortas ahora en set. Cabe perfectamente en la cajuela de tu auto y en la cabina del avi��n, con medidas est��ndares para la mayor��a de aerol��neas internacionales para que no tengas necesidad de documentarla.'),('MA1201','Pet Carrier Mappa-CHAR','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/pet-carrier-mappa-char/pet-carrier.webp','Transportadora Para Mascotas Mappa','La transportadora Mappa es ideal para viajar con tu mejor amigo. Su dise��o est�� creado para brindar comodidad tanto a tu mascota como a ti'),('MA1301','Porta laptop Mappa-CHAR','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/porta-laptop-mappa-char/portalaptop.webp','Portalaptop Mappa','El portalaptop Mappa es perfecto para transportar tu computadora o tableta.'),('MA1401','Organizadores Mappa-CHAR','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/organizadores-mappa-char/organizador.webp','Organizadores Mappa','Los organizadores Mappa son el accesorio ideal para empacar tus pertenencias de la manera m��s eficiente. Comprime y organiza tu ropa para que puedas guardar mucho m��s en tu maleta.'),('MA1501','Toiletry Mappa-CHAR','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/toiletry-mappa-char/neceser.webp','Neceser Mappa','El neceser Mappa es un complemento esencial para tus viajes, dise��ado para guardar y organizar todos tus art��culos de ba��o.'),('MA4003','Master maleta Mappa Hard Shell Lote-SAN-GRA','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/master-maleta-mappa-hard-shell-lote-san-gra/sand-s-01.jpeg','Maleta Mappa Grande Color Arena','El tama��o que necesitas para lanzarte a la aventura m��s duradera. Su gran capacidad har�� que puedas viajar con todo lo necesario.'),('MA4012','Kit Cabina + Grande-SAN Lote','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/kit-cabina-grande-san-lote/1.-sets-monocromaticos20.png','Set Maleta Cabina + Grande Arena','Este set de dos piezas es ideal para que encuentres el equilibrio entre lo que necesitas tener a la mano y la capacidad ��ptima para lo que documentar��s.'),('MAK1113','Kit Maleta + Portalaptop- Negra Cabina','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/kit-maleta-portalaptop-negra-cabina/portalaptop-negra-cabina6de86d.png','KIT MALETA + PORTALAPTOP','Para los que trabajan mientras exploran el mundo: carry on + portalaptop\n\nPara ti, que eres experto en convertir cualquier lugar en tu oficina, que constantemente buscas destinos que te brinden la combinaci��n perfecta entre poder explorar y tener una conexi��n estable a internet. Te mercedes una carry on + una portalap de regalo, para que disfrutes  libertad de viajar, mientras mantienes tu carrera profesional en alto.'),('MAK3113','Kit Maleta + Portalaptop- Verde Cabina','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/kit-maleta-portalaptop-verde-cabina/portalaptop-verde-cabina.png','KIT MALETA + PORTALAPTOP','Para los que trabajan mientras exploran el mundo: carry on + portalaptop\n\nPara ti, que eres experto en convertir cualquier lugar en tu oficina, que constantemente buscas destinos que te brinden la combinaci��n perfecta entre poder explorar y tener una conexi��n estable a internet. Te mercedes una carry on + una portalap de regalo, para que disfrutes  libertad de viajar, mientras mantienes tu carrera profesional en alto.'),('MAK4113','Kit Maleta + Portalaptop- Sand Cabina','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/kit-maleta-portalaptop-sand-cabina/portalaptop-sand-cabina.png','KIT MALETA + PORTALAPTOP','Para los que trabajan mientras exploran el mundo: carry on + portalaptop\n\nPara ti, que eres experto en convertir cualquier lugar en tu oficina, que constantemente buscas destinos que te brinden la combinaci��n perfecta entre poder explorar y tener una conexi��n estable a internet. Te mercedes una carry on + una portalap de regalo, para que disfrutes  libertad de viajar, mientras mantienes tu carrera profesional en alto.'),('MAK5113','Kit Maleta + Portalaptop- Naranja Cabina','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/kit-maleta-portalaptop-naranja-cabina/portalaptop-naranja-cabina.png','KIT MALETA + PORTALAPTOP','Para los que trabajan mientras exploran el mundo: carry on + portalaptop\n\nPara ti, que eres experto en convertir cualquier lugar en tu oficina, que constantemente buscas destinos que te brinden la combinaci��n perfecta entre poder explorar y tener una conexi��n estable a internet. Te mercedes una carry on + una portalap de regalo, para que disfrutes  libertad de viajar, mientras mantienes tu carrera profesional en alto.'),('MX-MAP-MAL-KIT2-SAN','Kit Cabina + Grande-SAN','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/kit-cabina-grande-san/1.-sets-monocromaticos20.png','SET MALETA CABINA + GRANDE ARENA','Este set de dos piezas es ideal para que encuentres el equilibrio entre lo que necesitas tener a la mano y la capacidad ��ptima para lo que documentar��s.'),('NB7221','Cama Natural Tejida-INDI','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/cama-natural-tejida-indi/tejida-fondo-blanco.jpg','Cama Natural Tejida Individual','Creamos esta cama para los amantes de lo natural y artesanal. Est�� hecha de madera certificada y tejido artesanal, lo que la hace resistente y amigable con el medio ambiente.'),('NB7224','Cama Natural Tejida-KING','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/cama-natural-tejida-king/tejida-fondo-blanco.jpg','Cama Natural Tejida King','Creamos esta cama para los amantes de lo natural y artesanal. Est�� hecha de madera certificada y tejido artesanal, lo que la hace resistente y amigable con el medio ambiente.'),('NB8651','Cama Geometric Tapizada-AZUL-INDI','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/cama-geometric-tapizada-azul-indi/cama-geometric-azul0d0f1f.png','Cama Geometric Azul Individual','Resistencia, buen gusto y precio accesible fueron las tres ideas que ten��amos en la cabeza al crear esta cama. Sabemos que est��s listo para el cambio, ahora solo falta que t�� te lo creas. Elige entre nuestros 2 colores disponibles.'),('NO1114','Colch��n Nooz Essential-KING','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/colch��n-nooz-essential-king/nooz-colchon-essential-1cart6e1196.png','Colch��n Essential King','El colch��n Essential King tiene 15 cm de altura formados por 325 resortes bonnell y 2 cm de espuma que te dan el confort que mereces en tu espacio.  \nCalidad a precio accesible, ��compru��balo!'),('NO1212','Colch��n Nooz Infusion-MATRI','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/colch��n-nooz-infusion-matri/colcho��n-infusion.webp','Colch��n Infusion Matrimonial','Colch��n Infusion Matrimonial te acompa��a para hacer tus noches frescas y relajantes gracias a sus espumas con extracto de t�� verde. ��Son 21 cm de altura que se sentir��n como dormir entre las suavidad de las nubes con la paz que da una taza de t��!'),('NO1213','Colch��n Nooz Infusion-QUEEN','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/colch��n-nooz-infusion-queen/colcho��n-infusion2b5642.webp','Colch��n Infusion Queen Size','Colch��n Infusion Queen te acompa��a para hacer tus noches frescas y relajantes gracias a sus espumas con extracto de t�� verde. ��Son 21 cm de altura que se sentir��n como dormir entre las suavidad de las nubes con la paz que da una taza de t��!'),('NO1214','Colch��n Nooz Infusion-KING','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/colch��n-nooz-infusion-king/colcho��n-infusion2b5642.webp','Colch��n Infusion King Size','Colch��n Infusion king te acompa��a para hacer tus noches frescas y relajantes gracias a sus espumas con extracto de t�� verde. ��Son 21 cm de altura que se sentir��n como dormir entre las suavidad de las nubes con la paz que da una taza de t��! Calidad a precio accesible, ��compru��balo!'),('NO1413','Colch��n Nooz control-QUEEN','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/colch��n-nooz-original-queen/nooz-colchon-original-1cart.png','Colch��n Nooz Original Queen','Mayor estabilidad en tu descanso.                       \nEste colch��n tiene la combinaci��n ideal de dos espumas; la primera te brindar�� resistencia aislando movimientos y la segunda se acomodar�� sutilmente a tu cuerpo, permitiendo el flujo de aire.                         \n ��Ideal si buscas firmeza y soporte al dormir!       '),('NO1414','Colch��n Nooz control -KING','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/colch��n-nooz-original-king/nooz-colchon-original-1cart.png','Colch��n Nooz Original King','Mayor estabilidad en tu descanso.                       \nEste colch��n tiene la combinaci��n ideal de dos espumas; la primera te brindar�� resistencia aislando movimientos y la segunda se acomodar�� sutilmente a tu cuerpo, permitiendo el flujo de aire.                         \n ��Ideal si buscas firmeza y soporte al dormir!'),('NP6321','Protector de Colch��n Essential Bamboo-INDI','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/protector-de-colch��n-essential-bamboo-indi/protector_essential.png','Protector de Colch��n Essential Individual','El Protector Essential Individual te ser�� muy ��til si est��s buscando algo suave, impermeable y transpirable que se asegure de que ese colch��n que tanto trabajo te cost�� tener dure mucho m��s tiempo y de que t�� pases una buena noche.'),('NP6323','Protector de Colch��n Essential Bamboo-QUEEN','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/protector-de-colch��n-essential-bamboo-queen/protector_essentialc05dcc.png','Protector de Colch��n Essential Queen','El Protector Essential Queen te ser�� muy ��til si est��s buscando algo suave, impermeable y transpirable que se asegure de que ese colch��n que tanto trabajo te cost�� tener dure mucho m��s tiempo y de que t�� pases una buena noche.'),('NP6324','Protector de Colch��n Essential Bamboo-KING','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/protector-de-colch��n-essential-bamboo-king/protector_essentialc05dcc.png','Protector de Colch��n Essential King','El Protector Essential King te ser�� muy ��til si est��s buscando algo suave, impermeable y transpirable que se asegure de que ese colch��n que tanto trabajo te cost�� tener dure mucho m��s tiempo y de que t�� pases una buena noche.'),('NS4221','Base de Cama Nooz Elemental Gris-INDI','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/base-de-cama-nooz-elemental-gris-indi/base-elemental.jpg','Base de Cama Elemental Gris Individual',' Base Individual de Madera de Pino, con tapiz resistente de tafet��n gris, patas de pl��stico que soportan grandes presiones, listones de madera y barra de acero que ayuda a dar estabilidad.\n��Empieza a creer tu espacio!'),('NS4223','Base de Cama Nooz Elemental Gris-QUEEN','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/base-de-cama-nooz-elemental-gris-queen/base-elemental.jpg','Base de Cama Elemental Gris Queen',' Base Queen de Madera de Pino, con tapiz resistente de tafet��n gris, patas de pl��stico que soportan grandes presiones, listones de madera y barra de acero que ayuda a dar estabilidad.\n��Empieza a creer tu espacio!'),('NS4224','Base de Cama Nooz Elemental Gris-KING','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/base-de-cama-nooz-elemental-gris-king/base-elemental.jpg','Base de Cama Elemental Gris King',' Base King de Madera de Pino, con tapiz resistente de tafet��n gris, patas de pl��stico que soportan grandes presiones, listones de madera y barra de acero que ayuda a dar estabilidad.\n��Empieza a creer tu espacio!'),('NS7221','Base Plain Madera-INDI','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/base-plain-madera-indi/base-plain.jpg','Base Plain Madera Individual','Base con listones de madera y patas entrelazadas que brindan mayor estabilidad'),('SH7003','Juego de S��banas Satinadas-QUEEN-BLANCOR','','Juego de S��banas Satinadas Queen Size Blanco Rayas','No existe mejor sensaci��n que el rose del satin en la piel. Y tampoco existe mejor calidad en telas que las que son elaboradas con textiles certificados. ��Compru��balo con estas s��banas!'),('SI1003','Luuna Signature -QUEEN','','Colch��n Luuna Signature Queen','8 opciones de confort. Un colch��n.\nConoce la m��xima expresi��n de tecnolog��a y total personalizaci��n con Luuna.\n\nAltura: 42cm'),('SI1004','Luuna Signature -KING','','Colch��n Luuna Signature King','8 opciones de confort. Un colch��n.\nConoce la m��xima expresi��n de tecnolog��a y total personalizaci��n con Luuna.\n\nAltura: 42cm');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `realiza`
--

LOCK TABLES `realiza` WRITE;
/*!40000 ALTER TABLE `realiza` DISABLE KEYS */;
INSERT INTO `realiza` VALUES (1,1),(3,2),(4,3),(4,4);
/*!40000 ALTER TABLE `realiza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `resenia`
--

LOCK TABLES `resenia` WRITE;
/*!40000 ALTER TABLE `resenia` DISABLE KEYS */;
INSERT INTO `resenia` VALUES (1,1,5,1,'El mejor producto que he tenido'),(2,2,4,1,'Uno de los mejores productos'),(3,3,5,1,'El producto más destacado que he utilizado.'),(4,4,1,1,'Muy mal producto.');
/*!40000 ALTER TABLE `resenia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `respuesta`
--

LOCK TABLES `respuesta` WRITE;
/*!40000 ALTER TABLE `respuesta` DISABLE KEYS */;
INSERT INTO `respuesta` VALUES (1,1,1,'15-24'),(2,1,2,'Pareja'),(3,1,2,'Mascotas'),(4,2,1,'45-55'),(5,2,2,'25-34'),(6,3,3,'Precio'),(7,3,3,'Pareja'),(8,3,3,'Cualidades (tecnología, diseño, colores)'),(9,4,3,'Recomendaciones'),(10,3,3,'Pareja'),(11,3,3,'Precio');
/*!40000 ALTER TABLE `respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (1,'Multiple'),(2,'Rating'),(3,'Texto abierto'),(4,'Unica');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-18 20:59:05
