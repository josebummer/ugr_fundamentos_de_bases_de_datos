create table clientes(
dni varchar(9) PRIMARY KEY,
domicilio varchar(50),
telefono varchar(13)
);

create table cuenta_corriente(
codigo number(20) PRIMARY KEY,
fecha date,
saldo number(7,3)
);

create table titular(
dni_cliente references clientes(dni),
codigo_cuenta references cuenta_corriente(codigo),
PRIMARY KEY(dni_cliente,codigo_cuenta)
);

create table tarjetas(
numero number(9) PRIMARY KEY,
tipo varchar(50),
dni_cliente varchar(9),
codigo_cuenta number(20),
FOREIGN KEY(dni_cliente,codigo_cuenta) REFERENCES titular(dni_cliente,codigo_cuenta)
);
