
CREATE DATABASE IF NOT EXISTS diogenes CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE diogenes;


-- Criação da Tabela Clientes

CREATE TABLE Clientes (
    Id_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    Endereco VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    Cidade VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    Telefone VARCHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
);

-- Inserções de Dados Fictícios
INSERT INTO Clientes (Nome, Endereco, Cidade, Telefone)
VALUES
('Miguel Santos', 'Rua Tiradentes, 234', 'Goiânia', '62 98765-4321'),
('Helena Ferreira', 'Avenida Brasil, 567', 'Brasília', '61 99876-5432'),
('Arthur Costa', 'Rua São Paulo, 890', 'Vitória', '27 98989-1212'),
('Alice Ribeiro', 'Avenida Sete de Setembro, 112', 'Campo Grande', '67 97654-3210'),
('Davi Martins', 'Rua das Palmeiras, 313', 'Teresina', '86 98877-4455'),
('Laura Almeida', 'Avenida Central, 414', 'Florianópolis', '48 99123-6789'),
('Bernardo Gonçalves', 'Rua Quinze de Novembro, 515', 'Aracaju', '79 98234-5678'),
('Valentina Magalhães', 'Avenida dos Bandeirantes, 616', 'Maceió', '82 99345-6789'),
('Heitor Barbosa', 'Rua da Praia, 717', 'João Pessoa', '83 98456-7890'),
('Sophia Carvalho', 'Avenida Afonso Pena, 818', 'Belém', '91 99567-8901'),
('Lorenzo Pinto', 'Rua do Comércio, 919', 'Rio Branco', '68 98678-9012'),
('Isabella Correia', 'Avenida Amazonas, 1020', 'Cuiabá', '65 99789-0123'),
('Lucas Rocha', 'Rua das Flores, 1121', 'Boa Vista', '95 98890-1234'),
('Manuela Moreira', 'Avenida Ipiranga, 1222', 'Porto Velho', '69 99901-2345'),
('Theo Castro', 'Rua Barão do Rio Branco, 1323', 'Macapá', '96 98012-3456'),
('Júlia Nogueira', 'Avenida Paulista, 1424', 'Joinville', '47 99123-4567'),
('Pedro Mendes', 'Rua Santos Dumont, 1525', 'Blumenau', '47 98234-5678'),
('Lívia Dias', 'Avenida Rio Branco, 1626', 'Niterói', '21 99345-6789'),
('Guilherme Azevedo', 'Rua Sete de Abril, 1727', 'Uberlândia', '34 98456-7890'),
('Maria Eduarda Barros', 'Avenida Juscelino Kubitschek, 1828', 'Sorocaba', '15 99567-8901'),
('Enzo Cavalcanti', 'Rua Augusta, 1929', 'Ribeirão Preto', '16 98678-9012'),
('Lorena Farias', 'Avenida Boa Viagem, 2030', 'Londrina', '43 99789-0123'),
('Matheus Cunha', 'Rua da Consolação, 2131', 'Pelotas', '53 98890-1234'),
('Yasmin Freitas', 'Avenida Atlântica, 2232', 'Caxias do Sul', '54 99901-2345'),
('Benjamin Pires', 'Rua Direita, 2333', 'Juiz de Fora', '32 98012-3456'),
('Isis Gomes', 'Avenida das Nações, 2434', 'Feira de Santana', '75 99123-4567'),
('Bryan Rezende', 'Rua do Ouro, 2535', 'Campos dos Goytacazes', '22 98234-5678'),
('Emanuelly Viana', 'Avenida Independência, 2636', 'Montes Claros', '38 99345-6789'),
('Leonardo Duarte', 'Rua Getúlio Vargas, 2737', 'Anápolis', '62 98456-7890'),
('Cecília Macedo', 'Avenida Marechal Deodoro, 2838', 'Maringá', '44 99567-8901');
