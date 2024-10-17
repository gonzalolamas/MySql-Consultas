create database universidad;
use universidad;

create table alumnos
(idalumno int,
carrera varchar(50),
añoinscripcion int,
sexo varchar(50),
nombre varchar(50),
apellido varchar(50),
DNI int);

insert into alumnos (idalumno, carrera, añoinscripcion, sexo, nombre, apellido, DNI) values
(1, "Ingenieria en Alimentos", 2010, "Femenino", "Julieta", "Romero", 39789456),
(2, "Licenciatura en Historia", 2008, "Masculino", "Federico", "Schiavi", 38746123),
(3, "Licenciatura en Música", 2005, "Femenino", "Sofía", "Acuña", 36159456),
(4, "Licenciatura en Enfermería", 2007, "Masculino", "Elian", "Gomez", 37456123),
(5, "Ingeniería en Informática", 2002, "Masculino", "Gonzalo", "Salazar", 35456789),
(6, "Licenciatura en Educación", 2005, "Femenino", "Carla", "Gimenez", 37456423),
(7, "Licenciatura en Turismo", 2008, "Femenino", "Julieta", "Terraza", 39426147),
(8, "Licenciatura en Artes", 2003, "Masculino", "Matias", "Riquelme", 36412345),
(9, "Licenciatura en Administración", 2004, "Femenino", "Zulma", "Vercelli", 35458942),
(10, "Licenciatura en Comercio exterior", 2000, "Masculino", "Agustin", "Farías", 32412659); 

select * from alumnos;

select * from alumnos where sexo = "Femenino";

select * from alumnos where añoinscripcion between 2002 and 2008;

select nombre from alumnos;

select carrera, añoinscripcion from alumnos;

select nombre, apellido, DNI from alumnos;

alter table alumnos
add primary key (DNI, idalumno);

describe alumnos;
