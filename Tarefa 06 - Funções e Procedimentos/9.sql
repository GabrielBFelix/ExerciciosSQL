/*
9.
Crie uma procedure que recebe o código de um piloto 
e retorna o nome desse piloto e sua quantidade de voos.
*/

-- insert into piloto values('2', 'teste', 50);


CREATE OR REPLACE PROCEDURE questao_9(IN codPiloto char(9), INOUT nomePiloto VARCHAR(20) DEFAULT NULL, INOUT voosPiloto INTEGER DEFAULT NULL)
AS $$
BEGIN
	SELECT INTO nomePiloto nome FROM piloto WHERE codigo = codPiloto;
	SELECT INTO voosPiloto num_voos FROM piloto WHERE codigo = codPiloto;
END;
$$ LANGUAGE plpgsql;

call questao_9('2');
