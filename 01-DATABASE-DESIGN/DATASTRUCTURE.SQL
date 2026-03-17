-- =====================================
-- CRIAR DATABASE
-- =====================================
CREATE DATABASE EcommerceDB;
GO

USE EcommerceDB;
GO

-- =====================================
-- TABELA CLIENTES
-- =====================================
CREATE TABLE Clientes (
    ClienteID INT IDENTITY(1,1) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Telefone VARCHAR(20),
    DataCadastro DATETIME DEFAULT GETDATE()
);

-- =====================================
-- TABELA ENDERECOS
-- =====================================
CREATE TABLE Enderecos (
    EnderecoID INT IDENTITY(1,1) PRIMARY KEY,
    ClienteID INT NOT NULL,
    Rua VARCHAR(200),
    Cidade VARCHAR(100),
    Estado VARCHAR(100),
    CEP VARCHAR(20),

    CONSTRAINT FK_Endereco_Cliente
    FOREIGN KEY (ClienteID)
    REFERENCES Clientes(ClienteID)
);

-- =====================================
-- TABELA CATEGORIAS
-- =====================================
CREATE TABLE Categorias (
    CategoriaID INT IDENTITY(1,1) PRIMARY KEY,
    NomeCategoria VARCHAR(100) NOT NULL
);

-- =====================================
-- TABELA PRODUTOS
-- =====================================
CREATE TABLE Produtos (
    ProdutoID INT IDENTITY(1,1) PRIMARY KEY,
    NomeProduto VARCHAR(200),
    Preco DECIMAL(10,2),
    CategoriaID INT,

    CONSTRAINT FK_Produto_Categoria
    FOREIGN KEY (CategoriaID)
    REFERENCES Categorias(CategoriaID)
);

-- =====================================
-- TABELA ESTOQUE
-- =====================================
CREATE TABLE Estoque (
    ProdutoID INT PRIMARY KEY,
    Quantidade INT,

    CONSTRAINT FK_Estoque_Produto
    FOREIGN KEY (ProdutoID)
    REFERENCES Produtos(ProdutoID)
);

-- =====================================
-- TABELA PEDIDOS
-- =====================================
CREATE TABLE Pedidos (
    PedidoID INT IDENTITY(1,1) PRIMARY KEY,
    ClienteID INT,
    DataPedido DATETIME DEFAULT GETDATE(),
    Status VARCHAR(50),

    CONSTRAINT FK_Pedido_Cliente
    FOREIGN KEY (ClienteID)
    REFERENCES Clientes(ClienteID)
);

-- =====================================
-- TABELA ITENS PEDIDO
-- =====================================
CREATE TABLE ItensPedido (
    ItemID INT IDENTITY(1,1) PRIMARY KEY,
    PedidoID INT,
    ProdutoID INT,
    Quantidade INT,
    PrecoUnitario DECIMAL(10,2),

    CONSTRAINT FK_ItemPedido_Pedido
    FOREIGN KEY (PedidoID)
    REFERENCES Pedidos(PedidoID),

    CONSTRAINT FK_ItemPedido_Produto
    FOREIGN KEY (ProdutoID)
    REFERENCES Produtos(ProdutoID)
);

-- =====================================
-- TABELA PAGAMENTOS
-- =====================================
CREATE TABLE Pagamentos (
    PagamentoID INT IDENTITY(1,1) PRIMARY KEY,
    PedidoID INT,
    Valor DECIMAL(10,2),
    MetodoPagamento VARCHAR(50),
    DataPagamento DATETIME,

    CONSTRAINT FK_Pagamento_Pedido
    FOREIGN KEY (PedidoID)
    REFERENCES Pedidos(PedidoID)
);