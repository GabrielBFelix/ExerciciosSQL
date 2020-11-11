/*
13.
Crie um índice
para o atributo sigla da tabela departamento
e um índice para o atributo situação da tabela atividade.
*/
DROP INDEX IF EXISTS index_departamento_sigla;
CREATE INDEX index_departamento_sigla ON departamento USING btree(sigla);

DROP INDEX IF EXISTS index_atividade_situacao;
CREATE INDEX index_atividade_situacao ON atividade USING btree(situacao);