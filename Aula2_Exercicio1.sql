-- Criar o Banco de Dados 
CREATE DATABASE db_generation_game_online;
-- Selecionar o Banco de Dados db_generation_game_online
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
poder_defesa INT NOT NULL,
poder_ataque INT NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (100),
sexo VARCHAR (10),
level INT,
ataque INT,
defesa INT,
classes_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_personagens;

-- Insere dados na tabela tb_classes
INSERT INTO tb_classes (poder_defesa, poder_ataque)
VALUES (300, 500); 
INSERT INTO tb_classes (poder_defesa, poder_ataque)
VALUES (800, 1000); 
INSERT INTO tb_classes (poder_defesa, poder_ataque)
VALUES (2000, 5000); 
INSERT INTO tb_classes (poder_defesa, poder_ataque)
VALUES (5000, 7000);
INSERT INTO tb_classes (poder_defesa, poder_ataque)
VALUES (10000, 50000); 

-- Insere dados na tabela tb_personagens
INSERT INTO tb_personagens (nome, sexo, level, ataque, defesa, classes_id)
VALUES ("Pichu", "masc", "10", 300, 500, 1);

INSERT INTO tb_personagens (nome, sexo, level, ataque, defesa, classes_id)
VALUES ("Eeveee", "fem", "20", 300, 500, 2); 

INSERT INTO tb_personagens (nome, sexo, level, ataque, defesa, classes_id)
VALUES ("Caterpie", "masc", "30", 800, 1000, 3);

INSERT INTO tb_personagens (nome, sexo, level, ataque, defesa, classes_id)
VALUES ("Ekans", "masc", "40", 2000, 5000, 4);

INSERT INTO tb_personagens (nome, sexo, level, ataque, defesa, classes_id)
VALUES ("Weedle", "fem", "50", 5000, 7000, 5);

INSERT INTO tb_personagens (nome, sexo, level, ataque, defesa, classes_id)
VALUES ("Bulbassaur", "masc", "60", 5000, 7000, 5);

INSERT INTO tb_personagens (nome, sexo, level, ataque, defesa, classes_id)
VALUES ("Pidgey", "masc", "70", 10000, 50000, 6);

INSERT INTO tb_personagens (nome, sexo, level, ataque, defesa, classes_id)
VALUES ("Pikachu", "masc", "80", 10000, 50000, 6);

SELECT * FROM tb_classes INNER JOIN tb_personagens
ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.poder_ataque > 2000;

SELECT * FROM tb_classes INNER JOIN tb_personagens
ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.poder_defesa > 1000 AND tb_classes.poder_defesa <2000;

SELECT * FROM tb_personagens WHERE nome LIKE 'C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id AND tb_classes.id = 6;