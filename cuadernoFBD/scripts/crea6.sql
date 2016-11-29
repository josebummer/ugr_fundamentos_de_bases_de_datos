create table empresa(
nif varchar(9) PRIMARY KEY,
nombre varchar(30),
direccion varchar(70)
);

create table factura(
cod char(6) PRIMARY KEY,
fecha date,
nife references empresa(nif),
nifr references empresa(nif),
CHECK(nife!=nifr)
);

create table articulos(
numero number(4) PRIMARY KEY,
descripcion varchar(100),
precio number(9,3),
iva number(2)
);

create table linea(
cod_fac references factura(cod),
num_art references articulos(numero),
cantidad number(4),
PRIMARY KEY(cod_fac,num_art)
);
