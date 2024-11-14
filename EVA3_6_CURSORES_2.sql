delimiter $$
create procedure contar_paises(out cont int)
begin
declare salir int default false;
declare id varchar(2);

	declare contador_paises cursor for 
    select country_id from countries;
    declare continue handler for not found
    begin
		set salir = true;
    end;
    
    open contador_paises;
    set cont = 0;
    cont_p: loop
		fetch  contador_paises into id;
        set cont = cont +1;
        if salir then
			leave cont_p;
		end if;
    end loop;
    
end$$
delimiter ;