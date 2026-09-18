create database alquilerCoches
go

use alquilerCoches
go

create table ClienteDemo(
	IdCliente int,
	Nombre Varchar(80)
);
go

Alter table ClienteDemo --agregar o eliminar un campo
add DNI char(8) Null;
go

drop table ClienteDemo;
go

insert into ClienteDemo(IdCliente,Nombre,DNI)
values(1,'pedro','12345678');
go

select * from ClienteDemo;
go

update ClienteDemo  --modificar un campo
set Nombre = 'Pedro Sanches'
where IdCliente = 1
go



insert into ClienteDemo(IdCliente,Nombre,DNI)
values(1,'pedro','12345678');
go


insert into ClienteDemo(IdCliente,Nombre,DNI)
values(2,'Ana','7984684');
go

select * from ClienteDemo;
go

update ClienteDemo -- modificar un campo
set Nombre='Wilder';
go

select Nombre, DNI from ClienteDemo;
go



------Creando base de dato con reglas e integridad---------------------------------

create table ClientesDemo(
	IdCliente int primary key, --id unico y establecido como PK
	Nombre varchar(80),
	DNI char(8) unique, --DNI unico, no permite insertar un dni ya registrado
);
go

drop table ClientesDemo;
go

insert into ClientesDemo(IdCliente,Nombre,DNI)
values(1,'pedro','12345678');
go

insert into ClientesDemo(IdCliente,Nombre,DNI)
values(2,'Ana','7984684');
go

insert into ClientesDemo(IdCliente,Nombre,DNI)
values(3,'Ana','4556688');
go

select * from ClientesDemo;
go


alter table ClientesDemo
add DepartInicial char(2)null
default 'Li';
go



insert into ClientesDemo(IdCliente,Nombre,DNI)
values(4,'Juan','94556688');
go

update ClientesDemo
set DepartInicial ='SL'
where IdCliente =3;
go


create table Agencia(
	idAgencia int primary key identity not null, -- id incementado
	Agencia varchar(100)
);
go
select * from Agencia;

insert into Agencia (Agencia)
values ('Los andes');
go

insert into Agencia (Agencia)
values ('Los pinos');
go
