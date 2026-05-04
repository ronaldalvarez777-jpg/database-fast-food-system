CREATE TABLE restaurante (
    id_restaurante SERIAL PRIMARY KEY,
    nombre TEXT,
    direccion TEXT,
    telefono TEXT
);

CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nombre TEXT,
    apellidos TEXT,
    telefono TEXT,
    email TEXT
);

CREATE TABLE producto (
    id_producto SERIAL PRIMARY KEY,
    nombre TEXT,
    descripcion TEXT,
    precio NUMERIC
);

CREATE TABLE pedido (
    id_pedido SERIAL PRIMARY KEY,
    fecha_pedido DATE,
    id_cliente INT,
    id_restaurante INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_restaurante) REFERENCES restaurante(id_restaurante)
);
