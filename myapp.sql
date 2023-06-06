-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema myapp
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema myapp
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `myapp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `myapp` ;

-- -----------------------------------------------------
-- Table `myapp`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myapp`.`categories` (
  `category_id` INT NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(40) NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `myapp`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myapp`.`products` (
  `product_id` INT NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(40) NULL DEFAULT NULL,
  `product_value` FLOAT NULL DEFAULT NULL,
  `category_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  INDEX `category_id` (`category_id` ASC) VISIBLE,
  CONSTRAINT `products_ibfk_1`
    add FOREIGN KEY (`category_id`)
    REFERENCES `myapp`.`categories` (`category_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `myapp`.`users_tbl`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myapp`.`users_tbl` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `user_firstname` VARCHAR(40) NOT NULL,
  `user_lastname` VARCHAR(40) NOT NULL,
  `user_email` VARCHAR(60) NOT NULL,
  `user_password` VARBINARY(255) NOT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
