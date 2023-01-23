-- Crie um banco de dados para um serviço de RH de uma empresa onde o sistema trabalhará com as informações dos colaboradores desta empresa.

CREATE DATABASE db_rh;

USE db_rh;
-- Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(455) NOT NULL,
idade INT NOT NULL,
cargo VARCHAR(455) NOT NULL,
filial VARCHAR(455) NOT NULL,
salario DOUBLE NOT NULL,
PRIMARY KEY (id)
);
-- Insira nesta tabela no mínimo 5 dados (registros).

INSERT INTO tb_colaboradores(nome, idade, cargo, filial, salario)
VALUES ("Mariazinha", 24, "Auxiliar", "Tatuapé", 1900.00);

INSERT INTO tb_colaboradores(nome, idade, cargo, filial, salario)
VALUES ("Joãozinho", 32, "Ajudante", "Osasco", 1200.00);

INSERT INTO tb_colaboradores(nome, idade, cargo, filial, salario)
VALUES ("Alexia", 29, "Desenvolvedora", "Guaraparis", 7000.00);

INSERT INTO tb_colaboradores(nome, idade, cargo, filial, salario)
VALUES ("Carol", 32, "Desenvolvedora", "Campo Bom", 12500.00);

INSERT INTO tb_colaboradores(nome, idade, cargo, filial, salario)
VALUES ("Geovani", 26, "Desenvolvedor", "Diadema", 7000.00);


SELECT * FROM tb_colaboradores;
-- Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

-- Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

-- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_colaboradores SET salario = 6000.00 WHERE id = 1;

SELECT * FROM tb_colaboradores;









