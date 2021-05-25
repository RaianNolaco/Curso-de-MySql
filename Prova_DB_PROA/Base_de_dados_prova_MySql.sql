


CREATE DATABASE prova_proa;

USE prova_proa;

DROP TABLE IF EXISTS `departamento`;
CREATE TABLE IF NOT EXISTS `departamento` (
  `departamento_id` int(11) NOT NULL AUTO_INCREMENT,
  `departamento_name` varchar(30) NOT NULL,
  `posicao_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`departamento_id`),
  KEY `posicao_id` (`posicao_id`)
) ;

--
-- Dumping data for table `departamento`
--

INSERT INTO `departamento` (`departamento_id`, `departamento_name`, `posicao_id`) VALUES
(1, 'Admnistração', 1700),
(2, 'Marketing', 1800),
(3, 'Compras', 1700),
(4, 'Recursos Humanos', 2400),
(5, 'Transporte', 1500),
(6, 'Tecnologia', 1400),
(7, 'Relações Públicas', 2700),
(8, 'Vendas', 2500),
(9, 'Executivo', 1700),
(10, 'Finanças', 1700),
(11, 'Contabilidade', 1700);

-- --------------------------------------------------------

--
-- Table structure for table `dependentes`
--

DROP TABLE IF EXISTS `dependentes`;
CREATE TABLE IF NOT EXISTS `dependentes` (
  `dependente_id` int(11) NOT NULL AUTO_INCREMENT,
  `primeiro_nome` varchar(50) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `parentesco` varchar(25) NOT NULL,
  `funcionario_id` int(11) NOT NULL,
  PRIMARY KEY (`dependente_id`),
  KEY `funcionario_id` (`funcionario_id`)
);

--
-- Dumping data for table `dependentes`
--

INSERT INTO `dependentes` (`dependente_id`, `primeiro_nome`, `sobrenome`, `parentesco`, `funcionario_id`) VALUES
(1, 'Penelope', 'Gietz', 'Filho(a)', 206),
(2, 'Nick', 'Higgins', 'Filho(a)', 205),
(3, 'Ed', 'Whalen', 'Filho(a)', 200),
(4, 'Alice', 'King', 'Filho(a)', 100),
(31, 'Jennifer', 'King', 'Cônjuge', 100),
(5, 'Johnny', 'Kochhar', 'Filho(a)', 101),
(6, 'Bette', 'De Haan', 'Filho(a)', 102),
(7, 'Grace', 'Faviet', 'Filho(a)', 109),
(8, 'Matthew', 'Chen', 'Filho(a)', 110),
(9, 'Joe', 'Sciarra', 'Filho(a)', 111),
(10, 'Christian', 'Urman', 'Filho(a)', 112),
(11, 'Zero', 'Popp', 'Filho(a)', 113),
(12, 'Karl', 'Greenberg', 'Filho(a)', 108),
(13, 'Duas', 'Mavris', 'Filho(a)', 203),
(33, 'Uma', 'Mavris', 'Cônjuge', 203),
(14, 'Vivien', 'Hunold', 'Filho(a)', 103),
(15, 'Cuba', 'Ernst', 'Filho(a)', 104),
(32, 'Salvadora', 'Ernst', 'Cônjuge', 104),
(16, 'Fred', 'Austin', 'Filho(a)', 105),
(17, 'Helen', 'Pataballa', 'Filho(a)', 106),
(18, 'Dan', 'Lorentz', 'Filho(a)', 107),
(19, 'Bob', 'Hartstein', 'Filho(a)', 201),
(20, 'Lucie', 'Ferreira', 'Filho(a)', 202),
(21, 'Kirsten', 'Baer', 'Filho(a)', 204),
(22, 'Elvis', 'Khoo', 'Filho(a)', 115),
(23, 'Sandra', 'Baida', 'Filho(a)', 116),
(24, 'Cameron', 'Tobias', 'Filho(a)', 117),
(25, 'Kevin', 'Himuro', 'Filho(a)', 118),
(26, 'Rip', 'Colmenares', 'Filho(a)', 119),
(27, 'Julia', 'Raphaely', 'Filho(a)', 114),
(28, 'Woody', 'Russell', 'Filho(a)', 145),
(29, 'Alec', 'Partners', 'Filho(a)', 146),
(30, 'Sandra', 'Taylor', 'Filho(a)', 176);

-- --------------------------------------------------------

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `funcionario_id` int(11) NOT NULL AUTO_INCREMENT,
  `primeiro_nome` varchar(20) DEFAULT NULL,
  `sobrenome` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `dataContratacao` date NOT NULL,
  `ocupacao_id` int(11) NOT NULL,
  `salario` decimal(8,2) NOT NULL,
  `gerente_id` int(11) DEFAULT NULL,
  `departamento_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`funcionario_id`),
  KEY `ocupacao_id` (`ocupacao_id`),
  KEY `departamento_id` (`departamento_id`),
  KEY `gerente_id` (`gerente_id`)
) ;

