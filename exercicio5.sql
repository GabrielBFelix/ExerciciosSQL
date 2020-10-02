-- Primeiro cria uma função
/*
CREATE FUNCTION add_voo_ao_piloto()
	RETURNS TRIGGER
	LANGUAGE 'plpgsql'
	AS $$

BEGIN

	update piloto p
	set num_voos = num_voos + 1
	where new.piloto = p.codigo;
	
	RETURN NEW;
	
END;
$$;
*/

-- Então cria um gatiho que executa a tal função
/*
CREATE TRIGGER add_voo
AFTER INSERT ON voo
FOR EACH ROW
EXECUTE PROCEDURE add_voo_ao_piloto();
*/

-- Insere os clientes
-- INSERT INTO piloto VALUES ('1', 'roberto', '100');
-- INSERT INTO voo VALUES ('1','executiva', '1', '200', '500.00');

-- Visualiza as tabelas
-- SELECT * FROM voo;
-- SELECT * FROM piloto;



