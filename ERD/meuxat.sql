-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema meuxat
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `meuxat` ;

-- -----------------------------------------------------
-- Schema meuxat
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `meuxat` DEFAULT CHARACTER SET utf8 ;
USE `meuxat` ;

-- -----------------------------------------------------
-- Table `meuxat`.`auteur`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `meuxat`.`auteur` ;

CREATE TABLE IF NOT EXISTS `meuxat`.`auteur` (
  `idauteur` INT NOT NULL,
  `voornaam` VARCHAR(45) NULL,
  `tussenvoegsel` VARCHAR(45) NULL,
  `achternaam` VARCHAR(45) NULL,
  PRIMARY KEY (`idauteur`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `meuxat`.`boek`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `meuxat`.`boek` ;

CREATE TABLE IF NOT EXISTS `meuxat`.`boek` (
  `idboek` INT NOT NULL,
  `titel` VARCHAR(45) NULL,
  `locatie` VARCHAR(3) NULL,
  `idauteur` VARCHAR(45) NULL,
  PRIMARY KEY (`idboek`),
  INDEX `fk_boek_auteur_idx` (`idauteur` ASC),
  CONSTRAINT `fk_boek_auteur`
    FOREIGN KEY (`idauteur`)
    REFERENCES `meuxat`.`auteur` (`idauteur`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `meuxat`.`auteur`
-- -----------------------------------------------------
START TRANSACTION;
USE `meuxat`;
INSERT INTO `meuxat`.`auteur` (`idauteur`, `voornaam`, `tussenvoegsel`, `achternaam`) VALUES (1, 'Jan', NULL, 'Wolker');
INSERT INTO `meuxat`.`auteur` (`idauteur`, `voornaam`, `tussenvoegsel`, `achternaam`) VALUES (2, 'Piet', 'van', 'Voorm');

COMMIT;


-- -----------------------------------------------------
-- Data for table `meuxat`.`boek`
-- -----------------------------------------------------
START TRANSACTION;
USE `meuxat`;
INSERT INTO `meuxat`.`boek` (`idboek`, `titel`, `locatie`, `idauteur`) VALUES (1, 'Terug naar Oegstgeest', 'H6', '1');
INSERT INTO `meuxat`.`boek` (`idboek`, `titel`, `locatie`, `idauteur`) VALUES (2, 'Nacht op de kale berg', 'G7', '2');
INSERT INTO `meuxat`.`boek` (`idboek`, `titel`, `locatie`, `idauteur`) VALUES (3, 'Turks Fruit', 'H6', '1');

COMMIT;

