# Biblioteca SQL

Projeto acadêmico de banco de dados relacional para uma livraria integrada a uma biblioteca por assinatura, desenvolvido para praticar conceitos de SQL e modelagem de dados.

## Sobre o projeto

A proposta é representar o funcionamento de uma livraria que também oferece empréstimos de livros para clientes com assinatura. O sistema contempla cadastros de livros, autores, gêneros e editoras, além de estruturas para estoque, produtos, clientes, assinaturas, empréstimos e vendas.

De acordo com o desafio original, clientes com assinatura ativa podem ter 20% de desconto na compra de livros.

> **Nota sobre o escopo:** este README descreve a proposta do projeto. Consulte os scripts SQL para verificar quais estruturas e operações estão presentes na versão publicada.

## Objetivos

- Praticar a criação de tabelas relacionais.
- Trabalhar com chaves primárias e estrangeiras.
- Representar relacionamentos entre livros, autores, gêneros e editoras.
- Modelar operações de estoque, assinatura, empréstimo e venda.
- Criar consultas SQL para consultar os dados.

## Entidades previstas

| Entidade | Finalidade |
| --- | --- |
| `Livros` | Armazenar informações dos livros e referências a gênero, autor e editora. |
| `Genero` | Classificar livros por gênero. |
| `Autor` | Registrar autores. |
| `editora` | Registrar editoras. |
| `Estoque` | Representar unidades físicas e seu estado de aluguel ou venda. |
| `Produtos` | Registrar informações comerciais, como quantidade e preço. |
| `clientes` | Armazenar dados cadastrais dos clientes. |
| `assinantes` | Registrar a situação e o período das assinaturas. |
| `Aluguel` | Registrar empréstimos e devoluções. |
| `venda` | Registrar vendas realizadas. |
| `Item_venda` | Relacionar uma venda aos produtos e unidades vendidos. |

## Tecnologias

- **Banco de dados:** MySQL
- **Linguagem:** SQL

## Estrutura do repositório

```text
biblioteca-sql/
├── docs/
│   └── desafio-graduacao-sql.pdf
├── sql/
│   └── script-biblioteca.sql
├── .gitignore
└── README.md
```

## Como utilizar

1. Instale e inicie o MySQL.
2. Abra o projeto em um cliente MySQL, como MySQL Workbench.
3. Selecione ou crie o banco de dados esperado pelo script. O arquivo atual faz referências explícitas ao schema `biblioteca`.
4. Revise o script e execute-o no ambiente de desenvolvimento.
5. Utilize as consultas de exemplo ao final do script para explorar os dados.

**Atenção:** antes de executar em um banco que já contém dados, faça um backup. O script contém comandos de criação de tabelas, alterações, inserções e consultas; ele não está preparado como uma migração repetível em um banco já montado.

## Contexto acadêmico

O projeto foi elaborado a partir do documento `docs/desafio-graduacao-sql.pdf`, que descreve o problema proposto e as entidades esperadas.

## Autoria

Desenvolvido em dupla como projeto acadêmico de prática de SQL.

## Status

Projeto acadêmico — documentação e organização do repositório em andamento.
