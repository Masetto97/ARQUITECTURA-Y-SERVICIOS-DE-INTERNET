create database participar;
use participar;

CREATE TABLE `participar`.`usuarios` (
  `id` INT auto_increment primary key,
  `login` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `perfilAcceso` VARCHAR(45) NOT NULL);

CREATE TABLE `participar`.`concursos` (
  `id` INT auto_increment primary key,
  `titulo` VARCHAR(45) NOT NULL,
  `objetivo` VARCHAR(45) NOT NULL,
  `bases` VARCHAR(45) NOT NULL,
  `premios` VARCHAR(45) NOT NULL,
  `plazo` DATE NOT NULL,
  `jurado` VARCHAR(45) NOT NULL,
  `idUsuario` INT NOT NULL,
   CONSTRAINT `idUsuario`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `participar`.`usuarios` (`id`));
    

CREATE TABLE `participar`.`ficheros` (
  `id` INT auto_increment primary key,
  `titulo` VARCHAR(45) NOT NULL,
  `ruta` VARCHAR(45) NOT NULL,
  `idConcurso` INT NOT NULL,
  CONSTRAINT `idConcurso_FK`
    FOREIGN KEY (`idConcurso`)
    REFERENCES `participar`.`concursos` (`id`));
	
	
CREATE TABLE `participar`.`Participaciones` (
  `id` INT auto_increment primary key,
  `titulo` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(255) NOT NULL,
  `apodo` VARCHAR(45) NOT NULL,
  `idConcurso` INT NOT NULL,
  `idUsuario` INT NOT NULL,
  `votosAcumulados` INT NOT NULL,
  CONSTRAINT `idConcursop_FK` FOREIGN KEY (`idConcurso`)  REFERENCES `participar`.`concursos` (`id`),
  CONSTRAINT `idUsuariop_FK` FOREIGN KEY (`idUsuario`) REFERENCES `participar`.`usuarios` (`id`));
  
  
  
CREATE TABLE `participar`.`FichParticipaciones` (
  `id` INT auto_increment primary key,
  `titulo` VARCHAR(45) NOT NULL,
  `ruta` VARCHAR(200) NOT NULL,
  `idParticipacion` INT NOT NULL,
  CONSTRAINT `idConcursof_FK`
    FOREIGN KEY (`idParticipacion`)
    REFERENCES `participar`.`Participaciones` (`id`));