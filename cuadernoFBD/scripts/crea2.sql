create table autor(
dni varchar(9) PRIMARY KEY,
nombre varchar(20)
);

create table libros(
isbn number(10) PRIMARY KEY,
titulo varchar(30)
);

create table escribe(
isbn references libros(isbn),
dni_autor references autor(dni),
PRIMARY KEY(isbn,dni_autor)
);

create table temas(
cod char(4) PRIMARY KEY,
tipo varchar(20),
descripcion varchar(100)
);

create table trata(
isbn references libros(isbn),
cod_tema references temas(cod),
PRIMARY KEY(isbn,cod_tema)
);

create table usuario(
dni varchar(9) PRIMARY KEY,
nombre varchar(20)
);

create table prestado(
dni_usuario PRIMARY KEY references usuario(dni),
isbn UNIQUE references libros(isbn),
fecha date
);
