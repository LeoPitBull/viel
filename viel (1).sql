-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 09-Ago-2024 às 09:45
-- Versão do servidor: 8.0.33-0ubuntu0.20.04.2
-- versão do PHP: 7.4.3-4ubuntu2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `viel`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `camisetas`
--

CREATE TABLE `camisetas` (
  `id` int NOT NULL,
  `cor` enum('preto','cinza','off-white') NOT NULL,
  `tamanho` enum('P','M','G','GG') NOT NULL,
  `quantidade` int NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `descricao` text,
  `material` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `camisetas`
--

INSERT INTO `camisetas` (`id`, `cor`, `tamanho`, `quantidade`, `valor`, `descricao`, `material`) VALUES
(1, 'preto', 'GG', 1, '109.99', '1', 'algodão'),
(2, 'off-white', 'GG', 1, '109.99', 'melhor camisa', 'algodão'),
(3, 'cinza', 'GG', 1, '129.98', 'camiseta', 'algodão e poliester'),
(4, 'preto', 'GG', 1, '109.99', 'amor', 'algodão e poliester');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `cpf` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`cpf`, `nome`, `email`, `telefone`, `data_nascimento`, `cidade`, `estado`, `endereco`, `senha`) VALUES
('111', 'Leonardo ', 'cezarleonard3@gmail.com', '4646', '0554-04-05', 'Cascavel', 'Paraná', 'Rua Avatés 879', '1'),
('123456789', 'izadora', 'izadora@gmail.com', '45998163175', '2007-06-01', 'Cascavel', 'Paraná', 'rua tal', '123'),
('2', 'Leonardo Cezar da Cruz Paz', 'cezarleonardo873@gmail.com', '45998163175', '0022-02-22', 'Cascavel', 'Paraná', 'Rua Avatés 879', '2'),
('3111', 'Leonardoh', 'cezarleonar3d3@gmail.com', '46463', '0335-03-31', 'Cascavel', 'Paraná', 'Rua Avatés 879', '1'),
('454545', 'Leonardo Cezar da Cruz Pazz', 'cezarleo@gmail.com', '24242', '2401-01-12', 'Cascavel', 'Paraná', 'Rua Avatés 879', '1');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `camisetas`
--
ALTER TABLE `camisetas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cpf`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `camisetas`
--
ALTER TABLE `camisetas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
