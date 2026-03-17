SELECT 'Clientes' AS Tabela, COUNT(*) FROM Clientes
UNION ALL
SELECT 'Produtos', COUNT(*) FROM Produtos
UNION ALL
SELECT 'Pedidos', COUNT(*) FROM Pedidos
UNION ALL
SELECT 'ItensPedido', COUNT(*) FROM ItensPedido
UNION ALL
SELECT 'Pagamentos', COUNT(*) FROM Pagamentos;