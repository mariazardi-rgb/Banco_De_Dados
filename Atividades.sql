CREATE DATABASE Escola;
USE Escola;
CREATE TABLE Professor (
    nome VARCHAR(100),
    email VARCHAR(100),
    id_professor INT auto_increment PRIMARY KEY,
    Formacao VARCHAR(100)
);
CREATE TABLE Alunos (
    id_aluno INT auto_increment PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    idade INT
);
CREATE TABLE Curso (
    id_curso INT auto_increment PRIMARY KEY,
    Nome_Curso VARCHAR(100),
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);
CREATE TABLE CadastroCurso (
    id_cadastro INT auto_increment PRIMARY KEY,
    id_aluno INT,
    id_curso INT,
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso),
    semestre CHAR(15)
);
INSERT INTO Professor (nome, email, Formacao)
VALUES
('Carlos Silva', 'carlos@gmail.com', 'Matemática'),
('Ana Souza', 'ana@gmail.com', 'Português'),
('João Santos', 'joao@gmail.com', 'História');

INSERT INTO Alunos (nome, email, idade)
VALUES
('Maria Oliveira', 'maria@gmail.com', 17),
('Pedro Lima', 'pedro@gmail.com', 16),
('Lucas Costa', 'lucas@gmail.com', 18);

INSERT INTO Curso (Nome_Curso, id_professor)
VALUES
('Matemática Básica', 1),
('Português', 2),
('História Geral', 3);

INSERT INTO CadastroCurso (id_aluno, id_curso, semestre)
VALUES
(1, 1, '1º Semestre'),
(2, 2, '1º Semestre'),
(3, 3, '2º Semestre');

SELECT * FROM Professor;
SELECT * FROM Alunos;
SELECT * FROM Curso;
SELECT * FROM CadastroCurso;