-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Set-2021 às 02:06
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `drip_restes`
--
CREATE DATABASE dripRestes;

USE driprestes;
-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `categoria_id` int(52) NOT NULL,
  `nome_categoria` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cliente_id` int(52) NOT NULL,
  `endereco_cliente` varchar(150) NOT NULL,
  `nome_cliente` varchar(150) DEFAULT NULL,
  `cel_cliente` varchar(15) NOT NULL,
  `email_cliente` varchar(150) DEFAULT NULL,
  `senha_cliente` varchar(150) DEFAULT NULL,
  `datanasc_cliente` varchar(10) DEFAULT NULL,
  `rg_cliente` varchar(8) DEFAULT NULL,
  `cpf_cliente` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cliente_id`, `endereco_cliente`, `nome_cliente`, `cel_cliente`, `email_cliente`, `senha_cliente`, `datanasc_cliente`, `rg_cliente`, `cpf_cliente`) VALUES
(1, 'Rua Magnolia Gardens', 'Mikaela Teixeira Fonseca', '(35)97119-8826', 'duane_aufderhar96@yahoo.com', '8FFjC2ad', '19/07/1957', '51.305.387-6', '359.334.298-72');
INSERT INTO `cliente` (`cliente_id`, `endereco_cliente`, `nome_cliente`, `cel_cliente`, `email_cliente`, `senha_cliente`, `datanasc_cliente`, `rg_cliente`, `cpf_cliente`) VALUES
(2, 'Rua Kassulke Fork', 'Salomé Passos Jesus', '(57)92252-4262', 'lafayette_klein63@gmail.com', '8QQ2ZKL', '07/12/1975', '45.348.332-5', '525.777.034-22');
INSERT INTO `cliente` (`cliente_id`, `endereco_cliente`, `nome_cliente`, `cel_cliente`, `email_cliente`, `senha_cliente`, `datanasc_cliente`, `rg_cliente`, `cpf_cliente`) VALUES
(3, 'Rua Domingos Olímpio', 'Fedra Canário Bogado', '(26)92897-0908', 'alanis.schuppe62@hotmail.com', 'ktLuTfQaoi01', '25/05/1990', '44.895.081-1', '586.232.437-22');
INSERT INTO `cliente` (`cliente_id`, `endereco_cliente`, `nome_cliente`, `cel_cliente`, `email_cliente`, `senha_cliente`, `datanasc_cliente`, `rg_cliente`, `cpf_cliente`) VALUES
(4, 'Rua Serra de Bragança', 'Karine Meireles Úria', '(65)92304-4239', 'fabian47@gmail.com', 'kCUu47SbBtBMrFYP', '22/02/1999', '41.679.131-2', '637.633.307-98');
INSERT INTO `cliente` (`cliente_id`, `endereco_cliente`, `nome_cliente`, `cel_cliente`, `email_cliente`, `senha_cliente`, `datanasc_cliente`, `rg_cliente`, `cpf_cliente`) VALUES
(5, 'Praça da República', 'Matteo Paula Naves', '(11)92221-9142', 'kimberly_schneider53@gmail.com', '4VZPoVBZin6y6Zgd', '25/02/1993', '87.000.822-9', '176.761.256-77');
INSERT INTO `cliente` (`cliente_id`, `endereco_cliente`, `nome_cliente`, `cel_cliente`, `email_cliente`, `senha_cliente`, `datanasc_cliente`, `rg_cliente`, `cpf_cliente`) VALUES
(6, 'Avenida Desembargador Moreira', 'Mickael Carqueijeiro Ruela', '(37)93036-7500', 'jovan5@gmail.com', 'sFbQE56Nzx78pA7C', '26/10/1999', '22.578.859-7', '567.534.427-66');
INSERT INTO `cliente` (`cliente_id`, `endereco_cliente`, `nome_cliente`, `cel_cliente`, `email_cliente`, `senha_cliente`, `datanasc_cliente`, `rg_cliente`, `cpf_cliente`) VALUES
(7, 'Rua Arlindo Nogueira', 'Nicollas Regueira Teixeira', '(46)91503-6559', 'jermain_collier3@hotmail.com', 'QVk3rbLLXg7zboWn', '01/02/1993', '52.439.232-6', '548.528.672-08');
INSERT INTO `cliente` (`cliente_id`, `endereco_cliente`, `nome_cliente`, `cel_cliente`, `email_cliente`, `senha_cliente`, `datanasc_cliente`, `rg_cliente`, `cpf_cliente`) VALUES
(8, 'Avenida São João', 'Mathias Gomide Cascais', '(18)93686-6335', 'wilburn.welch0@hotmail.com', 'aSeBo8umQUTxuMvj', '19/06/1997', '19.490.882-7', '171.235.223-70');
INSERT INTO `cliente` (`cliente_id`, `endereco_cliente`, `nome_cliente`, `cel_cliente`, `email_cliente`, `senha_cliente`, `datanasc_cliente`, `rg_cliente`, `cpf_cliente`) VALUES
(9, 'Rua Carlos Augusto Cornelsen', 'Santiago Chainho Minho', '(15)96818-0052', 'stuart.buckridge@hotmail.com', 'RQAf2RZooZbArhDY', '10/02/1968', '48.089.858-2', '397.139.257-18');
INSERT INTO `cliente` (`cliente_id`, `endereco_cliente`, `nome_cliente`, `cel_cliente`, `email_cliente`, `senha_cliente`, `datanasc_cliente`, `rg_cliente`, `cpf_cliente`) VALUES
(10, 'Rua Cristiano Olsen', 'Anabel Malheiro Camarinho', '(33)95794-4494', 'viviane.abernathy@gmail.com', 'f559Dt42UDkYxV6A', '05/02/1998', '72.761.855-1', '345.304.665-07');
INSERT INTO `cliente` (`cliente_id`, `endereco_cliente`, `nome_cliente`, `cel_cliente`, `email_cliente`, `senha_cliente`, `datanasc_cliente`, `rg_cliente`, `cpf_cliente`) VALUES
(11, 'Avenida Rio Branco', 'Hernâni Cruz Catela', '(11)90504-0171', 'cordia_brakus39@hotmail.com', 'LQ6rEHWn8yWw2CnJ', '13/02/1993', '89.993.224-3', '011.152.821-66');
INSERT INTO `cliente` (`cliente_id`, `endereco_cliente`, `nome_cliente`, `cel_cliente`, `email_cliente`, `senha_cliente`, `datanasc_cliente`, `rg_cliente`, `cpf_cliente`) VALUES
(12, 'Rua Frederico Moura', 'Milana Santana Faro', '(75)97449-7187', 'edmond87@yahoo.com', 'UHN9EiNU9TVN35y9', '03/06/1987', '97.173.138-4', '723.294.212-57');
INSERT INTO `cliente` (`cliente_id`, `endereco_cliente`, `nome_cliente`, `cel_cliente`, `email_cliente`, `senha_cliente`, `datanasc_cliente`, `rg_cliente`, `cpf_cliente`) VALUES
(13, 'Travessa da CDL', 'Cíntia Resende Vaz', '(19)93916-3308', 'jamaal.kihn@yahoo.com', 'pgTKy8jsEKH26Uff', '20/06/1998', '90.135.640-1', '141.481.706-10');
INSERT INTO `cliente` (`cliente_id`, `endereco_cliente`, `nome_cliente`, `cel_cliente`, `email_cliente`, `senha_cliente`, `datanasc_cliente`, `rg_cliente`, `cpf_cliente`) VALUES
(14, 'Rua Tenente-Coronel Cardoso', 'Jefferson Mafra Cisneiros', '(53)99491-4172', 'dante_zemlak@gmail.com', '5pR1XuZd', '02/08/1997', '78.771.006-4', '366.817.233-14');
INSERT INTO `cliente` (`cliente_id`, `endereco_cliente`, `nome_cliente`, `cel_cliente`, `email_cliente`, `senha_cliente`, `datanasc_cliente`, `rg_cliente`, `cpf_cliente`) VALUES
(15, 'Rua dos Carijós', 'Lya Morgado Valcácer', '(24)90438-1292', 'ada.davis@gmail.com', '7mfuMVUk27dCxyx6', '24/11/1992', '98.560.001-9', '432.904.175-81');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `forma_pagamento` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `produto_id` int(52) NOT NULL,
  `nome_produto` varchar(150) DEFAULT NULL,
  `preco_produto` int(50) DEFAULT NULL,
  `categoria_id` int(52) NOT NULL,
  `vendedor_id` int(52) NOT NULL,
  `qtd_estoque` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`produto_id`, `nome_produto`, `preco_produto`, `categoria_id`, `vendedor_id`, `qtd_estoque`) VALUES
