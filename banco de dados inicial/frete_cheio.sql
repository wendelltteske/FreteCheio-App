-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 24-Nov-2022 às 01:05
-- Versão do servidor: 10.6.4-MariaDB
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `frete_cheio`
--
CREATE DATABASE IF NOT EXISTS `frete_cheio` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `frete_cheio`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao`
--

DROP TABLE IF EXISTS `avaliacao`;
CREATE TABLE IF NOT EXISTS `avaliacao` (
  `id_avalicao` int(11) NOT NULL,
  `empresa_id_empresa` int(11) NOT NULL,
  `servico_id_servico` int(11) NOT NULL,
  `nota_motorista` int(11) DEFAULT NULL,
  `avaliacao_motorista` varchar(45) DEFAULT NULL,
  `nota_empresa` int(11) DEFAULT NULL,
  `avaliacao_empresa` varchar(45) DEFAULT NULL,
  `motorista_id_motorista` int(11) NOT NULL,
  PRIMARY KEY (`id_avalicao`),
  KEY `fk_Avaliacao_empresa1_idx` (`empresa_id_empresa`),
  KEY `fk_avaliacao_servico1_idx` (`servico_id_servico`),
  KEY `fk_avaliacao_motorista1_idx` (`motorista_id_motorista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `caminhao`
--

