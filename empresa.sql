CREATE DATABASE ecommerce_db;
CREATE DATABASE rh_db;

USE ecommerce_db;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(10,2),
    quantidade_estoque INT,
    data_cadastro DATE
);

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(15),
    data_cadastro DATE
);

USE rh_db;
CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(100),
    salario DECIMAL(10,2),
    data_contratacao DATE
);

CREATE TABLE departamentos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    localizacao VARCHAR(100)
);
   
   USE ecommerce_db;

INSERT INTO produtos (nome, descricao, preco, quantidade_estoque, data_cadastro) VALUES
('Smartphone XYZ', 'Smartphone de última geração', 1500.00, 100, '2023-10-01'),
('Notebook ABC', 'Notebook para alto desempenho', 3200.00, 50, '2023-10-02'),
('Fone de Ouvido Bluetooth', 'Fone sem fio de alta qualidade', 200.00, 200, '2023-10-03'),
('Tablet Ultra', 'Tablet com tela retina', 2500.00, 30, '2023-10-04'),
('Monitor 27"', 'Monitor Full HD', 1800.00, 40, '2023-10-05'),
('Teclado Mecânico', 'Teclado RGB com switches mecânicos', 400.00, 60, '2023-10-06'),
('Mouse Gamer', 'Mouse com sensor óptico de alta precisão', 250.00, 80, '2023-10-07'),
('Cadeira Ergonômica', 'Cadeira confortável para escritório', 1200.00, 25, '2023-10-08'),
('Impressora Multifuncional', 'Impressora com scanner integrado', 900.00, 15, '2023-10-09'),
('SSD 1TB', 'Unidade de armazenamento SSD 1TB', 600.00, 50, '2023-10-10');

INSERT INTO clientes (nome, email, telefone, data_cadastro) VALUES
('João Silva', 'joao@email.com', '(11) 99999-1111', '2023-10-01'),
('Maria Oliveira', 'maria@email.com', '(11) 98888-2222', '2023-10-02'),
('Pedro Santos', 'pedro@email.com', '(21) 97777-3333', '2023-10-03'),
('Ana Costa', 'ana@email.com', '(31) 96666-4444', '2023-10-04'),
('Lucas Ferreira', 'lucas@email.com', '(41) 95555-5555', '2023-10-05'),
('Juliana Mendes', 'juliana@email.com', '(51) 94444-6666', '2023-10-06'),
('Rafael Souza', 'rafael@email.com', '(61) 93333-7777', '2023-10-07'),
('Camila Rocha', 'camila@email.com', '(71) 92222-8888', '2023-10-08'),
('Bruno Lima', 'bruno@email.com', '(81) 91111-9999', '2023-10-09'),
('Fernanda Ribeiro', 'fernanda@email.com', '(91) 90000-0000', '2023-10-10');

USE rh_db;

INSERT INTO funcionarios (nome, cargo, salario, data_contratacao) VALUES
('Carlos Souza', 'Gerente', 8000.00, '2023-01-15'),
('Ana Lima', 'Analista', 5000.00, '2023-03-20'),
('Ricardo Alves', 'Desenvolvedor', 6000.00, '2023-05-10'),
('Mariana Castro', 'RH', 4500.00, '2023-06-25'),
('Fernanda Lopes', 'Contadora', 5500.00, '2023-07-30'),
('Jorge Almeida', 'Suporte Técnico', 3500.00, '2023-08-14'),
('Lucas Pereira', 'Marketing', 4000.00, '2023-09-22'),
('Bianca Nunes', 'Designer', 4800.00, '2023-10-01'),
('Rodrigo Martins', 'Vendedor', 3000.00, '2023-10-10'),
('Gabriela Duarte', 'Assistente Administrativo', 3200.00, '2023-10-15');

INSERT INTO departamentos (nome, localizacao) VALUES
('Vendas', 'São Paulo'),
('TI', 'Rio de Janeiro'),
('RH', 'Belo Horizonte'),
('Financeiro', 'Brasília'),
('Marketing', 'Curitiba'),
('Design', 'Porto Alegre'),
('Suporte Técnico', 'Salvador'),
('Logística', 'Recife'),
('Produção', 'Fortaleza'),
('Administrativo', 'Manaus');


SELECT * FROM funcionarios;
