Delimiter $$
create function potencia_while(base int, expo int)
returns int deterministic

begin
	DECLARE potencia INT DEFAULT base;  
    DECLARE cont INT DEFAULT 0;    

while cont < expo-1 do
    set potencia = potencia * base;
    set cont = cont + 1;
end while;

return potencia;
end$$


delimiter ;