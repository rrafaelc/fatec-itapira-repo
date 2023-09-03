-- 1. Listar número do pedido e data de entrega de todos os pedidos.

SELECT Num_pedido, data_entrega FROM dbo.pedido; 

-- 2. Listar a descrição e o valor unitário dos produtos.

SELECT descricao, Valor_unitario FROM dbo.produto;

-- 3. Listar nome e endereço de todos os clientes.

SELECT Nome_cliente, Endereco FROM dbo.cliente;

-- 4. Listar nome de todos os vendedores.

SELECT nome_vendedor AS NomeVendedor FROM dbo.vendedor;

-- 5. Listar todas as informações da tabela de clientes.

SELECT * FROM dbo.cliente;

--6. Listar todas as informações da tabela produtos.

SELECT * FROM dbo.produto;

-- 7. Listar o código e nome dos produtos. Insira as literais "código do produto" e "nome do produto" antes de cada atributo.

SELECT CONCAT('código do produto: ', cod_produto), CONCAT('nome do produto: ', descricao) FROM dbo.produto;

-- 8. Listar o nome de todos os vendedores. Alterar o cabeçalho da coluna para nome.

SELECT nome_vendedor AS nome FROM dbo.vendedor;

-- 9. Listar o nome de todos os clientes. Alterar o cabeçalho da coluna para nome.

SELECT Nome_cliente AS nome FROM dbo.cliente;

-- 10. Listar o preço dos produtos aumentados em 10%.

SELECT Valor_unitario, (Valor_unitario * 1.1) AS Aumentado10Porcento FROM dbo.produto;

-- 11. Listar o salário fixo dos vendedores aumentados em 5%.

SELECT (salario_fixo * 1.05) AS Salario FROM dbo.vendedor;

-- 12. Listar o nome dos clientes que moram em Sorocaba.

SELECT Nome_cliente FROM dbo.cliente WHERE cidade = 'Sorocaba';

-- 13. Listar todos os dados dos vendedores com salário fixo < $400,00.

SELECT * FROM dbo.vendedor WHERE salario_fixo < 400;

-- 14. Listar o código do produto e a descrição para os produtos cuja unidade seja igual a "Kg".

SELECT cod_produto, descricao FROM dbo.produto WHERE Unidade LIKE 'Kg';

-- 15. Listar o pedido e o data de entrega para os pedidos feitos entre 01/02/2018 a 01/09/2018.

SELECT num_pedido, data_entrega FROM dbo.pedido WHERE data_compra BETWEEN '2020-02-01' AND '2020-09-01';

-- 16. Listar os dados dos produtos cujo valor unitário seja maior que $100,00 e menor que $200,00.

SELECT * FROM dbo.produto WHERE Valor_unitario BETWEEN 100 AND 200;

-- 17. Listar o numero do pedido e o código do produto cuja quantidade esteja entre 1000 e 1500.

SELECT num_pedido, cod_produto FROM dbo.item_pedido WHERE quantidade > 100 AND quantidade < 150;

-- 18. Listar o nome dos vendedores cujo nome comece por "José".

SELECT nome_vendedor FROM dbo.vendedor WHERE nome_vendedor LIKE '%Anna%';

-- 19. Listar o nome de todos os clientes cujo ultimo nome seja "Silvia";

SELECT nome_vendedor FROM dbo.vendedor WHERE nome_vendedor LIKE '%Smith';

-- 20. Listar a descrição e o código dos produtos que tem a sequência "AC" em qualquer parte da descrição.

SELECT descricao, cod_produto FROM dbo.produto WHERE descricao LIKE '%AC%';

-- 21. Listar a descrição dos produtos cuja unidade, tenha três letras e termina por "M".

SELECT descricao FROM dbo.produto WHERE Unidade LIKE '__M';

-- 22. Listar todos os dados dos produtos cuja unidade comece por "K" ou "Q".

SELECT * FROM dbo.produto WHERE Unidade LIKE 'K%' OR Unidade LIKE 'Q%';

-- 23. Listar os dados dos clientes cujos nomes comecem por "A", "B" ou "C".

SELECT * FROM dbo.cliente  
WHERE Nome_cliente LIKE 'A%' 
OR Nome_cliente LIKE 'B%' 
OR Nome_cliente LIKE 'C%';

-- 24. Listar os dados dos vendedores cujo nome não comece por "J".

SELECT * FROM dbo.vendedor WHERE nome_vendedor NOT LIKE 'J%';

-- 25. Listar o código do produto que tenha quantidade 100, 200 ou 300.

SELECT cod_produto FROM dbo.item_pedido WHERE quantidade IN (100, 200, 300);

-- 26. Listar o nome e a faixa, de comissão para os vendedores com salário fixo igual a $300,00, $400,00 ou $500,00.

SELECT nome_vendedor, faixa_comissao FROM dbo.vendedor WHERE salario_fixo IN (300, 400, 500);

-- 27. Listar os nomes dos clientes que não tenham endereço cadastrado.

SELECT Nome_cliente FROM dbo.cliente WHERE Endereco IS NULL;

-- 28. Listar nome dos clientes que não tenham CEP cadastrado.

SELECT Nome_cliente FROM dbo.cliente WHERE Cep IS NULL;

-- 29. Listar a descrição dos produtos com unidade igual a "Lt" e valor unitário entre $100,00 e $150,00.

SELECT * FROM dbo.produto WHERE Unidade LIKE 'LT' AND Valor_unitario BETWEEN 100 AND 150;

-- 30. Listar os dados dos clientes que moram em "Itu" e não estão com o CEP cadastrado.

SELECT * FROM dbo.cliente WHERE Cidade = 'Itu' AND Cep IS NULL;