CREATE DATABASE alunosdb;

USE alunosdb;

DROP TABLE IF EXISTS `alunos`;

CREATE TABLE  `alunos`(
        `id` INT AUTO_INCREMENT,
        `nome` VARCHAR(80) NOT NULL,
        `email` VARCHAR(100) NOT NULL,
        PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alunos` WRITE;
INSERT INTO `alunos` VALUES(1,'Manoel', 'manoel@mailcom');
INSERT INTO `alunos` VALUES(2,'Maria', 'maria@mailcom');
INSERT INTO `alunos` VALUES(3,'Pedro', 'pedro@mailcom');
INSERT INTO `alunos` VALUES(4,'José', 'jose@mailcom');
UNLOCK TABLES;