--
-- Dumping data for table `funcionarios`
--

INSERT INTO `funcionarios` (`funcionario_id`, `primeiro_nome`, `sobrenome`, `email`, `telefone`, `dataContratacao`, `ocupacao_id`, `salario`, `gerente_id`, `departamento_id`) VALUES
(100, 'Steven', 'King', 'steven.king@momento.org', '515.123.4567', '1987-06-17', 4, '24000.00', NULL, 9),
(101, 'Neena', 'Kochhar', 'neena.kochhar@momento.org', '515.123.4568', '1989-09-21', 5, '17000.00', 100, 9),
(102, 'Lex', 'De Haan', 'lex.de haan@momento.org', '515.123.4569', '1993-01-13', 5, '17000.00', 100, 9),
(103, 'Alexander', 'Hunold', 'alexander.hunold@momento.org', '590.423.4567', '1990-01-03', 9, '9000.00', 102, 6),
(104, 'Bruce', 'Ernst', 'bruce.ernst@momento.org', '590.423.4568', '1991-05-21', 9, '6000.00', 103, 6),
(105, 'David', 'Austin', 'david.austin@momento.org', '590.423.4569', '1997-06-25', 9, '4800.00', 103, 6),
(106, 'Valli', 'Pataballa', 'valli.pataballa@momento.org', '590.423.4560', '1998-02-05', 9, '4800.00', 103, 6),
(107, 'Diana', 'Lorentz', 'diana.lorentz@momento.org', '590.423.5567', '1999-02-07', 9, '4200.00', 103, 6),
(108, 'Nancy', 'Greenberg', 'nancy.greenberg@momento.org', '515.124.4569', '1994-08-17', 7, '12000.00', 101, 10),
(109, 'Daniel', 'Faviet', 'daniel.faviet@momento.org', '515.124.4169', '1994-08-16', 6, '9000.00', 108, 10),
(110, 'John', 'Chen', 'john.chen@momento.org', '515.124.4269', '1997-09-28', 6, '8200.00', 108, 10),
(111, 'Ismael', 'Sciarra', 'ismael.sciarra@momento.org', '515.124.4369', '1997-09-30', 6, '7700.00', 108, 10),
(112, 'Jose Manuel', 'Urman', 'jose manuel.urman@momento.org', '515.124.4469', '1998-03-07', 6, '7800.00', 108, 10),
(113, 'Luis', 'Popp', 'luis.popp@momento.org', '515.124.4567', '1999-12-07', 6, '6900.00', 108, 10),
(114, 'Den', 'Raphaely', 'den.raphaely@momento.org', '515.127.4561', '1994-12-07', 14, '11000.00', 100, 3),
(115, 'Alexander', 'Khoo', 'alexander.khoo@momento.org', '515.127.4562', '1995-05-18', 13, '3100.00', 114, 3),
(116, 'Shelli', 'Baida', 'shelli.baida@momento.org', '515.127.4563', '1997-12-24', 13, '2900.00', 114, 3),
(117, 'Sigal', 'Tobias', 'sigal.tobias@momento.org', '515.127.4564', '1997-07-24', 13, '2800.00', 114, 3),
(118, 'Guy', 'Himuro', 'guy.himuro@momento.org', '515.127.4565', '1998-11-15', 13, '2600.00', 114, 3),
(119, 'Karen', 'Colmenares', 'karen.colmenares@momento.org', '515.127.4566', '1999-08-10', 13, '2500.00', 114, 3),
(120, 'Matthew', 'Weiss', 'matthew.weiss@momento.org', '650.123.1234', '1996-07-18', 19, '8000.00', 100, 5),
(121, 'Adam', 'Fripp', 'adam.fripp@momento.org', '650.123.2234', '1997-04-10', 19, '8200.00', 100, 5),
(122, 'Payam', 'Kaufling', 'payam.kaufling@momento.org', '650.123.3234', '1995-05-01', 19, '7900.00', 100, 5),
(123, 'Shanta', 'Vollman', 'shanta.vollman@momento.org', '650.123.4234', '1997-10-10', 19, '6500.00', 100, 5),
(126, 'Irene', 'Mikkilineni', 'irene.mikkilineni@momento.org', '650.124.1224', '1998-09-28', 18, '2700.00', 120, 5),
(145, 'John', 'Russell', 'john.russell@momento.org', NULL, '1996-10-01', 15, '14000.00', 100, 8),
(146, 'Karen', 'Partners', 'karen.partners@momento.org', NULL, '1997-01-05', 15, '13500.00', 100, 8),
(176, 'Jonathon', 'Taylor', 'jonathon.taylor@momento.org', NULL, '1998-03-24', 16, '8600.00', 100, 8),
(177, 'Jack', 'Livingston', 'jack.livingston@momento.org', NULL, '1998-04-23', 16, '8400.00', 100, 8),
(178, 'Kimberely', 'Grant', 'kimberely.grant@momento.org', NULL, '1999-05-24', 16, '7000.00', 100, 8),
(179, 'Charles', 'Johnson', 'charles.johnson@momento.org', NULL, '2000-01-04', 16, '6200.00', 100, 8),
(192, 'Sarah', 'Bell', 'sarah.bell@momento.org', '650.501.1876', '1996-02-04', 17, '4000.00', 123, 5),
(193, 'Britney', 'Everett', 'britney.everett@momento.org', '650.501.2876', '1997-03-03', 17, '3900.00', 123, 5),
(200, 'Jennifer', 'Whalen', 'jennifer.whalen@momento.org', '515.123.4444', '1987-09-17', 3, '4400.00', 101, 1),
(201, 'Michael', 'Hartstein', 'michael.hartstein@momento.org', '515.123.5555', '1996-02-17', 10, '13000.00', 100, 2),
(202, 'Pat', 'Ferreira', 'pat.Ferreira@momento.org', '603.123.6666', '1997-08-17', 11, '6000.00', 201, 2),
(203, 'Susan', 'Mavris', 'susan.mavris@momento.org', '515.123.7777', '1994-06-07', 8, '6500.00', 101, 4),
(204, 'Hermann', 'Baer', 'hermann.baer@momento.org', '515.123.8888', '1994-06-07', 12, '10000.00', 101, 7),
(205, 'Shelley', 'Higgins', 'shelley.higgins@momento.org', '515.123.8080', '1994-06-07', 2, '12000.00', 101, 11),
(206, 'William', 'Gietz', 'william.gietz@momento.org', '515.123.8181', '1994-06-07', 1, '8300.00', 205, 11),
(207, 'Rafa', 'Ooh', 'rafaooh@momento.com.br', '555-888-999', '2021-03-10', 2, '1500.50', 103, 6);

