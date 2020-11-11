/*
1.
Crie uma função que recebe o código de um voo 
e retorna o número de passageiros desse voo.
*/

-- INSERT INTO voo VALUES('1', 'teste', '1', 100, 100);

CREATE OR REPLACE FUNCTION questao_1(codVoo CHAR(9)) 
RETURNS INTEGER AS $$
DECLARE
	numPassageiros integer;
BEGIN
	SELECT INTO numPassageiros num_passageiros FROM voo WHERE codigo = codVoo;
	RETURN numPassageiros;
END;
$$ LANGUAGE 'plpgsql';

SELECT questao_1('1');
