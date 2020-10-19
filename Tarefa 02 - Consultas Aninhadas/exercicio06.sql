-- Faça uma consulta que selecione o nome, o salário dos funcionário e a descrição do departamento, 
-- mesmo que eles não tenham departamentos associados.

SELECT nome, salario, d.descricao
FROM funcionario f, departamento d
WHERE f.coddepto = d.codigo;

