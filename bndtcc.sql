SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `tbmaterial` (
  `IDmaterial` int(11) NOT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `datarecebimento` date DEFAULT NULL,
  `usuarioID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbmaterial`
--

INSERT INTO `tbmaterial` (`IDmaterial`, `tipo`, `peso`, `datarecebimento`, `usuarioID`) VALUES
(1, 'Vidro', 15.00, '2023-06-12', 1),
(2, 'papel', 20.00, '2023-03-21', 5),
(3, 'plástico', 32.00, '2023-04-11', 4),
(4, 'metal', 14.00, '2023-08-02', 3),
(5, 'Alumínio', 14.00, '2023-07-20', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbusuario`
--

CREATE TABLE `tbusuario` (
  `IDusuario` int(11) NOT NULL,
  `nome` varchar(180) DEFAULT NULL,
  `endereco` varchar(180) DEFAULT NULL,
  `email` varchar(180) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbusuario`
--

INSERT INTO `tbusuario` (`IDusuario`, `nome`, `endereco`, `email`) VALUES
(1, 'Larissa Dos Campos', 'Rua Suécia, 45', 'Larissa_campos@hotmail.com'),
(2, 'Eduarda Noeco\r\n\r\n', 'Rua Camomila, 23', 'Dudu2@gmail.com'),
(3, 'Vinicius Moraes', 'Rua Álvaro Andrade, 985', 'vinimoraes@hotmail.com'),
(4, 'Caio Locea', 'Alameda das Perdizes, 01', 'LoceaCaio@hotmail.com'),
(5, 'Raissa Bono\r\n\r\n', 'Rua Jayme Waldemir de Medeiros, 14', 'RaiBonono@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pontodecoleta`
--
ALTER TABLE `pontodecoleta`
  ADD PRIMARY KEY (`IDponto`);

--
-- Índices de tabela `tbmaterial`
--
ALTER TABLE `tbmaterial`
  ADD PRIMARY KEY (`IDmaterial`),
  ADD KEY `usuarioID` (`usuarioID`);

--
-- Índices de tabela `tbusuario`
--
ALTER TABLE `tbusuario`
  ADD PRIMARY KEY (`IDusuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pontodecoleta`
--
ALTER TABLE `pontodecoleta`
  MODIFY `IDponto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tbmaterial`
--
ALTER TABLE `tbmaterial`
  MODIFY `IDmaterial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tbusuario`
--
ALTER TABLE `tbusuario`
  MODIFY `IDusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tbmaterial`
--
ALTER TABLE `tbmaterial`
  ADD CONSTRAINT `tbmaterial_ibfk_1` FOREIGN KEY (`usuarioID`) REFERENCES `tbusuario` (`IDusuario`);
COMMIT;