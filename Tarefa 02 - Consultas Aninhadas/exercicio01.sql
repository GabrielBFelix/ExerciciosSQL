
-- Faça uma consulta que selecione o nome dos funcionários que recebem salários superiores aos salários pagos no departamento 5.


Select Nome
From Funcionario
Where Salario > (
	Select Salario
	From Funcionario fdep5
	Where fdep5.coddepto = '5'
);


