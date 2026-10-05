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