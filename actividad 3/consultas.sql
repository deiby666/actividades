use bzgdhcr3abkqsf7tcnul


/* 1. Listado de todos los usuarios con solo los nombres, apellidos y edad, que tengan 20 años de edad. */
SELECT nombres,apellidos,edad FROM users WHERE edad > 20 

/* 2. Listado de todas las mujeres en la base de datos que tengan entre 20 y 30 años de edad. */
SELECT nombres,edad FROM users where genero = "M" AND edad >= 20 AND edad <= 30

/* 3. Quién es la persona con menos edad de la base de datos. */
SELECT * FROM users ORDER BY edad ASC LIMIT 1
SELECT MIN(edad),nombres FROM users

/* 4. Cuantos usuarios hay registrados en la base de datos. */
SELECT COUNT(*) FROM users

/* 5.Traer los 5 primeros usuarios de la base de datos */
SELECT * FROM users ORDER BY id ASC LIMIT  5

/* 6. Traer los 10 últimos usuarios de la base de datos */
SELECT * FROM users ORDER BY id DESC LIMIT  10

/* 7. Listar usuarios que su correo finalice en .net */
SELECT * from users where correo LIKE '%.net%'

/* 8. Listar usuarios no vivan en  colombia. */
SELECT * from users where pais != "colombia"

/* 9. Listar usuarios que no vivan en ecuador y panamá. */
SELECT * from users where pais != "ecuador" AND pais != "panama"

/* 10. Cuantos(numero) usuarios son de colombia y les gusta el rock. */
SELECT COUNT(*) users WHERE pais="colombia" AND musica = "rock"

/* 11. Actualizar el género musical de todos los usuarios de la base de datos de "metal" a "carranga" */
UPDATE users set musica = "carranga" WHERE musica = "carrganga"

/* 12. Listado de hombres que les guste la "carranga" sean de colombia y tengan entre 10 y 20 años de edad. */
SELECT * FROM users WHERE genero = "H" AND musica = "carranga" AND pais = "colombia" AND edad >=10 and edad <= 20

/* 13. Actualizar a todos los usuarios que tengan 99 años, su nuevo género musical favorito será la "carranga" */
UPDATE users set musica = "carranga" WHERE edad = 99

/* 14. Listar todos los usuarios que su nombre inicie con "a","A" */
SELECT * from users WHERE nombres LIKE 'a%' AND nombres LIKE 'A%'

/* 15. Listar todos los usuarios que su apellido finalice en "z","Z" */
SELECT * from users WHERE apellidos LIKE '%z' AND apellidos LIKE '%Z'

/* 16. Actualizar los usuarios que tengan 50 años de edad su nuevo género musical será NULL */
ALTER TABLE users MODIFY musica VARCHAR(25) NULL
UPDATE users set musica = NULL where edad = 50

/* 17. Listar todos los usuarios que su género musical sea igual a NULL */
SELECT * FROM users where musica = NULL

/* 18. Cual es el resultado de la suma de todas las edades de la base de datos. */
SELECT SUM(edad) as suma FROM users

/* 19. Cuantos usuarios tenemos registrados de "ecuador" */
SELECT count(*) from users where pais = "ecuador"

/* 20. Cuántos usuarios son de Colombia y les gusta el vallenato. */
SELECT COUNT(*) FROM users where pais = "colombia" AND musica = "vallenato" 


