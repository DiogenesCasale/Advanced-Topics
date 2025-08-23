-- Criar a tabela Clientes
CREATE TABLE Clientes (
    Id_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(150) NOT NULL,
    Cidade VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20) NOT NULL
);

-- Inserir 30 registros fictícios
INSERT INTO Clientes (Nome, Endereco, Cidade, Telefone) VALUES
('João da Silva', 'Rua das Flores, 123', 'São Paulo', '(11) 98877-1234'),
('Maria Oliveira', 'Av. Brasil, 456', 'Rio de Janeiro', '(21) 99765-4321'),
('Carlos Santos', 'Rua A, 12', 'Belo Horizonte', '(31) 98855-7890'),
('Ana Souza', 'Av. Central, 78', 'Curitiba', '(41) 99544-1122'),
('Lucas Pereira', 'Rua Verde, 65', 'Porto Alegre', '(51) 98433-2211'),
('Fernanda Lima', 'Av. Paulista, 1000', 'São Paulo', '(11) 98222-3344'),
('Ricardo Alves', 'Rua do Sol, 45', 'Salvador', '(71) 99678-8899'),
('Patrícia Gomes', 'Rua Azul, 22', 'Fortaleza', '(85) 98123-4567'),
('Bruno Rocha', 'Av. Atlântica, 120', 'Florianópolis', '(48) 98456-7890'),
('Juliana Martins', 'Rua das Palmeiras, 90', 'Manaus', '(92) 98765-1234'),
('André Costa', 'Av. Independência, 300', 'Recife', '(81) 99456-7890'),
('Gabriela Ferreira', 'Rua Rosa, 44', 'Natal', '(84) 98345-6789'),
('Rodrigo Lopes', 'Av. Beira Mar, 200', 'Fortaleza', '(85) 98999-1122'),
('Camila Ramos', 'Rua XV de Novembro, 78', 'Joinville', '(47) 98111-2233'),
('Felipe Cardoso', 'Av. das Américas, 55', 'Rio de Janeiro', '(21) 98777-6655'),
('Mariana Souza', 'Rua José Bonifácio, 88', 'Campinas', '(19) 98555-7788'),
('Eduardo Moura', 'Rua das Orquídeas, 12', 'São Luís', '(98) 98222-5566'),
('Tatiane Pires', 'Av. das Torres, 999', 'Curitiba', '(41) 98765-9999'),
('Vinícius Castro', 'Rua Princesa Isabel, 300', 'Vitória', '(27) 98123-7890'),
('Bianca Mendes', 'Rua do Comércio, 77', 'Belém', '(91) 98888-1122'),
('Rafael Teixeira', 'Av. Sete de Setembro, 45', 'Salvador', '(71) 98444-5566'),
('Larissa Carvalho', 'Rua dos Pinheiros, 10', 'São Paulo', '(11) 98333-4455'),
('Thiago Barros', 'Av. Rio Branco, 500', 'Rio de Janeiro', '(21) 98666-7788'),
('Isabela Nunes', 'Rua das Gaivotas, 34', 'Florianópolis', '(48) 98777-8899'),
('Marcelo Farias', 'Av. Maranhão, 120', 'Teresina', '(86) 98111-5566'),
('Natália Andrade', 'Rua Padre Cícero, 99', 'Juazeiro do Norte', '(88) 98222-3344'),
('Leonardo Reis', 'Av. Goiás, 400', 'Goiânia', '(62) 98899-7766'),
('Priscila Batista', 'Rua Acre, 15', 'Maceió', '(82) 98765-4455'),
('Diego Araújo', 'Av. das Palmeiras, 250', 'Campo Grande', '(67) 98444-2233'),
('Aline Moreira', 'Rua Santos Dumont, 19', 'Porto Velho', '(69) 98123-3344');
