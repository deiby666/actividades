use bzgdhcr3abkqsf7tcnul

CREATE TABLE marcas(
    id INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(50)
)

CREATE TABLE tipo_vehiculo(
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(50),
    id_marca int
)

CREATE table colores(
    id INT PRIMARY KEY AUTO_INCREMENT,
    color VARCHAR(50)
)

CREATE TABLE vehiculos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR(50),
    placa VARCHAR(50) UNIQUE,
    id_vehiculo int,
    id_color int
)

ALTER TABLE tipo_vehiculo ADD Foreign Key (id_marca) REFERENCES marcas(id)

ALTER TABLE vehiculos ADD Foreign Key (id_vehiculo) REFERENCES tipo_vehiculo(id)

ALTER TABLE vehiculos ADD Foreign Key (id_color) REFERENCES colores(id)

SELECT vehiculos.modelo,vehiculos.placa,colores.color,tipo_vehiculo.tipo, marcas.marca from vehiculos INNER JOIN colores INNER JOIN tipo_vehiculo INNER JOIN marcas WHERE vehiculos.id_vehiculo = tipo_vehiculo.id AND 
vehiculos.id_color = colores.id AND tipo_vehiculo.id_marca = marcas.id