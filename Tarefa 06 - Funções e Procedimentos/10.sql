/*
10.
Crie um procedure que recebe o código de um cliente 
e exibe sua milhagem, 
depois zera ela 
e exibe o nome do cliente 
e a milhagem novamente.
*/

UPDATE milhas SET quantidade = 100 WHERE cliente = '1';

CREATE OR REPLACE PROCEDURE questao_10(IN codCliente char(9))
AS $$
DECLARE
    nomeCliente VARCHAR(20);
	milhasCliente INTEGER;
BEGIN
	SELECT INTO nomeCliente nome FROM cliente WHERE codigo = codCliente;
	SELECT INTO milhasCliente quantidade FROM milhas WHERE cliente = codCliente;
	-- exibe milhagem do cliente
	raise notice 'Milhagem Cliente: %', milhasCliente;
	-- zera a milhagem
	UPDATE milhas SET quantidade = 0 WHERE cliente = codCliente;
	-- exibe o nome do cliente e a milhagem novamente
	raise notice 'Nome do Cliente: %', nomeCliente;
	SELECT INTO milhasCliente quantidade FROM milhas WHERE cliente = codCliente;
	raise notice 'Milhagem Cliente: %', milhasCliente;
END;
$$ LANGUAGE plpgsql;

call questao_10('1');