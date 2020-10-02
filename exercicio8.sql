--DROP FUNCTION delete_passengers_on_delete_voo CASCADE;

CREATE FUNCTION delete_passengers_on_delete_voo ()
	RETURNS TRIGGER
	LANGUAGE 'plpgsql'
	AS $$

BEGIN
	
	DELETE FROM cliente CASCADE
	USING cliente_voo
	WHERE cliente.codigo = cliente_voo.cliente AND
	cliente_voo.voo = OLD.codigo;
	
	DELETE FROM milhas 
	USING cliente_voo
	WHERE cliente.codigo = cliente_voo.cliente AND
	cliente_voo.voo = OLD.codigo;
	
	RETURN NEW;
	
END;
$$;


--DROP FUNCTION delete_piloto_on_delete_voo CASCADE;
/*
CREATE FUNCTION delete_piloto_on_delete_voo ()
	RETURNS TRIGGER
	LANGUAGE 'plpgsql'
	AS $$

BEGIN
	
	DELETE FROM piloto
	WHERE piloto.codigo = OLD.piloto;
	
	RETURN NEW;
	
END;
$$;
*/

-- Então cria um gatiho que executa a tal função
/*
Crie um gatilho que delete todos os clientes de um voo 
sempre que aquele voo for deletado
e mais um gaTilho para deletar o piloto.
*/
/*
CREATE TRIGGER trigger_delete_passengers_on_delete_voo 
BEFORE DELETE ON voo
FOR EACH ROW
EXECUTE PROCEDURE delete_passengers_on_delete_voo ();
*/

/*
CREATE TRIGGER trigger_delete_piloto_on_delete_voo 
BEFORE DELETE ON voo
FOR EACH ROW
EXECUTE PROCEDURE delete_piloto_on_delete_voo ();
*/

--INSERT INTO cliente_voo VALUES ('2', '1', 'executiva');
DELETE FROM voo WHERE codigo = '1';
SELECT * FROM cliente;
--SELECT * FROM cliente_voo;