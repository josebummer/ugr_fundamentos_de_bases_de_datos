create table revista(
issn varchar(9) PRIMARY KEY,
nombre varchar(30),
editorial varchar(30)
);

create table numeros(
issn references revista(issn),
numero number(4),
anio date,
PRIMARY KEY(issn,numero)
);

create table articulos(
issn varchar(9),
titulo varchar(30),
numero number(4),
pag_ini number(3),
pag_fin number(3),
FOREIGN KEY(issn,numero) REFERENCES numeros(issn,numero),
PRIMARY KEY(issn,numero,titulo)
);

create table refiere(
issn_ref varchar(9),
titulo_ref varchar(30),
numero_ref number(4),
issn_cita varchar(9),
titulo_cita varchar(30),
numero_cita number(4),
FOREIGN KEY(issn_ref,titulo_ref,numero_ref) REFERENCES articulos(issn,titulo,numero),
FOREIGN KEY(issn_cita,titulo_cita,numero_cita) REFERENCES articulos(issn,titulo,numero),
PRIMARY KEY(issn_ref,titulo_ref,numero_ref,issn_cita,titulo_cita,numero_cita)
);

create table autor(
dni varchar(9) PRIMARY KEY,
nombre varchar(20),
nacionalidad varchar(40)
);

create table escribe(
issn varchar(9),
numero number(4),
titulo varchar(30),
dni_autor references autor(dni),
FOREIGN KEY(issn,numero,titulo) REFERENCES articulos(issn,numero,titulo),
PRIMARY KEY(issn,numero,titulo,dni_autor)
);
