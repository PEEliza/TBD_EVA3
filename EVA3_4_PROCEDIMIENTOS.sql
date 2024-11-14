delimiter $$
create procedure consultar_empleado(id_empleado int)
begin
	select * from employees
    where employee_id = id_empleado;
end$$

delimiter ;