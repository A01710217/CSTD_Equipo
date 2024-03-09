CREATE DATABASE Prueba_Zebrands;

USE Prueba_Zebrands;

CREATE TABLE Comprador (
	IDComprador INT NOT NULL AUTO_INCREMENT,
    CorreoElectronico VARCHAR(20),
    Nombre VARCHAR(50), 
    PRIMARY KEY (IDComprador)
);

CREATE TABLE Compra (
	IDCompra INT NOT NULL AUTO_INCREMENT,
    FechaVenta DATETIME,
    PRIMARY KEY (IDCompra)
);

CREATE TABLE Realiza (
	IDComprador INT NOT NULL,
    IDCompra INT NOT NULL,
    PRIMARY KEY (IDComprador, IDCompra),
    FOREIGN KEY (IDComprador) REFERENCES Comprador(IDComprador),
    FOREIGN KEY (IDCompra) REFERENCES Compra(IDCompra)
);

CREATE TABLE Producto (
	ItemCode VARCHAR(20) NOT NULL ,
    Nombre VARCHAR(60),
    Imagen VARCHAR(400),
    Title VARCHAR(100),	
    Descripcion VARCHAR(600),
    PRIMARY KEY (ItemCode)
);

CREATE TABLE Marca (
	IDMarca INT NOT NULL AUTO_INCREMENT, 
    Brand VARCHAR(20),
    DiasEnviar INT NOT NULL,
    PRIMARY KEY (IDMarca)
);

CREATE TABLE Pertenece (
	ItemCode VARCHAR(10) NOT NULL,
    IDMarca INT NOT NULL,
    PRIMARY KEY (ItemCode, IDMarca),
    FOREIGN KEY (ItemCode) REFERENCES Producto(ItemCode),
    FOREIGN KEY (IDMarca) REFERENCES Marca(IDMarca)
);

CREATE TABLE EncuestaFormato (
	IDEncuestaFormato INT NOT NULL AUTO_INCREMENT,
    IDMarca INT NOT NULL,
    PRIMARY KEY (IDEncuestaFormato),
    FOREIGN KEY (IDMarca) REFERENCES Marca(IDMarca)
);

ALTER TABLE Marca
ADD IDEncuestaFormato INT;

ALTER TABLE Marca
ADD CONSTRAINT IDEncuestaFormato
FOREIGN KEY (IDEncuestaFormato)
REFERENCES EncuestaFormato(IDEncuestaFormato);

CREATE TABLE Tipo (
	IDTipo INT NOT NULL AUTO_INCREMENT,
    Texto VARCHAR(25),
    PRIMARY KEY (IDTipo)
);

CREATE TABLE Pregunta (
	IDPregunta INT NOT NULL AUTO_INCREMENT,
	IDEncuestaFormato INT NOT NULL,
    IDTipo INT NOT NULL, 
    TextoPregunta VARCHAR(200),
    StatusObligatorio TINYINT,
    PRIMARY KEY (IDPregunta),
    FOREIGN KEY (IDEncuestaFormato) REFERENCES EncuestaFormato(IDEncuestaFormato),
    FOREIGN KEY (IDTipo) REFERENCES Tipo(IDTipo)
);

CREATE TABLE Opcion (
	IDOpcion INT NOT NULL AUTO_INCREMENT,
	IDPregunta INT NOT NULL,
    Texto VARCHAR(100),
    PRIMARY KEY (IDOpcion),
    FOREIGN KEY (IDPregunta) REFERENCES Pregunta(IDPregunta)
);

CREATE TABLE CompraProducto (
	IDCompraProducto INT NOT NULL AUTO_INCREMENT,
	ItemCode VARCHAR(20) NOT NULL,
    IDCompra INT NOT NULL,
    PRIMARY KEY (IDCompraProducto),
    FOREIGN KEY (ItemCode) REFERENCES Producto(ItemCode),
    FOREIGN KEY (IDCompra) REFERENCES Compra(IDCompra)
);

CREATE TABLE EncuestaRespondida (
	IDEncuestaRespondida INT NOT NULL AUTO_INCREMENT,
	IDCompraProducto INT NOT NULL,
    FechaRespuesta DATETIME,
    PRIMARY KEY (IDEncuestaRespondida),
    FOREIGN KEY (IDCompraProducto) REFERENCES CompraProducto(IDCompraProducto)
);

