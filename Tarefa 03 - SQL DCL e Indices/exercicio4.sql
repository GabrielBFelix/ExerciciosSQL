/*
Crie um usuário chamado empresa_admim_local 
para o banco de dados EmpresaDB. 
Este usuário deve ter todos os privilégios 
mas sem acesso remoto.

Chequei o PostgreSQL e ele aparenta não ter a função de fazer um usuário acessar um banco de dados apenas pelo localhost,
por isso, coloquei os dois códigos, um em mysql (respondendo a questão), e o outro em postgresql. 
*/

/*
--MySQL
CREATE USER 'empresa_admim_local'@'%' IDENTIFIED BY 'senha';
GRANT ALL PRIVILEGES ON 'EmpresaDB'.* TO 'empresa_admim_local'@'%';
*/
/*
--PostgreSQL
CREATE USER empresa_admim_local WITH ENCRYPTED PASSWORD 'senha';
GRANT ALL PRIVILEGES ON DATABASE EmpresaDB TO empresa_admim_local;
*/