/*
Mostrar o nome dos produtos que são do Supermercado1

ProdutoComIdSupermercado = Produto |X|<id == idProduto> ProdutoSupermercado
Supermercado1 = Sel<nome == “Supermercado1”>(Supermercado)
ProdSup1 = ProdutoComIdSupermercado |X|<idSupermercado == id>Supermercado1
NomeProd = Proj<nome>(ProdSup1)
*/

Select P.nome
From P Produto, PS ProdutoSupermercado, S Supermercado
Where ((S.nome == “Supermercado1”)AND
(S.id == PS.idSupermercado)AND
(PS.idProduto == P.id))
