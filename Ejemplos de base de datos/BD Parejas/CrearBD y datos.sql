create table hombres(
nomh varchar2(30) constraint pk_hombre PRIMARY KEY,
edad number(3) constraint edad_positiva_h check(edad>=0)
);

create table mujeres(
nomm varchar2(30) constraint pk_mujer PRIMARY KEY,
edad number(3) constraint edad_positiva_m check(edad>=0)
);

create table hsimm(
nomh constraint fk_hsimm_h references hombres(nomh),
nomm constraint fk_hsimm_m references mujeres(nomm)
);

create table msimh(
nomm constraint fk_msimh_m references mujeres(nomm),
nomh constraint fk_msimh_h references hombres(nomh)
);

create table matrim(
nomh constraint fk_matrim_h references hombres(nomh),
nomm constraint fk_matrim_m references mujeres(nomm)
);


insert into hombres values('Jose',21);
insert into hombres values('Pepe',18);
insert into hombres values('Ramon',45);
insert into hombres values('Juan',22);
insert into hombres values('Raul',34);
insert into hombres values('Roberto',25);

insert into mujeres values('Maria',20);
insert into mujeres values('Lola',16);
insert into mujeres values('Pepa',29);
insert into mujeres values('Isa',48);
insert into mujeres values('Victoria',22);
insert into mujeres values('Eustaquia',19);
insert into mujeres values('Ana',55);

insert into hsimm values('Jose','Ana');
insert into hsimm values('Jose','Victoria');
insert into hsimm values('Jose','Pepa');
insert into hsimm values('Raul','Eustaquia');
insert into hsimm values('Raul','Isa');
insert into hsimm values('Raul','Maria');
insert into hsimm values('Pepe','Ana');
insert into hsimm values('Roberto','Victoria');

insert into msimh values('Isa','Raul');
insert into msimh values('Isa','Jose');
insert into msimh values('Isa','Pepe');
insert into msimh values('Pepa','Jose');
insert into msimh values('Lola','Ramon');
insert into msimh values('Victoria','Roberto');

insert into matrim values('Raul','Isa');
insert into matrim values('Jose','Pepa');
insert into matrim values('Ramon','Maria');
insert into matrim values('Pepe','Lola');


