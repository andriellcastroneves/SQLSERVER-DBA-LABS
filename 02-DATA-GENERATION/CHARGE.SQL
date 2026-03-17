USE EcommerceDB;
GO

-- =====================================
-- 1. CATEGORIAS
-- =====================================
INSERT INTO Categorias (NomeCategoria)
VALUES
('Eletrônicos'),
('Informática'),
('Celulares'),
('Livros'),
('Roupas'),
('Esportes'),
('Casa'),
('Automotivo'),
('Beleza'),
('Brinquedos');

-- =====================================
-- 2. CLIENTES (10.000)
-- =====================================
INSERT INTO Clientes (Nome, Email, Telefone)
SELECT TOP 10000
    CONCAT('Cliente ', ROW_NUMBER() OVER (ORDER BY NEWID())),
    CONCAT('cliente', ROW_NUMBER() OVER (ORDER BY NEWID()), '@email.com'),
    CONCAT('91', ABS(CHECKSUM(NEWID())) % 100000000)
FROM sys.objects a
CROSS JOIN sys.objects b;

-- =====================================
-- 3. PRODUTOS (2.000)
-- =====================================
INSERT INTO Produtos (NomeProduto, Preco, CategoriaID)
SELECT TOP 2000
    CONCAT('Produto ', ROW_NUMBER() OVER (ORDER BY NEWID())),
    (ABS(CHECKSUM(NEWID())) % 500) + 10,
    (ABS(CHECKSUM(NEWID())) % 10) + 1
FROM sys.objects a
CROSS JOIN sys.objects b;

-- =====================================
-- 4. ESTOQUE
-- =====================================
INSERT INTO Estoque (ProdutoID, Quantidade)
SELECT
    ProdutoID,
    (ABS(CHECKSUM(NEWID())) % 500) + 10
FROM Produtos;

-- =====================================
-- 5. PEDIDOS (50.000)
-- =====================================
INSERT INTO Pedidos (ClienteID, Status)
SELECT TOP 50000
    (ABS(CHECKSUM(NEWID())) % 10000) + 1,
    'Concluido'
FROM sys.objects a
CROSS JOIN sys.objects b
CROSS JOIN sys.objects c;

-- =====================================
-- 6. ITENS DO PEDIDO (200.000)
-- =====================================
INSERT INTO ItensPedido (PedidoID, ProdutoID, Quantidade, PrecoUnitario)
SELECT TOP 200000
    (ABS(CHECKSUM(NEWID())) % 50000) + 1,
    (ABS(CHECKSUM(NEWID())) % 2000) + 1,
    (ABS(CHECKSUM(NEWID())) % 5) + 1,
    (ABS(CHECKSUM(NEWID())) % 500) + 10
FROM sys.objects a
CROSS JOIN sys.objects b
CROSS JOIN sys.objects c;

-- =====================================
-- 7. PAGAMENTOS
-- =====================================
INSERT INTO Pagamentos (PedidoID, Valor, MetodoPagamento, DataPagamento)
SELECT
    PedidoID,
    (ABS(CHECKSUM(NEWID())) % 1000) + 50,
    'Cartao',
    DATEADD(day, -(ABS(CHECKSUM(NEWID())) % 365), GETDATE())
FROM Pedidos;