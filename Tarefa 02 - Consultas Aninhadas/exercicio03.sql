
-- Faça uma consulta que selecione o nome e a data de nascimento dos funcionários 
-- com idade superior a 21 anos 
-- que não são gerentes.

select nome, dtnasc
from funcionario f
WHERE f.codigo = (
	SELECT codigo
	FROM funcionario f
	WHERE NOT EXISTS (
		SELECT codgerente
		FROM departamento d
		WHERE f.codigo = d.codgerente
	)
) AND '2020' - date_part('year', dtnasc) >= 21;

