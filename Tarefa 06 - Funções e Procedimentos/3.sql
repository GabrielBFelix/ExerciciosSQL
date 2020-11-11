/*
3.
Crie uma função que retorna o número de voos 
que certo cliente já realizou.
*/

-- insert into cliente_voo values('1','3','teste');

CREATE OR REPLACE FUNCTION questao_3(codCliente CHAR(9)) 
RETURNS INTEGER AS $$
DECLARE
	voosCliente INTEGER;
BEGIN
	select into voosCliente count(*) from cliente_voo where cliente = codCliente;
	RETURN voosCliente;
END;
$$ LANGUAGE 'plpgsql';

SELECT questao_3('1');