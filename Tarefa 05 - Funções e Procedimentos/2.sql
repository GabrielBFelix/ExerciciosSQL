-- 2. Faça uma consulta para calcular a média de idade por departamento.

CREATE OR REPLACE FUNCTION media_idade_por_dep(INTEGER) RETURNS TABLE (idade INTERVAL) LANGUAGE 'plpgsql' AS $$
BEGIN
	RETURN QUERY(
		SELECT AVG(AGE(f.datanasc)) AS idade
		FROM funcionario f
		WHERE f.depto = $1
	);
END;
$$;

SELECT media_idade_por_dep(1);