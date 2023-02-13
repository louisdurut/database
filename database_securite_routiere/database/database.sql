-- MySQL Script generated by MySQL Workbench
-- Mon Feb 13 14:25:48 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema database_securite_routiere
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema database_securite_routiere
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `database_securite_routiere` DEFAULT CHARACTER SET utf8 ;
USE `database_securite_routiere` ;

-- -----------------------------------------------------
-- Table `database_securite_routiere`.`PREFIXE_usagers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database_securite_routiere`.`PREFIXE_usagers` (
  `PREFIXE_usagers_id` INT NOT NULL AUTO_INCREMENT,
  `PREFIXE_usagers_num_acc` VARCHAR(10) NULL,
  `PREFIXE_usagers_identif_usagers` VARCHAR(10) NULL,
  `PREFIXE_usagers_identif_vehicules` VARCHAR(8) NULL,
  `PREFIXE_usagers_num_veh` VARCHAR(3) NULL,
  `PREFIXE_usagers_place` VARCHAR(2) NULL,
  `PREFIXE_usagers_cata` VARCHAR(1) NULL,
  `PREFIXE_usagers_grav` VARCHAR(1) NULL,
  `PREFIXE_usagers_sexe` VARCHAR(1) NULL,
  `PREFIXE_usagers_an_nais` YEAR NULL,
  `PREFIXE_usagers_trajet` VARCHAR(2) NULL,
  `PREFIXE_usagers_secu1` VARCHAR(2) NULL,
  `PREFIXE_usagers_secu2` VARCHAR(2) NULL,
  `PREFIXE_usagers_secu3` VARCHAR(2) NULL,
  `PREFIXE_usagers_locp` VARCHAR(2) NULL,
  `PREFIXE_usagers_actp` VARCHAR(2) NULL,
  `PREFIXE_usagers_etatp` VARCHAR(2) NULL,
  `PREFIXE_usagers_UUID` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`PREFIXE_usagers_id`),
  UNIQUE INDEX `PREFIXE_usagers_UUID_UNIQUE` (`PREFIXE_usagers_UUID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `database_securite_routiere`.`PREFIXE_vehicules`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database_securite_routiere`.`PREFIXE_vehicules` (
  `PREFIXE_vehicules_id` INT NOT NULL AUTO_INCREMENT,
  `PREFIXE_vehicules_num_acc` VARCHAR(10) NULL,
  `PREFIXE_vehicules_identif_vehicules` VARCHAR(8) NULL,
  `PREFIXE_vehicules_num_veh` VARCHAR(3) NULL,
  `PREFIXE_vehicules_senc` VARCHAR(2) NULL,
  `PREFIXE_vehicules_catv` VARCHAR(2) NULL,
  `PREFIXE_vehicules_obs` VARCHAR(2) NULL,
  `PREFIXE_vehicules_obsm` VARCHAR(2) NULL,
  `PREFIXE_vehicules_choc` VARCHAR(2) NULL,
  `PREFIXE_vehicules_manv` VARCHAR(2) NULL,
  `PREFIXE_vehicules_motor` VARCHAR(2) NULL,
  `PREFIXE_vehicules_occutc` VARCHAR(300) NULL,
  `PREFIXE_vehicules_UUID` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`PREFIXE_vehicules_id`),
  UNIQUE INDEX `PREFIXE_vehicules_UUID_UNIQUE` (`PREFIXE_vehicules_UUID` ASC) VISIBLE,
  CONSTRAINT `usagers`
    FOREIGN KEY (`PREFIXE_vehicules_UUID`)
    REFERENCES `database_securite_routiere`.`PREFIXE_usagers` (`PREFIXE_usagers_UUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `database_securite_routiere`.`PREFIXE_lieux`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database_securite_routiere`.`PREFIXE_lieux` (
  `PREFIXE_lieux_id` INT NOT NULL AUTO_INCREMENT,
  `PREFIXE_lieux_num_acc` VARCHAR(10) NULL,
  `PREFIXE_lieux_catr` VARCHAR(1) NULL,
  `PREFIXE_lieux_voie` VARCHAR(45) NULL,
  `PREFIXE_lieux_V1` VARCHAR(5) NULL,
  `PREFIXE_lieux_V2` VARCHAR(5) NULL,
  `PREFIXE_lieux_circ` VARCHAR(2) NULL,
  `PREFIXE_lieux_nbv` VARCHAR(1) NULL,
  `PREFIXE_lieux_vosp` VARCHAR(2) NULL,
  `PREFIXE_lieux_prof` VARCHAR(2) NULL,
  `PREFIXE_lieux_pr` VARCHAR(4) NULL,
  `PREFIXE_lieux_pr1` VARCHAR(4) NULL,
  `PREFIXE_lieux_plan` VARCHAR(2) NULL,
  `PREFIXE_lieux_lartpc` VARCHAR(2) NULL,
  `PREFIXE_lieux_larrout` VARCHAR(2) NULL,
  `PREFIXE_lieux_surf` VARCHAR(2) NULL,
  `PREFIXE_lieux_infra` VARCHAR(2) NULL,
  `PREFIXE_lieux_situ` VARCHAR(2) NULL,
  `PREFIXE_lieux_vma` VARCHAR(3) NULL,
  `PREFIXE_lieux_UUID` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`PREFIXE_lieux_id`),
  UNIQUE INDEX `PREFIXE_lieux_UUID_UNIQUE` (`PREFIXE_lieux_UUID` ASC) VISIBLE,
  CONSTRAINT `vehicules`
    FOREIGN KEY (`PREFIXE_lieux_UUID`)
    REFERENCES `database_securite_routiere`.`PREFIXE_vehicules` (`PREFIXE_vehicules_UUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `database_securite_routiere`.`PREFIXE_caracteristiques`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database_securite_routiere`.`PREFIXE_caracteristiques` (
  `PREFIXE_caracteristiques_id` INT NOT NULL AUTO_INCREMENT,
  `PREFIXE_caracteristiques_num_acc` VARCHAR(12) NULL,
  `PREFIXE_caracteristiques_jour_mois` DATE NULL,
  `PREFIXE_caracteristiques_an` YEAR NULL,
  `PREFIXE_caracteristiques_hrmn` DATETIME NULL,
  `PREFIXE_caracteristiques_lum` VARCHAR(1) NULL,
  `PREFIXE_caracteristiques_dep` VARCHAR(3) NULL,
  `PREFIXE_caracteristiques_com` VARCHAR(5) NULL,
  `PREFIXE_caracteristiques_agg` VARCHAR(1) NULL,
  `PREFIXE_caracteristiques_int` VARCHAR(1) NULL,
  `PREFIXE_caracteristiques_atm` VARCHAR(2) NULL,
  `PREFIXE_caracteristiques_col` VARCHAR(2) NULL,
  `PREFIXE_caracteristiques_adr` VARCHAR(100) NULL,
  `PREFIXE_caracteristiques_lat` POINT NULL,
  `PREFIXE_caracteristiques_long` POINT NULL,
  `PREFIXE_caracteristiques_UUID` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`PREFIXE_caracteristiques_id`),
  UNIQUE INDEX `PREFIXE_caracteristiques_UUID_UNIQUE` (`PREFIXE_caracteristiques_UUID` ASC) VISIBLE,
  CONSTRAINT `lieux`
    FOREIGN KEY (`PREFIXE_caracteristiques_UUID`)
    REFERENCES `database_securite_routiere`.`PREFIXE_lieux` (`PREFIXE_lieux_UUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `database_securite_routiere`.`PREFIXE_accident`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database_securite_routiere`.`PREFIXE_accident` (
  `PREFIXE_accident_id` INT NOT NULL AUTO_INCREMENT,
  `PREFIXE_accident_identif` VARCHAR(10) NULL,
  `PREFIXE_accident_code_alpha` VARCHAR(1) NULL,
  `PREFIXE_accident_annee` YEAR NULL,
  `PREFIXE_accident_territoire` VARCHAR(45) NULL,
  `PREFIXE_accident_type` VARCHAR(45) NULL,
  `PREFIXE_accident_UUID` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`PREFIXE_accident_id`),
  UNIQUE INDEX `PREFIXE_accident_UUID_UNIQUE` (`PREFIXE_accident_UUID` ASC) VISIBLE,
  CONSTRAINT `caracteristiques`
    FOREIGN KEY (`PREFIXE_accident_UUID`)
    REFERENCES `database_securite_routiere`.`PREFIXE_caracteristiques` (`PREFIXE_caracteristiques_UUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
