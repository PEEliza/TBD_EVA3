Delimiter $$
create function potencia_repeat(base int, expo int)
returns int deterministic

begin
	declare potencia int default base;  
    declare cont int default 0;
    
repeat
    Set potencia = potencia * base;  
	Set cont = cont + 1; 
until cont >= expo-1 end repeat;
return potencia;
end$$
delimiter ;