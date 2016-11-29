create table articulos(
cod char(4) PRIMARY KEY,
fabricante varchar(20),
pvp number(10,3)
);

create table ordenadores(
cod PRIMARY KEY references articulos(cod),
procesador varchar(20),
velocidad number(5),
ram number(3),
disco number(3)
);

create table impresoras(
cod PRIMARY KEY references articulos(cod),
color varchar(15),
resolucion number(10),
tipo varchar(20)
);

create table sobremesa(
cod PRIMARY KEY references ordenadores(cod)
);

create table portatiles(
cod PRIMARY KEY references ordenadores(cod),
tam_pantalla number(4,2)
);
