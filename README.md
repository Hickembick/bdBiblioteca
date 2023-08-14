# Projeto de Banco de Dados - Biblioteca
Projeto bibliotecaJessi
Sistema de gerenciamento de biblioteca para armazenar informações sobre livros, autores, editoras e emprestimos. Permite que atualize, consulte e realize cadastro. Esse sistema tambem possui informações sobre os livros disponíveis na biblioteca. Este projeto consiste na modelagem e implementação de um banco de dados para uma biblioteca fictícia. O objetivo é armazenar informações sobre editoras, livros, autores e empréstimos. O banco de dados foi construído utilizando o MySQL Workbench e a modelagem foi realizada usando o dbDiagram.

## Estrutura do Banco de Dados

O banco de dados é composto por quatro entidades principais:

1. **Editora**: Armazena informações sobre as editoras, incluindo nome, endereço e telefone.

2. **Livro**: Contém detalhes sobre os livros, como ISBN, título, ano de publicação, gênero e quantidade em estoque. Também possui um relacionamento com a entidade Editora, representando a editora responsável pela publicação do livro.

3. **Autor**: Mantém informações dos autores, incluindo nome, data de nascimento, nacionalidade e biografia.

4. **Emprestimo**: Registra os empréstimos de livros, contendo detalhes como data de empréstimo, data de devolução e o ISBN do livro emprestado.

Além disso, foram definidos relacionamentos entre as entidades:

- Entre a entidade **Livro** e **Editora**, onde um livro pertence a uma editora.
- Entre a entidade **Livro** e **Autor** através da tabela associativa **EscritoPor**, representando a autoria dos livros, permitindo que um livro tenha múltiplos autores e um autor tenha escrito vários livros.
- Entre a entidade **Emprestimo** e **Livro**, permitindo o rastreamento dos livros emprestados.

## Justificativas das Escolhas

- Optou-se por utilizar chaves primárias e estrangeiras para garantir a integridade referencial dos dados e permitir a criação de relacionamentos entre as tabelas.
- A tabela associativa **EscritoPor** foi usada para representar o relacionamento muitos-para-muitos entre livros e autores, permitindo a ligação de vários autores a vários livros.
- Foram criados campos relevantes para cada entidade, visando armazenar informações úteis para uma biblioteca real, como detalhes dos livros, empréstimos e informações sobre os autores.


---

Esse projeto foi desenvolvido como parte do Jessica Hickembick para Resilia. Ele está disponível publicamente no GitHub.

Autores: Jessica Hickembick
