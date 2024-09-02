-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Set-2024 às 14:06
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobiliaria`
--
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguel`
--

CREATE TABLE `aluguel` (
  `codaluguel` int(10) NOT NULL,
  `datainicio` date NOT NULL,
  `datafim` date NOT NULL,
  `datavenc` date NOT NULL,
  `descri` varchar(255) DEFAULT NULL,
  `idimovel` int(10) DEFAULT NULL,
  `idCorretor` int(10) DEFAULT NULL,
  `idinquilino` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `aluguel`
--

INSERT INTO `aluguel` (`codaluguel`, `datainicio`, `datafim`, `datavenc`, `descri`, `idimovel`, `idCorretor`, `idinquilino`) VALUES
(1, '2024-01-01', '2024-12-31', '2024-12-05', 'Aluguel anual do apartamento', 1, 1, 1),
(2, '2024-02-01', '2025-01-31', '2024-12-15', 'Aluguel da casa com piscina', 2, 2, 2),
(3, '2024-03-01', '2024-08-31', '2024-07-15', 'Aluguel de kitnet', 3, 3, 3),
(4, '2024-04-01', '2025-03-31', '2024-12-30', 'Aluguel de cobertura', 4, 4, 4),
(5, '2024-05-01', '2025-04-30', '2024-10-05', 'Aluguel de sobrado', 5, 5, 5),
(6, '2024-06-01', '2024-12-31', '2024-11-20', 'Aluguel de casa no centro', 6, 6, 6),
(7, '2024-07-01', '2025-06-30', '2025-05-25', 'Aluguel de apartamento pequeno', 7, 7, 7),
(8, '2024-08-01', '2025-07-31', '2025-06-10', 'Aluguel de mansão', 8, 8, 8),
(9, '2024-09-01', '2025-08-31', '2025-07-15', 'Aluguel de chácara', 9, 9, 9),
(10, '2024-10-01', '2025-09-30', '2025-08-20', 'Aluguel de loft', 10, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

CREATE TABLE `corretor` (
  `idCorretor` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `imobiliaria` varchar(255) DEFAULT NULL,
  `telefone` varchar(15) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `corretor`
--

INSERT INTO `corretor` (`idCorretor`, `email`, `imobiliaria`, `telefone`, `nome`) VALUES
(1, 'RafaelMartins@gmail.com', 'Imobiliária ABC', '(11) 91234-5678', 'Rafael Martins'),
(2, 'juliana.souza@imobiliariaxyz.com', 'Imobiliária XYZ', '(21) 99876-5432', 'Juliana Souza'),
(3, 'paulo.silva@imobiliariacosta.com', 'Imobiliária Costa', '(31) 91234-5678', 'Paulo Silva'),
(4, 'ana.fernandes@imobiliariabrasil.com', 'Imobiliária Brasil', '(41) 97654-3210', 'Ana Fernandes'),
(5, 'marcelo.almeida@imobiliariaolinda.com', 'Imobiliária Olinda', '(51) 92345-6789', 'Marcelo Almeida'),
(6, 'renata.santos@imobiliariacarioca.com', 'Imobiliária Carioca', '(61) 98765-4321', 'Renata Santos'),
(7, 'lucas.gomes@imobiliariaforte.com', 'Imobiliária Forte', '(71) 93456-7890', 'Lucas Gomes'),
(8, 'mariana.lima@imobiliariavida.com', 'Imobiliária Vida', '(81) 94567-8901', 'Mariana Lima'),
(9, 'roberto.costa@imobiliariacentral.com', 'Imobiliária Central', '(91) 95678-9012', 'Roberto Costa'),
(10, 'camila.pereira@imobiliariaglobal.com', 'Imobiliária Global', '(31) 96789-0123', 'Camila Pereira');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereço`
--

CREATE TABLE `endereço` (
  `idendereço` int(30) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `CEP` varchar(255) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `numero` int(10) NOT NULL,
  `idproprietario` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `endereço`
--

INSERT INTO `endereço` (`idendereço`, `cidade`, `bairro`, `CEP`, `rua`, `estado`, `complemento`, `numero`, `idproprietario`) VALUES
(1, 'São Paulo', 'Centro', '01000-000', 'Rua A', 'SP', 'Apto 101', 123, 1),
(2, 'Rio de Janeiro', 'Copacabana', '22000-000', 'Avenida Atlântica', 'RJ', NULL, 456, 2),
(3, 'Belo Horizonte', 'Savassi', '30100-000', 'Rua B', 'MG', 'Cobertura', 789, 3),
(4, 'Curitiba', 'Batel', '80200-000', 'Rua C', 'PR', NULL, 321, 4),
(5, 'Porto Alegre', 'Moinhos de Vento', '90500-000', 'Avenida D', 'RS', 'Casa 2', 654, 5),
(6, 'Salvador', 'Barra', '40100-000', 'Rua E', 'BA', 'Edifício Solaris', 987, 6),
(7, 'Brasília', 'Asa Sul', '70200-000', 'SQN 102', 'DF', 'Bloco C', 147, 7),
(8, 'Fortaleza', 'Meireles', '60100-000', 'Rua F', 'CE', NULL, 258, 8),
(9, 'Recife', 'Boa Viagem', '51000-000', 'Avenida G', 'PE', 'Apto 901', 369, 9),
(10, 'Manaus', 'Ponta Negra', '69000-000', 'Rua H', 'AM', 'Casa 1', 741, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fiador`
--

CREATE TABLE `fiador` (
  `idfiador` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `idendereço` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `fiador`
--

INSERT INTO `fiador` (`idfiador`, `email`, `rg`, `telefone`, `cpf`, `nome`, `idendereço`) VALUES
(1, 'joao.souza@example.com', 'MG-12.345.678', '(11) 91234-5678', '123.456.789-01', 'João Souza', 1),
(2, 'maria.fernandes@example.com', 'RJ-98.765.432', '(21) 99876-5432', '987.654.321-02', 'Maria Fernandes', 2),
(3, 'carlos.santos@example.com', 'SP-45.678.901', '(31) 91234-5678', '456.789.123-03', 'Carlos Santos', 3),
(4, 'ana.silva@example.com', 'PR-34.567.890', '(41) 97654-3210', '789.123.456-04', 'Ana Silva', 4),
(5, 'paulo.almeida@example.com', 'RS-56.789.012', '(51) 92345-6789', '321.654.987-05', 'Paulo Almeida', 5),
(6, 'lucia.pereira@example.com', 'BA-67.890.123', '(61) 98765-4321', '654.321.987-06', 'Lúcia Pereira', 6),
(7, 'roberto.costa@example.com', 'DF-78.901.234', '(71) 93456-7890', '987.123.654-07', 'Roberto Costa', 7),
(8, 'fernanda.lima@example.com', 'CE-89.012.345', '(81) 94567-8901', '123.789.456-08', 'Fernanda Lima', 8),
(9, 'ricardo.melo@example.com', 'PE-90.123.456', '(91) 95678-9012', '456.321.789-09', 'Ricardo Melo', 9),
(10, 'patricia.oliveira@example.com', 'AM-01.234.567', '(31) 96789-0123', '789.456.123-10', 'Patrícia Oliveira', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos`
--

CREATE TABLE `fotos` (
  `idfoto` int(100) NOT NULL,
  `midias` varchar(255) DEFAULT NULL,
  `idimovel` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `fotos`
--

INSERT INTO `fotos` (`idfoto`, `midias`, `idimovel`) VALUES
(1, 'foto1_apartamento.jpg', 1),
(2, 'foto2_apartamento.jpg', 1),
(3, 'foto1_casa_piscina.jpg', 2),
(4, 'foto2_casa_piscina.jpg', 2),
(5, 'foto1_kitnet.jpg', 3),
(6, 'foto2_kitnet.jpg', 3),
(7, 'foto1_cobertura.jpg', 4),
(8, 'foto2_cobertura.jpg', 4),
(9, 'foto1_sobrado.jpg', 5),
(10, 'foto2_sobrado.jpg', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

CREATE TABLE `imovel` (
  `idimovel` int(10) NOT NULL,
  `qntBanheiros` int(10) NOT NULL,
  `suites` int(10) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `qntComodos` int(10) NOT NULL,
  `qntGaragem` int(10) DEFAULT NULL,
  `disponivel` bit(1) NOT NULL,
  `piscina` int(10) DEFAULT NULL,
  `idendereço` int(30) DEFAULT NULL,
  `idproprietario` int(20) DEFAULT NULL,
  `lavanderia` bit(1) NOT NULL,
  `ValorAluguel` decimal(10,2) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `imovel`
--

INSERT INTO `imovel` (`idimovel`, `qntBanheiros`, `suites`, `tipo`, `qntComodos`, `qntGaragem`, `disponivel`, `piscina`, `idendereço`, `idproprietario`, `lavanderia`, `ValorAluguel`, `bairro`, `cidade`) VALUES
(1, 2, 1, 'Apartamento', 5, 1, b'1', 0, 1, 1, b'1', '1200.00', 'Centro', 'São Paulo'),
(2, 3, 2, 'Casa', 8, 2, b'1', 1, 2, 2, b'1', '1500.00', 'Jardim Paulista', 'São Paulo'),
(3, 1, 0, 'Kitnet', 2, 0, b'1', 0, 3, 3, b'1', '1800.00', 'Vila Mariana', 'São Paulo'),
(4, 4, 2, 'Cobertura', 10, 3, b'0', 1, 4, 4, b'1', '2000.00', 'Vila Madalena', 'São Paulo'),
(5, 2, 1, 'Sobrado', 6, 1, b'1', 0, 5, 5, b'0', '2200.00', 'Brooklin', 'São Paulo'),
(6, 3, 2, 'Casa', 7, 2, b'0', 1, 6, 6, b'0', '2500.00', 'Pinheiros', 'São Paulo'),
(7, 1, 0, 'Apartamento', 3, 1, b'1', 0, 7, 7, b'0', '2700.00', 'Liberdade', 'Mauá'),
(8, 5, 3, 'Mansão', 12, 4, b'1', 1, 8, 8, b'0', '3000.00', 'Alto da Lapa', 'Mauá'),
(9, 2, 1, 'Chácara', 6, 2, b'1', 1, 9, 9, b'0', '3300.00', 'Itaim Bibi', 'Mauá'),
(10, 1, 0, 'Loft', 3, 1, b'0', 0, 10, 10, b'0', '3500.00', 'Jardim Paulistano', 'Mauá');

-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `idinquilino` int(10) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `idfiador` int(10) DEFAULT NULL,
  `salario` decimal(7,2) NOT NULL,
  `datanasc` date DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `inquilino`
--

INSERT INTO `inquilino` (`idinquilino`, `rg`, `telefone`, `cpf`, `email`, `idfiador`, `salario`, `datanasc`, `nome`) VALUES
(1, 'MG-12.345.678', '(11) 91234-5678', '123.456.789-01', 'joao.silva@example.com', 1, '2500.00', '1981-12-21', 'Carlos Silva'),
(2, 'RJ-98.765.432', '(21) 99876-5432', '987.654.321-02', 'maria.oliveira@example.com', 2, '1500.00', '1974-02-14', 'Ana Costa'),
(3, 'SP-45.678.901', '(31) 91234-5678', '456.789.123-03', 'carlos.fernandes@example.com', 3, '4000.00', '1960-06-02', 'Roberto Souza'),
(4, 'PR-34.567.890', '(41) 97654-3210', '789.123.456-04', 'ana.melo@example.com', 4, '3200.00', '1985-05-15', 'Mariana Lima'),
(5, 'RS-56.789.012', '(51) 92345-6789', '321.654.987-05', 'paulo.santos@example.com', 5, '2800.00', '1990-07-23', 'João Pereira'),
(6, 'BA-67.890.123', '(61) 98765-4321', '654.321.987-06', 'lucia.pereira@example.com', 6, '3500.00', '1978-11-30', 'Fernanda Alves'),
(7, 'DF-78.901.234', '(71) 93456-7890', '987.123.654-07', 'roberto.lima@example.com', 7, '4200.00', '1983-03-17', 'Pedro Oliveira'),
(8, 'CE-89.012.345', '(81) 94567-8901', '123.789.456-08', 'fernanda.souza@example.com', 8, '3000.00', '1992-08-25', 'Tatiane Gomes'),
(9, 'PE-90.123.456', '(91) 95678-9012', '456.321.789-09', 'ricardo.martins@example.com', 9, '4500.00', '1967-09-12', 'Lucas Martins'),
(10, 'AM-01.234.567', '(31) 96789-0123', '789.456.123-10', 'patricia.almeida@example.com', 10, '3800.00', '1988-10-19', 'Juliana Rocha');

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

CREATE TABLE `proprietario` (
  `idproprietario` int(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `nasc` date NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `banco` varchar(255) NOT NULL,
  `agencia` varchar(255) NOT NULL,
  `conta` varchar(255) NOT NULL,
  `pix` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `proprietario`
--

INSERT INTO `proprietario` (`idproprietario`, `email`, `cpf`, `nasc`, `telefone`, `nome`, `banco`, `agencia`, `conta`, `pix`) VALUES
(1, 'joao.silva@example.com', '123.456.789-00', '1980-05-15', '111) 91234-5678', 'João Silva', 'Banco do Brasil', '1234', '56789-0', 'joao.silva@example.com'),
(2, 'maria.souza@example.com', '987.654.321-00', '1990-07-22', '111) 99876-5432', 'Maria Souza', 'Caixa Econômica', '5678', '12345-6', 'maria.souza@example.com'),
(3, 'carlos.pereira@example.com', '456.789.123-00', '1985-03-10', '111) 91234-5678', 'Carlos Pereira', 'Itaú', '9101', '23456-7', 'carlos.pereira@example.com'),
(4, 'ana.lima@example.com', '789.123.456-00', '1992-11-30', '111) 97654-3210', 'Ana Lima', 'Bradesco', '1122', '34567-8', 'ana.lima@example.com'),
(5, 'pedro.almeida@example.com', '321.654.987-00', '1988-01-25', '111) 92345-6789', 'Pedro Almeida', 'Santander', '3344', '45678-9', 'pedro.almeida@example.com'),
(6, 'lucia.santos@example.com', '654.321.987-00', '1975-08-05', '111) 98765-4321', 'Lúcia Santos', 'Banco do Brasil', '5566', '56789-0', 'lucia.santos@example.com'),
(7, 'roberto.costa@example.com', '987.123.654-00', '1995-09-12', '111) 93456-7890', 'Roberto Costa', 'Caixa Econômica', '7788', '67890-1', 'roberto.costa@example.com'),
(8, 'claudia.melo@example.com', '123.789.456-00', '1982-04-18', '111) 94567-8901', 'Cláudia Melo', 'Itaú', '9900', '78901-2', 'claudia.melo@example.com'),
(9, 'fernando.gomes@example.com', '456.321.789-00', '1978-12-20', '111) 95678-9012', 'Fernando Gomes', 'Bradesco', '1123', '89012-3', 'fernando.gomes@example.com'),
(10, 'patricia.oliveira@example.com', '789.456.123-00', '1987-06-15', '111) 96789-0123', 'Patrícia Oliveira', 'Santander', '3345', '90123-4', 'patricia.oliveira@example.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`codaluguel`),
  ADD KEY `idimovel` (`idimovel`),
  ADD KEY `idCorretor` (`idCorretor`),
  ADD KEY `idinquilino` (`idinquilino`);

--
-- Índices para tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`idCorretor`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `telefone` (`telefone`);

--
-- Índices para tabela `endereço`
--
ALTER TABLE `endereço`
  ADD PRIMARY KEY (`idendereço`),
  ADD KEY `idproprietario` (`idproprietario`);

--
-- Índices para tabela `fiador`
--
ALTER TABLE `fiador`
  ADD PRIMARY KEY (`idfiador`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `telefone` (`telefone`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `idendereço` (`idendereço`);

--
-- Índices para tabela `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`idfoto`),
  ADD KEY `idimovel` (`idimovel`);

--
-- Índices para tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`idimovel`),
  ADD KEY `idendereço` (`idendereço`),
  ADD KEY `idproprietario` (`idproprietario`);

--
-- Índices para tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`idinquilino`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idfiador` (`idfiador`);

--
-- Índices para tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`idproprietario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `pix` (`pix`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `codaluguel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `corretor`
--
ALTER TABLE `corretor`
  MODIFY `idCorretor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereço`
--
ALTER TABLE `endereço`
  MODIFY `idendereço` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fiador`
--
ALTER TABLE `fiador`
  MODIFY `idfiador` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `idfoto` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `idimovel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `idinquilino` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `idproprietario` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`idimovel`) REFERENCES `imovel` (`idimovel`),
  ADD CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`idCorretor`) REFERENCES `corretor` (`idCorretor`),
  ADD CONSTRAINT `aluguel_ibfk_3` FOREIGN KEY (`idinquilino`) REFERENCES `inquilino` (`idinquilino`);

--
-- Limitadores para a tabela `endereço`
--
ALTER TABLE `endereço`
  ADD CONSTRAINT `endereço_ibfk_1` FOREIGN KEY (`idproprietario`) REFERENCES `proprietario` (`idproprietario`);

--
-- Limitadores para a tabela `fiador`
--
ALTER TABLE `fiador`
  ADD CONSTRAINT `fiador_ibfk_1` FOREIGN KEY (`idendereço`) REFERENCES `endereço` (`idendereço`);

--
-- Limitadores para a tabela `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fotos_ibfk_1` FOREIGN KEY (`idimovel`) REFERENCES `imovel` (`idimovel`);

--
-- Limitadores para a tabela `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`idendereço`) REFERENCES `endereço` (`idendereço`),
  ADD CONSTRAINT `imovel_ibfk_2` FOREIGN KEY (`idproprietario`) REFERENCES `proprietario` (`idproprietario`);

--
-- Limitadores para a tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD CONSTRAINT `inquilino_ibfk_1` FOREIGN KEY (`idfiador`) REFERENCES `fiador` (`idfiador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
