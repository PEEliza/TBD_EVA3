delimiter $$
create procedure insertar_prueba(clave int)
begin 
	declare exit handler for sqlstate '23000'
    begin
		select 'ERROR: CLAVE DUPLICADA' as mensaje;
    end;
    insert into prueba(id) value (clave);
    select 'CLAVE CORRECTA' as mensaje;
end$$
delimiter ;