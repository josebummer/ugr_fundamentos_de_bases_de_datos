create table sala(
numero number(2) PRIMARY KEY
);

create table pelicula(
cod char(4) PRIMARY KEY,
titulo varchar(30)
);

create table copia(
cod_peli references pelicula(cod),
numero number(4),
PRIMARY KEY(cod_peli,numero)
);

create table proyecta(
n_sala references sala(numero),
fecha date,
hora date,
cod_peli char(4),
n_copia number(4),
FOREIGN KEY(cod_peli,n_copia) REFERENCES copia(cod_peli,numero),
PRIMARY KEY(n_sala,fecha,hora),
UNIQUE(cod_peli,n_copia,fecha,hora)
);

create table asientos(
n_sala references sala(numero),
fila number(3),
numero number(3),
PRIMARY KEY(n_sala,fila,numero)
);

create table entrada(
n_sala number(2),
fecha date,
hora date,
fila number(3),
numero number(3),
FOREIGN KEY(n_sala,fecha,hora) REFERENCES proyecta(n_sala,fecha,hora),
FOREIGN KEY(n_sala,fila,numero) REFERENCES asientos(n_sala,fila,numero),
PRIMARY KEY(n_sala,fecha,hora,fila,numero)
);
