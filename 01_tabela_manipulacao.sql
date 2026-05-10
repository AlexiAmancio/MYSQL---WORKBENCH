CREATE DATABASE fixacao;
USE fixacao;
CREATE TABLE cliente (
 cod_cli INT PRIMARY KEY,
 nome VARCHAR(40),
 email VARCHAR(30)
);
INSERT INTO cliente VALUES
(1, 'Ana Paula', 'ana@email.com'),
(2, 'Carlos Mendes', 'carlos@email.com'),
(3, 'Beatriz Lima', 'beatriz@email.com'),
(4, 'João Souza', 'joao@email.com');
CREATE TABLE endereco (
 cod_end INT PRIMARY KEY,
 cod_cli INT,
 logradouro VARCHAR(50),
 bairro VARCHAR(50),
 FOREIGN KEY (cod_cli) REFERENCES cliente(cod_cli)
);
INSERT INTO endereco VALUES
(1, 1, 'Rua das Palmeiras, 100', 'Jardim Europa'),
(2, 2, 'Av. Brasil, 500', 'Centro'),
(3, 3, 'Rua do Sol, 12', 'Jardim América'),
(4, 4, 'Rua das Acácias, 300', 'Centro');
CREATE TABLE produto (
 cod_prod INT PRIMARY KEY,
 nome VARCHAR(50),
 valor DECIMAL(6,2),
 cod_cli INT,
 FOREIGN KEY (cod_cli) REFERENCES cliente(cod_cli)
);
INSERT INTO produto VALUES
(1, 'Notebook', 3500.00, 1),
(2, 'Teclado', 150.00, 1),
(3, 'Mouse', 80.00, 2),
(4, 'Monitor', 850.00, 2),
(5, 'Cadeira Gamer', 1200.00, 3),
(6, 'Headset', 250.00, 3),
(7, 'Webcam', 300.00, 4),
(8, 'Impressora', 700.00, 4);