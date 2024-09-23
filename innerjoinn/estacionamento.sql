-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Set-2024 às 13:16
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andar`
--

CREATE TABLE `andar` (
  `codLugar` int(11) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `andar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `andar`
--

INSERT INTO `andar` (`codLugar`, `capacidade`, `andar`) VALUES
(1, 50, 'Subsolo 1'),
(2, 40, 'Subsolo 2'),
(3, 30, 'Térreo'),
(4, 25, '1º Andar'),
(5, 35, '2º Andar'),
(6, 20, '3º Andar'),
(7, 15, '4º Andar'),
(8, 45, 'Subsolo 3'),
(9, 50, 'Térreo 2'),
(10, 30, '5º Andar'),
(11, 35, '6º Andar'),
(12, 25, '7º Andar'),
(13, 20, '8º Andar'),
(14, 30, 'Subsolo 4'),
(15, 40, '9º Andar'),
(16, 15, '10º Andar'),
(17, 25, '11º Andar'),
(18, 45, '12º Andar'),
(19, 50, '13º Andar'),
(20, 40, 'Cobertura');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `dtnasc` datetime DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `dtnasc`, `nome`) VALUES
('10101010101', '1978-10-22 00:00:00', 'Juliana Araujo'),
('11111111111', '1980-01-01 00:00:00', 'João Silva'),
('12121212121', '1987-11-30 00:00:00', 'Paulo Castro'),
('13131313131', '1983-12-11 00:00:00', 'Aline Barbosa'),
('14141414141', '1991-01-09 00:00:00', 'Rodrigo Lima'),
('15151515151', '1999-02-14 00:00:00', 'Camila Silva'),
('16161616161', '2001-03-16 00:00:00', 'Marcelo Rocha'),
('17171717171', '1994-04-28 00:00:00', 'Renata Cunha'),
('18181818181', '1997-05-05 00:00:00', 'Gustavo Martins'),
('19191919191', '1989-06-18 00:00:00', 'Larissa Teixeira'),
('20202020202', '1992-07-22 00:00:00', 'Tiago Cardoso'),
('21212121212', '1996-08-30 00:00:00', 'Mariana Ferreira'),
('22222222222', '1985-02-15 00:00:00', 'Maria Oliveira'),
('33333333333', '1990-03-20 00:00:00', 'Pedro Souza'),
('44444444444', '1975-04-10 00:00:00', 'Ana Santos'),
('55555555555', '2000-05-25 00:00:00', 'Lucas Pereira'),
('66666666666', '1995-06-30 00:00:00', 'Fernanda Lima'),
('77777777777', '1982-07-05 00:00:00', 'Rafael Almeida'),
('88888888888', '1998-08-12 00:00:00', 'Bruna Costa'),
('99999999999', '1993-09-18 00:00:00', 'Gabriel Mendes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `cod` int(11) NOT NULL,
  `horSaida` datetime DEFAULT NULL,
  `dtEntrada` datetime DEFAULT NULL,
  `horEntrada` datetime DEFAULT NULL,
  `dtSaida` datetime DEFAULT NULL,
  `placa` int(11) DEFAULT NULL,
  `codLugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estaciona`
--

INSERT INTO `estaciona` (`cod`, `horSaida`, `dtEntrada`, `horEntrada`, `dtSaida`, `placa`, `codLugar`) VALUES
(1, '2024-09-15 10:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-15 00:00:00', 1001, 1),
(2, '2024-09-15 11:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-15 00:00:00', 1002, 2),
(3, '2024-09-15 12:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-15 00:00:00', 1003, 3),
(4, '2024-09-15 13:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-15 00:00:00', 1004, 4),
(5, '2024-09-15 14:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-15 00:00:00', 1005, 5),
(6, '2024-09-15 15:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-15 00:00:00', 1006, 6),
(7, '2024-09-15 16:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-15 00:00:00', 1007, 7),
(8, '2024-09-15 17:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-15 00:00:00', 1008, 8),
(9, '2024-09-15 18:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-15 00:00:00', 1009, 9),
(10, '2024-09-15 19:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-15 00:00:00', 1010, 10),
(11, '2024-09-15 20:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-15 00:00:00', 1011, 11),
(12, '2024-09-15 21:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-15 00:00:00', 1012, 12),
(13, '2024-09-15 22:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-15 00:00:00', 1013, 13),
(14, '2024-09-15 23:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-15 00:00:00', 1014, 14),
(15, '2024-09-16 00:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-16 00:00:00', 1015, 15),
(16, '2024-09-16 01:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-16 00:00:00', 1016, 16),
(17, '2024-09-16 02:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-16 00:00:00', 1017, 17),
(18, '2024-09-16 03:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-16 00:00:00', 1018, 18),
(19, '2024-09-16 04:00:00', '2024-09-16 00:00:00', '0000-00-00 00:00:00', '2024-09-16 00:00:00', 1019, 19),
(20, '2024-09-16 05:00:00', '2024-09-16 00:00:00', '0000-00-00 00:00:00', '2024-09-16 00:00:00', 1020, 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codModelo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codModelo`, `modelo`) VALUES
(1, 'Sedan'),
(2, 'Hatch'),
(3, 'SUV'),
(4, 'Caminhonete'),
(5, 'Conversível'),
(6, 'Coupé'),
(7, 'Perua'),
(8, 'Van'),
(9, 'Minivan'),
(10, 'Pickup'),
(11, 'Esportivo'),
(12, 'Elétrico'),
(13, 'Híbrido'),
(14, 'Microcarro'),
(15, 'Off-road'),
(16, 'Luxo'),
(17, 'Conversível SUV'),
(18, 'Compacto'),
(19, 'Crossover'),
(20, 'Roadster');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` int(11) NOT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `codModelo` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `codModelo`, `ano`) VALUES
(1001, 'Vermelho', '11111111111', 1, 2008),
(1002, 'Azul', '22222222222', 2, 2000),
(1003, 'Preto', '33333333333', 3, 1998),
(1004, 'Branco', '44444444444', 4, 1970),
(1005, 'Cinza', '55555555555', 5, 2024),
(1006, 'Prata', '66666666666', 6, 2012),
(1007, 'Verde', '77777777777', 7, 2022),
(1008, 'Amarelo', '88888888888', 8, 2025),
(1009, 'Laranja', '99999999999', 9, 1945),
(1010, 'Roxo', '10101010101', 10, 2002),
(1011, 'Bege', '12121212121', 11, 2023),
(1012, 'Marrom', '13131313131', 12, 2019),
(1013, 'Preto Fosco', '14141414141', 13, 1980),
(1014, 'Azul Metálico', '15151515151', 14, 1910),
(1015, 'Verde Escuro', '16161616161', 15, 1999),
(1016, 'Branco Pérola', '17171717171', 16, 2000),
(1017, 'Prata Fosco', '18181818181', 17, 2005),
(1018, 'Vermelho Vinho', '19191919191', 18, 2008),
(1019, 'Cinza Claro', '20202020202', 19, 2010),
(1020, 'Dourado', '21212121212', 20, 2011);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codLugar`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codLugar` (`codLugar`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codModelo`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codModelo` (`codModelo`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codLugar`) REFERENCES `andar` (`codLugar`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codModelo`) REFERENCES `modelo` (`codModelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
