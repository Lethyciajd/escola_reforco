-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/11/2024 às 18:48
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `reforco_escolar`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `adm_escola`
--

CREATE TABLE `adm_escola` (
  `id` int(10) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `matricula` int(15) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `adm_escola`
--

INSERT INTO `adm_escola` (`id`, `nome`, `matricula`, `senha`) VALUES
(1, 'Lethycia Dantas', 1407, '140703');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro_aluno`
--

CREATE TABLE `cadastro_aluno` (
  `id` int(11) NOT NULL,
  `nome_aluno` varchar(100) NOT NULL,
  `idade_aluno` int(11) NOT NULL,
  `ano_serie` varchar(50) NOT NULL,
  `nome_responsavel` varchar(100) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `horario` varchar(50) NOT NULL,
  `informacoes_adicionais` text DEFAULT NULL,
  `matriculado` varchar(50) NOT NULL,
  `data_matricula` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cadastro_aluno`
--

INSERT INTO `cadastro_aluno` (`id`, `nome_aluno`, `idade_aluno`, `ano_serie`, `nome_responsavel`, `telefone`, `email`, `horario`, `informacoes_adicionais`, `matriculado`, `data_matricula`) VALUES
(17, 'Andréa', 6, '1_ano', 'Ednalva', '92994156788', 'ednalva@gmail.com', 'quarta', '', 'ativo', '2024-11-14 13:33:18');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos`
--

CREATE TABLE `contatos` (
  `id_contato` int(10) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensagem` varchar(300) NOT NULL,
  `data_envio` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `matriculas`
--

CREATE TABLE `matriculas` (
  `id_matricula` int(10) NOT NULL,
  `id_aluno` int(10) NOT NULL,
  `nome_aluno` varchar(100) NOT NULL,
  `nome_responsavel` varchar(100) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `dia_seg` varchar(50) DEFAULT NULL,
  `dia_ter` varchar(50) DEFAULT NULL,
  `dia_qua` varchar(50) DEFAULT NULL,
  `dia_qui` varchar(50) DEFAULT NULL,
  `dia_sex` varchar(50) DEFAULT NULL,
  `matricula_status` varchar(50) DEFAULT NULL,
  `data_matricula` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `matriculas`
--

INSERT INTO `matriculas` (`id_matricula`, `id_aluno`, `nome_aluno`, `nome_responsavel`, `telefone`, `dia_seg`, `dia_ter`, `dia_qua`, `dia_qui`, `dia_sex`, `matricula_status`, `data_matricula`) VALUES
(17, 17, 'Andréa', 'Ednalva', '92994156788', '0', '0', '0', '0', '0', 'ativo', '2024-11-14 15:34:05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vagas_quarta`
--

CREATE TABLE `vagas_quarta` (
  `id` int(10) NOT NULL,
  `qtde_matriculado` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `vagas_quarta`
--

INSERT INTO `vagas_quarta` (`id`, `qtde_matriculado`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vagas_quinta`
--

CREATE TABLE `vagas_quinta` (
  `id` int(10) NOT NULL,
  `qtde_matriculado` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `vagas_quinta`
--

INSERT INTO `vagas_quinta` (`id`, `qtde_matriculado`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vagas_segunda`
--

CREATE TABLE `vagas_segunda` (
  `id` int(10) NOT NULL,
  `qtde_matriculado` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `vagas_segunda`
--

INSERT INTO `vagas_segunda` (`id`, `qtde_matriculado`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vagas_sexta`
--

CREATE TABLE `vagas_sexta` (
  `id` int(10) NOT NULL,
  `qtde_matriculado` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `vagas_sexta`
--

INSERT INTO `vagas_sexta` (`id`, `qtde_matriculado`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vagas_terca`
--

CREATE TABLE `vagas_terca` (
  `id` int(10) NOT NULL,
  `qtde_matriculado` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `vagas_terca`
--

INSERT INTO `vagas_terca` (`id`, `qtde_matriculado`) VALUES
(1, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `adm_escola`
--
ALTER TABLE `adm_escola`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cadastro_aluno`
--
ALTER TABLE `cadastro_aluno`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id_contato`);

--
-- Índices de tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id_matricula`);

--
-- Índices de tabela `vagas_quarta`
--
ALTER TABLE `vagas_quarta`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vagas_quinta`
--
ALTER TABLE `vagas_quinta`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vagas_segunda`
--
ALTER TABLE `vagas_segunda`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vagas_sexta`
--
ALTER TABLE `vagas_sexta`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vagas_terca`
--
ALTER TABLE `vagas_terca`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `adm_escola`
--
ALTER TABLE `adm_escola`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cadastro_aluno`
--
ALTER TABLE `cadastro_aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id_contato` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id_matricula` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `vagas_quarta`
--
ALTER TABLE `vagas_quarta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vagas_quinta`
--
ALTER TABLE `vagas_quinta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vagas_segunda`
--
ALTER TABLE `vagas_segunda`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vagas_sexta`
--
ALTER TABLE `vagas_sexta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vagas_terca`
--
ALTER TABLE `vagas_terca`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
