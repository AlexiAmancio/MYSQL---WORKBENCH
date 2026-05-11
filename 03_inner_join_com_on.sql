SELECT 
    cliente.nome, 
    produto.nome, 
    endereco.bairro
FROM cliente
INNER JOIN endereco ON cliente.cod_cli = endereco.cod_cli
INNER JOIN produto ON cliente.cod_cli = produto.cod_cli;