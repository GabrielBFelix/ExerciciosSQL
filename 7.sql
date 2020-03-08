CREATE TABLE "Produto"
(
    id bigint NOT NULL,
    nome character varying NOT NULL,
    vencimento date,
    CONSTRAINT "Produto_pkey" PRIMARY KEY (id)
);
insert into "Produto"(id, nome, vencimento) values (1, 'Produto1', '2001-01-01');
insert into "Produto"(id, nome, vencimento) values (2, 'Produto2', '2002-02-02');
insert into "Produto"(id, nome, vencimento) values (3, 'Produto3', '2003-03-03');


CREATE TABLE "Supermercado"
(
    nome character varying,
    id bigint NOT NULL,
    dataCriacao date,
    CONSTRAINT "Supermercado_pkey" PRIMARY KEY (id)
);
insert into "Supermercado" (nome, id, "dataCriacao") values ('Supermercado1', 1, '2001-01-01');
insert into "Supermercado" (nome, id, "dataCriacao") values ('Supermercado2', 2, '2002-02-02');
insert into "Supermercado" (nome, id, "dataCriacao") values ('Supermercado3', 3, '2003-03-03');


CREATE TABLE "ProdutoSupermercado"
(
    "idProduto" bigint NOT NULL,
    "idSupermercado" bigint NOT NULL,
    CONSTRAINT "produtoSupermercadoPK" PRIMARY KEY ("idProduto", "idSupermercado"),
    CONSTRAINT "idProdutoFK" FOREIGN KEY ("idProduto")
        REFERENCES public."Produto" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "idSupermercadoFK" FOREIGN KEY ("idSupermercado")
        REFERENCES public."Supermercado" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);
insert into "ProdutoSupermercado" ("idProduto", "idSupermercado") values (1,1);
insert into "ProdutoSupermercado" ("idProduto", "idSupermercado") values (2,2);
insert into "ProdutoSupermercado" ("idProduto", "idSupermercado") values (3,3);
