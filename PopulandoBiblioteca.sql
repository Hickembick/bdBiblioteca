-- Inserir dados na tabela Editora
INSERT INTO Editora (Nome, Endereco, Telefone)
VALUES
  ('Editora ABC', 'Rua das Flores, 789', '419876543210'),
  ('Editora XYZ', 'Avenida da Liberdade, 123', '418765432109'),
  ('Editora Livros Brilhantes', 'Rua Principal, 456', '417654321098'),
  ('Editora Global', 'Avenida Central, 789', '416543210987'),
  ('Editora Moderna', 'Rua das Artes, 987', '415432109876'),
  ('Editora Fantasia', 'Avenida dos Sonhos, 234', '414321098765'),
  ('Editora Páginas', 'Rua do Conhecimento, 567', '413210987654');

-- Inserir dados na tabela Livro
INSERT INTO Livro (ISBN, Titulo, AnoPublicacao, Genero, Quantidade, EditoraID)
VALUES
  ('978-1111111111', 'A Viagem Misteriosa', 2022, 'Aventura', 10, 2),
  ('978-2222222222', 'O Enigma do Passado', 2021, 'Mistério', 8, 4),
  ('978-3333333333', 'O Código Secreto', 2023, 'Suspense', 15, 1),
  ('978-4444444444', 'Caminhos da Imaginação', 2020, 'Fantasia', 12, 6),
  ('978-5555555555', 'A Vida na Cidade', 2019, 'Drama', 7, 5),
  ('978-6666666666', 'Aventuras Espaciais', 2022, 'Ficção Científica', 9, 3),
  ('978-7777777777', 'Histórias do Passado', 2018, 'História', 6, 7);

-- Inserir dados na tabela Autor
INSERT INTO Autor (ID, Nome, DataNasc, Nacionalidade, Biografia)
VALUES
  (7, 'Autor G', '1980-09-10', 'Brasileiro', 'Autor G é um talentoso escritor...'),
  (8, 'Autor H', '1995-04-18', 'Francês', 'Autor H escreve histórias emocionantes...'),
  (9, 'Autor I', '1988-07-03', 'Americano', 'Autor I é um autor renomado...'),
  (10, 'Autor J', '1976-12-22', 'Espanhol', 'Autor J é conhecido por suas obras...'),
  (11, 'Autor K', '1992-03-15', 'Inglês', 'Autor K é um mestre da ficção...'),
  (12, 'Autor L', '1983-06-28', 'Alemão', 'Autor L traz histórias cativantes...'),
  (13, 'Autor M', '1990-01-05', 'Italiano', 'Autor M é um contador de histórias...');

-- Inserir dados na tabela EscritoPor
INSERT INTO EscritoPor (LivroISBN, AutorID)
VALUES
  ('978-1111111111', 7),
  ('978-2222222222', 8),
  ('978-3333333333', 9),
  ('978-4444444444', 10),
  ('978-5555555555', 11),
  ('978-6666666666', 12),
  ('978-7777777777', 13);

-- Inserir dados na tabela Emprestimo
INSERT INTO Emprestimo (LivroISBN, DataEmprestimo, DataDevolucao)
VALUES
  ('978-1111111111', '2023-08-15', '2023-08-30'),
  ('978-2222222222', '2023-08-17', '2023-09-01'),
  ('978-3333333333', '2023-08-19', '2023-09-03'),
  ('978-4444444444', '2023-08-21', '2023-09-05'),
  ('978-5555555555', '2023-08-23', '2023-09-07'),
  ('978-6666666666', '2023-08-25', '2023-09-09'),
  ('978-7777777777', '2023-08-27', '2023-09-11');
