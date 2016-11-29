create table piezas(
cod char(4) PRIMARY KEY,
precio number(8,3),
denominacion varchar(30)
);

create table simples(
cod_pieza PRIMARY KEY references piezas(cod)
);

create table compuestas(
cod_pieza PRIMARY KEY references piezas(cod)
);

create table compone(
cod_pieza PRIMARY KEY references piezas(cod),
cod_p_comp references compuestas(cod_pieza),
n_piezas number(3)
);
