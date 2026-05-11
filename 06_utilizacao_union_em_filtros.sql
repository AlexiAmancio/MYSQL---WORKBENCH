SELECT nome, valor, 'Promoção' AS categoria 
FROM produto 
WHERE valor <= 500

union 

SELECT nome, valor, 'Caro' AS categoria 
FROM produto
WHERE valor > 390 
order by valor asc;