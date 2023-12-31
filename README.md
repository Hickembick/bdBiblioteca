# Projeto de Banco de Dados - Biblioteca

## Descrição

O projeto "bibliotecaJessi" é um sistema de gerenciamento de biblioteca para armazenar e gerenciar informações sobre livros, autores, editoras e empréstimos. O sistema foi modelado e implementado utilizando o MySQL Workbench e a modelagem visual foi realizada no dbDiagram.

## Funcionalidades

O sistema permite:

- Cadastrar, atualizar e consultar informações sobre editoras, livros, autores e empréstimos.
- Rastrear os livros disponíveis na biblioteca, incluindo detalhes sobre título, autor, ano de publicação, gênero e quantidade em estoque.

## Estrutura do Banco de Dados

O banco de dados é composto por quatro entidades principais:

1. **Editora**: Armazena informações sobre as editoras, incluindo nome, endereço e telefone.

2. **Livro**: Contém detalhes sobre os livros, como ISBN, título, ano de publicação, gênero e quantidade em estoque. Também possui um relacionamento com a entidade Editora, representando a editora responsável pela publicação do livro.

3. **Autor**: Mantém informações dos autores, incluindo nome, data de nascimento, nacionalidade e biografia.

4. **Emprestimo**: Registra os empréstimos de livros, contendo detalhes como data de empréstimo, data de devolução e o ISBN do livro emprestado.

## Relacionamentos

- Entre a entidade **Livro** e **Editora**, onde um livro pertence a uma editora.
- Entre a entidade **Livro** e **Autor** através da tabela associativa **EscritoPor**, representando a autoria dos livros, permitindo que um livro tenha múltiplos autores e um autor tenha escrito vários livros.
- Entre a entidade **Emprestimo** e **Livro**, permitindo o rastreamento dos livros emprestados.

## Como Usar

1. Clone este repositório para o seu ambiente local.

2. Execute os comandos SQL no MySQL para criar o banco de dados e tabelas. Você pode usar as instruções fornecidas no arquivo `schema.sql`.

3. Use os comandos SQL fornecidos no arquivo `data.sql` para inserir dados de exemplo nas tabelas.

4. Para consultar os dados, utilize as consultas SQL apropriadas para suas necessidades. Por exemplo:

   ```sql
   -- Consultar os livros emprestados
   SELECT * FROM Emprestimo;
   
   -- Consultar os autores de um livro específico
   SELECT Autor.* FROM Autor
   JOIN EscritoPor ON Autor.ID = EscritoPor.AutorID
   WHERE EscritoPor.LivroISBN = '978-1111111111';

Autores
Projeto desenvolvido por Jessica Hickembick como parte do curso da Resilia.

Esse projeto está disponível publicamente no GitHub.

Para mais informações, acesse o GitHub do projeto https://github.com/Hickembick/bdBiblioteca.git.