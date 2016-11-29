create table destinos(
cod char(4) PRIMARY KEY,
nombre varchar(40)
);

create table trayecto(
ciudad_partida varchar(10),
cod_dest references destinos(cod),
ciudad_llegada varchar(40),
PRIMARY KEY(cod_dest,ciudad_partida),
UNIQUE(cod_dest,ciudad_llegada)
);

create table aviones(
cod char(4) PRIMARY KEY
);

create table vuelo(
cod_avion references aviones(cod),
fecha_part date,
hora_part date,
ciudad_part varchar(40),
cod_destino char(4),
hora_llega date,
FOREIGN KEY(ciudad_part,cod_destino) REFERENCES trayecto(ciudad_partida,cod_dest),
PRIMARY KEY(cod_avion,fecha_part,hora_part)
);

create table asientos(
cod_avion references aviones(cod),
fila number(3),
letra char(2),
PRIMARY KEY(cod_avion,fila,letra)
);

create table pasajeros(
dni varchar(9) PRIMARY KEY,
nombre varchar(20)
);

create table embarque(
dni_pasajero references pasajeros(dni),
cod_avion char(4),
fila number(3),
letra char(2),
fecha_partida date,
hora_partida date,
FOREIGN KEY(cod_avion,fila,letra) REFERENCES asientos(cod_avion,fila,letra),
FOREIGN KEY(cod_avion,fecha_partida,hora_partida) REFERENCES vuelo(cod_avion,fecha_part,hora_part),
PRIMARY KEY(dni_pasajero,cod_avion,fecha_partida,hora_partida),
UNIQUE(cod_avion,fila,letra,fecha_partida,hora_partida)
);
