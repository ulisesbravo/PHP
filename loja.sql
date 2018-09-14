-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05-Set-2018 às 21:01
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `admin` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `admin`, `pass`, `data_cadastro`) VALUES
(1, 'admin', '12345', '2018-08-14 19:10:42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `id_prod` int(5) NOT NULL,
  `email` varchar(80) NOT NULL,
  `produto` varchar(50) NOT NULL,
  `valor` float NOT NULL,
  `status` varchar(15) NOT NULL,
  `data_insere` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `carrinho`
--

INSERT INTO `carrinho` (`id_prod`, `email`, `produto`, `valor`, `status`, `data_insere`) VALUES
(2, 'mpmotta@senacrs.edu.br', 'Smart TV LED 40 Full HD LG', 1458.99, 'finalizado', '2018-08-27 18:19:26'),
(3, 'mpmotta@senacrs.edu.br', 'Cadeira Gamer Neon', 590.95, 'finalizado', '2018-08-27 18:20:07'),
(4, 'mpmotta@senacrs.edu.br', 'Console Playstation 4 + 4 Jogos', 2199.99, 'finalizado', '2018-08-27 18:20:15'),
(5, 'mpmotta@senacrs.edu.br', 'Estante Home para TV atÃ© 60\"', 997.41, 'finalizado', '2018-08-27 18:20:28'),
(6, 'mpmotta@senacrs.edu.br', 'Smart TV LED 40 Full HD LG', 1958.99, 'finalizado', '2018-08-31 17:54:31'),
(7, 'mpmotta@senacrs.edu.br', 'Notebook Lenovo IdeaPad 320 Core i5', 2049.05, 'finalizado', '2018-08-31 18:14:05'),
(8, 'mpmotta@senacrs.edu.br', 'Motorola Moto G6 Plus 32GB Indigo', 1143.12, 'finalizado', '2018-08-31 18:14:18'),
(9, 'mpmotta@senacrs.edu.br', 'Notebook Lenovo IdeaPad 320 Core i5', 2049.05, 'finalizado', '2018-08-31 18:15:56'),
(10, 'mpmotta@senacrs.edu.br', 'Ar Condicionado Split 9.000 Btus Frio', 1499.99, 'finalizado', '2018-08-31 18:16:02'),
(11, 'mpmotta@senacrs.edu.br', 'Roteador Wireless Tp-link 450mbps', 119.9, 'finalizado', '2018-08-31 18:22:49'),
(12, 'mpmotta@senacrs.edu.br', 'Roupeiro 04 Portas Flex Capelinha', 459.8, 'finalizado', '2018-08-31 18:22:58'),
(13, 'mpmotta@senacrs.edu.br', 'Relogio Orient quartz', 320, 'finalizado', '2018-08-31 18:23:05'),
(14, 'mpmotta@senacrs.edu.br', 'Mac Mini Core i5 2.6GHz', 3689, 'finalizado', '2018-08-31 18:56:08'),
(15, 'mpmotta@senacrs.edu.br', 'Conjunto de mesa com 6 cadeiras', 644.99, 'finalizado', '2018-08-31 18:56:13'),
(16, 'mpmotta@senacrs.edu.br', 'Placa-Mae GIGABYTE LGA 1151', 611.65, 'finalizado', '2018-08-31 19:13:48'),
(17, 'mpmotta@senacrs.edu.br', 'Relogio Champion digital', 127.8, 'finalizado', '2018-08-31 19:13:54'),
(18, 'mpmotta@senacrs.edu.br', 'Relogio Champion digital', 127.8, 'finalizado', '2018-08-31 19:59:00'),
(19, 'mpmotta@senacrs.edu.br', 'Cadeira Gamer Neon', 590.95, 'finalizado', '2018-08-31 19:59:07'),
(20, 'mpmotta@senacrs.edu.br', 'Case HD Externo SATA 2.5\" USB 3.0', 49.89, 'finalizado', '2018-08-31 19:59:12'),
(21, 'mpmotta@senacrs.edu.br', 'Roupeiro 04 Portas Flex Capelinha', 459.8, 'finalizado', '2018-09-03 17:18:41'),
(22, 'mpmotta@senacrs.edu.br', 'Conjunto de mesa com 6 cadeiras', 644.99, 'finalizado', '2018-09-03 17:18:49'),
(23, 'mpmotta@senacrs.edu.br', 'Paleta de Sombras Natura', 106.9, 'finalizado', '2018-09-03 17:45:20'),
(24, 'mpmotta@senacrs.edu.br', 'Console Playstation 4 + 4 Jogos', 2199.99, 'finalizado', '2018-09-03 18:12:01'),
(25, 'zezinho@hotmail.com', 'Roupeiro 04 Portas Flex Capelinha', 459.8, 'finalizado', '2018-09-03 18:12:29'),
(26, 'zezinho@hotmail.com', 'Relogio Orient quartz', 320, 'finalizado', '2018-09-03 18:12:40'),
(27, 'carm@ig.com.br', 'Mac Mini Core i5 2.6GHz', 3689, 'finalizado', '2018-09-03 18:13:15'),
(28, 'carm@ig.com.br', 'Cadeira Gamer Neon', 590.95, 'finalizado', '2018-09-03 18:13:22'),
(29, 'fitopaes@argentina.org', 'iPad Apple 32GB Prata Tela 9,7pol', 1852.41, 'finalizado', '2018-09-03 18:13:53'),
(30, 'fitopaes@argentina.org', 'Notebook Lenovo IdeaPad 320 Core i5', 2049.05, 'finalizado', '2018-09-03 18:14:00'),
(31, 'fitopaes@argentina.org', 'Conjunto de mesa com 6 cadeiras', 644.99, 'finalizado', '2018-09-03 18:14:11'),
(32, 'silvio@sbt.com.br', 'Smart TV LED 40 Full HD LG', 1958.99, 'finalizado', '2018-09-03 18:14:38'),
(33, 'silvio@sbt.com.br', 'Motorola Moto G6 Plus 32GB Indigo', 1143.12, 'finalizado', '2018-09-03 18:14:51'),
(34, 'silvio@sbt.com.br', 'Paleta de Sombras Natura', 106.9, 'finalizado', '2018-09-03 18:14:59'),
(35, 'silvio@sbt.com.br', 'Cadeira Gamer Neon', 590.95, 'finalizado', '2018-09-03 18:15:09'),
(36, 'mpmotta@senacrs.edu.br', 'Relogio Orient quartz', 320, 'finalizado', '2018-09-03 18:18:38'),
(37, 'zezinho@hotmail.com', 'Placa-Mae GIGABYTE LGA 1151', 611.65, 'finalizado', '2018-09-03 18:19:47'),
(38, 'zezinho@hotmail.com', 'AMD RYZEN 7 2700X 3.7GHZ', 1589.9, 'finalizado', '2018-09-03 18:19:52'),
(39, 'carm@ig.com.br', 'Mascara para Cilios Waterproof', 39.7, 'finalizado', '2018-09-03 18:21:33'),
(40, 'carm@ig.com.br', 'Kit de Maquiagem Travel Make-UP', 137.75, 'finalizado', '2018-09-03 18:21:38'),
(41, 'fitopaes@argentina.org', 'Case HD Externo SATA 2.5\" USB 3.0', 49.89, 'finalizado', '2018-09-03 18:22:08'),
(42, 'fitopaes@argentina.org', 'Ar Condicionado Split 9.000 Btus Frio', 1499.99, 'finalizado', '2018-09-03 18:22:14'),
(43, 'silvio@sbt.com.br', 'iPad Apple 32GB Prata Tela 9,7pol', 1852.41, 'finalizado', '2018-09-03 18:23:35'),
(44, 'silvio@sbt.com.br', 'Case HD Externo SATA 2.5\" USB 3.0', 49.89, 'finalizado', '2018-09-03 18:23:42'),
(45, 'silvio@sbt.com.br', 'Estante Home para TV atÃ© 60\"', 997.41, 'finalizado', '2018-09-03 18:23:51'),
(46, 'mpmotta@senacrs.edu.br', 'Notebook Lenovo IdeaPad 320 Core i5', 2049.05, 'finalizado', '2018-09-03 18:24:14'),
(47, 'zezinho@hotmail.com', 'Conjunto de mesa com 6 cadeiras', 644.99, 'finalizado', '2018-09-03 18:25:16'),
(48, 'fitopaes@argentina.org', 'Relogio Mormaii digital', 162.99, 'finalizado', '2018-09-03 18:26:37'),
(49, 'silvio@sbt.com.br', 'Ar Condicionado Split 9.000 Btus Frio', 1499.99, 'finalizado', '2018-09-03 18:27:08'),
(50, 'carm@ig.com.br', 'Conjunto de mesa com 6 cadeiras', 644.99, 'finalizado', '2018-09-03 18:27:34'),
(51, 'carm@ig.com.br', 'Roupeiro 04 Portas Flex Capelinha', 459.8, 'finalizado', '2018-09-03 18:27:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `senha` varchar(128) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `CPF` bigint(11) NOT NULL,
  `fone` bigint(13) NOT NULL,
  `endereco` varchar(256) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `CEP` int(8) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome`, `email`, `senha`, `sobrenome`, `CPF`, `fone`, `endereco`, `bairro`, `cidade`, `estado`, `CEP`, `data_cadastro`) VALUES
(19, 'MÃ¡rcio', 'mpmotta@senacrs.edu.br', '4e9394b4d2876b8741b10a2fb46589b60f1a1c121e9bc4c280fae85af75b75ae8609d49f0e4215f3b682306dc7f262b171ffc181f886f764d638210d6ff7ba28', 'Motta', 21456478498, 5184074070, 'Rua venancio Aires, 93', 'Cidade baixa', 'Porto Alegre', 'Rio Grande do Sul', 90510350, '2018-08-20 17:08:30'),
(20, 'JosÃ© carlos', 'zezinho@hotmail.com', 'a9fdb5036a988b6ed31b7993ed5ba6f1446251deaeddb89e2159dc01c55c515dcc0fcd57c62b0c799b2360b90041652971385fc77a3d7e6b997ff116f95561fc', 'Pinheiro', 33366688877, 5184074070, 'beco das 7 facadas, 666', 'Vila Cruzeiro', 'POA', 'Rio Grande do Sul', 9966699, '2018-09-03 17:59:51'),
(21, 'Carmosina', 'carm@ig.com.br', '8c7b3d4e34106004867ce8425e098bb2447ff3fe23770a13d7ba3bd9454bba11f29c116fcea7396a8f7c37e23ecd3c286c05c752358f8d67fd37ecbec59aac69', 'de Jesus', 99988877766, 5199665544, 'Travessa da Paz, 58', 'Farroupilha', 'Porto Alegre', 'Rio Grande do Sul', 90010250, '2018-09-03 18:01:37'),
(22, 'Fito', 'fitopaes@argentina.org', '01ceca0b122000f57c88c1a0fddd89effe35a01bd100d0273087046de0e33684b1432a61a95fd85723662e1244fd417bbb530016a6b1c7845a64ee4aa4c72a25', 'Paes', 64257451123, 5166554477, 'casa Rosada s/n', 'centro', 'Buenos Aires', 'Argentina', 10001499, '2018-09-03 18:02:53'),
(23, 'Senor', 'silvio@sbt.com.br', '5013e9fb3ccf67e6648cea179cd5af1b33ca8570004bfdb3cdf3c43ad3876807c9ec67c7032f81776daa4842eecb8580a4ec3b9214f5b2f1e65a875a022bc18b', 'Abravanel', 12345678900, 36873000, 'Av. das ComunicaÃ§Ãµes, 04', 'Jacarepagua', 'SÃ£o Paulo', 'SÃ£o Paulo', 6278905, '2018-09-03 18:06:15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

CREATE TABLE `compra` (
  `id_compra` int(5) UNSIGNED ZEROFILL NOT NULL,
  `email` varchar(80) NOT NULL,
  `prod1` varchar(100) NOT NULL,
  `prod2` varchar(100) NOT NULL,
  `prod3` varchar(100) NOT NULL,
  `prod4` varchar(100) NOT NULL,
  `prod5` varchar(100) NOT NULL,
  `prod6` varchar(100) NOT NULL,
  `prod7` varchar(100) NOT NULL,
  `prod8` varchar(100) NOT NULL,
  `prod9` varchar(100) NOT NULL,
  `prod10` varchar(100) NOT NULL,
  `total` float NOT NULL,
  `data_compra` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `compra`
--

INSERT INTO `compra` (`id_compra`, `email`, `prod1`, `prod2`, `prod3`, `prod4`, `prod5`, `prod6`, `prod7`, `prod8`, `prod9`, `prod10`, `total`, `data_compra`) VALUES
(00021, 'mpmotta@senacrs.edu.br', 'Console Playstation 4 + 4 Jogos', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 2199.99, '2018-09-03 18:12:04'),
(00022, 'zezinho@hotmail.com', 'Roupeiro 04 Portas Flex Capelinha', 'Relogio Orient quartz', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 779.8, '2018-09-03 18:12:44'),
(00023, 'carm@ig.com.br', 'Mac Mini Core i5 2.6GHz', 'Cadeira Gamer Neon', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 4279.95, '2018-09-03 18:13:29'),
(00024, 'fitopaes@argentina.org', 'iPad Apple 32GB Prata Tela 9,7pol', 'Notebook Lenovo IdeaPad 320 Core i5', 'Conjunto de mesa com 6 cadeiras', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 4546.45, '2018-09-03 18:14:15'),
(00025, 'silvio@sbt.com.br', 'Smart TV LED 40 Full HD LG', 'Motorola Moto G6 Plus 32GB Indigo', 'Paleta de Sombras Natura', 'Cadeira Gamer Neon', ' ', ' ', ' ', ' ', ' ', ' ', 3799.96, '2018-09-03 18:15:17'),
(00026, 'mpmotta@senacrs.edu.br', 'Relogio Orient quartz', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 320, '2018-09-03 18:18:42'),
(00027, 'zezinho@hotmail.com', 'Placa-Mae GIGABYTE LGA 1151', 'AMD RYZEN 7 2700X 3.7GHZ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 2201.55, '2018-09-03 18:19:55'),
(00028, 'carm@ig.com.br', 'Mascara para Cilios Waterproof', 'Kit de Maquiagem Travel Make-UP', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 177.45, '2018-09-03 18:21:41'),
(00029, 'fitopaes@argentina.org', 'Case HD Externo SATA 2.5\" USB 3.0', 'Ar Condicionado Split 9.000 Btus Frio', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 1549.88, '2018-09-03 18:22:41'),
(00030, 'silvio@sbt.com.br', 'iPad Apple 32GB Prata Tela 9,7pol', 'Case HD Externo SATA 2.5\" USB 3.0', 'Estante Home para TV atÃ© 60\"', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 2899.71, '2018-09-03 18:23:54'),
(00031, 'mpmotta@senacrs.edu.br', 'Notebook Lenovo IdeaPad 320 Core i5', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 2049.05, '2018-09-03 18:24:17'),
(00032, 'zezinho@hotmail.com', 'Conjunto de mesa com 6 cadeiras', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 644.99, '2018-09-03 18:25:20'),
(00033, 'fitopaes@argentina.org', 'Relogio Mormaii digital', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 162.99, '2018-09-03 18:26:46'),
(00034, 'silvio@sbt.com.br', 'Ar Condicionado Split 9.000 Btus Frio', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 1499.99, '2018-09-03 18:27:11'),
(00035, 'carm@ig.com.br', 'Conjunto de mesa com 6 cadeiras', 'Roupeiro 04 Portas Flex Capelinha', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 1104.79, '2018-09-03 18:27:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(6) UNSIGNED ZEROFILL NOT NULL,
  `nome` varchar(50) NOT NULL,
  `foto` varchar(20) NOT NULL,
  `descricao` text NOT NULL,
  `valor` float NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `foto`, `descricao`, `valor`, `categoria`, `data_cadastro`, `status`) VALUES
(000001, 'Smart TV LED 40 Full HD LG', 'smartv.jpg', 'A smart TV UN40J5200 da Samsung possui tela de 40\" e oferece resoluÃ§Ã£o Full HD, imagens duas vezes melhores que TVs HDs padrÃ£o. Os recursos dessa Smart proporcionam uma Ã³tima experiÃªncia de interaÃ§Ã£o, permitindo acesso a aplicativos, TV on demand e browser de navegaÃ§Ã£o. Navegue na internet e acesse suas redes sociais, tudo direto na tela da TV.<br /><br />\r\n<br /><br />\r\nCaracterÃ­sticas Gerais<br /><br />\r\nModelo: UN40J5200<br /><br />\r\nSÃ©rie: J5200<br /><br />\r\nCor: Preto<br /><br />\r\nTela:<br /><br />\r\nTecnologia: LED<br /><br />\r\nTamanho da Tela: 40\" <br /><br />\r\nResoluÃ§Ã£o: 1920 x 1080<br /><br />\r\nFull HD: Sim.<br /><br />\r\nContraste: NÃ£o especificado.<br /><br />\r\nÃ¢ngulo de visÃ£o (H/V): NÃ£o especificado.<br /><br />\r\nBrilho: NÃ£o especificado.<br /><br />\r\nTempo de resposta: NÃ£o especificado.<br /><br />\r\nMotion Rate: 60<br /><br />\r\nFrequÃªncia CMR: 120 Hz', 1958.99, 'eletronicos', '2018-08-07 19:39:10', 'ativo'),
(000002, 'Motorola Moto G6 Plus 32GB Indigo', 'celular.jpg', 'Smartphone Motorola Moto G6 32GB Indigo - Dual Chip 4G Cam. Duo 12MP + 5MP + Selfie 8MP<br />\r\nO smartphone Moto G6 4G da Motorola Ã© o seu prÃ©ximo telefone. NÃ£o hÃ¡ nada nele que nÃ£o seja incrÃ­vel. Seu desempenho, a partir do processador Qualcomm Snapdragon 450 1.8 GHz Octa-Core, Ã© invejÃ¡vel e - somado Ã  memÃ³ria interna de 32GB e ao RAM de 3GB, leva tudo a um outro nÃ­vel.<br />\r\n<br />\r\nTire fotos sensacionais com a cÃ¢mera traseira dupla de 12 + 5MP ou selfies divertidas com a frontal, de 8MP. Ambas possuem flash, para deixar tudo mais legal. E elas ainda vem com recursos extras que vÃ£o fazer vocÃª se sentir um fotÃ³grafo profissional.<br />\r\n<br />\r\nVeja o resultado das suas fotos - ou mesmo jogos e vÃ­deos - na tela Max Vision Full HD+ de 5,7\" sem bordas, potencializando a sua experiÃªncia. <br />\r\n<br />\r\nE, pra te dar a liberdade que vocÃª merece, ele Ã© desbloqueado e Dual Chip, o que significa que vocÃª fazer ligaÃ§Ãµes do jeito que quiser. <br />\r\n<br />\r\nE todo esse potencial sÃ³ Ã© possÃ©vel atravÃ©s do Android 8.0 Oreo, o sistema operacional mais moderno, que garante uma navegaÃ§Ã£o fluÃ­da, rÃ¡pida e tranquila.', 1143.12, 'eletronicos', '2018-08-08 18:01:20', 'ativo'),
(000003, 'Console Playstation 4 + 4 Jogos', 'ps4.jpg', 'Jogos incríveis. Entretenimento sem fim. Mais leve e mais fino, o sistema PlayStation 4 tem disco rígido de 500GB para tudo o que há de melhor em jogos, músicas e muito mais. O pacote PlayStation Hits oferece jogos incríveis que proporcionarão entretenimento sem fim com jogos dinâmicos e conectados, gráficos e velocidade intensos, personalização inteligente, recursos sociais totalmente integrados e inovadores recursos de segunda tela. Combina conteúdo sem igual, experiências de jogos envolventes, todos os seus aplicativos favoritos de entretenimento digital e recursos exclusivos do PlayStation. O PS4 é centrado nos jogadores, possibilitando que eles joguem quando, onde e como quiserem. O PS4 possibilita que os maiores desenvolvedores de jogos do mundo deem asas à sua criatividade e transcendam os limites do ato de jogar por meio de um sistema que é ajustado especialmente para suas necessidades.', 2199.99, 'eletronicos', '2018-08-08 18:12:12', 'ativo'),
(000004, 'Ar Condicionado Split 9.000 Btus Frio', 'split.jpg', 'Ar Condicionado Split Hi-wall Fontaine 9.000 Btus Frio 110v\r\nSplit Hi-Wall R-410A 110V FONTAINE \r\nO novo split Fontaine une as melhores características de ar-condicionado em um só aparelho. É altamente econômico, garantindo um A em classificação energética e selo Procel de confiança. Características: * Reinicialização Automática. * Função Turbo. * Display LCD. * Função Sleep. - Instalação não inclusa!', 1499.99, 'eletronicos', '2018-08-08 18:17:07', 'ativo'),
(000005, 'iPad Apple 32GB Prata Tela 9,7pol', 'ipad.jpg', 'iPad Apple 32GB Prata Tela 9,7” Retina - Proc. Chip A9 Câm. 8MP + Frontal iOS 11 Touch ID\r\nAprenda, jogue, navegue e crie. O iPad tem uma tela incrível, desempenho espetacular e muitos apps para você fazer o que quiser. É prático. É fácil. É mágico.\r\n\r\nA tela é brilhante. O tamanho também. Seja para ver fotos, fazer compras ou criar uma apresentação, a impressionante tela Retina de 9,7 polegadas tem a resolução e o tamanho perfeitos para dar vida a todas as suas atividades.\r\n\r\nAssista, jogue e crie na velocidade do toque. O desempenho do chip A9 de 64 bits é o que todo app precisa para funcionar de forma rápida e constante. Você pode se divertir com apps educativos avançados, jogos de gráficos complexos e usar dois apps ao mesmo tempo. Tudo isso com uma bateria que dura até 10 horas.\r\n\r\nMais de um milhão de apps para iPad. Todo app para iPad é criado pensando em sua potência e tamanho. E, com tantos apps incríveis para iPad na App Store, vai ser fácil encontrar um para o que você gosta de fazer.\r\n\r\nPessoal. Poderoso. Divertido. O iOS 11 é o sistema operacional móvel mais intuitivo, avançado e seguro do mundo. Com ele, você trabalha e joga em dois apps ao mesmo tempo, pede para a Siri enviar mensagens e acessa seus arquivos de qualquer lugar com o backup automático do iCloud. O iOS 11 ainda vem com apps incluídos. Assim, você aproveita seu iPad ao máximo.\r\n\r\nDesbloqueie e acesse com um toque. Sua impressão digital é a senha perfeita. Ela é única e está sempre com você. Com o Touch ID, você desbloqueia seu iPad na hora e mantém protegidos os dados confidenciais armazenados nos apps.\r\n\r\nCâmeras frontal e traseira. Tirar fotos e gravar vídeos com o iPad é muito fácil. Use a câmera de 8 MP para criar fotos detalhadas e vídeos HD de 1080p. Depois, edite direto no iPad com o Fotos, o iMovie ou seu app favorito. Você também pode usar a câmera FaceTime HD frontal para fazer bonito em chamadas com vídeo e selfies.\r\n\r\nA mesma experiência incrível em todos os seus dispositivos. O iPad funciona perfeitamente com seus outros dispositivos. Você começa a escrever um e-mail no iPhone e termina no iPad. Copia uma imagem, vídeo ou texto com o iPad e cola com seu Mac mais próximo. E ainda usa o AirDrop para compartilhar arquivos na hora, sem fios.\r\n\r\nFeito para ir longe. Com menos de 500 gramas, o iPad foi feito para ir com você a qualquer lugar. E, além de leve, ele é resistente, com uma estrutura unibody de alumínio tão sólida quanto fácil de levar.\r\n\r\nModelo: MP2G2BZ/A.', 1852.41, 'eletronicos', '2018-08-08 18:20:44', 'ativo'),
(000006, 'Case HD Externo SATA 2.5\" USB 3.0', 'case.jpg', 'Gaveta de Hd SATA externo USB para notebook vc coloca na gaveta USB um HD SATA de notebook da capacidade que deseja e acessa pela porta USB do seu Notebook, Video Game ou desktop\r\nEspecificações	Especificações: - Interface USB 3.0 - Disco Rígido suportado: 2,5\" SATA - Plug in Play - Cor Preto - Código interno: CASEHD25SAT3.0 Suporta tanto Hi-Speed USB 3.0 ,2.0 e USB 1.1 de 480 Mbps de conexão Hot swap e Plug &\r\nPlay tecnologia\r\nPadrão	USB 3.0\r\nRequisitos	- Disco Rígido suportado: 2,5\" SATA\r\nSistema Operacional	Mac\r\nTipo	2.5\" / Portátil', 49.89, 'eletronicos', '2018-08-08 18:23:16', 'ativo'),
(000007, 'Roteador Wireless Tp-link 450mbps', 'roteador.jpg', 'O Roteador Wireless TL-WR940N 450Mbps é um dispositivo combinado de conexão de rede cabeada/wireless projetado especificamente para requisitos de rede doméstica, escritórios e pequenos negócios. Com Tecnologia MIMO, o TL-WR940N oferece um desempenho wireless avançado e excepcional, tornando-o ideal para streaming de vídeo, VoIP e jogos online. No mais, o botão WPS em seu elegante exterior garante criptografias WPA2, protegendo a rede contra invasões. Cumprindo com o padrão IEEE 802.11n, o TL-WR940N pode estabelecer uma rede wireless e obter até 18X a velocidade e 6X a gama de produtos convencionais 11g. Além disso, com taxas de transmissão de até 450Mbps, ele mostra habilidades excelentes ao atenuar a perda de dados em longas distâncias e através de obstáculos em um pequeno escritório ou grande apartamento, mesmo em um edifício de aço e concreto. Acima de tudo, você pode facilmente pegar a rede wireless durante a conexão de longa distância onde os produtos 11g não podem. O roteador tem a velocidade para trabalhar sem problemas com quase qualquer aplicação intensiva de largura de banda, incluindo VoIP, HD streaming ou jogos online, sem atrasos. Usando sua poderosa tecnologia N, o roteador também é capaz de reduzir a perda de dados em longas distâncias e através de obstáculos transformando sua casa e até mesmo seu quintal em um grande hotspot.', 119.9, 'eletronicos', '2018-08-08 18:25:16', 'ativo'),
(000008, 'Notebook Lenovo IdeaPad 320 Core i5', 'notebook.jpg', 'CARACTERÍSTICAS\r\nTipo Notebook\r\nProcessador Intel® Core™ i5-7200U Dual Core 2.5 GHz com Turbo Max até 3.1 GHz\r\nSistema operacional Windows 10 Home 64 bits\r\nUnidade óptica Não possui\r\nLeitor de cartão SDXC\r\nSD\r\nSDHC\r\nMMC\r\nLeitor biométrico Não\r\nTamanho da tela 15.6\"\r\nWebcam integrada Sim\r\nCaracterísticas Gerais\r\n- Tela LED HD Widescreen Antirreflexo, com resolução de 1366 x 768 \r\n- Conector combo para fone de ouvido / microfone \r\n- Alto-falantes com certificação Dolby Audio \r\n- Microfone integrado \r\n- Bluetooth 4.1\r\nCache 3 MB\r\nSintonizador de TV não\r\nChipset Integrado\r\nTipo de tela LCD LED\r\nCor Prata', 2049.05, 'informatica', '2018-08-08 19:20:34', 'ativo'),
(000009, 'Mac Mini Core i5 2.6GHz', 'mac-mini.jpg', 'Mac mini, pequeno no tamanho e ainda mais poderoso! Agora o Mac mini ficou ainda mais poderoso graças aos processadores Intel Dual Core e Quad Core mais recentes. Vem com Intel HD Graphics 4000, apps incríveis, Thunderbolt, USB 3 e OS X Mavericks.\r\n\r\nPotente e acessível, o Mac mini junta toda a experiência do Mac em um quadrado de apenas 19,7cm, assim você conecta seu monitor, teclado, mouse e está pronto para fazer coisas incríveis. Possui saída de vídeo HDMI, suporte para resolução de 1080p a até 60Hz, suporte para resolução de 3840 x 2160 a 30Hz e suporte para resolução de 4096 x 2160 a 24Hz.\r\n\r\nConta com 8GB de memória LPDDR3 de 1600MHz, disco rígido de 1TB (5400 rpm), memória de vídeo Intel Iris Graphics, rede wireless Wi-Fi 802.11ac compatível com IEEE 802.11a/g/b/n, tecnologia Bluetooth 4.0 e Ethernet 10/100/1000BASE-T (conector RJ-45).', 3689, 'informatica', '2018-08-08 19:23:50', 'ativo'),
(000010, 'Placa-Mae GIGABYTE LGA 1151', 'placa-mae.jpg', 'Especificações:\r\n\r\n \r\n\r\nCPU:\r\n\r\n- Suporte para 8ª Geração Intel processadores Core i7 / Intel Core i5 / Intel Core i3 / Intel Pentium processadores / Intel Celeron processadores no pacote LGA1151\r\n\r\n- Cache L3 varia com o CPU\r\n\r\n \r\n\r\nChipset:\r\n\r\n- Intel Chipset B360 Express\r\n\r\n \r\n\r\nMemória:\r\n\r\n- 4x Soquetes DDR4 DIMM suportando até 64 GB de memória do sistema\r\n\r\n- Arquitetura de memória dual channel\r\n\r\n- Suporte para módulos de memória DDR4 2666/2400/2133 MHz\r\n\r\n- Suporte para módulos de memória DIMM 1Rx8 / 2Rx8 sem buffer ECC (operam em modo não-ECC)\r\n\r\n- Suporte para módulos de memória DIMM não-bufferizados 1Rx8 / 2Rx8 / 1Rx16 não-ECC\r\n\r\n- Suporte para módulos de memória Extreme Memory Profile (XMP) \r\n\r\n* Para suportar 2.666 MHz da memória XMP, você deve instalar um 8ª Geração Intel Núcleo i7 / i5.\r\n\r\n \r\n\r\nGráficos Onbord:\r\n\r\n \r\n\r\nProcessador gráfico integrado Intel HD Graphics suporta:\r\n\r\n- 1x Porta D-Sub, suportando uma resolução máxima de 1920x1200 @ 60 Hz\r\n\r\n- 1x Porta DVI-D, suportando uma resolução máxima de 1920x1200 @ 60 Hz\r\n\r\n*A porta DVI-D não suporta conexão D-Sub por adaptador.\r\n\r\n- 1x DisplayPort, suportando uma resolução máxima de 4096x2304 @ 60 Hz \r\n\r\n*Suporte para a versão DisplayPort 1.2, HDCP 2.2 e HDR.\r\n\r\n- 1x Porta HDMI, suportando uma resolução máxima de 4096x2160 @ 30 Hz \r\n\r\n*Suporte para HDMI 1.4 versão e HDCP 2.2.\r\n\r\n- Suporte para até 3 monitores ao mesmo tempo \r\n\r\n- Memória compartilhada máxima de 1 GB', 611.65, 'informatica', '2018-08-08 19:27:29', 'ativo'),
(000011, 'AMD RYZEN 7 2700X 3.7GHZ', 'ryzen.jpg', 'Marca: AMD\r\n\r\nSérie: Ryzen 7\r\n\r\nModelo: YD270XBGAFBOX\r\n\r\nFrequência de Operação: 3.7GHz\r\n\r\nFrequência Max Turbo: 4.35GHz\r\n\r\nNúcleos: 8\r\n\r\nCache L2: 4MB\r\n\r\nCache L3: 16MB\r\n\r\nTDP: 105W\r\n\r\nCMOS: 12nm\r\n\r\nNº de threads: 16\r\n\r\nAcompanha cooler: Sim, Wraith Prism com iluminação RGB\r\n\r\nDimensões do cooler: 119mm x 105mm x 93mm\r\n\r\nDimensões do Processador: 134 mm x 134 mm x 134 mm \r\n', 1589.9, 'informatica', '2018-08-08 19:33:30', 'ativo'),
(000012, 'Relogio Mormaii digital', 'mormaii.jpg', '', 162.99, 'relogios', '2018-08-08 19:48:11', 'ativo'),
(000013, 'Relogio Orient quartz', 'orient.jpg', '', 320, 'relogios', '2018-08-08 19:49:12', 'ativo'),
(000014, 'Relogio Champion digital', 'champion.jpg', '', 127.8, 'relogios', '2018-08-08 19:49:53', 'ativo'),
(000015, 'Paleta de Sombras Natura', 'sombra.jpg', 'Paleta de sombras com 30 cores diferentes de acabamentos opacos e cintilantes. Catharine Hill Sombras Variadas é a queridinha dos maquiadores profissionais por sua versatilidade. \r\n\r\nSeu design sofisticado e seu material mais resistente protegem as sombras de possíveis agressões. Catharine Hill Sombras Variadas possui os mais procurados e modernos tons, que vão desde um azul vibrante a um pérola luminoso. Sua fórmula bem pigmentada é de alta fixação e longa duração. \r\n\r\nCom Catharine Hill Sombras Variadas você cria diversos looks, um mais incrível que o outro!', 106.9, 'maquiagens', '2018-08-08 19:51:24', 'ativo'),
(000016, 'Mascara para Cilios Waterproof', 'mascara.jpg', 'Máscara de cílios à prova d\'água preta. Revlon Super Lengh Waterproof Blackest Black contém fibras alongadoras que deixam os cílios mais expressivos e encorpados com pigmentação intensa da raiz às pontas.\r\n\r\nO aplicador especial de Revlon Super Lengh Waterproof Blackest Black possui a ponta afinada para alcançar os cílios mais curtos e dar aos cílios o efeito de postiços. Sua fórmula deixa a aplicação muito mais fácil sem borrar ou empelotar entre os fios.\r\n\r\nRevlon Super Lengh Waterproof Blackest Black é o segredo para um olhar intenso e marcante em qualquer momento.', 39.7, 'maquiagens', '2018-08-08 19:52:38', 'ativo'),
(000017, 'Kit de Maquiagem Travel Make-UP', 'kit.jpg', 'Kit de maquiagem com itens para olhos, rosto, lábios e unhas. A Markwins Bon Voyage Travel Make Up traz produtos diversos para se maquiar, além de esmaltes. Ela é perfeita para se levar em viagens e até para guardar jóias e acessórios.  \r\nA Bon Voyage Travel Make Up, da Markwins, tem muitas cores, desde as mais neutras e naturais até as mais vibrantes. Com ela é possível conseguir vários estilos e looks. A maleta é em alumínio e com espelho. Ela é um ótimo presente para quem é vaidosa e gosta de ter opções na hora de se maquiar.  \r\nContém - 24 sombras* - 4 batons* - 3 blushes* - 4 esmaltes* - 1 lápis para olhos* - 1 lápis para lábios* - 1 escovinha/ pente de sobrancelhas - 1 pincel de blush - 2 pincéis \r\n*Obs: A cor dos produtos da imagem pode variar de acordo com a reposição do estoque e atualização da Bon Voyage Travel Make Up que acompanha as tendências da moda.', 137.75, 'maquiagens', '2018-08-08 19:53:59', 'ativo'),
(000021, 'Cadeira Gamer Neon', 'cadeira.jpg', 'Cor	Preto<br />\r\nGarantia	3 Meses<br />\r\nInstruÃ§Ãµes/Cuidados	Limpar com pano umedecido em Ã¡gua<br />\r\nConteÃºdo da Embalagem	1 Cadeira<br />\r\nModelo	Gamer<br />\r\nMaterial	Assento em Madeira Compensada, Estofado com Espuma Injetada Densidade D35, Encosto em Madeira Compensada, Estofado com Espuma Densidade D24, Revestidos em Poliuretano e PVC, Estrutura em Metal, Regulagem de Altura com PistÃ£o Ã  gÃ¡s, Base e RodÃ­zios em Nylo<br />\r\nDescriÃ§Ã£o do Tamanho	Altura MÃ­nima 124 cm MÃ¡xima 132 cm Largura 69 cm Profundidade 67 cm Altura do Assento ao ChÃ£o 44-51 cm Altura do BraÃ§o ao ChÃ£o 60-67 cm Peso Suportado 120 Kgs<br />\r\nNecessita Montagem?	Sim, sugerimos a contrataÃ§Ã£o do nosso serviÃ§o de montagem (para os CEPs em que o serviÃ§o estÃ¡ disponÃ­vel) ou de algum profissional experiente de sua preferÃªncia<br />\r\nTipo do Encosto	Presidente<br />\r\nPeso suportado (kg)	120<br />\r\nTipo de pÃ©	RodÃ­zio', 590.95, 'informatica', '2018-08-10 19:40:21', 'ativo'),
(000022, 'Conjunto de mesa com 6 cadeiras', 'mesa.jpg', 'Conjunto de Mesa Madeira com 6 Cadeiras Estofadas - Madesa Aline<br />\r\n<br />\r\nUma sala moderna e bem aconchegante precisarÃ¡ de um mÃ³vel diferenciado como essa sala Aline 6 Lugares desenvolvido para oferecer total conforto e comodidade para vocÃª e sua famÃ­lia. Ela Ã© composto por 1 mesa e 6 cadeiras. A mesa da sala Aline Ã© produzida em MDP de 15 mm e as cadeiras em MDF 25 mm de material ecologicamente correto que confere a boa resistÃªncia e durabilidade Ã  peÃ§a. <br />\r\nAlÃ©m disso possui acabamento em pintura poliÃ©ster de alta resistÃªncia que garante a beleza do mÃ³vel por muito mais tempo. E para garantir a qualidade do produto dentro da embalagem todas as peÃ§as sÃ£o separadas por isomanta, tudo para evitar o atrito entre elas, e tambÃ©m dentro de cada embalagem tem um manual passo a passo para auxiliar no momento da montagem do produto. Surpreenda-se com design, inovaÃ§Ã£o, beleza e durabilidade.', 644.99, 'moveis', '2018-08-13 17:15:35', 'ativo'),
(000023, 'Estante Home para TV atÃ© 60\"', 'estante.jpg', 'Estante Home para TV atÃ© 60â€ 4 Prateleiras - Dj MÃ³veis DJ Prime Italian<br />\r\n<br />\r\nCom o Home Italian DJ MÃ³veis vocÃª encontra tudo o que sempre imaginou para tornar realidade a sala dos seus sonhos. Pois ele Ã© referÃªncia em design, funcionalidade, beleza e personalidade.<br />\r\n<br />\r\nO destaque estÃ£o nos frisos das suas quatro portas que trazem toda essa modernidade que a proposta dele gostaria de lhe oferecer alÃ©m de deixar sua sala muito mais organizada, pois Ã© ideal para guardar todo tipo de objeto. Seu painel suporta atÃ© 50 kg e pode receber televisores de atÃ© 60 polegadas, porÃ©m vocÃª tambÃ©m tem a opÃ§Ã£o de colocar a Tv no tampo de 40 mm que foi dimensionado para poder receber atÃ© 50 kg.<br />\r\n<br />\r\n O toque especial fica por conta das duas luminÃ¡rias LED Bivolt embutidas nas prateleiras de 25mm superiores, valorizando a decoraÃ§Ã£o das suas quatro prateleiras de vidro e claro tambÃ©m do ambiente. O mÃ³vel ideal para a sua sala!', 997.41, 'moveis', '2018-08-13 17:24:42', 'ativo'),
(000024, 'Roupeiro 04 Portas Flex Capelinha', 'roupeiro.jpg', 'Roupeiro 04 Portas Flex Capelinha Com Espelho Capri - Moval<br />\r\n<br />\r\nDescriÃ§Ã£o do Produto: O Guarda-roupa Flex Capri Moval Ã© um produto diferenciado, pois possui a clÃ¡ssica repartiÃ§Ã£o capelinha que consiste em uma penteadeira central com espelho embutido com suporte para objetos como perfumes, pentes entre outros. O Guarda-roupa Capri contem 03 gavetas externas com corrediÃ§as metÃ¡licas, maior espaÃ§o para organizaÃ§Ã£o das roupas. <br />\r\n<br />\r\nConta com bastÃµes em alumÃ­nio para mais resistÃªncia ao pendurar cabides alÃ©m de um diferencial importante, acompanha sistema Flex Color nas cores Branco e Rosa que vocÃª pode escolher na hora de montar. Legal nÃ©? EntÃ£o aproveite agora mesmo o guarda-roupa Capri Moval.<br />\r\n<br />\r\nCaracterÃ­sticas tÃ©cnicas: <br />\r\n- Guarda-roupa casal e solteiro; <br />\r\n- Capelinha com Espelho; <br />\r\n- Estrutura MDP de 10 e 15 mm, produzido com madeira certificada e reflorestada; <br />\r\n- Acabamento em impressÃ£o UV alto brilho ou relevo fosco texturizado; <br />\r\n- 03 gavetas com corrediÃ§as metÃ¡licas; <br />\r\n- Sistema flex color apenas no branco/rosa/branco; <br />\r\n- Puxadores com acabamento cromado; <br />\r\n- BastÃµes em alumÃ­nio; - Amplo espaÃ§o interno; <br />\r\n- Acompanha os pÃ©s em PVC. ', 459.8, 'moveis', '2018-08-13 17:28:33', 'ativo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`id_prod`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indexes for table `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `id_prod` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `compra`
--
ALTER TABLE `compra`
  MODIFY `id_compra` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
