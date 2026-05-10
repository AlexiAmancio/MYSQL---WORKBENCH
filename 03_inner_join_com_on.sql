select cliente.nome, produto.nome, endereco.bairro from cliente
inner join endereco on cliente.cod_cli = endereco.cod_cli
inner join produto on cliente.cod_cli = produto.cod_cli;