-- --------------------------------------------------------

--
-- Table structure for table `ocupacoes`
--

DROP TABLE IF EXISTS `ocupacoes`;
CREATE TABLE IF NOT EXISTS `ocupacoes` (
  `ocupacao_id` int(11) NOT NULL AUTO_INCREMENT,
  `ocupacao_title` varchar(35) NOT NULL,
  `min_salario` decimal(8,2) DEFAULT NULL,
  `max_salario` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`ocupacao_id`)
);

--
-- Dumping data for table `ocupacoes`
--

INSERT INTO `ocupacoes` (`ocupacao_id`, `ocupacao_title`, `min_salario`, `max_salario`) VALUES
(1, 'Auxiliar de Almoxarifado Júnior', '4200.00', '9000.00'),
(2, 'Gerente de contabilidade', '8200.00', '16000.00'),
(3, 'Assistente Administrativo', '3000.00', '6000.00'),
(4, 'Presidente', '20000.00', '40000.00'),
(5, 'Vice-presidente de administração', '15000.00', '30000.00'),
(6, 'Contador', '4200.00', '9000.00'),
(7, 'Gerente de Finanças', '8200.00', '16000.00'),
(8, 'Representante de Recursos Humanos', '4000.00', '9000.00'),
(9, 'Desenvolvedor Web', '4000.00', '10000.00'),
(10, 'Gerente de Marketing', '9000.00', '15000.00'),
(11, 'Representante de Marketing', '4000.00', '9000.00'),
(12, 'Relações Públicas', '4500.00', '10500.00'),
(13, 'Escriturário de compras', '2500.00', '5500.00'),
(14, 'Gerente de Compras', '8000.00', '15000.00'),
(15, 'Gerente de Vendas', '10000.00', '20000.00'),
(16, 'Representante de Vendas', '6000.00', '12000.00'),
(17, 'Vendedor', '2500.00', '5500.00'),
(18, 'Estoquista', '2000.00', '5000.00'),
(19, 'Gerente de Estoque', '5500.00', '8500.00');

