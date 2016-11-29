create table telefonos(
numero number(13) PRIMARY KEY,
tipo varchar(30)
);

create table llama(
n_llama references telefonos(numero),
fecha date,
hora_inicio date,
n_recibe references telefonos(numero),
hora_fin date,
PRIMARY KEY(n_llama,fecha,hora_inicio),
UNIQUE(n_recibe,fecha,hora_inicio),
CHECK(n_llama!=n_recibe)
);
