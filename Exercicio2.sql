-- Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce.
CREATE DATABASE tb_ecommerce;

USE tb_ecommerce; 

-- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
CREATE TABLE tb_ecommerce(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (500) NOT NULL,
quantidade INT,
data_validade DATE,
preco DECIMAL NOT NULL,
marca VARCHAR(50) NOT NULL,
PRIMARY KEY (id)
);

-- Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO tb_ecommerce(nome, quantidade, data_validade, preco, marca)
VALUES ("Arroz", 100, "2023-01-01", 15.00, "TioJão");

INSERT INTO tb_ecommerce(nome, quantidade, data_validade, preco, marca)
VALUES ("Feijão", 100, "2023-01-01", 10.00, "Carioca");

INSERT INTO tb_ecommerce(nome, quantidade, data_validade, preco, marca)
VALUES ("Farinha de trigo", 100, "2023-01-01", 5.00, "Dona Benta");

INSERT INTO tb_ecommerce(nome, quantidade, data_validade, preco, marca) 
VALUES("Coca-Cola", 100, "2023-01-01", 6.00, "Coca-Cola");

INSERT INTO tb_ecommerce(nome, quantidade, data_validade, preco, marca)
VALUES ("Achocolatado em pó", 100, "2023-01-01", 700.00, "Nestlé");

INSERT INTO tb_ecommerce(nome, quantidade, data_validade, preco, marca)
VALUES ("Suco de laranja", 100, "2023-01-01", 8.00, "DelVale");

INSERT INTO tb_ecommerce(nome, quantidade, data_validade, preco, marca)
VALUES ("Queijo Parmesão Ralado", 100, "2023-01-01", 5.00, "Porto Alegre");

INSERT INTO tb_ecommerce(nome, quantidade, data_validade, preco, marca)
VALUES ("Energético", 100, "2023-01-01", 1000.00, "Red Bull");

-- Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
SELECT * FROM tb_ecommerce WHERE preco > 500;

-- Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
SELECT * FROM tb_ecommerce WHERE preco < 500;

-- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_ecommerce SET preco = 15.00 WHERE id = 8;

SELECT * FROM tb_ecommerce;






