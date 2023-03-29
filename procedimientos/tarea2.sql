-- Creación de la tabla emppleados --
Drop table empleados

CREATE TABLE empleados(
documento integer char(8),
nombre text varchar(20),
apellido text varchar (20),
sueldo integer decimal(6.2),
cantidad_hijos int,
seccion text varchar(20),
primary key (documento)

);

-- Creación de los inserts -- 
Insert into empleados (22222222,'Juan','Perez',300.00,2,'Contaduria')
Insert into empleados (22333333,'Luis','Lopez',300.00,1,'Contaduria')
Insert into empleados (22222222,'Marta','Perez',500.00,1,'Sistema')
Insert into empleados (22222222,'Susana','Gacria',400.00,2,'Secretaria')
Insert into empleados (22222222,'Jose Maria','Morales',400.00,3,'Secretaria')

-- Creación procedimiento pa_empleados_sueldo que seleccione solo los nombres -- 
DELIMITER ;
DROP procedure if exist pa_empleados_sueldo ;
create procedure pa_empleados_sueldo (IN sueldo decimal(6.2) )
begin
select nombre from empleado;
end
;

-- Ejecución del procedmiento --

EXEC pa_empleados_sueldo;

-- Creación procedimiento pa_empleados_hijos que seleccione solo los nombres, apellidos y cantiddad de hijos --

DELIMITER ;
DROP procedure if exist pa_empleados_hijos ;
create procedure pa_empleados_hijos (IN cantidad_hijos int )
begin
select nombre,apellido,cantidad_hijos from empleado where cantidad_hijos > 0;
end
;

-- Ejecución del procedmiento --

EXEC pa_empleados_hijos;

-- Actualización de la base de datos en la columna hijos --
