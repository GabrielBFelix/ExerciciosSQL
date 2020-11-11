/*
4.
Crie uma função que retorna a soma das milhas de todos os clientes.
*/

-- UPDATE milhas SET quantidade = '1000' where cliente = '1';

CREATE OR REPLACE FUNCTION questao_4()
RETURNS INTEGER AS $$
DECLARE
	totalMilhas INTEGER;
BEGIN
	select into totalMilhas sum(quantidade) from milhas;
	RETURN totalMilhas;
END;
$$ LANGUAGE 'plpgsql';

SELECT questao_4();