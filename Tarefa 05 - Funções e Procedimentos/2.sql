-- 2. Faça uma consulta para calcular a média de idade por departamento.

CREATE OR REPLACE FUNCTION media_idade_por_dep(codDep INTEGER) RETURNS INTEGER 
	AS $$
DECLARE
	mediaIdadeDep INTEGER;
BEGIN
	SELECT into mediaIdadeDep AVG(EXTRACT(years FROM AGE(f.datanasc))) FROM funcionario f WHERE f.depto = codDep;
	return mediaIdadeDep;
END;
$$ LANGUAGE 'plpgsql';

SELECT media_idade_por_dep(1);