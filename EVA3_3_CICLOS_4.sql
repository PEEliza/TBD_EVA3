DELIMITER $$
CREATE FUNCTION potencia_loop(base INT, expo INT)
RETURNS INT DETERMINISTIC

BEGIN
    DECLARE potencia INT DEFAULT 1;  
    DECLARE cont INT DEFAULT 0;      
    
    ciclito: LOOP
        IF cont >= expo THEN
            LEAVE ciclito;
        END IF;
        
        SET potencia = potencia * base;  
        SET cont = cont + 1;           
    END LOOP ciclito;
    
    RETURN potencia;
END$$
DELIMITER ;
