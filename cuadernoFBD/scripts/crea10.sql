create table recetas(
cod char(4) PRIMARY KEY,
nombre varchar(30),
tipo varchar(20),
dificultad varchar(20)
);

create table ingredientes(
cod char(4) PRIMARY KEY,
nombre varchar(20),
tipo varchar(20),
precio number(7,3)
);

create table incluye(
cod_r references recetas(cod),
cod_i references ingredientes(cod),
paso number(3),
cantidad number(4),
PRIMARY KEY(cod_r,cod_i,paso)
);
