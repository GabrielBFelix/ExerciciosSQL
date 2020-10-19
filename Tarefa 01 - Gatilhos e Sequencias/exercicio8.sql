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


CREATE TRIGGER trigger_delete_passengers_on_delete_voo 
BEFORE DELETE ON voo
FOR EACH ROW
EXECUTE PROCEDURE delete_passengers_on_delete_voo ();


CREATE TRIGGER trigger_delete_piloto_on_delete_voo 
BEFORE DELETE ON voo
FOR EACH ROW
EXECUTE PROCEDURE delete_piloto_on_delete_voo ();