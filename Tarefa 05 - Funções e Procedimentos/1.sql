-- 1. Faça um função para calcular a idade do funcionário.

DROP FUNCTION IF EXISTS calcula_idade_func cascade;

CREATE FUNCTION calcula_idade_func(INTEGER) RETURNS INTEGER
	AS $$
DECLARE
	idade INTEGER;
BEGIN
	SELECT INTO idade EXTRACT(years FROM AGE(f.datanasc)) FROM funcionario f WHERE f.codigo = $1;
	return idade;
END;
$$ LANGUAGE plpgsql;

SELECT calcula_idade_func(1);
