-- Carlos Rafael da Costa

-- 1. Listar descrição dos produtos que tem valor unitário acima da media e não foram vendidos no mês de maio 2011

SELECT descricao FROM dbo.produto
WHERE Valor_unitario > (SELECT AVG(Valor_unitario) FROM dbo.produto)
AND cod_produto IN (
	SELECT cod_produto FROM dbo.item_pedido i
	JOIN dbo.pedido p ON i.num_pedido = p.Num_pedido
	WHERE MONTH(data_compra) != 5 AND YEAR(data_compra) != 2011
);

-- 2. Listar nome dos vendedores e salários dos vendedores com salário fixo acima da média

SELECT nome_vendedor, salario_fixo FROM dbo.vendedor 
WHERE salario_fixo > (SELECT AVG(salario_fixo) FROM dbo.vendedor);

-- 3. Listar nome dos vendedores com salário fixo abaixo da média e que não realizaram vendas no primeiro trimestre 2011

SELECT nome_vendedor FROM dbo.vendedor
	WHERE salario_fixo < (SELECT AVG(salario_fixo) FROM dbo.vendedor)
	AND cod_vendedor NOT IN (SELECT cod_vendedor FROM dbo.pedido);

-- 4. Listar o nome do vendedor com maior salário

SELECT nome_vendedor FROM dbo.vendedor 
WHERE salario_fixo = (SELECT MAX(salario_fixo) FROM dbo.vendedor);

-- 5. Listar nome dos clientes que só realizaram compra com o vendedor ‘Osmar Mytão’

SELECT nome_cliente FROM dbo.cliente
WHERE Cod_cliente IN (
	SELECT Cod_cliente
	FROM dbo.pedido
	WHERE cod_vendedor = (
		SELECT cod_vendedor 
		FROM dbo.vendedor
		WHERE nome_vendedor LIKE 'Osmar Mytão'
		)
);

-- 6. Listar nome dos vendedores que só realizaram vendas para o cliente ‘Osmar Jeyto’

SELECT nome_vendedor
FROM dbo.vendedor
WHERE cod_vendedor IN (
  SELECT cod_vendedor
  FROM dbo.pedido
  WHERE cod_cliente = (SELECT cod_cliente FROM dbo.cliente WHERE nome_cliente = 'Osmar Jeyto')
);

-- 7. Listar descrição dos produtos que tem valor unitário abaixo da média e foram vendidos para o cliente ‘Osmar Celino’

SELECT descricao,Nome_cliente 
FROM dbo.produto JOIN dbo.cliente
ON produto.cod_produto=cliente.Cod_cliente
WHERE Valor_unitario <= (
	SELECT AVG(Valor_unitario)
	FROM dbo.produto
	) AND Nome_cliente IN (
		SELECT Nome_cliente
		FROM dbo.cliente WHERE Nome_cliente LIKE 'Osmar Celino'
		);

-- 8. Listar descrição dos produtos que não foram vendidos no mês de maio de 2011

SELECT descricao,data_entrega
FROM dbo.pedido JOIN dbo.produto
ON pedido.Num_pedido=produto.cod_produto
WHERE MONTH (data_compra) != 5 AND YEAR(data_compra) != 2020;

-- 9. Listar nome dos clientes que compraram com o vendedor com codigo 17

SELECT nome_cliente,cod_vendedor 
FROM dbo.cliente JOIN dbo.vendedor
ON cliente.Cod_cliente=vendedor.cod_vendedor
WHERE cod_vendedor = 17;

-- 10. Listar nome dos vendedores que venderam para o cliente com código 1

SELECT nome_vendedor,Nome_cliente
FROM dbo.vendedor JOIN dbo.cliente
ON vendedor.cod_vendedor=cliente.Cod_cliente
WHERE Cod_cliente = 1;

-- 11. Listar nome dos clientes que compraram com o vendedor ‘Osmar Feyto’

SELECT nome_cliente, nome_vendedor
FROM dbo.cliente JOIN dbo.vendedor
ON cliente.Cod_cliente=vendedor.cod_vendedor
WHERE nome_vendedor LIKE 'Osmar Feyto';

-- 12. Listar nome e salário dos vendedores que realizaram a venda do produto “rosca”

SELECT nome_vendedor, salario_fixo,descricao
FROM dbo.vendedor JOIN dbo.produto
ON vendedor.cod_vendedor=produto.cod_produto
WHERE descricao = 'rosca';

-- 13. Listar nome dos vendedores que não realizaram vendas no primeiro trimestre de 2011

SELECT nome_vendedor,data_compra 
FROM dbo.vendedor JOIN dbo.pedido
ON vendedor.cod_vendedor=pedido.Num_pedido
WHERE MONTH (data_compra)  BETWEEN 1 AND 6 
AND YEAR (data_compra) = 2020;

-- 14. Listar nome dos vendedores que realizaram venda para o cliente ‘Osmar Mytão’

SELECT nome_vendedor,nome_cliente
FROM dbo.vendedor JOIN dbo.cliente
	ON vendedor.cod_vendedor=cliente.Cod_cliente
WHERE Nome_cliente LIKE 'Osmar Mytão';