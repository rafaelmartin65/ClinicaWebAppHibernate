
create database Relaciones;
use Relaciones;
create table Clientes (
id_cliente int auto_increment primary key,
nombre varchar(50) not null,
apellidos varchar(50) not null,
edad int unsigned check(edad between 0 and 99),
sueldo int unsigned,
pais varchar(50) not null,
direccion varchar(50) not null);

describe Clientes;

create table inventarios(
id_inventario int auto_increment primary key,
nombre_producto varchar(53) not null,
en_stock int unsigned not null);

create table ordenes(
id_orden int auto_increment primary key,
inventario_id int not null,    -- Foreign key
fecha_orden date not null,
fecha_envio date not null,
precio double unsigned null
);

alter table ordenes
add column cliente_id int not null,         -- Foreign key
add column cantidad_ordenada int unsigned not null

;
describe ordenes;

alter table ordenes 
add foreign key (inventario_id) references inventarios(id_inventario);

describe ordenes;

alter table ordenes 
add constraint FK_ORD_INV foreign key (cliente_id) references clientes(id_cliente);

insert into ordenes (id_orden, inventario_id, fecha_orden, fecha_envio, precio, cliente_id, cantidad_ordenada) values(null, 1,'2023-10-20','2023-10-30',800.05,1,100);

insert into clientes (id_cliente, nombre, apellidos, edad, sueldo, pais, direccion) values (null, "Pepe", "Perez", 25, 1500.00, "España", "S/C Tenerife");
insert into clientes (id_cliente, nombre, apellidos, edad, sueldo, pais, direccion) values (null, "Jose", "Acosta", 30, 1200.00, "España", "Los Realejos");
insert into clientes (id_cliente, nombre, apellidos, edad, sueldo, pais, direccion) values (null, "Josefina", "Martin", 35, 1900.00, "España", "La Laguna");

select * from clientes;

insert into inventarios (nombre_producto, en_stock) values ("papa bonita", 1000);
insert into inventarios (nombre_producto, en_stock) values ("tomate", 500);
insert into inventarios (nombre_producto, en_stock) values ("manzana", 400);

select * from inventarios;

insert into ordenes (id_orden, inventario_id, fecha_orden, fecha_envio, precio, cliente_id, cantidad_ordenada) values(null, 2,'2023-10-19','2023-10-25',300.05,1,10);

describe ordenes;
select * from ordenes;

use hospital;
desc pacientes;

alter table paciente modify column idpaciente int primary key;

delete from paciente;
select * from paciente;
alter table paciente drop column direccion;
describe paciente;
alter table direccion modify column cp int(5);

create table direccion (
	id_direccion int auto_increment primary key,
    calle varchar(257) not null,
    cp int(5) not null,
    ciudad varchar(50) not null,
    paciente_id int not null,idpaciente
    constraint FK_DIR_PAC foreign key(paciente_id) references paciente(idpaciente)
);

alter table direccion add foreign key (paciente_id)
references paciente(idpaid_direccionciente)
on update cascade on delete cascade;

use hospital;
select * from direccion;
select * from paciente; 
describe paciente;
    
describe direcciondireccionpacientedireccionidpaciente;
desc direcciciudadon;
desc paciente;
insert into paciente (idPaciente, nombre, apellidos, edad, telefono,historial) values (1, "Carmen", "Perez", 35, 658987421, "privado");
insert into paciente values (2, "Pedro", "Perez", 15, 658925421, "publico");
insert into paciente values (3, "Antonio", "Rodriguez", 45, 653587421, "privado");

select * from paciente;