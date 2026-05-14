select cliente.nome, produto.nome, produto.valor from cliente
inner join produto on cliente.cod_cli = produto.cod_cli
where   valor > 1000 and email like '%a%'
;

