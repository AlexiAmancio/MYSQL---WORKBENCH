select cliente.nome "cliente_nome" , produto.nome "produto_nome", valor "preco"
from cliente
inner join produto on cliente.cod_cli = produto.cod_cli
order by cliente.cod_cli asc ;
