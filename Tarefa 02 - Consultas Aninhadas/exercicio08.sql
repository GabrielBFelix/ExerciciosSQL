/*
Faça uma consulta que selecione o 
nome do departamento, o 
nome do gerente, e o 
número de projetos de cada departamento. 

Deve aparecer os departamentos sem gerente e sem projetos. Crie e use views na consulta, se necessário.
*/

CREATE OR REPLACE VIEW exercicio8 AS
SELECT COUNT(p.codigo) AS quant_projetos, d.codigo AS dep
FROM projeto p, departamento d
WHERE p.coddepto = d.codigo
GROUP BY d.codigo;

SELECT d.descricao AS dep, f.nome AS gerente, quant_projetos
FROM departamento d
FULL OUTER JOIN funcionario f ON f.codigo = d.codgerente
LEFT JOIN exercicio8 ex ON ex.dep = d.codigo
WHERE d.descricao IS NOT NULL;

