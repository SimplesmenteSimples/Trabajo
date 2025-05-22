USE PADARIA;

CREATE TABLE funcionarios (
    ID_funcionarios VARCHAR(20) NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL
);

CREATE TABLE cliente (
    codg_cliente VARCHAR(20) NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

CREATE TABLE fornecedor (
    ID_fornecedor VARCHAR(20) NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    CNPJ VARCHAR(20) NOT NULL
);

CREATE TABLE produtos (
    ID_produto VARCHAR(20) NOT NULL PRIMARY KEY,
    nome_p VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    ID_fornecedor VARCHAR(20) NOT NULL,
    FOREIGN KEY (ID_fornecedor) REFERENCES fornecedor(ID_fornecedor)
);

CREATE TABLE estoque (
    ID_estoque VARCHAR(20) NOT NULL PRIMARY KEY,
    ID_produto VARCHAR(20) NOT NULL,
    quantidade INT NOT NULL,
    local_AMZ VARCHAR(100) NOT NULL,
    FOREIGN KEY (ID_produto) REFERENCES produtos(ID_produto)
);

CREATE TABLE pedido (
    ID_pedido VARCHAR(20) NOT NULL PRIMARY KEY,
    data_fabricacao DATE NOT NULL,
    data_validade DATE NOT NULL,
    ID_funcionario VARCHAR(20) NOT NULL,
    ID_cliente VARCHAR(20) NOT NULL,
    FOREIGN KEY (ID_funcionario) REFERENCES funcionarios(ID_funcionarios),
    FOREIGN KEY (ID_cliente) REFERENCES cliente(codg_cliente)
);

 