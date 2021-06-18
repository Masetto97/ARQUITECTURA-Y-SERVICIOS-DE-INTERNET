create database concursos;
use concursos;

CREATE TABLE `concursos`.`usuarios` (
  `id` INT auto_increment primary key,
  `login` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `perfilAcceso` VARCHAR(45) NOT NULL);

CREATE TABLE `concursos`.`concursos` (
  `id` INT auto_increment primary key,
  `titulo` VARCHAR(45) NOT NULL,
  `objetivo` VARCHAR(45) NOT NULL,
  `bases` VARCHAR(45) NOT NULL,
  `premios` VARCHAR(45) NOT NULL,
  `plazo` VARCHAR(45) NOT NULL,
  `jurado` VARCHAR(45) NOT NULL,
  `idUsuario` INT NOT NULL,
   CONSTRAINT `idUsuario`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `concursos`.`usuarios` (`id`));
    

CREATE TABLE `concursos`.`ficheros` (
  `id` INT auto_increment primary key,
  `titulo` VARCHAR(45) NOT NULL,
  `ruta` VARCHAR(45) NOT NULL,
  `idConcurso` INT NOT NULL,
  CONSTRAINT `idConcurso_FK`
    FOREIGN KEY (`idConcurso`)
    REFERENCES `concursos`.`concursos` (`id`));
    
    
