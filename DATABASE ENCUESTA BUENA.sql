create DATABASE TAREA4PROGRA3

CREATE TABLE PERSONA
(
ID INT  PRIMARY KEY,
NOMBRE VARCHAR (50),
GENERO char ,
FECHA DATETIME
)

CREATE TABLE RESPUESTA
(
ID INT IDENTITY (1,1)PRIMARY KEY,
IDPERSONA INT,
R1 CHAR (1),
R2 CHAR (2),
R3 CHAR (3),

CONSTRAINT Fk_IDPERSONA FOREIGN KEY (IDPERSONA) REFERENCES PERSONA(ID)
)

SELECT P.ID, P.NOMBRE, P.GENERO, P.FECHA, R.R1, R.R2, R.R3 FROM PERSONA P INNER JOIN RESPUESTA R ON P.ID = R.IDPERSONA