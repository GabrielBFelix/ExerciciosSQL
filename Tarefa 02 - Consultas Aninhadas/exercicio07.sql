/*
Faça uma consulta que selecione o 
	nome do departamento, 
	o nome do gerente, e 
	o número de funcionários de cada departamento;

Deve aparecer os departamentos sem gerente e sem funcionários. 
Crie uma view para totalizar o número de funcionários em cada departamento e utilize-a na consulta.
*/

CREATE OR REPLACE VIEW exercicio7 AS
SELECT d.codigo AS cod, COUNT(f.codigo) AS quant_funcionario
FROM funcionario f, departamento d
WHERE f.coddepto = d.codigo
GROUP BY d.codigo;

SELECT d.descricao AS dep, f.nome AS gerente, quant_funcionario
FROM departamento d
FULL OUTER JOIN funcionario f ON f.codigo = d.codgerente
LEFT JOIN exercicio7 AS ex ON ex.cod = d.codigo
WHERE d.descricao IS NOT NULL;

