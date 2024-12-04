-- Criação da tabela Cliente
CREATE TABLE Cliente (
    codCliente INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    codArea TEXT(2) NOT NULL,
    endereco TEXT(120),
    telefone TEXT(15)
);

-- Criação da tabela Fornecedor
CREATE TABLE Fornecedor (
    codFornecedor INTEGER PRIMARY KEY,
    nome TEXT(100) NOT NULL,
    email TEXT(100),
    telefone TEXT(15),
    status TEXT(1)
);

-- Criação da tabela Produto
CREATE TABLE Produto (
    codProduto INTEGER PRIMARY KEY,
    descricao TEXT(100),
    precoCusto REAL,
    codFornecedor INTEGER,
    FOREIGN KEY (codFornecedor) REFERENCES Fornecedor(codFornecedor)
);

-- Criação da tabela Fatura
CREATE TABLE Fatura (
    codFatura INTEGER PRIMARY KEY,
    codCliente INTEGER,
    data DATE,
    FOREIGN KEY (codCliente) REFERENCES Cliente(codCliente)
);

-- Criação da tabela Item
CREATE TABLE Item (
    codFatura INTEGER,
    codProduto INTEGER,
    valorUnitario REAL,
    quantidade INTEGER,
    PRIMARY KEY (codFatura, codProduto),
    FOREIGN KEY (codFatura) REFERENCES Fatura(codFatura),
    FOREIGN KEY (codProduto) REFERENCES Produto(codProduto)
);
