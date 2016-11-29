create table autores(
dni varchar(9) PRIMARY KEY,
nombre varchar(20),
apellidos varchar(50)
);

create table temas(
cod char(4) PRIMARY KEY,
tipo varchar(30),
descripcion varchar(100)
);

create table libros(
isbn number(10) PRIMARY KEY,
n_paginas number(4),
precio number(7,3),
cod_tema references temas(cod)
);

create table escriben(
dni_autor references autores(dni),
isbn references libros(isbn),
PRIMARY KEY(dni_autor,isbn)
);

create table ejemplares(
isbn references libros(isbn),
cod char(4),
cantidad number(4),
PRIMARY KEY(isbn,cod)
);

create table clientes(
dni varchar(9) PRIMARY KEY,
nombre varchar(20),
apellidos varchar(50)
);

create table prestan(
isbn number(10),
cod_ejemplar char(4),
fecha date,
dni_cliente references clientes(dni),
FOREIGN KEY(isbn,cod_ejemplar) REFERENCES ejemplares(isbn,cod),
PRIMARY KEY(isbn,cod_ejemplar,fecha)
);
