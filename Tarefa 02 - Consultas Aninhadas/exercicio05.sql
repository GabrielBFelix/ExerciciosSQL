-- a) Explique os problemas de termos valores nulos nos dados.
-- b) Explique o funcionamento do Right e do Left Join.
-- c) Explique o funcionamento do Full Outer Join e como pode ser feito no MySQL ou MariaDB que não tem mais o comando Full.

/*
a) 
Em alguns casos o sgbd não consegue lidar bem com valores nulos, ex: tentando fazer um avg() de uma coluna,
e ver um erro pois um dos atributos tinha valor nulo.

b) 
Select *
From X
LEFT/RIGHT JOIN Y 
ON Y.id = X.id;

Levando em conta o exemplo acima, se for feito um left join, os termos da tabela Y serão "jogados" na tabela X, 
onde o id de Y é igual ao id de X, enquanto aos termos de X que não tem relação com a tabela Y, eles vão receber NULL.
Se for feito um left join, os termos da tabela X serão "jogados" na tabela Y, 
onde o id de X é igual ao id de Y, enquanto aos termos de Y que não tem relação com a tabela X, eles vão receber NULL.

c)

O Full Outer Join, é como um Left e Right Join ao mesmo tempo, juntando todos os termos de Y e X (exemplo da b),
ele seria feito no mysql usando a função UNION.

*/
