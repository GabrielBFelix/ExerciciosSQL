-- 1. Faça um função para calcular a idade do funcionário.

DROP FUNCTION IF EXISTS calcula_idade_func cascade;

CREATE FUNCTION calcula_idade_func(INTEGER)
	RETURNS INTERVAL
	LANGUAGE 'plpgsql'
	AS $$

BEGIN

	RETURN (
		SELECT AGE(f.datanasc)
		FROM funcionario f
		WHERE f.codigo = $1
	);
	
END;
$$;

SELECT calcula_idade_func(1);
