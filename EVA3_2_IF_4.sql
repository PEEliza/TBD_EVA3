Delimiter $$
create function conversion_tem(formula int, valor int)
returns int deterministic
begin
declare conversion int;
declare resu varchar(20);
 case formula
	when 1 then set conversion = valor + 273;
	when 2 then set conversion = valor - 273;
    when 3 then set conversion = valor * 1.8 + 32;
end case;
return conversion;

end$$
delimiter ;