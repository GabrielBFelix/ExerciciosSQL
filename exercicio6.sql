-- Primeiro cria uma função

/*
CREATE FUNCTION add_milhas_a_cliente()
	RETURNS TRIGGER
	LANGUAGE 'plpgsql'
	AS $$

BEGIN

	UPDATE milhas m 
	SET quantidade = quantidade + 
	(
		SELECT distancia 
		FROM voo, cliente_voo 
		WHERE new.voo = voo.codigo
	) / 10
	WHERE cliente = new.cliente;
	
	RETURN NEW;
	
END;
$$;
*/

-- Então cria um gatiho que executa a tal função
/*
CREATE TRIGGER add_milhas AFTER 
INSERT ON cliente_voo
FOR EACH ROW
EXECUTE PROCEDURE add_milhas_a_cliente();
*/

--INSERT INTO cliente_voo VALUES ('1', '1', 'executiva');

--SELECT * FROM milhas;