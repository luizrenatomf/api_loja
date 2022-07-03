-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.33 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para loja_api
DROP DATABASE IF EXISTS `loja_api`;
CREATE DATABASE IF NOT EXISTS `loja_api` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `loja_api`;

-- Copiando estrutura para tabela loja_api.clientes
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela loja_api.clientes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT IGNORE INTO `clientes` (`id_cliente`, `nome`, `email`, `telefone`, `created_at`, `update_at`, `deleted_at`) VALUES
	(1, 'Luiz', 'luiz@gmail.com', '999999999', '2022-07-02 23:17:23', '2022-07-02 23:17:24', NULL),
	(2, 'Isa', 'isa@gmail.com', '999999999', '2022-07-02 23:18:06', '2022-07-02 23:18:06', NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_api.produtos
DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id_produto` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` int(5) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela loja_api.produtos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT IGNORE INTO `produtos` (`id_produto`, `produto`, `quantidade`, `created_at`, `update_at`, `delete_at`) VALUES
	(1, 'Camisa masculina', 10, '2022-07-02 23:19:06', '2022-07-02 23:19:07', NULL),
	(2, 'Calça masculina', 5, '2022-07-02 23:19:28', '2022-07-02 23:19:29', NULL),
	(3, 'Regata', 3, '2022-07-02 23:19:42', '2022-07-02 23:19:43', NULL);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
