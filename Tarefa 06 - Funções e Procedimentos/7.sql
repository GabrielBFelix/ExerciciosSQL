/*
7.
Crie uma procedure que recebe um código de piloto, 
então soma mais um voo a esse piloto 
e por fim exibe o número total de voos desse piloto.
*/

-- INSERT INTO piloto VALUES ('1', 'teste', 0);

CREATE OR REPLACE PROCEDURE add_voo_piloto(cod char(9))
AS $$
DECLARE
    quant_voos integer;
BEGIN
	UPDATE piloto SET num_voos = num_voos + 1 WHERE codigo = cod;
	
	SELECT INTO quant_voos num_voos FROM piloto WHERE codigo=cod;
	
	raise notice 'número total de voos: %', quant_voos;
END;
$$ LANGUAGE plpgsql;

call add_voo_piloto('1');