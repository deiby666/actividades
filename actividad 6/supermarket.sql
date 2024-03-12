use bwdkvp8ojoqq68wi01f5

create table clientes(
    id int PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    correo VARCHAR(150),
    telefono BIGINT,
    direccion VARCHAR(255)
)

create Table categorias(
    id int PRIMARY KEY AUTO_INCREMENT,
    categoria VARCHAR(30)
)


create table productos(
    id int PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    precio FLOAT,
    id_categoria int
)

create table pedidos(
    id int PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    id_cliente int NOT NULL,
    id_producto int NOT NULL
)


/* DROP table clientes

DROP TABLE productos

DROP TABLE pedidos */

ALTER TABLE pedidos ADD FOREIGN KEY(id_cliente) REFERENCES clientes(id)

ALTER TABLE pedidos ADD FOREIGN KEY(id_producto) REFERENCES productos(id)

ALTER TABLE productos ADD FOREIGN KEY(id_categoria) REFERENCES categorias(id)

SELECT * FROM categorias

SELECT * from productos

INSERT INTO productos(nombre,precio,id_categoria) VALUES("frijoles", 8000, 2),("leche", 4000, 3),("guaro", 60000,4)

INSERT INTO pedidos(fecha,id_cliente,id_producto) VALUES("2024-03-05", 1, 2),("2024-03-03", 1, 3)

SELECT * FROM pedidos

SELECT pedidos.id,pedidos.fecha,productos.nombre as producto,categorias.categoria,clientes.nombre as cliente,clientes.direccion,clientes.telefono FROM pedidos INNER JOIN clientes INNER JOIN productos INNER JOIN categorias WHERE pedidos.id_cliente = clientes.id AND pedidos.id_producto = productos.id AND productos.id_categoria = categorias.id AND clientes.nombre = "thomas"