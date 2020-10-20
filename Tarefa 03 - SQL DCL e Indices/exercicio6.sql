/*
Crie um usuário chamado empresa_supervisor 
para o banco de dados EmpresaDB. 
Este usuário deve ter privilégios apenas de fazer consultas em uma Visão da tabela funcionário sem o salário (crie a visão). 
Alem disso, ele pode consultar as tabelas Atividade e AtividadeMembro e Projeto.
*/

CREATE OR REPLACE VIEW public."funcSemSalario" AS
SELECT codigo, nome, sexo, datanasc, supervisor, depto FROM public.funcionario;

CREATE USER empresa_supervisor WITH ENCRYPTED PASSWORD 'senha';
GRANT SELECT ON "funcSemSalario", atividade, atividade_membro, projeto TO empresa_supervisor;