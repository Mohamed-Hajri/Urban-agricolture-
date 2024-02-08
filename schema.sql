-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema dbfarm
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dbfarm
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dbfarm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `dbfarm` ;

-- -----------------------------------------------------
-- Table `dbfarm`.`farmequipment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbfarm`.`farmequipment` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(100) NOT NULL,
  `Type` VARCHAR(45) NOT NULL,
  `ImageURL` VARCHAR(1000) NOT NULL,
  `Description` VARCHAR(4005) NOT NULL,
  `Size` VARCHAR(45) NOT NULL,
  `Dimensions` VARCHAR(500) NOT NULL,
  `Capacity` VARCHAR(450) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 22
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dbfarm`.`plants`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbfarm`.`plants` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `img` VARCHAR(1000) NOT NULL,
  `Name` VARCHAR(1000) NOT NULL,
  `Size` VARCHAR(500) NOT NULL,
  `Price` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 25
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dbfarm`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbfarm`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
