CREATE DATABASE blogpersonal;

USE blogpersonal;

CREATE TABLE categoria(
    id INT(2),
    nombre VARCHAR(50),
    descripcion VARCHAR(200),
    imagen VARCHAR(100)
);

CREATE TABLE entrada(
    id INT(2),
    nombre VARCHAR(50),
    descripcion VARCHAR(200),
    fecha DATE
);

ALTER TABLE categoria
    ADD PRIMARY KEY (id);

ALTER TABLE entrada
    ADD PRIMARY KEY (id);

INSERT INTO categoria 
    VALUES (1,'Recomendaciones Gastronómicas','Recomendaciones de gastronomía en Tucuman','https://i.imgur.com/oBhAHAG.png');

INSERT INTO categoria 
    VALUES (2,'¿A dónde ir?','Actividades de interés para hacer en Tucumán','https://i.imgur.com/h6FtIL9.png');

INSERT INTO categoria 
    VALUES (3,'Outfit del dia','Un vistazo a mi vestidor','https://i.imgur.com/jh0r09E.jpg');

INSERT INTO categoria 
    VALUES (4,'Tutoriales','Paso a paso de tus manualidades favoritas','https://i.imgur.com/1Nax4N7.png');

    INSERT INTO entrada
    VALUES (1,'TFI Virtualizacion','Desarrollo del TFI',NOW());
