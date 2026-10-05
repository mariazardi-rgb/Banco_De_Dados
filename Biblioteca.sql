CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(14),
    email VARCHAR(100),
    telefone VARCHAR(20),
    nome VARCHAR(100)
);

CREATE TABLE livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    editora VARCHAR(100),
    ano_que_foi_publicado INT
);

CREATE TABLE emprestimo (
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    data_emprestimo DATETIME,
    data_devolucao DATETIME,
    id_usuario INT,
    id_livro INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);

ALTER TABLE usuario MODIFY telefone VARCHAR(20);

ALTER TABLE livro ADD isbn VARCHAR(20);

CREATE INDEX idx_nome_usuario
ON usuario (nome);

DROP INDEX idx_nome_usuario
ON usuario;

INSERT INTO usuario (cpf, email, telefone, nome)
VALUES
('111.111.111-11', 'maria@gmail.com', '19999999999', 'Maria Silva'),
('222.222.222-22', 'joao@gmail.com', '19888888888', 'João Santos'),
('333.333.333-33', 'ana@gmail.com', '19777777777', 'Ana Souza');

INSERT INTO livro (titulo, autor, editora, ano_que_foi_publicado, isbn)
VALUES
('Dom Casmurro', 'Machado de Assis', 'Principis', 1899, '978000000001'),
('O Cortiço', 'Aluísio Azevedo', 'Martin Claret', 1890, '978000000002'),
('Frankenstein', 'Mary Shelley', 'DarkSide', 1818, '978000000003');

INSERT INTO emprestimo (data_emprestimo, data_devolucao, id_usuario, id_livro)
VALUES
('2026-10-01 10:00:00', '2026-10-15 10:00:00', 1, 1),
('2026-10-02 14:00:00', '2026-10-16 14:00:00', 2, 2),
('2026-10-03 09:00:00', '2026-10-17 09:00:00', 3, 3);

SELECT * FROM usuario;
SELECT * FROM livro;
SELECT * FROM emprestimo;