-- Agregar la llave foranea de la encuesta respondida a CompraProducto
ALTER TABLE CompraProducto
ADD IDEncuestaRespondida INT;

ALTER TABLE CompraProducto
ADD CONSTRAINT IDEncuestaRespondida
FOREIGN KEY (IDEncuestaRespondida)
REFERENCES EncuestaRespondida(IDEncuestaRespondida);

CREATE TABLE Resenia (
	IDResenia INT NOT NULL AUTO_INCREMENT,
    IDEncuestaRespondida INT NOT NULL,
    CalificacionEstrellas INT,
    Visibilidad TINYINT, 
    Texto VARCHAR(1000),
    PRIMARY KEY (IDResenia),
    FOREIGN KEY (IDEncuestaRespondida) REFERENCES EncuestaRespondida(IDEncuestaRespondida)
);

-- Agregar la llave de la reseña a la encuesta respondida
ALTER TABLE EncuestaRespondida
ADD IDResenia INT;

ALTER TABLE EncuestaRespondida
ADD CONSTRAINT IDResenia
FOREIGN KEY (IDResenia)
REFERENCES Resenia(IDResenia);

CREATE TABLE Respuesta (
	IDRespuesta INT NOT NULL AUTO_INCREMENT,
    IDEncuestaRespondida INT NOT NULL,
    IDPregunta INT NOT NULL,
    Texto VARCHAR(200),
    PRIMARY KEY (IDRespuesta),
    FOREIGN KEY (IDEncuestaRespondida) REFERENCES EncuestaRespondida(IDEncuestaRespondida),
    FOREIGN KEY (IDPregunta) REFERENCES Pregunta(IDPregunta)
);

-- Valores de prueba que usamos

-- Crear los compradores
INSERT INTO Comprador(CorreoElectronico, Nombre)
VALUES ('benjaminarauz@gmail.com', 'Benjamin Arauz'),
('axelcamacho@gmail.com', 'Axel Camacho'),
('cristianchavez@gmail.com', 'Cristian Chavez'),
('lalopineda@gmail.com', 'Lalo Pineda'),
('ricardocortez@gmail.com', 'Ricardo Cortez');

-- Crear los tipos de pregunta
INSERT INTO Tipo(Texto)
VALUES ('Multiple'),
('Rating'),
('Texto abierto'),
('Unica');

-- Crear la compra
INSERT INTO Compra(FechaVenta)
VALUES ('2024-03-07 14:23:00'),
(NOW());

INSERT INTO Realiza(IDComprador, IDCompra)
VALUES (1, 1),
(3, 2);

INSERT INTO CompraProducto(ItemCode, IDCompra)
VALUES ('NP6324', 1),
('AN1133VCH', 1),
('NB8651', 1),
('NO1414', 2),
('NB8651', '2');

-- Crear una marca

INSERT INTO Marca(Brand)
VALUES ('Nooz');

-- Crear un formato de una encuesta

INSERT INTO EncuestaFormato(IDMarca)
VALUES (1);

UPDATE Marca
SET IDEncuestaFormato = 1
WHERE IDMarca = 1;

INSERT INTO Pregunta(IDEncuestaFormato, IDTipo, TextoPregunta, StatusObligatorio)
VALUES (1, 4, '¿Que edad tienes?', 1),
(1, 1, '¿Con quien compartes tu cama?', 0);

INSERT INTO Opcion(IDPregunta, Texto)
VALUES (1, '15-24'),
(1, '25-34'),
(1, '35-44'),
(1, '45-55'),
(1, '56+'),
(2, 'Pareja'),
(2, 'Niños'),
(2, 'Mascotas'),
(2, 'Nadie');

UPDATE CompraProducto
SET IDEncuestaRespondida = 1
WHERE IDCompraProducto = 1;

-- Crear una nueva encuesta respondida

INSERT INTO EncuestaRespondida(IDCompraProducto)
VALUES (1);

INSERT INTO Respuesta(IDEncuestaRespondida, IDPregunta, Texto)
VALUES(1, 1, '15-24'),
(1, 2, 'Pareja'),
(1, 2, 'Mascotas');

