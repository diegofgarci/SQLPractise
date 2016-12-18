CREATE TABLE socio (
n_socio NUMBER(5) CONTRAINT pk_n_socio PRIMARY KEY,
dni CHAR(9) CONTRAINT nnull_dni UNIQUE,
apellidos VARCHAR(100) CONSTRAINT nnull_apellidos NOT NULL,
nombre VARCHAR(100) CONSTRAINT nnull_nombre NOT NULL,
caducidad_carnet DATE CONSTRAINT nnull_caducidad_carnet NOT NULL,
telefono VARCHAR(12) CONSTRAINT uk_telefono UNIQUE);

