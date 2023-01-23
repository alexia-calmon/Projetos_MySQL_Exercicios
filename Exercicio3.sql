-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
CREATE DATABASE db_escola;
USE db_escola;

-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
sala INT,
serie INT,
idade INT,
data_nascimento DATE,
PRIMARY KEY (id)
);

-- Insira nesta tabela no mínimo 8 dados (registros).

INSERT INTO tb_estudantes (nome, sala, serie, idade, data_nascimento)
VALUES ("Aninha", 100, 2, 14, "2015-12-22");


INSERT INTO tb_estudantes (nome, sala, serie, idade, data_nascimento)
VALUES ("Mariazinha", 100, 2, 13, "2015-12-22");

INSERT INTO tb_estudantes (nome, sala, serie, idade, data_nascimento)
VALUES ("Julinha", 100, 2, 12, "2015-12-22");

INSERT INTO tb_estudantes (nome, sala, serie, idade, data_nascimento)
VALUES ("Luizinha", 100, 2, 11, "2015-12-22");


INSERT INTO tb_estudantes (nome, sala, serie, idade, data_nascimento)
VALUES ("Pedrinho", 100, 2, 10, "2015-12-22");

INSERT INTO tb_estudantes (nome, sala, serie, idade, data_nascimento)
VALUES ("Josezinho", 100, 2, 9, "2015-12-22");


INSERT INTO tb_estudantes (nome, sala, serie, idade, data_nascimento)
VALUES ("Fernandinho", 100, 2, 7, "2015-12-22");


INSERT INTO tb_estudantes (nome, sala, serie, idade, data_nascimento)
VALUES ("Gabrielzinho", 100, 2, 8, "2015-12-22");

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 9.0. (Como nao foi especificado o atributo nota, foi criado Idade no lugar e adaptado ao caso)
SELECT * FROM tb_estudantes WHERE idade >9;

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 10.0. (Como nao foi especificado o atributo nota, foi criado Idade no lugar e adaptado ao caso)
SELECT * FROM tb_estudantes WHERE idade <10;

-- Ao término atualize um registro desta tabela através de uma query de atualização.

UPDATE tb_estudantes SET sala = 200 WHERE id = 8;

-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

SELECT * FROM tb_estudantes;