SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

DROP DATABASE IF EXISTS `MOTO_INSURE`;

CREATE DATABASE IF NOT EXISTS `MOTO_INSURE`;

USE `MOTO_INSURE`;


CREATE TABLE IF NOT EXISTS `users` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO users (`id`,  `username`, `password`) values (1, 'root', 'rootpw');


CREATE TABLE `customers` (
    `CID` INT(7)  NOT NULL, 
    `FName` VARCHAR(30) NOT NULL, 
    `LName` VARCHAR(30) NOT NULL, 
    `DOB` DATE NOT NULL, 
    `Address` TEXT NOT NULL, 
    `Tele` VARCHAR(15) NOT NULL,
    PRIMARY KEY (`CID`));

CREATE TABLE `policy` (
    `PID` INT(7) NOT NULL, 
    `coverage` VARCHAR(50) NOT NULL, 
    `cost` DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (`PID`));

CREATE TABLE `owns` (
    `CID` INT(7) NOT NULL, 
    `PID` INT(7) NOT NULL, 
    `Date` DATE NOT NULL, 
    `Status` VARCHAR(10) NOT NULL);

CREATE TABLE `makes_claim` (
    `CID` INT(7), 
    `PID` INT(7), 
    `Date` DATE, 
    `Damage_Assessment` TEXT);
