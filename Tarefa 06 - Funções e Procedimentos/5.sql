/*
5.
Crie uma função que retorne o número de clientes com mais de 500 milhas.
*/

-- UPDATE milhas SET quantidade = '1000' where client;e = '1';
-- insert into cliente values('2','teste', 'teste');
-- insert into milhas values('2',501);

CREATE OR REPLACE FUNCTION questao_5()
RETURNS INTEGER AS $$
DECLARE
	quantClientes INTEGER;
BEGIN
	SELECT INTO quantClientes COUNT(*) FROM milhas WHERE quantidade > 500;
	RETURN quantClientes;
END;
$$ LANGUAGE 'plpgsql';

SELECT questao_5();