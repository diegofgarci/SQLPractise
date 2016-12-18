CREATE TABLE socio (
  n_socio NUMBER(5) CONTRAINT pk_n_socio PRIMARY KEY,
  dni CHAR(9) CONTRAINT nnull_dni UNIQUE,
  apellidos VARCHAR(100) CONSTRAINT nnull_apellidos NOT NULL,
  nombre VARCHAR(100) CONSTRAINT nnull_nombre NOT NULL,
  caducidad_carnet DATE CONSTRAINT nnull_caducidad_carnet NOT NULL,
  telefono VARCHAR(12) CONSTRAINT uk_telefono UNIQUE);

CREATE TABLE Libro (
  isbn VARCHAR2(13) CONSTRAINT pk_isbn PRIMARY KEY,
  autor VARCHAR(200) CONSTRAINT nnull_autor NOT NULL,
  n_ejemplares NUMBER(2));

CREATE TABLE ejemplar (
  isbn VARCHAR2(13),
  n_id_ejemplar NUMBER(2) CONSTRAINT nnull_n_id_ejemplar NOT NULL,
  disponible CHAR(1),
  CONSTRAINT pk_isbn PRIMARY KEY (isbn),
  CONSTRAINT fk_isbn FOREIGN KEY (isbn) REFERENCES libro(isbn),
  CONSTRAINT ck_disponible CHECK (diponible='S' OR disponible='N'));
  
  CREATE TABLE prestamo (
  nprestamo NUMBER(6),
  tipo VARCHAR2(1),
  fecha_devolucion DATE CONSTRAINT nnull_fecha_devolucion NOT NULL,
  n_socio NUMBER(5) CONSTRAINT nnull_nsocio NOT NULL,
  isbn VARCHAR(13),
  CONSTRAINT fk_nsocio FOREIGN KEY (n_socio) REFERENCES socio (n_socio),
  CONSTRAINT fk_isbn3 FOREIGN KEY (isbn) REFERENCES libro (isbn)
 CONSTRAINT ck_tipo CHECK (tipo='S' OR tipo='X'));
