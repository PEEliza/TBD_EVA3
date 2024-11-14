delimiter $$
create procedure agregar_pais(in id varchar(2),in nom varchar(40))
begin
	insert into countries(country_id,country_name, region_id) 
    value(id, nom,1);
end$$
delimiter ;