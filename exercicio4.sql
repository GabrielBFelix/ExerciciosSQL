
-- Primeiro cria uma função
/*
CREATE FUNCTION add_milhagem()
	RETURNS TRIGGER
	LANGUAGE 'plpgsql'
	AS $$

BEGIN

	INSERT INTO milhas(cliente,quantidade) 
	values(new.codigo,0);
	
	RETURN NEW;
	
END;
$$;
*/

-- Então cria um gatiho que executa a tal função
/*
CREATE TRIGGER add_milhagem_cliente_novo
AFTER INSERT 
ON cliente
FOR EACH ROW
EXECUTE PROCEDURE add_milhagem();
*/

-- Insere os clientes
-- INSERT INTO cliente VALUES ('1','nome', 'end');

-- Visualiza as tabelas
-- SELECT * FROM cliente;
-- SELECT * FROM milhas;