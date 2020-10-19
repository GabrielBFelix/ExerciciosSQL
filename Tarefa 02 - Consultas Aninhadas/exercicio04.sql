
-- Faça uma consulta que selecione o nome, o salário e o departamento dos funcionários 
-- que não são gerentes, 
-- ordenando pelo Código do Departamento.


SELECT nome, salario, d.descricao
FROM funcionario f, departamento d
WHERE NOT EXISTS (
	SELECT codgerente
	FROM departamento d
	WHERE f.codigo = d.codgerente
)
AND f.coddepto = d.codigo
ORDER BY d.codigo;

