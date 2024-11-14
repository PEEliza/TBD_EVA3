delimiter $$
create function agregar_pais(id varchar(2),nom varchar(40))
returns int deterministic modifies sql data
begin
	insert into countries(country_id,country_name, region_id) 
    value(id, nom,1);
    return 1;
end$$
delimiter ;