-- --------------------------------------------------------

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
CREATE TABLE IF NOT EXISTS `paises` (
  `pais_id` char(2) NOT NULL,
  `pais_name` varchar(40) DEFAULT NULL,
  `regiao_id` int(11) NOT NULL,
  PRIMARY KEY (`pais_id`),
  KEY `regiao_id` (`regiao_id`)
);

--
-- Dumping data for table `paises`
--

INSERT INTO `paises` (`pais_id`, `pais_name`, `regiao_id`) VALUES
('AR', 'Argentina', 2),
('AU', 'Australia', 3),
('BE', 'Belgium', 1),
('BR', 'Brazil', 2),
('CA', 'Canada', 2),
('CH', 'Switzerland', 1),
('CN', 'China', 3),
('DE', 'Germany', 1),
('DK', 'Denmark', 1),
('EG', 'Egypt', 4),
('FR', 'France', 1),
('HK', 'HongKong', 3),
('IL', 'Israel', 4),
('IN', 'India', 3),
('IT', 'Italy', 1),
('JP', 'Japan', 3),
('KW', 'Kuwait', 4),
('MX', 'Mexico', 2),
('NG', 'Nigeria', 4),
('NL', 'Netherlands', 1),
('SG', 'Singapore', 3),
('UK', 'United Kingdom', 1),
('US', 'United States of America', 2),
('ZM', 'Zambia', 4),
('ZW', 'Zimbabwe', 4);

-- --------------------------------------------------------

--
-- Table structure for table `posicao`
--

DROP TABLE IF EXISTS `posicao`;
CREATE TABLE IF NOT EXISTS `posicao` (
  `posicao_id` int(11) NOT NULL AUTO_INCREMENT,
  `endereco` varchar(40) DEFAULT NULL,
  `cep` varchar(12) DEFAULT NULL,
  `cidade` varchar(30) NOT NULL,
  `estado` varchar(25) DEFAULT NULL,
  `pais_id` char(2) NOT NULL,
  PRIMARY KEY (`posicao_id`),
  KEY `pais_id` (`pais_id`)
);

--
-- Dumping data for table `posicao`
--

INSERT INTO `posicao` (`posicao_id`, `endereco`, `cep`, `cidade`, `estado`, `pais_id`) VALUES
(1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'),
(1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'),
(1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
(1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'),
(2400, '8204 Arthur St', NULL, 'London', NULL, 'UK'),
(2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK'),
(2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE'),
(5400, 'Rua Tito, 54', '05051-000', 'São Paulo', 'São Paulo', 'BR');

-- --------------------------------------------------------

--
-- Table structure for table `regiao`
--

DROP TABLE IF EXISTS `regiao`;
CREATE TABLE IF NOT EXISTS `regiao` (
  `regiao_id` int(11) NOT NULL AUTO_INCREMENT,
  `regiao_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`regiao_id`)
);

--
-- Dumping data for table `regiao`
--

INSERT INTO `regiao` (`regiao_id`, `regiao_name`) VALUES
(1, 'Europa'),
(2, 'Americas'),
(3, 'Asia'),
(4, 'Ásia ou Africa');
