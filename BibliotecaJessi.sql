-- Criação do banco de dados "jessibibli"
CREATE DATABASE jessibibli;

-- Seleciona o banco de dados recém-criado
USE jessibibli;

-- Tabela 'Editora': Armazena informações sobre editoras
CREATE TABLE `Editora` (
  `ID` INT PRIMARY KEY AUTO_INCREMENT,
  `Nome` VARCHAR(100) NOT NULL,
  `Endereco` VARCHAR(200),
  `Telefone` VARCHAR(20)
);

-- Tabela 'Livro': Armazena informações sobre livros
CREATE TABLE `Livro` (
  `ISBN` VARCHAR(13) PRIMARY KEY,
  `Titulo` VARCHAR(200) NOT NULL,
  `AnoPublicacao` YEAR,
  `Genero` VARCHAR(50),
  `Quantidade` INT,
  `EditoraID` INT,
  FOREIGN KEY (`EditoraID`) REFERENCES `Editora` (`ID`)
);

-- Tabela 'Autor': Armazena informações sobre autores
CREATE TABLE `Autor` (
  `ID` INT PRIMARY KEY,
  `Nome` VARCHAR(100) NOT NULL,
  `DataNasc` DATE,
  `Nacionalidade` VARCHAR(50),
  `Biografia` TEXT
);

-- Tabela 'EscritoPor': Associa autores a livros (relação muitos-para-muitos)
CREATE TABLE `EscritoPor` (
  `LivroISBN` VARCHAR(13),
  `AutorID` INT,
  PRIMARY KEY (`LivroISBN`, `AutorID`),
  FOREIGN KEY (`LivroISBN`) REFERENCES `Livro` (`ISBN`),
  FOREIGN KEY (`AutorID`) REFERENCES `Autor` (`ID`)
);

-- Tabela 'Emprestimo': Armazena informações sobre empréstimos de livros
CREATE TABLE `Emprestimo` (
  `ID` INT PRIMARY KEY AUTO_INCREMENT,
  `LivroISBN` VARCHAR(13),
  `DataEmprestimo` DATE,
  `DataDevolucao` DATE,
  FOREIGN KEY (`LivroISBN`) REFERENCES `Livro` (`ISBN`)
);
