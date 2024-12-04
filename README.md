# Sistema de Gerenciamento de Faturas e Produtos
Este projeto implementa um banco de dados para gerenciar clientes, fornecedores, produtos, faturas e itens de faturas, utilizando o SQLite.

## Estrutura do Banco de Dados
O banco de dados contém as seguintes tabelas:

## Cliente

Armazena as informações dos clientes.
Campos:

codCliente: ID único do cliente (PK)
nome: Nome do cliente
codArea: Código da área do cliente
endereco: Endereço do cliente
telefone: Número de telefone do cliente

## Fornecedor

Armazena as informações dos fornecedores.
Campos:

codFornecedor: ID único do fornecedor (PK)
nome: Nome do fornecedor
email: E-mail do fornecedor
telefone: Número de telefone do fornecedor
status: Status do fornecedor (ativo ou inativo)

## Produto

Armazena as informações dos produtos fornecidos.
Campos:

codProduto: ID único do produto (PK)
descricao: Descrição do produto
precoCusto: Preço de custo do produto
codFornecedor: ID do fornecedor do produto (FK)

## Fatura

Armazena as informações das faturas emitidas.
Campos:

codFatura: ID único da fatura (PK)
codCliente: ID do cliente associado à fatura (FK)
data: Data da fatura

## Item

Armazena os itens contidos nas faturas.
Campos:

codFatura: ID da fatura associada (FK)
codProduto: ID do produto associado à fatura (FK)
valorUnitario: Valor unitário do produto na fatura
quantidade: Quantidade do produto na fatura
Execute o código para criar as tabelas.
Utilização:

Você pode agora adicionar, atualizar, consultar e excluir dados nas tabelas Cliente, Fornecedor, Produto, Fatura e Item conforme necessário, utilizando comandos SQL.
