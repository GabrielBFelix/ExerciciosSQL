/*
Crie um índice para o atributo sigla da tabela departamento 
e um índice para o atributo situação da tabela atividade.
*/

CREATE INDEX idx_sigla ON departamento(sigla);
CREATE INDEX idx_situacao ON atividade(situacao);