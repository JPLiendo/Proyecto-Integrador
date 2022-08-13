create database if not exists peluqueriaCanina;

use peluqueriaCanina;

create table dueno(
	DNI int not null unique,
    nombre varchar (45) not null,
    apellido varchar (45) not null,
    telefono int not null,
    direccion varchar (45) not null,
    constraint pk_dni primary key (DNI)
    );

# 1 - Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.

create table perro(
	ID_perro int not null auto_increment unique,
	nombre varchar (45) not null,
	fecha_nac date not null,
	sexo varchar (20) not null,
    DNI_dueno int not null,
	constraint pk_id_p primary key (ID_perro),
	constraint fk_dni_d foreign key (DNI_dueno) references dueno (DNI)
);
create table historial(
	ID_historial int not null auto_increment unique,
    fecha date not null,
    perro int not null,
    descripcion varchar (100),
    monto int not null,
    constraint pk_id_h primary key (ID_historial),
	constraint fk_id_p foreign key (perro) references perro (ID_perro)
);

# 2 - inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

insert into dueno (DNI, nombre, apellido, telefono, direccion) values (28957346, "Juan",  "Perez", 4789689, "Belgrano 101");
insert into perro (nombre, fecha_nac, sexo, DNI_dueno) values ("Puppy", "2012/12/12", "Macho", 28957346);

# 4 - Actualice la fecha de nacimiento de algún animal (perro) que usted considere.

update perro set fecha_nac = "2015/02/10" where DNI_dueno = 28957346;

# muestro resultados

show columns from dueno;
show columns from perro;
show columns from historial;

select * from dueno;
select * from perro;