(1, 'calors', 40, 0, 0, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `venda_id` int(52) NOT NULL,
  `valor_total` int(50) NOT NULL,
  `produto_id` int(52) DEFAULT NULL,
  `vendedor_id` int(52) DEFAULT NULL,
  `cliente_id` int(52) DEFAULT NULL,
  `endereco_cliente` varchar(150) DEFAULT NULL,
  `data_venda` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda_do_produto`
--

CREATE TABLE `venda_do_produto` (
  `produto_id` int(52) DEFAULT NULL,
  `venda_id` int(52) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `vendedor_id` int(52) NOT NULL,
  `categoria_vendedor` varchar(150) NOT NULL,
  `nome_vendedor` varchar(150) DEFAULT NULL,
  `cel_vendedor` varchar(15) NOT NULL,
  `email_vendedor` varchar(150) DEFAULT NULL,
  `senha_vendedor` int(52) DEFAULT NULL,
  `datanasc_cliente` varchar(10) DEFAULT NULL,
  `rg_vendedor` varchar(8) DEFAULT NULL,
  `cpf_vendedor` varchar(20) DEFAULT NULL,
  `endereco_vendedor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cliente_id`,`endereco_cliente`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`produto_id`),
  ADD KEY `categoria_idFK` (`categoria_id`),
  ADD KEY `vendedor_idFK2` (`vendedor_id`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`venda_id`),
  ADD KEY `produto_idFK` (`produto_id`),
  ADD KEY `vendedor_idFK` (`vendedor_id`),
  ADD KEY `cliente_idFK` (`cliente_id`);

--
-- Índices para tabela `venda_do_produto`
--
ALTER TABLE `venda_do_produto`
  ADD KEY `produto_idFK2` (`produto_id`),
  ADD KEY `venda_idFK` (`venda_id`);

--
-- Índices para tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`vendedor_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `categoria_id` int(52) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cliente_id` int(52) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `produto_id` int(52) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `venda_id` int(52) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `vendedor_id` int(52) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `cliente_idFK` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`cliente_id`),
  ADD CONSTRAINT `produto_idFK` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`produto_id`),
  ADD CONSTRAINT `vendedor_idFK` FOREIGN KEY (`vendedor_id`) REFERENCES `vendedor` (`vendedor_id`);

--
-- Limitadores para a tabela `venda_do_produto`
--
ALTER TABLE `venda_do_produto`
  ADD CONSTRAINT `produto_idFK2` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`produto_id`),
  ADD CONSTRAINT `venda_idFK` FOREIGN KEY (`venda_id`) REFERENCES `venda` (`venda_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