DROP TABLE IF EXISTS `caminhao`;
CREATE TABLE IF NOT EXISTS `caminhao` (
  `id_caminhao` int(11) NOT NULL AUTO_INCREMENT,
  `modelo` varchar(25) DEFAULT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `ano_fabri` year(4) DEFAULT NULL,
  `peso_max` float DEFAULT NULL,
  `motorista_id_motorista` int(11) NOT NULL,
  PRIMARY KEY (`id_caminhao`),
  KEY `fk_caminhao_motorista1_idx` (`motorista_id_motorista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `caracterista_caminhao`
--

DROP TABLE IF EXISTS `caracterista_caminhao`;
CREATE TABLE IF NOT EXISTS `caracterista_caminhao` (
  `id_caracterista_caminhao` int(11) NOT NULL,
  `caracteristica_caminhao_id_caracteristica_caminhao` int(11) NOT NULL,
  `caminhao_id_caminhao` int(11) NOT NULL,
  PRIMARY KEY (`id_caracterista_caminhao`),
  KEY `fk_caracterista_caminhao_caracteristica_caminhao1_idx` (`caracteristica_caminhao_id_caracteristica_caminhao`),
  KEY `fk_caracterista_caminhao_caminhao1_idx` (`caminhao_id_caminhao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `caracteristicas_cargas`
--

DROP TABLE IF EXISTS `caracteristicas_cargas`;
CREATE TABLE IF NOT EXISTS `caracteristicas_cargas` (
  `id_caracteristicas_cargas` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_caracteristicas_cargas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `caracteristica_caminhao`
--

DROP TABLE IF EXISTS `caracteristica_caminhao`;
CREATE TABLE IF NOT EXISTS `caracteristica_caminhao` (
  `id_caracteristica_caminhao` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_caracteristica_caminhao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `carga`
--

DROP TABLE IF EXISTS `carga`;
CREATE TABLE IF NOT EXISTS `carga` (
  `id_carga` int(11) NOT NULL AUTO_INCREMENT,
  `empresa_id_empresa` int(11) NOT NULL,
  `peso` float DEFAULT NULL,
  `largura` float DEFAULT NULL,
  `comprimento` float DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  PRIMARY KEY (`id_carga`),
  KEY `fk_carga_empresa1_idx` (`empresa_id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `carga_has_carga`
--

DROP TABLE IF EXISTS `carga_has_carga`;
CREATE TABLE IF NOT EXISTS `carga_has_carga` (
  `Carga_idCarga` int(11) NOT NULL,
  `Carga_idCarga1` int(11) NOT NULL,
  PRIMARY KEY (`Carga_idCarga`,`Carga_idCarga1`),
  KEY `fk_Carga_has_Carga_Carga2_idx` (`Carga_idCarga1`),
  KEY `fk_Carga_has_Carga_Carga1_idx` (`Carga_idCarga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `carga_servico`
--

DROP TABLE IF EXISTS `carga_servico`;
CREATE TABLE IF NOT EXISTS `carga_servico` (
  `id_carga_servico` int(11) NOT NULL,
  `carga_id_carga` int(11) NOT NULL,
  `servico_id_servico` int(11) NOT NULL,
  PRIMARY KEY (`id_carga_servico`),
  KEY `fk_Carga_servico_carga1_idx` (`carga_id_carga`),
  KEY `fk_carga_servico_servico1_idx` (`servico_id_servico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clausulas_contrato`
--

DROP TABLE IF EXISTS `clausulas_contrato`;
CREATE TABLE IF NOT EXISTS `clausulas_contrato` (
  `id_clausulas_contrato` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_clausulas_contrato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contrato_empresa`
--

DROP TABLE IF EXISTS `contrato_empresa`;
CREATE TABLE IF NOT EXISTS `contrato_empresa` (
  `id_contrato_empresa` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `caminho_arquivo` varchar(255) DEFAULT NULL,
  `empresa_id_empresa` int(11) NOT NULL,
  `clausulas_contrato_id_clausulas_contrato` int(11) NOT NULL,
  PRIMARY KEY (`id_contrato_empresa`),
  KEY `fk_Contrato_empresa_empresa1_idx` (`empresa_id_empresa`),
  KEY `fk_contrato_empresa_clausulas_contrato1_idx` (`clausulas_contrato_id_clausulas_contrato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contrato_motorista`
--

DROP TABLE IF EXISTS `contrato_motorista`;
CREATE TABLE IF NOT EXISTS `contrato_motorista` (
  `id_contrato_motorista` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `caminho_arquivo` varchar(255) DEFAULT NULL,
  `clausulas_contrato_id_clausulas_contrato` int(11) NOT NULL,
  `motorista_id_motorista` int(11) NOT NULL,
  PRIMARY KEY (`id_contrato_motorista`),
  KEY `fk_contrato_motorista_clausulas_contrato1_idx` (`clausulas_contrato_id_clausulas_contrato`),
  KEY `fk_contrato_motorista_motorista1_idx` (`motorista_id_motorista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(225) DEFAULT NULL,
  `cpf/cnpj` varchar(14) CHARACTER SET utf8mb3 COLLATE utf8mb3_estonian_ci DEFAULT NULL,
  `telefone` varchar(25) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `endereco_id_endereco` int(11) NOT NULL,
  PRIMARY KEY (`id_empresa`),
  KEY `fk_Empresa_endereco1_idx` (`endereco_id_endereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

DROP TABLE IF EXISTS `endereco`;
CREATE TABLE IF NOT EXISTS `endereco` (
  `id_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `cep` varchar(8) DEFAULT NULL,
  `logradouro` text DEFAULT NULL,
  `numero` varchar(6) DEFAULT NULL,
  `bairro` text DEFAULT NULL,
  `bloco` varchar(10) DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  PRIMARY KEY (`id_endereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco_carga`
--

DROP TABLE IF EXISTS `endereco_carga`;
CREATE TABLE IF NOT EXISTS `endereco_carga` (
  `id_endereco_carga` int(11) NOT NULL AUTO_INCREMENT,
  `carga_id_carga` int(11) NOT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `logradouro` text DEFAULT NULL,
  `numero` varchar(6) DEFAULT NULL,
  `bairro` text DEFAULT NULL,
  `bloco` varchar(10) DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  `ponto_id_ponto` int(11) NOT NULL,
  PRIMARY KEY (`id_endereco_carga`),
  KEY `fk_Endereco_carga_carga1_idx` (`carga_id_carga`),
  KEY `fk_endereco_carga_ponto1_idx` (`ponto_id_ponto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `especificacao_carga`
--

DROP TABLE IF EXISTS `especificacao_carga`;
CREATE TABLE IF NOT EXISTS `especificacao_carga` (
  `id_especificacao_carga` int(11) NOT NULL,
  `carga_id_carga` int(11) NOT NULL,
  `caracteristicas_cargas_id_caracteristicas_cargas` int(11) NOT NULL,
  PRIMARY KEY (`id_especificacao_carga`),
  KEY `fk_caracteristca_carga_carga1_idx` (`carga_id_carga`),
  KEY `fk_especificacao_carga_caracteristicas_cargas1_idx` (`caracteristicas_cargas_id_caracteristicas_cargas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `faturas`
--

DROP TABLE IF EXISTS `faturas`;
CREATE TABLE IF NOT EXISTS `faturas` (
  `id_faturas` int(11) NOT NULL AUTO_INCREMENT,
  `nome_metodo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_faturas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `justificativa`
--

DROP TABLE IF EXISTS `justificativa`;
CREATE TABLE IF NOT EXISTS `justificativa` (
  `id_justificativa` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_justificativa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `localizacao`
--

DROP TABLE IF EXISTS `localizacao`;
CREATE TABLE IF NOT EXISTS `localizacao` (
  `id_localizacao` int(11) NOT NULL,
  `data` datetime DEFAULT NULL,
  `local` varchar(45) DEFAULT NULL,
  `descrição` varchar(255) DEFAULT NULL,
  `caminhao_id_caminhao` int(11) NOT NULL,
  `justificativa_id_justificativa` int(11) NOT NULL,
  PRIMARY KEY (`id_localizacao`),
  KEY `fk_localizacao_caminhao1_idx` (`caminhao_id_caminhao`),
  KEY `fk_localizacao_justificativa1_idx` (`justificativa_id_justificativa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `motorista`
--

DROP TABLE IF EXISTS `motorista`;
CREATE TABLE IF NOT EXISTS `motorista` (
  `id_motorista` int(11) NOT NULL AUTO_INCREMENT,
  `nome_motorista` varchar(200) DEFAULT NULL,
  `cpf/cnpj` varchar(14) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `foto_cnh` varchar(255) DEFAULT NULL,
  `foto_pessoal` varchar(255) DEFAULT NULL,
  `numero_cnh` varchar(45) DEFAULT NULL,
  `respostas` text DEFAULT NULL,
  `data` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_motorista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
CREATE TABLE IF NOT EXISTS `pagamento` (
  `id_pagamento` int(11) NOT NULL,
  `valor` double DEFAULT NULL,
  `data_pagamento` datetime DEFAULT NULL,
  `etapa` varchar(45) DEFAULT NULL,
  `valor_retido` double DEFAULT NULL,
  `empresa_id_empresa` int(11) NOT NULL,
  `pocentagem_retida` float DEFAULT NULL,
  `faturas_id_faturas` int(11) NOT NULL,
  `servico_id_servico` int(11) NOT NULL,
  PRIMARY KEY (`id_pagamento`),
  KEY `fk_Pagamento_empresa1_idx` (`empresa_id_empresa`),
  KEY `fk_pagamento_faturas1_idx` (`faturas_id_faturas`),
  KEY `fk_pagamento_servico1_idx` (`servico_id_servico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento_motorista`
--

DROP TABLE IF EXISTS `pagamento_motorista`;
CREATE TABLE IF NOT EXISTS `pagamento_motorista` (
  `id_pagamento_motorista` int(11) NOT NULL AUTO_INCREMENT,
  `valor_pago` double DEFAULT NULL,
  `data_pagamento` datetime DEFAULT NULL,
  `etapa` varchar(45) DEFAULT NULL,
  `motorista_id_motorista` int(11) NOT NULL,
  `faturas_id_faturas` int(11) NOT NULL,
  `servico_id_servico` int(11) NOT NULL,
  PRIMARY KEY (`id_pagamento_motorista`),
  KEY `fk_pagamento_motorista_motorista1_idx` (`motorista_id_motorista`),
  KEY `fk_pagamento_motorista_faturas1_idx` (`faturas_id_faturas`),
  KEY `fk_pagamento_motorista_servico1_idx` (`servico_id_servico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ponto`
--

DROP TABLE IF EXISTS `ponto`;
CREATE TABLE IF NOT EXISTS `ponto` (
  `id_ponto` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_ponto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

DROP TABLE IF EXISTS `servico`;
CREATE TABLE IF NOT EXISTS `servico` (
  `id_servico` int(11) NOT NULL AUTO_INCREMENT,
  `preco` float DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `valor_frete` float DEFAULT NULL,
  `data_inicio` datetime DEFAULT NULL,
  `data_termino` datetime DEFAULT NULL,
  `data_registro` datetime DEFAULT NULL,
  `data_aceite` datetime DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Caminhao_idCaminhao` int(11) NOT NULL,
  PRIMARY KEY (`id_servico`),
  KEY `fk_Servico_Caminhao1_idx` (`Caminhao_idCaminhao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD CONSTRAINT `fk_Avaliacao_empresa1` FOREIGN KEY (`empresa_id_empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_avaliacao_motorista1` FOREIGN KEY (`motorista_id_motorista`) REFERENCES `motorista` (`id_motorista`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_avaliacao_servico1` FOREIGN KEY (`servico_id_servico`) REFERENCES `servico` (`id_servico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `caminhao`
--
ALTER TABLE `caminhao`
  ADD CONSTRAINT `fk_caminhao_motorista1` FOREIGN KEY (`motorista_id_motorista`) REFERENCES `motorista` (`id_motorista`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `caracterista_caminhao`
--
ALTER TABLE `caracterista_caminhao`
  ADD CONSTRAINT `fk_caracterista_caminhao_caminhao1` FOREIGN KEY (`caminhao_id_caminhao`) REFERENCES `caminhao` (`id_caminhao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_caracterista_caminhao_caracteristica_caminhao1` FOREIGN KEY (`caracteristica_caminhao_id_caracteristica_caminhao`) REFERENCES `caracteristica_caminhao` (`id_caracteristica_caminhao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `carga`
--
ALTER TABLE `carga`
  ADD CONSTRAINT `fk_carga_empresa1` FOREIGN KEY (`empresa_id_empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `carga_has_carga`
--
ALTER TABLE `carga_has_carga`
  ADD CONSTRAINT `fk_Carga_has_Carga_Carga1` FOREIGN KEY (`Carga_idCarga`) REFERENCES `carga` (`id_carga`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Carga_has_Carga_Carga2` FOREIGN KEY (`Carga_idCarga1`) REFERENCES `carga` (`id_carga`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `carga_servico`
--
ALTER TABLE `carga_servico`
  ADD CONSTRAINT `fk_Carga_servico_carga1` FOREIGN KEY (`carga_id_carga`) REFERENCES `carga` (`id_carga`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_carga_servico_servico1` FOREIGN KEY (`servico_id_servico`) REFERENCES `servico` (`id_servico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `contrato_empresa`
--
ALTER TABLE `contrato_empresa`
  ADD CONSTRAINT `fk_Contrato_empresa_empresa1` FOREIGN KEY (`empresa_id_empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contrato_empresa_clausulas_contrato1` FOREIGN KEY (`clausulas_contrato_id_clausulas_contrato`) REFERENCES `clausulas_contrato` (`id_clausulas_contrato`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `contrato_motorista`
--
ALTER TABLE `contrato_motorista`
  ADD CONSTRAINT `fk_contrato_motorista_clausulas_contrato1` FOREIGN KEY (`clausulas_contrato_id_clausulas_contrato`) REFERENCES `clausulas_contrato` (`id_clausulas_contrato`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contrato_motorista_motorista1` FOREIGN KEY (`motorista_id_motorista`) REFERENCES `motorista` (`id_motorista`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `fk_Empresa_endereco1` FOREIGN KEY (`endereco_id_endereco`) REFERENCES `endereco` (`id_endereco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `endereco_carga`
--
ALTER TABLE `endereco_carga`
  ADD CONSTRAINT `fk_Endereco_carga_carga1` FOREIGN KEY (`carga_id_carga`) REFERENCES `carga` (`id_carga`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_endereco_carga_ponto1` FOREIGN KEY (`ponto_id_ponto`) REFERENCES `ponto` (`id_ponto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `especificacao_carga`
--
ALTER TABLE `especificacao_carga`
  ADD CONSTRAINT `fk_caracteristca_carga_carga1` FOREIGN KEY (`carga_id_carga`) REFERENCES `carga` (`id_carga`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_especificacao_carga_caracteristicas_cargas1` FOREIGN KEY (`caracteristicas_cargas_id_caracteristicas_cargas`) REFERENCES `caracteristicas_cargas` (`id_caracteristicas_cargas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `localizacao`
--
ALTER TABLE `localizacao`
  ADD CONSTRAINT `fk_localizacao_caminhao1` FOREIGN KEY (`caminhao_id_caminhao`) REFERENCES `caminhao` (`id_caminhao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_localizacao_justificativa1` FOREIGN KEY (`justificativa_id_justificativa`) REFERENCES `justificativa` (`id_justificativa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD CONSTRAINT `fk_Pagamento_empresa1` FOREIGN KEY (`empresa_id_empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pagamento_faturas1` FOREIGN KEY (`faturas_id_faturas`) REFERENCES `faturas` (`id_faturas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pagamento_servico1` FOREIGN KEY (`servico_id_servico`) REFERENCES `servico` (`id_servico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pagamento_motorista`
--
ALTER TABLE `pagamento_motorista`
  ADD CONSTRAINT `fk_pagamento_motorista_faturas1` FOREIGN KEY (`faturas_id_faturas`) REFERENCES `faturas` (`id_faturas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pagamento_motorista_motorista1` FOREIGN KEY (`motorista_id_motorista`) REFERENCES `motorista` (`id_motorista`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pagamento_motorista_servico1` FOREIGN KEY (`servico_id_servico`) REFERENCES `servico` (`id_servico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `servico`
--
ALTER TABLE `servico`
  ADD CONSTRAINT `fk_Servico_Caminhao1` FOREIGN KEY (`Caminhao_idCaminhao`) REFERENCES `caminhao` (`id_caminhao`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