INSERT INTO Resenia(IDEncuestaRespondida, CalificacionEstrellas, Visibilidad, Texto)
VALUES (1, 5, 1, 'El mejor producto que he tenido');

UPDATE EncuestaRespondida
SET EncuestaRespondida.IDResenia = 1, EncuestaRespondida.FechaRespuesta = NOW()
WHERE Resenia.IDEncuestaRespondida = 1;

-- Crear una nueva encuesta respondida

INSERT INTO EncuestaRespondida(IDCompraProducto)
VALUES (2);

INSERT INTO Respuesta(IDEncuestaRespondida, IDPregunta, Texto)
VALUES(2, 1, '45-55'),
(2, 2, '25-34');

INSERT INTO Resenia(IDEncuestaRespondida, CalificacionEstrellas, Visibilidad, Texto)
VALUES (2, 4, 1, 'Uno de los mejores productos');

UPDATE EncuestaRespondida
SET EncuestaRespondida.IDResenia = 2, EncuestaRespondida.FechaRespuesta = NOW()
WHERE EncuestaRespondida.IDEncuestaRespondida = 2;

UPDATE CompraProducto
SET IDEncuestaRespondida = 2
WHERE IDCompraProducto = 2;

-- Crear una nueva marca

INSERT INTO Marca(Brand)
VALUES ('Mappa');

INSERT INTO Compra(FechaVenta)
VALUES ('2024-03-01 14:23:00'),
(NOW());

INSERT INTO Realiza(IDComprador, IDCompra)
VALUES (4, 3),
(4, 4);

INSERT INTO CompraProducto(ItemCode, IDCompra)
VALUES ('MX-MAP-MAL-KIT2-SAN', 3),
('MA0018', 3),
('MA0018', 3),
('MA1501', 4),
('MAK5113', 4),
('MA0014', 4);

INSERT INTO EncuestaFormato(IDMarca)
VALUES (2);

UPDATE Marca
SET IDEncuestaFormato = 2
WHERE IDMarca = 2;

INSERT INTO Pregunta(IDEncuestaFormato, IDTipo, TextoPregunta, StatusObligatorio)
VALUES (2, 1, '¿Por qué elegiste Mappa vs otras marcas', 1);

INSERT INTO Opcion(IDPregunta, Texto)
VALUES (3, 'Precio'),
(3, 'Garantía y calidad del producto'),
(3, 'Cualidades (tecnología, diseño, colores)'),
(3, 'Recomendaciones'),
(3, 'Otro');

-- Crear una nueva encuesta respondida

INSERT INTO EncuestaRespondida(IDCompraProducto)
VALUES (3);

INSERT INTO Respuesta(IDEncuestaRespondida, IDPregunta, Texto)
VALUES(3, 3, 'Precio'),
(3, 3, 'Pareja'),
(3, 3, 'Cualidades (tecnología, diseño, colores)');

INSERT INTO Resenia(IDEncuestaRespondida, CalificacionEstrellas, Visibilidad, Texto)
VALUES (3, 5, 1, 'El producto más destacado que he utilizado.');

UPDATE EncuestaRespondida
SET EncuestaRespondida.IDResenia = 3, EncuestaRespondida.FechaRespuesta = NOW()
WHERE EncuestaRespondida.IDEncuestaRespondida = 3;

UPDATE CompraProducto
SET IDEncuestaRespondida = 3
WHERE IDCompraProducto = 7;

INSERT INTO EncuestaRespondida(IDCompraProducto)
VALUES (4);

INSERT INTO Respuesta(IDEncuestaRespondida, IDPregunta, Texto)
VALUES(4, 3, 'Recomendaciones'),
(3, 3, 'Pareja'),
(3, 3, 'Precio');

INSERT INTO Resenia(IDEncuestaRespondida, CalificacionEstrellas, Visibilidad, Texto)
VALUES (4, 1, 1, 'Muy mal producto.');

UPDATE EncuestaRespondida
SET EncuestaRespondida.IDResenia = 4, EncuestaRespondida.FechaRespuesta = NOW()
WHERE EncuestaRespondida.IDEncuestaRespondida = 4;

UPDATE CompraProducto
SET IDEncuestaRespondida = 4
WHERE IDCompraProducto = 10;

-- Agregar una marca

INSERT INTO Marca(Brand, DiasEnviar)
VALUES('Luuna', 30)