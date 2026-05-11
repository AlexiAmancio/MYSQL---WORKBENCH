SELECT cliente.nome, produto.nome, endereco.bairro 
FROM cliente 
INNER JOIN produto, endereco;