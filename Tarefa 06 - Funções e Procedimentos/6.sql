/*
6.
Crie uma procedure que recebe um valor qualquer
e retorna esse valor ao quadrado.
*/

CREATE OR REPLACE PROCEDURE quadrado(INOUT num integer)
AS $$
BEGIN
	num = num^2;
END;
$$ LANGUAGE plpgsql;

call quadrado(4);