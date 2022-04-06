-- Crear una base de datos con nombre “Posts”.
CREATE DATABASE posts;

-- Crear una tabla “post”, con los atributos id, nombre de usuario, fecha de creación, contenido y descripción.
CREATE TABLE post (id SERIAL NOT NULL, nombre_usuario VARCHAR(20), fecha_creacion DATE, contenido VARCHAR(50), descripcion VARCHAR(120), PRIMARY KEY (id));

-- Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos".
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES 'Pamela', '2022-04-05', 'contenido', 'observaciones bla bla' );
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES 'Pamela', '2021-12-09', 'otro contenido', 'observaciones bla bla' );
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES 'Carlos', '2022-03-23', 'contenido', 'observaciones bla bla' );

-- Modificar la tabla post, agregando la columna título.
ALTER TABLE post ADD titulo VARCHAR(50);

-- Agregar título a las publicaciones ya ingresadas.
UPDATE post SET titulo='titulo de ejemplo1' WHERE id=1;
UPDATE post SET titulo='titulo de ejemplo2' WHERE id=2;
UPDATE post SET titulo='titulo de ejemplo3' WHERE id=3;

-- Insertar 2 post para el usuario "Pedro".
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES 'Pedro', '2021-12-10', 'otro contenido', 'observaciones bla bla', 'titulo de ejemplo' );
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES 'Pedro', '2022-01-01', 'contenido', 'observaciones bla bla', 'titulo de ejemplo' );

-- Eliminar el post de Carlos.
DELETE FROM post WHERE id=3;

-- Ingresar un nuevo post para el usuario "Carlos".
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES 'Carlos', '2022-01-01', 'contenido', 'observaciones bla bla', 'titulo de ejemplo' );

-- Parte 2


-- Crear una nueva tabla llamada “comentarios”, con los atributos id, fecha, hora de creación y contenido, que se relacione con la tabla posts.
CREATE TABLE comentarios (id SERIAL PRIMARY KEY, post_id INT, fecha_creacion DATE, hora_creacion TIME, contenido VARCHAR(50), FOREIGN KEY (post_id) REFERENCES post(id));

-- Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos".
INSERT INTO comentarios(post_id, fecha_creacion, hora_creacion, contenido) VALUES (1, '2012-12-12', '00:00:00', 'Contenido de Pamela');
INSERT INTO comentarios(post_id, fecha_creacion, hora_creacion, contenido) VALUES (2, '2012-12-12', '00:00:00', 'Contenido de Pamela');
INSERT INTO comentarios(post_id, fecha_creacion, hora_creacion, contenido) VALUES (6, '2020-11-11', '23:59:59', 'Contenido de carlos');
INSERT INTO comentarios(post_id, fecha_creacion, hora_creacion, contenido) VALUES (6, '2020-11-11', '23:59:59', 'Contenido de carlos');
INSERT INTO comentarios(post_id, fecha_creacion, hora_creacion, contenido) VALUES (6, '2020-11-11', '23:59:59', 'Contenido de carlos');
INSERT INTO comentarios(post_id, fecha_creacion, hora_creacion, contenido) VALUES (6, '2020-11-11', '23:59:59', 'Contenido de carlos');



-- Crear un nuevo post para "Margarita".
INSERT INTO post (id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES (7, 'Pamela', '2020-10-11', 'contenido', 'observaciones de Pamela', 'titulo1' );


-- Ingresar 5 comentarios para el post de Margarita.
INSERT INTO comentarios(post_id, fecha_creacion, hora_creacion, contenido) VALUES (7, '2020-11-11', '23:59:59', 'Contenido de Margarita');
INSERT INTO comentarios(post_id, fecha_creacion, hora_creacion, contenido) VALUES (7, '2020-11-11', '23:59:59', 'Contenido de Margarita');
INSERT INTO comentarios(post_id, fecha_creacion, hora_creacion, contenido) VALUES (7, '2020-11-11', '23:59:59', 'Contenido de Margarita');
INSERT INTO comentarios(post_id, fecha_creacion, hora_creacion, contenido) VALUES (7, '2020-11-11', '23:59:59', 'Contenido de Margarita');
INSERT INTO comentarios(post_id, fecha_creacion, hora_creacion, contenido) VALUES (7, '2020-11-11', '23:59:59', 'Contenido de Margarita');
