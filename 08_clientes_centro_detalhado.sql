SELECT 
    cliente.nome AS "cliente_nome", 
    produto.nome AS "produto_nome", 
    endereco.bairro
FROM cliente
INNER JOIN endereco ON cliente.cod_cli = endereco.cod_cli
INNER JOIN produto ON cliente.cod_cli = produto.cod_cli
WHERE endereco.bairro = 'Centro'
ORDER BY cliente.nome ASC;