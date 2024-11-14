delimiter $$
create procedure insertar_productos(in nom varchar(50))
begin
	declare nuevo_id int;
    set nuevo_id = ultimo_id()+1;
    insert into productos value(nuevo_id, nom);

end$$

delimiter ;