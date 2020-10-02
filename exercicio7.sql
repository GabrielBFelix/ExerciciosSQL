/*
CREATE FUNCTION add_passageiro_voo()
	RETURNS TRIGGER
	LANGUAGE 'plpgsql'
	AS $$

BEGIN

	UPDATE voo 
	SET num_passageiros = num_passageiros + 1
	WHERE new.voo = voo.codigo;
	
	RETURN NEW;
	
END;
$$;
*/

-- Então cria um gatiho que executa a tal função
/*
CREATE TRIGGER trigger_add_passageiro_voo AFTER 
INSERT ON cliente_voo
FOR EACH ROW
EXECUTE PROCEDURE add_passageiro_voo();
*/

-- INSERT INTO cliente_voo VALUES ('2', '1', 'executiva');

-- SELECT * FROM voo;