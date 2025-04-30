CREATE TABLE clientes(
	client_id SERIAL,
	nombre VARCHAR(100) NOT NULL,
	correo VARCHAR(100) NOT NULL, 
	telefono VARCHAR(20) NOT NULL,
	CONSTRAINT pk_client PRIMARY KEY(client_id)
);

CREATE TABLE sucursales(
	sid SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	ciudad VARCHAR(100) NOT NULL,
	direccion TEXT NOT NULL
);

CREATE TABLE vehiculos(
	vid SERIAL PRIMARY KEY, 
	sid INT,
	marca VARCHAR(100) NOT NULL,
	placa VARCHAR(20) NOT NULL,
	modelo VARCHAR(100) NOT NULL,
	año INT NOT NULL CHECK (año BETWEEN 2000 and 2025),
	estado VARCHAR(20) NOT NULL DEFAULT 'Disponible',
	FOREIGN KEY(sid) REFERENCES sucursales(sid) ON DELETE SET NUll ON UPDATE CASCADE
);


CREATE TABLE alquileres(
	aid SERIAL PRIMARY KEY,
	client_id INT,
	vid INT,
	fecha_inicio DATE NOT NULL,
	fecha_fin DATE NOT NULL check (fecha_fin > fecha_inicio),
	FOREIGN KEY(client_id) REFERENCES clientes(client_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(vid) REFERENCES vehiculos(vid) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE pagos(
	pid SERIAL PRIMARY KEY,
	aid INT,
	monto DECIMAL(10,2) NOT NULL CHECK(monto > 0),
	fecha_pago TIMESTAMP NOT NULL, 
	metodo_pago VARCHAR(50) NOT NULL,
	FOREIGN KEY(aid) REFERENCES alquileres(aid) ON DELETE CASCADE ON UPDATE CASCADE
);