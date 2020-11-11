/*
4.
Faça uma função para calcular quantos dias de atraso tem uma atividade.
A função retornará negativo se tiver atrasada 
e positivo se tiver em dia.
*/

-- INSERT into atividade values ('1', 'teste', '2020-01-01', '2020-11-10', 'teste', '2020-11-9');

CREATE OR REPLACE FUNCTION questao_4(codAtividade INTEGER) 
RETURNS INTERVAL AS $$
DECLARE
	fim DATE;
	dataHoje timestamp;
	diasAtraso INTERVAL;
BEGIN
	select into datahoje NOW(); 
	select into fim datafim from atividade where codigo = codAtividade;
	diasAtraso = fim - dataHoje;
	return diasAtraso;
END;
$$ LANGUAGE 'plpgsql';

SELECT questao_4('1');