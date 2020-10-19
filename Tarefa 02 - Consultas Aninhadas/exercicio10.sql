/*
Faça uma consulta que selecione 
o nome do projeto, 
o nome do departamento do projeto, 
o nome do funcionário responsável pelo projeto, 
o nome do departamento do funcionário responsável.
*/

SELECT 
	p.descricao AS projeto, 
	d.descricao AS dep_do_projeto,
	f.nome AS responsavel,
	dep2.descricao AS dep_do_responsavel
FROM projeto p
LEFT JOIN departamento d ON d.codigo = p.coddepto
LEFT JOIN funcionario f ON f.codigo = p.codresponsavel
LEFT JOIN departamento dep2 ON dep2.codigo = f.coddepto;


