/*
Crie um usuário chamado empresa_gerente 
para o banco de dados EmpresaDB. 
Este usuário deve ter privilégios apenas de fazer consultas em todas as tabelas. 
Ele pode inserir e atualizar as tabelas Equipe, Membro, Atividade e AtividadeProjeto.
*/

--PostgreSQL
--CREATE USER empresa_gerente WITH ENCRYPTED PASSWORD 'senha';
GRANT SELECT ON ALL TABLES IN SCHEMA public TO empresa_gerente;
GRANT INSERT, UPDATE ON equipe, membro, atividade, atividade_projeto TO empresa_gerente;

